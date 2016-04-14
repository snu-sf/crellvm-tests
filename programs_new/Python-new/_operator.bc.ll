; ModuleID = 'programs_new/Python-new/_operator.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1041
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !444, metadata !1042), !dbg !1043
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @operatormodule, i32 1013), !dbg !1044
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1045, !tbaa !1046
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1050, !tbaa !1046
  %cmp = icmp eq %struct._object* %1, null, !dbg !1052
  br i1 %cmp, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1054
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1054

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @itemgetter_type), !dbg !1055
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1057
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1058

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1059

if.end.4:                                         ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1060, !tbaa !1061
  %inc = add i64 %2, 1, !dbg !1060
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1060, !tbaa !1061
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !1064, !tbaa !1046
  %call5 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i32 0, i32 0, i32 0)), !dbg !1065
  %call6 = call i32 @PyType_Ready(%struct._typeobject* @attrgetter_type), !dbg !1066
  %cmp7 = icmp slt i32 %call6, 0, !dbg !1068
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1069

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1070

if.end.9:                                         ; preds = %if.end.4
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1071, !tbaa !1061
  %inc10 = add i64 %4, 1, !dbg !1071
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1071, !tbaa !1061
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !1072, !tbaa !1046
  %call11 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i32 0, i32 0, i32 0)), !dbg !1073
  %call12 = call i32 @PyType_Ready(%struct._typeobject* @methodcaller_type), !dbg !1074
  %cmp13 = icmp slt i32 %call12, 0, !dbg !1076
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !1077

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval, !dbg !1078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1078

if.end.15:                                        ; preds = %if.end.9
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1079, !tbaa !1061
  %inc16 = add i64 %6, 1, !dbg !1079
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1079, !tbaa !1061
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !1080, !tbaa !1046
  %call17 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i32 0, i32 0, i32 0)), !dbg !1081
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !1082, !tbaa !1046
  store %struct._object* %8, %struct._object** %retval, !dbg !1083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1083

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.8, %if.then.3, %if.then
  %9 = bitcast %struct._object** %m to i8*, !dbg !1084
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1084
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1084
  ret %struct._object* %10, !dbg !1084
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @truth(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !447, metadata !1042), !dbg !1085
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !448, metadata !1042), !dbg !1086
  %0 = bitcast i64* %r to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1087
  call void @llvm.dbg.declare(metadata i64* %r, metadata !449, metadata !1042), !dbg !1088
  %1 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1089, !tbaa !1046
  %call = call i32 @PyObject_IsTrue(%struct._object* %1), !dbg !1091
  %conv = sext i32 %call to i64, !dbg !1091
  store i64 %conv, i64* %r, align 8, !dbg !1092, !tbaa !1093
  %cmp = icmp eq i64 -1, %conv, !dbg !1094
  br i1 %cmp, label %if.then, label %if.end, !dbg !1095

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1098

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %r, align 8, !dbg !1099, !tbaa !1093
  %call2 = call %struct._object* @PyBool_FromLong(i64 %2), !dbg !1101
  store %struct._object* %call2, %struct._object** %retval, !dbg !1102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1102

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i64* %r to i8*, !dbg !1103
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1103
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1103
  ret %struct._object* %4, !dbg !1103
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !452, metadata !1042), !dbg !1106
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !453, metadata !1042), !dbg !1107
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !454, metadata !1042), !dbg !1109
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !455, metadata !1042), !dbg !1110
  %2 = bitcast i64* %r to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %r, metadata !456, metadata !1042), !dbg !1112
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1113, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1115
  %tobool = icmp ne i32 %call, 0, !dbg !1115
  br i1 %tobool, label %if.end, label %if.then, !dbg !1116

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1117
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1119

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1120, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1123, !tbaa !1046
  %call1 = call i32 @PySequence_Contains(%struct._object* %4, %struct._object* %5), !dbg !1124
  %conv = sext i32 %call1 to i64, !dbg !1124
  store i64 %conv, i64* %r, align 8, !dbg !1125, !tbaa !1093
  %cmp = icmp eq i64 -1, %conv, !dbg !1126
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !1127

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1130

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %r, align 8, !dbg !1131, !tbaa !1093
  %call5 = call %struct._object* @PyBool_FromLong(i64 %6), !dbg !1133
  store %struct._object* %call5, %struct._object** %retval, !dbg !1134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1134

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %7 = bitcast i64* %r to i8*, !dbg !1135
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1135
  %8 = bitcast %struct._object** %a2 to i8*, !dbg !1135
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1135
  %9 = bitcast %struct._object** %a1 to i8*, !dbg !1135
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1135
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1135
  ret %struct._object* %10, !dbg !1135
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !459, metadata !1042), !dbg !1139
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !460, metadata !1042), !dbg !1140
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1141
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !461, metadata !1042), !dbg !1142
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1141
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1141
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !462, metadata !1042), !dbg !1143
  %2 = bitcast i64* %r to i8*, !dbg !1144
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1144
  call void @llvm.dbg.declare(metadata i64* %r, metadata !463, metadata !1042), !dbg !1145
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1146, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1148
  %tobool = icmp ne i32 %call, 0, !dbg !1148
  br i1 %tobool, label %if.end, label %if.then, !dbg !1149

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1150
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1152

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1153, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1156, !tbaa !1046
  %call1 = call i64 @PySequence_Index(%struct._object* %4, %struct._object* %5), !dbg !1157
  store i64 %call1, i64* %r, align 8, !dbg !1158, !tbaa !1093
  %cmp = icmp eq i64 -1, %call1, !dbg !1159
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1160

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1163

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* %r, align 8, !dbg !1164, !tbaa !1093
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %6), !dbg !1166
  store %struct._object* %call4, %struct._object** %retval, !dbg !1167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1167

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %7 = bitcast i64* %r to i8*, !dbg !1168
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1168
  %8 = bitcast %struct._object** %a2 to i8*, !dbg !1168
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1168
  %9 = bitcast %struct._object** %a1 to i8*, !dbg !1168
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1168
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1168
  ret %struct._object* %10, !dbg !1168
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !466, metadata !1042), !dbg !1172
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !467, metadata !1042), !dbg !1173
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1174
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1174
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !468, metadata !1042), !dbg !1175
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1174
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1174
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !469, metadata !1042), !dbg !1176
  %2 = bitcast i64* %r to i8*, !dbg !1177
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1177
  call void @llvm.dbg.declare(metadata i64* %r, metadata !470, metadata !1042), !dbg !1178
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1179, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1181
  %tobool = icmp ne i32 %call, 0, !dbg !1181
  br i1 %tobool, label %if.end, label %if.then, !dbg !1182

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1183
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1185

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1186, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1189, !tbaa !1046
  %call1 = call i64 @PySequence_Count(%struct._object* %4, %struct._object* %5), !dbg !1190
  store i64 %call1, i64* %r, align 8, !dbg !1191, !tbaa !1093
  %cmp = icmp eq i64 -1, %call1, !dbg !1192
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1193

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1194
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1196

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* %r, align 8, !dbg !1197, !tbaa !1093
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %6), !dbg !1199
  store %struct._object* %call4, %struct._object** %retval, !dbg !1200
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %7 = bitcast i64* %r to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1201
  %8 = bitcast %struct._object** %a2 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1201
  %9 = bitcast %struct._object** %a1 to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1201
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1201
  ret %struct._object* %10, !dbg !1201
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !473, metadata !1042), !dbg !1205
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !474, metadata !1042), !dbg !1206
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !475, metadata !1042), !dbg !1208
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !476, metadata !1042), !dbg !1209
  %2 = bitcast %struct._object** %result to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !477, metadata !1042), !dbg !1210
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1210, !tbaa !1046
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1211, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1213
  %tobool = icmp ne i32 %call, 0, !dbg !1213
  br i1 %tobool, label %if.then, label %if.end, !dbg !1214

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1215, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1217, !tbaa !1046
  %cmp = icmp eq %struct._object* %4, %5, !dbg !1218
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1219
  store %struct._object* %cond, %struct._object** %result, align 8, !dbg !1220, !tbaa !1046
  %6 = load %struct._object*, %struct._object** %result, align 8, !dbg !1221, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1222
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1223, !tbaa !1061
  %inc = add i64 %7, 1, !dbg !1223
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1223, !tbaa !1061
  br label %if.end, !dbg !1224

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !1225, !tbaa !1046
  %9 = bitcast %struct._object** %result to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1226
  %10 = bitcast %struct._object** %a2 to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1226
  %11 = bitcast %struct._object** %a1 to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1226
  ret %struct._object* %8, !dbg !1227
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_not(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !480, metadata !1042), !dbg !1228
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !481, metadata !1042), !dbg !1229
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1230
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1230
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !482, metadata !1042), !dbg !1231
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1230
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1230
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !483, metadata !1042), !dbg !1232
  %2 = bitcast %struct._object** %result to i8*, !dbg !1230
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1230
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !484, metadata !1042), !dbg !1233
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1233, !tbaa !1046
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1234, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1236
  %tobool = icmp ne i32 %call, 0, !dbg !1236
  br i1 %tobool, label %if.then, label %if.end, !dbg !1237

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1238, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1240, !tbaa !1046
  %cmp = icmp ne %struct._object* %4, %5, !dbg !1241
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1242
  store %struct._object* %cond, %struct._object** %result, align 8, !dbg !1243, !tbaa !1046
  %6 = load %struct._object*, %struct._object** %result, align 8, !dbg !1244, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !1245
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1246, !tbaa !1061
  %inc = add i64 %7, 1, !dbg !1246
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1246, !tbaa !1061
  br label %if.end, !dbg !1247

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !1248, !tbaa !1046
  %9 = bitcast %struct._object** %result to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1249
  %10 = bitcast %struct._object** %a2 to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1249
  %11 = bitcast %struct._object** %a1 to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1249
  ret %struct._object* %8, !dbg !1250
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_index(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !487, metadata !1042), !dbg !1251
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !488, metadata !1042), !dbg !1252
  %0 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1253, !tbaa !1046
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0), !dbg !1254
  ret %struct._object* %call, !dbg !1255
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_add(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !491, metadata !1042), !dbg !1256
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !492, metadata !1042), !dbg !1257
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1258
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !493, metadata !1042), !dbg !1259
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1258
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !494, metadata !1042), !dbg !1260
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1261, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1263
  %tobool = icmp ne i32 %call, 0, !dbg !1263
  br i1 %tobool, label %if.end, label %if.then, !dbg !1264

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1265
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1267

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1268, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1270, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %3, %struct._object* %4), !dbg !1271
  store %struct._object* %call1, %struct._object** %retval, !dbg !1272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1272

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1273
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1273
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1273
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1273
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1273
  ret %struct._object* %7, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_sub(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !497, metadata !1042), !dbg !1276
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !498, metadata !1042), !dbg !1277
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !499, metadata !1042), !dbg !1279
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !500, metadata !1042), !dbg !1280
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1281, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1283
  %tobool = icmp ne i32 %call, 0, !dbg !1283
  br i1 %tobool, label %if.end, label %if.then, !dbg !1284

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1287

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1288, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1290, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Subtract(%struct._object* %3, %struct._object* %4), !dbg !1291
  store %struct._object* %call1, %struct._object** %retval, !dbg !1292
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1292

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1293
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1293
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1293
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1293
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1293
  ret %struct._object* %7, !dbg !1293
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mul(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !503, metadata !1042), !dbg !1296
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !504, metadata !1042), !dbg !1297
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1298
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !505, metadata !1042), !dbg !1299
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1298
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !506, metadata !1042), !dbg !1300
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1301, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1303
  %tobool = icmp ne i32 %call, 0, !dbg !1303
  br i1 %tobool, label %if.end, label %if.then, !dbg !1304

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1307

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1308, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1310, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Multiply(%struct._object* %3, %struct._object* %4), !dbg !1311
  store %struct._object* %call1, %struct._object** %retval, !dbg !1312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1312

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1313
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1313
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1313
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1313
  ret %struct._object* %7, !dbg !1313
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_floordiv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !509, metadata !1042), !dbg !1316
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !510, metadata !1042), !dbg !1317
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1318
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !511, metadata !1042), !dbg !1319
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1318
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !512, metadata !1042), !dbg !1320
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1321, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1323
  %tobool = icmp ne i32 %call, 0, !dbg !1323
  br i1 %tobool, label %if.end, label %if.then, !dbg !1324

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1327

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1328, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1330, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %3, %struct._object* %4), !dbg !1331
  store %struct._object* %call1, %struct._object** %retval, !dbg !1332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1332

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1333
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1333
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1333
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1333
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1333
  ret %struct._object* %7, !dbg !1333
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_truediv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !515, metadata !1042), !dbg !1336
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !516, metadata !1042), !dbg !1337
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !517, metadata !1042), !dbg !1339
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !518, metadata !1042), !dbg !1340
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1341, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1343
  %tobool = icmp ne i32 %call, 0, !dbg !1343
  br i1 %tobool, label %if.end, label %if.then, !dbg !1344

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1345
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1347

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1348, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1350, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %3, %struct._object* %4), !dbg !1351
  store %struct._object* %call1, %struct._object** %retval, !dbg !1352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1352

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1353
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1353
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1353
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1353
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1353
  ret %struct._object* %7, !dbg !1353
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mod(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !521, metadata !1042), !dbg !1356
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !522, metadata !1042), !dbg !1357
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1358
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !523, metadata !1042), !dbg !1359
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1358
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !524, metadata !1042), !dbg !1360
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1361, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1363
  %tobool = icmp ne i32 %call, 0, !dbg !1363
  br i1 %tobool, label %if.end, label %if.then, !dbg !1364

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1365
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1367

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1368, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1370, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Remainder(%struct._object* %3, %struct._object* %4), !dbg !1371
  store %struct._object* %call1, %struct._object** %retval, !dbg !1372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1372

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1373
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1373
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1373
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1373
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1373
  ret %struct._object* %7, !dbg !1373
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_neg(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !527, metadata !1042), !dbg !1376
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !528, metadata !1042), !dbg !1377
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1378, !tbaa !1046
  %call = call %struct._object* @PyNumber_Negative(%struct._object* %0), !dbg !1379
  ret %struct._object* %call, !dbg !1380
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pos(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !531, metadata !1042), !dbg !1381
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !532, metadata !1042), !dbg !1382
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1383, !tbaa !1046
  %call = call %struct._object* @PyNumber_Positive(%struct._object* %0), !dbg !1384
  ret %struct._object* %call, !dbg !1385
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_abs(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !535, metadata !1042), !dbg !1386
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !536, metadata !1042), !dbg !1387
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1388, !tbaa !1046
  %call = call %struct._object* @PyNumber_Absolute(%struct._object* %0), !dbg !1389
  ret %struct._object* %call, !dbg !1390
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_inv(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !539, metadata !1042), !dbg !1391
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !540, metadata !1042), !dbg !1392
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1393, !tbaa !1046
  %call = call %struct._object* @PyNumber_Invert(%struct._object* %0), !dbg !1394
  ret %struct._object* %call, !dbg !1395
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_invert(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !543, metadata !1042), !dbg !1396
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !544, metadata !1042), !dbg !1397
  %0 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1398, !tbaa !1046
  %call = call %struct._object* @PyNumber_Invert(%struct._object* %0), !dbg !1399
  ret %struct._object* %call, !dbg !1400
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !547, metadata !1042), !dbg !1401
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !548, metadata !1042), !dbg !1402
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1403
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !549, metadata !1042), !dbg !1404
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1403
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !550, metadata !1042), !dbg !1405
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1406, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1408
  %tobool = icmp ne i32 %call, 0, !dbg !1408
  br i1 %tobool, label %if.end, label %if.then, !dbg !1409

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1412

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1413, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1415, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Lshift(%struct._object* %3, %struct._object* %4), !dbg !1416
  store %struct._object* %call1, %struct._object** %retval, !dbg !1417
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1417

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1418
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1418
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1418
  ret %struct._object* %7, !dbg !1418
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_rshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !553, metadata !1042), !dbg !1421
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !554, metadata !1042), !dbg !1422
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1423
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !555, metadata !1042), !dbg !1424
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1423
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !556, metadata !1042), !dbg !1425
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1426, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1428
  %tobool = icmp ne i32 %call, 0, !dbg !1428
  br i1 %tobool, label %if.end, label %if.then, !dbg !1429

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1430
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1432

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1433, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1435, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Rshift(%struct._object* %3, %struct._object* %4), !dbg !1436
  store %struct._object* %call1, %struct._object** %retval, !dbg !1437
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1437

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1438
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1438
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1438
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1438
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1438
  ret %struct._object* %7, !dbg !1438
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_not_(%struct._object* %s, %struct._object* %a1) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a1.addr = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !559, metadata !1042), !dbg !1441
  store %struct._object* %a1, %struct._object** %a1.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a1.addr, metadata !560, metadata !1042), !dbg !1442
  %0 = bitcast i64* %r to i8*, !dbg !1443
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1443
  call void @llvm.dbg.declare(metadata i64* %r, metadata !561, metadata !1042), !dbg !1444
  %1 = load %struct._object*, %struct._object** %a1.addr, align 8, !dbg !1445, !tbaa !1046
  %call = call i32 @PyObject_Not(%struct._object* %1), !dbg !1447
  %conv = sext i32 %call to i64, !dbg !1447
  store i64 %conv, i64* %r, align 8, !dbg !1448, !tbaa !1093
  %cmp = icmp eq i64 -1, %conv, !dbg !1449
  br i1 %cmp, label %if.then, label %if.end, !dbg !1450

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1451
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1453

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %r, align 8, !dbg !1454, !tbaa !1093
  %call2 = call %struct._object* @PyBool_FromLong(i64 %2), !dbg !1456
  store %struct._object* %call2, %struct._object** %retval, !dbg !1457
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1457

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i64* %r to i8*, !dbg !1458
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1458
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1458
  ret %struct._object* %4, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_and_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !564, metadata !1042), !dbg !1461
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !565, metadata !1042), !dbg !1462
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1463
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1463
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !566, metadata !1042), !dbg !1464
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1463
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1463
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !567, metadata !1042), !dbg !1465
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1466, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1468
  %tobool = icmp ne i32 %call, 0, !dbg !1468
  br i1 %tobool, label %if.end, label %if.then, !dbg !1469

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1470
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1472

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1473, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1475, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_And(%struct._object* %3, %struct._object* %4), !dbg !1476
  store %struct._object* %call1, %struct._object** %retval, !dbg !1477
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1477

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1478
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1478
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1478
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1478
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1478
  ret %struct._object* %7, !dbg !1478
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_xor(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !570, metadata !1042), !dbg !1481
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !571, metadata !1042), !dbg !1482
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1483
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1483
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !572, metadata !1042), !dbg !1484
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1483
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1483
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !573, metadata !1042), !dbg !1485
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1486, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1488
  %tobool = icmp ne i32 %call, 0, !dbg !1488
  br i1 %tobool, label %if.end, label %if.then, !dbg !1489

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1492

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1493, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1495, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Xor(%struct._object* %3, %struct._object* %4), !dbg !1496
  store %struct._object* %call1, %struct._object** %retval, !dbg !1497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1497

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1498
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1498
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1498
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1498
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1498
  ret %struct._object* %7, !dbg !1498
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_or_(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !576, metadata !1042), !dbg !1501
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !577, metadata !1042), !dbg !1502
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !578, metadata !1042), !dbg !1504
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !579, metadata !1042), !dbg !1505
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1506, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1508
  %tobool = icmp ne i32 %call, 0, !dbg !1508
  br i1 %tobool, label %if.end, label %if.then, !dbg !1509

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1510
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1512

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1513, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1515, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Or(%struct._object* %3, %struct._object* %4), !dbg !1516
  store %struct._object* %call1, %struct._object** %retval, !dbg !1517
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1517

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1518
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1518
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1518
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1518
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1518
  ret %struct._object* %7, !dbg !1518
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iadd(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !582, metadata !1042), !dbg !1521
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !583, metadata !1042), !dbg !1522
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1523
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !584, metadata !1042), !dbg !1524
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1523
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !585, metadata !1042), !dbg !1525
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1526, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1528
  %tobool = icmp ne i32 %call, 0, !dbg !1528
  br i1 %tobool, label %if.end, label %if.then, !dbg !1529

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1532

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1533, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1535, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %3, %struct._object* %4), !dbg !1536
  store %struct._object* %call1, %struct._object** %retval, !dbg !1537
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1537

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1538
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1538
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1538
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1538
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1538
  ret %struct._object* %7, !dbg !1538
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_isub(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !588, metadata !1042), !dbg !1541
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !589, metadata !1042), !dbg !1542
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1543
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1543
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !590, metadata !1042), !dbg !1544
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1543
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1543
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !591, metadata !1042), !dbg !1545
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1546, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1548
  %tobool = icmp ne i32 %call, 0, !dbg !1548
  br i1 %tobool, label %if.end, label %if.then, !dbg !1549

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1550
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1552

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1553, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1555, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %3, %struct._object* %4), !dbg !1556
  store %struct._object* %call1, %struct._object** %retval, !dbg !1557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1557

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1558
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1558
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1558
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1558
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1558
  ret %struct._object* %7, !dbg !1558
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imul(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !594, metadata !1042), !dbg !1561
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !595, metadata !1042), !dbg !1562
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1563
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !596, metadata !1042), !dbg !1564
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1563
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !597, metadata !1042), !dbg !1565
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1566, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1568
  %tobool = icmp ne i32 %call, 0, !dbg !1568
  br i1 %tobool, label %if.end, label %if.then, !dbg !1569

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1572

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1573, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1575, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %3, %struct._object* %4), !dbg !1576
  store %struct._object* %call1, %struct._object** %retval, !dbg !1577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1577

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1578
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1578
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1578
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1578
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1578
  ret %struct._object* %7, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ifloordiv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !600, metadata !1042), !dbg !1581
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !601, metadata !1042), !dbg !1582
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !602, metadata !1042), !dbg !1584
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !603, metadata !1042), !dbg !1585
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1586, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1588
  %tobool = icmp ne i32 %call, 0, !dbg !1588
  br i1 %tobool, label %if.end, label %if.then, !dbg !1589

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1592

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1593, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1595, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %3, %struct._object* %4), !dbg !1596
  store %struct._object* %call1, %struct._object** %retval, !dbg !1597
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1597

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1598
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1598
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1598
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1598
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1598
  ret %struct._object* %7, !dbg !1598
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_itruediv(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !606, metadata !1042), !dbg !1601
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !607, metadata !1042), !dbg !1602
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1603
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !608, metadata !1042), !dbg !1604
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1603
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !609, metadata !1042), !dbg !1605
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1606, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1608
  %tobool = icmp ne i32 %call, 0, !dbg !1608
  br i1 %tobool, label %if.end, label %if.then, !dbg !1609

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1610
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1612

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1613, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1615, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %3, %struct._object* %4), !dbg !1616
  store %struct._object* %call1, %struct._object** %retval, !dbg !1617
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1617

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1618
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1618
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1618
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1618
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1618
  ret %struct._object* %7, !dbg !1618
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imod(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !612, metadata !1042), !dbg !1621
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !613, metadata !1042), !dbg !1622
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1623
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1623
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !614, metadata !1042), !dbg !1624
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1623
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1623
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !615, metadata !1042), !dbg !1625
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1626, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1628
  %tobool = icmp ne i32 %call, 0, !dbg !1628
  br i1 %tobool, label %if.end, label %if.then, !dbg !1629

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1630
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1632

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1633, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1635, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %3, %struct._object* %4), !dbg !1636
  store %struct._object* %call1, %struct._object** %retval, !dbg !1637
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1637

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1638
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1638
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1638
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1638
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1638
  ret %struct._object* %7, !dbg !1638
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ilshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !618, metadata !1042), !dbg !1641
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !619, metadata !1042), !dbg !1642
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1643
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1643
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !620, metadata !1042), !dbg !1644
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1643
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1643
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !621, metadata !1042), !dbg !1645
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1646, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1648
  %tobool = icmp ne i32 %call, 0, !dbg !1648
  br i1 %tobool, label %if.end, label %if.then, !dbg !1649

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1650
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1652

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1653, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1655, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %3, %struct._object* %4), !dbg !1656
  store %struct._object* %call1, %struct._object** %retval, !dbg !1657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1657

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1658
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1658
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1658
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1658
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1658
  ret %struct._object* %7, !dbg !1658
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_irshift(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !624, metadata !1042), !dbg !1661
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !625, metadata !1042), !dbg !1662
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1663
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1663
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !626, metadata !1042), !dbg !1664
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1663
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1663
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !627, metadata !1042), !dbg !1665
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1666, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1668
  %tobool = icmp ne i32 %call, 0, !dbg !1668
  br i1 %tobool, label %if.end, label %if.then, !dbg !1669

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1672

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1673, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1675, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %3, %struct._object* %4), !dbg !1676
  store %struct._object* %call1, %struct._object** %retval, !dbg !1677
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1677

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1678
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1678
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1678
  ret %struct._object* %7, !dbg !1678
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iand(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !630, metadata !1042), !dbg !1681
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !631, metadata !1042), !dbg !1682
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1683
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !632, metadata !1042), !dbg !1684
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1683
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !633, metadata !1042), !dbg !1685
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1686, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1688
  %tobool = icmp ne i32 %call, 0, !dbg !1688
  br i1 %tobool, label %if.end, label %if.then, !dbg !1689

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1692

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1693, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1695, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %3, %struct._object* %4), !dbg !1696
  store %struct._object* %call1, %struct._object** %retval, !dbg !1697
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1697

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1698
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1698
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1698
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1698
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1698
  ret %struct._object* %7, !dbg !1698
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ixor(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !636, metadata !1042), !dbg !1701
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !637, metadata !1042), !dbg !1702
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1703
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1703
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !638, metadata !1042), !dbg !1704
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1703
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1703
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !639, metadata !1042), !dbg !1705
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1706, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1708
  %tobool = icmp ne i32 %call, 0, !dbg !1708
  br i1 %tobool, label %if.end, label %if.then, !dbg !1709

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1712

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1713, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1715, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceXor(%struct._object* %3, %struct._object* %4), !dbg !1716
  store %struct._object* %call1, %struct._object** %retval, !dbg !1717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1718
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1718
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1718
  ret %struct._object* %7, !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ior(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !642, metadata !1042), !dbg !1721
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !643, metadata !1042), !dbg !1722
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1723
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1723
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !644, metadata !1042), !dbg !1724
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1723
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1723
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !645, metadata !1042), !dbg !1725
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1726, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1728
  %tobool = icmp ne i32 %call, 0, !dbg !1728
  br i1 %tobool, label %if.end, label %if.then, !dbg !1729

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1730
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1732

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1733, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1735, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %3, %struct._object* %4), !dbg !1736
  store %struct._object* %call1, %struct._object** %retval, !dbg !1737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1737

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1738
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1738
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1738
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1738
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1738
  ret %struct._object* %7, !dbg !1738
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_concat(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !648, metadata !1042), !dbg !1741
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !649, metadata !1042), !dbg !1742
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1743
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1743
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !650, metadata !1042), !dbg !1744
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1743
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1743
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !651, metadata !1042), !dbg !1745
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1746, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1748
  %tobool = icmp ne i32 %call, 0, !dbg !1748
  br i1 %tobool, label %if.end, label %if.then, !dbg !1749

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1750
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1752

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1753, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1755, !tbaa !1046
  %call1 = call %struct._object* @PySequence_Concat(%struct._object* %3, %struct._object* %4), !dbg !1756
  store %struct._object* %call1, %struct._object** %retval, !dbg !1757
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1757

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1758
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1758
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1758
  ret %struct._object* %7, !dbg !1758
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iconcat(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !654, metadata !1042), !dbg !1761
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !655, metadata !1042), !dbg !1762
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1763
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1763
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !656, metadata !1042), !dbg !1764
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1763
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1763
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !657, metadata !1042), !dbg !1765
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1766, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1768
  %tobool = icmp ne i32 %call, 0, !dbg !1768
  br i1 %tobool, label %if.end, label %if.then, !dbg !1769

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1770
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1772

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1773, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1775, !tbaa !1046
  %call1 = call %struct._object* @PySequence_InPlaceConcat(%struct._object* %3, %struct._object* %4), !dbg !1776
  store %struct._object* %call1, %struct._object** %retval, !dbg !1777
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1777

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1778
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1778
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1778
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1778
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1778
  ret %struct._object* %7, !dbg !1778
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_getitem(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !660, metadata !1042), !dbg !1781
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !661, metadata !1042), !dbg !1782
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1783
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !662, metadata !1042), !dbg !1784
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1783
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !663, metadata !1042), !dbg !1785
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1786, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1788
  %tobool = icmp ne i32 %call, 0, !dbg !1788
  br i1 %tobool, label %if.end, label %if.then, !dbg !1789

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1792

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1793, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1795, !tbaa !1046
  %call1 = call %struct._object* @PyObject_GetItem(%struct._object* %3, %struct._object* %4), !dbg !1796
  store %struct._object* %call1, %struct._object** %retval, !dbg !1797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1797

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1798
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1798
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1798
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1798
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1798
  ret %struct._object* %7, !dbg !1798
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !666, metadata !1042), !dbg !1801
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !667, metadata !1042), !dbg !1802
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1803
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1803
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !668, metadata !1042), !dbg !1804
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1803
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1803
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !669, metadata !1042), !dbg !1805
  %2 = bitcast %struct._object** %a3 to i8*, !dbg !1803
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1803
  call void @llvm.dbg.declare(metadata %struct._object** %a3, metadata !670, metadata !1042), !dbg !1806
  %3 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1807, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i64 3, i64 3, %struct._object** %a1, %struct._object** %a2, %struct._object** %a3), !dbg !1809
  %tobool = icmp ne i32 %call, 0, !dbg !1809
  br i1 %tobool, label %if.end, label %if.then, !dbg !1810

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1813

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1814, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1817, !tbaa !1046
  %6 = load %struct._object*, %struct._object** %a3, align 8, !dbg !1818, !tbaa !1046
  %call1 = call i32 @PyObject_SetItem(%struct._object* %4, %struct._object* %5, %struct._object* %6), !dbg !1819
  %cmp = icmp eq i32 -1, %call1, !dbg !1820
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1821

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1822
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1824

if.end.3:                                         ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1825, !tbaa !1061
  %inc = add i64 %7, 1, !dbg !1825
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1825, !tbaa !1061
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1827

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %8 = bitcast %struct._object** %a3 to i8*, !dbg !1828
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1828
  %9 = bitcast %struct._object** %a2 to i8*, !dbg !1828
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1828
  %10 = bitcast %struct._object** %a1 to i8*, !dbg !1828
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1828
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1828
  ret %struct._object* %11, !dbg !1828
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_delitem(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !673, metadata !1042), !dbg !1832
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !674, metadata !1042), !dbg !1833
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1834
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1834
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !675, metadata !1042), !dbg !1835
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1834
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1834
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !676, metadata !1042), !dbg !1836
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1837, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1839
  %tobool = icmp ne i32 %call, 0, !dbg !1839
  br i1 %tobool, label %if.end, label %if.then, !dbg !1840

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1843

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1844, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1847, !tbaa !1046
  %call1 = call i32 @PyObject_DelItem(%struct._object* %3, %struct._object* %4), !dbg !1848
  %cmp = icmp eq i32 -1, %call1, !dbg !1849
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1850

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1853

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1854, !tbaa !1061
  %inc = add i64 %5, 1, !dbg !1854
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1854, !tbaa !1061
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1856
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1856

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %6 = bitcast %struct._object** %a2 to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1857
  %7 = bitcast %struct._object** %a1 to i8*, !dbg !1857
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1857
  %8 = load %struct._object*, %struct._object** %retval, !dbg !1857
  ret %struct._object* %8, !dbg !1857
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pow(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !679, metadata !1042), !dbg !1861
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !680, metadata !1042), !dbg !1862
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !681, metadata !1042), !dbg !1864
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !682, metadata !1042), !dbg !1865
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1866, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1868
  %tobool = icmp ne i32 %call, 0, !dbg !1868
  br i1 %tobool, label %if.then, label %if.end, !dbg !1869

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1870, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1871, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_Power(%struct._object* %3, %struct._object* %4, %struct._object* @_Py_NoneStruct), !dbg !1872
  store %struct._object* %call1, %struct._object** %retval, !dbg !1873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1873

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1874
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1874

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1875
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1875
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1875
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1875
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1875
  ret %struct._object* %7, !dbg !1875
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ipow(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !685, metadata !1042), !dbg !1876
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !686, metadata !1042), !dbg !1877
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1878
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1878
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !687, metadata !1042), !dbg !1879
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1878
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1878
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !688, metadata !1042), !dbg !1880
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1881, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1883
  %tobool = icmp ne i32 %call, 0, !dbg !1883
  br i1 %tobool, label %if.then, label %if.end, !dbg !1884

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1885, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1886, !tbaa !1046
  %call1 = call %struct._object* @PyNumber_InPlacePower(%struct._object* %3, %struct._object* %4, %struct._object* @_Py_NoneStruct), !dbg !1887
  store %struct._object* %call1, %struct._object** %retval, !dbg !1888
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1888

if.end:                                           ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1889
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1889

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1890
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1890
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1890
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1890
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1890
  ret %struct._object* %7, !dbg !1890
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lt(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !691, metadata !1042), !dbg !1891
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !692, metadata !1042), !dbg !1892
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !693, metadata !1042), !dbg !1894
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !694, metadata !1042), !dbg !1895
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1896, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1898
  %tobool = icmp ne i32 %call, 0, !dbg !1898
  br i1 %tobool, label %if.end, label %if.then, !dbg !1899

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1902

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1903, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1905, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 0), !dbg !1906
  store %struct._object* %call1, %struct._object** %retval, !dbg !1907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1907

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1908
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1908
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1908
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1908
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1908
  ret %struct._object* %7, !dbg !1908
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_le(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !697, metadata !1042), !dbg !1911
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !698, metadata !1042), !dbg !1912
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !699, metadata !1042), !dbg !1914
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !700, metadata !1042), !dbg !1915
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1916, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1918
  %tobool = icmp ne i32 %call, 0, !dbg !1918
  br i1 %tobool, label %if.end, label %if.then, !dbg !1919

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1922

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1923, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1925, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 1), !dbg !1926
  store %struct._object* %call1, %struct._object** %retval, !dbg !1927
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1927

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1928
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1928
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1928
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1928
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1928
  ret %struct._object* %7, !dbg !1928
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_eq(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !703, metadata !1042), !dbg !1931
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !704, metadata !1042), !dbg !1932
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1933
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !705, metadata !1042), !dbg !1934
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1933
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !706, metadata !1042), !dbg !1935
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1936, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1938
  %tobool = icmp ne i32 %call, 0, !dbg !1938
  br i1 %tobool, label %if.end, label %if.then, !dbg !1939

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1942

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1943, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1945, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 2), !dbg !1946
  store %struct._object* %call1, %struct._object** %retval, !dbg !1947
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1947

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1948
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1948
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1948
  ret %struct._object* %7, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ne(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !709, metadata !1042), !dbg !1951
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !710, metadata !1042), !dbg !1952
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !711, metadata !1042), !dbg !1954
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !712, metadata !1042), !dbg !1955
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1956, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1958
  %tobool = icmp ne i32 %call, 0, !dbg !1958
  br i1 %tobool, label %if.end, label %if.then, !dbg !1959

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1960
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1962

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1963, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1965, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 3), !dbg !1966
  store %struct._object* %call1, %struct._object** %retval, !dbg !1967
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1967

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1968
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1968
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1968
  ret %struct._object* %7, !dbg !1968
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_gt(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !715, metadata !1042), !dbg !1971
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !716, metadata !1042), !dbg !1972
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1973
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1973
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !717, metadata !1042), !dbg !1974
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1973
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1973
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !718, metadata !1042), !dbg !1975
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1976, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1978
  %tobool = icmp ne i32 %call, 0, !dbg !1978
  br i1 %tobool, label %if.end, label %if.then, !dbg !1979

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1982

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1983, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1985, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 4), !dbg !1986
  store %struct._object* %call1, %struct._object** %retval, !dbg !1987
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1987

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !1988
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1988
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !1988
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !1988
  %7 = load %struct._object*, %struct._object** %retval, !dbg !1988
  ret %struct._object* %7, !dbg !1988
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ge(%struct._object* %s, %struct._object* %a) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %s, %struct._object** %s.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %s.addr, metadata !721, metadata !1042), !dbg !1991
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !722, metadata !1042), !dbg !1992
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1993
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1993
  call void @llvm.dbg.declare(metadata %struct._object** %a1, metadata !723, metadata !1042), !dbg !1994
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1993
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1993
  call void @llvm.dbg.declare(metadata %struct._object** %a2, metadata !724, metadata !1042), !dbg !1995
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !1996, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i64 2, i64 2, %struct._object** %a1, %struct._object** %a2), !dbg !1998
  %tobool = icmp ne i32 %call, 0, !dbg !1998
  br i1 %tobool, label %if.end, label %if.then, !dbg !1999

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2002

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !2003, !tbaa !1046
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !2005, !tbaa !1046
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %3, %struct._object* %4, i32 5), !dbg !2006
  store %struct._object* %call1, %struct._object** %retval, !dbg !2007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2007

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %a2 to i8*, !dbg !2008
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !2008
  %6 = bitcast %struct._object** %a1 to i8*, !dbg !2008
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !2008
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2008
  ret %struct._object* %7, !dbg !2008
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
  %cleanup.dest.slot = alloca i32
  %view_a = alloca %struct.bufferinfo, align 8
  %view_b = alloca %struct.bufferinfo, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !727, metadata !1042), !dbg !2011
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !728, metadata !1042), !dbg !2012
  %0 = bitcast %struct._object** %a to i8*, !dbg !2013
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2013
  call void @llvm.dbg.declare(metadata %struct._object** %a, metadata !729, metadata !1042), !dbg !2014
  %1 = bitcast %struct._object** %b to i8*, !dbg !2013
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2013
  call void @llvm.dbg.declare(metadata %struct._object** %b, metadata !730, metadata !1042), !dbg !2015
  %2 = bitcast i32* %rc to i8*, !dbg !2016
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2016
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !731, metadata !1042), !dbg !2017
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2018, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0), %struct._object** %a, %struct._object** %b), !dbg !2020
  %tobool = icmp ne i32 %call, 0, !dbg !2020
  br i1 %tobool, label %if.end, label %if.then, !dbg !2021

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123, !dbg !2022

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %a, align 8, !dbg !2024, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2025
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2025, !tbaa !2026
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19, !dbg !2027
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2027, !tbaa !2028
  %and = and i64 %6, 268435456, !dbg !2032
  %cmp = icmp ne i64 %and, 0, !dbg !2033
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2034

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %b, align 8, !dbg !2035, !tbaa !1046
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2037
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2037, !tbaa !2026
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2038
  %9 = load i64, i64* %tp_flags2, align 8, !dbg !2038, !tbaa !2028
  %and3 = and i64 %9, 268435456, !dbg !2039
  %cmp4 = icmp ne i64 %and3, 0, !dbg !2040
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2041

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %a, align 8, !dbg !2042, !tbaa !1046
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*, !dbg !2045
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3, !dbg !2046
  %12 = bitcast %struct.anon* %state to i32*, !dbg !2047
  %bf.load = load i32, i32* %12, align 4, !dbg !2047
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2047
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2047
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !2048
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2048

cond.true:                                        ; preds = %if.then.5
  br label %cond.end, !dbg !2049

cond.false:                                       ; preds = %if.then.5
  %13 = load %struct._object*, %struct._object** %a, align 8, !dbg !2051, !tbaa !1046
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %13), !dbg !2053
  br label %cond.end, !dbg !2048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ], !dbg !2048
  %cmp8 = icmp eq i32 %cond, -1, !dbg !2054
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false, !dbg !2057

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %b, align 8, !dbg !2058, !tbaa !1046
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*, !dbg !2060
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3, !dbg !2061
  %16 = bitcast %struct.anon* %state9 to i32*, !dbg !2062
  %bf.load10 = load i32, i32* %16, align 4, !dbg !2062
  %bf.lshr11 = lshr i32 %bf.load10, 7, !dbg !2062
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !2062
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !2063
  br i1 %tobool13, label %cond.true.14, label %cond.false.15, !dbg !2063

cond.true.14:                                     ; preds = %lor.lhs.false
  br label %cond.end.17, !dbg !2064

cond.false.15:                                    ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %b, align 8, !dbg !2066, !tbaa !1046
  %call16 = call i32 @_PyUnicode_Ready(%struct._object* %17), !dbg !2068
  br label %cond.end.17, !dbg !2063

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond18 = phi i32 [ 0, %cond.true.14 ], [ %call16, %cond.false.15 ], !dbg !2063
  %cmp19 = icmp eq i32 %cond18, -1, !dbg !2069
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !2072

if.then.20:                                       ; preds = %cond.end.17, %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2073
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123, !dbg !2073

if.end.21:                                        ; preds = %cond.end.17
  %18 = load %struct._object*, %struct._object** %a, align 8, !dbg !2075, !tbaa !1046
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*, !dbg !2077
  %state22 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3, !dbg !2078
  %20 = bitcast %struct.anon* %state22 to i32*, !dbg !2079
  %bf.load23 = load i32, i32* %20, align 4, !dbg !2079
  %bf.lshr24 = lshr i32 %bf.load23, 6, !dbg !2079
  %bf.clear25 = and i32 %bf.lshr24, 1, !dbg !2079
  %tobool26 = icmp ne i32 %bf.clear25, 0, !dbg !2080
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.33, !dbg !2081

lor.lhs.false.27:                                 ; preds = %if.end.21
  %21 = load %struct._object*, %struct._object** %b, align 8, !dbg !2082, !tbaa !1046
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*, !dbg !2084
  %state28 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 3, !dbg !2085
  %23 = bitcast %struct.anon* %state28 to i32*, !dbg !2086
  %bf.load29 = load i32, i32* %23, align 4, !dbg !2086
  %bf.lshr30 = lshr i32 %bf.load29, 6, !dbg !2086
  %bf.clear31 = and i32 %bf.lshr30, 1, !dbg !2086
  %tobool32 = icmp ne i32 %bf.clear31, 0, !dbg !2087
  br i1 %tobool32, label %if.end.34, label %if.then.33, !dbg !2088

if.then.33:                                       ; preds = %lor.lhs.false.27, %if.end.21
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2089, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.137, i32 0, i32 0)), !dbg !2091
  store %struct._object* null, %struct._object** %retval, !dbg !2092
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123, !dbg !2092

if.end.34:                                        ; preds = %lor.lhs.false.27
  %25 = load %struct._object*, %struct._object** %a, align 8, !dbg !2093, !tbaa !1046
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !2094
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3, !dbg !2095
  %27 = bitcast %struct.anon* %state35 to i32*, !dbg !2096
  %bf.load36 = load i32, i32* %27, align 4, !dbg !2096
  %bf.lshr37 = lshr i32 %bf.load36, 5, !dbg !2096
  %bf.clear38 = and i32 %bf.lshr37, 1, !dbg !2096
  %tobool39 = icmp ne i32 %bf.clear38, 0, !dbg !2097
  br i1 %tobool39, label %cond.true.40, label %cond.false.51, !dbg !2097

cond.true.40:                                     ; preds = %if.end.34
  %28 = load %struct._object*, %struct._object** %a, align 8, !dbg !2098, !tbaa !1046
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*, !dbg !2100
  %state41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3, !dbg !2101
  %30 = bitcast %struct.anon* %state41 to i32*, !dbg !2102
  %bf.load42 = load i32, i32* %30, align 4, !dbg !2102
  %bf.lshr43 = lshr i32 %bf.load42, 6, !dbg !2102
  %bf.clear44 = and i32 %bf.lshr43, 1, !dbg !2102
  %tobool45 = icmp ne i32 %bf.clear44, 0, !dbg !2103
  br i1 %tobool45, label %cond.true.46, label %cond.false.47, !dbg !2103

cond.true.46:                                     ; preds = %cond.true.40
  %31 = load %struct._object*, %struct._object** %a, align 8, !dbg !2104, !tbaa !1046
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*, !dbg !2106
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i64 1, !dbg !2107
  %33 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !2108
  br label %cond.end.49, !dbg !2103

cond.false.47:                                    ; preds = %cond.true.40
  %34 = load %struct._object*, %struct._object** %a, align 8, !dbg !2109, !tbaa !1046
  %35 = bitcast %struct._object* %34 to %struct.PyCompactUnicodeObject*, !dbg !2111
  %add.ptr48 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %35, i64 1, !dbg !2112
  %36 = bitcast %struct.PyCompactUnicodeObject* %add.ptr48 to i8*, !dbg !2113
  br label %cond.end.49, !dbg !2103

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i8* [ %33, %cond.true.46 ], [ %36, %cond.false.47 ], !dbg !2103
  br label %cond.end.52, !dbg !2114

cond.false.51:                                    ; preds = %if.end.34
  %37 = load %struct._object*, %struct._object** %a, align 8, !dbg !2117, !tbaa !1046
  %38 = bitcast %struct._object* %37 to %struct.PyUnicodeObject*, !dbg !2119
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %38, i32 0, i32 1, !dbg !2120
  %any = bitcast %union.anon* %data to i8**, !dbg !2121
  %39 = load i8*, i8** %any, align 8, !dbg !2121, !tbaa !1046
  br label %cond.end.52, !dbg !2097

cond.end.52:                                      ; preds = %cond.false.51, %cond.end.49
  %cond53 = phi i8* [ %cond50, %cond.end.49 ], [ %39, %cond.false.51 ], !dbg !2097
  %40 = load %struct._object*, %struct._object** %b, align 8, !dbg !2122, !tbaa !1046
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*, !dbg !2123
  %state54 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 3, !dbg !2124
  %42 = bitcast %struct.anon* %state54 to i32*, !dbg !2125
  %bf.load55 = load i32, i32* %42, align 4, !dbg !2125
  %bf.lshr56 = lshr i32 %bf.load55, 5, !dbg !2125
  %bf.clear57 = and i32 %bf.lshr56, 1, !dbg !2125
  %tobool58 = icmp ne i32 %bf.clear57, 0, !dbg !2126
  br i1 %tobool58, label %cond.true.59, label %cond.false.71, !dbg !2126

cond.true.59:                                     ; preds = %cond.end.52
  %43 = load %struct._object*, %struct._object** %b, align 8, !dbg !2127, !tbaa !1046
  %44 = bitcast %struct._object* %43 to %struct.PyASCIIObject*, !dbg !2128
  %state60 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i32 0, i32 3, !dbg !2129
  %45 = bitcast %struct.anon* %state60 to i32*, !dbg !2130
  %bf.load61 = load i32, i32* %45, align 4, !dbg !2130
  %bf.lshr62 = lshr i32 %bf.load61, 6, !dbg !2130
  %bf.clear63 = and i32 %bf.lshr62, 1, !dbg !2130
  %tobool64 = icmp ne i32 %bf.clear63, 0, !dbg !2131
  br i1 %tobool64, label %cond.true.65, label %cond.false.67, !dbg !2131

cond.true.65:                                     ; preds = %cond.true.59
  %46 = load %struct._object*, %struct._object** %b, align 8, !dbg !2132, !tbaa !1046
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*, !dbg !2133
  %add.ptr66 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i64 1, !dbg !2134
  %48 = bitcast %struct.PyASCIIObject* %add.ptr66 to i8*, !dbg !2135
  br label %cond.end.69, !dbg !2131

cond.false.67:                                    ; preds = %cond.true.59
  %49 = load %struct._object*, %struct._object** %b, align 8, !dbg !2136, !tbaa !1046
  %50 = bitcast %struct._object* %49 to %struct.PyCompactUnicodeObject*, !dbg !2137
  %add.ptr68 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %50, i64 1, !dbg !2138
  %51 = bitcast %struct.PyCompactUnicodeObject* %add.ptr68 to i8*, !dbg !2139
  br label %cond.end.69, !dbg !2131

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i8* [ %48, %cond.true.65 ], [ %51, %cond.false.67 ], !dbg !2131
  br label %cond.end.74, !dbg !2140

cond.false.71:                                    ; preds = %cond.end.52
  %52 = load %struct._object*, %struct._object** %b, align 8, !dbg !2141, !tbaa !1046
  %53 = bitcast %struct._object* %52 to %struct.PyUnicodeObject*, !dbg !2142
  %data72 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %53, i32 0, i32 1, !dbg !2143
  %any73 = bitcast %union.anon* %data72 to i8**, !dbg !2144
  %54 = load i8*, i8** %any73, align 8, !dbg !2144, !tbaa !1046
  br label %cond.end.74, !dbg !2126

cond.end.74:                                      ; preds = %cond.false.71, %cond.end.69
  %cond75 = phi i8* [ %cond70, %cond.end.69 ], [ %54, %cond.false.71 ], !dbg !2126
  %55 = load %struct._object*, %struct._object** %a, align 8, !dbg !2145, !tbaa !1046
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*, !dbg !2146
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 1, !dbg !2147
  %57 = load i64, i64* %length, align 8, !dbg !2147, !tbaa !2148
  %58 = load %struct._object*, %struct._object** %b, align 8, !dbg !2151, !tbaa !1046
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*, !dbg !2152
  %length76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 1, !dbg !2153
  %60 = load i64, i64* %length76, align 8, !dbg !2153, !tbaa !2148
  %call77 = call i32 @_tscmp(i8* %cond53, i8* %cond75, i64 %57, i64 %60), !dbg !2154
  store i32 %call77, i32* %rc, align 4, !dbg !2155, !tbaa !2156
  br label %if.end.121, !dbg !2157

if.else:                                          ; preds = %land.lhs.true, %if.end
  %61 = bitcast %struct.bufferinfo* %view_a to i8*, !dbg !2158
  call void @llvm.lifetime.start(i64 80, i8* %61) #1, !dbg !2158
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %view_a, metadata !732, metadata !1042), !dbg !2159
  %62 = bitcast %struct.bufferinfo* %view_b to i8*, !dbg !2160
  call void @llvm.lifetime.start(i64 80, i8* %62) #1, !dbg !2160
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %view_b, metadata !735, metadata !1042), !dbg !2161
  %63 = load %struct._object*, %struct._object** %a, align 8, !dbg !2162, !tbaa !1046
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !2164
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8, !dbg !2164, !tbaa !2026
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 18, !dbg !2165
  %65 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !2165, !tbaa !2166
  %cmp79 = icmp ne %struct.PyBufferProcs* %65, null, !dbg !2167
  br i1 %cmp79, label %land.rhs, label %land.end, !dbg !2168

land.rhs:                                         ; preds = %if.else
  %66 = load %struct._object*, %struct._object** %a, align 8, !dbg !2169, !tbaa !1046
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1, !dbg !2171
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !2171, !tbaa !2026
  %tp_as_buffer81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 18, !dbg !2172
  %68 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer81, align 8, !dbg !2172, !tbaa !2166
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %68, i32 0, i32 0, !dbg !2173
  %69 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !2173, !tbaa !2174
  %cmp82 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %69, null, !dbg !2176
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %70 = phi i1 [ false, %if.else ], [ %cmp82, %land.rhs ]
  %land.ext = zext i1 %70 to i32, !dbg !2177
  %cmp83 = icmp eq i32 %land.ext, 0, !dbg !2179
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.101, !dbg !2180

land.lhs.true.84:                                 ; preds = %land.end
  %71 = load %struct._object*, %struct._object** %b, align 8, !dbg !2181, !tbaa !1046
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !2183
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !2183, !tbaa !2026
  %tp_as_buffer86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 18, !dbg !2184
  %73 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer86, align 8, !dbg !2184, !tbaa !2166
  %cmp87 = icmp ne %struct.PyBufferProcs* %73, null, !dbg !2185
  br i1 %cmp87, label %land.rhs.88, label %land.end.93, !dbg !2186

land.rhs.88:                                      ; preds = %land.lhs.true.84
  %74 = load %struct._object*, %struct._object** %b, align 8, !dbg !2187, !tbaa !1046
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2189
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !2189, !tbaa !2026
  %tp_as_buffer90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 18, !dbg !2190
  %76 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer90, align 8, !dbg !2190, !tbaa !2166
  %bf_getbuffer91 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %76, i32 0, i32 0, !dbg !2191
  %77 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer91, align 8, !dbg !2191, !tbaa !2174
  %cmp92 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %77, null, !dbg !2192
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.88, %land.lhs.true.84
  %78 = phi i1 [ false, %land.lhs.true.84 ], [ %cmp92, %land.rhs.88 ]
  %land.ext94 = zext i1 %78 to i32, !dbg !2193
  %cmp95 = icmp eq i32 %land.ext94, 0, !dbg !2195
  br i1 %cmp95, label %if.then.96, label %if.end.101, !dbg !2196

if.then.96:                                       ; preds = %land.end.93
  %79 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2197, !tbaa !1046
  %80 = load %struct._object*, %struct._object** %a, align 8, !dbg !2199, !tbaa !1046
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !2200
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8, !dbg !2200, !tbaa !2026
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 1, !dbg !2201
  %82 = load i8*, i8** %tp_name, align 8, !dbg !2201, !tbaa !2202
  %83 = load %struct._object*, %struct._object** %b, align 8, !dbg !2203, !tbaa !1046
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1, !dbg !2204
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !2204, !tbaa !2026
  %tp_name99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 1, !dbg !2205
  %85 = load i8*, i8** %tp_name99, align 8, !dbg !2205, !tbaa !2202
  %call100 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %79, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.138, i32 0, i32 0), i8* %82, i8* %85), !dbg !2206
  store %struct._object* null, %struct._object** %retval, !dbg !2207
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2207

if.end.101:                                       ; preds = %land.end.93, %land.end
  %86 = load %struct._object*, %struct._object** %a, align 8, !dbg !2208, !tbaa !1046
  %call102 = call i32 @PyObject_GetBuffer(%struct._object* %86, %struct.bufferinfo* %view_a, i32 0), !dbg !2210
  %cmp103 = icmp eq i32 %call102, -1, !dbg !2211
  br i1 %cmp103, label %if.then.104, label %if.end.105, !dbg !2212

if.then.104:                                      ; preds = %if.end.101
  store %struct._object* null, %struct._object** %retval, !dbg !2213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2213

if.end.105:                                       ; preds = %if.end.101
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 5, !dbg !2215
  %87 = load i32, i32* %ndim, align 4, !dbg !2215, !tbaa !2217
  %cmp106 = icmp sgt i32 %87, 1, !dbg !2219
  br i1 %cmp106, label %if.then.107, label %if.end.108, !dbg !2220

if.then.107:                                      ; preds = %if.end.105
  %88 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !2221, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i32 0, i32 0)), !dbg !2223
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a), !dbg !2224
  store %struct._object* null, %struct._object** %retval, !dbg !2225
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2225

if.end.108:                                       ; preds = %if.end.105
  %89 = load %struct._object*, %struct._object** %b, align 8, !dbg !2226, !tbaa !1046
  %call109 = call i32 @PyObject_GetBuffer(%struct._object* %89, %struct.bufferinfo* %view_b, i32 0), !dbg !2228
  %cmp110 = icmp eq i32 %call109, -1, !dbg !2229
  br i1 %cmp110, label %if.then.111, label %if.end.112, !dbg !2230

if.then.111:                                      ; preds = %if.end.108
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a), !dbg !2231
  store %struct._object* null, %struct._object** %retval, !dbg !2233
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2233

if.end.112:                                       ; preds = %if.end.108
  %ndim113 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 5, !dbg !2234
  %90 = load i32, i32* %ndim113, align 4, !dbg !2234, !tbaa !2217
  %cmp114 = icmp sgt i32 %90, 1, !dbg !2236
  br i1 %cmp114, label %if.then.115, label %if.end.116, !dbg !2237

if.then.115:                                      ; preds = %if.end.112
  %91 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !2238, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i32 0, i32 0)), !dbg !2240
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a), !dbg !2241
  call void @PyBuffer_Release(%struct.bufferinfo* %view_b), !dbg !2242
  store %struct._object* null, %struct._object** %retval, !dbg !2243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2243

if.end.116:                                       ; preds = %if.end.112
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 0, !dbg !2244
  %92 = load i8*, i8** %buf, align 8, !dbg !2244, !tbaa !2245
  %buf117 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 0, !dbg !2246
  %93 = load i8*, i8** %buf117, align 8, !dbg !2246, !tbaa !2245
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i32 0, i32 2, !dbg !2247
  %94 = load i64, i64* %len, align 8, !dbg !2247, !tbaa !2248
  %len118 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i32 0, i32 2, !dbg !2249
  %95 = load i64, i64* %len118, align 8, !dbg !2249, !tbaa !2248
  %call119 = call i32 @_tscmp(i8* %92, i8* %93, i64 %94, i64 %95), !dbg !2250
  store i32 %call119, i32* %rc, align 4, !dbg !2251, !tbaa !2156
  call void @PyBuffer_Release(%struct.bufferinfo* %view_a), !dbg !2252
  call void @PyBuffer_Release(%struct.bufferinfo* %view_b), !dbg !2253
  store i32 0, i32* %cleanup.dest.slot, !dbg !2254
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %if.end.116, %if.then.115, %if.then.111, %if.then.107, %if.then.104, %if.then.96
  %96 = bitcast %struct.bufferinfo* %view_b to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 80, i8* %96) #1, !dbg !2255
  %97 = bitcast %struct.bufferinfo* %view_a to i8*, !dbg !2255
  call void @llvm.lifetime.end(i64 80, i8* %97) #1, !dbg !2255
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.121

if.end.121:                                       ; preds = %cleanup.cont, %cond.end.74
  %98 = load i32, i32* %rc, align 4, !dbg !2256, !tbaa !2156
  %conv = sext i32 %98 to i64, !dbg !2256
  %call122 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2257
  store %struct._object* %call122, %struct._object** %retval, !dbg !2258
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123, !dbg !2258

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.123

cleanup.123:                                      ; preds = %NewDefault, %if.end.121, %if.then.33, %if.then.20, %if.then
  %99 = bitcast i32* %rc to i8*, !dbg !2259
  call void @llvm.lifetime.end(i64 4, i8* %99) #1, !dbg !2259
  %100 = bitcast %struct._object** %b to i8*, !dbg !2259
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !2259
  %101 = bitcast %struct._object** %a to i8*, !dbg !2259
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !2259
  %102 = load %struct._object*, %struct._object** %retval, !dbg !2259
  ret %struct._object* %102, !dbg !2259
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !752, metadata !1042), !dbg !2260
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !753, metadata !1042), !dbg !2261
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2262
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2262
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !754, metadata !1042), !dbg !2263
  %1 = bitcast i64* %defaultvalue to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2264
  call void @llvm.dbg.declare(metadata i64* %defaultvalue, metadata !755, metadata !1042), !dbg !2265
  store i64 0, i64* %defaultvalue, align 8, !dbg !2265, !tbaa !1093
  %2 = bitcast i64* %res to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2264
  call void @llvm.dbg.declare(metadata i64* %res, metadata !756, metadata !1042), !dbg !2266
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2267, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), %struct._object** %obj, i64* %defaultvalue), !dbg !2269
  %tobool = icmp ne i32 %call, 0, !dbg !2269
  br i1 %tobool, label %if.end, label %if.then, !dbg !2270

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2271

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2273, !tbaa !1046
  %5 = load i64, i64* %defaultvalue, align 8, !dbg !2274, !tbaa !1093
  %call1 = call i64 @PyObject_LengthHint(%struct._object* %4, i64 %5), !dbg !2275
  store i64 %call1, i64* %res, align 8, !dbg !2276, !tbaa !1093
  %6 = load i64, i64* %res, align 8, !dbg !2277, !tbaa !1093
  %cmp = icmp eq i64 %6, -1, !dbg !2279
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !2280

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !2281
  %tobool3 = icmp ne %struct._object* %call2, null, !dbg !2281
  br i1 %tobool3, label %if.then.4, label %if.end.5, !dbg !2283

if.then.4:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2284
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2284

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %res, align 8, !dbg !2286, !tbaa !1093
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %7), !dbg !2287
  store %struct._object* %call6, %struct._object** %retval, !dbg !2288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2288

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %8 = bitcast i64* %res to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2289
  %9 = bitcast i64* %defaultvalue to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !2289
  %10 = bitcast %struct._object** %obj to i8*, !dbg !2289
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2289
  %11 = load %struct._object*, %struct._object** %retval, !dbg !2289
  ret %struct._object* %11, !dbg !2289
}

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #3

declare i64 @PySequence_Index(%struct._object*, %struct._object*) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i64 @PySequence_Count(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Index(%struct._object*) #3

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Negative(%struct._object*) #3

declare %struct._object* @PyNumber_Positive(%struct._object*) #3

declare %struct._object* @PyNumber_Absolute(%struct._object*) #3

declare %struct._object* @PyNumber_Invert(%struct._object*) #3

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #3

declare i32 @PyObject_Not(%struct._object*) #3

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceAdd(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceSubtract(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceMultiply(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceRemainder(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceLshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceRshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceAnd(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceXor(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #3

declare %struct._object* @PySequence_Concat(%struct._object*, %struct._object*) #3

declare %struct._object* @PySequence_InPlaceConcat(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #3

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_InPlacePower(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

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
  store i8* %a, i8** %a.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !740, metadata !1042), !dbg !2290
  store i8* %b, i8** %b.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !741, metadata !1042), !dbg !2291
  store i64 %len_a, i64* %len_a.addr, align 8, !tbaa !1093
  call void @llvm.dbg.declare(metadata i64* %len_a.addr, metadata !742, metadata !1042), !dbg !2292
  store i64 %len_b, i64* %len_b.addr, align 8, !tbaa !1093
  call void @llvm.dbg.declare(metadata i64* %len_b.addr, metadata !743, metadata !1042), !dbg !2293
  %0 = bitcast i64* %length to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2294
  call void @llvm.dbg.declare(metadata i64* %length, metadata !744, metadata !1042), !dbg !2295
  %1 = bitcast i8** %left to i8*, !dbg !2296
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2296
  call void @llvm.dbg.declare(metadata i8** %left, metadata !746, metadata !1042), !dbg !2297
  %2 = bitcast i8** %right to i8*, !dbg !2298
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2298
  call void @llvm.dbg.declare(metadata i8** %right, metadata !747, metadata !1042), !dbg !2299
  %3 = bitcast i64* %i to i8*, !dbg !2300
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2300
  call void @llvm.dbg.declare(metadata i64* %i, metadata !748, metadata !1042), !dbg !2301
  call void @llvm.lifetime.start(i64 1, i8* %result) #1, !dbg !2302
  call void @llvm.dbg.declare(metadata i8* %result, metadata !749, metadata !1042), !dbg !2303
  %4 = load i64, i64* %len_b.addr, align 8, !dbg !2304, !tbaa !1093
  store volatile i64 %4, i64* %length, align 8, !dbg !2305, !tbaa !1093
  store i8* null, i8** %left, align 8, !dbg !2306, !tbaa !1046
  %5 = load i8*, i8** %b.addr, align 8, !dbg !2307, !tbaa !1046
  store i8* %5, i8** %right, align 8, !dbg !2308, !tbaa !1046
  %6 = load i64, i64* %len_a.addr, align 8, !dbg !2309, !tbaa !1093
  %7 = load volatile i64, i64* %length, align 8, !dbg !2311, !tbaa !1093
  %cmp = icmp eq i64 %6, %7, !dbg !2312
  br i1 %cmp, label %if.then, label %if.end, !dbg !2313

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %a.addr, align 8, !dbg !2314, !tbaa !1046
  store i8* %8, i8** %left, align 8, !dbg !2316, !tbaa !1046
  store i8 0, i8* %result, align 1, !dbg !2317, !tbaa !2318
  br label %if.end, !dbg !2319

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %len_a.addr, align 8, !dbg !2320, !tbaa !1093
  %10 = load volatile i64, i64* %length, align 8, !dbg !2322, !tbaa !1093
  %cmp1 = icmp ne i64 %9, %10, !dbg !2323
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2324

if.then.2:                                        ; preds = %if.end
  %11 = load i8*, i8** %b.addr, align 8, !dbg !2325, !tbaa !1046
  store i8* %11, i8** %left, align 8, !dbg !2327, !tbaa !1046
  store i8 1, i8* %result, align 1, !dbg !2328, !tbaa !2318
  br label %if.end.3, !dbg !2329

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i64 0, i64* %i, align 8, !dbg !2330, !tbaa !1093
  br label %for.cond, !dbg !2332

for.cond:                                         ; preds = %for.inc, %if.end.3
  %12 = load i64, i64* %i, align 8, !dbg !2333, !tbaa !1093
  %13 = load volatile i64, i64* %length, align 8, !dbg !2337, !tbaa !1093
  %cmp4 = icmp slt i64 %12, %13, !dbg !2338
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2339

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %left, align 8, !dbg !2340, !tbaa !1046
  %incdec.ptr = getelementptr i8, i8* %14, i32 1, !dbg !2340
  store i8* %incdec.ptr, i8** %left, align 8, !dbg !2340, !tbaa !1046
  %15 = load volatile i8, i8* %14, align 1, !dbg !2342, !tbaa !2318
  %conv = zext i8 %15 to i32, !dbg !2342
  %16 = load i8*, i8** %right, align 8, !dbg !2343, !tbaa !1046
  %incdec.ptr5 = getelementptr i8, i8* %16, i32 1, !dbg !2343
  store i8* %incdec.ptr5, i8** %right, align 8, !dbg !2343, !tbaa !1046
  %17 = load volatile i8, i8* %16, align 1, !dbg !2344, !tbaa !2318
  %conv6 = zext i8 %17 to i32, !dbg !2344
  %xor = xor i32 %conv, %conv6, !dbg !2345
  %18 = load i8, i8* %result, align 1, !dbg !2346, !tbaa !2318
  %conv7 = zext i8 %18 to i32, !dbg !2346
  %or = or i32 %conv7, %xor, !dbg !2346
  %conv8 = trunc i32 %or to i8, !dbg !2346
  store i8 %conv8, i8* %result, align 1, !dbg !2346, !tbaa !2318
  br label %for.inc, !dbg !2347

for.inc:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8, !dbg !2348, !tbaa !1093
  %inc = add i64 %19, 1, !dbg !2348
  store i64 %inc, i64* %i, align 8, !dbg !2348, !tbaa !1093
  br label %for.cond, !dbg !2349

for.end:                                          ; preds = %for.cond
  %20 = load i8, i8* %result, align 1, !dbg !2350, !tbaa !2318
  %conv9 = zext i8 %20 to i32, !dbg !2350
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !2351
  %conv11 = zext i1 %cmp10 to i32, !dbg !2351
  call void @llvm.lifetime.end(i64 1, i8* %result) #1, !dbg !2352
  %21 = bitcast i64* %i to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2352
  %22 = bitcast i8** %right to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2352
  %23 = bitcast i8** %left to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2352
  %24 = bitcast i64* %length to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2352
  ret i32 %conv11, !dbg !2353
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

declare i64 @PyObject_LengthHint(%struct._object*, i64) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal void @itemgetter_dealloc(%struct.itemgetterobject* %ig) #0 {
entry:
  %ig.addr = alloca %struct.itemgetterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.itemgetterobject** %ig.addr, metadata !761, metadata !1042), !dbg !2354
  %0 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2355, !tbaa !1046
  %1 = bitcast %struct.itemgetterobject* %0 to i8*, !dbg !2355
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !2356
  br label %do.body, !dbg !2357

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2358
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !762, metadata !1042), !dbg !2360
  %3 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2361, !tbaa !1046
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %3, i32 0, i32 2, !dbg !2362
  %4 = load %struct._object*, %struct._object** %item, align 8, !dbg !2362, !tbaa !2363
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2360, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2365, !tbaa !1046
  %cmp = icmp ne %struct._object* %5, null, !dbg !2366
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !2367

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !2368

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2370
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !764, metadata !1042), !dbg !2372
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2373, !tbaa !1046
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2372, !tbaa !1046
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2374, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2376
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2377, !tbaa !1061
  %dec = add i64 %9, -1, !dbg !2377
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2377, !tbaa !1061
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2378
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2379

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !2380

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2382, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2384
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2384, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2385
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2385, !tbaa !2386
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2387, !tbaa !1046
  call void %12(%struct._object* %13), !dbg !2388
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2389
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2389
  br label %do.cond, !dbg !2391

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2392

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !2394

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2396
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2396
  br label %do.end.6, !dbg !2399

do.end.6:                                         ; preds = %if.end.4
  %16 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2400, !tbaa !1046
  %17 = bitcast %struct.itemgetterobject* %16 to i8*, !dbg !2400
  call void @PyObject_GC_Del(i8* %17), !dbg !2401
  ret void, !dbg !2402
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
  %cleanup.dest.slot = alloca i32
  %item10 = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.itemgetterobject** %ig.addr, metadata !771, metadata !1042), !dbg !2403
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !772, metadata !1042), !dbg !2404
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !773, metadata !1042), !dbg !2405
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2406
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !774, metadata !1042), !dbg !2407
  %1 = bitcast %struct._object** %result to i8*, !dbg !2406
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !775, metadata !1042), !dbg !2408
  %2 = bitcast i64* %i to i8*, !dbg !2409
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2409
  call void @llvm.dbg.declare(metadata i64* %i, metadata !776, metadata !1042), !dbg !2410
  %3 = bitcast i64* %nitems to i8*, !dbg !2409
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2409
  call void @llvm.dbg.declare(metadata i64* %nitems, metadata !777, metadata !1042), !dbg !2411
  %4 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2412, !tbaa !1046
  %nitems1 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %4, i32 0, i32 1, !dbg !2413
  %5 = load i64, i64* %nitems1, align 8, !dbg !2413, !tbaa !2414
  store i64 %5, i64* %nitems, align 8, !dbg !2411, !tbaa !1093
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2415, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj), !dbg !2417
  %tobool = icmp ne i32 %call, 0, !dbg !2417
  br i1 %tobool, label %if.end, label %if.then, !dbg !2418

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !2419

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %nitems, align 8, !dbg !2420, !tbaa !1093
  %cmp = icmp eq i64 %7, 1, !dbg !2422
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !2423

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2424, !tbaa !1046
  %9 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2425, !tbaa !1046
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %9, i32 0, i32 2, !dbg !2426
  %10 = load %struct._object*, %struct._object** %item, align 8, !dbg !2426, !tbaa !2363
  %call3 = call %struct._object* @PyObject_GetItem(%struct._object* %8, %struct._object* %10), !dbg !2427
  store %struct._object* %call3, %struct._object** %retval, !dbg !2428
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !2428

if.end.4:                                         ; preds = %if.end
  %11 = load i64, i64* %nitems, align 8, !dbg !2429, !tbaa !1093
  %call5 = call %struct._object* @PyTuple_New(i64 %11), !dbg !2430
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !2431, !tbaa !1046
  %12 = load %struct._object*, %struct._object** %result, align 8, !dbg !2432, !tbaa !1046
  %cmp6 = icmp eq %struct._object* %12, null, !dbg !2434
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2435

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !2436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !2436

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8, !dbg !2437, !tbaa !1093
  br label %for.cond, !dbg !2438

for.cond:                                         ; preds = %for.inc, %if.end.8
  %13 = load i64, i64* %i, align 8, !dbg !2439, !tbaa !1093
  %14 = load i64, i64* %nitems, align 8, !dbg !2442, !tbaa !1093
  %cmp9 = icmp slt i64 %13, %14, !dbg !2443
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2444

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._object** %item10 to i8*, !dbg !2445
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2445
  call void @llvm.dbg.declare(metadata %struct._object** %item10, metadata !778, metadata !1042), !dbg !2446
  %16 = bitcast %struct._object** %val to i8*, !dbg !2445
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !2445
  call void @llvm.dbg.declare(metadata %struct._object** %val, metadata !782, metadata !1042), !dbg !2447
  %17 = load i64, i64* %i, align 8, !dbg !2448, !tbaa !1093
  %18 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2449, !tbaa !1046
  %item11 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %18, i32 0, i32 2, !dbg !2450
  %19 = load %struct._object*, %struct._object** %item11, align 8, !dbg !2450, !tbaa !2363
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !2451
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !2452
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %17, !dbg !2453
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2453, !tbaa !1046
  store %struct._object* %21, %struct._object** %item10, align 8, !dbg !2454, !tbaa !1046
  %22 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2455, !tbaa !1046
  %23 = load %struct._object*, %struct._object** %item10, align 8, !dbg !2456, !tbaa !1046
  %call12 = call %struct._object* @PyObject_GetItem(%struct._object* %22, %struct._object* %23), !dbg !2457
  store %struct._object* %call12, %struct._object** %val, align 8, !dbg !2458, !tbaa !1046
  %24 = load %struct._object*, %struct._object** %val, align 8, !dbg !2459, !tbaa !1046
  %cmp13 = icmp eq %struct._object* %24, null, !dbg !2460
  br i1 %cmp13, label %if.then.14, label %if.end.18, !dbg !2461

if.then.14:                                       ; preds = %for.body
  br label %do.body, !dbg !2462

do.body:                                          ; preds = %if.then.14
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !783, metadata !1042), !dbg !2465
  %26 = load %struct._object*, %struct._object** %result, align 8, !dbg !2466, !tbaa !1046
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !2465, !tbaa !1046
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2467, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !2469
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !2470, !tbaa !1061
  %dec = add i64 %28, -1, !dbg !2470
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2470, !tbaa !1061
  %cmp15 = icmp ne i64 %dec, 0, !dbg !2471
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !2472

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2473

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2475, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !2477
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2477, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !2478
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2478, !tbaa !2386
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2479, !tbaa !1046
  call void %31(%struct._object* %32), !dbg !2480
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2481
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !2481
  br label %do.cond, !dbg !2483

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2484

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2486
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2486

if.end.18:                                        ; preds = %for.body
  %34 = load %struct._object*, %struct._object** %val, align 8, !dbg !2487, !tbaa !1046
  %35 = load i64, i64* %i, align 8, !dbg !2488, !tbaa !1093
  %36 = load %struct._object*, %struct._object** %result, align 8, !dbg !2489, !tbaa !1046
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*, !dbg !2490
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1, !dbg !2491
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i64 %35, !dbg !2492
  store %struct._object* %34, %struct._object** %arrayidx20, align 8, !dbg !2493, !tbaa !1046
  store i32 0, i32* %cleanup.dest.slot, !dbg !2494
  br label %cleanup, !dbg !2494

cleanup:                                          ; preds = %if.end.18, %do.end
  %38 = bitcast %struct._object** %val to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2495
  %39 = bitcast %struct._object** %item10 to i8*, !dbg !2495
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2495
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2496

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i64, i64* %i, align 8, !dbg !2497, !tbaa !1093
  %inc = add i64 %40, 1, !dbg !2497
  store i64 %inc, i64* %i, align 8, !dbg !2497, !tbaa !1093
  br label %for.cond, !dbg !2498

for.end:                                          ; preds = %for.cond
  %41 = load %struct._object*, %struct._object** %result, align 8, !dbg !2499, !tbaa !1046
  store %struct._object* %41, %struct._object** %retval, !dbg !2500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22, !dbg !2500

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.22

cleanup.22:                                       ; preds = %NewDefault, %for.end, %if.then.7, %if.then.2, %if.then
  %42 = bitcast i64* %nitems to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2501
  %43 = bitcast i64* %i to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2501
  %44 = bitcast %struct._object** %result to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2501
  %45 = bitcast %struct._object** %obj to i8*, !dbg !2501
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2501
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2501
  ret %struct._object* %46, !dbg !2501
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @itemgetter_traverse(%struct.itemgetterobject* %ig, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ig.addr = alloca %struct.itemgetterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.itemgetterobject* %ig, %struct.itemgetterobject** %ig.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.itemgetterobject** %ig.addr, metadata !791, metadata !1042), !dbg !2502
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !792, metadata !1042), !dbg !2503
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !793, metadata !1042), !dbg !2504
  br label %do.body, !dbg !2505

do.body:                                          ; preds = %entry
  %0 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2506, !tbaa !1046
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %0, i32 0, i32 2, !dbg !2508
  %1 = load %struct._object*, %struct._object** %item, align 8, !dbg !2508, !tbaa !2363
  %tobool = icmp ne %struct._object* %1, null, !dbg !2509
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2510

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2511
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !794, metadata !1042), !dbg !2513
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2514, !tbaa !1046
  %4 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig.addr, align 8, !dbg !2515, !tbaa !1046
  %item1 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %4, i32 0, i32 2, !dbg !2516
  %5 = load %struct._object*, %struct._object** %item1, align 8, !dbg !2516, !tbaa !2363
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !2517, !tbaa !1046
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !2514
  store i32 %call, i32* %vret, align 4, !dbg !2513, !tbaa !2156
  %7 = load i32, i32* %vret, align 4, !dbg !2518, !tbaa !2156
  %tobool2 = icmp ne i32 %7, 0, !dbg !2518
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2520

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !2521, !tbaa !2156
  store i32 %8, i32* %retval, !dbg !2523
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2523

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2524
  br label %cleanup, !dbg !2524

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !2526
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !2526
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !2529

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2530

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !2533
  br label %return, !dbg !2533

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !2534
  ret i32 %10, !dbg !2534
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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !804, metadata !1042), !dbg !2535
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !805, metadata !1042), !dbg !2536
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !806, metadata !1042), !dbg !2537
  %0 = bitcast %struct.itemgetterobject** %ig to i8*, !dbg !2538
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.itemgetterobject** %ig, metadata !807, metadata !1042), !dbg !2539
  %1 = bitcast %struct._object** %item to i8*, !dbg !2540
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2540
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !808, metadata !1042), !dbg !2541
  %2 = bitcast i64* %nitems to i8*, !dbg !2542
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2542
  call void @llvm.dbg.declare(metadata i64* %nitems, metadata !809, metadata !1042), !dbg !2543
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2544, !tbaa !1046
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), %struct._object* %3), !dbg !2546
  %tobool = icmp ne i32 %call, 0, !dbg !2546
  br i1 %tobool, label %if.end, label %if.then, !dbg !2547

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2548

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2549, !tbaa !1046
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*, !dbg !2550
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1, !dbg !2551
  %6 = load i64, i64* %ob_size, align 8, !dbg !2551, !tbaa !2552
  store i64 %6, i64* %nitems, align 8, !dbg !2553, !tbaa !1093
  %7 = load i64, i64* %nitems, align 8, !dbg !2554, !tbaa !1093
  %cmp = icmp sle i64 %7, 1, !dbg !2556
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !2557

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2558, !tbaa !1046
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 1, i64 1, %struct._object** %item), !dbg !2561
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2561
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !2562

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !2563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2563

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6, !dbg !2564

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2565, !tbaa !1046
  store %struct._object* %9, %struct._object** %item, align 8, !dbg !2566, !tbaa !1046
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end.5
  %call7 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @itemgetter_type), !dbg !2567
  %10 = bitcast %struct._object* %call7 to %struct.itemgetterobject*, !dbg !2568
  store %struct.itemgetterobject* %10, %struct.itemgetterobject** %ig, align 8, !dbg !2569, !tbaa !1046
  %11 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8, !dbg !2570, !tbaa !1046
  %cmp8 = icmp eq %struct.itemgetterobject* %11, null, !dbg !2572
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2573

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !2574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2574

if.end.10:                                        ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %item, align 8, !dbg !2575, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2576
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2577, !tbaa !1061
  %inc = add i64 %13, 1, !dbg !2577
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2577, !tbaa !1061
  %14 = load %struct._object*, %struct._object** %item, align 8, !dbg !2578, !tbaa !1046
  %15 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8, !dbg !2579, !tbaa !1046
  %item11 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %15, i32 0, i32 2, !dbg !2580
  store %struct._object* %14, %struct._object** %item11, align 8, !dbg !2581, !tbaa !2363
  %16 = load i64, i64* %nitems, align 8, !dbg !2582, !tbaa !1093
  %17 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8, !dbg !2583, !tbaa !1046
  %nitems12 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %17, i32 0, i32 1, !dbg !2584
  store i64 %16, i64* %nitems12, align 8, !dbg !2585, !tbaa !2414
  %18 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8, !dbg !2586, !tbaa !1046
  %19 = bitcast %struct.itemgetterobject* %18 to i8*, !dbg !2586
  call void @PyObject_GC_Track(i8* %19), !dbg !2587
  %20 = load %struct.itemgetterobject*, %struct.itemgetterobject** %ig, align 8, !dbg !2588, !tbaa !1046
  %21 = bitcast %struct.itemgetterobject* %20 to %struct._object*, !dbg !2589
  store %struct._object* %21, %struct._object** %retval, !dbg !2590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2590

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %22 = bitcast i64* %nitems to i8*, !dbg !2591
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2591
  %23 = bitcast %struct._object** %item to i8*, !dbg !2591
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2591
  %24 = bitcast %struct.itemgetterobject** %ig to i8*, !dbg !2591
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2591
  %25 = load %struct._object*, %struct._object** %retval, !dbg !2591
  ret %struct._object* %25, !dbg !2591
}

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @PyObject_GC_Del(i8*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

declare void @PyObject_GC_Track(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @attrgetter_dealloc(%struct.attrgetterobject* %ag) #0 {
entry:
  %ag.addr = alloca %struct.attrgetterobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.attrgetterobject** %ag.addr, metadata !814, metadata !1042), !dbg !2592
  %0 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2593, !tbaa !1046
  %1 = bitcast %struct.attrgetterobject* %0 to i8*, !dbg !2593
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !2594
  br label %do.body, !dbg !2595

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2596
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2596
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !815, metadata !1042), !dbg !2598
  %3 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2599, !tbaa !1046
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %3, i32 0, i32 2, !dbg !2600
  %4 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2600, !tbaa !2363
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2598, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2601, !tbaa !1046
  %cmp = icmp ne %struct._object* %5, null, !dbg !2602
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !2603

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !2604

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2606
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !817, metadata !1042), !dbg !2608
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2609, !tbaa !1046
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2608, !tbaa !1046
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2610, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2612
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2613, !tbaa !1061
  %dec = add i64 %9, -1, !dbg !2613
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2613, !tbaa !1061
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2614
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2615

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !2616

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2618, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2620
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2620, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2621
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2621, !tbaa !2386
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2622, !tbaa !1046
  call void %12(%struct._object* %13), !dbg !2623
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2624
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2624
  br label %do.cond, !dbg !2626

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2627

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !2629

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2631
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2631
  br label %do.end.6, !dbg !2634

do.end.6:                                         ; preds = %if.end.4
  %16 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2635, !tbaa !1046
  %17 = bitcast %struct.attrgetterobject* %16 to i8*, !dbg !2635
  call void @PyObject_GC_Del(i8* %17), !dbg !2636
  ret void, !dbg !2637
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
  %cleanup.dest.slot = alloca i32
  %attr11 = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.attrgetterobject** %ag.addr, metadata !824, metadata !1042), !dbg !2638
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !825, metadata !1042), !dbg !2639
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !826, metadata !1042), !dbg !2640
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !827, metadata !1042), !dbg !2642
  %1 = bitcast %struct._object** %result to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !828, metadata !1042), !dbg !2643
  %2 = bitcast i64* %i to i8*, !dbg !2644
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2644
  call void @llvm.dbg.declare(metadata i64* %i, metadata !829, metadata !1042), !dbg !2645
  %3 = bitcast i64* %nattrs to i8*, !dbg !2644
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2644
  call void @llvm.dbg.declare(metadata i64* %nattrs, metadata !830, metadata !1042), !dbg !2646
  %4 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2647, !tbaa !1046
  %nattrs1 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %4, i32 0, i32 1, !dbg !2648
  %5 = load i64, i64* %nattrs1, align 8, !dbg !2648, !tbaa !2414
  store i64 %5, i64* %nattrs, align 8, !dbg !2646, !tbaa !1093
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2649, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj), !dbg !2651
  %tobool = icmp ne i32 %call, 0, !dbg !2651
  br i1 %tobool, label %if.end, label %if.then, !dbg !2652

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25, !dbg !2653

if.end:                                           ; preds = %entry
  %7 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2654, !tbaa !1046
  %nattrs2 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %7, i32 0, i32 1, !dbg !2656
  %8 = load i64, i64* %nattrs2, align 8, !dbg !2656, !tbaa !2414
  %cmp = icmp eq i64 %8, 1, !dbg !2657
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !2658

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2659, !tbaa !1046
  %10 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2660, !tbaa !1046
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %10, i32 0, i32 2, !dbg !2661
  %11 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2661, !tbaa !2363
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*, !dbg !2662
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1, !dbg !2663
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2664
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2664, !tbaa !1046
  %call4 = call %struct._object* @dotted_getattr(%struct._object* %9, %struct._object* %13), !dbg !2665
  store %struct._object* %call4, %struct._object** %retval, !dbg !2666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25, !dbg !2666

if.end.5:                                         ; preds = %if.end
  %14 = load i64, i64* %nattrs, align 8, !dbg !2667, !tbaa !1093
  %call6 = call %struct._object* @PyTuple_New(i64 %14), !dbg !2668
  store %struct._object* %call6, %struct._object** %result, align 8, !dbg !2669, !tbaa !1046
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !2670, !tbaa !1046
  %cmp7 = icmp eq %struct._object* %15, null, !dbg !2672
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2673

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval, !dbg !2674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25, !dbg !2674

if.end.9:                                         ; preds = %if.end.5
  store i64 0, i64* %i, align 8, !dbg !2675, !tbaa !1093
  br label %for.cond, !dbg !2676

for.cond:                                         ; preds = %for.inc, %if.end.9
  %16 = load i64, i64* %i, align 8, !dbg !2677, !tbaa !1093
  %17 = load i64, i64* %nattrs, align 8, !dbg !2680, !tbaa !1093
  %cmp10 = icmp slt i64 %16, %17, !dbg !2681
  br i1 %cmp10, label %for.body, label %for.end, !dbg !2682

for.body:                                         ; preds = %for.cond
  %18 = bitcast %struct._object** %attr11 to i8*, !dbg !2683
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !2683
  call void @llvm.dbg.declare(metadata %struct._object** %attr11, metadata !831, metadata !1042), !dbg !2684
  %19 = bitcast %struct._object** %val to i8*, !dbg !2683
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !2683
  call void @llvm.dbg.declare(metadata %struct._object** %val, metadata !835, metadata !1042), !dbg !2685
  %20 = load i64, i64* %i, align 8, !dbg !2686, !tbaa !1093
  %21 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2687, !tbaa !1046
  %attr12 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %21, i32 0, i32 2, !dbg !2688
  %22 = load %struct._object*, %struct._object** %attr12, align 8, !dbg !2688, !tbaa !2363
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*, !dbg !2689
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1, !dbg !2690
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 %20, !dbg !2691
  %24 = load %struct._object*, %struct._object** %arrayidx14, align 8, !dbg !2691, !tbaa !1046
  store %struct._object* %24, %struct._object** %attr11, align 8, !dbg !2692, !tbaa !1046
  %25 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2693, !tbaa !1046
  %26 = load %struct._object*, %struct._object** %attr11, align 8, !dbg !2694, !tbaa !1046
  %call15 = call %struct._object* @dotted_getattr(%struct._object* %25, %struct._object* %26), !dbg !2695
  store %struct._object* %call15, %struct._object** %val, align 8, !dbg !2696, !tbaa !1046
  %27 = load %struct._object*, %struct._object** %val, align 8, !dbg !2697, !tbaa !1046
  %cmp16 = icmp eq %struct._object* %27, null, !dbg !2698
  br i1 %cmp16, label %if.then.17, label %if.end.21, !dbg !2699

if.then.17:                                       ; preds = %for.body
  br label %do.body, !dbg !2700

do.body:                                          ; preds = %if.then.17
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2701
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2701
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !836, metadata !1042), !dbg !2703
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !2704, !tbaa !1046
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !2703, !tbaa !1046
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2705, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !2707
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !2708, !tbaa !1061
  %dec = add i64 %31, -1, !dbg !2708
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2708, !tbaa !1061
  %cmp18 = icmp ne i64 %dec, 0, !dbg !2709
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !2710

if.then.19:                                       ; preds = %do.body
  br label %if.end.20, !dbg !2711

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2713, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2715
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2715, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !2716
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2716, !tbaa !2386
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2717, !tbaa !1046
  call void %34(%struct._object* %35), !dbg !2718
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2719
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2719
  br label %do.cond, !dbg !2721

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !2722

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2724

if.end.21:                                        ; preds = %for.body
  %37 = load %struct._object*, %struct._object** %val, align 8, !dbg !2725, !tbaa !1046
  %38 = load i64, i64* %i, align 8, !dbg !2726, !tbaa !1093
  %39 = load %struct._object*, %struct._object** %result, align 8, !dbg !2727, !tbaa !1046
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*, !dbg !2728
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1, !dbg !2729
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 %38, !dbg !2730
  store %struct._object* %37, %struct._object** %arrayidx23, align 8, !dbg !2731, !tbaa !1046
  store i32 0, i32* %cleanup.dest.slot, !dbg !2732
  br label %cleanup, !dbg !2732

cleanup:                                          ; preds = %if.end.21, %do.end
  %41 = bitcast %struct._object** %val to i8*, !dbg !2733
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2733
  %42 = bitcast %struct._object** %attr11 to i8*, !dbg !2733
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2733
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2734

for.inc:                                          ; preds = %cleanup.cont
  %43 = load i64, i64* %i, align 8, !dbg !2735, !tbaa !1093
  %inc = add i64 %43, 1, !dbg !2735
  store i64 %inc, i64* %i, align 8, !dbg !2735, !tbaa !1093
  br label %for.cond, !dbg !2736

for.end:                                          ; preds = %for.cond
  %44 = load %struct._object*, %struct._object** %result, align 8, !dbg !2737, !tbaa !1046
  store %struct._object* %44, %struct._object** %retval, !dbg !2738
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25, !dbg !2738

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.25

cleanup.25:                                       ; preds = %NewDefault, %for.end, %if.then.8, %if.then.3, %if.then
  %45 = bitcast i64* %nattrs to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2739
  %46 = bitcast i64* %i to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2739
  %47 = bitcast %struct._object** %result to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2739
  %48 = bitcast %struct._object** %obj to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !2739
  %49 = load %struct._object*, %struct._object** %retval, !dbg !2739
  ret %struct._object* %49, !dbg !2739
}

; Function Attrs: nounwind uwtable
define internal i32 @attrgetter_traverse(%struct.attrgetterobject* %ag, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ag.addr = alloca %struct.attrgetterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.attrgetterobject* %ag, %struct.attrgetterobject** %ag.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.attrgetterobject** %ag.addr, metadata !859, metadata !1042), !dbg !2740
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !860, metadata !1042), !dbg !2741
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !861, metadata !1042), !dbg !2742
  br label %do.body, !dbg !2743

do.body:                                          ; preds = %entry
  %0 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2744, !tbaa !1046
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %0, i32 0, i32 2, !dbg !2746
  %1 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2746, !tbaa !2363
  %tobool = icmp ne %struct._object* %1, null, !dbg !2747
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !2748

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !2749
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2749
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !862, metadata !1042), !dbg !2751
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !2752, !tbaa !1046
  %4 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag.addr, align 8, !dbg !2753, !tbaa !1046
  %attr1 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %4, i32 0, i32 2, !dbg !2754
  %5 = load %struct._object*, %struct._object** %attr1, align 8, !dbg !2754, !tbaa !2363
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !2755, !tbaa !1046
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !2752
  store i32 %call, i32* %vret, align 4, !dbg !2751, !tbaa !2156
  %7 = load i32, i32* %vret, align 4, !dbg !2756, !tbaa !2156
  %tobool2 = icmp ne i32 %7, 0, !dbg !2756
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !2758

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !2759, !tbaa !2156
  store i32 %8, i32* %retval, !dbg !2761
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2761

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !2762
  br label %cleanup, !dbg !2762

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !2764
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !2764
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !2767

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !2768

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !2771
  br label %return, !dbg !2771

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !2772
  ret i32 %10, !dbg !2772
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
  %cleanup.dest.slot = alloca i32
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
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp177 = alloca %struct._object*, align 8
  %_py_decref_tmp190 = alloca %struct._object*, align 8
  %_py_decref_tmp227 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !868, metadata !1042), !dbg !2773
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !869, metadata !1042), !dbg !2774
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !870, metadata !1042), !dbg !2775
  %0 = bitcast %struct.attrgetterobject** %ag to i8*, !dbg !2776
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.attrgetterobject** %ag, metadata !871, metadata !1042), !dbg !2777
  %1 = bitcast %struct._object** %attr to i8*, !dbg !2778
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2778
  call void @llvm.dbg.declare(metadata %struct._object** %attr, metadata !872, metadata !1042), !dbg !2779
  %2 = bitcast i64* %nattrs to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2780
  call void @llvm.dbg.declare(metadata i64* %nattrs, metadata !873, metadata !1042), !dbg !2781
  %3 = bitcast i64* %idx to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2780
  call void @llvm.dbg.declare(metadata i64* %idx, metadata !874, metadata !1042), !dbg !2782
  %4 = bitcast i64* %char_idx to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2780
  call void @llvm.dbg.declare(metadata i64* %char_idx, metadata !875, metadata !1042), !dbg !2783
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2784, !tbaa !1046
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), %struct._object* %5), !dbg !2786
  %tobool = icmp ne i32 %call, 0, !dbg !2786
  br i1 %tobool, label %if.end, label %if.then, !dbg !2787

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2788
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !2788

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2789, !tbaa !1046
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*, !dbg !2790
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1, !dbg !2791
  %8 = load i64, i64* %ob_size, align 8, !dbg !2791, !tbaa !2552
  store i64 %8, i64* %nattrs, align 8, !dbg !2792, !tbaa !1093
  %9 = load i64, i64* %nattrs, align 8, !dbg !2793, !tbaa !1093
  %cmp = icmp sle i64 %9, 1, !dbg !2795
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !2796

if.then.1:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2797, !tbaa !1046
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %attr), !dbg !2800
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2800
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !2801

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !2802
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !2802

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6, !dbg !2803

if.end.6:                                         ; preds = %if.end.5, %if.end
  %11 = load i64, i64* %nattrs, align 8, !dbg !2804, !tbaa !1093
  %call7 = call %struct._object* @PyTuple_New(i64 %11), !dbg !2805
  store %struct._object* %call7, %struct._object** %attr, align 8, !dbg !2806, !tbaa !1046
  %12 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2807, !tbaa !1046
  %cmp8 = icmp eq %struct._object* %12, null, !dbg !2809
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2810

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !2811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !2811

if.end.10:                                        ; preds = %if.end.6
  store i64 0, i64* %idx, align 8, !dbg !2812, !tbaa !1093
  br label %for.cond, !dbg !2813

for.cond:                                         ; preds = %for.inc.219, %if.end.10
  %13 = load i64, i64* %idx, align 8, !dbg !2814, !tbaa !1093
  %14 = load i64, i64* %nattrs, align 8, !dbg !2817, !tbaa !1093
  %cmp11 = icmp slt i64 %13, %14, !dbg !2818
  br i1 %cmp11, label %for.body, label %for.end.221, !dbg !2819

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._object** %item to i8*, !dbg !2820
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2820
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !876, metadata !1042), !dbg !2821
  %16 = load i64, i64* %idx, align 8, !dbg !2822, !tbaa !1093
  %17 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2823, !tbaa !1046
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*, !dbg !2824
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1, !dbg !2825
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16, !dbg !2826
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2826, !tbaa !1046
  store %struct._object* %19, %struct._object** %item, align 8, !dbg !2821, !tbaa !1046
  %20 = bitcast i64* %item_len to i8*, !dbg !2827
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2827
  call void @llvm.dbg.declare(metadata i64* %item_len, metadata !880, metadata !1042), !dbg !2828
  %21 = bitcast i8** %data to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2829
  call void @llvm.dbg.declare(metadata i8** %data, metadata !881, metadata !1042), !dbg !2830
  %22 = bitcast i32* %kind to i8*, !dbg !2831
  call void @llvm.lifetime.start(i64 4, i8* %22) #1, !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !882, metadata !1042), !dbg !2832
  %23 = bitcast i32* %dot_count to i8*, !dbg !2833
  call void @llvm.lifetime.start(i64 4, i8* %23) #1, !dbg !2833
  call void @llvm.dbg.declare(metadata i32* %dot_count, metadata !883, metadata !1042), !dbg !2834
  %24 = load %struct._object*, %struct._object** %item, align 8, !dbg !2835, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2836
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2836, !tbaa !2026
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !2837
  %26 = load i64, i64* %tp_flags, align 8, !dbg !2837, !tbaa !2028
  %and = and i64 %26, 268435456, !dbg !2838
  %cmp12 = icmp ne i64 %and, 0, !dbg !2839
  br i1 %cmp12, label %if.end.18, label %if.then.13, !dbg !2840

if.then.13:                                       ; preds = %for.body
  %27 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2841, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0)), !dbg !2842
  br label %do.body, !dbg !2843

do.body:                                          ; preds = %if.then.13
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2844
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2844
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !884, metadata !1042), !dbg !2846
  %29 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2847, !tbaa !1046
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8, !dbg !2846, !tbaa !1046
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2848, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !2850
  %31 = load i64, i64* %ob_refcnt, align 8, !dbg !2851, !tbaa !1061
  %dec = add i64 %31, -1, !dbg !2851
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2851, !tbaa !1061
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2852
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !2853

if.then.15:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2854

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2856, !tbaa !1046
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2858
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !2858, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !2859
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2859, !tbaa !2386
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2860, !tbaa !1046
  call void %34(%struct._object* %35), !dbg !2861
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2862
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2862
  br label %do.cond, !dbg !2864

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2865

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2867
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212, !dbg !2867

if.end.18:                                        ; preds = %for.body
  %37 = load %struct._object*, %struct._object** %item, align 8, !dbg !2868, !tbaa !1046
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*, !dbg !2869
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3, !dbg !2870
  %39 = bitcast %struct.anon* %state to i32*, !dbg !2871
  %bf.load = load i32, i32* %39, align 4, !dbg !2871
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2871
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2871
  %tobool19 = icmp ne i32 %bf.clear, 0, !dbg !2872
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !2872

cond.true:                                        ; preds = %if.end.18
  br label %cond.end, !dbg !2873

cond.false:                                       ; preds = %if.end.18
  %40 = load %struct._object*, %struct._object** %item, align 8, !dbg !2875, !tbaa !1046
  %call20 = call i32 @_PyUnicode_Ready(%struct._object* %40), !dbg !2877
  br label %cond.end, !dbg !2872

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call20, %cond.false ], !dbg !2872
  %tobool21 = icmp ne i32 %cond, 0, !dbg !2878
  br i1 %tobool21, label %if.then.22, label %if.end.35, !dbg !2881

if.then.22:                                       ; preds = %cond.end
  br label %do.body.23, !dbg !2882

do.body.23:                                       ; preds = %if.then.22
  %41 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2883
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !2883
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !888, metadata !1042), !dbg !2885
  %42 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2886, !tbaa !1046
  store %struct._object* %42, %struct._object** %_py_decref_tmp24, align 8, !dbg !2885, !tbaa !1046
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2887, !tbaa !1046
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2889
  %44 = load i64, i64* %ob_refcnt25, align 8, !dbg !2890, !tbaa !1061
  %dec26 = add i64 %44, -1, !dbg !2890
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !2890, !tbaa !1061
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !2891
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !2892

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !2893

if.else.29:                                       ; preds = %do.body.23
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2895, !tbaa !1046
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2897
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !2897, !tbaa !2026
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2898
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !2898, !tbaa !2386
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !2899, !tbaa !1046
  call void %47(%struct._object* %48), !dbg !2900
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %49 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !2901
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2901
  br label %do.cond.33, !dbg !2903

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !2904

do.end.34:                                        ; preds = %do.cond.33
  store %struct._object* null, %struct._object** %retval, !dbg !2906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212, !dbg !2906

if.end.35:                                        ; preds = %cond.end
  %50 = load %struct._object*, %struct._object** %item, align 8, !dbg !2907, !tbaa !1046
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*, !dbg !2908
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 1, !dbg !2909
  %52 = load i64, i64* %length, align 8, !dbg !2909, !tbaa !2148
  store i64 %52, i64* %item_len, align 8, !dbg !2910, !tbaa !1093
  %53 = load %struct._object*, %struct._object** %item, align 8, !dbg !2911, !tbaa !1046
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*, !dbg !2912
  %state36 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3, !dbg !2913
  %55 = bitcast %struct.anon* %state36 to i32*, !dbg !2914
  %bf.load37 = load i32, i32* %55, align 4, !dbg !2914
  %bf.lshr38 = lshr i32 %bf.load37, 2, !dbg !2914
  %bf.clear39 = and i32 %bf.lshr38, 7, !dbg !2914
  store i32 %bf.clear39, i32* %kind, align 4, !dbg !2915, !tbaa !2156
  %56 = load %struct._object*, %struct._object** %item, align 8, !dbg !2916, !tbaa !1046
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*, !dbg !2917
  %state40 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3, !dbg !2918
  %58 = bitcast %struct.anon* %state40 to i32*, !dbg !2919
  %bf.load41 = load i32, i32* %58, align 4, !dbg !2919
  %bf.lshr42 = lshr i32 %bf.load41, 5, !dbg !2919
  %bf.clear43 = and i32 %bf.lshr42, 1, !dbg !2919
  %tobool44 = icmp ne i32 %bf.clear43, 0, !dbg !2920
  br i1 %tobool44, label %cond.true.45, label %cond.false.56, !dbg !2920

cond.true.45:                                     ; preds = %if.end.35
  %59 = load %struct._object*, %struct._object** %item, align 8, !dbg !2921, !tbaa !1046
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*, !dbg !2923
  %state46 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3, !dbg !2924
  %61 = bitcast %struct.anon* %state46 to i32*, !dbg !2925
  %bf.load47 = load i32, i32* %61, align 4, !dbg !2925
  %bf.lshr48 = lshr i32 %bf.load47, 6, !dbg !2925
  %bf.clear49 = and i32 %bf.lshr48, 1, !dbg !2925
  %tobool50 = icmp ne i32 %bf.clear49, 0, !dbg !2926
  br i1 %tobool50, label %cond.true.51, label %cond.false.52, !dbg !2926

cond.true.51:                                     ; preds = %cond.true.45
  %62 = load %struct._object*, %struct._object** %item, align 8, !dbg !2927, !tbaa !1046
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*, !dbg !2929
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i64 1, !dbg !2930
  %64 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !2931
  br label %cond.end.54, !dbg !2926

cond.false.52:                                    ; preds = %cond.true.45
  %65 = load %struct._object*, %struct._object** %item, align 8, !dbg !2932, !tbaa !1046
  %66 = bitcast %struct._object* %65 to %struct.PyCompactUnicodeObject*, !dbg !2934
  %add.ptr53 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %66, i64 1, !dbg !2935
  %67 = bitcast %struct.PyCompactUnicodeObject* %add.ptr53 to i8*, !dbg !2936
  br label %cond.end.54, !dbg !2926

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.51
  %cond55 = phi i8* [ %64, %cond.true.51 ], [ %67, %cond.false.52 ], !dbg !2926
  br label %cond.end.58, !dbg !2937

cond.false.56:                                    ; preds = %if.end.35
  %68 = load %struct._object*, %struct._object** %item, align 8, !dbg !2940, !tbaa !1046
  %69 = bitcast %struct._object* %68 to %struct.PyUnicodeObject*, !dbg !2942
  %data57 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %69, i32 0, i32 1, !dbg !2943
  %any = bitcast %union.anon* %data57 to i8**, !dbg !2944
  %70 = load i8*, i8** %any, align 8, !dbg !2944, !tbaa !1046
  br label %cond.end.58, !dbg !2920

cond.end.58:                                      ; preds = %cond.false.56, %cond.end.54
  %cond59 = phi i8* [ %cond55, %cond.end.54 ], [ %70, %cond.false.56 ], !dbg !2920
  store i8* %cond59, i8** %data, align 8, !dbg !2945, !tbaa !1046
  store i32 0, i32* %dot_count, align 4, !dbg !2948, !tbaa !2156
  store i64 0, i64* %char_idx, align 8, !dbg !2949, !tbaa !1093
  br label %for.cond.60, !dbg !2951

for.cond.60:                                      ; preds = %for.inc, %cond.end.58
  %71 = load i64, i64* %char_idx, align 8, !dbg !2952, !tbaa !1093
  %72 = load i64, i64* %item_len, align 8, !dbg !2956, !tbaa !1093
  %cmp61 = icmp slt i64 %71, %72, !dbg !2957
  br i1 %cmp61, label %for.body.62, label %for.end, !dbg !2958

for.body.62:                                      ; preds = %for.cond.60
  %73 = load i32, i32* %kind, align 4, !dbg !2959, !tbaa !2156
  %cmp63 = icmp eq i32 %73, 1, !dbg !2962
  br i1 %cmp63, label %cond.true.64, label %cond.false.66, !dbg !2963

cond.true.64:                                     ; preds = %for.body.62
  %74 = load i64, i64* %char_idx, align 8, !dbg !2964, !tbaa !1093
  %75 = load i8*, i8** %data, align 8, !dbg !2966, !tbaa !1046
  %arrayidx65 = getelementptr i8, i8* %75, i64 %74, !dbg !2967
  %76 = load i8, i8* %arrayidx65, align 1, !dbg !2967, !tbaa !2318
  %conv = zext i8 %76 to i32, !dbg !2967
  br label %cond.end.76, !dbg !2963

cond.false.66:                                    ; preds = %for.body.62
  %77 = load i32, i32* %kind, align 4, !dbg !2968, !tbaa !2156
  %cmp67 = icmp eq i32 %77, 2, !dbg !2970
  br i1 %cmp67, label %cond.true.69, label %cond.false.72, !dbg !2971

cond.true.69:                                     ; preds = %cond.false.66
  %78 = load i64, i64* %char_idx, align 8, !dbg !2972, !tbaa !1093
  %79 = load i8*, i8** %data, align 8, !dbg !2974, !tbaa !1046
  %80 = bitcast i8* %79 to i16*, !dbg !2975
  %arrayidx70 = getelementptr i16, i16* %80, i64 %78, !dbg !2976
  %81 = load i16, i16* %arrayidx70, align 2, !dbg !2976, !tbaa !2977
  %conv71 = zext i16 %81 to i32, !dbg !2976
  br label %cond.end.74, !dbg !2971

cond.false.72:                                    ; preds = %cond.false.66
  %82 = load i64, i64* %char_idx, align 8, !dbg !2979, !tbaa !1093
  %83 = load i8*, i8** %data, align 8, !dbg !2981, !tbaa !1046
  %84 = bitcast i8* %83 to i32*, !dbg !2982
  %arrayidx73 = getelementptr i32, i32* %84, i64 %82, !dbg !2983
  %85 = load i32, i32* %arrayidx73, align 4, !dbg !2983, !tbaa !2156
  br label %cond.end.74, !dbg !2971

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.69
  %cond75 = phi i32 [ %conv71, %cond.true.69 ], [ %85, %cond.false.72 ], !dbg !2971
  br label %cond.end.76, !dbg !2984

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.64
  %cond77 = phi i32 [ %conv, %cond.true.64 ], [ %cond75, %cond.end.74 ], !dbg !2963
  %cmp78 = icmp eq i32 %cond77, 46, !dbg !2987
  br i1 %cmp78, label %if.then.80, label %if.end.81, !dbg !2990

if.then.80:                                       ; preds = %cond.end.76
  %86 = load i32, i32* %dot_count, align 4, !dbg !2991, !tbaa !2156
  %inc = add i32 %86, 1, !dbg !2991
  store i32 %inc, i32* %dot_count, align 4, !dbg !2991, !tbaa !2156
  br label %if.end.81, !dbg !2991

if.end.81:                                        ; preds = %if.then.80, %cond.end.76
  br label %for.inc, !dbg !2992

for.inc:                                          ; preds = %if.end.81
  %87 = load i64, i64* %char_idx, align 8, !dbg !2993, !tbaa !1093
  %inc82 = add i64 %87, 1, !dbg !2993
  store i64 %inc82, i64* %char_idx, align 8, !dbg !2993, !tbaa !1093
  br label %for.cond.60, !dbg !2994

for.end:                                          ; preds = %for.cond.60
  %88 = load i32, i32* %dot_count, align 4, !dbg !2995, !tbaa !2156
  %cmp83 = icmp eq i32 %88, 0, !dbg !2996
  br i1 %cmp83, label %if.then.85, label %if.else.90, !dbg !2997

if.then.85:                                       ; preds = %for.end
  %89 = load %struct._object*, %struct._object** %item, align 8, !dbg !2998, !tbaa !1046
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0, !dbg !3000
  %90 = load i64, i64* %ob_refcnt86, align 8, !dbg !3001, !tbaa !1061
  %inc87 = add i64 %90, 1, !dbg !3001
  store i64 %inc87, i64* %ob_refcnt86, align 8, !dbg !3001, !tbaa !1061
  call void @PyUnicode_InternInPlace(%struct._object** %item), !dbg !3002
  %91 = load %struct._object*, %struct._object** %item, align 8, !dbg !3003, !tbaa !1046
  %92 = load i64, i64* %idx, align 8, !dbg !3004, !tbaa !1093
  %93 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3005, !tbaa !1046
  %94 = bitcast %struct._object* %93 to %struct.PyTupleObject*, !dbg !3006
  %ob_item88 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %94, i32 0, i32 1, !dbg !3007
  %arrayidx89 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item88, i32 0, i64 %92, !dbg !3008
  store %struct._object* %91, %struct._object** %arrayidx89, align 8, !dbg !3009, !tbaa !1046
  br label %if.end.211, !dbg !3010

if.else.90:                                       ; preds = %for.end
  %95 = bitcast %struct._object** %attr_chain to i8*, !dbg !3011
  call void @llvm.lifetime.start(i64 8, i8* %95) #1, !dbg !3011
  call void @llvm.dbg.declare(metadata %struct._object** %attr_chain, metadata !892, metadata !1042), !dbg !3012
  %96 = load i32, i32* %dot_count, align 4, !dbg !3013, !tbaa !2156
  %add = add i32 %96, 1, !dbg !3014
  %conv91 = sext i32 %add to i64, !dbg !3013
  %call92 = call %struct._object* @PyTuple_New(i64 %conv91), !dbg !3015
  store %struct._object* %call92, %struct._object** %attr_chain, align 8, !dbg !3012, !tbaa !1046
  %97 = bitcast %struct._object** %attr_chain_item to i8*, !dbg !3016
  call void @llvm.lifetime.start(i64 8, i8* %97) #1, !dbg !3016
  call void @llvm.dbg.declare(metadata %struct._object** %attr_chain_item, metadata !895, metadata !1042), !dbg !3017
  %98 = bitcast i64* %unibuff_from to i8*, !dbg !3018
  call void @llvm.lifetime.start(i64 8, i8* %98) #1, !dbg !3018
  call void @llvm.dbg.declare(metadata i64* %unibuff_from, metadata !896, metadata !1042), !dbg !3019
  store i64 0, i64* %unibuff_from, align 8, !dbg !3019, !tbaa !1093
  %99 = bitcast i64* %unibuff_till to i8*, !dbg !3020
  call void @llvm.lifetime.start(i64 8, i8* %99) #1, !dbg !3020
  call void @llvm.dbg.declare(metadata i64* %unibuff_till, metadata !897, metadata !1042), !dbg !3021
  store i64 0, i64* %unibuff_till, align 8, !dbg !3021, !tbaa !1093
  %100 = bitcast i64* %attr_chain_idx to i8*, !dbg !3022
  call void @llvm.lifetime.start(i64 8, i8* %100) #1, !dbg !3022
  call void @llvm.dbg.declare(metadata i64* %attr_chain_idx, metadata !898, metadata !1042), !dbg !3023
  store i64 0, i64* %attr_chain_idx, align 8, !dbg !3023, !tbaa !1093
  %101 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3024, !tbaa !1046
  %cmp93 = icmp eq %struct._object* %101, null, !dbg !3025
  br i1 %cmp93, label %if.then.95, label %if.end.109, !dbg !3026

if.then.95:                                       ; preds = %if.else.90
  br label %do.body.96, !dbg !3027

do.body.96:                                       ; preds = %if.then.95
  %102 = bitcast %struct._object** %_py_decref_tmp97 to i8*, !dbg !3028
  call void @llvm.lifetime.start(i64 8, i8* %102) #1, !dbg !3028
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp97, metadata !899, metadata !1042), !dbg !3030
  %103 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3031, !tbaa !1046
  store %struct._object* %103, %struct._object** %_py_decref_tmp97, align 8, !dbg !3030, !tbaa !1046
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !3032, !tbaa !1046
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !3034
  %105 = load i64, i64* %ob_refcnt98, align 8, !dbg !3035, !tbaa !1061
  %dec99 = add i64 %105, -1, !dbg !3035
  store i64 %dec99, i64* %ob_refcnt98, align 8, !dbg !3035, !tbaa !1061
  %cmp100 = icmp ne i64 %dec99, 0, !dbg !3036
  br i1 %cmp100, label %if.then.102, label %if.else.103, !dbg !3037

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106, !dbg !3038

if.else.103:                                      ; preds = %do.body.96
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !3040, !tbaa !1046
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !3042
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !3042, !tbaa !2026
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !3043
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !3043, !tbaa !2386
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8, !dbg !3044, !tbaa !1046
  call void %108(%struct._object* %109), !dbg !3045
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %110 = bitcast %struct._object** %_py_decref_tmp97 to i8*, !dbg !3046
  call void @llvm.lifetime.end(i64 8, i8* %110) #1, !dbg !3046
  br label %do.cond.107, !dbg !3048

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !3049

do.end.108:                                       ; preds = %do.cond.107
  store %struct._object* null, %struct._object** %retval, !dbg !3051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3051

if.end.109:                                       ; preds = %if.else.90
  br label %for.cond.110, !dbg !3052

for.cond.110:                                     ; preds = %for.inc.169, %if.end.109
  %111 = load i32, i32* %dot_count, align 4, !dbg !3053, !tbaa !2156
  %cmp111 = icmp sgt i32 %111, 0, !dbg !3056
  br i1 %cmp111, label %for.body.113, label %for.end.171, !dbg !3057

for.body.113:                                     ; preds = %for.cond.110
  br label %while.cond, !dbg !3058

while.cond:                                       ; preds = %while.body, %for.body.113
  %112 = load i32, i32* %kind, align 4, !dbg !3059, !tbaa !2156
  %cmp114 = icmp eq i32 %112, 1, !dbg !3062
  br i1 %cmp114, label %cond.true.116, label %cond.false.119, !dbg !3063

cond.true.116:                                    ; preds = %while.cond
  %113 = load i64, i64* %unibuff_till, align 8, !dbg !3064, !tbaa !1093
  %114 = load i8*, i8** %data, align 8, !dbg !3066, !tbaa !1046
  %arrayidx117 = getelementptr i8, i8* %114, i64 %113, !dbg !3067
  %115 = load i8, i8* %arrayidx117, align 1, !dbg !3067, !tbaa !2318
  %conv118 = zext i8 %115 to i32, !dbg !3067
  br label %cond.end.129, !dbg !3063

cond.false.119:                                   ; preds = %while.cond
  %116 = load i32, i32* %kind, align 4, !dbg !3068, !tbaa !2156
  %cmp120 = icmp eq i32 %116, 2, !dbg !3070
  br i1 %cmp120, label %cond.true.122, label %cond.false.125, !dbg !3071

cond.true.122:                                    ; preds = %cond.false.119
  %117 = load i64, i64* %unibuff_till, align 8, !dbg !3072, !tbaa !1093
  %118 = load i8*, i8** %data, align 8, !dbg !3074, !tbaa !1046
  %119 = bitcast i8* %118 to i16*, !dbg !3075
  %arrayidx123 = getelementptr i16, i16* %119, i64 %117, !dbg !3076
  %120 = load i16, i16* %arrayidx123, align 2, !dbg !3076, !tbaa !2977
  %conv124 = zext i16 %120 to i32, !dbg !3076
  br label %cond.end.127, !dbg !3071

cond.false.125:                                   ; preds = %cond.false.119
  %121 = load i64, i64* %unibuff_till, align 8, !dbg !3077, !tbaa !1093
  %122 = load i8*, i8** %data, align 8, !dbg !3079, !tbaa !1046
  %123 = bitcast i8* %122 to i32*, !dbg !3080
  %arrayidx126 = getelementptr i32, i32* %123, i64 %121, !dbg !3081
  %124 = load i32, i32* %arrayidx126, align 4, !dbg !3081, !tbaa !2156
  br label %cond.end.127, !dbg !3071

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.122
  %cond128 = phi i32 [ %conv124, %cond.true.122 ], [ %124, %cond.false.125 ], !dbg !3071
  br label %cond.end.129, !dbg !3082

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.116
  %cond130 = phi i32 [ %conv118, %cond.true.116 ], [ %cond128, %cond.end.127 ], !dbg !3063
  %cmp131 = icmp ne i32 %cond130, 46, !dbg !3085
  br i1 %cmp131, label %while.body, label %while.end, !dbg !3058

while.body:                                       ; preds = %cond.end.129
  %125 = load i64, i64* %unibuff_till, align 8, !dbg !3088, !tbaa !1093
  %inc133 = add i64 %125, 1, !dbg !3088
  store i64 %inc133, i64* %unibuff_till, align 8, !dbg !3088, !tbaa !1093
  br label %while.cond, !dbg !3058

while.end:                                        ; preds = %cond.end.129
  %126 = load %struct._object*, %struct._object** %item, align 8, !dbg !3090, !tbaa !1046
  %127 = load i64, i64* %unibuff_from, align 8, !dbg !3091, !tbaa !1093
  %128 = load i64, i64* %unibuff_till, align 8, !dbg !3092, !tbaa !1093
  %call134 = call %struct._object* @PyUnicode_Substring(%struct._object* %126, i64 %127, i64 %128), !dbg !3093
  store %struct._object* %call134, %struct._object** %attr_chain_item, align 8, !dbg !3094, !tbaa !1046
  %129 = load %struct._object*, %struct._object** %attr_chain_item, align 8, !dbg !3095, !tbaa !1046
  %cmp135 = icmp eq %struct._object* %129, null, !dbg !3096
  br i1 %cmp135, label %if.then.137, label %if.end.164, !dbg !3097

if.then.137:                                      ; preds = %while.end
  br label %do.body.138, !dbg !3098

do.body.138:                                      ; preds = %if.then.137
  %130 = bitcast %struct._object** %_py_decref_tmp139 to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 8, i8* %130) #1, !dbg !3099
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp139, metadata !903, metadata !1042), !dbg !3101
  %131 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3102, !tbaa !1046
  store %struct._object* %131, %struct._object** %_py_decref_tmp139, align 8, !dbg !3101, !tbaa !1046
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8, !dbg !3103, !tbaa !1046
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0, !dbg !3105
  %133 = load i64, i64* %ob_refcnt140, align 8, !dbg !3106, !tbaa !1061
  %dec141 = add i64 %133, -1, !dbg !3106
  store i64 %dec141, i64* %ob_refcnt140, align 8, !dbg !3106, !tbaa !1061
  %cmp142 = icmp ne i64 %dec141, 0, !dbg !3107
  br i1 %cmp142, label %if.then.144, label %if.else.145, !dbg !3108

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148, !dbg !3109

if.else.145:                                      ; preds = %do.body.138
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8, !dbg !3111, !tbaa !1046
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1, !dbg !3113
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8, !dbg !3113, !tbaa !2026
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4, !dbg !3114
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8, !dbg !3114, !tbaa !2386
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8, !dbg !3115, !tbaa !1046
  call void %136(%struct._object* %137), !dbg !3116
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  %138 = bitcast %struct._object** %_py_decref_tmp139 to i8*, !dbg !3117
  call void @llvm.lifetime.end(i64 8, i8* %138) #1, !dbg !3117
  br label %do.cond.149, !dbg !3119

do.cond.149:                                      ; preds = %if.end.148
  br label %do.end.150, !dbg !3120

do.end.150:                                       ; preds = %do.cond.149
  br label %do.body.151, !dbg !3122

do.body.151:                                      ; preds = %do.end.150
  %139 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !3123
  call void @llvm.lifetime.start(i64 8, i8* %139) #1, !dbg !3123
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp152, metadata !910, metadata !1042), !dbg !3125
  %140 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3126, !tbaa !1046
  store %struct._object* %140, %struct._object** %_py_decref_tmp152, align 8, !dbg !3125, !tbaa !1046
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !3127, !tbaa !1046
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0, !dbg !3129
  %142 = load i64, i64* %ob_refcnt153, align 8, !dbg !3130, !tbaa !1061
  %dec154 = add i64 %142, -1, !dbg !3130
  store i64 %dec154, i64* %ob_refcnt153, align 8, !dbg !3130, !tbaa !1061
  %cmp155 = icmp ne i64 %dec154, 0, !dbg !3131
  br i1 %cmp155, label %if.then.157, label %if.else.158, !dbg !3132

if.then.157:                                      ; preds = %do.body.151
  br label %if.end.161, !dbg !3133

if.else.158:                                      ; preds = %do.body.151
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !3135, !tbaa !1046
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1, !dbg !3137
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8, !dbg !3137, !tbaa !2026
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4, !dbg !3138
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8, !dbg !3138, !tbaa !2386
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !3139, !tbaa !1046
  call void %145(%struct._object* %146), !dbg !3140
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  %147 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !3141
  call void @llvm.lifetime.end(i64 8, i8* %147) #1, !dbg !3141
  br label %do.cond.162, !dbg !3142

do.cond.162:                                      ; preds = %if.end.161
  br label %do.end.163, !dbg !3143

do.end.163:                                       ; preds = %do.cond.162
  store %struct._object* null, %struct._object** %retval, !dbg !3145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3145

if.end.164:                                       ; preds = %while.end
  call void @PyUnicode_InternInPlace(%struct._object** %attr_chain_item), !dbg !3146
  %148 = load %struct._object*, %struct._object** %attr_chain_item, align 8, !dbg !3147, !tbaa !1046
  %149 = load i64, i64* %attr_chain_idx, align 8, !dbg !3148, !tbaa !1093
  %150 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3149, !tbaa !1046
  %151 = bitcast %struct._object* %150 to %struct.PyTupleObject*, !dbg !3150
  %ob_item165 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %151, i32 0, i32 1, !dbg !3151
  %arrayidx166 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item165, i32 0, i64 %149, !dbg !3152
  store %struct._object* %148, %struct._object** %arrayidx166, align 8, !dbg !3153, !tbaa !1046
  %152 = load i64, i64* %attr_chain_idx, align 8, !dbg !3154, !tbaa !1093
  %inc167 = add i64 %152, 1, !dbg !3154
  store i64 %inc167, i64* %attr_chain_idx, align 8, !dbg !3154, !tbaa !1093
  %153 = load i64, i64* %unibuff_till, align 8, !dbg !3155, !tbaa !1093
  %add168 = add i64 %153, 1, !dbg !3156
  store i64 %add168, i64* %unibuff_from, align 8, !dbg !3157, !tbaa !1093
  store i64 %add168, i64* %unibuff_till, align 8, !dbg !3158, !tbaa !1093
  br label %for.inc.169, !dbg !3159

for.inc.169:                                      ; preds = %if.end.164
  %154 = load i32, i32* %dot_count, align 4, !dbg !3160, !tbaa !2156
  %dec170 = add i32 %154, -1, !dbg !3160
  store i32 %dec170, i32* %dot_count, align 4, !dbg !3160, !tbaa !2156
  br label %for.cond.110, !dbg !3161

for.end.171:                                      ; preds = %for.cond.110
  %155 = load %struct._object*, %struct._object** %item, align 8, !dbg !3162, !tbaa !1046
  %156 = load i64, i64* %unibuff_from, align 8, !dbg !3163, !tbaa !1093
  %157 = load i64, i64* %item_len, align 8, !dbg !3164, !tbaa !1093
  %call172 = call %struct._object* @PyUnicode_Substring(%struct._object* %155, i64 %156, i64 %157), !dbg !3165
  store %struct._object* %call172, %struct._object** %attr_chain_item, align 8, !dbg !3166, !tbaa !1046
  %158 = load %struct._object*, %struct._object** %attr_chain_item, align 8, !dbg !3167, !tbaa !1046
  %cmp173 = icmp eq %struct._object* %158, null, !dbg !3168
  br i1 %cmp173, label %if.then.175, label %if.end.202, !dbg !3169

if.then.175:                                      ; preds = %for.end.171
  br label %do.body.176, !dbg !3170

do.body.176:                                      ; preds = %if.then.175
  %159 = bitcast %struct._object** %_py_decref_tmp177 to i8*, !dbg !3171
  call void @llvm.lifetime.start(i64 8, i8* %159) #1, !dbg !3171
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp177, metadata !912, metadata !1042), !dbg !3173
  %160 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3174, !tbaa !1046
  store %struct._object* %160, %struct._object** %_py_decref_tmp177, align 8, !dbg !3173, !tbaa !1046
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !3175, !tbaa !1046
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0, !dbg !3177
  %162 = load i64, i64* %ob_refcnt178, align 8, !dbg !3178, !tbaa !1061
  %dec179 = add i64 %162, -1, !dbg !3178
  store i64 %dec179, i64* %ob_refcnt178, align 8, !dbg !3178, !tbaa !1061
  %cmp180 = icmp ne i64 %dec179, 0, !dbg !3179
  br i1 %cmp180, label %if.then.182, label %if.else.183, !dbg !3180

if.then.182:                                      ; preds = %do.body.176
  br label %if.end.186, !dbg !3181

if.else.183:                                      ; preds = %do.body.176
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !3183, !tbaa !1046
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1, !dbg !3185
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8, !dbg !3185, !tbaa !2026
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4, !dbg !3186
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8, !dbg !3186, !tbaa !2386
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !3187, !tbaa !1046
  call void %165(%struct._object* %166), !dbg !3188
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  %167 = bitcast %struct._object** %_py_decref_tmp177 to i8*, !dbg !3189
  call void @llvm.lifetime.end(i64 8, i8* %167) #1, !dbg !3189
  br label %do.cond.187, !dbg !3191

do.cond.187:                                      ; preds = %if.end.186
  br label %do.end.188, !dbg !3192

do.end.188:                                       ; preds = %do.cond.187
  br label %do.body.189, !dbg !3194

do.body.189:                                      ; preds = %do.end.188
  %168 = bitcast %struct._object** %_py_decref_tmp190 to i8*, !dbg !3195
  call void @llvm.lifetime.start(i64 8, i8* %168) #1, !dbg !3195
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp190, metadata !916, metadata !1042), !dbg !3197
  %169 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3198, !tbaa !1046
  store %struct._object* %169, %struct._object** %_py_decref_tmp190, align 8, !dbg !3197, !tbaa !1046
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8, !dbg !3199, !tbaa !1046
  %ob_refcnt191 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0, !dbg !3201
  %171 = load i64, i64* %ob_refcnt191, align 8, !dbg !3202, !tbaa !1061
  %dec192 = add i64 %171, -1, !dbg !3202
  store i64 %dec192, i64* %ob_refcnt191, align 8, !dbg !3202, !tbaa !1061
  %cmp193 = icmp ne i64 %dec192, 0, !dbg !3203
  br i1 %cmp193, label %if.then.195, label %if.else.196, !dbg !3204

if.then.195:                                      ; preds = %do.body.189
  br label %if.end.199, !dbg !3205

if.else.196:                                      ; preds = %do.body.189
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8, !dbg !3207, !tbaa !1046
  %ob_type197 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1, !dbg !3209
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type197, align 8, !dbg !3209, !tbaa !2026
  %tp_dealloc198 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4, !dbg !3210
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc198, align 8, !dbg !3210, !tbaa !2386
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8, !dbg !3211, !tbaa !1046
  call void %174(%struct._object* %175), !dbg !3212
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.196, %if.then.195
  %176 = bitcast %struct._object** %_py_decref_tmp190 to i8*, !dbg !3213
  call void @llvm.lifetime.end(i64 8, i8* %176) #1, !dbg !3213
  br label %do.cond.200, !dbg !3214

do.cond.200:                                      ; preds = %if.end.199
  br label %do.end.201, !dbg !3215

do.end.201:                                       ; preds = %do.cond.200
  store %struct._object* null, %struct._object** %retval, !dbg !3217
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3217

if.end.202:                                       ; preds = %for.end.171
  call void @PyUnicode_InternInPlace(%struct._object** %attr_chain_item), !dbg !3218
  %177 = load %struct._object*, %struct._object** %attr_chain_item, align 8, !dbg !3219, !tbaa !1046
  %178 = load i64, i64* %attr_chain_idx, align 8, !dbg !3220, !tbaa !1093
  %179 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3221, !tbaa !1046
  %180 = bitcast %struct._object* %179 to %struct.PyTupleObject*, !dbg !3222
  %ob_item203 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %180, i32 0, i32 1, !dbg !3223
  %arrayidx204 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item203, i32 0, i64 %178, !dbg !3224
  store %struct._object* %177, %struct._object** %arrayidx204, align 8, !dbg !3225, !tbaa !1046
  %181 = load %struct._object*, %struct._object** %attr_chain, align 8, !dbg !3226, !tbaa !1046
  %182 = load i64, i64* %idx, align 8, !dbg !3227, !tbaa !1093
  %183 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3228, !tbaa !1046
  %184 = bitcast %struct._object* %183 to %struct.PyTupleObject*, !dbg !3229
  %ob_item205 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %184, i32 0, i32 1, !dbg !3230
  %arrayidx206 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item205, i32 0, i64 %182, !dbg !3231
  store %struct._object* %181, %struct._object** %arrayidx206, align 8, !dbg !3232, !tbaa !1046
  store i32 0, i32* %cleanup.dest.slot, !dbg !3233
  br label %cleanup, !dbg !3233

cleanup:                                          ; preds = %if.end.202, %do.end.201, %do.end.163, %do.end.108
  %185 = bitcast i64* %attr_chain_idx to i8*, !dbg !3234
  call void @llvm.lifetime.end(i64 8, i8* %185) #1, !dbg !3234
  %186 = bitcast i64* %unibuff_till to i8*, !dbg !3234
  call void @llvm.lifetime.end(i64 8, i8* %186) #1, !dbg !3234
  %187 = bitcast i64* %unibuff_from to i8*, !dbg !3234
  call void @llvm.lifetime.end(i64 8, i8* %187) #1, !dbg !3234
  %188 = bitcast %struct._object** %attr_chain_item to i8*, !dbg !3234
  call void @llvm.lifetime.end(i64 8, i8* %188) #1, !dbg !3234
  %189 = bitcast %struct._object** %attr_chain to i8*, !dbg !3234
  call void @llvm.lifetime.end(i64 8, i8* %189) #1, !dbg !3234
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.211

if.end.211:                                       ; preds = %cleanup.cont, %if.then.85
  store i32 0, i32* %cleanup.dest.slot, !dbg !3236
  br label %cleanup.212, !dbg !3236

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.212

cleanup.212:                                      ; preds = %NewDefault, %if.end.211, %do.end.34, %do.end
  %190 = bitcast i32* %dot_count to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 4, i8* %190) #1, !dbg !3237
  %191 = bitcast i32* %kind to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 4, i8* %191) #1, !dbg !3237
  %192 = bitcast i8** %data to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 8, i8* %192) #1, !dbg !3237
  %193 = bitcast i64* %item_len to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 8, i8* %193) #1, !dbg !3237
  %194 = bitcast %struct._object** %item to i8*, !dbg !3237
  call void @llvm.lifetime.end(i64 8, i8* %194) #1, !dbg !3237
  %cleanup.dest.217 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.212
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.217, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.218, label %NewDefault.1

cleanup.cont.218:                                 ; preds = %LeafBlock.2
  br label %for.inc.219, !dbg !3238

for.inc.219:                                      ; preds = %cleanup.cont.218
  %195 = load i64, i64* %idx, align 8, !dbg !3239, !tbaa !1093
  %inc220 = add i64 %195, 1, !dbg !3239
  store i64 %inc220, i64* %idx, align 8, !dbg !3239, !tbaa !1093
  br label %for.cond, !dbg !3240

for.end.221:                                      ; preds = %for.cond
  %call222 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @attrgetter_type), !dbg !3241
  %196 = bitcast %struct._object* %call222 to %struct.attrgetterobject*, !dbg !3242
  store %struct.attrgetterobject* %196, %struct.attrgetterobject** %ag, align 8, !dbg !3243, !tbaa !1046
  %197 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8, !dbg !3244, !tbaa !1046
  %cmp223 = icmp eq %struct.attrgetterobject* %197, null, !dbg !3245
  br i1 %cmp223, label %if.then.225, label %if.end.239, !dbg !3246

if.then.225:                                      ; preds = %for.end.221
  br label %do.body.226, !dbg !3247

do.body.226:                                      ; preds = %if.then.225
  %198 = bitcast %struct._object** %_py_decref_tmp227 to i8*, !dbg !3248
  call void @llvm.lifetime.start(i64 8, i8* %198) #1, !dbg !3248
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp227, metadata !918, metadata !1042), !dbg !3250
  %199 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3251, !tbaa !1046
  store %struct._object* %199, %struct._object** %_py_decref_tmp227, align 8, !dbg !3250, !tbaa !1046
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !3252, !tbaa !1046
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 0, !dbg !3254
  %201 = load i64, i64* %ob_refcnt228, align 8, !dbg !3255, !tbaa !1061
  %dec229 = add i64 %201, -1, !dbg !3255
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !3255, !tbaa !1061
  %cmp230 = icmp ne i64 %dec229, 0, !dbg !3256
  br i1 %cmp230, label %if.then.232, label %if.else.233, !dbg !3257

if.then.232:                                      ; preds = %do.body.226
  br label %if.end.236, !dbg !3258

if.else.233:                                      ; preds = %do.body.226
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !3260, !tbaa !1046
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 1, !dbg !3262
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8, !dbg !3262, !tbaa !2026
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i32 0, i32 4, !dbg !3263
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !3263, !tbaa !2386
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !3264, !tbaa !1046
  call void %204(%struct._object* %205), !dbg !3265
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.then.232
  %206 = bitcast %struct._object** %_py_decref_tmp227 to i8*, !dbg !3266
  call void @llvm.lifetime.end(i64 8, i8* %206) #1, !dbg !3266
  br label %do.cond.237, !dbg !3268

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238, !dbg !3269

do.end.238:                                       ; preds = %do.cond.237
  store %struct._object* null, %struct._object** %retval, !dbg !3271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !3271

if.end.239:                                       ; preds = %for.end.221
  %207 = load %struct._object*, %struct._object** %attr, align 8, !dbg !3272, !tbaa !1046
  %208 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8, !dbg !3273, !tbaa !1046
  %attr240 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %208, i32 0, i32 2, !dbg !3274
  store %struct._object* %207, %struct._object** %attr240, align 8, !dbg !3275, !tbaa !2363
  %209 = load i64, i64* %nattrs, align 8, !dbg !3276, !tbaa !1093
  %210 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8, !dbg !3277, !tbaa !1046
  %nattrs241 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %210, i32 0, i32 1, !dbg !3278
  store i64 %209, i64* %nattrs241, align 8, !dbg !3279, !tbaa !2414
  %211 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8, !dbg !3280, !tbaa !1046
  %212 = bitcast %struct.attrgetterobject* %211 to i8*, !dbg !3280
  call void @PyObject_GC_Track(i8* %212), !dbg !3281
  %213 = load %struct.attrgetterobject*, %struct.attrgetterobject** %ag, align 8, !dbg !3282, !tbaa !1046
  %214 = bitcast %struct.attrgetterobject* %213 to %struct._object*, !dbg !3283
  store %struct._object* %214, %struct._object** %retval, !dbg !3284
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242, !dbg !3284

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.242

cleanup.242:                                      ; preds = %NewDefault.1, %if.end.239, %do.end.238, %if.then.9, %if.then.4, %if.then
  %215 = bitcast i64* %char_idx to i8*, !dbg !3285
  call void @llvm.lifetime.end(i64 8, i8* %215) #1, !dbg !3285
  %216 = bitcast i64* %idx to i8*, !dbg !3285
  call void @llvm.lifetime.end(i64 8, i8* %216) #1, !dbg !3285
  %217 = bitcast i64* %nattrs to i8*, !dbg !3285
  call void @llvm.lifetime.end(i64 8, i8* %217) #1, !dbg !3285
  %218 = bitcast %struct._object** %attr to i8*, !dbg !3285
  call void @llvm.lifetime.end(i64 8, i8* %218) #1, !dbg !3285
  %219 = bitcast %struct.attrgetterobject** %ag to i8*, !dbg !3285
  call void @llvm.lifetime.end(i64 8, i8* %219) #1, !dbg !3285
  %220 = load %struct._object*, %struct._object** %retval, !dbg !3285
  ret %struct._object* %220, !dbg !3285
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !842, metadata !1042), !dbg !3286
  store %struct._object* %attr, %struct._object** %attr.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %attr.addr, metadata !843, metadata !1042), !dbg !3287
  %0 = bitcast %struct._object** %newobj to i8*, !dbg !3288
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3288
  call void @llvm.dbg.declare(metadata %struct._object** %newobj, metadata !844, metadata !1042), !dbg !3289
  %1 = load %struct._object*, %struct._object** %attr.addr, align 8, !dbg !3290, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !3291
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3291, !tbaa !2026
  %cmp = icmp eq %struct._typeobject* %2, @PyTuple_Type, !dbg !3292
  br i1 %cmp, label %if.then, label %if.else.12, !dbg !3293

if.then:                                          ; preds = %entry
  %3 = bitcast i64* %name_idx to i8*, !dbg !3294
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3294
  call void @llvm.dbg.declare(metadata i64* %name_idx, metadata !845, metadata !1042), !dbg !3295
  store i64 0, i64* %name_idx, align 8, !dbg !3295, !tbaa !1093
  %4 = bitcast i64* %name_count to i8*, !dbg !3294
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3294
  call void @llvm.dbg.declare(metadata i64* %name_count, metadata !848, metadata !1042), !dbg !3296
  %5 = bitcast %struct._object** %attr_name to i8*, !dbg !3297
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3297
  call void @llvm.dbg.declare(metadata %struct._object** %attr_name, metadata !849, metadata !1042), !dbg !3298
  %6 = load %struct._object*, %struct._object** %attr.addr, align 8, !dbg !3299, !tbaa !1046
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*, !dbg !3300
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1, !dbg !3301
  %8 = load i64, i64* %ob_size, align 8, !dbg !3301, !tbaa !2552
  store i64 %8, i64* %name_count, align 8, !dbg !3302, !tbaa !1093
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3303, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3304
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !3305, !tbaa !1061
  %inc = add i64 %10, 1, !dbg !3305
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3305, !tbaa !1061
  store i64 0, i64* %name_idx, align 8, !dbg !3306, !tbaa !1093
  br label %for.cond, !dbg !3307

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i64, i64* %name_idx, align 8, !dbg !3308, !tbaa !1093
  %12 = load i64, i64* %name_count, align 8, !dbg !3311, !tbaa !1093
  %cmp1 = icmp slt i64 %11, %12, !dbg !3312
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3313

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %name_idx, align 8, !dbg !3314, !tbaa !1093
  %14 = load %struct._object*, %struct._object** %attr.addr, align 8, !dbg !3315, !tbaa !1046
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*, !dbg !3316
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1, !dbg !3317
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %13, !dbg !3318
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3318, !tbaa !1046
  store %struct._object* %16, %struct._object** %attr_name, align 8, !dbg !3319, !tbaa !1046
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3320, !tbaa !1046
  %18 = load %struct._object*, %struct._object** %attr_name, align 8, !dbg !3321, !tbaa !1046
  %call = call %struct._object* @PyObject_GetAttr(%struct._object* %17, %struct._object* %18), !dbg !3322
  store %struct._object* %call, %struct._object** %newobj, align 8, !dbg !3323, !tbaa !1046
  br label %do.body, !dbg !3324

do.body:                                          ; preds = %for.body
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3325
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !3325
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !850, metadata !1042), !dbg !3327
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3328, !tbaa !1046
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !3327, !tbaa !1046
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3329, !tbaa !1046
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !3331
  %22 = load i64, i64* %ob_refcnt2, align 8, !dbg !3332, !tbaa !1061
  %dec = add i64 %22, -1, !dbg !3332
  store i64 %dec, i64* %ob_refcnt2, align 8, !dbg !3332, !tbaa !1061
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3333
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3334

if.then.4:                                        ; preds = %do.body
  br label %if.end, !dbg !3335

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3337, !tbaa !1046
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !3339
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !3339, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !3340
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3340, !tbaa !2386
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3341, !tbaa !1046
  call void %25(%struct._object* %26), !dbg !3342
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3343
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !3343
  br label %do.cond, !dbg !3345

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3346

do.end:                                           ; preds = %do.cond
  %28 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !3348, !tbaa !1046
  %cmp6 = icmp eq %struct._object* %28, null, !dbg !3350
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !3351

if.then.7:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !3352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3352

if.end.8:                                         ; preds = %do.end
  %29 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !3354, !tbaa !1046
  store %struct._object* %29, %struct._object** %obj.addr, align 8, !dbg !3355, !tbaa !1046
  br label %for.inc, !dbg !3356

for.inc:                                          ; preds = %if.end.8
  %30 = load i64, i64* %name_idx, align 8, !dbg !3357, !tbaa !1093
  %inc9 = add i64 %30, 1, !dbg !3357
  store i64 %inc9, i64* %name_idx, align 8, !dbg !3357, !tbaa !1093
  br label %for.cond, !dbg !3358

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !3359
  br label %cleanup, !dbg !3359

cleanup:                                          ; preds = %for.end, %if.then.7
  %31 = bitcast %struct._object** %attr_name to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !3360
  %32 = bitcast i64* %name_count to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !3360
  %33 = bitcast i64* %name_idx to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3360
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.17, !dbg !3362

if.else.12:                                       ; preds = %entry
  %34 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3363, !tbaa !1046
  %35 = load %struct._object*, %struct._object** %attr.addr, align 8, !dbg !3365, !tbaa !1046
  %call13 = call %struct._object* @PyObject_GetAttr(%struct._object* %34, %struct._object* %35), !dbg !3366
  store %struct._object* %call13, %struct._object** %newobj, align 8, !dbg !3367, !tbaa !1046
  %36 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !3368, !tbaa !1046
  %cmp14 = icmp eq %struct._object* %36, null, !dbg !3370
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3371

if.then.15:                                       ; preds = %if.else.12
  store %struct._object* null, %struct._object** %retval, !dbg !3372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !3372

if.end.16:                                        ; preds = %if.else.12
  %37 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !3373, !tbaa !1046
  store %struct._object* %37, %struct._object** %obj.addr, align 8, !dbg !3374, !tbaa !1046
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %cleanup.cont
  %38 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3375, !tbaa !1046
  store %struct._object* %38, %struct._object** %retval, !dbg !3376
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !3376

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.18

cleanup.18:                                       ; preds = %NewDefault, %if.end.17, %if.then.15
  %39 = bitcast %struct._object** %newobj to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !3377
  %40 = load %struct._object*, %struct._object** %retval, !dbg !3377
  ret %struct._object* %40, !dbg !3377
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare void @PyUnicode_InternInPlace(%struct._object**) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @methodcaller_dealloc(%struct.methodcallerobject* %mc) #0 {
entry:
  %mc.addr = alloca %struct.methodcallerobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.methodcallerobject** %mc.addr, metadata !926, metadata !1042), !dbg !3378
  %0 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3379, !tbaa !1046
  %1 = bitcast %struct.methodcallerobject* %0 to i8*, !dbg !3379
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !3380
  br label %do.body, !dbg !3381

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3382
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3382
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !927, metadata !1042), !dbg !3384
  %3 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3385, !tbaa !1046
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %3, i32 0, i32 1, !dbg !3386
  %4 = load %struct._object*, %struct._object** %name, align 8, !dbg !3386, !tbaa !3387
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3384, !tbaa !1046
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3389, !tbaa !1046
  %cmp = icmp ne %struct._object* %5, null, !dbg !3390
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !3391

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !3392

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3394
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !929, metadata !1042), !dbg !3396
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3397, !tbaa !1046
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !3396, !tbaa !1046
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3398, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3400
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3401, !tbaa !1061
  %dec = add i64 %9, -1, !dbg !3401
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3401, !tbaa !1061
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3402
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3403

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !3404

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3406, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3408
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3408, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !3409
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3409, !tbaa !2386
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3410, !tbaa !1046
  call void %12(%struct._object* %13), !dbg !3411
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3412
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3412
  br label %do.cond, !dbg !3414

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3415

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !3417

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3419
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3419
  br label %do.end.6, !dbg !3422

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !3423

do.body.7:                                        ; preds = %do.end.6
  %16 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !3424
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !3424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !932, metadata !1042), !dbg !3426
  %17 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3427, !tbaa !1046
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %17, i32 0, i32 2, !dbg !3428
  %18 = load %struct._object*, %struct._object** %args, align 8, !dbg !3428, !tbaa !3429
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !3426, !tbaa !1046
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !3430, !tbaa !1046
  %cmp9 = icmp ne %struct._object* %19, null, !dbg !3431
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !3432

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !3433

do.body.11:                                       ; preds = %if.then.10
  %20 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !3435
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !3435
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !934, metadata !1042), !dbg !3437
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !3438, !tbaa !1046
  store %struct._object* %21, %struct._object** %_py_decref_tmp12, align 8, !dbg !3437, !tbaa !1046
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !3439, !tbaa !1046
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3441
  %23 = load i64, i64* %ob_refcnt13, align 8, !dbg !3442, !tbaa !1061
  %dec14 = add i64 %23, -1, !dbg !3442
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !3442, !tbaa !1061
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !3443
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !3444

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !3445

if.else.17:                                       ; preds = %do.body.11
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !3447, !tbaa !1046
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3449
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !3449, !tbaa !2026
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3450
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !3450, !tbaa !2386
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !3451, !tbaa !1046
  call void %26(%struct._object* %27), !dbg !3452
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !3453
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !3453
  br label %do.cond.21, !dbg !3455

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3456

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !3458

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %29 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !3460
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3460
  br label %do.end.25, !dbg !3461

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !3462

do.body.26:                                       ; preds = %do.end.25
  %30 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !3463
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !3463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !937, metadata !1042), !dbg !3465
  %31 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3466, !tbaa !1046
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %31, i32 0, i32 3, !dbg !3467
  %32 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !3467, !tbaa !3468
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !3465, !tbaa !1046
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !3469, !tbaa !1046
  %cmp28 = icmp ne %struct._object* %33, null, !dbg !3470
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !3471

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !3472

do.body.30:                                       ; preds = %if.then.29
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3474
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !3474
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !939, metadata !1042), !dbg !3476
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !3477, !tbaa !1046
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !3476, !tbaa !1046
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3478, !tbaa !1046
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3480
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !3481, !tbaa !1061
  %dec33 = add i64 %37, -1, !dbg !3481
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !3481, !tbaa !1061
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !3482
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !3483

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !3484

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3486, !tbaa !1046
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !3488
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !3488, !tbaa !2026
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !3489
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !3489, !tbaa !2386
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3490, !tbaa !1046
  call void %40(%struct._object* %41), !dbg !3491
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3492
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !3492
  br label %do.cond.40, !dbg !3494

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !3495

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !3497

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %43 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !3499
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !3499
  br label %do.end.44, !dbg !3500

do.end.44:                                        ; preds = %if.end.42
  %44 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3501, !tbaa !1046
  %45 = bitcast %struct.methodcallerobject* %44 to i8*, !dbg !3501
  call void @PyObject_GC_Del(i8* %45), !dbg !3502
  ret void, !dbg !3503
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.methodcallerobject** %mc.addr, metadata !946, metadata !1042), !dbg !3504
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !947, metadata !1042), !dbg !3505
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !948, metadata !1042), !dbg !3506
  %0 = bitcast %struct._object** %method to i8*, !dbg !3507
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3507
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !949, metadata !1042), !dbg !3508
  %1 = bitcast %struct._object** %obj to i8*, !dbg !3507
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3507
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !950, metadata !1042), !dbg !3509
  %2 = bitcast %struct._object** %result to i8*, !dbg !3507
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3507
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !951, metadata !1042), !dbg !3510
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3511, !tbaa !1046
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i64 1, i64 1, %struct._object** %obj), !dbg !3513
  %tobool = icmp ne i32 %call, 0, !dbg !3513
  br i1 %tobool, label %if.end, label %if.then, !dbg !3514

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3515
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3515

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3516, !tbaa !1046
  %5 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3517, !tbaa !1046
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %5, i32 0, i32 1, !dbg !3518
  %6 = load %struct._object*, %struct._object** %name, align 8, !dbg !3518, !tbaa !3387
  %call1 = call %struct._object* @PyObject_GetAttr(%struct._object* %4, %struct._object* %6), !dbg !3519
  store %struct._object* %call1, %struct._object** %method, align 8, !dbg !3520, !tbaa !1046
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !3521, !tbaa !1046
  %cmp = icmp eq %struct._object* %7, null, !dbg !3523
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !3524

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3525
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3525

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %method, align 8, !dbg !3526, !tbaa !1046
  %9 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3527, !tbaa !1046
  %args4 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %9, i32 0, i32 2, !dbg !3528
  %10 = load %struct._object*, %struct._object** %args4, align 8, !dbg !3528, !tbaa !3429
  %11 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3529, !tbaa !1046
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %11, i32 0, i32 3, !dbg !3530
  %12 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !3530, !tbaa !3468
  %call5 = call %struct._object* @PyObject_Call(%struct._object* %8, %struct._object* %10, %struct._object* %12), !dbg !3531
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !3532, !tbaa !1046
  br label %do.body, !dbg !3533

do.body:                                          ; preds = %if.end.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3534
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !3534
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !952, metadata !1042), !dbg !3536
  %14 = load %struct._object*, %struct._object** %method, align 8, !dbg !3537, !tbaa !1046
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !3536, !tbaa !1046
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3538, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3540
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3541, !tbaa !1061
  %dec = add i64 %16, -1, !dbg !3541
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3541, !tbaa !1061
  %cmp6 = icmp ne i64 %dec, 0, !dbg !3542
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !3543

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !3544

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3546, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3548
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3548, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !3549
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3549, !tbaa !2386
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3550, !tbaa !1046
  call void %19(%struct._object* %20), !dbg !3551
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3552
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3552
  br label %do.cond, !dbg !3554

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !3555

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** %result, align 8, !dbg !3557, !tbaa !1046
  store %struct._object* %22, %struct._object** %retval, !dbg !3558
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3558

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %23 = bitcast %struct._object** %result to i8*, !dbg !3559
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3559
  %24 = bitcast %struct._object** %obj to i8*, !dbg !3559
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3559
  %25 = bitcast %struct._object** %method to i8*, !dbg !3559
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3559
  %26 = load %struct._object*, %struct._object** %retval, !dbg !3559
  ret %struct._object* %26, !dbg !3559
}

; Function Attrs: nounwind uwtable
define internal i32 @methodcaller_traverse(%struct.methodcallerobject* %mc, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %mc.addr = alloca %struct.methodcallerobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.methodcallerobject* %mc, %struct.methodcallerobject** %mc.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct.methodcallerobject** %mc.addr, metadata !958, metadata !1042), !dbg !3560
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !959, metadata !1042), !dbg !3561
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !960, metadata !1042), !dbg !3562
  br label %do.body, !dbg !3563

do.body:                                          ; preds = %entry
  %0 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3564, !tbaa !1046
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %0, i32 0, i32 2, !dbg !3566
  %1 = load %struct._object*, %struct._object** %args, align 8, !dbg !3566, !tbaa !3429
  %tobool = icmp ne %struct._object* %1, null, !dbg !3567
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !3568

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !3569
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3569
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !961, metadata !1042), !dbg !3571
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3572, !tbaa !1046
  %4 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3573, !tbaa !1046
  %args1 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %4, i32 0, i32 2, !dbg !3574
  %5 = load %struct._object*, %struct._object** %args1, align 8, !dbg !3574, !tbaa !3429
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !3575, !tbaa !1046
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !3572
  store i32 %call, i32* %vret, align 4, !dbg !3571, !tbaa !2156
  %7 = load i32, i32* %vret, align 4, !dbg !3576, !tbaa !2156
  %tobool2 = icmp ne i32 %7, 0, !dbg !3576
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !3578

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !3579, !tbaa !2156
  store i32 %8, i32* %retval, !dbg !3581
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3581

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !3582
  br label %cleanup, !dbg !3582

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !3584
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !3584
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !3587

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !3588

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !3591

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3592, !tbaa !1046
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %10, i32 0, i32 3, !dbg !3594
  %11 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !3594, !tbaa !3468
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !3595
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !3596

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !3597
  call void @llvm.lifetime.start(i64 4, i8* %12) #1, !dbg !3597
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !965, metadata !1042), !dbg !3599
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !3600, !tbaa !1046
  %14 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc.addr, align 8, !dbg !3601, !tbaa !1046
  %kwds9 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %14, i32 0, i32 3, !dbg !3602
  %15 = load %struct._object*, %struct._object** %kwds9, align 8, !dbg !3602, !tbaa !3468
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !3603, !tbaa !1046
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !3600
  store i32 %call10, i32* %vret8, align 4, !dbg !3599, !tbaa !2156
  %17 = load i32, i32* %vret8, align 4, !dbg !3604, !tbaa !2156
  %tobool11 = icmp ne i32 %17, 0, !dbg !3604
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !3606

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !3607, !tbaa !2156
  store i32 %18, i32* %retval, !dbg !3609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !3609

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !3610
  br label %cleanup.14, !dbg !3610

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !3612
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !3612
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.14
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.15, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.16

cleanup.cont.16:                                  ; preds = %NewDefault.1
  br label %if.end.17, !dbg !3615

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !3616

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !3619
  br label %return, !dbg !3619

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end.18
  %20 = load i32, i32* %retval, !dbg !3620
  ret i32 %20, !dbg !3620
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !971, metadata !1042), !dbg !3621
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !972, metadata !1042), !dbg !3622
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1046
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !973, metadata !1042), !dbg !3623
  %0 = bitcast %struct.methodcallerobject** %mc to i8*, !dbg !3624
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3624
  call void @llvm.dbg.declare(metadata %struct.methodcallerobject** %mc, metadata !974, metadata !1042), !dbg !3625
  %1 = bitcast %struct._object** %name to i8*, !dbg !3626
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3626
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !975, metadata !1042), !dbg !3627
  %2 = bitcast %struct._object** %newargs to i8*, !dbg !3626
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3626
  call void @llvm.dbg.declare(metadata %struct._object** %newargs, metadata !976, metadata !1042), !dbg !3628
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3629, !tbaa !1046
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*, !dbg !3631
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1, !dbg !3632
  %5 = load i64, i64* %ob_size, align 8, !dbg !3632, !tbaa !2552
  %cmp = icmp slt i64 %5, 1, !dbg !3633
  br i1 %cmp, label %if.then, label %if.end, !dbg !3634

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3635, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.147, i32 0, i32 0)), !dbg !3637
  store %struct._object* null, %struct._object** %retval, !dbg !3638
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3638

if.end:                                           ; preds = %entry
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @methodcaller_type), !dbg !3639
  %7 = bitcast %struct._object* %call to %struct.methodcallerobject*, !dbg !3640
  store %struct.methodcallerobject* %7, %struct.methodcallerobject** %mc, align 8, !dbg !3641, !tbaa !1046
  %8 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3642, !tbaa !1046
  %cmp1 = icmp eq %struct.methodcallerobject* %8, null, !dbg !3644
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3645

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3646
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3646

if.end.3:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3647, !tbaa !1046
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3648, !tbaa !1046
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*, !dbg !3649
  %ob_size4 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1, !dbg !3650
  %12 = load i64, i64* %ob_size4, align 8, !dbg !3650, !tbaa !2552
  %call5 = call %struct._object* @PyTuple_GetSlice(%struct._object* %9, i64 1, i64 %12), !dbg !3651
  store %struct._object* %call5, %struct._object** %newargs, align 8, !dbg !3652, !tbaa !1046
  %13 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !3653, !tbaa !1046
  %cmp6 = icmp eq %struct._object* %13, null, !dbg !3654
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !3655

if.then.7:                                        ; preds = %if.end.3
  br label %do.body, !dbg !3656

do.body:                                          ; preds = %if.then.7
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3657
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !3657
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !977, metadata !1042), !dbg !3659
  %15 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3660, !tbaa !1046
  %16 = bitcast %struct.methodcallerobject* %15 to %struct._object*, !dbg !3661
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !3659, !tbaa !1046
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3662, !tbaa !1046
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !3664
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !3665, !tbaa !1061
  %dec = add i64 %18, -1, !dbg !3665
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3665, !tbaa !1061
  %cmp8 = icmp ne i64 %dec, 0, !dbg !3666
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !3667

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !3668

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3670, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !3672
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3672, !tbaa !2026
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !3673
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3673, !tbaa !2386
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3674, !tbaa !1046
  call void %21(%struct._object* %22), !dbg !3675
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3676
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3676
  br label %do.cond, !dbg !3678

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !3679

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3681
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3681

if.end.11:                                        ; preds = %if.end.3
  %24 = load %struct._object*, %struct._object** %newargs, align 8, !dbg !3682, !tbaa !1046
  %25 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3683, !tbaa !1046
  %args12 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %25, i32 0, i32 2, !dbg !3684
  store %struct._object* %24, %struct._object** %args12, align 8, !dbg !3685, !tbaa !3429
  %26 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3686, !tbaa !1046
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*, !dbg !3687
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1, !dbg !3688
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3689
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3689, !tbaa !1046
  store %struct._object* %28, %struct._object** %name, align 8, !dbg !3690, !tbaa !1046
  %29 = load %struct._object*, %struct._object** %name, align 8, !dbg !3691, !tbaa !1046
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !3692
  %30 = load i64, i64* %ob_refcnt13, align 8, !dbg !3693, !tbaa !1061
  %inc = add i64 %30, 1, !dbg !3693
  store i64 %inc, i64* %ob_refcnt13, align 8, !dbg !3693, !tbaa !1061
  %31 = load %struct._object*, %struct._object** %name, align 8, !dbg !3694, !tbaa !1046
  %32 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3695, !tbaa !1046
  %name14 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %32, i32 0, i32 1, !dbg !3696
  store %struct._object* %31, %struct._object** %name14, align 8, !dbg !3697, !tbaa !3387
  br label %do.body.15, !dbg !3698

do.body.15:                                       ; preds = %if.end.11
  %33 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3699
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !3699
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !981, metadata !1042), !dbg !3701
  %34 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3702, !tbaa !1046
  store %struct._object* %34, %struct._object** %_py_xincref_tmp, align 8, !dbg !3701, !tbaa !1046
  %35 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3703, !tbaa !1046
  %cmp16 = icmp ne %struct._object* %35, null, !dbg !3705
  br i1 %cmp16, label %if.then.17, label %if.end.20, !dbg !3706

if.then.17:                                       ; preds = %do.body.15
  %36 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3707, !tbaa !1046
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3709
  %37 = load i64, i64* %ob_refcnt18, align 8, !dbg !3710, !tbaa !1061
  %inc19 = add i64 %37, 1, !dbg !3710
  store i64 %inc19, i64* %ob_refcnt18, align 8, !dbg !3710, !tbaa !1061
  br label %if.end.20, !dbg !3711

if.end.20:                                        ; preds = %if.then.17, %do.body.15
  %38 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3712
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3712
  br label %do.cond.21, !dbg !3715

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3716

do.end.22:                                        ; preds = %do.cond.21
  %39 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !3718, !tbaa !1046
  %40 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3719, !tbaa !1046
  %kwds23 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %40, i32 0, i32 3, !dbg !3720
  store %struct._object* %39, %struct._object** %kwds23, align 8, !dbg !3721, !tbaa !3468
  %41 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3722, !tbaa !1046
  %42 = bitcast %struct.methodcallerobject* %41 to i8*, !dbg !3722
  call void @PyObject_GC_Track(i8* %42), !dbg !3723
  %43 = load %struct.methodcallerobject*, %struct.methodcallerobject** %mc, align 8, !dbg !3724, !tbaa !1046
  %44 = bitcast %struct.methodcallerobject* %43 to %struct._object*, !dbg !3725
  store %struct._object* %44, %struct._object** %retval, !dbg !3726
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3726

cleanup:                                          ; preds = %do.end.22, %do.end, %if.then.2, %if.then
  %45 = bitcast %struct._object** %newargs to i8*, !dbg !3727
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3727
  %46 = bitcast %struct._object** %name to i8*, !dbg !3727
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3727
  %47 = bitcast %struct.methodcallerobject** %mc to i8*, !dbg !3727
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3727
  %48 = load %struct._object*, %struct._object** %retval, !dbg !3727
  ret %struct._object* %48, !dbg !3727
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1038, !1039}
!llvm.ident = !{!1040}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !439, globals: !983)
!1 = !DIFile(filename: "_operator.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !368, !376, !395, !397, !401, !409, !410, !394, !418, !420, !422, !424, !431}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!102 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!403 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 25, size: 256, align: 64, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !404, file: !403, line: 26, baseType: !30, size: 192, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !404, file: !403, line: 27, baseType: !408, size: 64, align: 64, offset: 192)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 64, elements: !89)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "itemgetterobject", file: !412, line: 404, baseType: !413)
!412 = !DIFile(filename: "./Modules/_operator.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 400, size: 256, align: 64, elements: !414)
!414 = !{!415, !416, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !413, file: !412, line: 401, baseType: !13, size: 128, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nitems", scope: !413, file: !412, line: 402, baseType: !18, size: 64, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !413, file: !412, line: 403, baseType: !12, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "attrgetterobject", file: !412, line: 541, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 537, size: 256, align: 64, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !426, file: !412, line: 538, baseType: !13, size: 128, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nattrs", scope: !426, file: !412, line: 539, baseType: !18, size: 64, align: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !426, file: !412, line: 540, baseType: !12, size: 64, align: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "methodcallerobject", file: !412, line: 796, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 791, size: 320, align: 64, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !433, file: !412, line: 792, baseType: !13, size: 128, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !412, line: 793, baseType: !12, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !433, file: !412, line: 794, baseType: !12, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "kwds", scope: !433, file: !412, line: 795, baseType: !12, size: 64, align: 64, offset: 256)
!439 = !{!440, !445, !450, !457, !464, !471, !478, !485, !489, !495, !501, !507, !513, !519, !525, !529, !533, !537, !541, !545, !551, !557, !562, !568, !574, !580, !586, !592, !598, !604, !610, !616, !622, !628, !634, !640, !646, !652, !658, !664, !671, !677, !683, !689, !695, !701, !707, !713, !719, !725, !736, !750, !757, !767, !787, !798, !810, !820, !840, !855, !866, !922, !942, !954, !969}
!440 = !DISubprogram(name: "PyInit__operator", scope: !412, file: !412, line: 936, type: !441, isLocal: false, isDefinition: true, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__operator, variables: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!12}
!443 = !{!444}
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !440, file: !412, line: 938, type: !12)
!445 = !DISubprogram(name: "truth", scope: !412, file: !412, line: 68, type: !133, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @truth, variables: !446)
!446 = !{!447, !448, !449}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !445, file: !412, line: 68, type: !12)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !445, file: !412, line: 68, type: !12)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !445, file: !412, line: 68, type: !24)
!450 = !DISubprogram(name: "op_contains", scope: !412, file: !412, line: 99, type: !133, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_contains, variables: !451)
!451 = !{!452, !453, !454, !455, !456}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !450, file: !412, line: 99, type: !12)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !450, file: !412, line: 99, type: !12)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !450, file: !412, line: 99, type: !12)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !450, file: !412, line: 99, type: !12)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !450, file: !412, line: 99, type: !24)
!457 = !DISubprogram(name: "indexOf", scope: !412, file: !412, line: 100, type: !133, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @indexOf, variables: !458)
!458 = !{!459, !460, !461, !462, !463}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !457, file: !412, line: 100, type: !12)
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !457, file: !412, line: 100, type: !12)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !457, file: !412, line: 100, type: !12)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !457, file: !412, line: 100, type: !12)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !457, file: !412, line: 100, type: !18)
!464 = !DISubprogram(name: "countOf", scope: !412, file: !412, line: 101, type: !133, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @countOf, variables: !465)
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !464, file: !412, line: 101, type: !12)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !464, file: !412, line: 101, type: !12)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !464, file: !412, line: 101, type: !12)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !464, file: !412, line: 101, type: !12)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !464, file: !412, line: 101, type: !18)
!471 = !DISubprogram(name: "is_", scope: !412, file: !412, line: 137, type: !133, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @is_, variables: !472)
!472 = !{!473, !474, !475, !476, !477}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !471, file: !412, line: 137, type: !12)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !471, file: !412, line: 137, type: !12)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !471, file: !412, line: 139, type: !12)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !471, file: !412, line: 139, type: !12)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !471, file: !412, line: 139, type: !12)
!478 = !DISubprogram(name: "is_not", scope: !412, file: !412, line: 148, type: !133, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @is_not, variables: !479)
!479 = !{!480, !481, !482, !483, !484}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !478, file: !412, line: 148, type: !12)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !478, file: !412, line: 148, type: !12)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !478, file: !412, line: 150, type: !12)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !478, file: !412, line: 150, type: !12)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !478, file: !412, line: 150, type: !12)
!485 = !DISubprogram(name: "op_index", scope: !412, file: !412, line: 131, type: !133, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_index, variables: !486)
!486 = !{!487, !488}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !485, file: !412, line: 131, type: !12)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !485, file: !412, line: 131, type: !12)
!489 = !DISubprogram(name: "op_add", scope: !412, file: !412, line: 69, type: !133, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_add, variables: !490)
!490 = !{!491, !492, !493, !494}
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !489, file: !412, line: 69, type: !12)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !489, file: !412, line: 69, type: !12)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !489, file: !412, line: 69, type: !12)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !489, file: !412, line: 69, type: !12)
!495 = !DISubprogram(name: "op_sub", scope: !412, file: !412, line: 70, type: !133, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_sub, variables: !496)
!496 = !{!497, !498, !499, !500}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !495, file: !412, line: 70, type: !12)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !495, file: !412, line: 70, type: !12)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !495, file: !412, line: 70, type: !12)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !495, file: !412, line: 70, type: !12)
!501 = !DISubprogram(name: "op_mul", scope: !412, file: !412, line: 71, type: !133, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_mul, variables: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !501, file: !412, line: 71, type: !12)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !501, file: !412, line: 71, type: !12)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !501, file: !412, line: 71, type: !12)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !501, file: !412, line: 71, type: !12)
!507 = !DISubprogram(name: "op_floordiv", scope: !412, file: !412, line: 72, type: !133, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_floordiv, variables: !508)
!508 = !{!509, !510, !511, !512}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !507, file: !412, line: 72, type: !12)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !507, file: !412, line: 72, type: !12)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !507, file: !412, line: 72, type: !12)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !507, file: !412, line: 72, type: !12)
!513 = !DISubprogram(name: "op_truediv", scope: !412, file: !412, line: 73, type: !133, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_truediv, variables: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !513, file: !412, line: 73, type: !12)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !513, file: !412, line: 73, type: !12)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !513, file: !412, line: 73, type: !12)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !513, file: !412, line: 73, type: !12)
!519 = !DISubprogram(name: "op_mod", scope: !412, file: !412, line: 74, type: !133, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_mod, variables: !520)
!520 = !{!521, !522, !523, !524}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !519, file: !412, line: 74, type: !12)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !519, file: !412, line: 74, type: !12)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !519, file: !412, line: 74, type: !12)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !519, file: !412, line: 74, type: !12)
!525 = !DISubprogram(name: "op_neg", scope: !412, file: !412, line: 75, type: !133, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_neg, variables: !526)
!526 = !{!527, !528}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !525, file: !412, line: 75, type: !12)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !525, file: !412, line: 75, type: !12)
!529 = !DISubprogram(name: "op_pos", scope: !412, file: !412, line: 76, type: !133, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_pos, variables: !530)
!530 = !{!531, !532}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !529, file: !412, line: 76, type: !12)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !529, file: !412, line: 76, type: !12)
!533 = !DISubprogram(name: "op_abs", scope: !412, file: !412, line: 77, type: !133, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_abs, variables: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !533, file: !412, line: 77, type: !12)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !533, file: !412, line: 77, type: !12)
!537 = !DISubprogram(name: "op_inv", scope: !412, file: !412, line: 78, type: !133, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_inv, variables: !538)
!538 = !{!539, !540}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !537, file: !412, line: 78, type: !12)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !537, file: !412, line: 78, type: !12)
!541 = !DISubprogram(name: "op_invert", scope: !412, file: !412, line: 79, type: !133, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_invert, variables: !542)
!542 = !{!543, !544}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !541, file: !412, line: 79, type: !12)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !541, file: !412, line: 79, type: !12)
!545 = !DISubprogram(name: "op_lshift", scope: !412, file: !412, line: 80, type: !133, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_lshift, variables: !546)
!546 = !{!547, !548, !549, !550}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !545, file: !412, line: 80, type: !12)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !545, file: !412, line: 80, type: !12)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !545, file: !412, line: 80, type: !12)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !545, file: !412, line: 80, type: !12)
!551 = !DISubprogram(name: "op_rshift", scope: !412, file: !412, line: 81, type: !133, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_rshift, variables: !552)
!552 = !{!553, !554, !555, !556}
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !551, file: !412, line: 81, type: !12)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !551, file: !412, line: 81, type: !12)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !551, file: !412, line: 81, type: !12)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !551, file: !412, line: 81, type: !12)
!557 = !DISubprogram(name: "op_not_", scope: !412, file: !412, line: 82, type: !133, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_not_, variables: !558)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !557, file: !412, line: 82, type: !12)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !557, file: !412, line: 82, type: !12)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !557, file: !412, line: 82, type: !24)
!562 = !DISubprogram(name: "op_and_", scope: !412, file: !412, line: 83, type: !133, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_and_, variables: !563)
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !562, file: !412, line: 83, type: !12)
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !562, file: !412, line: 83, type: !12)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !562, file: !412, line: 83, type: !12)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !562, file: !412, line: 83, type: !12)
!568 = !DISubprogram(name: "op_xor", scope: !412, file: !412, line: 84, type: !133, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_xor, variables: !569)
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !568, file: !412, line: 84, type: !12)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !568, file: !412, line: 84, type: !12)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !568, file: !412, line: 84, type: !12)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !568, file: !412, line: 84, type: !12)
!574 = !DISubprogram(name: "op_or_", scope: !412, file: !412, line: 85, type: !133, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_or_, variables: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !574, file: !412, line: 85, type: !12)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !574, file: !412, line: 85, type: !12)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !574, file: !412, line: 85, type: !12)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !574, file: !412, line: 85, type: !12)
!580 = !DISubprogram(name: "op_iadd", scope: !412, file: !412, line: 86, type: !133, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iadd, variables: !581)
!581 = !{!582, !583, !584, !585}
!582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !580, file: !412, line: 86, type: !12)
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !580, file: !412, line: 86, type: !12)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !580, file: !412, line: 86, type: !12)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !580, file: !412, line: 86, type: !12)
!586 = !DISubprogram(name: "op_isub", scope: !412, file: !412, line: 87, type: !133, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_isub, variables: !587)
!587 = !{!588, !589, !590, !591}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !586, file: !412, line: 87, type: !12)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !586, file: !412, line: 87, type: !12)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !586, file: !412, line: 87, type: !12)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !586, file: !412, line: 87, type: !12)
!592 = !DISubprogram(name: "op_imul", scope: !412, file: !412, line: 88, type: !133, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_imul, variables: !593)
!593 = !{!594, !595, !596, !597}
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !592, file: !412, line: 88, type: !12)
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !592, file: !412, line: 88, type: !12)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !592, file: !412, line: 88, type: !12)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !592, file: !412, line: 88, type: !12)
!598 = !DISubprogram(name: "op_ifloordiv", scope: !412, file: !412, line: 89, type: !133, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ifloordiv, variables: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !598, file: !412, line: 89, type: !12)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !598, file: !412, line: 89, type: !12)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !598, file: !412, line: 89, type: !12)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !598, file: !412, line: 89, type: !12)
!604 = !DISubprogram(name: "op_itruediv", scope: !412, file: !412, line: 90, type: !133, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_itruediv, variables: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !604, file: !412, line: 90, type: !12)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !604, file: !412, line: 90, type: !12)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !604, file: !412, line: 90, type: !12)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !604, file: !412, line: 90, type: !12)
!610 = !DISubprogram(name: "op_imod", scope: !412, file: !412, line: 91, type: !133, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_imod, variables: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !610, file: !412, line: 91, type: !12)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !610, file: !412, line: 91, type: !12)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !610, file: !412, line: 91, type: !12)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !610, file: !412, line: 91, type: !12)
!616 = !DISubprogram(name: "op_ilshift", scope: !412, file: !412, line: 92, type: !133, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ilshift, variables: !617)
!617 = !{!618, !619, !620, !621}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !616, file: !412, line: 92, type: !12)
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !616, file: !412, line: 92, type: !12)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !616, file: !412, line: 92, type: !12)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !616, file: !412, line: 92, type: !12)
!622 = !DISubprogram(name: "op_irshift", scope: !412, file: !412, line: 93, type: !133, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_irshift, variables: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !622, file: !412, line: 93, type: !12)
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !622, file: !412, line: 93, type: !12)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !622, file: !412, line: 93, type: !12)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !622, file: !412, line: 93, type: !12)
!628 = !DISubprogram(name: "op_iand", scope: !412, file: !412, line: 94, type: !133, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iand, variables: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !628, file: !412, line: 94, type: !12)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !628, file: !412, line: 94, type: !12)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !628, file: !412, line: 94, type: !12)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !628, file: !412, line: 94, type: !12)
!634 = !DISubprogram(name: "op_ixor", scope: !412, file: !412, line: 95, type: !133, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ixor, variables: !635)
!635 = !{!636, !637, !638, !639}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !634, file: !412, line: 95, type: !12)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !634, file: !412, line: 95, type: !12)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !634, file: !412, line: 95, type: !12)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !634, file: !412, line: 95, type: !12)
!640 = !DISubprogram(name: "op_ior", scope: !412, file: !412, line: 96, type: !133, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ior, variables: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !640, file: !412, line: 96, type: !12)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !640, file: !412, line: 96, type: !12)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !640, file: !412, line: 96, type: !12)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !640, file: !412, line: 96, type: !12)
!646 = !DISubprogram(name: "op_concat", scope: !412, file: !412, line: 97, type: !133, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_concat, variables: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !646, file: !412, line: 97, type: !12)
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !646, file: !412, line: 97, type: !12)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !646, file: !412, line: 97, type: !12)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !646, file: !412, line: 97, type: !12)
!652 = !DISubprogram(name: "op_iconcat", scope: !412, file: !412, line: 98, type: !133, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iconcat, variables: !653)
!653 = !{!654, !655, !656, !657}
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !652, file: !412, line: 98, type: !12)
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !652, file: !412, line: 98, type: !12)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !652, file: !412, line: 98, type: !12)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !652, file: !412, line: 98, type: !12)
!658 = !DISubprogram(name: "op_getitem", scope: !412, file: !412, line: 102, type: !133, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_getitem, variables: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !658, file: !412, line: 102, type: !12)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !658, file: !412, line: 102, type: !12)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !658, file: !412, line: 102, type: !12)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !658, file: !412, line: 102, type: !12)
!664 = !DISubprogram(name: "op_setitem", scope: !412, file: !412, line: 104, type: !133, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_setitem, variables: !665)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !664, file: !412, line: 104, type: !12)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !664, file: !412, line: 104, type: !12)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !664, file: !412, line: 104, type: !12)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !664, file: !412, line: 104, type: !12)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a3", scope: !664, file: !412, line: 104, type: !12)
!671 = !DISubprogram(name: "op_delitem", scope: !412, file: !412, line: 103, type: !133, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_delitem, variables: !672)
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !671, file: !412, line: 103, type: !12)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !671, file: !412, line: 103, type: !12)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !671, file: !412, line: 103, type: !12)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !671, file: !412, line: 103, type: !12)
!677 = !DISubprogram(name: "op_pow", scope: !412, file: !412, line: 113, type: !133, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_pow, variables: !678)
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !677, file: !412, line: 113, type: !12)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !677, file: !412, line: 113, type: !12)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !677, file: !412, line: 115, type: !12)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !677, file: !412, line: 115, type: !12)
!683 = !DISubprogram(name: "op_ipow", scope: !412, file: !412, line: 122, type: !133, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ipow, variables: !684)
!684 = !{!685, !686, !687, !688}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !683, file: !412, line: 122, type: !12)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !683, file: !412, line: 122, type: !12)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !683, file: !412, line: 124, type: !12)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !683, file: !412, line: 124, type: !12)
!689 = !DISubprogram(name: "op_lt", scope: !412, file: !412, line: 105, type: !133, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_lt, variables: !690)
!690 = !{!691, !692, !693, !694}
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !689, file: !412, line: 105, type: !12)
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !689, file: !412, line: 105, type: !12)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !689, file: !412, line: 105, type: !12)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !689, file: !412, line: 105, type: !12)
!695 = !DISubprogram(name: "op_le", scope: !412, file: !412, line: 106, type: !133, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_le, variables: !696)
!696 = !{!697, !698, !699, !700}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !695, file: !412, line: 106, type: !12)
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !695, file: !412, line: 106, type: !12)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !695, file: !412, line: 106, type: !12)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !695, file: !412, line: 106, type: !12)
!701 = !DISubprogram(name: "op_eq", scope: !412, file: !412, line: 107, type: !133, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_eq, variables: !702)
!702 = !{!703, !704, !705, !706}
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !701, file: !412, line: 107, type: !12)
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !701, file: !412, line: 107, type: !12)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !701, file: !412, line: 107, type: !12)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !701, file: !412, line: 107, type: !12)
!707 = !DISubprogram(name: "op_ne", scope: !412, file: !412, line: 108, type: !133, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ne, variables: !708)
!708 = !{!709, !710, !711, !712}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !707, file: !412, line: 108, type: !12)
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !707, file: !412, line: 108, type: !12)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !707, file: !412, line: 108, type: !12)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !707, file: !412, line: 108, type: !12)
!713 = !DISubprogram(name: "op_gt", scope: !412, file: !412, line: 109, type: !133, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_gt, variables: !714)
!714 = !{!715, !716, !717, !718}
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !713, file: !412, line: 109, type: !12)
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !713, file: !412, line: 109, type: !12)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !713, file: !412, line: 109, type: !12)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !713, file: !412, line: 109, type: !12)
!719 = !DISubprogram(name: "op_ge", scope: !412, file: !412, line: 110, type: !133, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ge, variables: !720)
!720 = !{!721, !722, !723, !724}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !719, file: !412, line: 110, type: !12)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !719, file: !412, line: 110, type: !12)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !719, file: !412, line: 110, type: !12)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !719, file: !412, line: 110, type: !12)
!725 = !DISubprogram(name: "compare_digest", scope: !412, file: !412, line: 249, type: !133, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @compare_digest, variables: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !735}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !725, file: !412, line: 249, type: !12)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !725, file: !412, line: 249, type: !12)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !725, file: !412, line: 251, type: !12)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !725, file: !412, line: 251, type: !12)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !725, file: !412, line: 252, type: !51)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view_a", scope: !733, file: !412, line: 277, type: !243)
!733 = distinct !DILexicalBlock(scope: !734, file: !412, line: 276, column: 10)
!734 = distinct !DILexicalBlock(scope: !725, file: !412, line: 259, column: 8)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view_b", scope: !733, file: !412, line: 278, type: !243)
!736 = !DISubprogram(name: "_tscmp", scope: !412, file: !412, line: 174, type: !737, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i64, i64)* @_tscmp, variables: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!51, !395, !395, !18, !18}
!739 = !{!740, !741, !742, !743, !744, !746, !747, !748, !749}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !736, file: !412, line: 174, type: !395)
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !736, file: !412, line: 174, type: !395)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len_a", arg: 3, scope: !736, file: !412, line: 175, type: !18)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len_b", arg: 4, scope: !736, file: !412, line: 175, type: !18)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !736, file: !412, line: 181, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left", scope: !736, file: !412, line: 182, type: !398)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "right", scope: !736, file: !412, line: 183, type: !398)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !736, file: !412, line: 184, type: !18)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !736, file: !412, line: 185, type: !388)
!750 = !DISubprogram(name: "length_hint", scope: !412, file: !412, line: 221, type: !133, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @length_hint, variables: !751)
!751 = !{!752, !753, !754, !755, !756}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !750, file: !412, line: 221, type: !12)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !750, file: !412, line: 221, type: !12)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !750, file: !412, line: 223, type: !12)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defaultvalue", scope: !750, file: !412, line: 224, type: !18)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !750, file: !412, line: 224, type: !18)
!757 = !DISubprogram(name: "itemgetter_dealloc", scope: !412, file: !412, line: 439, type: !758, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.itemgetterobject*)* @itemgetter_dealloc, variables: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !410}
!760 = !{!761, !762, !764}
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !757, file: !412, line: 439, type: !410)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !763, file: !412, line: 442, type: !12)
!763 = distinct !DILexicalBlock(scope: !757, file: !412, line: 442, column: 8)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !412, line: 442, type: !12)
!765 = distinct !DILexicalBlock(scope: !766, file: !412, line: 442, column: 100)
!766 = distinct !DILexicalBlock(scope: !763, file: !412, line: 442, column: 66)
!767 = !DISubprogram(name: "itemgetter_call", scope: !412, file: !412, line: 454, type: !768, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.itemgetterobject*, %struct._object*, %struct._object*)* @itemgetter_call, variables: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!12, !410, !12, !12}
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !782, !783}
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !767, file: !412, line: 454, type: !410)
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !767, file: !412, line: 454, type: !12)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !767, file: !412, line: 454, type: !12)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !767, file: !412, line: 456, type: !12)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !767, file: !412, line: 456, type: !12)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !767, file: !412, line: 457, type: !18)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !767, file: !412, line: 457, type: !18)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !779, file: !412, line: 472, type: !12)
!779 = distinct !DILexicalBlock(scope: !780, file: !412, line: 471, column: 34)
!780 = distinct !DILexicalBlock(scope: !781, file: !412, line: 471, column: 5)
!781 = distinct !DILexicalBlock(scope: !767, file: !412, line: 471, column: 5)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !779, file: !412, line: 472, type: !12)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !412, line: 476, type: !12)
!784 = distinct !DILexicalBlock(scope: !785, file: !412, line: 476, column: 16)
!785 = distinct !DILexicalBlock(scope: !786, file: !412, line: 475, column: 32)
!786 = distinct !DILexicalBlock(scope: !779, file: !412, line: 475, column: 13)
!787 = !DISubprogram(name: "itemgetter_traverse", scope: !412, file: !412, line: 447, type: !788, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.itemgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @itemgetter_traverse, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!51, !410, !270, !11}
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !787, file: !412, line: 447, type: !410)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !787, file: !412, line: 447, type: !270)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !787, file: !412, line: 447, type: !11)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !795, file: !412, line: 449, type: !51)
!795 = distinct !DILexicalBlock(scope: !796, file: !412, line: 449, column: 24)
!796 = distinct !DILexicalBlock(scope: !797, file: !412, line: 449, column: 14)
!797 = distinct !DILexicalBlock(scope: !787, file: !412, line: 449, column: 8)
!798 = !DISubprogram(name: "itemgetter_new", scope: !412, file: !412, line: 409, type: !799, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @itemgetter_new, variables: !803)
!799 = !DISubroutineType(types: !800)
!800 = !{!12, !801, !12, !12}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!803 = !{!804, !805, !806, !807, !808, !809}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !798, file: !412, line: 409, type: !801)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !798, file: !412, line: 409, type: !12)
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !798, file: !412, line: 409, type: !12)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ig", scope: !798, file: !412, line: 411, type: !410)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !798, file: !412, line: 412, type: !12)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !798, file: !412, line: 413, type: !18)
!810 = !DISubprogram(name: "attrgetter_dealloc", scope: !412, file: !412, line: 658, type: !811, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.attrgetterobject*)* @attrgetter_dealloc, variables: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !424}
!813 = !{!814, !815, !817}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !810, file: !412, line: 658, type: !424)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !816, file: !412, line: 661, type: !12)
!816 = distinct !DILexicalBlock(scope: !810, file: !412, line: 661, column: 8)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !818, file: !412, line: 661, type: !12)
!818 = distinct !DILexicalBlock(scope: !819, file: !412, line: 661, column: 100)
!819 = distinct !DILexicalBlock(scope: !816, file: !412, line: 661, column: 66)
!820 = !DISubprogram(name: "attrgetter_call", scope: !412, file: !412, line: 706, type: !821, isLocal: true, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.attrgetterobject*, %struct._object*, %struct._object*)* @attrgetter_call, variables: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!12, !424, !12, !12}
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !835, !836}
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !820, file: !412, line: 706, type: !424)
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !820, file: !412, line: 706, type: !12)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !820, file: !412, line: 706, type: !12)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !820, file: !412, line: 708, type: !12)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !820, file: !412, line: 708, type: !12)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !820, file: !412, line: 709, type: !18)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nattrs", scope: !820, file: !412, line: 709, type: !18)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !832, file: !412, line: 724, type: !12)
!832 = distinct !DILexicalBlock(scope: !833, file: !412, line: 723, column: 34)
!833 = distinct !DILexicalBlock(scope: !834, file: !412, line: 723, column: 5)
!834 = distinct !DILexicalBlock(scope: !820, file: !412, line: 723, column: 5)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !832, file: !412, line: 724, type: !12)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !412, line: 728, type: !12)
!837 = distinct !DILexicalBlock(scope: !838, file: !412, line: 728, column: 16)
!838 = distinct !DILexicalBlock(scope: !839, file: !412, line: 727, column: 32)
!839 = distinct !DILexicalBlock(scope: !832, file: !412, line: 727, column: 13)
!840 = !DISubprogram(name: "dotted_getattr", scope: !412, file: !412, line: 673, type: !133, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @dotted_getattr, variables: !841)
!841 = !{!842, !843, !844, !845, !848, !849, !850}
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !840, file: !412, line: 673, type: !12)
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attr", arg: 2, scope: !840, file: !412, line: 673, type: !12)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !840, file: !412, line: 675, type: !12)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_idx", scope: !846, file: !412, line: 680, type: !18)
!846 = distinct !DILexicalBlock(scope: !847, file: !412, line: 679, column: 60)
!847 = distinct !DILexicalBlock(scope: !840, file: !412, line: 679, column: 9)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_count", scope: !846, file: !412, line: 680, type: !18)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_name", scope: !846, file: !412, line: 681, type: !12)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !851, file: !412, line: 688, type: !12)
!851 = distinct !DILexicalBlock(scope: !852, file: !412, line: 688, column: 16)
!852 = distinct !DILexicalBlock(scope: !853, file: !412, line: 685, column: 63)
!853 = distinct !DILexicalBlock(scope: !854, file: !412, line: 685, column: 9)
!854 = distinct !DILexicalBlock(scope: !846, file: !412, line: 685, column: 9)
!855 = !DISubprogram(name: "attrgetter_traverse", scope: !412, file: !412, line: 666, type: !856, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.attrgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @attrgetter_traverse, variables: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!51, !424, !270, !11}
!858 = !{!859, !860, !861, !862}
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !855, file: !412, line: 666, type: !424)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !855, file: !412, line: 666, type: !270)
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !855, file: !412, line: 666, type: !11)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !863, file: !412, line: 668, type: !51)
!863 = distinct !DILexicalBlock(scope: !864, file: !412, line: 668, column: 24)
!864 = distinct !DILexicalBlock(scope: !865, file: !412, line: 668, column: 14)
!865 = distinct !DILexicalBlock(scope: !855, file: !412, line: 668, column: 8)
!866 = !DISubprogram(name: "attrgetter_new", scope: !412, file: !412, line: 546, type: !799, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @attrgetter_new, variables: !867)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875, !876, !880, !881, !882, !883, !884, !888, !892, !895, !896, !897, !898, !899, !903, !910, !912, !916, !918}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !866, file: !412, line: 546, type: !801)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !866, file: !412, line: 546, type: !12)
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !866, file: !412, line: 546, type: !12)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ag", scope: !866, file: !412, line: 548, type: !424)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !866, file: !412, line: 549, type: !12)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nattrs", scope: !866, file: !412, line: 550, type: !18)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !866, file: !412, line: 550, type: !18)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "char_idx", scope: !866, file: !412, line: 550, type: !18)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !877, file: !412, line: 567, type: !12)
!877 = distinct !DILexicalBlock(scope: !878, file: !412, line: 566, column: 40)
!878 = distinct !DILexicalBlock(scope: !879, file: !412, line: 566, column: 5)
!879 = distinct !DILexicalBlock(scope: !866, file: !412, line: 566, column: 5)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item_len", scope: !877, file: !412, line: 568, type: !18)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !877, file: !412, line: 569, type: !11)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !877, file: !412, line: 570, type: !348)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot_count", scope: !877, file: !412, line: 571, type: !51)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !885, file: !412, line: 576, type: !12)
!885 = distinct !DILexicalBlock(scope: !886, file: !412, line: 576, column: 16)
!886 = distinct !DILexicalBlock(scope: !887, file: !412, line: 573, column: 83)
!887 = distinct !DILexicalBlock(scope: !877, file: !412, line: 573, column: 13)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !889, file: !412, line: 580, type: !12)
!889 = distinct !DILexicalBlock(scope: !890, file: !412, line: 580, column: 16)
!890 = distinct !DILexicalBlock(scope: !891, file: !412, line: 579, column: 113)
!891 = distinct !DILexicalBlock(scope: !877, file: !412, line: 579, column: 13)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain", scope: !893, file: !412, line: 599, type: !12)
!893 = distinct !DILexicalBlock(scope: !894, file: !412, line: 598, column: 16)
!894 = distinct !DILexicalBlock(scope: !877, file: !412, line: 594, column: 13)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain_item", scope: !893, file: !412, line: 600, type: !12)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unibuff_from", scope: !893, file: !412, line: 601, type: !18)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unibuff_till", scope: !893, file: !412, line: 602, type: !18)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain_idx", scope: !893, file: !412, line: 603, type: !18)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !900, file: !412, line: 606, type: !12)
!900 = distinct !DILexicalBlock(scope: !901, file: !412, line: 606, column: 20)
!901 = distinct !DILexicalBlock(scope: !902, file: !412, line: 605, column: 43)
!902 = distinct !DILexicalBlock(scope: !893, file: !412, line: 605, column: 17)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !904, file: !412, line: 618, type: !12)
!904 = distinct !DILexicalBlock(scope: !905, file: !412, line: 618, column: 24)
!905 = distinct !DILexicalBlock(scope: !906, file: !412, line: 617, column: 52)
!906 = distinct !DILexicalBlock(scope: !907, file: !412, line: 617, column: 21)
!907 = distinct !DILexicalBlock(scope: !908, file: !412, line: 610, column: 48)
!908 = distinct !DILexicalBlock(scope: !909, file: !412, line: 610, column: 13)
!909 = distinct !DILexicalBlock(scope: !893, file: !412, line: 610, column: 13)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !911, file: !412, line: 619, type: !12)
!911 = distinct !DILexicalBlock(scope: !905, file: !412, line: 619, column: 24)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !913, file: !412, line: 632, type: !12)
!913 = distinct !DILexicalBlock(scope: !914, file: !412, line: 632, column: 20)
!914 = distinct !DILexicalBlock(scope: !915, file: !412, line: 631, column: 48)
!915 = distinct !DILexicalBlock(scope: !893, file: !412, line: 631, column: 17)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !917, file: !412, line: 633, type: !12)
!917 = distinct !DILexicalBlock(scope: !914, file: !412, line: 633, column: 20)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !919, file: !412, line: 646, type: !12)
!919 = distinct !DILexicalBlock(scope: !920, file: !412, line: 646, column: 12)
!920 = distinct !DILexicalBlock(scope: !921, file: !412, line: 645, column: 27)
!921 = distinct !DILexicalBlock(scope: !866, file: !412, line: 645, column: 9)
!922 = !DISubprogram(name: "methodcaller_dealloc", scope: !412, file: !412, line: 836, type: !923, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.methodcallerobject*)* @methodcaller_dealloc, variables: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !431}
!925 = !{!926, !927, !929, !932, !934, !937, !939}
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !922, file: !412, line: 836, type: !431)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !928, file: !412, line: 839, type: !12)
!928 = distinct !DILexicalBlock(scope: !922, file: !412, line: 839, column: 8)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !930, file: !412, line: 839, type: !12)
!930 = distinct !DILexicalBlock(scope: !931, file: !412, line: 839, column: 100)
!931 = distinct !DILexicalBlock(scope: !928, file: !412, line: 839, column: 66)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !933, file: !412, line: 840, type: !12)
!933 = distinct !DILexicalBlock(scope: !922, file: !412, line: 840, column: 8)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !935, file: !412, line: 840, type: !12)
!935 = distinct !DILexicalBlock(scope: !936, file: !412, line: 840, column: 100)
!936 = distinct !DILexicalBlock(scope: !933, file: !412, line: 840, column: 66)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !938, file: !412, line: 841, type: !12)
!938 = distinct !DILexicalBlock(scope: !922, file: !412, line: 841, column: 8)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !940, file: !412, line: 841, type: !12)
!940 = distinct !DILexicalBlock(scope: !941, file: !412, line: 841, column: 100)
!941 = distinct !DILexicalBlock(scope: !938, file: !412, line: 841, column: 66)
!942 = !DISubprogram(name: "methodcaller_call", scope: !412, file: !412, line: 854, type: !943, isLocal: true, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.methodcallerobject*, %struct._object*, %struct._object*)* @methodcaller_call, variables: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{!12, !431, !12, !12}
!945 = !{!946, !947, !948, !949, !950, !951, !952}
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !942, file: !412, line: 854, type: !431)
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !942, file: !412, line: 854, type: !12)
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !942, file: !412, line: 854, type: !12)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !942, file: !412, line: 856, type: !12)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !942, file: !412, line: 856, type: !12)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !942, file: !412, line: 856, type: !12)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !953, file: !412, line: 864, type: !12)
!953 = distinct !DILexicalBlock(scope: !942, file: !412, line: 864, column: 8)
!954 = !DISubprogram(name: "methodcaller_traverse", scope: !412, file: !412, line: 846, type: !955, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.methodcallerobject*, i32 (%struct._object*, i8*)*, i8*)* @methodcaller_traverse, variables: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{!51, !431, !270, !11}
!957 = !{!958, !959, !960, !961, !965}
!958 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !954, file: !412, line: 846, type: !431)
!959 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !954, file: !412, line: 846, type: !270)
!960 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !954, file: !412, line: 846, type: !11)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !962, file: !412, line: 848, type: !51)
!962 = distinct !DILexicalBlock(scope: !963, file: !412, line: 848, column: 24)
!963 = distinct !DILexicalBlock(scope: !964, file: !412, line: 848, column: 14)
!964 = distinct !DILexicalBlock(scope: !954, file: !412, line: 848, column: 8)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !966, file: !412, line: 849, type: !51)
!966 = distinct !DILexicalBlock(scope: !967, file: !412, line: 849, column: 24)
!967 = distinct !DILexicalBlock(scope: !968, file: !412, line: 849, column: 14)
!968 = distinct !DILexicalBlock(scope: !954, file: !412, line: 849, column: 8)
!969 = !DISubprogram(name: "methodcaller_new", scope: !412, file: !412, line: 801, type: !799, isLocal: true, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @methodcaller_new, variables: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !981}
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !969, file: !412, line: 801, type: !801)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !969, file: !412, line: 801, type: !12)
!973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !969, file: !412, line: 801, type: !12)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc", scope: !969, file: !412, line: 803, type: !431)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !969, file: !412, line: 804, type: !12)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !969, file: !412, line: 804, type: !12)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !978, file: !412, line: 819, type: !12)
!978 = distinct !DILexicalBlock(scope: !979, file: !412, line: 819, column: 12)
!979 = distinct !DILexicalBlock(scope: !980, file: !412, line: 818, column: 32)
!980 = distinct !DILexicalBlock(scope: !969, file: !412, line: 818, column: 9)
!981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !982, file: !412, line: 828, type: !12)
!982 = distinct !DILexicalBlock(scope: !969, file: !412, line: 828, column: 8)
!983 = !{!984, !1007, !1011, !1015, !1019, !1023, !1024, !1028, !1029, !1033, !1034}
!984 = !DIGlobalVariable(name: "operatormodule", scope: !0, file: !412, line: 923, type: !985, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @operatormodule)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !986, line: 47, size: 832, align: 64, elements: !987)
!986 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!987 = !{!988, !997, !998, !999, !1000, !1003, !1004, !1005, !1006}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !985, file: !986, line: 48, baseType: !989, size: 320, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !986, line: 38, baseType: !990)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !986, line: 33, size: 320, align: 64, elements: !991)
!991 = !{!992, !993, !995, !996}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !990, file: !986, line: 34, baseType: !13, size: 128, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !990, file: !986, line: 35, baseType: !994, size: 64, align: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !990, file: !986, line: 36, baseType: !18, size: 64, align: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !990, file: !986, line: 37, baseType: !12, size: 64, align: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !985, file: !986, line: 49, baseType: !36, size: 64, align: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !985, file: !986, line: 50, baseType: !36, size: 64, align: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !985, file: !986, line: 51, baseType: !18, size: 64, align: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !985, file: !986, line: 52, baseType: !1001, size: 64, align: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !985, file: !986, line: 53, baseType: !149, size: 64, align: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !985, file: !986, line: 54, baseType: !266, size: 64, align: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !985, file: !986, line: 55, baseType: !149, size: 64, align: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !985, file: !986, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!1007 = !DIGlobalVariable(name: "operator_doc", scope: !0, file: !412, line: 4, type: !1008, isLocal: true, isDefinition: true, variable: [333 x i8]* @operator_doc)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2664, align: 8, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 333)
!1011 = !DIGlobalVariable(name: "operator_methods", scope: !0, file: !412, line: 329, type: !1012, isLocal: true, isDefinition: true, variable: [51 x %struct.PyMethodDef]* @operator_methods)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 13056, align: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 51)
!1015 = !DIGlobalVariable(name: "compare_digest__doc__", scope: !0, file: !412, line: 236, type: !1016, isLocal: true, isDefinition: true, variable: [465 x i8]* @compare_digest__doc__)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3720, align: 8, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 465)
!1019 = !DIGlobalVariable(name: "length_hint__doc__", scope: !0, file: !412, line: 211, type: !1020, isLocal: true, isDefinition: true, variable: [316 x i8]* @length_hint__doc__)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2528, align: 8, elements: !1021)
!1021 = !{!1022}
!1022 = !DISubrange(count: 316)
!1023 = !DIGlobalVariable(name: "itemgetter_type", scope: !0, file: !412, line: 491, type: !802, isLocal: true, isDefinition: true, variable: %struct._typeobject* @itemgetter_type)
!1024 = !DIGlobalVariable(name: "itemgetter_doc", scope: !0, file: !412, line: 484, type: !1025, isLocal: true, isDefinition: true, variable: [244 x i8]* @itemgetter_doc)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1952, align: 8, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 244)
!1028 = !DIGlobalVariable(name: "attrgetter_type", scope: !0, file: !412, line: 745, type: !802, isLocal: true, isDefinition: true, variable: %struct._typeobject* @attrgetter_type)
!1029 = !DIGlobalVariable(name: "attrgetter_doc", scope: !0, file: !412, line: 736, type: !1030, isLocal: true, isDefinition: true, variable: [362 x i8]* @attrgetter_doc)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2896, align: 8, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 362)
!1033 = !DIGlobalVariable(name: "methodcaller_type", scope: !0, file: !412, line: 876, type: !802, isLocal: true, isDefinition: true, variable: %struct._typeobject* @methodcaller_type)
!1034 = !DIGlobalVariable(name: "methodcaller_doc", scope: !0, file: !412, line: 868, type: !1035, isLocal: true, isDefinition: true, variable: [274 x i8]* @methodcaller_doc)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2192, align: 8, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 274)
!1038 = !{i32 2, !"Dwarf Version", i32 4}
!1039 = !{i32 2, !"Debug Info Version", i32 3}
!1040 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1041 = !DILocation(line: 938, column: 5, scope: !440)
!1042 = !DIExpression()
!1043 = !DILocation(line: 938, column: 15, scope: !440)
!1044 = !DILocation(line: 941, column: 9, scope: !440)
!1045 = !DILocation(line: 941, column: 7, scope: !440)
!1046 = !{!1047, !1047, i64 0}
!1047 = !{!"any pointer", !1048, i64 0}
!1048 = !{!"omnipotent char", !1049, i64 0}
!1049 = !{!"Simple C/C++ TBAA"}
!1050 = !DILocation(line: 942, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !440, file: !412, line: 942, column: 9)
!1052 = !DILocation(line: 942, column: 11, scope: !1051)
!1053 = !DILocation(line: 942, column: 9, scope: !440)
!1054 = !DILocation(line: 943, column: 9, scope: !1051)
!1055 = !DILocation(line: 945, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !440, file: !412, line: 945, column: 9)
!1057 = !DILocation(line: 945, column: 40, scope: !1056)
!1058 = !DILocation(line: 945, column: 9, scope: !440)
!1059 = !DILocation(line: 946, column: 9, scope: !1056)
!1060 = !DILocation(line: 947, column: 50, scope: !440)
!1061 = !{!1062, !1063, i64 0}
!1062 = !{!"_object", !1063, i64 0, !1047, i64 8}
!1063 = !{!"long", !1048, i64 0}
!1064 = !DILocation(line: 948, column: 24, scope: !440)
!1065 = !DILocation(line: 948, column: 5, scope: !440)
!1066 = !DILocation(line: 950, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !440, file: !412, line: 950, column: 9)
!1068 = !DILocation(line: 950, column: 40, scope: !1067)
!1069 = !DILocation(line: 950, column: 9, scope: !440)
!1070 = !DILocation(line: 951, column: 9, scope: !1067)
!1071 = !DILocation(line: 952, column: 50, scope: !440)
!1072 = !DILocation(line: 953, column: 24, scope: !440)
!1073 = !DILocation(line: 953, column: 5, scope: !440)
!1074 = !DILocation(line: 955, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !440, file: !412, line: 955, column: 9)
!1076 = !DILocation(line: 955, column: 42, scope: !1075)
!1077 = !DILocation(line: 955, column: 9, scope: !440)
!1078 = !DILocation(line: 956, column: 9, scope: !1075)
!1079 = !DILocation(line: 957, column: 52, scope: !440)
!1080 = !DILocation(line: 958, column: 24, scope: !440)
!1081 = !DILocation(line: 958, column: 5, scope: !440)
!1082 = !DILocation(line: 959, column: 12, scope: !440)
!1083 = !DILocation(line: 959, column: 5, scope: !440)
!1084 = !DILocation(line: 960, column: 1, scope: !440)
!1085 = !DILocation(line: 68, column: 34, scope: !445)
!1086 = !DILocation(line: 68, column: 47, scope: !445)
!1087 = !DILocation(line: 68, column: 53, scope: !445)
!1088 = !DILocation(line: 68, column: 58, scope: !445)
!1089 = !DILocation(line: 68, column: 89, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !445, file: !412, line: 68, column: 64)
!1091 = !DILocation(line: 68, column: 73, scope: !1090)
!1092 = !DILocation(line: 68, column: 72, scope: !1090)
!1093 = !{!1063, !1063, i64 0}
!1094 = !DILocation(line: 68, column: 67, scope: !1090)
!1095 = !DILocation(line: 68, column: 64, scope: !445)
!1096 = !DILocation(line: 68, column: 95, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1090, file: !412, discriminator: 1)
!1098 = !DILocation(line: 68, column: 95, scope: !1090)
!1099 = !DILocation(line: 68, column: 137, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !445, file: !412, discriminator: 2)
!1101 = !DILocation(line: 68, column: 121, scope: !445)
!1102 = !DILocation(line: 68, column: 114, scope: !445)
!1103 = !DILocation(line: 68, column: 141, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !412, discriminator: 4)
!1105 = !DILexicalBlockFile(scope: !445, file: !412, discriminator: 3)
!1106 = !DILocation(line: 99, column: 40, scope: !450)
!1107 = !DILocation(line: 99, column: 53, scope: !450)
!1108 = !DILocation(line: 99, column: 58, scope: !450)
!1109 = !DILocation(line: 99, column: 68, scope: !450)
!1110 = !DILocation(line: 99, column: 73, scope: !450)
!1111 = !DILocation(line: 99, column: 77, scope: !450)
!1112 = !DILocation(line: 99, column: 82, scope: !450)
!1113 = !DILocation(line: 99, column: 108, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !450, file: !412, line: 99, column: 88)
!1115 = !DILocation(line: 99, column: 90, scope: !1114)
!1116 = !DILocation(line: 99, column: 88, scope: !450)
!1117 = !DILocation(line: 99, column: 138, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1114, file: !412, discriminator: 2)
!1119 = !DILocation(line: 99, column: 138, scope: !1114)
!1120 = !DILocation(line: 99, column: 189, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1122, file: !412, discriminator: 1)
!1122 = distinct !DILexicalBlock(scope: !450, file: !412, line: 99, column: 160)
!1123 = !DILocation(line: 99, column: 192, scope: !1122)
!1124 = !DILocation(line: 99, column: 169, scope: !1122)
!1125 = !DILocation(line: 99, column: 168, scope: !1122)
!1126 = !DILocation(line: 99, column: 163, scope: !1122)
!1127 = !DILocation(line: 99, column: 160, scope: !450)
!1128 = !DILocation(line: 99, column: 198, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1122, file: !412, discriminator: 4)
!1130 = !DILocation(line: 99, column: 198, scope: !1122)
!1131 = !DILocation(line: 99, column: 240, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !450, file: !412, discriminator: 5)
!1133 = !DILocation(line: 99, column: 224, scope: !450)
!1134 = !DILocation(line: 99, column: 217, scope: !450)
!1135 = !DILocation(line: 99, column: 244, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !412, discriminator: 7)
!1137 = !DILexicalBlockFile(scope: !1138, file: !412, discriminator: 6)
!1138 = !DILexicalBlockFile(scope: !450, file: !412, discriminator: 3)
!1139 = !DILocation(line: 100, column: 36, scope: !457)
!1140 = !DILocation(line: 100, column: 49, scope: !457)
!1141 = !DILocation(line: 100, column: 54, scope: !457)
!1142 = !DILocation(line: 100, column: 64, scope: !457)
!1143 = !DILocation(line: 100, column: 69, scope: !457)
!1144 = !DILocation(line: 100, column: 73, scope: !457)
!1145 = !DILocation(line: 100, column: 84, scope: !457)
!1146 = !DILocation(line: 100, column: 110, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !457, file: !412, line: 100, column: 90)
!1148 = !DILocation(line: 100, column: 92, scope: !1147)
!1149 = !DILocation(line: 100, column: 90, scope: !457)
!1150 = !DILocation(line: 100, column: 136, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1147, file: !412, discriminator: 2)
!1152 = !DILocation(line: 100, column: 136, scope: !1147)
!1153 = !DILocation(line: 100, column: 184, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !412, discriminator: 1)
!1155 = distinct !DILexicalBlock(scope: !457, file: !412, line: 100, column: 158)
!1156 = !DILocation(line: 100, column: 187, scope: !1155)
!1157 = !DILocation(line: 100, column: 167, scope: !1155)
!1158 = !DILocation(line: 100, column: 166, scope: !1155)
!1159 = !DILocation(line: 100, column: 161, scope: !1155)
!1160 = !DILocation(line: 100, column: 158, scope: !457)
!1161 = !DILocation(line: 100, column: 193, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1155, file: !412, discriminator: 4)
!1163 = !DILocation(line: 100, column: 193, scope: !1155)
!1164 = !DILocation(line: 100, column: 238, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !457, file: !412, discriminator: 5)
!1166 = !DILocation(line: 100, column: 219, scope: !457)
!1167 = !DILocation(line: 100, column: 212, scope: !457)
!1168 = !DILocation(line: 100, column: 242, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !412, discriminator: 7)
!1170 = !DILexicalBlockFile(scope: !1171, file: !412, discriminator: 6)
!1171 = !DILexicalBlockFile(scope: !457, file: !412, discriminator: 3)
!1172 = !DILocation(line: 101, column: 36, scope: !464)
!1173 = !DILocation(line: 101, column: 49, scope: !464)
!1174 = !DILocation(line: 101, column: 54, scope: !464)
!1175 = !DILocation(line: 101, column: 64, scope: !464)
!1176 = !DILocation(line: 101, column: 69, scope: !464)
!1177 = !DILocation(line: 101, column: 73, scope: !464)
!1178 = !DILocation(line: 101, column: 84, scope: !464)
!1179 = !DILocation(line: 101, column: 110, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !464, file: !412, line: 101, column: 90)
!1181 = !DILocation(line: 101, column: 92, scope: !1180)
!1182 = !DILocation(line: 101, column: 90, scope: !464)
!1183 = !DILocation(line: 101, column: 136, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1180, file: !412, discriminator: 2)
!1185 = !DILocation(line: 101, column: 136, scope: !1180)
!1186 = !DILocation(line: 101, column: 184, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !412, discriminator: 1)
!1188 = distinct !DILexicalBlock(scope: !464, file: !412, line: 101, column: 158)
!1189 = !DILocation(line: 101, column: 187, scope: !1188)
!1190 = !DILocation(line: 101, column: 167, scope: !1188)
!1191 = !DILocation(line: 101, column: 166, scope: !1188)
!1192 = !DILocation(line: 101, column: 161, scope: !1188)
!1193 = !DILocation(line: 101, column: 158, scope: !464)
!1194 = !DILocation(line: 101, column: 193, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1188, file: !412, discriminator: 4)
!1196 = !DILocation(line: 101, column: 193, scope: !1188)
!1197 = !DILocation(line: 101, column: 238, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !464, file: !412, discriminator: 5)
!1199 = !DILocation(line: 101, column: 219, scope: !464)
!1200 = !DILocation(line: 101, column: 212, scope: !464)
!1201 = !DILocation(line: 101, column: 242, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1203, file: !412, discriminator: 7)
!1203 = !DILexicalBlockFile(scope: !1204, file: !412, discriminator: 6)
!1204 = !DILexicalBlockFile(scope: !464, file: !412, discriminator: 3)
!1205 = !DILocation(line: 137, column: 15, scope: !471)
!1206 = !DILocation(line: 137, column: 28, scope: !471)
!1207 = !DILocation(line: 139, column: 5, scope: !471)
!1208 = !DILocation(line: 139, column: 15, scope: !471)
!1209 = !DILocation(line: 139, column: 20, scope: !471)
!1210 = !DILocation(line: 139, column: 25, scope: !471)
!1211 = !DILocation(line: 140, column: 27, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !471, file: !412, line: 140, column: 9)
!1213 = !DILocation(line: 140, column: 9, scope: !1212)
!1214 = !DILocation(line: 140, column: 9, scope: !471)
!1215 = !DILocation(line: 141, column: 19, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !412, line: 140, column: 53)
!1217 = !DILocation(line: 141, column: 25, scope: !1216)
!1218 = !DILocation(line: 141, column: 22, scope: !1216)
!1219 = !DILocation(line: 141, column: 18, scope: !1216)
!1220 = !DILocation(line: 141, column: 16, scope: !1216)
!1221 = !DILocation(line: 142, column: 25, scope: !1216)
!1222 = !DILocation(line: 142, column: 35, scope: !1216)
!1223 = !DILocation(line: 142, column: 44, scope: !1216)
!1224 = !DILocation(line: 143, column: 5, scope: !1216)
!1225 = !DILocation(line: 144, column: 12, scope: !471)
!1226 = !DILocation(line: 145, column: 1, scope: !471)
!1227 = !DILocation(line: 144, column: 5, scope: !471)
!1228 = !DILocation(line: 148, column: 18, scope: !478)
!1229 = !DILocation(line: 148, column: 31, scope: !478)
!1230 = !DILocation(line: 150, column: 5, scope: !478)
!1231 = !DILocation(line: 150, column: 15, scope: !478)
!1232 = !DILocation(line: 150, column: 20, scope: !478)
!1233 = !DILocation(line: 150, column: 25, scope: !478)
!1234 = !DILocation(line: 151, column: 27, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !478, file: !412, line: 151, column: 9)
!1236 = !DILocation(line: 151, column: 9, scope: !1235)
!1237 = !DILocation(line: 151, column: 9, scope: !478)
!1238 = !DILocation(line: 152, column: 19, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !412, line: 151, column: 56)
!1240 = !DILocation(line: 152, column: 25, scope: !1239)
!1241 = !DILocation(line: 152, column: 22, scope: !1239)
!1242 = !DILocation(line: 152, column: 18, scope: !1239)
!1243 = !DILocation(line: 152, column: 16, scope: !1239)
!1244 = !DILocation(line: 153, column: 25, scope: !1239)
!1245 = !DILocation(line: 153, column: 35, scope: !1239)
!1246 = !DILocation(line: 153, column: 44, scope: !1239)
!1247 = !DILocation(line: 154, column: 5, scope: !1239)
!1248 = !DILocation(line: 155, column: 12, scope: !478)
!1249 = !DILocation(line: 156, column: 1, scope: !478)
!1250 = !DILocation(line: 155, column: 5, scope: !478)
!1251 = !DILocation(line: 131, column: 20, scope: !485)
!1252 = !DILocation(line: 131, column: 33, scope: !485)
!1253 = !DILocation(line: 133, column: 27, scope: !485)
!1254 = !DILocation(line: 133, column: 12, scope: !485)
!1255 = !DILocation(line: 133, column: 5, scope: !485)
!1256 = !DILocation(line: 69, column: 35, scope: !489)
!1257 = !DILocation(line: 69, column: 48, scope: !489)
!1258 = !DILocation(line: 69, column: 53, scope: !489)
!1259 = !DILocation(line: 69, column: 63, scope: !489)
!1260 = !DILocation(line: 69, column: 68, scope: !489)
!1261 = !DILocation(line: 69, column: 95, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !489, file: !412, line: 69, column: 75)
!1263 = !DILocation(line: 69, column: 77, scope: !1262)
!1264 = !DILocation(line: 69, column: 75, scope: !489)
!1265 = !DILocation(line: 69, column: 120, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1262, file: !412, discriminator: 2)
!1267 = !DILocation(line: 69, column: 120, scope: !1262)
!1268 = !DILocation(line: 69, column: 159, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !489, file: !412, discriminator: 1)
!1270 = !DILocation(line: 69, column: 162, scope: !489)
!1271 = !DILocation(line: 69, column: 146, scope: !489)
!1272 = !DILocation(line: 69, column: 139, scope: !489)
!1273 = !DILocation(line: 69, column: 167, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !412, discriminator: 4)
!1275 = !DILexicalBlockFile(scope: !489, file: !412, discriminator: 3)
!1276 = !DILocation(line: 70, column: 35, scope: !495)
!1277 = !DILocation(line: 70, column: 48, scope: !495)
!1278 = !DILocation(line: 70, column: 53, scope: !495)
!1279 = !DILocation(line: 70, column: 63, scope: !495)
!1280 = !DILocation(line: 70, column: 68, scope: !495)
!1281 = !DILocation(line: 70, column: 95, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !495, file: !412, line: 70, column: 75)
!1283 = !DILocation(line: 70, column: 77, scope: !1282)
!1284 = !DILocation(line: 70, column: 75, scope: !495)
!1285 = !DILocation(line: 70, column: 120, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1282, file: !412, discriminator: 2)
!1287 = !DILocation(line: 70, column: 120, scope: !1282)
!1288 = !DILocation(line: 70, column: 164, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !495, file: !412, discriminator: 1)
!1290 = !DILocation(line: 70, column: 167, scope: !495)
!1291 = !DILocation(line: 70, column: 146, scope: !495)
!1292 = !DILocation(line: 70, column: 139, scope: !495)
!1293 = !DILocation(line: 70, column: 172, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !412, discriminator: 4)
!1295 = !DILexicalBlockFile(scope: !495, file: !412, discriminator: 3)
!1296 = !DILocation(line: 71, column: 35, scope: !501)
!1297 = !DILocation(line: 71, column: 48, scope: !501)
!1298 = !DILocation(line: 71, column: 53, scope: !501)
!1299 = !DILocation(line: 71, column: 63, scope: !501)
!1300 = !DILocation(line: 71, column: 68, scope: !501)
!1301 = !DILocation(line: 71, column: 95, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !501, file: !412, line: 71, column: 75)
!1303 = !DILocation(line: 71, column: 77, scope: !1302)
!1304 = !DILocation(line: 71, column: 75, scope: !501)
!1305 = !DILocation(line: 71, column: 120, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1302, file: !412, discriminator: 2)
!1307 = !DILocation(line: 71, column: 120, scope: !1302)
!1308 = !DILocation(line: 71, column: 164, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !501, file: !412, discriminator: 1)
!1310 = !DILocation(line: 71, column: 167, scope: !501)
!1311 = !DILocation(line: 71, column: 146, scope: !501)
!1312 = !DILocation(line: 71, column: 139, scope: !501)
!1313 = !DILocation(line: 71, column: 172, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !412, discriminator: 4)
!1315 = !DILexicalBlockFile(scope: !501, file: !412, discriminator: 3)
!1316 = !DILocation(line: 72, column: 40, scope: !507)
!1317 = !DILocation(line: 72, column: 53, scope: !507)
!1318 = !DILocation(line: 72, column: 58, scope: !507)
!1319 = !DILocation(line: 72, column: 68, scope: !507)
!1320 = !DILocation(line: 72, column: 73, scope: !507)
!1321 = !DILocation(line: 72, column: 100, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !507, file: !412, line: 72, column: 80)
!1323 = !DILocation(line: 72, column: 82, scope: !1322)
!1324 = !DILocation(line: 72, column: 80, scope: !507)
!1325 = !DILocation(line: 72, column: 130, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !412, discriminator: 2)
!1327 = !DILocation(line: 72, column: 130, scope: !1322)
!1328 = !DILocation(line: 72, column: 177, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !507, file: !412, discriminator: 1)
!1330 = !DILocation(line: 72, column: 180, scope: !507)
!1331 = !DILocation(line: 72, column: 156, scope: !507)
!1332 = !DILocation(line: 72, column: 149, scope: !507)
!1333 = !DILocation(line: 72, column: 185, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !412, discriminator: 4)
!1335 = !DILexicalBlockFile(scope: !507, file: !412, discriminator: 3)
!1336 = !DILocation(line: 73, column: 39, scope: !513)
!1337 = !DILocation(line: 73, column: 52, scope: !513)
!1338 = !DILocation(line: 73, column: 57, scope: !513)
!1339 = !DILocation(line: 73, column: 67, scope: !513)
!1340 = !DILocation(line: 73, column: 72, scope: !513)
!1341 = !DILocation(line: 73, column: 99, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !513, file: !412, line: 73, column: 79)
!1343 = !DILocation(line: 73, column: 81, scope: !1342)
!1344 = !DILocation(line: 73, column: 79, scope: !513)
!1345 = !DILocation(line: 73, column: 128, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1342, file: !412, discriminator: 2)
!1347 = !DILocation(line: 73, column: 128, scope: !1342)
!1348 = !DILocation(line: 73, column: 174, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !513, file: !412, discriminator: 1)
!1350 = !DILocation(line: 73, column: 177, scope: !513)
!1351 = !DILocation(line: 73, column: 154, scope: !513)
!1352 = !DILocation(line: 73, column: 147, scope: !513)
!1353 = !DILocation(line: 73, column: 182, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1355, file: !412, discriminator: 4)
!1355 = !DILexicalBlockFile(scope: !513, file: !412, discriminator: 3)
!1356 = !DILocation(line: 74, column: 35, scope: !519)
!1357 = !DILocation(line: 74, column: 48, scope: !519)
!1358 = !DILocation(line: 74, column: 53, scope: !519)
!1359 = !DILocation(line: 74, column: 63, scope: !519)
!1360 = !DILocation(line: 74, column: 68, scope: !519)
!1361 = !DILocation(line: 74, column: 95, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !519, file: !412, line: 74, column: 75)
!1363 = !DILocation(line: 74, column: 77, scope: !1362)
!1364 = !DILocation(line: 74, column: 75, scope: !519)
!1365 = !DILocation(line: 74, column: 120, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1362, file: !412, discriminator: 2)
!1367 = !DILocation(line: 74, column: 120, scope: !1362)
!1368 = !DILocation(line: 74, column: 165, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !519, file: !412, discriminator: 1)
!1370 = !DILocation(line: 74, column: 168, scope: !519)
!1371 = !DILocation(line: 74, column: 146, scope: !519)
!1372 = !DILocation(line: 74, column: 139, scope: !519)
!1373 = !DILocation(line: 74, column: 173, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !412, discriminator: 4)
!1375 = !DILexicalBlockFile(scope: !519, file: !412, discriminator: 3)
!1376 = !DILocation(line: 75, column: 35, scope: !525)
!1377 = !DILocation(line: 75, column: 48, scope: !525)
!1378 = !DILocation(line: 75, column: 79, scope: !525)
!1379 = !DILocation(line: 75, column: 61, scope: !525)
!1380 = !DILocation(line: 75, column: 54, scope: !525)
!1381 = !DILocation(line: 76, column: 35, scope: !529)
!1382 = !DILocation(line: 76, column: 48, scope: !529)
!1383 = !DILocation(line: 76, column: 79, scope: !529)
!1384 = !DILocation(line: 76, column: 61, scope: !529)
!1385 = !DILocation(line: 76, column: 54, scope: !529)
!1386 = !DILocation(line: 77, column: 35, scope: !533)
!1387 = !DILocation(line: 77, column: 48, scope: !533)
!1388 = !DILocation(line: 77, column: 79, scope: !533)
!1389 = !DILocation(line: 77, column: 61, scope: !533)
!1390 = !DILocation(line: 77, column: 54, scope: !533)
!1391 = !DILocation(line: 78, column: 35, scope: !537)
!1392 = !DILocation(line: 78, column: 48, scope: !537)
!1393 = !DILocation(line: 78, column: 77, scope: !537)
!1394 = !DILocation(line: 78, column: 61, scope: !537)
!1395 = !DILocation(line: 78, column: 54, scope: !537)
!1396 = !DILocation(line: 79, column: 38, scope: !541)
!1397 = !DILocation(line: 79, column: 51, scope: !541)
!1398 = !DILocation(line: 79, column: 80, scope: !541)
!1399 = !DILocation(line: 79, column: 64, scope: !541)
!1400 = !DILocation(line: 79, column: 57, scope: !541)
!1401 = !DILocation(line: 80, column: 38, scope: !545)
!1402 = !DILocation(line: 80, column: 51, scope: !545)
!1403 = !DILocation(line: 80, column: 56, scope: !545)
!1404 = !DILocation(line: 80, column: 66, scope: !545)
!1405 = !DILocation(line: 80, column: 71, scope: !545)
!1406 = !DILocation(line: 80, column: 98, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !545, file: !412, line: 80, column: 78)
!1408 = !DILocation(line: 80, column: 80, scope: !1407)
!1409 = !DILocation(line: 80, column: 78, scope: !545)
!1410 = !DILocation(line: 80, column: 126, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1407, file: !412, discriminator: 2)
!1412 = !DILocation(line: 80, column: 126, scope: !1407)
!1413 = !DILocation(line: 80, column: 168, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !545, file: !412, discriminator: 1)
!1415 = !DILocation(line: 80, column: 171, scope: !545)
!1416 = !DILocation(line: 80, column: 152, scope: !545)
!1417 = !DILocation(line: 80, column: 145, scope: !545)
!1418 = !DILocation(line: 80, column: 176, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1420, file: !412, discriminator: 4)
!1420 = !DILexicalBlockFile(scope: !545, file: !412, discriminator: 3)
!1421 = !DILocation(line: 81, column: 38, scope: !551)
!1422 = !DILocation(line: 81, column: 51, scope: !551)
!1423 = !DILocation(line: 81, column: 56, scope: !551)
!1424 = !DILocation(line: 81, column: 66, scope: !551)
!1425 = !DILocation(line: 81, column: 71, scope: !551)
!1426 = !DILocation(line: 81, column: 98, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !551, file: !412, line: 81, column: 78)
!1428 = !DILocation(line: 81, column: 80, scope: !1427)
!1429 = !DILocation(line: 81, column: 78, scope: !551)
!1430 = !DILocation(line: 81, column: 126, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1427, file: !412, discriminator: 2)
!1432 = !DILocation(line: 81, column: 126, scope: !1427)
!1433 = !DILocation(line: 81, column: 168, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !551, file: !412, discriminator: 1)
!1435 = !DILocation(line: 81, column: 171, scope: !551)
!1436 = !DILocation(line: 81, column: 152, scope: !551)
!1437 = !DILocation(line: 81, column: 145, scope: !551)
!1438 = !DILocation(line: 81, column: 176, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1440, file: !412, discriminator: 4)
!1440 = !DILexicalBlockFile(scope: !551, file: !412, discriminator: 3)
!1441 = !DILocation(line: 82, column: 36, scope: !557)
!1442 = !DILocation(line: 82, column: 49, scope: !557)
!1443 = !DILocation(line: 82, column: 55, scope: !557)
!1444 = !DILocation(line: 82, column: 60, scope: !557)
!1445 = !DILocation(line: 82, column: 88, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !557, file: !412, line: 82, column: 66)
!1447 = !DILocation(line: 82, column: 75, scope: !1446)
!1448 = !DILocation(line: 82, column: 74, scope: !1446)
!1449 = !DILocation(line: 82, column: 69, scope: !1446)
!1450 = !DILocation(line: 82, column: 66, scope: !557)
!1451 = !DILocation(line: 82, column: 94, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1446, file: !412, discriminator: 1)
!1453 = !DILocation(line: 82, column: 94, scope: !1446)
!1454 = !DILocation(line: 82, column: 136, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !557, file: !412, discriminator: 2)
!1456 = !DILocation(line: 82, column: 120, scope: !557)
!1457 = !DILocation(line: 82, column: 113, scope: !557)
!1458 = !DILocation(line: 82, column: 140, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !412, discriminator: 4)
!1460 = !DILexicalBlockFile(scope: !557, file: !412, discriminator: 3)
!1461 = !DILocation(line: 83, column: 36, scope: !562)
!1462 = !DILocation(line: 83, column: 49, scope: !562)
!1463 = !DILocation(line: 83, column: 54, scope: !562)
!1464 = !DILocation(line: 83, column: 64, scope: !562)
!1465 = !DILocation(line: 83, column: 69, scope: !562)
!1466 = !DILocation(line: 83, column: 96, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !562, file: !412, line: 83, column: 76)
!1468 = !DILocation(line: 83, column: 78, scope: !1467)
!1469 = !DILocation(line: 83, column: 76, scope: !562)
!1470 = !DILocation(line: 83, column: 122, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1467, file: !412, discriminator: 2)
!1472 = !DILocation(line: 83, column: 122, scope: !1467)
!1473 = !DILocation(line: 83, column: 161, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 1)
!1475 = !DILocation(line: 83, column: 164, scope: !562)
!1476 = !DILocation(line: 83, column: 148, scope: !562)
!1477 = !DILocation(line: 83, column: 141, scope: !562)
!1478 = !DILocation(line: 83, column: 169, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !412, discriminator: 4)
!1480 = !DILexicalBlockFile(scope: !562, file: !412, discriminator: 3)
!1481 = !DILocation(line: 84, column: 35, scope: !568)
!1482 = !DILocation(line: 84, column: 48, scope: !568)
!1483 = !DILocation(line: 84, column: 53, scope: !568)
!1484 = !DILocation(line: 84, column: 63, scope: !568)
!1485 = !DILocation(line: 84, column: 68, scope: !568)
!1486 = !DILocation(line: 84, column: 95, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !568, file: !412, line: 84, column: 75)
!1488 = !DILocation(line: 84, column: 77, scope: !1487)
!1489 = !DILocation(line: 84, column: 75, scope: !568)
!1490 = !DILocation(line: 84, column: 120, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1487, file: !412, discriminator: 2)
!1492 = !DILocation(line: 84, column: 120, scope: !1487)
!1493 = !DILocation(line: 84, column: 159, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !568, file: !412, discriminator: 1)
!1495 = !DILocation(line: 84, column: 162, scope: !568)
!1496 = !DILocation(line: 84, column: 146, scope: !568)
!1497 = !DILocation(line: 84, column: 139, scope: !568)
!1498 = !DILocation(line: 84, column: 167, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1500, file: !412, discriminator: 4)
!1500 = !DILexicalBlockFile(scope: !568, file: !412, discriminator: 3)
!1501 = !DILocation(line: 85, column: 35, scope: !574)
!1502 = !DILocation(line: 85, column: 48, scope: !574)
!1503 = !DILocation(line: 85, column: 53, scope: !574)
!1504 = !DILocation(line: 85, column: 63, scope: !574)
!1505 = !DILocation(line: 85, column: 68, scope: !574)
!1506 = !DILocation(line: 85, column: 95, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !574, file: !412, line: 85, column: 75)
!1508 = !DILocation(line: 85, column: 77, scope: !1507)
!1509 = !DILocation(line: 85, column: 75, scope: !574)
!1510 = !DILocation(line: 85, column: 120, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1507, file: !412, discriminator: 2)
!1512 = !DILocation(line: 85, column: 120, scope: !1507)
!1513 = !DILocation(line: 85, column: 158, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !574, file: !412, discriminator: 1)
!1515 = !DILocation(line: 85, column: 161, scope: !574)
!1516 = !DILocation(line: 85, column: 146, scope: !574)
!1517 = !DILocation(line: 85, column: 139, scope: !574)
!1518 = !DILocation(line: 85, column: 166, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !412, discriminator: 4)
!1520 = !DILexicalBlockFile(scope: !574, file: !412, discriminator: 3)
!1521 = !DILocation(line: 86, column: 36, scope: !580)
!1522 = !DILocation(line: 86, column: 49, scope: !580)
!1523 = !DILocation(line: 86, column: 54, scope: !580)
!1524 = !DILocation(line: 86, column: 64, scope: !580)
!1525 = !DILocation(line: 86, column: 69, scope: !580)
!1526 = !DILocation(line: 86, column: 96, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !580, file: !412, line: 86, column: 76)
!1528 = !DILocation(line: 86, column: 78, scope: !1527)
!1529 = !DILocation(line: 86, column: 76, scope: !580)
!1530 = !DILocation(line: 86, column: 122, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1527, file: !412, discriminator: 2)
!1532 = !DILocation(line: 86, column: 122, scope: !1527)
!1533 = !DILocation(line: 86, column: 168, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !580, file: !412, discriminator: 1)
!1535 = !DILocation(line: 86, column: 171, scope: !580)
!1536 = !DILocation(line: 86, column: 148, scope: !580)
!1537 = !DILocation(line: 86, column: 141, scope: !580)
!1538 = !DILocation(line: 86, column: 176, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !412, discriminator: 4)
!1540 = !DILexicalBlockFile(scope: !580, file: !412, discriminator: 3)
!1541 = !DILocation(line: 87, column: 36, scope: !586)
!1542 = !DILocation(line: 87, column: 49, scope: !586)
!1543 = !DILocation(line: 87, column: 54, scope: !586)
!1544 = !DILocation(line: 87, column: 64, scope: !586)
!1545 = !DILocation(line: 87, column: 69, scope: !586)
!1546 = !DILocation(line: 87, column: 96, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !586, file: !412, line: 87, column: 76)
!1548 = !DILocation(line: 87, column: 78, scope: !1547)
!1549 = !DILocation(line: 87, column: 76, scope: !586)
!1550 = !DILocation(line: 87, column: 122, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1547, file: !412, discriminator: 2)
!1552 = !DILocation(line: 87, column: 122, scope: !1547)
!1553 = !DILocation(line: 87, column: 173, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !586, file: !412, discriminator: 1)
!1555 = !DILocation(line: 87, column: 176, scope: !586)
!1556 = !DILocation(line: 87, column: 148, scope: !586)
!1557 = !DILocation(line: 87, column: 141, scope: !586)
!1558 = !DILocation(line: 87, column: 181, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1560, file: !412, discriminator: 4)
!1560 = !DILexicalBlockFile(scope: !586, file: !412, discriminator: 3)
!1561 = !DILocation(line: 88, column: 36, scope: !592)
!1562 = !DILocation(line: 88, column: 49, scope: !592)
!1563 = !DILocation(line: 88, column: 54, scope: !592)
!1564 = !DILocation(line: 88, column: 64, scope: !592)
!1565 = !DILocation(line: 88, column: 69, scope: !592)
!1566 = !DILocation(line: 88, column: 96, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !592, file: !412, line: 88, column: 76)
!1568 = !DILocation(line: 88, column: 78, scope: !1567)
!1569 = !DILocation(line: 88, column: 76, scope: !592)
!1570 = !DILocation(line: 88, column: 122, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1567, file: !412, discriminator: 2)
!1572 = !DILocation(line: 88, column: 122, scope: !1567)
!1573 = !DILocation(line: 88, column: 173, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !592, file: !412, discriminator: 1)
!1575 = !DILocation(line: 88, column: 176, scope: !592)
!1576 = !DILocation(line: 88, column: 148, scope: !592)
!1577 = !DILocation(line: 88, column: 141, scope: !592)
!1578 = !DILocation(line: 88, column: 181, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !412, discriminator: 4)
!1580 = !DILexicalBlockFile(scope: !592, file: !412, discriminator: 3)
!1581 = !DILocation(line: 89, column: 41, scope: !598)
!1582 = !DILocation(line: 89, column: 54, scope: !598)
!1583 = !DILocation(line: 89, column: 59, scope: !598)
!1584 = !DILocation(line: 89, column: 69, scope: !598)
!1585 = !DILocation(line: 89, column: 74, scope: !598)
!1586 = !DILocation(line: 89, column: 101, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !598, file: !412, line: 89, column: 81)
!1588 = !DILocation(line: 89, column: 83, scope: !1587)
!1589 = !DILocation(line: 89, column: 81, scope: !598)
!1590 = !DILocation(line: 89, column: 132, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1587, file: !412, discriminator: 2)
!1592 = !DILocation(line: 89, column: 132, scope: !1587)
!1593 = !DILocation(line: 89, column: 186, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !598, file: !412, discriminator: 1)
!1595 = !DILocation(line: 89, column: 189, scope: !598)
!1596 = !DILocation(line: 89, column: 158, scope: !598)
!1597 = !DILocation(line: 89, column: 151, scope: !598)
!1598 = !DILocation(line: 89, column: 194, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !412, discriminator: 4)
!1600 = !DILexicalBlockFile(scope: !598, file: !412, discriminator: 3)
!1601 = !DILocation(line: 90, column: 40, scope: !604)
!1602 = !DILocation(line: 90, column: 53, scope: !604)
!1603 = !DILocation(line: 90, column: 58, scope: !604)
!1604 = !DILocation(line: 90, column: 68, scope: !604)
!1605 = !DILocation(line: 90, column: 73, scope: !604)
!1606 = !DILocation(line: 90, column: 100, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !604, file: !412, line: 90, column: 80)
!1608 = !DILocation(line: 90, column: 82, scope: !1607)
!1609 = !DILocation(line: 90, column: 80, scope: !604)
!1610 = !DILocation(line: 90, column: 130, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1607, file: !412, discriminator: 2)
!1612 = !DILocation(line: 90, column: 130, scope: !1607)
!1613 = !DILocation(line: 90, column: 183, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !604, file: !412, discriminator: 1)
!1615 = !DILocation(line: 90, column: 186, scope: !604)
!1616 = !DILocation(line: 90, column: 156, scope: !604)
!1617 = !DILocation(line: 90, column: 149, scope: !604)
!1618 = !DILocation(line: 90, column: 191, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !412, discriminator: 4)
!1620 = !DILexicalBlockFile(scope: !604, file: !412, discriminator: 3)
!1621 = !DILocation(line: 91, column: 36, scope: !610)
!1622 = !DILocation(line: 91, column: 49, scope: !610)
!1623 = !DILocation(line: 91, column: 54, scope: !610)
!1624 = !DILocation(line: 91, column: 64, scope: !610)
!1625 = !DILocation(line: 91, column: 69, scope: !610)
!1626 = !DILocation(line: 91, column: 96, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !610, file: !412, line: 91, column: 76)
!1628 = !DILocation(line: 91, column: 78, scope: !1627)
!1629 = !DILocation(line: 91, column: 76, scope: !610)
!1630 = !DILocation(line: 91, column: 122, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1627, file: !412, discriminator: 2)
!1632 = !DILocation(line: 91, column: 122, scope: !1627)
!1633 = !DILocation(line: 91, column: 174, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !610, file: !412, discriminator: 1)
!1635 = !DILocation(line: 91, column: 177, scope: !610)
!1636 = !DILocation(line: 91, column: 148, scope: !610)
!1637 = !DILocation(line: 91, column: 141, scope: !610)
!1638 = !DILocation(line: 91, column: 182, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !412, discriminator: 4)
!1640 = !DILexicalBlockFile(scope: !610, file: !412, discriminator: 3)
!1641 = !DILocation(line: 92, column: 39, scope: !616)
!1642 = !DILocation(line: 92, column: 52, scope: !616)
!1643 = !DILocation(line: 92, column: 57, scope: !616)
!1644 = !DILocation(line: 92, column: 67, scope: !616)
!1645 = !DILocation(line: 92, column: 72, scope: !616)
!1646 = !DILocation(line: 92, column: 99, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !616, file: !412, line: 92, column: 79)
!1648 = !DILocation(line: 92, column: 81, scope: !1647)
!1649 = !DILocation(line: 92, column: 79, scope: !616)
!1650 = !DILocation(line: 92, column: 128, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1647, file: !412, discriminator: 2)
!1652 = !DILocation(line: 92, column: 128, scope: !1647)
!1653 = !DILocation(line: 92, column: 177, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !616, file: !412, discriminator: 1)
!1655 = !DILocation(line: 92, column: 180, scope: !616)
!1656 = !DILocation(line: 92, column: 154, scope: !616)
!1657 = !DILocation(line: 92, column: 147, scope: !616)
!1658 = !DILocation(line: 92, column: 185, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !412, discriminator: 4)
!1660 = !DILexicalBlockFile(scope: !616, file: !412, discriminator: 3)
!1661 = !DILocation(line: 93, column: 39, scope: !622)
!1662 = !DILocation(line: 93, column: 52, scope: !622)
!1663 = !DILocation(line: 93, column: 57, scope: !622)
!1664 = !DILocation(line: 93, column: 67, scope: !622)
!1665 = !DILocation(line: 93, column: 72, scope: !622)
!1666 = !DILocation(line: 93, column: 99, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !622, file: !412, line: 93, column: 79)
!1668 = !DILocation(line: 93, column: 81, scope: !1667)
!1669 = !DILocation(line: 93, column: 79, scope: !622)
!1670 = !DILocation(line: 93, column: 128, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1667, file: !412, discriminator: 2)
!1672 = !DILocation(line: 93, column: 128, scope: !1667)
!1673 = !DILocation(line: 93, column: 177, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !622, file: !412, discriminator: 1)
!1675 = !DILocation(line: 93, column: 180, scope: !622)
!1676 = !DILocation(line: 93, column: 154, scope: !622)
!1677 = !DILocation(line: 93, column: 147, scope: !622)
!1678 = !DILocation(line: 93, column: 185, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !412, discriminator: 4)
!1680 = !DILexicalBlockFile(scope: !622, file: !412, discriminator: 3)
!1681 = !DILocation(line: 94, column: 36, scope: !628)
!1682 = !DILocation(line: 94, column: 49, scope: !628)
!1683 = !DILocation(line: 94, column: 54, scope: !628)
!1684 = !DILocation(line: 94, column: 64, scope: !628)
!1685 = !DILocation(line: 94, column: 69, scope: !628)
!1686 = !DILocation(line: 94, column: 96, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !628, file: !412, line: 94, column: 76)
!1688 = !DILocation(line: 94, column: 78, scope: !1687)
!1689 = !DILocation(line: 94, column: 76, scope: !628)
!1690 = !DILocation(line: 94, column: 122, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1687, file: !412, discriminator: 2)
!1692 = !DILocation(line: 94, column: 122, scope: !1687)
!1693 = !DILocation(line: 94, column: 168, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !628, file: !412, discriminator: 1)
!1695 = !DILocation(line: 94, column: 171, scope: !628)
!1696 = !DILocation(line: 94, column: 148, scope: !628)
!1697 = !DILocation(line: 94, column: 141, scope: !628)
!1698 = !DILocation(line: 94, column: 176, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !412, discriminator: 4)
!1700 = !DILexicalBlockFile(scope: !628, file: !412, discriminator: 3)
!1701 = !DILocation(line: 95, column: 36, scope: !634)
!1702 = !DILocation(line: 95, column: 49, scope: !634)
!1703 = !DILocation(line: 95, column: 54, scope: !634)
!1704 = !DILocation(line: 95, column: 64, scope: !634)
!1705 = !DILocation(line: 95, column: 69, scope: !634)
!1706 = !DILocation(line: 95, column: 96, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !634, file: !412, line: 95, column: 76)
!1708 = !DILocation(line: 95, column: 78, scope: !1707)
!1709 = !DILocation(line: 95, column: 76, scope: !634)
!1710 = !DILocation(line: 95, column: 122, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1707, file: !412, discriminator: 2)
!1712 = !DILocation(line: 95, column: 122, scope: !1707)
!1713 = !DILocation(line: 95, column: 168, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !634, file: !412, discriminator: 1)
!1715 = !DILocation(line: 95, column: 171, scope: !634)
!1716 = !DILocation(line: 95, column: 148, scope: !634)
!1717 = !DILocation(line: 95, column: 141, scope: !634)
!1718 = !DILocation(line: 95, column: 176, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !412, discriminator: 4)
!1720 = !DILexicalBlockFile(scope: !634, file: !412, discriminator: 3)
!1721 = !DILocation(line: 96, column: 35, scope: !640)
!1722 = !DILocation(line: 96, column: 48, scope: !640)
!1723 = !DILocation(line: 96, column: 53, scope: !640)
!1724 = !DILocation(line: 96, column: 63, scope: !640)
!1725 = !DILocation(line: 96, column: 68, scope: !640)
!1726 = !DILocation(line: 96, column: 95, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !640, file: !412, line: 96, column: 75)
!1728 = !DILocation(line: 96, column: 77, scope: !1727)
!1729 = !DILocation(line: 96, column: 75, scope: !640)
!1730 = !DILocation(line: 96, column: 120, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1727, file: !412, discriminator: 2)
!1732 = !DILocation(line: 96, column: 120, scope: !1727)
!1733 = !DILocation(line: 96, column: 165, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !640, file: !412, discriminator: 1)
!1735 = !DILocation(line: 96, column: 168, scope: !640)
!1736 = !DILocation(line: 96, column: 146, scope: !640)
!1737 = !DILocation(line: 96, column: 139, scope: !640)
!1738 = !DILocation(line: 96, column: 173, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !412, discriminator: 4)
!1740 = !DILexicalBlockFile(scope: !640, file: !412, discriminator: 3)
!1741 = !DILocation(line: 97, column: 38, scope: !646)
!1742 = !DILocation(line: 97, column: 51, scope: !646)
!1743 = !DILocation(line: 97, column: 56, scope: !646)
!1744 = !DILocation(line: 97, column: 66, scope: !646)
!1745 = !DILocation(line: 97, column: 71, scope: !646)
!1746 = !DILocation(line: 97, column: 98, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !646, file: !412, line: 97, column: 78)
!1748 = !DILocation(line: 97, column: 80, scope: !1747)
!1749 = !DILocation(line: 97, column: 78, scope: !646)
!1750 = !DILocation(line: 97, column: 126, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1747, file: !412, discriminator: 2)
!1752 = !DILocation(line: 97, column: 126, scope: !1747)
!1753 = !DILocation(line: 97, column: 170, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !646, file: !412, discriminator: 1)
!1755 = !DILocation(line: 97, column: 173, scope: !646)
!1756 = !DILocation(line: 97, column: 152, scope: !646)
!1757 = !DILocation(line: 97, column: 145, scope: !646)
!1758 = !DILocation(line: 97, column: 178, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !412, discriminator: 4)
!1760 = !DILexicalBlockFile(scope: !646, file: !412, discriminator: 3)
!1761 = !DILocation(line: 98, column: 39, scope: !652)
!1762 = !DILocation(line: 98, column: 52, scope: !652)
!1763 = !DILocation(line: 98, column: 57, scope: !652)
!1764 = !DILocation(line: 98, column: 67, scope: !652)
!1765 = !DILocation(line: 98, column: 72, scope: !652)
!1766 = !DILocation(line: 98, column: 99, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !652, file: !412, line: 98, column: 79)
!1768 = !DILocation(line: 98, column: 81, scope: !1767)
!1769 = !DILocation(line: 98, column: 79, scope: !652)
!1770 = !DILocation(line: 98, column: 128, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1767, file: !412, discriminator: 2)
!1772 = !DILocation(line: 98, column: 128, scope: !1767)
!1773 = !DILocation(line: 98, column: 179, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !652, file: !412, discriminator: 1)
!1775 = !DILocation(line: 98, column: 182, scope: !652)
!1776 = !DILocation(line: 98, column: 154, scope: !652)
!1777 = !DILocation(line: 98, column: 147, scope: !652)
!1778 = !DILocation(line: 98, column: 187, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !412, discriminator: 4)
!1780 = !DILexicalBlockFile(scope: !652, file: !412, discriminator: 3)
!1781 = !DILocation(line: 102, column: 39, scope: !658)
!1782 = !DILocation(line: 102, column: 52, scope: !658)
!1783 = !DILocation(line: 102, column: 57, scope: !658)
!1784 = !DILocation(line: 102, column: 67, scope: !658)
!1785 = !DILocation(line: 102, column: 72, scope: !658)
!1786 = !DILocation(line: 102, column: 99, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !658, file: !412, line: 102, column: 79)
!1788 = !DILocation(line: 102, column: 81, scope: !1787)
!1789 = !DILocation(line: 102, column: 79, scope: !658)
!1790 = !DILocation(line: 102, column: 128, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1787, file: !412, discriminator: 2)
!1792 = !DILocation(line: 102, column: 128, scope: !1787)
!1793 = !DILocation(line: 102, column: 171, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !658, file: !412, discriminator: 1)
!1795 = !DILocation(line: 102, column: 174, scope: !658)
!1796 = !DILocation(line: 102, column: 154, scope: !658)
!1797 = !DILocation(line: 102, column: 147, scope: !658)
!1798 = !DILocation(line: 102, column: 179, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !412, discriminator: 4)
!1800 = !DILexicalBlockFile(scope: !658, file: !412, discriminator: 3)
!1801 = !DILocation(line: 104, column: 39, scope: !664)
!1802 = !DILocation(line: 104, column: 52, scope: !664)
!1803 = !DILocation(line: 104, column: 57, scope: !664)
!1804 = !DILocation(line: 104, column: 67, scope: !664)
!1805 = !DILocation(line: 104, column: 72, scope: !664)
!1806 = !DILocation(line: 104, column: 77, scope: !664)
!1807 = !DILocation(line: 104, column: 104, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !664, file: !412, line: 104, column: 84)
!1809 = !DILocation(line: 104, column: 86, scope: !1808)
!1810 = !DILocation(line: 104, column: 84, scope: !664)
!1811 = !DILocation(line: 104, column: 137, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1808, file: !412, discriminator: 2)
!1813 = !DILocation(line: 104, column: 137, scope: !1808)
!1814 = !DILocation(line: 104, column: 182, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1816, file: !412, discriminator: 1)
!1816 = distinct !DILexicalBlock(scope: !664, file: !412, line: 104, column: 159)
!1817 = !DILocation(line: 104, column: 185, scope: !1816)
!1818 = !DILocation(line: 104, column: 188, scope: !1816)
!1819 = !DILocation(line: 104, column: 165, scope: !1816)
!1820 = !DILocation(line: 104, column: 162, scope: !1816)
!1821 = !DILocation(line: 104, column: 159, scope: !664)
!1822 = !DILocation(line: 104, column: 193, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1816, file: !412, discriminator: 4)
!1824 = !DILocation(line: 104, column: 193, scope: !1816)
!1825 = !DILocation(line: 104, column: 258, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !664, file: !412, discriminator: 5)
!1827 = !DILocation(line: 104, column: 263, scope: !664)
!1828 = !DILocation(line: 104, column: 289, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !412, discriminator: 7)
!1830 = !DILexicalBlockFile(scope: !1831, file: !412, discriminator: 6)
!1831 = !DILexicalBlockFile(scope: !664, file: !412, discriminator: 3)
!1832 = !DILocation(line: 103, column: 39, scope: !671)
!1833 = !DILocation(line: 103, column: 52, scope: !671)
!1834 = !DILocation(line: 103, column: 57, scope: !671)
!1835 = !DILocation(line: 103, column: 67, scope: !671)
!1836 = !DILocation(line: 103, column: 72, scope: !671)
!1837 = !DILocation(line: 103, column: 99, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !671, file: !412, line: 103, column: 79)
!1839 = !DILocation(line: 103, column: 81, scope: !1838)
!1840 = !DILocation(line: 103, column: 79, scope: !671)
!1841 = !DILocation(line: 103, column: 128, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1838, file: !412, discriminator: 2)
!1843 = !DILocation(line: 103, column: 128, scope: !1838)
!1844 = !DILocation(line: 103, column: 173, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1846, file: !412, discriminator: 1)
!1846 = distinct !DILexicalBlock(scope: !671, file: !412, line: 103, column: 150)
!1847 = !DILocation(line: 103, column: 176, scope: !1846)
!1848 = !DILocation(line: 103, column: 156, scope: !1846)
!1849 = !DILocation(line: 103, column: 153, scope: !1846)
!1850 = !DILocation(line: 103, column: 150, scope: !671)
!1851 = !DILocation(line: 103, column: 181, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1846, file: !412, discriminator: 4)
!1853 = !DILocation(line: 103, column: 181, scope: !1846)
!1854 = !DILocation(line: 103, column: 246, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !671, file: !412, discriminator: 5)
!1856 = !DILocation(line: 103, column: 251, scope: !671)
!1857 = !DILocation(line: 103, column: 277, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1859, file: !412, discriminator: 7)
!1859 = !DILexicalBlockFile(scope: !1860, file: !412, discriminator: 6)
!1860 = !DILexicalBlockFile(scope: !671, file: !412, discriminator: 3)
!1861 = !DILocation(line: 113, column: 18, scope: !677)
!1862 = !DILocation(line: 113, column: 31, scope: !677)
!1863 = !DILocation(line: 115, column: 5, scope: !677)
!1864 = !DILocation(line: 115, column: 15, scope: !677)
!1865 = !DILocation(line: 115, column: 20, scope: !677)
!1866 = !DILocation(line: 116, column: 27, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !677, file: !412, line: 116, column: 9)
!1868 = !DILocation(line: 116, column: 9, scope: !1867)
!1869 = !DILocation(line: 116, column: 9, scope: !677)
!1870 = !DILocation(line: 117, column: 31, scope: !1867)
!1871 = !DILocation(line: 117, column: 35, scope: !1867)
!1872 = !DILocation(line: 117, column: 16, scope: !1867)
!1873 = !DILocation(line: 117, column: 9, scope: !1867)
!1874 = !DILocation(line: 118, column: 5, scope: !677)
!1875 = !DILocation(line: 119, column: 1, scope: !677)
!1876 = !DILocation(line: 122, column: 19, scope: !683)
!1877 = !DILocation(line: 122, column: 32, scope: !683)
!1878 = !DILocation(line: 124, column: 5, scope: !683)
!1879 = !DILocation(line: 124, column: 15, scope: !683)
!1880 = !DILocation(line: 124, column: 20, scope: !683)
!1881 = !DILocation(line: 125, column: 27, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !683, file: !412, line: 125, column: 9)
!1883 = !DILocation(line: 125, column: 9, scope: !1882)
!1884 = !DILocation(line: 125, column: 9, scope: !683)
!1885 = !DILocation(line: 126, column: 38, scope: !1882)
!1886 = !DILocation(line: 126, column: 42, scope: !1882)
!1887 = !DILocation(line: 126, column: 16, scope: !1882)
!1888 = !DILocation(line: 126, column: 9, scope: !1882)
!1889 = !DILocation(line: 127, column: 5, scope: !683)
!1890 = !DILocation(line: 128, column: 1, scope: !683)
!1891 = !DILocation(line: 105, column: 34, scope: !689)
!1892 = !DILocation(line: 105, column: 47, scope: !689)
!1893 = !DILocation(line: 105, column: 52, scope: !689)
!1894 = !DILocation(line: 105, column: 62, scope: !689)
!1895 = !DILocation(line: 105, column: 67, scope: !689)
!1896 = !DILocation(line: 105, column: 94, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !689, file: !412, line: 105, column: 74)
!1898 = !DILocation(line: 105, column: 76, scope: !1897)
!1899 = !DILocation(line: 105, column: 74, scope: !689)
!1900 = !DILocation(line: 105, column: 118, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1897, file: !412, discriminator: 2)
!1902 = !DILocation(line: 105, column: 118, scope: !1897)
!1903 = !DILocation(line: 105, column: 165, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !689, file: !412, discriminator: 1)
!1905 = !DILocation(line: 105, column: 168, scope: !689)
!1906 = !DILocation(line: 105, column: 144, scope: !689)
!1907 = !DILocation(line: 105, column: 137, scope: !689)
!1908 = !DILocation(line: 105, column: 175, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !412, discriminator: 4)
!1910 = !DILexicalBlockFile(scope: !689, file: !412, discriminator: 3)
!1911 = !DILocation(line: 106, column: 34, scope: !695)
!1912 = !DILocation(line: 106, column: 47, scope: !695)
!1913 = !DILocation(line: 106, column: 52, scope: !695)
!1914 = !DILocation(line: 106, column: 62, scope: !695)
!1915 = !DILocation(line: 106, column: 67, scope: !695)
!1916 = !DILocation(line: 106, column: 94, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !695, file: !412, line: 106, column: 74)
!1918 = !DILocation(line: 106, column: 76, scope: !1917)
!1919 = !DILocation(line: 106, column: 74, scope: !695)
!1920 = !DILocation(line: 106, column: 118, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1917, file: !412, discriminator: 2)
!1922 = !DILocation(line: 106, column: 118, scope: !1917)
!1923 = !DILocation(line: 106, column: 165, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !695, file: !412, discriminator: 1)
!1925 = !DILocation(line: 106, column: 168, scope: !695)
!1926 = !DILocation(line: 106, column: 144, scope: !695)
!1927 = !DILocation(line: 106, column: 137, scope: !695)
!1928 = !DILocation(line: 106, column: 175, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1930, file: !412, discriminator: 4)
!1930 = !DILexicalBlockFile(scope: !695, file: !412, discriminator: 3)
!1931 = !DILocation(line: 107, column: 34, scope: !701)
!1932 = !DILocation(line: 107, column: 47, scope: !701)
!1933 = !DILocation(line: 107, column: 52, scope: !701)
!1934 = !DILocation(line: 107, column: 62, scope: !701)
!1935 = !DILocation(line: 107, column: 67, scope: !701)
!1936 = !DILocation(line: 107, column: 94, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !701, file: !412, line: 107, column: 74)
!1938 = !DILocation(line: 107, column: 76, scope: !1937)
!1939 = !DILocation(line: 107, column: 74, scope: !701)
!1940 = !DILocation(line: 107, column: 118, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1937, file: !412, discriminator: 2)
!1942 = !DILocation(line: 107, column: 118, scope: !1937)
!1943 = !DILocation(line: 107, column: 165, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !701, file: !412, discriminator: 1)
!1945 = !DILocation(line: 107, column: 168, scope: !701)
!1946 = !DILocation(line: 107, column: 144, scope: !701)
!1947 = !DILocation(line: 107, column: 137, scope: !701)
!1948 = !DILocation(line: 107, column: 175, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1950, file: !412, discriminator: 4)
!1950 = !DILexicalBlockFile(scope: !701, file: !412, discriminator: 3)
!1951 = !DILocation(line: 108, column: 34, scope: !707)
!1952 = !DILocation(line: 108, column: 47, scope: !707)
!1953 = !DILocation(line: 108, column: 52, scope: !707)
!1954 = !DILocation(line: 108, column: 62, scope: !707)
!1955 = !DILocation(line: 108, column: 67, scope: !707)
!1956 = !DILocation(line: 108, column: 94, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !707, file: !412, line: 108, column: 74)
!1958 = !DILocation(line: 108, column: 76, scope: !1957)
!1959 = !DILocation(line: 108, column: 74, scope: !707)
!1960 = !DILocation(line: 108, column: 118, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1957, file: !412, discriminator: 2)
!1962 = !DILocation(line: 108, column: 118, scope: !1957)
!1963 = !DILocation(line: 108, column: 165, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !707, file: !412, discriminator: 1)
!1965 = !DILocation(line: 108, column: 168, scope: !707)
!1966 = !DILocation(line: 108, column: 144, scope: !707)
!1967 = !DILocation(line: 108, column: 137, scope: !707)
!1968 = !DILocation(line: 108, column: 175, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1970, file: !412, discriminator: 4)
!1970 = !DILexicalBlockFile(scope: !707, file: !412, discriminator: 3)
!1971 = !DILocation(line: 109, column: 34, scope: !713)
!1972 = !DILocation(line: 109, column: 47, scope: !713)
!1973 = !DILocation(line: 109, column: 52, scope: !713)
!1974 = !DILocation(line: 109, column: 62, scope: !713)
!1975 = !DILocation(line: 109, column: 67, scope: !713)
!1976 = !DILocation(line: 109, column: 94, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !713, file: !412, line: 109, column: 74)
!1978 = !DILocation(line: 109, column: 76, scope: !1977)
!1979 = !DILocation(line: 109, column: 74, scope: !713)
!1980 = !DILocation(line: 109, column: 118, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1977, file: !412, discriminator: 2)
!1982 = !DILocation(line: 109, column: 118, scope: !1977)
!1983 = !DILocation(line: 109, column: 165, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !713, file: !412, discriminator: 1)
!1985 = !DILocation(line: 109, column: 168, scope: !713)
!1986 = !DILocation(line: 109, column: 144, scope: !713)
!1987 = !DILocation(line: 109, column: 137, scope: !713)
!1988 = !DILocation(line: 109, column: 175, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !412, discriminator: 4)
!1990 = !DILexicalBlockFile(scope: !713, file: !412, discriminator: 3)
!1991 = !DILocation(line: 110, column: 34, scope: !719)
!1992 = !DILocation(line: 110, column: 47, scope: !719)
!1993 = !DILocation(line: 110, column: 52, scope: !719)
!1994 = !DILocation(line: 110, column: 62, scope: !719)
!1995 = !DILocation(line: 110, column: 67, scope: !719)
!1996 = !DILocation(line: 110, column: 94, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !719, file: !412, line: 110, column: 74)
!1998 = !DILocation(line: 110, column: 76, scope: !1997)
!1999 = !DILocation(line: 110, column: 74, scope: !719)
!2000 = !DILocation(line: 110, column: 118, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1997, file: !412, discriminator: 2)
!2002 = !DILocation(line: 110, column: 118, scope: !1997)
!2003 = !DILocation(line: 110, column: 165, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !719, file: !412, discriminator: 1)
!2005 = !DILocation(line: 110, column: 168, scope: !719)
!2006 = !DILocation(line: 110, column: 144, scope: !719)
!2007 = !DILocation(line: 110, column: 137, scope: !719)
!2008 = !DILocation(line: 110, column: 175, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !412, discriminator: 4)
!2010 = !DILexicalBlockFile(scope: !719, file: !412, discriminator: 3)
!2011 = !DILocation(line: 249, column: 26, scope: !725)
!2012 = !DILocation(line: 249, column: 42, scope: !725)
!2013 = !DILocation(line: 251, column: 5, scope: !725)
!2014 = !DILocation(line: 251, column: 15, scope: !725)
!2015 = !DILocation(line: 251, column: 19, scope: !725)
!2016 = !DILocation(line: 252, column: 5, scope: !725)
!2017 = !DILocation(line: 252, column: 9, scope: !725)
!2018 = !DILocation(line: 254, column: 27, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !725, file: !412, line: 254, column: 9)
!2020 = !DILocation(line: 254, column: 10, scope: !2019)
!2021 = !DILocation(line: 254, column: 9, scope: !725)
!2022 = !DILocation(line: 255, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !412, line: 254, column: 63)
!2024 = !DILocation(line: 259, column: 25, scope: !734)
!2025 = !DILocation(line: 259, column: 30, scope: !734)
!2026 = !{!1062, !1047, i64 8}
!2027 = !DILocation(line: 259, column: 41, scope: !734)
!2028 = !{!2029, !1063, i64 168}
!2029 = !{!"_typeobject", !2030, i64 0, !1047, i64 24, !1063, i64 32, !1063, i64 40, !1047, i64 48, !1047, i64 56, !1047, i64 64, !1047, i64 72, !1047, i64 80, !1047, i64 88, !1047, i64 96, !1047, i64 104, !1047, i64 112, !1047, i64 120, !1047, i64 128, !1047, i64 136, !1047, i64 144, !1047, i64 152, !1047, i64 160, !1063, i64 168, !1047, i64 176, !1047, i64 184, !1047, i64 192, !1047, i64 200, !1063, i64 208, !1047, i64 216, !1047, i64 224, !1047, i64 232, !1047, i64 240, !1047, i64 248, !1047, i64 256, !1047, i64 264, !1047, i64 272, !1047, i64 280, !1063, i64 288, !1047, i64 296, !1047, i64 304, !1047, i64 312, !1047, i64 320, !1047, i64 328, !1047, i64 336, !1047, i64 344, !1047, i64 352, !1047, i64 360, !1047, i64 368, !1047, i64 376, !2031, i64 384, !1047, i64 392}
!2030 = !{!"", !1062, i64 0, !1063, i64 16}
!2031 = !{!"int", !1048, i64 0}
!2032 = !DILocation(line: 259, column: 50, scope: !734)
!2033 = !DILocation(line: 259, column: 67, scope: !734)
!2034 = !DILocation(line: 259, column: 73, scope: !734)
!2035 = !DILocation(line: 259, column: 93, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !734, file: !412, discriminator: 1)
!2037 = !DILocation(line: 259, column: 98, scope: !734)
!2038 = !DILocation(line: 259, column: 109, scope: !734)
!2039 = !DILocation(line: 259, column: 118, scope: !734)
!2040 = !DILocation(line: 259, column: 135, scope: !734)
!2041 = !DILocation(line: 259, column: 8, scope: !725)
!2042 = !DILocation(line: 260, column: 47, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !412, line: 260, column: 13)
!2044 = distinct !DILexicalBlock(scope: !734, file: !412, line: 259, column: 142)
!2045 = !DILocation(line: 260, column: 31, scope: !2043)
!2046 = !DILocation(line: 260, column: 51, scope: !2043)
!2047 = !DILocation(line: 260, column: 57, scope: !2043)
!2048 = !DILocation(line: 260, column: 29, scope: !2043)
!2049 = !DILocation(line: 260, column: 29, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 1)
!2051 = !DILocation(line: 260, column: 100, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 2)
!2053 = !DILocation(line: 260, column: 70, scope: !2043)
!2054 = !DILocation(line: 260, column: 106, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2056, file: !412, discriminator: 4)
!2056 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 3)
!2057 = !DILocation(line: 260, column: 112, scope: !2043)
!2058 = !DILocation(line: 260, column: 149, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 5)
!2060 = !DILocation(line: 260, column: 133, scope: !2043)
!2061 = !DILocation(line: 260, column: 153, scope: !2043)
!2062 = !DILocation(line: 260, column: 159, scope: !2043)
!2063 = !DILocation(line: 260, column: 131, scope: !2043)
!2064 = !DILocation(line: 260, column: 131, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 6)
!2066 = !DILocation(line: 260, column: 202, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 7)
!2068 = !DILocation(line: 260, column: 172, scope: !2043)
!2069 = !DILocation(line: 260, column: 208, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !412, discriminator: 9)
!2071 = !DILexicalBlockFile(scope: !2043, file: !412, discriminator: 8)
!2072 = !DILocation(line: 260, column: 13, scope: !2044)
!2073 = !DILocation(line: 261, column: 13, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2043, file: !412, line: 260, column: 215)
!2075 = !DILocation(line: 263, column: 60, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2044, file: !412, line: 263, column: 13)
!2077 = !DILocation(line: 263, column: 44, scope: !2076)
!2078 = !DILocation(line: 263, column: 64, scope: !2076)
!2079 = !DILocation(line: 263, column: 70, scope: !2076)
!2080 = !DILocation(line: 263, column: 41, scope: !2076)
!2081 = !DILocation(line: 263, column: 77, scope: !2076)
!2082 = !DILocation(line: 263, column: 127, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2076, file: !412, discriminator: 1)
!2084 = !DILocation(line: 263, column: 111, scope: !2076)
!2085 = !DILocation(line: 263, column: 131, scope: !2076)
!2086 = !DILocation(line: 263, column: 137, scope: !2076)
!2087 = !DILocation(line: 263, column: 108, scope: !2076)
!2088 = !DILocation(line: 263, column: 13, scope: !2044)
!2089 = !DILocation(line: 264, column: 29, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2076, file: !412, line: 263, column: 145)
!2091 = !DILocation(line: 264, column: 13, scope: !2090)
!2092 = !DILocation(line: 267, column: 13, scope: !2090)
!2093 = !DILocation(line: 270, column: 55, scope: !2044)
!2094 = !DILocation(line: 270, column: 38, scope: !2044)
!2095 = !DILocation(line: 270, column: 60, scope: !2044)
!2096 = !DILocation(line: 270, column: 66, scope: !2044)
!2097 = !DILocation(line: 270, column: 36, scope: !2044)
!2098 = !DILocation(line: 270, column: 124, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2044, file: !412, discriminator: 1)
!2100 = !DILocation(line: 270, column: 108, scope: !2044)
!2101 = !DILocation(line: 270, column: 128, scope: !2044)
!2102 = !DILocation(line: 270, column: 134, scope: !2044)
!2103 = !DILocation(line: 270, column: 78, scope: !2044)
!2104 = !DILocation(line: 270, column: 169, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2044, file: !412, discriminator: 3)
!2106 = !DILocation(line: 270, column: 152, scope: !2044)
!2107 = !DILocation(line: 270, column: 172, scope: !2044)
!2108 = !DILocation(line: 270, column: 144, scope: !2044)
!2109 = !DILocation(line: 270, column: 215, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2044, file: !412, discriminator: 4)
!2111 = !DILocation(line: 270, column: 189, scope: !2044)
!2112 = !DILocation(line: 270, column: 218, scope: !2044)
!2113 = !DILocation(line: 270, column: 181, scope: !2044)
!2114 = !DILocation(line: 270, column: 36, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2116, file: !412, discriminator: 6)
!2116 = !DILexicalBlockFile(scope: !2044, file: !412, discriminator: 5)
!2117 = !DILocation(line: 270, column: 265, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2044, file: !412, discriminator: 2)
!2119 = !DILocation(line: 270, column: 245, scope: !2044)
!2120 = !DILocation(line: 270, column: 270, scope: !2044)
!2121 = !DILocation(line: 270, column: 275, scope: !2044)
!2122 = !DILocation(line: 271, column: 55, scope: !2044)
!2123 = !DILocation(line: 271, column: 38, scope: !2044)
!2124 = !DILocation(line: 271, column: 60, scope: !2044)
!2125 = !DILocation(line: 271, column: 66, scope: !2044)
!2126 = !DILocation(line: 271, column: 36, scope: !2044)
!2127 = !DILocation(line: 271, column: 124, scope: !2099)
!2128 = !DILocation(line: 271, column: 108, scope: !2044)
!2129 = !DILocation(line: 271, column: 128, scope: !2044)
!2130 = !DILocation(line: 271, column: 134, scope: !2044)
!2131 = !DILocation(line: 271, column: 78, scope: !2044)
!2132 = !DILocation(line: 271, column: 169, scope: !2105)
!2133 = !DILocation(line: 271, column: 152, scope: !2044)
!2134 = !DILocation(line: 271, column: 172, scope: !2044)
!2135 = !DILocation(line: 271, column: 144, scope: !2044)
!2136 = !DILocation(line: 271, column: 215, scope: !2110)
!2137 = !DILocation(line: 271, column: 189, scope: !2044)
!2138 = !DILocation(line: 271, column: 218, scope: !2044)
!2139 = !DILocation(line: 271, column: 181, scope: !2044)
!2140 = !DILocation(line: 271, column: 36, scope: !2115)
!2141 = !DILocation(line: 271, column: 265, scope: !2118)
!2142 = !DILocation(line: 271, column: 245, scope: !2044)
!2143 = !DILocation(line: 271, column: 270, scope: !2044)
!2144 = !DILocation(line: 271, column: 275, scope: !2044)
!2145 = !DILocation(line: 272, column: 69, scope: !2044)
!2146 = !DILocation(line: 272, column: 51, scope: !2044)
!2147 = !DILocation(line: 272, column: 74, scope: !2044)
!2148 = !{!2149, !1063, i64 16}
!2149 = !{!"", !1062, i64 0, !1063, i64 16, !1063, i64 24, !2150, i64 32, !1047, i64 40}
!2150 = !{!"", !2031, i64 0, !2031, i64 0, !2031, i64 0, !2031, i64 0, !2031, i64 0, !2031, i64 1}
!2151 = !DILocation(line: 273, column: 69, scope: !2044)
!2152 = !DILocation(line: 273, column: 51, scope: !2044)
!2153 = !DILocation(line: 273, column: 74, scope: !2044)
!2154 = !DILocation(line: 270, column: 14, scope: !2044)
!2155 = !DILocation(line: 270, column: 12, scope: !2044)
!2156 = !{!2031, !2031, i64 0}
!2157 = !DILocation(line: 274, column: 5, scope: !2044)
!2158 = !DILocation(line: 277, column: 9, scope: !733)
!2159 = !DILocation(line: 277, column: 19, scope: !733)
!2160 = !DILocation(line: 278, column: 9, scope: !733)
!2161 = !DILocation(line: 278, column: 19, scope: !733)
!2162 = !DILocation(line: 280, column: 16, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !733, file: !412, line: 280, column: 13)
!2164 = !DILocation(line: 280, column: 20, scope: !2163)
!2165 = !DILocation(line: 280, column: 29, scope: !2163)
!2166 = !{!2029, !1047, i64 160}
!2167 = !DILocation(line: 280, column: 42, scope: !2163)
!2168 = !DILocation(line: 280, column: 57, scope: !2163)
!2169 = !DILocation(line: 280, column: 62, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2163, file: !412, discriminator: 1)
!2171 = !DILocation(line: 280, column: 66, scope: !2163)
!2172 = !DILocation(line: 280, column: 75, scope: !2163)
!2173 = !DILocation(line: 280, column: 89, scope: !2163)
!2174 = !{!2175, !1047, i64 0}
!2175 = !{!"", !1047, i64 0, !1047, i64 8}
!2176 = !DILocation(line: 280, column: 102, scope: !2163)
!2177 = !DILocation(line: 280, column: 57, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2163, file: !412, discriminator: 2)
!2179 = !DILocation(line: 280, column: 118, scope: !2163)
!2180 = !DILocation(line: 280, column: 123, scope: !2163)
!2181 = !DILocation(line: 280, column: 129, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2163, file: !412, discriminator: 3)
!2183 = !DILocation(line: 280, column: 133, scope: !2163)
!2184 = !DILocation(line: 280, column: 142, scope: !2163)
!2185 = !DILocation(line: 280, column: 155, scope: !2163)
!2186 = !DILocation(line: 280, column: 170, scope: !2163)
!2187 = !DILocation(line: 280, column: 175, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2163, file: !412, discriminator: 4)
!2189 = !DILocation(line: 280, column: 179, scope: !2163)
!2190 = !DILocation(line: 280, column: 188, scope: !2163)
!2191 = !DILocation(line: 280, column: 202, scope: !2163)
!2192 = !DILocation(line: 280, column: 215, scope: !2163)
!2193 = !DILocation(line: 280, column: 170, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2163, file: !412, discriminator: 5)
!2195 = !DILocation(line: 280, column: 231, scope: !2163)
!2196 = !DILocation(line: 280, column: 13, scope: !733)
!2197 = !DILocation(line: 281, column: 26, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2163, file: !412, line: 280, column: 237)
!2199 = !DILocation(line: 284, column: 40, scope: !2198)
!2200 = !DILocation(line: 284, column: 45, scope: !2198)
!2201 = !DILocation(line: 284, column: 55, scope: !2198)
!2202 = !{!2029, !1047, i64 24}
!2203 = !DILocation(line: 284, column: 78, scope: !2198)
!2204 = !DILocation(line: 284, column: 83, scope: !2198)
!2205 = !DILocation(line: 284, column: 93, scope: !2198)
!2206 = !DILocation(line: 281, column: 13, scope: !2198)
!2207 = !DILocation(line: 285, column: 13, scope: !2198)
!2208 = !DILocation(line: 288, column: 32, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !733, file: !412, line: 288, column: 13)
!2210 = !DILocation(line: 288, column: 13, scope: !2209)
!2211 = !DILocation(line: 288, column: 47, scope: !2209)
!2212 = !DILocation(line: 288, column: 13, scope: !733)
!2213 = !DILocation(line: 289, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !412, line: 288, column: 54)
!2215 = !DILocation(line: 291, column: 20, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !733, file: !412, line: 291, column: 13)
!2217 = !{!2218, !2031, i64 36}
!2218 = !{!"bufferinfo", !1047, i64 0, !1047, i64 8, !1063, i64 16, !1063, i64 24, !2031, i64 32, !2031, i64 36, !1047, i64 40, !1047, i64 48, !1047, i64 56, !1047, i64 64, !1047, i64 72}
!2219 = !DILocation(line: 291, column: 25, scope: !2216)
!2220 = !DILocation(line: 291, column: 13, scope: !733)
!2221 = !DILocation(line: 292, column: 29, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !412, line: 291, column: 30)
!2223 = !DILocation(line: 292, column: 13, scope: !2222)
!2224 = !DILocation(line: 294, column: 13, scope: !2222)
!2225 = !DILocation(line: 295, column: 13, scope: !2222)
!2226 = !DILocation(line: 298, column: 32, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !733, file: !412, line: 298, column: 13)
!2228 = !DILocation(line: 298, column: 13, scope: !2227)
!2229 = !DILocation(line: 298, column: 47, scope: !2227)
!2230 = !DILocation(line: 298, column: 13, scope: !733)
!2231 = !DILocation(line: 299, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !412, line: 298, column: 54)
!2233 = !DILocation(line: 300, column: 13, scope: !2232)
!2234 = !DILocation(line: 302, column: 20, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !733, file: !412, line: 302, column: 13)
!2236 = !DILocation(line: 302, column: 25, scope: !2235)
!2237 = !DILocation(line: 302, column: 13, scope: !733)
!2238 = !DILocation(line: 303, column: 29, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !412, line: 302, column: 30)
!2240 = !DILocation(line: 303, column: 13, scope: !2239)
!2241 = !DILocation(line: 305, column: 13, scope: !2239)
!2242 = !DILocation(line: 306, column: 13, scope: !2239)
!2243 = !DILocation(line: 307, column: 13, scope: !2239)
!2244 = !DILocation(line: 310, column: 50, scope: !733)
!2245 = !{!2218, !1047, i64 0}
!2246 = !DILocation(line: 311, column: 50, scope: !733)
!2247 = !DILocation(line: 312, column: 28, scope: !733)
!2248 = !{!2218, !1063, i64 16}
!2249 = !DILocation(line: 313, column: 28, scope: !733)
!2250 = !DILocation(line: 310, column: 14, scope: !733)
!2251 = !DILocation(line: 310, column: 12, scope: !733)
!2252 = !DILocation(line: 315, column: 9, scope: !733)
!2253 = !DILocation(line: 316, column: 9, scope: !733)
!2254 = !DILocation(line: 317, column: 5, scope: !734)
!2255 = !DILocation(line: 317, column: 5, scope: !2036)
!2256 = !DILocation(line: 319, column: 28, scope: !725)
!2257 = !DILocation(line: 319, column: 12, scope: !725)
!2258 = !DILocation(line: 319, column: 5, scope: !725)
!2259 = !DILocation(line: 320, column: 1, scope: !725)
!2260 = !DILocation(line: 221, column: 40, scope: !750)
!2261 = !DILocation(line: 221, column: 56, scope: !750)
!2262 = !DILocation(line: 223, column: 5, scope: !750)
!2263 = !DILocation(line: 223, column: 15, scope: !750)
!2264 = !DILocation(line: 224, column: 5, scope: !750)
!2265 = !DILocation(line: 224, column: 16, scope: !750)
!2266 = !DILocation(line: 224, column: 34, scope: !750)
!2267 = !DILocation(line: 225, column: 27, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !750, file: !412, line: 225, column: 9)
!2269 = !DILocation(line: 225, column: 10, scope: !2268)
!2270 = !DILocation(line: 225, column: 9, scope: !750)
!2271 = !DILocation(line: 226, column: 9, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !412, line: 225, column: 74)
!2273 = !DILocation(line: 228, column: 31, scope: !750)
!2274 = !DILocation(line: 228, column: 36, scope: !750)
!2275 = !DILocation(line: 228, column: 11, scope: !750)
!2276 = !DILocation(line: 228, column: 9, scope: !750)
!2277 = !DILocation(line: 229, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !750, file: !412, line: 229, column: 9)
!2279 = !DILocation(line: 229, column: 13, scope: !2278)
!2280 = !DILocation(line: 229, column: 19, scope: !2278)
!2281 = !DILocation(line: 229, column: 22, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2278, file: !412, discriminator: 1)
!2283 = !DILocation(line: 229, column: 9, scope: !750)
!2284 = !DILocation(line: 230, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2278, file: !412, line: 229, column: 40)
!2286 = !DILocation(line: 232, column: 31, scope: !750)
!2287 = !DILocation(line: 232, column: 12, scope: !750)
!2288 = !DILocation(line: 232, column: 5, scope: !750)
!2289 = !DILocation(line: 233, column: 1, scope: !750)
!2290 = !DILocation(line: 174, column: 29, scope: !736)
!2291 = !DILocation(line: 174, column: 53, scope: !736)
!2292 = !DILocation(line: 175, column: 20, scope: !736)
!2293 = !DILocation(line: 175, column: 38, scope: !736)
!2294 = !DILocation(line: 181, column: 5, scope: !736)
!2295 = !DILocation(line: 181, column: 25, scope: !736)
!2296 = !DILocation(line: 182, column: 5, scope: !736)
!2297 = !DILocation(line: 182, column: 35, scope: !736)
!2298 = !DILocation(line: 183, column: 5, scope: !736)
!2299 = !DILocation(line: 183, column: 35, scope: !736)
!2300 = !DILocation(line: 184, column: 5, scope: !736)
!2301 = !DILocation(line: 184, column: 16, scope: !736)
!2302 = !DILocation(line: 185, column: 5, scope: !736)
!2303 = !DILocation(line: 185, column: 19, scope: !736)
!2304 = !DILocation(line: 188, column: 14, scope: !736)
!2305 = !DILocation(line: 188, column: 12, scope: !736)
!2306 = !DILocation(line: 189, column: 10, scope: !736)
!2307 = !DILocation(line: 190, column: 13, scope: !736)
!2308 = !DILocation(line: 190, column: 11, scope: !736)
!2309 = !DILocation(line: 195, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !736, file: !412, line: 195, column: 9)
!2311 = !DILocation(line: 195, column: 18, scope: !2310)
!2312 = !DILocation(line: 195, column: 15, scope: !2310)
!2313 = !DILocation(line: 195, column: 9, scope: !736)
!2314 = !DILocation(line: 196, column: 16, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !412, line: 195, column: 26)
!2316 = !DILocation(line: 196, column: 14, scope: !2315)
!2317 = !DILocation(line: 197, column: 16, scope: !2315)
!2318 = !{!1048, !1048, i64 0}
!2319 = !DILocation(line: 198, column: 5, scope: !2315)
!2320 = !DILocation(line: 199, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !736, file: !412, line: 199, column: 9)
!2322 = !DILocation(line: 199, column: 18, scope: !2321)
!2323 = !DILocation(line: 199, column: 15, scope: !2321)
!2324 = !DILocation(line: 199, column: 9, scope: !736)
!2325 = !DILocation(line: 200, column: 16, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !412, line: 199, column: 26)
!2327 = !DILocation(line: 200, column: 14, scope: !2326)
!2328 = !DILocation(line: 201, column: 16, scope: !2326)
!2329 = !DILocation(line: 202, column: 5, scope: !2326)
!2330 = !DILocation(line: 204, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !736, file: !412, line: 204, column: 5)
!2332 = !DILocation(line: 204, column: 10, scope: !2331)
!2333 = !DILocation(line: 204, column: 15, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2335, file: !412, discriminator: 2)
!2335 = !DILexicalBlockFile(scope: !2336, file: !412, discriminator: 1)
!2336 = distinct !DILexicalBlock(scope: !2331, file: !412, line: 204, column: 5)
!2337 = !DILocation(line: 204, column: 19, scope: !2336)
!2338 = !DILocation(line: 204, column: 17, scope: !2336)
!2339 = !DILocation(line: 204, column: 5, scope: !2331)
!2340 = !DILocation(line: 205, column: 24, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !412, line: 204, column: 32)
!2342 = !DILocation(line: 205, column: 19, scope: !2341)
!2343 = !DILocation(line: 205, column: 35, scope: !2341)
!2344 = !DILocation(line: 205, column: 29, scope: !2341)
!2345 = !DILocation(line: 205, column: 27, scope: !2341)
!2346 = !DILocation(line: 205, column: 16, scope: !2341)
!2347 = !DILocation(line: 206, column: 5, scope: !2341)
!2348 = !DILocation(line: 204, column: 28, scope: !2336)
!2349 = !DILocation(line: 204, column: 5, scope: !2336)
!2350 = !DILocation(line: 208, column: 13, scope: !736)
!2351 = !DILocation(line: 208, column: 20, scope: !736)
!2352 = !DILocation(line: 209, column: 1, scope: !736)
!2353 = !DILocation(line: 208, column: 5, scope: !736)
!2354 = !DILocation(line: 439, column: 38, scope: !757)
!2355 = !DILocation(line: 441, column: 25, scope: !757)
!2356 = !DILocation(line: 441, column: 5, scope: !757)
!2357 = !DILocation(line: 442, column: 5, scope: !757)
!2358 = !DILocation(line: 442, column: 10, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !763, file: !412, discriminator: 1)
!2360 = !DILocation(line: 442, column: 20, scope: !763)
!2361 = !DILocation(line: 442, column: 51, scope: !763)
!2362 = !DILocation(line: 442, column: 55, scope: !763)
!2363 = !{!2364, !1047, i64 24}
!2364 = !{!"", !1062, i64 0, !1063, i64 16, !1047, i64 24}
!2365 = !DILocation(line: 442, column: 66, scope: !766)
!2366 = !DILocation(line: 442, column: 82, scope: !766)
!2367 = !DILocation(line: 442, column: 66, scope: !763)
!2368 = !DILocation(line: 442, column: 97, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !766, file: !412, discriminator: 2)
!2370 = !DILocation(line: 442, column: 102, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !765, file: !412, discriminator: 4)
!2372 = !DILocation(line: 442, column: 112, scope: !765)
!2373 = !DILocation(line: 442, column: 142, scope: !765)
!2374 = !DILocation(line: 442, column: 168, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !765, file: !412, line: 442, column: 165)
!2376 = !DILocation(line: 442, column: 185, scope: !2375)
!2377 = !DILocation(line: 442, column: 165, scope: !2375)
!2378 = !DILocation(line: 442, column: 195, scope: !2375)
!2379 = !DILocation(line: 442, column: 165, scope: !765)
!2380 = !DILocation(line: 442, column: 165, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !765, file: !412, discriminator: 5)
!2382 = !DILocation(line: 442, column: 226, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2375, file: !412, discriminator: 6)
!2384 = !DILocation(line: 442, column: 244, scope: !2375)
!2385 = !DILocation(line: 442, column: 254, scope: !2375)
!2386 = !{!2029, !1047, i64 48}
!2387 = !DILocation(line: 442, column: 279, scope: !2375)
!2388 = !DILocation(line: 442, column: 210, scope: !2375)
!2389 = !DILocation(line: 442, column: 298, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !766, file: !412, discriminator: 7)
!2391 = !DILocation(line: 442, column: 298, scope: !765)
!2392 = !DILocation(line: 442, column: 298, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !765, file: !412, discriminator: 8)
!2394 = !DILocation(line: 442, column: 298, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !765, file: !412, discriminator: 9)
!2396 = !DILocation(line: 442, column: 311, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !412, discriminator: 10)
!2398 = !DILexicalBlockFile(scope: !757, file: !412, discriminator: 3)
!2399 = !DILocation(line: 442, column: 311, scope: !763)
!2400 = !DILocation(line: 443, column: 21, scope: !757)
!2401 = !DILocation(line: 443, column: 5, scope: !757)
!2402 = !DILocation(line: 444, column: 1, scope: !757)
!2403 = !DILocation(line: 454, column: 35, scope: !767)
!2404 = !DILocation(line: 454, column: 49, scope: !767)
!2405 = !DILocation(line: 454, column: 65, scope: !767)
!2406 = !DILocation(line: 456, column: 5, scope: !767)
!2407 = !DILocation(line: 456, column: 15, scope: !767)
!2408 = !DILocation(line: 456, column: 21, scope: !767)
!2409 = !DILocation(line: 457, column: 5, scope: !767)
!2410 = !DILocation(line: 457, column: 16, scope: !767)
!2411 = !DILocation(line: 457, column: 19, scope: !767)
!2412 = !DILocation(line: 457, column: 26, scope: !767)
!2413 = !DILocation(line: 457, column: 30, scope: !767)
!2414 = !{!2364, !1063, i64 16}
!2415 = !DILocation(line: 459, column: 28, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !767, file: !412, line: 459, column: 9)
!2417 = !DILocation(line: 459, column: 10, scope: !2416)
!2418 = !DILocation(line: 459, column: 9, scope: !767)
!2419 = !DILocation(line: 460, column: 9, scope: !2416)
!2420 = !DILocation(line: 461, column: 9, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !767, file: !412, line: 461, column: 9)
!2422 = !DILocation(line: 461, column: 16, scope: !2421)
!2423 = !DILocation(line: 461, column: 9, scope: !767)
!2424 = !DILocation(line: 462, column: 33, scope: !2421)
!2425 = !DILocation(line: 462, column: 38, scope: !2421)
!2426 = !DILocation(line: 462, column: 42, scope: !2421)
!2427 = !DILocation(line: 462, column: 16, scope: !2421)
!2428 = !DILocation(line: 462, column: 9, scope: !2421)
!2429 = !DILocation(line: 467, column: 26, scope: !767)
!2430 = !DILocation(line: 467, column: 14, scope: !767)
!2431 = !DILocation(line: 467, column: 12, scope: !767)
!2432 = !DILocation(line: 468, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !767, file: !412, line: 468, column: 9)
!2434 = !DILocation(line: 468, column: 16, scope: !2433)
!2435 = !DILocation(line: 468, column: 9, scope: !767)
!2436 = !DILocation(line: 469, column: 9, scope: !2433)
!2437 = !DILocation(line: 471, column: 11, scope: !781)
!2438 = !DILocation(line: 471, column: 10, scope: !781)
!2439 = !DILocation(line: 471, column: 16, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2441, file: !412, discriminator: 2)
!2441 = !DILexicalBlockFile(scope: !780, file: !412, discriminator: 1)
!2442 = !DILocation(line: 471, column: 20, scope: !780)
!2443 = !DILocation(line: 471, column: 18, scope: !780)
!2444 = !DILocation(line: 471, column: 5, scope: !781)
!2445 = !DILocation(line: 472, column: 9, scope: !779)
!2446 = !DILocation(line: 472, column: 19, scope: !779)
!2447 = !DILocation(line: 472, column: 26, scope: !779)
!2448 = !DILocation(line: 473, column: 56, scope: !779)
!2449 = !DILocation(line: 473, column: 36, scope: !779)
!2450 = !DILocation(line: 473, column: 40, scope: !779)
!2451 = !DILocation(line: 473, column: 18, scope: !779)
!2452 = !DILocation(line: 473, column: 48, scope: !779)
!2453 = !DILocation(line: 473, column: 17, scope: !779)
!2454 = !DILocation(line: 473, column: 14, scope: !779)
!2455 = !DILocation(line: 474, column: 32, scope: !779)
!2456 = !DILocation(line: 474, column: 37, scope: !779)
!2457 = !DILocation(line: 474, column: 15, scope: !779)
!2458 = !DILocation(line: 474, column: 13, scope: !779)
!2459 = !DILocation(line: 475, column: 13, scope: !786)
!2460 = !DILocation(line: 475, column: 17, scope: !786)
!2461 = !DILocation(line: 475, column: 13, scope: !779)
!2462 = !DILocation(line: 476, column: 13, scope: !785)
!2463 = !DILocation(line: 476, column: 18, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !784, file: !412, discriminator: 1)
!2465 = !DILocation(line: 476, column: 28, scope: !784)
!2466 = !DILocation(line: 476, column: 58, scope: !784)
!2467 = !DILocation(line: 476, column: 75, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !784, file: !412, line: 476, column: 72)
!2469 = !DILocation(line: 476, column: 92, scope: !2468)
!2470 = !DILocation(line: 476, column: 72, scope: !2468)
!2471 = !DILocation(line: 476, column: 102, scope: !2468)
!2472 = !DILocation(line: 476, column: 72, scope: !784)
!2473 = !DILocation(line: 476, column: 72, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !784, file: !412, discriminator: 2)
!2475 = !DILocation(line: 476, column: 133, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2468, file: !412, discriminator: 3)
!2477 = !DILocation(line: 476, column: 151, scope: !2468)
!2478 = !DILocation(line: 476, column: 161, scope: !2468)
!2479 = !DILocation(line: 476, column: 186, scope: !2468)
!2480 = !DILocation(line: 476, column: 117, scope: !2468)
!2481 = !DILocation(line: 476, column: 205, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !785, file: !412, discriminator: 4)
!2483 = !DILocation(line: 476, column: 205, scope: !784)
!2484 = !DILocation(line: 476, column: 205, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !784, file: !412, discriminator: 5)
!2486 = !DILocation(line: 477, column: 13, scope: !785)
!2487 = !DILocation(line: 479, column: 52, scope: !779)
!2488 = !DILocation(line: 479, column: 47, scope: !779)
!2489 = !DILocation(line: 479, column: 29, scope: !779)
!2490 = !DILocation(line: 479, column: 11, scope: !779)
!2491 = !DILocation(line: 479, column: 39, scope: !779)
!2492 = !DILocation(line: 479, column: 10, scope: !779)
!2493 = !DILocation(line: 479, column: 50, scope: !779)
!2494 = !DILocation(line: 480, column: 5, scope: !780)
!2495 = !DILocation(line: 480, column: 5, scope: !2441)
!2496 = !DILocation(line: 480, column: 5, scope: !779)
!2497 = !DILocation(line: 471, column: 30, scope: !780)
!2498 = !DILocation(line: 471, column: 5, scope: !780)
!2499 = !DILocation(line: 481, column: 12, scope: !767)
!2500 = !DILocation(line: 481, column: 5, scope: !767)
!2501 = !DILocation(line: 482, column: 1, scope: !767)
!2502 = !DILocation(line: 447, column: 39, scope: !787)
!2503 = !DILocation(line: 447, column: 53, scope: !787)
!2504 = !DILocation(line: 447, column: 66, scope: !787)
!2505 = !DILocation(line: 449, column: 5, scope: !787)
!2506 = !DILocation(line: 449, column: 14, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !796, file: !412, discriminator: 1)
!2508 = !DILocation(line: 449, column: 18, scope: !796)
!2509 = !DILocation(line: 449, column: 14, scope: !796)
!2510 = !DILocation(line: 449, column: 14, scope: !797)
!2511 = !DILocation(line: 449, column: 26, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !795, file: !412, discriminator: 2)
!2513 = !DILocation(line: 449, column: 30, scope: !795)
!2514 = !DILocation(line: 449, column: 37, scope: !795)
!2515 = !DILocation(line: 449, column: 56, scope: !795)
!2516 = !DILocation(line: 449, column: 60, scope: !795)
!2517 = !DILocation(line: 449, column: 67, scope: !795)
!2518 = !DILocation(line: 449, column: 77, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !795, file: !412, line: 449, column: 77)
!2520 = !DILocation(line: 449, column: 77, scope: !795)
!2521 = !DILocation(line: 449, column: 90, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2519, file: !412, discriminator: 4)
!2523 = !DILocation(line: 449, column: 83, scope: !2519)
!2524 = !DILocation(line: 449, column: 96, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !796, file: !412, discriminator: 5)
!2526 = !DILocation(line: 449, column: 96, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2528, file: !412, discriminator: 7)
!2528 = !DILexicalBlockFile(scope: !796, file: !412, discriminator: 6)
!2529 = !DILocation(line: 449, column: 96, scope: !795)
!2530 = !DILocation(line: 449, column: 98, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2532, file: !412, discriminator: 8)
!2532 = !DILexicalBlockFile(scope: !797, file: !412, discriminator: 3)
!2533 = !DILocation(line: 450, column: 5, scope: !787)
!2534 = !DILocation(line: 451, column: 1, scope: !787)
!2535 = !DILocation(line: 409, column: 30, scope: !798)
!2536 = !DILocation(line: 409, column: 46, scope: !798)
!2537 = !DILocation(line: 409, column: 62, scope: !798)
!2538 = !DILocation(line: 411, column: 5, scope: !798)
!2539 = !DILocation(line: 411, column: 23, scope: !798)
!2540 = !DILocation(line: 412, column: 5, scope: !798)
!2541 = !DILocation(line: 412, column: 15, scope: !798)
!2542 = !DILocation(line: 413, column: 5, scope: !798)
!2543 = !DILocation(line: 413, column: 16, scope: !798)
!2544 = !DILocation(line: 415, column: 44, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !798, file: !412, line: 415, column: 9)
!2546 = !DILocation(line: 415, column: 10, scope: !2545)
!2547 = !DILocation(line: 415, column: 9, scope: !798)
!2548 = !DILocation(line: 416, column: 9, scope: !2545)
!2549 = !DILocation(line: 418, column: 31, scope: !798)
!2550 = !DILocation(line: 418, column: 16, scope: !798)
!2551 = !DILocation(line: 418, column: 39, scope: !798)
!2552 = !{!2030, !1063, i64 16}
!2553 = !DILocation(line: 418, column: 12, scope: !798)
!2554 = !DILocation(line: 419, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !798, file: !412, line: 419, column: 9)
!2556 = !DILocation(line: 419, column: 16, scope: !2555)
!2557 = !DILocation(line: 419, column: 9, scope: !798)
!2558 = !DILocation(line: 420, column: 32, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !412, line: 420, column: 13)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !412, line: 419, column: 22)
!2561 = !DILocation(line: 420, column: 14, scope: !2559)
!2562 = !DILocation(line: 420, column: 13, scope: !2560)
!2563 = !DILocation(line: 421, column: 13, scope: !2559)
!2564 = !DILocation(line: 422, column: 5, scope: !2560)
!2565 = !DILocation(line: 423, column: 16, scope: !2555)
!2566 = !DILocation(line: 423, column: 14, scope: !2555)
!2567 = !DILocation(line: 426, column: 33, scope: !798)
!2568 = !DILocation(line: 426, column: 12, scope: !798)
!2569 = !DILocation(line: 426, column: 8, scope: !798)
!2570 = !DILocation(line: 427, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !798, file: !412, line: 427, column: 9)
!2572 = !DILocation(line: 427, column: 12, scope: !2571)
!2573 = !DILocation(line: 427, column: 9, scope: !798)
!2574 = !DILocation(line: 428, column: 9, scope: !2571)
!2575 = !DILocation(line: 430, column: 21, scope: !798)
!2576 = !DILocation(line: 430, column: 29, scope: !798)
!2577 = !DILocation(line: 430, column: 38, scope: !798)
!2578 = !DILocation(line: 431, column: 16, scope: !798)
!2579 = !DILocation(line: 431, column: 5, scope: !798)
!2580 = !DILocation(line: 431, column: 9, scope: !798)
!2581 = !DILocation(line: 431, column: 14, scope: !798)
!2582 = !DILocation(line: 432, column: 18, scope: !798)
!2583 = !DILocation(line: 432, column: 5, scope: !798)
!2584 = !DILocation(line: 432, column: 9, scope: !798)
!2585 = !DILocation(line: 432, column: 16, scope: !798)
!2586 = !DILocation(line: 434, column: 23, scope: !798)
!2587 = !DILocation(line: 434, column: 5, scope: !798)
!2588 = !DILocation(line: 435, column: 24, scope: !798)
!2589 = !DILocation(line: 435, column: 12, scope: !798)
!2590 = !DILocation(line: 435, column: 5, scope: !798)
!2591 = !DILocation(line: 436, column: 1, scope: !798)
!2592 = !DILocation(line: 658, column: 38, scope: !810)
!2593 = !DILocation(line: 660, column: 25, scope: !810)
!2594 = !DILocation(line: 660, column: 5, scope: !810)
!2595 = !DILocation(line: 661, column: 5, scope: !810)
!2596 = !DILocation(line: 661, column: 10, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !816, file: !412, discriminator: 1)
!2598 = !DILocation(line: 661, column: 20, scope: !816)
!2599 = !DILocation(line: 661, column: 51, scope: !816)
!2600 = !DILocation(line: 661, column: 55, scope: !816)
!2601 = !DILocation(line: 661, column: 66, scope: !819)
!2602 = !DILocation(line: 661, column: 82, scope: !819)
!2603 = !DILocation(line: 661, column: 66, scope: !816)
!2604 = !DILocation(line: 661, column: 97, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !819, file: !412, discriminator: 2)
!2606 = !DILocation(line: 661, column: 102, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !818, file: !412, discriminator: 4)
!2608 = !DILocation(line: 661, column: 112, scope: !818)
!2609 = !DILocation(line: 661, column: 142, scope: !818)
!2610 = !DILocation(line: 661, column: 168, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !818, file: !412, line: 661, column: 165)
!2612 = !DILocation(line: 661, column: 185, scope: !2611)
!2613 = !DILocation(line: 661, column: 165, scope: !2611)
!2614 = !DILocation(line: 661, column: 195, scope: !2611)
!2615 = !DILocation(line: 661, column: 165, scope: !818)
!2616 = !DILocation(line: 661, column: 165, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !818, file: !412, discriminator: 5)
!2618 = !DILocation(line: 661, column: 226, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2611, file: !412, discriminator: 6)
!2620 = !DILocation(line: 661, column: 244, scope: !2611)
!2621 = !DILocation(line: 661, column: 254, scope: !2611)
!2622 = !DILocation(line: 661, column: 279, scope: !2611)
!2623 = !DILocation(line: 661, column: 210, scope: !2611)
!2624 = !DILocation(line: 661, column: 298, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !819, file: !412, discriminator: 7)
!2626 = !DILocation(line: 661, column: 298, scope: !818)
!2627 = !DILocation(line: 661, column: 298, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !818, file: !412, discriminator: 8)
!2629 = !DILocation(line: 661, column: 298, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !818, file: !412, discriminator: 9)
!2631 = !DILocation(line: 661, column: 311, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !412, discriminator: 10)
!2633 = !DILexicalBlockFile(scope: !810, file: !412, discriminator: 3)
!2634 = !DILocation(line: 661, column: 311, scope: !816)
!2635 = !DILocation(line: 662, column: 21, scope: !810)
!2636 = !DILocation(line: 662, column: 5, scope: !810)
!2637 = !DILocation(line: 663, column: 1, scope: !810)
!2638 = !DILocation(line: 706, column: 35, scope: !820)
!2639 = !DILocation(line: 706, column: 49, scope: !820)
!2640 = !DILocation(line: 706, column: 65, scope: !820)
!2641 = !DILocation(line: 708, column: 5, scope: !820)
!2642 = !DILocation(line: 708, column: 15, scope: !820)
!2643 = !DILocation(line: 708, column: 21, scope: !820)
!2644 = !DILocation(line: 709, column: 5, scope: !820)
!2645 = !DILocation(line: 709, column: 16, scope: !820)
!2646 = !DILocation(line: 709, column: 19, scope: !820)
!2647 = !DILocation(line: 709, column: 26, scope: !820)
!2648 = !DILocation(line: 709, column: 30, scope: !820)
!2649 = !DILocation(line: 711, column: 28, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !820, file: !412, line: 711, column: 9)
!2651 = !DILocation(line: 711, column: 10, scope: !2650)
!2652 = !DILocation(line: 711, column: 9, scope: !820)
!2653 = !DILocation(line: 712, column: 9, scope: !2650)
!2654 = !DILocation(line: 713, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !820, file: !412, line: 713, column: 9)
!2656 = !DILocation(line: 713, column: 13, scope: !2655)
!2657 = !DILocation(line: 713, column: 20, scope: !2655)
!2658 = !DILocation(line: 713, column: 9, scope: !820)
!2659 = !DILocation(line: 714, column: 31, scope: !2655)
!2660 = !DILocation(line: 714, column: 56, scope: !2655)
!2661 = !DILocation(line: 714, column: 60, scope: !2655)
!2662 = !DILocation(line: 714, column: 38, scope: !2655)
!2663 = !DILocation(line: 714, column: 68, scope: !2655)
!2664 = !DILocation(line: 714, column: 37, scope: !2655)
!2665 = !DILocation(line: 714, column: 16, scope: !2655)
!2666 = !DILocation(line: 714, column: 9, scope: !2655)
!2667 = !DILocation(line: 719, column: 26, scope: !820)
!2668 = !DILocation(line: 719, column: 14, scope: !820)
!2669 = !DILocation(line: 719, column: 12, scope: !820)
!2670 = !DILocation(line: 720, column: 9, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !820, file: !412, line: 720, column: 9)
!2672 = !DILocation(line: 720, column: 16, scope: !2671)
!2673 = !DILocation(line: 720, column: 9, scope: !820)
!2674 = !DILocation(line: 721, column: 9, scope: !2671)
!2675 = !DILocation(line: 723, column: 11, scope: !834)
!2676 = !DILocation(line: 723, column: 10, scope: !834)
!2677 = !DILocation(line: 723, column: 16, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !412, discriminator: 2)
!2679 = !DILexicalBlockFile(scope: !833, file: !412, discriminator: 1)
!2680 = !DILocation(line: 723, column: 20, scope: !833)
!2681 = !DILocation(line: 723, column: 18, scope: !833)
!2682 = !DILocation(line: 723, column: 5, scope: !834)
!2683 = !DILocation(line: 724, column: 9, scope: !832)
!2684 = !DILocation(line: 724, column: 19, scope: !832)
!2685 = !DILocation(line: 724, column: 26, scope: !832)
!2686 = !DILocation(line: 725, column: 56, scope: !832)
!2687 = !DILocation(line: 725, column: 36, scope: !832)
!2688 = !DILocation(line: 725, column: 40, scope: !832)
!2689 = !DILocation(line: 725, column: 18, scope: !832)
!2690 = !DILocation(line: 725, column: 48, scope: !832)
!2691 = !DILocation(line: 725, column: 17, scope: !832)
!2692 = !DILocation(line: 725, column: 14, scope: !832)
!2693 = !DILocation(line: 726, column: 30, scope: !832)
!2694 = !DILocation(line: 726, column: 35, scope: !832)
!2695 = !DILocation(line: 726, column: 15, scope: !832)
!2696 = !DILocation(line: 726, column: 13, scope: !832)
!2697 = !DILocation(line: 727, column: 13, scope: !839)
!2698 = !DILocation(line: 727, column: 17, scope: !839)
!2699 = !DILocation(line: 727, column: 13, scope: !832)
!2700 = !DILocation(line: 728, column: 13, scope: !838)
!2701 = !DILocation(line: 728, column: 18, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !837, file: !412, discriminator: 1)
!2703 = !DILocation(line: 728, column: 28, scope: !837)
!2704 = !DILocation(line: 728, column: 58, scope: !837)
!2705 = !DILocation(line: 728, column: 75, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !837, file: !412, line: 728, column: 72)
!2707 = !DILocation(line: 728, column: 92, scope: !2706)
!2708 = !DILocation(line: 728, column: 72, scope: !2706)
!2709 = !DILocation(line: 728, column: 102, scope: !2706)
!2710 = !DILocation(line: 728, column: 72, scope: !837)
!2711 = !DILocation(line: 728, column: 72, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !837, file: !412, discriminator: 2)
!2713 = !DILocation(line: 728, column: 133, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2706, file: !412, discriminator: 3)
!2715 = !DILocation(line: 728, column: 151, scope: !2706)
!2716 = !DILocation(line: 728, column: 161, scope: !2706)
!2717 = !DILocation(line: 728, column: 186, scope: !2706)
!2718 = !DILocation(line: 728, column: 117, scope: !2706)
!2719 = !DILocation(line: 728, column: 205, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !838, file: !412, discriminator: 4)
!2721 = !DILocation(line: 728, column: 205, scope: !837)
!2722 = !DILocation(line: 728, column: 205, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !837, file: !412, discriminator: 5)
!2724 = !DILocation(line: 729, column: 13, scope: !838)
!2725 = !DILocation(line: 731, column: 52, scope: !832)
!2726 = !DILocation(line: 731, column: 47, scope: !832)
!2727 = !DILocation(line: 731, column: 29, scope: !832)
!2728 = !DILocation(line: 731, column: 11, scope: !832)
!2729 = !DILocation(line: 731, column: 39, scope: !832)
!2730 = !DILocation(line: 731, column: 10, scope: !832)
!2731 = !DILocation(line: 731, column: 50, scope: !832)
!2732 = !DILocation(line: 732, column: 5, scope: !833)
!2733 = !DILocation(line: 732, column: 5, scope: !2679)
!2734 = !DILocation(line: 732, column: 5, scope: !832)
!2735 = !DILocation(line: 723, column: 30, scope: !833)
!2736 = !DILocation(line: 723, column: 5, scope: !833)
!2737 = !DILocation(line: 733, column: 12, scope: !820)
!2738 = !DILocation(line: 733, column: 5, scope: !820)
!2739 = !DILocation(line: 734, column: 1, scope: !820)
!2740 = !DILocation(line: 666, column: 39, scope: !855)
!2741 = !DILocation(line: 666, column: 53, scope: !855)
!2742 = !DILocation(line: 666, column: 66, scope: !855)
!2743 = !DILocation(line: 668, column: 5, scope: !855)
!2744 = !DILocation(line: 668, column: 14, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !864, file: !412, discriminator: 1)
!2746 = !DILocation(line: 668, column: 18, scope: !864)
!2747 = !DILocation(line: 668, column: 14, scope: !864)
!2748 = !DILocation(line: 668, column: 14, scope: !865)
!2749 = !DILocation(line: 668, column: 26, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !863, file: !412, discriminator: 2)
!2751 = !DILocation(line: 668, column: 30, scope: !863)
!2752 = !DILocation(line: 668, column: 37, scope: !863)
!2753 = !DILocation(line: 668, column: 56, scope: !863)
!2754 = !DILocation(line: 668, column: 60, scope: !863)
!2755 = !DILocation(line: 668, column: 67, scope: !863)
!2756 = !DILocation(line: 668, column: 77, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !863, file: !412, line: 668, column: 77)
!2758 = !DILocation(line: 668, column: 77, scope: !863)
!2759 = !DILocation(line: 668, column: 90, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2757, file: !412, discriminator: 4)
!2761 = !DILocation(line: 668, column: 83, scope: !2757)
!2762 = !DILocation(line: 668, column: 96, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !864, file: !412, discriminator: 5)
!2764 = !DILocation(line: 668, column: 96, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2766, file: !412, discriminator: 7)
!2766 = !DILexicalBlockFile(scope: !864, file: !412, discriminator: 6)
!2767 = !DILocation(line: 668, column: 96, scope: !863)
!2768 = !DILocation(line: 668, column: 98, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2770, file: !412, discriminator: 8)
!2770 = !DILexicalBlockFile(scope: !865, file: !412, discriminator: 3)
!2771 = !DILocation(line: 669, column: 5, scope: !855)
!2772 = !DILocation(line: 670, column: 1, scope: !855)
!2773 = !DILocation(line: 546, column: 30, scope: !866)
!2774 = !DILocation(line: 546, column: 46, scope: !866)
!2775 = !DILocation(line: 546, column: 62, scope: !866)
!2776 = !DILocation(line: 548, column: 5, scope: !866)
!2777 = !DILocation(line: 548, column: 23, scope: !866)
!2778 = !DILocation(line: 549, column: 5, scope: !866)
!2779 = !DILocation(line: 549, column: 15, scope: !866)
!2780 = !DILocation(line: 550, column: 5, scope: !866)
!2781 = !DILocation(line: 550, column: 16, scope: !866)
!2782 = !DILocation(line: 550, column: 24, scope: !866)
!2783 = !DILocation(line: 550, column: 29, scope: !866)
!2784 = !DILocation(line: 552, column: 44, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !866, file: !412, line: 552, column: 9)
!2786 = !DILocation(line: 552, column: 10, scope: !2785)
!2787 = !DILocation(line: 552, column: 9, scope: !866)
!2788 = !DILocation(line: 553, column: 9, scope: !2785)
!2789 = !DILocation(line: 555, column: 31, scope: !866)
!2790 = !DILocation(line: 555, column: 16, scope: !866)
!2791 = !DILocation(line: 555, column: 39, scope: !866)
!2792 = !DILocation(line: 555, column: 12, scope: !866)
!2793 = !DILocation(line: 556, column: 9, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !866, file: !412, line: 556, column: 9)
!2795 = !DILocation(line: 556, column: 16, scope: !2794)
!2796 = !DILocation(line: 556, column: 9, scope: !866)
!2797 = !DILocation(line: 557, column: 32, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !412, line: 557, column: 13)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !412, line: 556, column: 22)
!2800 = !DILocation(line: 557, column: 14, scope: !2798)
!2801 = !DILocation(line: 557, column: 13, scope: !2799)
!2802 = !DILocation(line: 558, column: 13, scope: !2798)
!2803 = !DILocation(line: 559, column: 5, scope: !2799)
!2804 = !DILocation(line: 561, column: 24, scope: !866)
!2805 = !DILocation(line: 561, column: 12, scope: !866)
!2806 = !DILocation(line: 561, column: 10, scope: !866)
!2807 = !DILocation(line: 562, column: 9, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !866, file: !412, line: 562, column: 9)
!2809 = !DILocation(line: 562, column: 14, scope: !2808)
!2810 = !DILocation(line: 562, column: 9, scope: !866)
!2811 = !DILocation(line: 563, column: 9, scope: !2808)
!2812 = !DILocation(line: 566, column: 14, scope: !879)
!2813 = !DILocation(line: 566, column: 10, scope: !879)
!2814 = !DILocation(line: 566, column: 19, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !2816, file: !412, discriminator: 2)
!2816 = !DILexicalBlockFile(scope: !878, file: !412, discriminator: 1)
!2817 = !DILocation(line: 566, column: 25, scope: !878)
!2818 = !DILocation(line: 566, column: 23, scope: !878)
!2819 = !DILocation(line: 566, column: 5, scope: !879)
!2820 = !DILocation(line: 567, column: 9, scope: !877)
!2821 = !DILocation(line: 567, column: 19, scope: !877)
!2822 = !DILocation(line: 567, column: 62, scope: !877)
!2823 = !DILocation(line: 567, column: 46, scope: !877)
!2824 = !DILocation(line: 567, column: 28, scope: !877)
!2825 = !DILocation(line: 567, column: 54, scope: !877)
!2826 = !DILocation(line: 567, column: 27, scope: !877)
!2827 = !DILocation(line: 568, column: 9, scope: !877)
!2828 = !DILocation(line: 568, column: 20, scope: !877)
!2829 = !DILocation(line: 569, column: 9, scope: !877)
!2830 = !DILocation(line: 569, column: 15, scope: !877)
!2831 = !DILocation(line: 570, column: 9, scope: !877)
!2832 = !DILocation(line: 570, column: 22, scope: !877)
!2833 = !DILocation(line: 571, column: 9, scope: !877)
!2834 = !DILocation(line: 571, column: 13, scope: !877)
!2835 = !DILocation(line: 573, column: 31, scope: !887)
!2836 = !DILocation(line: 573, column: 39, scope: !887)
!2837 = !DILocation(line: 573, column: 50, scope: !887)
!2838 = !DILocation(line: 573, column: 59, scope: !887)
!2839 = !DILocation(line: 573, column: 76, scope: !887)
!2840 = !DILocation(line: 573, column: 13, scope: !877)
!2841 = !DILocation(line: 574, column: 29, scope: !886)
!2842 = !DILocation(line: 574, column: 13, scope: !886)
!2843 = !DILocation(line: 576, column: 13, scope: !886)
!2844 = !DILocation(line: 576, column: 18, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !885, file: !412, discriminator: 1)
!2846 = !DILocation(line: 576, column: 28, scope: !885)
!2847 = !DILocation(line: 576, column: 58, scope: !885)
!2848 = !DILocation(line: 576, column: 73, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !885, file: !412, line: 576, column: 70)
!2850 = !DILocation(line: 576, column: 90, scope: !2849)
!2851 = !DILocation(line: 576, column: 70, scope: !2849)
!2852 = !DILocation(line: 576, column: 100, scope: !2849)
!2853 = !DILocation(line: 576, column: 70, scope: !885)
!2854 = !DILocation(line: 576, column: 70, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !885, file: !412, discriminator: 2)
!2856 = !DILocation(line: 576, column: 131, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2849, file: !412, discriminator: 3)
!2858 = !DILocation(line: 576, column: 149, scope: !2849)
!2859 = !DILocation(line: 576, column: 159, scope: !2849)
!2860 = !DILocation(line: 576, column: 184, scope: !2849)
!2861 = !DILocation(line: 576, column: 115, scope: !2849)
!2862 = !DILocation(line: 576, column: 203, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !886, file: !412, discriminator: 4)
!2864 = !DILocation(line: 576, column: 203, scope: !885)
!2865 = !DILocation(line: 576, column: 203, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !885, file: !412, discriminator: 5)
!2867 = !DILocation(line: 577, column: 13, scope: !886)
!2868 = !DILocation(line: 579, column: 47, scope: !891)
!2869 = !DILocation(line: 579, column: 31, scope: !891)
!2870 = !DILocation(line: 579, column: 54, scope: !891)
!2871 = !DILocation(line: 579, column: 60, scope: !891)
!2872 = !DILocation(line: 579, column: 29, scope: !891)
!2873 = !DILocation(line: 579, column: 29, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !891, file: !412, discriminator: 1)
!2875 = !DILocation(line: 579, column: 103, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !891, file: !412, discriminator: 2)
!2877 = !DILocation(line: 579, column: 73, scope: !891)
!2878 = !DILocation(line: 579, column: 26, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2880, file: !412, discriminator: 4)
!2880 = !DILexicalBlockFile(scope: !891, file: !412, discriminator: 3)
!2881 = !DILocation(line: 579, column: 13, scope: !877)
!2882 = !DILocation(line: 580, column: 13, scope: !890)
!2883 = !DILocation(line: 580, column: 18, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !889, file: !412, discriminator: 1)
!2885 = !DILocation(line: 580, column: 28, scope: !889)
!2886 = !DILocation(line: 580, column: 58, scope: !889)
!2887 = !DILocation(line: 580, column: 73, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !889, file: !412, line: 580, column: 70)
!2889 = !DILocation(line: 580, column: 90, scope: !2888)
!2890 = !DILocation(line: 580, column: 70, scope: !2888)
!2891 = !DILocation(line: 580, column: 100, scope: !2888)
!2892 = !DILocation(line: 580, column: 70, scope: !889)
!2893 = !DILocation(line: 580, column: 70, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !889, file: !412, discriminator: 2)
!2895 = !DILocation(line: 580, column: 131, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2888, file: !412, discriminator: 3)
!2897 = !DILocation(line: 580, column: 149, scope: !2888)
!2898 = !DILocation(line: 580, column: 159, scope: !2888)
!2899 = !DILocation(line: 580, column: 184, scope: !2888)
!2900 = !DILocation(line: 580, column: 115, scope: !2888)
!2901 = !DILocation(line: 580, column: 203, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !890, file: !412, discriminator: 4)
!2903 = !DILocation(line: 580, column: 203, scope: !889)
!2904 = !DILocation(line: 580, column: 203, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !889, file: !412, discriminator: 5)
!2906 = !DILocation(line: 581, column: 13, scope: !890)
!2907 = !DILocation(line: 583, column: 68, scope: !877)
!2908 = !DILocation(line: 583, column: 50, scope: !877)
!2909 = !DILocation(line: 583, column: 76, scope: !877)
!2910 = !DILocation(line: 583, column: 18, scope: !877)
!2911 = !DILocation(line: 584, column: 64, scope: !877)
!2912 = !DILocation(line: 584, column: 46, scope: !877)
!2913 = !DILocation(line: 584, column: 72, scope: !877)
!2914 = !DILocation(line: 584, column: 78, scope: !877)
!2915 = !DILocation(line: 584, column: 14, scope: !877)
!2916 = !DILocation(line: 585, column: 50, scope: !877)
!2917 = !DILocation(line: 585, column: 33, scope: !877)
!2918 = !DILocation(line: 585, column: 58, scope: !877)
!2919 = !DILocation(line: 585, column: 64, scope: !877)
!2920 = !DILocation(line: 585, column: 31, scope: !877)
!2921 = !DILocation(line: 585, column: 122, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 1)
!2923 = !DILocation(line: 585, column: 106, scope: !877)
!2924 = !DILocation(line: 585, column: 129, scope: !877)
!2925 = !DILocation(line: 585, column: 135, scope: !877)
!2926 = !DILocation(line: 585, column: 76, scope: !877)
!2927 = !DILocation(line: 585, column: 170, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 3)
!2929 = !DILocation(line: 585, column: 153, scope: !877)
!2930 = !DILocation(line: 585, column: 176, scope: !877)
!2931 = !DILocation(line: 585, column: 145, scope: !877)
!2932 = !DILocation(line: 585, column: 219, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 4)
!2934 = !DILocation(line: 585, column: 193, scope: !877)
!2935 = !DILocation(line: 585, column: 225, scope: !877)
!2936 = !DILocation(line: 585, column: 185, scope: !877)
!2937 = !DILocation(line: 585, column: 31, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2939, file: !412, discriminator: 6)
!2939 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 5)
!2940 = !DILocation(line: 585, column: 272, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 2)
!2942 = !DILocation(line: 585, column: 252, scope: !877)
!2943 = !DILocation(line: 585, column: 280, scope: !877)
!2944 = !DILocation(line: 585, column: 285, scope: !877)
!2945 = !DILocation(line: 585, column: 14, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2947, file: !412, discriminator: 8)
!2947 = !DILexicalBlockFile(scope: !877, file: !412, discriminator: 7)
!2948 = !DILocation(line: 588, column: 19, scope: !877)
!2949 = !DILocation(line: 589, column: 23, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !877, file: !412, line: 589, column: 9)
!2951 = !DILocation(line: 589, column: 14, scope: !2950)
!2952 = !DILocation(line: 589, column: 28, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2954, file: !412, discriminator: 2)
!2954 = !DILexicalBlockFile(scope: !2955, file: !412, discriminator: 1)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !412, line: 589, column: 9)
!2956 = !DILocation(line: 589, column: 39, scope: !2955)
!2957 = !DILocation(line: 589, column: 37, scope: !2955)
!2958 = !DILocation(line: 589, column: 9, scope: !2950)
!2959 = !DILocation(line: 590, column: 30, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !412, line: 590, column: 17)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !412, line: 589, column: 61)
!2962 = !DILocation(line: 590, column: 36, scope: !2960)
!2963 = !DILocation(line: 590, column: 29, scope: !2960)
!2964 = !DILocation(line: 590, column: 89, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 1)
!2966 = !DILocation(line: 590, column: 81, scope: !2960)
!2967 = !DILocation(line: 590, column: 62, scope: !2960)
!2968 = !DILocation(line: 590, column: 104, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 2)
!2970 = !DILocation(line: 590, column: 110, scope: !2960)
!2971 = !DILocation(line: 590, column: 103, scope: !2960)
!2972 = !DILocation(line: 590, column: 163, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 4)
!2974 = !DILocation(line: 590, column: 155, scope: !2960)
!2975 = !DILocation(line: 590, column: 137, scope: !2960)
!2976 = !DILocation(line: 590, column: 136, scope: !2960)
!2977 = !{!2978, !2978, i64 0}
!2978 = !{!"short", !1048, i64 0}
!2979 = !DILocation(line: 590, column: 203, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 5)
!2981 = !DILocation(line: 590, column: 195, scope: !2960)
!2982 = !DILocation(line: 590, column: 177, scope: !2960)
!2983 = !DILocation(line: 590, column: 176, scope: !2960)
!2984 = !DILocation(line: 590, column: 29, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2986, file: !412, discriminator: 7)
!2986 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 6)
!2987 = !DILocation(line: 590, column: 219, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2989, file: !412, discriminator: 8)
!2989 = !DILexicalBlockFile(scope: !2960, file: !412, discriminator: 3)
!2990 = !DILocation(line: 590, column: 17, scope: !2961)
!2991 = !DILocation(line: 591, column: 17, scope: !2960)
!2992 = !DILocation(line: 592, column: 9, scope: !2961)
!2993 = !DILocation(line: 589, column: 49, scope: !2955)
!2994 = !DILocation(line: 589, column: 9, scope: !2955)
!2995 = !DILocation(line: 594, column: 13, scope: !894)
!2996 = !DILocation(line: 594, column: 23, scope: !894)
!2997 = !DILocation(line: 594, column: 13, scope: !877)
!2998 = !DILocation(line: 595, column: 29, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !894, file: !412, line: 594, column: 29)
!3000 = !DILocation(line: 595, column: 37, scope: !2999)
!3001 = !DILocation(line: 595, column: 46, scope: !2999)
!3002 = !DILocation(line: 596, column: 13, scope: !2999)
!3003 = !DILocation(line: 597, column: 56, scope: !2999)
!3004 = !DILocation(line: 597, column: 49, scope: !2999)
!3005 = !DILocation(line: 597, column: 33, scope: !2999)
!3006 = !DILocation(line: 597, column: 15, scope: !2999)
!3007 = !DILocation(line: 597, column: 41, scope: !2999)
!3008 = !DILocation(line: 597, column: 14, scope: !2999)
!3009 = !DILocation(line: 597, column: 54, scope: !2999)
!3010 = !DILocation(line: 598, column: 9, scope: !2999)
!3011 = !DILocation(line: 599, column: 13, scope: !893)
!3012 = !DILocation(line: 599, column: 23, scope: !893)
!3013 = !DILocation(line: 599, column: 48, scope: !893)
!3014 = !DILocation(line: 599, column: 58, scope: !893)
!3015 = !DILocation(line: 599, column: 36, scope: !893)
!3016 = !DILocation(line: 600, column: 13, scope: !893)
!3017 = !DILocation(line: 600, column: 23, scope: !893)
!3018 = !DILocation(line: 601, column: 13, scope: !893)
!3019 = !DILocation(line: 601, column: 24, scope: !893)
!3020 = !DILocation(line: 602, column: 13, scope: !893)
!3021 = !DILocation(line: 602, column: 24, scope: !893)
!3022 = !DILocation(line: 603, column: 13, scope: !893)
!3023 = !DILocation(line: 603, column: 24, scope: !893)
!3024 = !DILocation(line: 605, column: 17, scope: !902)
!3025 = !DILocation(line: 605, column: 28, scope: !902)
!3026 = !DILocation(line: 605, column: 17, scope: !893)
!3027 = !DILocation(line: 606, column: 17, scope: !901)
!3028 = !DILocation(line: 606, column: 22, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !900, file: !412, discriminator: 1)
!3030 = !DILocation(line: 606, column: 32, scope: !900)
!3031 = !DILocation(line: 606, column: 62, scope: !900)
!3032 = !DILocation(line: 606, column: 77, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !900, file: !412, line: 606, column: 74)
!3034 = !DILocation(line: 606, column: 94, scope: !3033)
!3035 = !DILocation(line: 606, column: 74, scope: !3033)
!3036 = !DILocation(line: 606, column: 104, scope: !3033)
!3037 = !DILocation(line: 606, column: 74, scope: !900)
!3038 = !DILocation(line: 606, column: 74, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !900, file: !412, discriminator: 2)
!3040 = !DILocation(line: 606, column: 135, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3033, file: !412, discriminator: 3)
!3042 = !DILocation(line: 606, column: 153, scope: !3033)
!3043 = !DILocation(line: 606, column: 163, scope: !3033)
!3044 = !DILocation(line: 606, column: 188, scope: !3033)
!3045 = !DILocation(line: 606, column: 119, scope: !3033)
!3046 = !DILocation(line: 606, column: 207, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !901, file: !412, discriminator: 4)
!3048 = !DILocation(line: 606, column: 207, scope: !900)
!3049 = !DILocation(line: 606, column: 207, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !900, file: !412, discriminator: 5)
!3051 = !DILocation(line: 607, column: 17, scope: !901)
!3052 = !DILocation(line: 610, column: 13, scope: !893)
!3053 = !DILocation(line: 610, column: 20, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3055, file: !412, discriminator: 2)
!3055 = !DILexicalBlockFile(scope: !908, file: !412, discriminator: 1)
!3056 = !DILocation(line: 610, column: 30, scope: !908)
!3057 = !DILocation(line: 610, column: 13, scope: !909)
!3058 = !DILocation(line: 611, column: 17, scope: !907)
!3059 = !DILocation(line: 611, column: 37, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3061, file: !412, discriminator: 10)
!3061 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 1)
!3062 = !DILocation(line: 611, column: 43, scope: !907)
!3063 = !DILocation(line: 611, column: 36, scope: !907)
!3064 = !DILocation(line: 611, column: 96, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 2)
!3066 = !DILocation(line: 611, column: 88, scope: !907)
!3067 = !DILocation(line: 611, column: 69, scope: !907)
!3068 = !DILocation(line: 611, column: 115, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 3)
!3070 = !DILocation(line: 611, column: 121, scope: !907)
!3071 = !DILocation(line: 611, column: 114, scope: !907)
!3072 = !DILocation(line: 611, column: 174, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 5)
!3074 = !DILocation(line: 611, column: 166, scope: !907)
!3075 = !DILocation(line: 611, column: 148, scope: !907)
!3076 = !DILocation(line: 611, column: 147, scope: !907)
!3077 = !DILocation(line: 611, column: 218, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 6)
!3079 = !DILocation(line: 611, column: 210, scope: !907)
!3080 = !DILocation(line: 611, column: 192, scope: !907)
!3081 = !DILocation(line: 611, column: 191, scope: !907)
!3082 = !DILocation(line: 611, column: 36, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3084, file: !412, discriminator: 8)
!3084 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 7)
!3085 = !DILocation(line: 611, column: 238, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3087, file: !412, discriminator: 9)
!3087 = !DILexicalBlockFile(scope: !907, file: !412, discriminator: 4)
!3088 = !DILocation(line: 612, column: 21, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !907, file: !412, line: 611, column: 246)
!3090 = !DILocation(line: 614, column: 55, scope: !907)
!3091 = !DILocation(line: 615, column: 39, scope: !907)
!3092 = !DILocation(line: 616, column: 39, scope: !907)
!3093 = !DILocation(line: 614, column: 35, scope: !907)
!3094 = !DILocation(line: 614, column: 33, scope: !907)
!3095 = !DILocation(line: 617, column: 21, scope: !906)
!3096 = !DILocation(line: 617, column: 37, scope: !906)
!3097 = !DILocation(line: 617, column: 21, scope: !907)
!3098 = !DILocation(line: 618, column: 21, scope: !905)
!3099 = !DILocation(line: 618, column: 26, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !904, file: !412, discriminator: 1)
!3101 = !DILocation(line: 618, column: 36, scope: !904)
!3102 = !DILocation(line: 618, column: 66, scope: !904)
!3103 = !DILocation(line: 618, column: 87, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !904, file: !412, line: 618, column: 84)
!3105 = !DILocation(line: 618, column: 104, scope: !3104)
!3106 = !DILocation(line: 618, column: 84, scope: !3104)
!3107 = !DILocation(line: 618, column: 114, scope: !3104)
!3108 = !DILocation(line: 618, column: 84, scope: !904)
!3109 = !DILocation(line: 618, column: 84, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !904, file: !412, discriminator: 2)
!3111 = !DILocation(line: 618, column: 145, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3104, file: !412, discriminator: 3)
!3113 = !DILocation(line: 618, column: 163, scope: !3104)
!3114 = !DILocation(line: 618, column: 173, scope: !3104)
!3115 = !DILocation(line: 618, column: 198, scope: !3104)
!3116 = !DILocation(line: 618, column: 129, scope: !3104)
!3117 = !DILocation(line: 618, column: 217, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !905, file: !412, discriminator: 4)
!3119 = !DILocation(line: 618, column: 217, scope: !904)
!3120 = !DILocation(line: 618, column: 217, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !904, file: !412, discriminator: 5)
!3122 = !DILocation(line: 619, column: 21, scope: !905)
!3123 = !DILocation(line: 619, column: 26, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !911, file: !412, discriminator: 1)
!3125 = !DILocation(line: 619, column: 36, scope: !911)
!3126 = !DILocation(line: 619, column: 66, scope: !911)
!3127 = !DILocation(line: 619, column: 81, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !911, file: !412, line: 619, column: 78)
!3129 = !DILocation(line: 619, column: 98, scope: !3128)
!3130 = !DILocation(line: 619, column: 78, scope: !3128)
!3131 = !DILocation(line: 619, column: 108, scope: !3128)
!3132 = !DILocation(line: 619, column: 78, scope: !911)
!3133 = !DILocation(line: 619, column: 78, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !911, file: !412, discriminator: 2)
!3135 = !DILocation(line: 619, column: 139, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3128, file: !412, discriminator: 3)
!3137 = !DILocation(line: 619, column: 157, scope: !3128)
!3138 = !DILocation(line: 619, column: 167, scope: !3128)
!3139 = !DILocation(line: 619, column: 192, scope: !3128)
!3140 = !DILocation(line: 619, column: 123, scope: !3128)
!3141 = !DILocation(line: 619, column: 211, scope: !3118)
!3142 = !DILocation(line: 619, column: 211, scope: !911)
!3143 = !DILocation(line: 619, column: 211, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !911, file: !412, discriminator: 5)
!3145 = !DILocation(line: 620, column: 21, scope: !905)
!3146 = !DILocation(line: 622, column: 17, scope: !907)
!3147 = !DILocation(line: 623, column: 77, scope: !907)
!3148 = !DILocation(line: 623, column: 59, scope: !907)
!3149 = !DILocation(line: 623, column: 37, scope: !907)
!3150 = !DILocation(line: 623, column: 19, scope: !907)
!3151 = !DILocation(line: 623, column: 51, scope: !907)
!3152 = !DILocation(line: 623, column: 18, scope: !907)
!3153 = !DILocation(line: 623, column: 75, scope: !907)
!3154 = !DILocation(line: 624, column: 17, scope: !907)
!3155 = !DILocation(line: 625, column: 47, scope: !907)
!3156 = !DILocation(line: 625, column: 60, scope: !907)
!3157 = !DILocation(line: 625, column: 45, scope: !907)
!3158 = !DILocation(line: 625, column: 30, scope: !907)
!3159 = !DILocation(line: 626, column: 13, scope: !907)
!3160 = !DILocation(line: 610, column: 35, scope: !908)
!3161 = !DILocation(line: 610, column: 13, scope: !908)
!3162 = !DILocation(line: 629, column: 51, scope: !893)
!3163 = !DILocation(line: 630, column: 51, scope: !893)
!3164 = !DILocation(line: 630, column: 65, scope: !893)
!3165 = !DILocation(line: 629, column: 31, scope: !893)
!3166 = !DILocation(line: 629, column: 29, scope: !893)
!3167 = !DILocation(line: 631, column: 17, scope: !915)
!3168 = !DILocation(line: 631, column: 33, scope: !915)
!3169 = !DILocation(line: 631, column: 17, scope: !893)
!3170 = !DILocation(line: 632, column: 17, scope: !914)
!3171 = !DILocation(line: 632, column: 22, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !913, file: !412, discriminator: 1)
!3173 = !DILocation(line: 632, column: 32, scope: !913)
!3174 = !DILocation(line: 632, column: 62, scope: !913)
!3175 = !DILocation(line: 632, column: 83, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !913, file: !412, line: 632, column: 80)
!3177 = !DILocation(line: 632, column: 100, scope: !3176)
!3178 = !DILocation(line: 632, column: 80, scope: !3176)
!3179 = !DILocation(line: 632, column: 110, scope: !3176)
!3180 = !DILocation(line: 632, column: 80, scope: !913)
!3181 = !DILocation(line: 632, column: 80, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !913, file: !412, discriminator: 2)
!3183 = !DILocation(line: 632, column: 141, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3176, file: !412, discriminator: 3)
!3185 = !DILocation(line: 632, column: 159, scope: !3176)
!3186 = !DILocation(line: 632, column: 169, scope: !3176)
!3187 = !DILocation(line: 632, column: 194, scope: !3176)
!3188 = !DILocation(line: 632, column: 125, scope: !3176)
!3189 = !DILocation(line: 632, column: 213, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !914, file: !412, discriminator: 4)
!3191 = !DILocation(line: 632, column: 213, scope: !913)
!3192 = !DILocation(line: 632, column: 213, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !913, file: !412, discriminator: 5)
!3194 = !DILocation(line: 633, column: 17, scope: !914)
!3195 = !DILocation(line: 633, column: 22, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !917, file: !412, discriminator: 1)
!3197 = !DILocation(line: 633, column: 32, scope: !917)
!3198 = !DILocation(line: 633, column: 62, scope: !917)
!3199 = !DILocation(line: 633, column: 77, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !917, file: !412, line: 633, column: 74)
!3201 = !DILocation(line: 633, column: 94, scope: !3200)
!3202 = !DILocation(line: 633, column: 74, scope: !3200)
!3203 = !DILocation(line: 633, column: 104, scope: !3200)
!3204 = !DILocation(line: 633, column: 74, scope: !917)
!3205 = !DILocation(line: 633, column: 74, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !917, file: !412, discriminator: 2)
!3207 = !DILocation(line: 633, column: 135, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3200, file: !412, discriminator: 3)
!3209 = !DILocation(line: 633, column: 153, scope: !3200)
!3210 = !DILocation(line: 633, column: 163, scope: !3200)
!3211 = !DILocation(line: 633, column: 188, scope: !3200)
!3212 = !DILocation(line: 633, column: 119, scope: !3200)
!3213 = !DILocation(line: 633, column: 207, scope: !3190)
!3214 = !DILocation(line: 633, column: 207, scope: !917)
!3215 = !DILocation(line: 633, column: 207, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !917, file: !412, discriminator: 5)
!3217 = !DILocation(line: 634, column: 17, scope: !914)
!3218 = !DILocation(line: 636, column: 13, scope: !893)
!3219 = !DILocation(line: 637, column: 73, scope: !893)
!3220 = !DILocation(line: 637, column: 55, scope: !893)
!3221 = !DILocation(line: 637, column: 33, scope: !893)
!3222 = !DILocation(line: 637, column: 15, scope: !893)
!3223 = !DILocation(line: 637, column: 47, scope: !893)
!3224 = !DILocation(line: 637, column: 14, scope: !893)
!3225 = !DILocation(line: 637, column: 71, scope: !893)
!3226 = !DILocation(line: 639, column: 56, scope: !893)
!3227 = !DILocation(line: 639, column: 49, scope: !893)
!3228 = !DILocation(line: 639, column: 33, scope: !893)
!3229 = !DILocation(line: 639, column: 15, scope: !893)
!3230 = !DILocation(line: 639, column: 41, scope: !893)
!3231 = !DILocation(line: 639, column: 14, scope: !893)
!3232 = !DILocation(line: 639, column: 54, scope: !893)
!3233 = !DILocation(line: 640, column: 9, scope: !894)
!3234 = !DILocation(line: 640, column: 9, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !894, file: !412, discriminator: 1)
!3236 = !DILocation(line: 641, column: 5, scope: !878)
!3237 = !DILocation(line: 641, column: 5, scope: !2816)
!3238 = !DILocation(line: 641, column: 5, scope: !877)
!3239 = !DILocation(line: 566, column: 33, scope: !878)
!3240 = !DILocation(line: 566, column: 5, scope: !878)
!3241 = !DILocation(line: 644, column: 33, scope: !866)
!3242 = !DILocation(line: 644, column: 12, scope: !866)
!3243 = !DILocation(line: 644, column: 8, scope: !866)
!3244 = !DILocation(line: 645, column: 9, scope: !921)
!3245 = !DILocation(line: 645, column: 12, scope: !921)
!3246 = !DILocation(line: 645, column: 9, scope: !866)
!3247 = !DILocation(line: 646, column: 9, scope: !920)
!3248 = !DILocation(line: 646, column: 14, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !919, file: !412, discriminator: 1)
!3250 = !DILocation(line: 646, column: 24, scope: !919)
!3251 = !DILocation(line: 646, column: 54, scope: !919)
!3252 = !DILocation(line: 646, column: 69, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !919, file: !412, line: 646, column: 66)
!3254 = !DILocation(line: 646, column: 86, scope: !3253)
!3255 = !DILocation(line: 646, column: 66, scope: !3253)
!3256 = !DILocation(line: 646, column: 96, scope: !3253)
!3257 = !DILocation(line: 646, column: 66, scope: !919)
!3258 = !DILocation(line: 646, column: 66, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !919, file: !412, discriminator: 2)
!3260 = !DILocation(line: 646, column: 127, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3253, file: !412, discriminator: 3)
!3262 = !DILocation(line: 646, column: 145, scope: !3253)
!3263 = !DILocation(line: 646, column: 155, scope: !3253)
!3264 = !DILocation(line: 646, column: 180, scope: !3253)
!3265 = !DILocation(line: 646, column: 111, scope: !3253)
!3266 = !DILocation(line: 646, column: 199, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !920, file: !412, discriminator: 4)
!3268 = !DILocation(line: 646, column: 199, scope: !919)
!3269 = !DILocation(line: 646, column: 199, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !919, file: !412, discriminator: 5)
!3271 = !DILocation(line: 647, column: 9, scope: !920)
!3272 = !DILocation(line: 650, column: 16, scope: !866)
!3273 = !DILocation(line: 650, column: 5, scope: !866)
!3274 = !DILocation(line: 650, column: 9, scope: !866)
!3275 = !DILocation(line: 650, column: 14, scope: !866)
!3276 = !DILocation(line: 651, column: 18, scope: !866)
!3277 = !DILocation(line: 651, column: 5, scope: !866)
!3278 = !DILocation(line: 651, column: 9, scope: !866)
!3279 = !DILocation(line: 651, column: 16, scope: !866)
!3280 = !DILocation(line: 653, column: 23, scope: !866)
!3281 = !DILocation(line: 653, column: 5, scope: !866)
!3282 = !DILocation(line: 654, column: 24, scope: !866)
!3283 = !DILocation(line: 654, column: 12, scope: !866)
!3284 = !DILocation(line: 654, column: 5, scope: !866)
!3285 = !DILocation(line: 655, column: 1, scope: !866)
!3286 = !DILocation(line: 673, column: 26, scope: !840)
!3287 = !DILocation(line: 673, column: 41, scope: !840)
!3288 = !DILocation(line: 675, column: 5, scope: !840)
!3289 = !DILocation(line: 675, column: 15, scope: !840)
!3290 = !DILocation(line: 679, column: 24, scope: !847)
!3291 = !DILocation(line: 679, column: 32, scope: !847)
!3292 = !DILocation(line: 679, column: 41, scope: !847)
!3293 = !DILocation(line: 679, column: 9, scope: !840)
!3294 = !DILocation(line: 680, column: 9, scope: !846)
!3295 = !DILocation(line: 680, column: 20, scope: !846)
!3296 = !DILocation(line: 680, column: 34, scope: !846)
!3297 = !DILocation(line: 681, column: 9, scope: !846)
!3298 = !DILocation(line: 681, column: 19, scope: !846)
!3299 = !DILocation(line: 683, column: 39, scope: !846)
!3300 = !DILocation(line: 683, column: 24, scope: !846)
!3301 = !DILocation(line: 683, column: 47, scope: !846)
!3302 = !DILocation(line: 683, column: 20, scope: !846)
!3303 = !DILocation(line: 684, column: 25, scope: !846)
!3304 = !DILocation(line: 684, column: 32, scope: !846)
!3305 = !DILocation(line: 684, column: 41, scope: !846)
!3306 = !DILocation(line: 685, column: 23, scope: !854)
!3307 = !DILocation(line: 685, column: 14, scope: !854)
!3308 = !DILocation(line: 685, column: 28, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3310, file: !412, discriminator: 2)
!3310 = !DILexicalBlockFile(scope: !853, file: !412, discriminator: 1)
!3311 = !DILocation(line: 685, column: 39, scope: !853)
!3312 = !DILocation(line: 685, column: 37, scope: !853)
!3313 = !DILocation(line: 685, column: 9, scope: !854)
!3314 = !DILocation(line: 686, column: 61, scope: !852)
!3315 = !DILocation(line: 686, column: 45, scope: !852)
!3316 = !DILocation(line: 686, column: 27, scope: !852)
!3317 = !DILocation(line: 686, column: 53, scope: !852)
!3318 = !DILocation(line: 686, column: 26, scope: !852)
!3319 = !DILocation(line: 686, column: 23, scope: !852)
!3320 = !DILocation(line: 687, column: 39, scope: !852)
!3321 = !DILocation(line: 687, column: 44, scope: !852)
!3322 = !DILocation(line: 687, column: 22, scope: !852)
!3323 = !DILocation(line: 687, column: 20, scope: !852)
!3324 = !DILocation(line: 688, column: 13, scope: !852)
!3325 = !DILocation(line: 688, column: 18, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !851, file: !412, discriminator: 1)
!3327 = !DILocation(line: 688, column: 28, scope: !851)
!3328 = !DILocation(line: 688, column: 58, scope: !851)
!3329 = !DILocation(line: 688, column: 72, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !851, file: !412, line: 688, column: 69)
!3331 = !DILocation(line: 688, column: 89, scope: !3330)
!3332 = !DILocation(line: 688, column: 69, scope: !3330)
!3333 = !DILocation(line: 688, column: 99, scope: !3330)
!3334 = !DILocation(line: 688, column: 69, scope: !851)
!3335 = !DILocation(line: 688, column: 69, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !851, file: !412, discriminator: 2)
!3337 = !DILocation(line: 688, column: 130, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3330, file: !412, discriminator: 3)
!3339 = !DILocation(line: 688, column: 148, scope: !3330)
!3340 = !DILocation(line: 688, column: 158, scope: !3330)
!3341 = !DILocation(line: 688, column: 183, scope: !3330)
!3342 = !DILocation(line: 688, column: 114, scope: !3330)
!3343 = !DILocation(line: 688, column: 202, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !852, file: !412, discriminator: 4)
!3345 = !DILocation(line: 688, column: 202, scope: !851)
!3346 = !DILocation(line: 688, column: 202, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !851, file: !412, discriminator: 5)
!3348 = !DILocation(line: 689, column: 17, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !852, file: !412, line: 689, column: 17)
!3350 = !DILocation(line: 689, column: 24, scope: !3349)
!3351 = !DILocation(line: 689, column: 17, scope: !852)
!3352 = !DILocation(line: 690, column: 17, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !412, line: 689, column: 39)
!3354 = !DILocation(line: 693, column: 19, scope: !852)
!3355 = !DILocation(line: 693, column: 17, scope: !852)
!3356 = !DILocation(line: 694, column: 9, scope: !852)
!3357 = !DILocation(line: 685, column: 51, scope: !853)
!3358 = !DILocation(line: 685, column: 9, scope: !853)
!3359 = !DILocation(line: 695, column: 5, scope: !847)
!3360 = !DILocation(line: 695, column: 5, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !847, file: !412, discriminator: 1)
!3362 = !DILocation(line: 695, column: 5, scope: !846)
!3363 = !DILocation(line: 696, column: 35, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !847, file: !412, line: 695, column: 12)
!3365 = !DILocation(line: 696, column: 40, scope: !3364)
!3366 = !DILocation(line: 696, column: 18, scope: !3364)
!3367 = !DILocation(line: 696, column: 16, scope: !3364)
!3368 = !DILocation(line: 697, column: 13, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !412, line: 697, column: 13)
!3370 = !DILocation(line: 697, column: 20, scope: !3369)
!3371 = !DILocation(line: 697, column: 13, scope: !3364)
!3372 = !DILocation(line: 698, column: 13, scope: !3369)
!3373 = !DILocation(line: 699, column: 15, scope: !3364)
!3374 = !DILocation(line: 699, column: 13, scope: !3364)
!3375 = !DILocation(line: 702, column: 12, scope: !840)
!3376 = !DILocation(line: 702, column: 5, scope: !840)
!3377 = !DILocation(line: 703, column: 1, scope: !840)
!3378 = !DILocation(line: 836, column: 42, scope: !922)
!3379 = !DILocation(line: 838, column: 25, scope: !922)
!3380 = !DILocation(line: 838, column: 5, scope: !922)
!3381 = !DILocation(line: 839, column: 5, scope: !922)
!3382 = !DILocation(line: 839, column: 10, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !928, file: !412, discriminator: 1)
!3384 = !DILocation(line: 839, column: 20, scope: !928)
!3385 = !DILocation(line: 839, column: 51, scope: !928)
!3386 = !DILocation(line: 839, column: 55, scope: !928)
!3387 = !{!3388, !1047, i64 16}
!3388 = !{!"", !1062, i64 0, !1047, i64 16, !1047, i64 24, !1047, i64 32}
!3389 = !DILocation(line: 839, column: 66, scope: !931)
!3390 = !DILocation(line: 839, column: 82, scope: !931)
!3391 = !DILocation(line: 839, column: 66, scope: !928)
!3392 = !DILocation(line: 839, column: 97, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !931, file: !412, discriminator: 2)
!3394 = !DILocation(line: 839, column: 102, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !930, file: !412, discriminator: 4)
!3396 = !DILocation(line: 839, column: 112, scope: !930)
!3397 = !DILocation(line: 839, column: 142, scope: !930)
!3398 = !DILocation(line: 839, column: 168, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !930, file: !412, line: 839, column: 165)
!3400 = !DILocation(line: 839, column: 185, scope: !3399)
!3401 = !DILocation(line: 839, column: 165, scope: !3399)
!3402 = !DILocation(line: 839, column: 195, scope: !3399)
!3403 = !DILocation(line: 839, column: 165, scope: !930)
!3404 = !DILocation(line: 839, column: 165, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !930, file: !412, discriminator: 5)
!3406 = !DILocation(line: 839, column: 226, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3399, file: !412, discriminator: 6)
!3408 = !DILocation(line: 839, column: 244, scope: !3399)
!3409 = !DILocation(line: 839, column: 254, scope: !3399)
!3410 = !DILocation(line: 839, column: 279, scope: !3399)
!3411 = !DILocation(line: 839, column: 210, scope: !3399)
!3412 = !DILocation(line: 839, column: 298, scope: !3413)
!3413 = !DILexicalBlockFile(scope: !931, file: !412, discriminator: 7)
!3414 = !DILocation(line: 839, column: 298, scope: !930)
!3415 = !DILocation(line: 839, column: 298, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !930, file: !412, discriminator: 8)
!3417 = !DILocation(line: 839, column: 298, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !930, file: !412, discriminator: 9)
!3419 = !DILocation(line: 839, column: 311, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3421, file: !412, discriminator: 10)
!3421 = !DILexicalBlockFile(scope: !922, file: !412, discriminator: 3)
!3422 = !DILocation(line: 839, column: 311, scope: !928)
!3423 = !DILocation(line: 840, column: 5, scope: !922)
!3424 = !DILocation(line: 840, column: 10, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !933, file: !412, discriminator: 1)
!3426 = !DILocation(line: 840, column: 20, scope: !933)
!3427 = !DILocation(line: 840, column: 51, scope: !933)
!3428 = !DILocation(line: 840, column: 55, scope: !933)
!3429 = !{!3388, !1047, i64 24}
!3430 = !DILocation(line: 840, column: 66, scope: !936)
!3431 = !DILocation(line: 840, column: 82, scope: !936)
!3432 = !DILocation(line: 840, column: 66, scope: !933)
!3433 = !DILocation(line: 840, column: 97, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !936, file: !412, discriminator: 2)
!3435 = !DILocation(line: 840, column: 102, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !935, file: !412, discriminator: 4)
!3437 = !DILocation(line: 840, column: 112, scope: !935)
!3438 = !DILocation(line: 840, column: 142, scope: !935)
!3439 = !DILocation(line: 840, column: 168, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !935, file: !412, line: 840, column: 165)
!3441 = !DILocation(line: 840, column: 185, scope: !3440)
!3442 = !DILocation(line: 840, column: 165, scope: !3440)
!3443 = !DILocation(line: 840, column: 195, scope: !3440)
!3444 = !DILocation(line: 840, column: 165, scope: !935)
!3445 = !DILocation(line: 840, column: 165, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !935, file: !412, discriminator: 5)
!3447 = !DILocation(line: 840, column: 226, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3440, file: !412, discriminator: 6)
!3449 = !DILocation(line: 840, column: 244, scope: !3440)
!3450 = !DILocation(line: 840, column: 254, scope: !3440)
!3451 = !DILocation(line: 840, column: 279, scope: !3440)
!3452 = !DILocation(line: 840, column: 210, scope: !3440)
!3453 = !DILocation(line: 840, column: 298, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !936, file: !412, discriminator: 7)
!3455 = !DILocation(line: 840, column: 298, scope: !935)
!3456 = !DILocation(line: 840, column: 298, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !935, file: !412, discriminator: 8)
!3458 = !DILocation(line: 840, column: 298, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !935, file: !412, discriminator: 9)
!3460 = !DILocation(line: 840, column: 311, scope: !3420)
!3461 = !DILocation(line: 840, column: 311, scope: !933)
!3462 = !DILocation(line: 841, column: 5, scope: !922)
!3463 = !DILocation(line: 841, column: 10, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !938, file: !412, discriminator: 1)
!3465 = !DILocation(line: 841, column: 20, scope: !938)
!3466 = !DILocation(line: 841, column: 51, scope: !938)
!3467 = !DILocation(line: 841, column: 55, scope: !938)
!3468 = !{!3388, !1047, i64 32}
!3469 = !DILocation(line: 841, column: 66, scope: !941)
!3470 = !DILocation(line: 841, column: 82, scope: !941)
!3471 = !DILocation(line: 841, column: 66, scope: !938)
!3472 = !DILocation(line: 841, column: 97, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !941, file: !412, discriminator: 2)
!3474 = !DILocation(line: 841, column: 102, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 4)
!3476 = !DILocation(line: 841, column: 112, scope: !940)
!3477 = !DILocation(line: 841, column: 142, scope: !940)
!3478 = !DILocation(line: 841, column: 168, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !940, file: !412, line: 841, column: 165)
!3480 = !DILocation(line: 841, column: 185, scope: !3479)
!3481 = !DILocation(line: 841, column: 165, scope: !3479)
!3482 = !DILocation(line: 841, column: 195, scope: !3479)
!3483 = !DILocation(line: 841, column: 165, scope: !940)
!3484 = !DILocation(line: 841, column: 165, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 5)
!3486 = !DILocation(line: 841, column: 226, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3479, file: !412, discriminator: 6)
!3488 = !DILocation(line: 841, column: 244, scope: !3479)
!3489 = !DILocation(line: 841, column: 254, scope: !3479)
!3490 = !DILocation(line: 841, column: 279, scope: !3479)
!3491 = !DILocation(line: 841, column: 210, scope: !3479)
!3492 = !DILocation(line: 841, column: 298, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !941, file: !412, discriminator: 7)
!3494 = !DILocation(line: 841, column: 298, scope: !940)
!3495 = !DILocation(line: 841, column: 298, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 8)
!3497 = !DILocation(line: 841, column: 298, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !940, file: !412, discriminator: 9)
!3499 = !DILocation(line: 841, column: 311, scope: !3420)
!3500 = !DILocation(line: 841, column: 311, scope: !938)
!3501 = !DILocation(line: 842, column: 21, scope: !922)
!3502 = !DILocation(line: 842, column: 5, scope: !922)
!3503 = !DILocation(line: 843, column: 1, scope: !922)
!3504 = !DILocation(line: 854, column: 39, scope: !942)
!3505 = !DILocation(line: 854, column: 53, scope: !942)
!3506 = !DILocation(line: 854, column: 69, scope: !942)
!3507 = !DILocation(line: 856, column: 5, scope: !942)
!3508 = !DILocation(line: 856, column: 15, scope: !942)
!3509 = !DILocation(line: 856, column: 24, scope: !942)
!3510 = !DILocation(line: 856, column: 30, scope: !942)
!3511 = !DILocation(line: 858, column: 28, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !942, file: !412, line: 858, column: 9)
!3513 = !DILocation(line: 858, column: 10, scope: !3512)
!3514 = !DILocation(line: 858, column: 9, scope: !942)
!3515 = !DILocation(line: 859, column: 9, scope: !3512)
!3516 = !DILocation(line: 860, column: 31, scope: !942)
!3517 = !DILocation(line: 860, column: 36, scope: !942)
!3518 = !DILocation(line: 860, column: 40, scope: !942)
!3519 = !DILocation(line: 860, column: 14, scope: !942)
!3520 = !DILocation(line: 860, column: 12, scope: !942)
!3521 = !DILocation(line: 861, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !942, file: !412, line: 861, column: 9)
!3523 = !DILocation(line: 861, column: 16, scope: !3522)
!3524 = !DILocation(line: 861, column: 9, scope: !942)
!3525 = !DILocation(line: 862, column: 9, scope: !3522)
!3526 = !DILocation(line: 863, column: 28, scope: !942)
!3527 = !DILocation(line: 863, column: 36, scope: !942)
!3528 = !DILocation(line: 863, column: 40, scope: !942)
!3529 = !DILocation(line: 863, column: 46, scope: !942)
!3530 = !DILocation(line: 863, column: 50, scope: !942)
!3531 = !DILocation(line: 863, column: 14, scope: !942)
!3532 = !DILocation(line: 863, column: 12, scope: !942)
!3533 = !DILocation(line: 864, column: 5, scope: !942)
!3534 = !DILocation(line: 864, column: 10, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !953, file: !412, discriminator: 1)
!3536 = !DILocation(line: 864, column: 20, scope: !953)
!3537 = !DILocation(line: 864, column: 50, scope: !953)
!3538 = !DILocation(line: 864, column: 67, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !953, file: !412, line: 864, column: 64)
!3540 = !DILocation(line: 864, column: 84, scope: !3539)
!3541 = !DILocation(line: 864, column: 64, scope: !3539)
!3542 = !DILocation(line: 864, column: 94, scope: !3539)
!3543 = !DILocation(line: 864, column: 64, scope: !953)
!3544 = !DILocation(line: 864, column: 64, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !953, file: !412, discriminator: 2)
!3546 = !DILocation(line: 864, column: 125, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3539, file: !412, discriminator: 3)
!3548 = !DILocation(line: 864, column: 143, scope: !3539)
!3549 = !DILocation(line: 864, column: 153, scope: !3539)
!3550 = !DILocation(line: 864, column: 178, scope: !3539)
!3551 = !DILocation(line: 864, column: 109, scope: !3539)
!3552 = !DILocation(line: 864, column: 197, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !942, file: !412, discriminator: 4)
!3554 = !DILocation(line: 864, column: 197, scope: !953)
!3555 = !DILocation(line: 864, column: 197, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !953, file: !412, discriminator: 5)
!3557 = !DILocation(line: 865, column: 12, scope: !942)
!3558 = !DILocation(line: 865, column: 5, scope: !942)
!3559 = !DILocation(line: 866, column: 1, scope: !942)
!3560 = !DILocation(line: 846, column: 43, scope: !954)
!3561 = !DILocation(line: 846, column: 57, scope: !954)
!3562 = !DILocation(line: 846, column: 70, scope: !954)
!3563 = !DILocation(line: 848, column: 5, scope: !954)
!3564 = !DILocation(line: 848, column: 14, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !963, file: !412, discriminator: 1)
!3566 = !DILocation(line: 848, column: 18, scope: !963)
!3567 = !DILocation(line: 848, column: 14, scope: !963)
!3568 = !DILocation(line: 848, column: 14, scope: !964)
!3569 = !DILocation(line: 848, column: 26, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !962, file: !412, discriminator: 2)
!3571 = !DILocation(line: 848, column: 30, scope: !962)
!3572 = !DILocation(line: 848, column: 37, scope: !962)
!3573 = !DILocation(line: 848, column: 56, scope: !962)
!3574 = !DILocation(line: 848, column: 60, scope: !962)
!3575 = !DILocation(line: 848, column: 67, scope: !962)
!3576 = !DILocation(line: 848, column: 77, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !962, file: !412, line: 848, column: 77)
!3578 = !DILocation(line: 848, column: 77, scope: !962)
!3579 = !DILocation(line: 848, column: 90, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3577, file: !412, discriminator: 4)
!3581 = !DILocation(line: 848, column: 83, scope: !3577)
!3582 = !DILocation(line: 848, column: 96, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !963, file: !412, discriminator: 5)
!3584 = !DILocation(line: 848, column: 96, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3586, file: !412, discriminator: 7)
!3586 = !DILexicalBlockFile(scope: !963, file: !412, discriminator: 6)
!3587 = !DILocation(line: 848, column: 96, scope: !962)
!3588 = !DILocation(line: 848, column: 98, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3590, file: !412, discriminator: 8)
!3590 = !DILexicalBlockFile(scope: !964, file: !412, discriminator: 3)
!3591 = !DILocation(line: 849, column: 5, scope: !954)
!3592 = !DILocation(line: 849, column: 14, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !967, file: !412, discriminator: 1)
!3594 = !DILocation(line: 849, column: 18, scope: !967)
!3595 = !DILocation(line: 849, column: 14, scope: !967)
!3596 = !DILocation(line: 849, column: 14, scope: !968)
!3597 = !DILocation(line: 849, column: 26, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !966, file: !412, discriminator: 2)
!3599 = !DILocation(line: 849, column: 30, scope: !966)
!3600 = !DILocation(line: 849, column: 37, scope: !966)
!3601 = !DILocation(line: 849, column: 56, scope: !966)
!3602 = !DILocation(line: 849, column: 60, scope: !966)
!3603 = !DILocation(line: 849, column: 67, scope: !966)
!3604 = !DILocation(line: 849, column: 77, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !966, file: !412, line: 849, column: 77)
!3606 = !DILocation(line: 849, column: 77, scope: !966)
!3607 = !DILocation(line: 849, column: 90, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3605, file: !412, discriminator: 4)
!3609 = !DILocation(line: 849, column: 83, scope: !3605)
!3610 = !DILocation(line: 849, column: 96, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !967, file: !412, discriminator: 5)
!3612 = !DILocation(line: 849, column: 96, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !412, discriminator: 7)
!3614 = !DILexicalBlockFile(scope: !967, file: !412, discriminator: 6)
!3615 = !DILocation(line: 849, column: 96, scope: !966)
!3616 = !DILocation(line: 849, column: 98, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3618, file: !412, discriminator: 8)
!3618 = !DILexicalBlockFile(scope: !968, file: !412, discriminator: 3)
!3619 = !DILocation(line: 850, column: 5, scope: !954)
!3620 = !DILocation(line: 851, column: 1, scope: !954)
!3621 = !DILocation(line: 801, column: 32, scope: !969)
!3622 = !DILocation(line: 801, column: 48, scope: !969)
!3623 = !DILocation(line: 801, column: 64, scope: !969)
!3624 = !DILocation(line: 803, column: 5, scope: !969)
!3625 = !DILocation(line: 803, column: 25, scope: !969)
!3626 = !DILocation(line: 804, column: 5, scope: !969)
!3627 = !DILocation(line: 804, column: 15, scope: !969)
!3628 = !DILocation(line: 804, column: 22, scope: !969)
!3629 = !DILocation(line: 806, column: 26, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !969, file: !412, line: 806, column: 9)
!3631 = !DILocation(line: 806, column: 11, scope: !3630)
!3632 = !DILocation(line: 806, column: 34, scope: !3630)
!3633 = !DILocation(line: 806, column: 43, scope: !3630)
!3634 = !DILocation(line: 806, column: 9, scope: !969)
!3635 = !DILocation(line: 807, column: 25, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !412, line: 806, column: 48)
!3637 = !DILocation(line: 807, column: 9, scope: !3636)
!3638 = !DILocation(line: 809, column: 9, scope: !3636)
!3639 = !DILocation(line: 813, column: 35, scope: !969)
!3640 = !DILocation(line: 813, column: 12, scope: !969)
!3641 = !DILocation(line: 813, column: 8, scope: !969)
!3642 = !DILocation(line: 814, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !969, file: !412, line: 814, column: 9)
!3644 = !DILocation(line: 814, column: 12, scope: !3643)
!3645 = !DILocation(line: 814, column: 9, scope: !969)
!3646 = !DILocation(line: 815, column: 9, scope: !3643)
!3647 = !DILocation(line: 817, column: 32, scope: !969)
!3648 = !DILocation(line: 817, column: 58, scope: !969)
!3649 = !DILocation(line: 817, column: 43, scope: !969)
!3650 = !DILocation(line: 817, column: 66, scope: !969)
!3651 = !DILocation(line: 817, column: 15, scope: !969)
!3652 = !DILocation(line: 817, column: 13, scope: !969)
!3653 = !DILocation(line: 818, column: 9, scope: !980)
!3654 = !DILocation(line: 818, column: 17, scope: !980)
!3655 = !DILocation(line: 818, column: 9, scope: !969)
!3656 = !DILocation(line: 819, column: 9, scope: !979)
!3657 = !DILocation(line: 819, column: 14, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !978, file: !412, discriminator: 1)
!3659 = !DILocation(line: 819, column: 24, scope: !978)
!3660 = !DILocation(line: 819, column: 54, scope: !978)
!3661 = !DILocation(line: 819, column: 41, scope: !978)
!3662 = !DILocation(line: 819, column: 67, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !978, file: !412, line: 819, column: 64)
!3664 = !DILocation(line: 819, column: 84, scope: !3663)
!3665 = !DILocation(line: 819, column: 64, scope: !3663)
!3666 = !DILocation(line: 819, column: 94, scope: !3663)
!3667 = !DILocation(line: 819, column: 64, scope: !978)
!3668 = !DILocation(line: 819, column: 64, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !978, file: !412, discriminator: 2)
!3670 = !DILocation(line: 819, column: 125, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3663, file: !412, discriminator: 3)
!3672 = !DILocation(line: 819, column: 143, scope: !3663)
!3673 = !DILocation(line: 819, column: 153, scope: !3663)
!3674 = !DILocation(line: 819, column: 178, scope: !3663)
!3675 = !DILocation(line: 819, column: 109, scope: !3663)
!3676 = !DILocation(line: 819, column: 197, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !979, file: !412, discriminator: 4)
!3678 = !DILocation(line: 819, column: 197, scope: !978)
!3679 = !DILocation(line: 819, column: 197, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !978, file: !412, discriminator: 5)
!3681 = !DILocation(line: 820, column: 9, scope: !979)
!3682 = !DILocation(line: 822, column: 16, scope: !969)
!3683 = !DILocation(line: 822, column: 5, scope: !969)
!3684 = !DILocation(line: 822, column: 9, scope: !969)
!3685 = !DILocation(line: 822, column: 14, scope: !969)
!3686 = !DILocation(line: 824, column: 32, scope: !969)
!3687 = !DILocation(line: 824, column: 14, scope: !969)
!3688 = !DILocation(line: 824, column: 40, scope: !969)
!3689 = !DILocation(line: 824, column: 13, scope: !969)
!3690 = !DILocation(line: 824, column: 10, scope: !969)
!3691 = !DILocation(line: 825, column: 21, scope: !969)
!3692 = !DILocation(line: 825, column: 29, scope: !969)
!3693 = !DILocation(line: 825, column: 38, scope: !969)
!3694 = !DILocation(line: 826, column: 16, scope: !969)
!3695 = !DILocation(line: 826, column: 5, scope: !969)
!3696 = !DILocation(line: 826, column: 9, scope: !969)
!3697 = !DILocation(line: 826, column: 14, scope: !969)
!3698 = !DILocation(line: 828, column: 5, scope: !969)
!3699 = !DILocation(line: 828, column: 10, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !982, file: !412, discriminator: 1)
!3701 = !DILocation(line: 828, column: 20, scope: !982)
!3702 = !DILocation(line: 828, column: 51, scope: !982)
!3703 = !DILocation(line: 828, column: 62, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !982, file: !412, line: 828, column: 62)
!3705 = !DILocation(line: 828, column: 78, scope: !3704)
!3706 = !DILocation(line: 828, column: 62, scope: !982)
!3707 = !DILocation(line: 828, column: 109, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3704, file: !412, discriminator: 2)
!3709 = !DILocation(line: 828, column: 128, scope: !3704)
!3710 = !DILocation(line: 828, column: 137, scope: !3704)
!3711 = !DILocation(line: 828, column: 93, scope: !3704)
!3712 = !DILocation(line: 828, column: 142, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3714, file: !412, discriminator: 4)
!3714 = !DILexicalBlockFile(scope: !969, file: !412, discriminator: 3)
!3715 = !DILocation(line: 828, column: 142, scope: !982)
!3716 = !DILocation(line: 828, column: 142, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !982, file: !412, discriminator: 5)
!3718 = !DILocation(line: 829, column: 16, scope: !969)
!3719 = !DILocation(line: 829, column: 5, scope: !969)
!3720 = !DILocation(line: 829, column: 9, scope: !969)
!3721 = !DILocation(line: 829, column: 14, scope: !969)
!3722 = !DILocation(line: 831, column: 23, scope: !969)
!3723 = !DILocation(line: 831, column: 5, scope: !969)
!3724 = !DILocation(line: 832, column: 24, scope: !969)
!3725 = !DILocation(line: 832, column: 12, scope: !969)
!3726 = !DILocation(line: 832, column: 5, scope: !969)
!3727 = !DILocation(line: 833, column: 1, scope: !969)
