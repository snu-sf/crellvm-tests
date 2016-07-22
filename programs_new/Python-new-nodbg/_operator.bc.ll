; ModuleID = './_operator.bc'
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
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
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
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @operatormodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @itemgetter_type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0))
  %call6 = call i32 @PyType_Ready(%struct._typeobject* @attrgetter_type)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc10 = add i64 %3, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0))
  %call12 = call i32 @PyType_Ready(%struct._typeobject* @methodcaller_type)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %5 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc16 = add i64 %5, 1
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0))
  %7 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.8, %if.then.3, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @truth(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %r, align 8
  %cmp = icmp eq i64 -1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %r, align 8
  %call2 = call %struct._object* @PyBool_FromLong(i64 %1)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_contains(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call i32 @PySequence_Contains(%struct._object* %1, %struct._object* %2)
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %r, align 8
  %cmp = icmp eq i64 -1, %conv
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* %r, align 8
  %call5 = call %struct._object* @PyBool_FromLong(i64 %3)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @indexOf(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call i64 @PySequence_Index(%struct._object* %1, %struct._object* %2)
  store i64 %call1, i64* %r, align 8
  %cmp = icmp eq i64 -1, %call1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %r, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @countOf(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call i64 @PySequence_Count(%struct._object* %1, %struct._object* %2)
  store i64 %call1, i64* %r, align 8
  %cmp = icmp eq i64 -1, %call1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %r, align 8
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %cmp = icmp eq %struct._object* %1, %2
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_not(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %cmp = icmp ne %struct._object* %1, %2
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %result, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_index(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_add(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_sub(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Subtract(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mul(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Multiply(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_floordiv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_truediv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mod(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Remainder(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_neg(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call %struct._object* @PyNumber_Negative(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pos(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call %struct._object* @PyNumber_Positive(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_abs(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call %struct._object* @PyNumber_Absolute(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_inv(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call %struct._object* @PyNumber_Invert(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_invert(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call %struct._object* @PyNumber_Invert(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Lshift(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_rshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Rshift(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_not_(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a1, %struct._object** %a1.addr, align 8
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8
  %call = call i32 @PyObject_Not(%struct._object* %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %r, align 8
  %cmp = icmp eq i64 -1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %r, align 8
  %call2 = call %struct._object* @PyBool_FromLong(i64 %1)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_and_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_And(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_xor(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Xor(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_or_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Or(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iadd(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_isub(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imul(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ifloordiv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_itruediv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imod(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ilshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_irshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iand(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ixor(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceXor(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ior(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_concat(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PySequence_Concat(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iconcat(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PySequence_InPlaceConcat(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_getitem(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_GetItem(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_setitem(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %a3 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i64 3, i64 3, %struct._object** %a1, %struct._object** %a2, %struct._object** %a3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %3 = load %struct._object*, %struct._object** %a3, align 8
  %call1 = call i32 @PyObject_SetItem(%struct._object* %1, %struct._object* %2, %struct._object* %3)
  %cmp = icmp eq i32 -1, %call1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_delitem(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call i32 @PyObject_DelItem(%struct._object* %1, %struct._object* %2)
  %cmp = icmp eq i32 -1, %call1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pow(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_Power(%struct._object* %1, %struct._object* %2, %struct._object* @_Py_NoneStruct)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ipow(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyNumber_InPlacePower(%struct._object* %1, %struct._object* %2, %struct._object* @_Py_NoneStruct)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lt(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 0)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_le(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_eq(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ne(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_gt(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 4)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ge(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a1, align 8
  %2 = load %struct._object*, %struct._object** %a2, align 8
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %2, i32 5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compare_digest(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %a = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %view_a = alloca %struct.bufferinfo, align 8
  %view_b = alloca %struct.bufferinfo, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0), %struct._object** %a, %struct._object** %b)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %a, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %b, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags2, align 8
  %and3 = and i64 %6, 268435456
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %a, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %9, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %10 = load %struct._object*, %struct._object** %a, align 8
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ]
  %cmp8 = icmp eq i32 %cond, -1
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load %struct._object*, %struct._object** %b, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state9 to i32*
  %bf.load10 = load i32, i32* %13, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 7
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %lor.lhs.false
  br label %cond.end.17

cond.false.15:                                    ; preds = %lor.lhs.false
  %14 = load %struct._object*, %struct._object** %b, align 8
  %call16 = call i32 @_PyUnicode_Ready(%struct._object* %14)
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond18 = phi i32 [ 0, %cond.true.14 ], [ %call16, %cond.false.15 ]
  %cmp19 = icmp eq i32 %cond18, -1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end.17, %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %cond.end.17
  %15 = load %struct._object*, %struct._object** %a, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*
  %state22 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3
  %17 = bitcast %struct.anon* %state22 to i32*
  %bf.load23 = load i32, i32* %17, align 4
  %bf.lshr24 = lshr i32 %bf.load23, 6
  %bf.clear25 = and i32 %bf.lshr24, 1
  %tobool26 = icmp ne i32 %bf.clear25, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.33

lor.lhs.false.27:                                 ; preds = %if.end.21
  %18 = load %struct._object*, %struct._object** %b, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %state28 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3
  %20 = bitcast %struct.anon* %state28 to i32*
  %bf.load29 = load i32, i32* %20, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 6
  %bf.clear31 = and i32 %bf.lshr30, 1
  %tobool32 = icmp ne i32 %bf.clear31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false.27, %if.end.21
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.137, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.27
  %22 = load %struct._object*, %struct._object** %a, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3
  %24 = bitcast %struct.anon* %state35 to i32*
  %bf.load36 = load i32, i32* %24, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 5
  %bf.clear38 = and i32 %bf.lshr37, 1
  %tobool39 = icmp ne i32 %bf.clear38, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.51

cond.true.40:                                     ; preds = %if.end.34
  %25 = load %struct._object*, %struct._object** %a, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*
  %state41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3
  %27 = bitcast %struct.anon* %state41 to i32*
  %bf.load42 = load i32, i32* %27, align 4
  %bf.lshr43 = lshr i32 %bf.load42, 6
  %bf.clear44 = and i32 %bf.lshr43, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.true.40
  %28 = load %struct._object*, %struct._object** %a, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i64 1
  %30 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.true.40
  %31 = load %struct._object*, %struct._object** %a, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyCompactUnicodeObject*
  %add.ptr48 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %32, i64 1
  %33 = bitcast %struct.PyCompactUnicodeObject* %add.ptr48 to i8*
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i8* [ %30, %cond.true.46 ], [ %33, %cond.false.47 ]
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.end.34
  %34 = load %struct._object*, %struct._object** %a, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %35, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %36 = load i8*, i8** %any, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.end.49
  %cond53 = phi i8* [ %cond50, %cond.end.49 ], [ %36, %cond.false.51 ]
  %37 = load %struct._object*, %struct._object** %b, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %state54 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3
  %39 = bitcast %struct.anon* %state54 to i32*
  %bf.load55 = load i32, i32* %39, align 4
  %bf.lshr56 = lshr i32 %bf.load55, 5
  %bf.clear57 = and i32 %bf.lshr56, 1
  %tobool58 = icmp ne i32 %bf.clear57, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.71

cond.true.59:                                     ; preds = %cond.end.52
  %40 = load %struct._object*, %struct._object** %b, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %state60 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 3
  %42 = bitcast %struct.anon* %state60 to i32*
  %bf.load61 = load i32, i32* %42, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 6
  %bf.clear63 = and i32 %bf.lshr62, 1
  %tobool64 = icmp ne i32 %bf.clear63, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.true.59
  %43 = load %struct._object*, %struct._object** %b, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyASCIIObject*
  %add.ptr66 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i64 1
  %45 = bitcast %struct.PyASCIIObject* %add.ptr66 to i8*
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.true.59
  %46 = load %struct._object*, %struct._object** %b, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyCompactUnicodeObject*
  %add.ptr68 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %47, i64 1
  %48 = bitcast %struct.PyCompactUnicodeObject* %add.ptr68 to i8*
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i8* [ %45, %cond.true.65 ], [ %48, %cond.false.67 ]
  br label %cond.end.74

cond.false.71:                                    ; preds = %cond.end.52
  %49 = load %struct._object*, %struct._object** %b, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyUnicodeObject*
  %data72 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %50, i32 0, i32 1
  %any73 = bitcast %union.anon* %data72 to i8**
  %51 = load i8*, i8** %any73, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.71, %cond.end.69
  %cond75 = phi i8* [ %cond70, %cond.end.69 ], [ %51, %cond.false.71 ]
  %52 = load %struct._object*, %struct._object** %a, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %53, i32 0, i32 1
  %54 = load i64, i64* %length, align 8
  %55 = load %struct._object*, %struct._object** %b, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %length76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 1
  %57 = load i64, i64* %length76, align 8
  %call77 = call i32 @_tscmp(i8* %cond53, i8* %cond75, i64 %54, i64 %57)
  store i32 %call77, i32* %rc, align 4
  br label %if.end.120

if.else:                                          ; preds = %land.lhs.true, %if.end
  %58 = load %struct._object*, %struct._object** %a, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 18
  %60 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp79 = icmp ne %struct.PyBufferProcs* %60, null
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %61 = load %struct._object*, %struct._object** %a, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_as_buffer81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 18
  %63 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer81, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %63, i32 0, i32 0
  %64 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp82 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %64, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %65 = phi i1 [ false, %if.else ], [ %cmp82, %land.rhs ]
  %land.ext = zext i1 %65 to i32
  %cmp83 = icmp eq i32 %land.ext, 0
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.101

land.lhs.true.84:                                 ; preds = %land.end
  %66 = load %struct._object*, %struct._object** %b, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_as_buffer86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 18
  %68 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer86, align 8
  %cmp87 = icmp ne %struct.PyBufferProcs* %68, null
  br i1 %cmp87, label %land.rhs.88, label %land.end.93

land.rhs.88:                                      ; preds = %land.lhs.true.84
  %69 = load %struct._object*, %struct._object** %b, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_as_buffer90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 18
  %71 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer90, align 8
  %bf_getbuffer91 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %71, i32 0, i32 0
  %72 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer91, align 8
  %cmp92 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %72, null
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.88, %land.lhs.true.84
  %73 = phi i1 [ false, %land.lhs.true.84 ], [ %cmp92, %land.rhs.88 ]
  %land.ext94 = zext i1 %73 to i32
  %cmp95 = icmp eq i32 %land.ext94, 0
  br i1 %cmp95, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %land.end.93
  %74 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %75 = load %struct._object*, %struct._object** %a, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 1
  %77 = load i8*, i8** %tp_name, align 8
  %78 = load %struct._object*, %struct._object** %b, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_name99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 1
  %80 = load i8*, i8** %tp_name99, align 8
  %call100 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.138, i32 0, i32 0), i8* %77, i8* %80)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.101:                                       ; preds = %land.end.93, %land.end
  %81 = load %struct._object*, %struct._object** %a, align 8
  %call102 = call i32 @PyObject_GetBuffer(%struct._object* %81, %struct.bufferinfo* %view_a, i32 0)
  %cmp103 = icmp eq i32 %call102, -1
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.105:                                       ; preds = %if.end.101
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 5
  %82 = load i32, i32* %ndim, align 4
  %cmp106 = icmp sgt i32 %82, 1
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  %83 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.108:                                       ; preds = %if.end.105
  %84 = load %struct._object*, %struct._object** %b, align 8
  %call109 = call i32 @PyObject_GetBuffer(%struct._object* %84, %struct.bufferinfo* %view_b, i32 0)
  %cmp110 = icmp eq i32 %call109, -1
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.112:                                       ; preds = %if.end.108
  %ndim113 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 5
  %85 = load i32, i32* %ndim113, align 4
  %cmp114 = icmp sgt i32 %85, 1
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  %86 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_b)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 0
  %87 = load i8*, i8** %buf, align 8
  %buf117 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 0
  %88 = load i8*, i8** %buf117, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 2
  %89 = load i64, i64* %len, align 8
  %len118 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 2
  %90 = load i64, i64* %len118, align 8
  %call119 = call i32 @_tscmp(i8* %87, i8* %88, i64 %89, i64 %90)
  store i32 %call119, i32* %rc, align 4
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a)
  call void @PyBuffer_Release(%struct.bufferinfo* %view_b)
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.116, %cond.end.74
  %91 = load i32, i32* %rc, align 4
  %conv = sext i32 %91 to i64
  %call121 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call121, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then.115, %if.then.111, %if.then.107, %if.then.104, %if.then.96, %if.then.33, %if.then.20, %if.then
  %92 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %92
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @length_hint(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %defaultvalue = alloca i64, align 8
  %res = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %defaultvalue, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), %struct._object** %obj, i64* %defaultvalue)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load i64, i64* %defaultvalue, align 8
  %call1 = call i64 @PyObject_LengthHint(%struct._object* %1, i64 %2)
  store i64 %call1, i64* %res, align 8
  %3 = load i64, i64* %res, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i64, i64* %res, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #1

declare i64 @PySequence_Index(%struct._object*, %struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i64 @PySequence_Count(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_Positive(%struct._object*) #1

declare %struct._object* @PyNumber_Absolute(%struct._object*) #1

declare %struct._object* @PyNumber_Invert(%struct._object*) #1

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #1

declare i32 @PyObject_Not(%struct._object*) #1

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceAdd(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceSubtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceMultiply(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceRemainder(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceLshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceRshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceAnd(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceXor(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #1

declare %struct._object* @PySequence_Concat(%struct._object*, %struct._object*) #1

declare %struct._object* @PySequence_InPlaceConcat(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_InPlacePower(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_tscmp(i8* %a, i8* %b, i64 %len_a, i64 %len_b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %len_a.addr = alloca i64, align 8
  %len_b.addr = alloca i64, align 8
  %length = alloca i64, align 8
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %i = alloca i64, align 8
  %result = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %len_a, i64* %len_a.addr, align 8
  store i64 %len_b, i64* %len_b.addr, align 8
  %0 = load i64, i64* %len_b.addr, align 8
  store volatile i64 %0, i64* %length, align 8
  store i8* null, i8** %left, align 8
  %1 = load i8*, i8** %b.addr, align 8
  store i8* %1, i8** %right, align 8
  %2 = load i64, i64* %len_a.addr, align 8
  %3 = load volatile i64, i64* %length, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %a.addr, align 8
  store i8* %4, i8** %left, align 8
  store i8 0, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %len_a.addr, align 8
  %6 = load volatile i64, i64* %length, align 8
  %cmp1 = icmp ne i64 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i8*, i8** %b.addr, align 8
  store i8* %7, i8** %left, align 8
  store i8 1, i8* %result, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i64, i64* %i, align 8
  %9 = load volatile i64, i64* %length, align 8
  %cmp4 = icmp slt i64 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %left, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %left, align 8
  %11 = load volatile i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %right, align 8
  %incdec.ptr5 = getelementptr i8, i8* %12, i32 1
  store i8* %incdec.ptr5, i8** %right, align 8
  %13 = load volatile i8, i8* %12, align 1
  %conv6 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv6
  %14 = load i8, i8* %result, align 1
  %conv7 = zext i8 %14 to i32
  %or = or i32 %conv7, %xor
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8, i8* %result, align 1
  %conv9 = zext i8 %16 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  %conv11 = zext i1 %cmp10 to i32
  ret i32 %conv11
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare i64 @PyObject_LengthHint(%struct._object*, i64) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal void @itemgetter_dealloc(%struct.itemgetterobject* %ig) #0 {
entry:
  %ig.addr = alloca %struct.itemgetterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8
  %0 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %1 = bitcast %struct.itemgetterobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %item, align 8
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
  %12 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %13 = bitcast %struct.itemgetterobject* %12 to i8*
  call void @PyObject_GC_Del(i8* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @itemgetter_call(%struct.itemgetterobject* %ig, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ig.addr = alloca %struct.itemgetterobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %nitems = alloca i64, align 8
  %item10 = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %nitems1 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %nitems1, align 8
  store i64 %1, i64* %nitems, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %nitems, align 8
  %cmp = icmp eq i64 %3, 1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %5 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %item, align 8
  %call3 = call %struct._object* @PyObject_GetItem(%struct._object* %4, %struct._object* %6)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load i64, i64* %nitems, align 8
  %call5 = call %struct._object* @PyTuple_New(i64 %7)
  store %struct._object* %call5, %struct._object** %result, align 8
  %8 = load %struct._object*, %struct._object** %result, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %nitems, align 8
  %cmp9 = icmp slt i64 %9, %10
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %item11 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %item11, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %11
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %15, %struct._object** %item10, align 8
  %16 = load %struct._object*, %struct._object** %obj, align 8
  %17 = load %struct._object*, %struct._object** %item10, align 8
  %call12 = call %struct._object* @PyObject_GetItem(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call12, %struct._object** %val, align 8
  %18 = load %struct._object*, %struct._object** %val, align 8
  %cmp13 = icmp eq %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  %26 = load %struct._object*, %struct._object** %val, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load %struct._object*, %struct._object** %result, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i64 %27
  store %struct._object* %26, %struct._object** %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.7, %if.then.2, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @itemgetter_traverse(%struct.itemgetterobject* %ig, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ig.addr = alloca %struct.itemgetterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %item, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8
  %item1 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %item1, align 8
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
define internal %struct._object* @itemgetter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ig = alloca %struct.itemgetterobject*, align 8
  %item = alloca %struct._object*, align 8
  %nitems = alloca i64, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %nitems, align 8
  %4 = load i64, i64* %nitems, align 8
  %cmp = icmp sle i64 %4, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %item)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %6, %struct._object** %item, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %call7 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @itemgetter_type)
  %7 = bitcast %struct._object* %call7 to %struct.itemgetterobject*
  store %struct.itemgetterobject* %7, %struct.itemgetterobject** %ig, align 8
  %8 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8
  %cmp8 = icmp eq %struct.itemgetterobject* %8, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %9 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %12 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8
  %item11 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %12, i32 0, i32 2
  store %struct._object* %11, %struct._object** %item11, align 8
  %13 = load i64, i64* %nitems, align 8
  %14 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8
  %nitems12 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %14, i32 0, i32 1
  store i64 %13, i64* %nitems12, align 8
  %15 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8
  %16 = bitcast %struct.itemgetterobject* %15 to i8*
  call void @PyObject_GC_Track(i8* %16)
  %17 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8
  %18 = bitcast %struct.itemgetterobject* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare void @PyObject_GC_Track(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @attrgetter_dealloc(%struct.attrgetterobject* %ag) #0 {
entry:
  %ag.addr = alloca %struct.attrgetterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8
  %0 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %1 = bitcast %struct.attrgetterobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %attr, align 8
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
  %12 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %13 = bitcast %struct.attrgetterobject* %12 to i8*
  call void @PyObject_GC_Del(i8* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @attrgetter_call(%struct.attrgetterobject* %ag, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ag.addr = alloca %struct.attrgetterobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %nattrs = alloca i64, align 8
  %attr11 = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %nattrs1 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %0, i32 0, i32 1
  %1 = load i64, i64* %nattrs1, align 8
  store i64 %1, i64* %nattrs, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %nattrs2 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %3, i32 0, i32 1
  %4 = load i64, i64* %nattrs2, align 8
  %cmp = icmp eq i64 %4, 1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %6 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %attr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call4 = call %struct._object* @dotted_getattr(%struct._object* %5, %struct._object* %9)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %10 = load i64, i64* %nattrs, align 8
  %call6 = call %struct._object* @PyTuple_New(i64 %10)
  store %struct._object* %call6, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %nattrs, align 8
  %cmp10 = icmp slt i64 %12, %13
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %attr12 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %15, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %attr12, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 %14
  %18 = load %struct._object*, %struct._object** %arrayidx14, align 8
  store %struct._object* %18, %struct._object** %attr11, align 8
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %20 = load %struct._object*, %struct._object** %attr11, align 8
  %call15 = call %struct._object* @dotted_getattr(%struct._object* %19, %struct._object* %20)
  store %struct._object* %call15, %struct._object** %val, align 8
  %21 = load %struct._object*, %struct._object** %val, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  %29 = load %struct._object*, %struct._object** %val, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %result, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 %30
  store %struct._object* %29, %struct._object** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.8, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal i32 @attrgetter_traverse(%struct.attrgetterobject* %ag, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ag.addr = alloca %struct.attrgetterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %attr, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8
  %attr1 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %attr1, align 8
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
define internal %struct._object* @attrgetter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ag = alloca %struct.attrgetterobject*, align 8
  %attr = alloca %struct._object*, align 8
  %nattrs = alloca i64, align 8
  %idx = alloca i64, align 8
  %char_idx = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %item_len = alloca i64, align 8
  %data = alloca i8*, align 8
  %kind = alloca i32, align 4
  %dot_count = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %attr_chain = alloca %struct._object*, align 8
  %attr_chain_item = alloca %struct._object*, align 8
  %unibuff_from = alloca i64, align 8
  %unibuff_till = alloca i64, align 8
  %attr_chain_idx = alloca i64, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  %_py_decref_tmp210 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %nattrs, align 8
  %4 = load i64, i64* %nattrs, align 8
  %cmp = icmp sle i64 %4, 1
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %attr)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %6 = load i64, i64* %nattrs, align 8
  %call7 = call %struct._object* @PyTuple_New(i64 %6)
  store %struct._object* %call7, %struct._object** %attr, align 8
  %7 = load %struct._object*, %struct._object** %attr, align 8
  %cmp8 = icmp eq %struct._object* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  store i64 0, i64* %idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.202, %if.end.10
  %8 = load i64, i64* %idx, align 8
  %9 = load i64, i64* %nattrs, align 8
  %cmp11 = icmp slt i64 %8, %9
  br i1 %cmp11, label %for.body, label %for.end.204

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %idx, align 8
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %10
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %item, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 268435456
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.end.18, label %if.then.13

if.then.13:                                       ; preds = %for.body
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %18 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  %25 = load %struct._object*, %struct._object** %item, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3
  %27 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %27, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool19 = icmp ne i32 %bf.clear, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %28 = load %struct._object*, %struct._object** %item, align 8
  %call20 = call i32 @_PyUnicode_Ready(%struct._object* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call20, %cond.false ]
  %tobool21 = icmp ne i32 %cond, 0
  br i1 %tobool21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %cond.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %29 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp24, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %31, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %34(%struct._object* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %cond.end
  %36 = load %struct._object*, %struct._object** %item, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 1
  %38 = load i64, i64* %length, align 8
  store i64 %38, i64* %item_len, align 8
  %39 = load %struct._object*, %struct._object** %item, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state35 to i32*
  %bf.load36 = load i32, i32* %41, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 2
  %bf.clear38 = and i32 %bf.lshr37, 7
  store i32 %bf.clear38, i32* %kind, align 4
  %42 = load %struct._object*, %struct._object** %item, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %state39 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i32 0, i32 3
  %44 = bitcast %struct.anon* %state39 to i32*
  %bf.load40 = load i32, i32* %44, align 4
  %bf.lshr41 = lshr i32 %bf.load40, 5
  %bf.clear42 = and i32 %bf.lshr41, 1
  %tobool43 = icmp ne i32 %bf.clear42, 0
  br i1 %tobool43, label %cond.true.44, label %cond.false.55

cond.true.44:                                     ; preds = %if.end.34
  %45 = load %struct._object*, %struct._object** %item, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyASCIIObject*
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %46, i32 0, i32 3
  %47 = bitcast %struct.anon* %state45 to i32*
  %bf.load46 = load i32, i32* %47, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 6
  %bf.clear48 = and i32 %bf.lshr47, 1
  %tobool49 = icmp ne i32 %bf.clear48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.true.44
  %48 = load %struct._object*, %struct._object** %item, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %49, i64 1
  %50 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.53

cond.false.51:                                    ; preds = %cond.true.44
  %51 = load %struct._object*, %struct._object** %item, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyCompactUnicodeObject*
  %add.ptr52 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %52, i64 1
  %53 = bitcast %struct.PyCompactUnicodeObject* %add.ptr52 to i8*
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  %cond54 = phi i8* [ %50, %cond.true.50 ], [ %53, %cond.false.51 ]
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.end.34
  %54 = load %struct._object*, %struct._object** %item, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyUnicodeObject*
  %data56 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %55, i32 0, i32 1
  %any = bitcast %union.anon* %data56 to i8**
  %56 = load i8*, i8** %any, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.end.53
  %cond58 = phi i8* [ %cond54, %cond.end.53 ], [ %56, %cond.false.55 ]
  store i8* %cond58, i8** %data, align 8
  store i32 0, i32* %dot_count, align 4
  store i64 0, i64* %char_idx, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc, %cond.end.57
  %57 = load i64, i64* %char_idx, align 8
  %58 = load i64, i64* %item_len, align 8
  %cmp60 = icmp slt i64 %57, %58
  br i1 %cmp60, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.59
  %59 = load i32, i32* %kind, align 4
  %cmp62 = icmp eq i32 %59, 1
  br i1 %cmp62, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %for.body.61
  %60 = load i64, i64* %char_idx, align 8
  %61 = load i8*, i8** %data, align 8
  %arrayidx64 = getelementptr i8, i8* %61, i64 %60
  %62 = load i8, i8* %arrayidx64, align 1
  %conv = zext i8 %62 to i32
  br label %cond.end.75

cond.false.65:                                    ; preds = %for.body.61
  %63 = load i32, i32* %kind, align 4
  %cmp66 = icmp eq i32 %63, 2
  br i1 %cmp66, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %cond.false.65
  %64 = load i64, i64* %char_idx, align 8
  %65 = load i8*, i8** %data, align 8
  %66 = bitcast i8* %65 to i16*
  %arrayidx69 = getelementptr i16, i16* %66, i64 %64
  %67 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %67 to i32
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.false.65
  %68 = load i64, i64* %char_idx, align 8
  %69 = load i8*, i8** %data, align 8
  %70 = bitcast i8* %69 to i32*
  %arrayidx72 = getelementptr i32, i32* %70, i64 %68
  %71 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.68
  %cond74 = phi i32 [ %conv70, %cond.true.68 ], [ %71, %cond.false.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.63
  %cond76 = phi i32 [ %conv, %cond.true.63 ], [ %cond74, %cond.end.73 ]
  %cmp77 = icmp eq i32 %cond76, 46
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.end.75
  %72 = load i32, i32* %dot_count, align 4
  %inc = add i32 %72, 1
  store i32 %inc, i32* %dot_count, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %cond.end.75
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %73 = load i64, i64* %char_idx, align 8
  %inc81 = add i64 %73, 1
  store i64 %inc81, i64* %char_idx, align 8
  br label %for.cond.59

for.end:                                          ; preds = %for.cond.59
  %74 = load i32, i32* %dot_count, align 4
  %cmp82 = icmp eq i32 %74, 0
  br i1 %cmp82, label %if.then.84, label %if.else.89

if.then.84:                                       ; preds = %for.end
  %75 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt85, align 8
  %inc86 = add i64 %76, 1
  store i64 %inc86, i64* %ob_refcnt85, align 8
  call void @PyUnicode_InternInPlace(%struct._object** %item)
  %77 = load %struct._object*, %struct._object** %item, align 8
  %78 = load i64, i64* %idx, align 8
  %79 = load %struct._object*, %struct._object** %attr, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyTupleObject*
  %ob_item87 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %80, i32 0, i32 1
  %arrayidx88 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item87, i32 0, i64 %78
  store %struct._object* %77, %struct._object** %arrayidx88, align 8
  br label %if.end.201

if.else.89:                                       ; preds = %for.end
  %81 = load i32, i32* %dot_count, align 4
  %add = add i32 %81, 1
  %conv90 = sext i32 %add to i64
  %call91 = call %struct._object* @PyTuple_New(i64 %conv90)
  store %struct._object* %call91, %struct._object** %attr_chain, align 8
  store i64 0, i64* %unibuff_from, align 8
  store i64 0, i64* %unibuff_till, align 8
  store i64 0, i64* %attr_chain_idx, align 8
  %82 = load %struct._object*, %struct._object** %attr_chain, align 8
  %cmp92 = icmp eq %struct._object* %82, null
  br i1 %cmp92, label %if.then.94, label %if.end.107

if.then.94:                                       ; preds = %if.else.89
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %83 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp96, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %85, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.95
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.95
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %88(%struct._object* %89)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.else.89
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.165, %if.end.107
  %90 = load i32, i32* %dot_count, align 4
  %cmp109 = icmp sgt i32 %90, 0
  br i1 %cmp109, label %for.body.111, label %for.end.167

for.body.111:                                     ; preds = %for.cond.108
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.111
  %91 = load i32, i32* %kind, align 4
  %cmp112 = icmp eq i32 %91, 1
  br i1 %cmp112, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %while.cond
  %92 = load i64, i64* %unibuff_till, align 8
  %93 = load i8*, i8** %data, align 8
  %arrayidx115 = getelementptr i8, i8* %93, i64 %92
  %94 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %94 to i32
  br label %cond.end.127

cond.false.117:                                   ; preds = %while.cond
  %95 = load i32, i32* %kind, align 4
  %cmp118 = icmp eq i32 %95, 2
  br i1 %cmp118, label %cond.true.120, label %cond.false.123

cond.true.120:                                    ; preds = %cond.false.117
  %96 = load i64, i64* %unibuff_till, align 8
  %97 = load i8*, i8** %data, align 8
  %98 = bitcast i8* %97 to i16*
  %arrayidx121 = getelementptr i16, i16* %98, i64 %96
  %99 = load i16, i16* %arrayidx121, align 2
  %conv122 = zext i16 %99 to i32
  br label %cond.end.125

cond.false.123:                                   ; preds = %cond.false.117
  %100 = load i64, i64* %unibuff_till, align 8
  %101 = load i8*, i8** %data, align 8
  %102 = bitcast i8* %101 to i32*
  %arrayidx124 = getelementptr i32, i32* %102, i64 %100
  %103 = load i32, i32* %arrayidx124, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.120
  %cond126 = phi i32 [ %conv122, %cond.true.120 ], [ %103, %cond.false.123 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.114
  %cond128 = phi i32 [ %conv116, %cond.true.114 ], [ %cond126, %cond.end.125 ]
  %cmp129 = icmp ne i32 %cond128, 46
  br i1 %cmp129, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.127
  %104 = load i64, i64* %unibuff_till, align 8
  %inc131 = add i64 %104, 1
  store i64 %inc131, i64* %unibuff_till, align 8
  br label %while.cond

while.end:                                        ; preds = %cond.end.127
  %105 = load %struct._object*, %struct._object** %item, align 8
  %106 = load i64, i64* %unibuff_from, align 8
  %107 = load i64, i64* %unibuff_till, align 8
  %call132 = call %struct._object* @PyUnicode_Substring(%struct._object* %105, i64 %106, i64 %107)
  store %struct._object* %call132, %struct._object** %attr_chain_item, align 8
  %108 = load %struct._object*, %struct._object** %attr_chain_item, align 8
  %cmp133 = icmp eq %struct._object* %108, null
  br i1 %cmp133, label %if.then.135, label %if.end.160

if.then.135:                                      ; preds = %while.end
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %109 = load %struct._object*, %struct._object** %attr_chain, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp137, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %111, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %do.body.136
  br label %if.end.146

if.else.143:                                      ; preds = %do.body.136
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type144 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type144, align 8
  %tp_dealloc145 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc145, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %114(%struct._object* %115)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.142
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %do.body.148

do.body.148:                                      ; preds = %do.end.147
  %116 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp149, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %118, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.148
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.148
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %121(%struct._object* %122)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.160:                                       ; preds = %while.end
  call void @PyUnicode_InternInPlace(%struct._object** %attr_chain_item)
  %123 = load %struct._object*, %struct._object** %attr_chain_item, align 8
  %124 = load i64, i64* %attr_chain_idx, align 8
  %125 = load %struct._object*, %struct._object** %attr_chain, align 8
  %126 = bitcast %struct._object* %125 to %struct.PyTupleObject*
  %ob_item161 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %126, i32 0, i32 1
  %arrayidx162 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item161, i32 0, i64 %124
  store %struct._object* %123, %struct._object** %arrayidx162, align 8
  %127 = load i64, i64* %attr_chain_idx, align 8
  %inc163 = add i64 %127, 1
  store i64 %inc163, i64* %attr_chain_idx, align 8
  %128 = load i64, i64* %unibuff_till, align 8
  %add164 = add i64 %128, 1
  store i64 %add164, i64* %unibuff_from, align 8
  store i64 %add164, i64* %unibuff_till, align 8
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.160
  %129 = load i32, i32* %dot_count, align 4
  %dec166 = add i32 %129, -1
  store i32 %dec166, i32* %dot_count, align 4
  br label %for.cond.108

for.end.167:                                      ; preds = %for.cond.108
  %130 = load %struct._object*, %struct._object** %item, align 8
  %131 = load i64, i64* %unibuff_from, align 8
  %132 = load i64, i64* %item_len, align 8
  %call168 = call %struct._object* @PyUnicode_Substring(%struct._object* %130, i64 %131, i64 %132)
  store %struct._object* %call168, %struct._object** %attr_chain_item, align 8
  %133 = load %struct._object*, %struct._object** %attr_chain_item, align 8
  %cmp169 = icmp eq %struct._object* %133, null
  br i1 %cmp169, label %if.then.171, label %if.end.196

if.then.171:                                      ; preds = %for.end.167
  br label %do.body.172

do.body.172:                                      ; preds = %if.then.171
  %134 = load %struct._object*, %struct._object** %attr_chain, align 8
  store %struct._object* %134, %struct._object** %_py_decref_tmp173, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt174, align 8
  %dec175 = add i64 %136, -1
  store i64 %dec175, i64* %ob_refcnt174, align 8
  %cmp176 = icmp ne i64 %dec175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.172
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.172
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 1
  %138 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %138, i32 0, i32 4
  %139 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  call void %139(%struct._object* %140)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  br label %do.body.184

do.body.184:                                      ; preds = %do.end.183
  %141 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %141, %struct._object** %_py_decref_tmp185, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 0
  %143 = load i64, i64* %ob_refcnt186, align 8
  %dec187 = add i64 %143, -1
  store i64 %dec187, i64* %ob_refcnt186, align 8
  %cmp188 = icmp ne i64 %dec187, 0
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %do.body.184
  br label %if.end.194

if.else.191:                                      ; preds = %do.body.184
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_type192 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 1
  %145 = load %struct._typeobject*, %struct._typeobject** %ob_type192, align 8
  %tp_dealloc193 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %145, i32 0, i32 4
  %146 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc193, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  call void %146(%struct._object* %147)
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.191, %if.then.190
  br label %do.end.195

do.end.195:                                       ; preds = %if.end.194
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.196:                                       ; preds = %for.end.167
  call void @PyUnicode_InternInPlace(%struct._object** %attr_chain_item)
  %148 = load %struct._object*, %struct._object** %attr_chain_item, align 8
  %149 = load i64, i64* %attr_chain_idx, align 8
  %150 = load %struct._object*, %struct._object** %attr_chain, align 8
  %151 = bitcast %struct._object* %150 to %struct.PyTupleObject*
  %ob_item197 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %151, i32 0, i32 1
  %arrayidx198 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item197, i32 0, i64 %149
  store %struct._object* %148, %struct._object** %arrayidx198, align 8
  %152 = load %struct._object*, %struct._object** %attr_chain, align 8
  %153 = load i64, i64* %idx, align 8
  %154 = load %struct._object*, %struct._object** %attr, align 8
  %155 = bitcast %struct._object* %154 to %struct.PyTupleObject*
  %ob_item199 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %155, i32 0, i32 1
  %arrayidx200 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item199, i32 0, i64 %153
  store %struct._object* %152, %struct._object** %arrayidx200, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.196, %if.then.84
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.201
  %156 = load i64, i64* %idx, align 8
  %inc203 = add i64 %156, 1
  store i64 %inc203, i64* %idx, align 8
  br label %for.cond

for.end.204:                                      ; preds = %for.cond
  %call205 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @attrgetter_type)
  %157 = bitcast %struct._object* %call205 to %struct.attrgetterobject*
  store %struct.attrgetterobject* %157, %struct.attrgetterobject** %ag, align 8
  %158 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8
  %cmp206 = icmp eq %struct.attrgetterobject* %158, null
  br i1 %cmp206, label %if.then.208, label %if.end.221

if.then.208:                                      ; preds = %for.end.204
  br label %do.body.209

do.body.209:                                      ; preds = %if.then.208
  %159 = load %struct._object*, %struct._object** %attr, align 8
  store %struct._object* %159, %struct._object** %_py_decref_tmp210, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_refcnt211 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 0
  %161 = load i64, i64* %ob_refcnt211, align 8
  %dec212 = add i64 %161, -1
  store i64 %dec212, i64* %ob_refcnt211, align 8
  %cmp213 = icmp ne i64 %dec212, 0
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %do.body.209
  br label %if.end.219

if.else.216:                                      ; preds = %do.body.209
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_type217 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 1
  %163 = load %struct._typeobject*, %struct._typeobject** %ob_type217, align 8
  %tp_dealloc218 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %163, i32 0, i32 4
  %164 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc218, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  call void %164(%struct._object* %165)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.215
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.221:                                       ; preds = %for.end.204
  %166 = load %struct._object*, %struct._object** %attr, align 8
  %167 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8
  %attr222 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %167, i32 0, i32 2
  store %struct._object* %166, %struct._object** %attr222, align 8
  %168 = load i64, i64* %nattrs, align 8
  %169 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8
  %nattrs223 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %169, i32 0, i32 1
  store i64 %168, i64* %nattrs223, align 8
  %170 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8
  %171 = bitcast %struct.attrgetterobject* %170 to i8*
  call void @PyObject_GC_Track(i8* %171)
  %172 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8
  %173 = bitcast %struct.attrgetterobject* %172 to %struct._object*
  store %struct._object* %173, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.221, %do.end.220, %do.end.195, %do.end.159, %do.end.106, %do.end.33, %do.end, %if.then.9, %if.then.4, %if.then
  %174 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %174
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dotted_getattr(%struct._object* %obj, %struct._object* %attr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %attr.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  %name_idx = alloca i64, align 8
  %name_count = alloca i64, align 8
  %attr_name = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %attr, %struct._object** %attr.addr, align 8
  %0 = load %struct._object*, %struct._object** %attr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyTuple_Type
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  store i64 0, i64* %name_idx, align 8
  %2 = load %struct._object*, %struct._object** %attr.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %name_count, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  store i64 0, i64* %name_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %name_idx, align 8
  %8 = load i64, i64* %name_count, align 8
  %cmp1 = icmp slt i64 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %name_idx, align 8
  %10 = load %struct._object*, %struct._object** %attr.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %attr_name, align 8
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8
  %14 = load %struct._object*, %struct._object** %attr_name, align 8
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %13, %struct._object* %14)
  store %struct._object* %call, %struct._object** %newobj, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt2, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt2, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  %22 = load %struct._object*, %struct._object** %newobj, align 8
  %cmp6 = icmp eq %struct._object* %22, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %23, %struct._object** %obj.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %24 = load i64, i64* %name_idx, align 8
  %inc9 = add i64 %24, 1
  store i64 %inc9, i64* %name_idx, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else.10:                                       ; preds = %entry
  %25 = load %struct._object*, %struct._object** %obj.addr, align 8
  %26 = load %struct._object*, %struct._object** %attr.addr, align 8
  %call11 = call %struct._object* @PyObject_GetAttr(%struct._object* %25, %struct._object* %26)
  store %struct._object* %call11, %struct._object** %newobj, align 8
  %27 = load %struct._object*, %struct._object** %newobj, align 8
  %cmp12 = icmp eq %struct._object* %27, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.else.10
  %28 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %28, %struct._object** %obj.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.end
  %29 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.7
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare void @PyUnicode_InternInPlace(%struct._object**) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @methodcaller_dealloc(%struct.methodcallerobject* %mc) #0 {
entry:
  %mc.addr = alloca %struct.methodcallerobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8
  %0 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %1 = bitcast %struct.methodcallerobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %name, align 8
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
  %12 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %args, align 8
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
  %22 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %kwds, align 8
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
  %32 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %33 = bitcast %struct.methodcallerobject* %32 to i8*
  call void @PyObject_GC_Del(i8* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @methodcaller_call(%struct.methodcallerobject* %mc, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mc.addr = alloca %struct.methodcallerobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @PyObject_GetAttr(%struct._object* %1, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %method, align 8
  %4 = load %struct._object*, %struct._object** %method, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %method, align 8
  %6 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %args4 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %args4, align 8
  %8 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %kwds, align 8
  %call5 = call %struct._object* @PyObject_Call(%struct._object* %5, %struct._object* %7, %struct._object* %9)
  store %struct._object* %call5, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @methodcaller_traverse(%struct.methodcallerobject* %mc, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %mc.addr = alloca %struct.methodcallerobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %args1 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %args1, align 8
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
  %8 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %kwds, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8
  %kwds9 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %kwds9, align 8
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
define internal %struct._object* @methodcaller_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %mc = alloca %struct.methodcallerobject*, align 8
  %name = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %cmp = icmp slt i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @methodcaller_type)
  %4 = bitcast %struct._object* %call to %struct.methodcallerobject*
  store %struct.methodcallerobject* %4, %struct.methodcallerobject** %mc, align 8
  %5 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %cmp1 = icmp eq %struct.methodcallerobject* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size4, align 8
  %call5 = call %struct._object* @PyTuple_GetSlice(%struct._object* %6, i64 1, i64 %9)
  store %struct._object* %call5, %struct._object** %newargs, align 8
  %10 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp6 = icmp eq %struct._object* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %11 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %12 = bitcast %struct.methodcallerobject* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %19 = load %struct._object*, %struct._object** %newargs, align 8
  %20 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %args12 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %20, i32 0, i32 2
  store %struct._object* %19, %struct._object** %args12, align 8
  %21 = load %struct._object*, %struct._object** %args.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %23 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %23, %struct._object** %name, align 8
  %24 = load %struct._object*, %struct._object** %name, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt13, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt13, align 8
  %26 = load %struct._object*, %struct._object** %name, align 8
  %27 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %name14 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %27, i32 0, i32 1
  store %struct._object* %26, %struct._object** %name14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.11
  %28 = load %struct._object*, %struct._object** %kwds.addr, align 8
  store %struct._object* %28, %struct._object** %_py_xincref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %29, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.15
  %30 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %31, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.15
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %32 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %33 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %kwds22 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %33, i32 0, i32 3
  store %struct._object* %32, %struct._object** %kwds22, align 8
  %34 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %35 = bitcast %struct.methodcallerobject* %34 to i8*
  call void @PyObject_GC_Track(i8* %35)
  %36 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8
  %37 = bitcast %struct.methodcallerobject* %36 to %struct._object*
  store %struct._object* %37, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.21, %do.end, %if.then.2, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
