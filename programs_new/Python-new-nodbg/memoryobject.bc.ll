; ModuleID = './memoryobject.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._PyManagedBufferObject = type { %struct._object, i32, i64, %struct.bufferinfo }
%struct.PyMemoryViewObject = type { %struct.PyVarObject, %struct._PyManagedBufferObject*, i64, i32, i64, %struct.bufferinfo, [3 x i8], %struct._object*, [1 x i64] }
%struct.Py_buffer_full = type { %struct.bufferinfo, [1 x i64] }
%struct.unpacker = type { %struct._object*, %struct._object*, i8*, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [14 x i8] c"managedbuffer\00", align 1
@_PyManagedBuffer_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct._PyManagedBufferObject*)* @mbuf_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyManagedBufferObject*, i32 (%struct._object*, i8*)*, i8*)* @mbuf_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyManagedBufferObject*)* @mbuf_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"PyMemoryView_FromBuffer(): info->buf must not be NULL\00", align 1
@PyMemoryView_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 152, i64 8, void (%struct._object*)* bitcast (void (%struct.PyMemoryViewObject*)* @memory_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @memory_as_sequence, %struct.PyMappingMethods* @memory_as_mapping, i64 (%struct._object*)* bitcast (i64 (%struct.PyMemoryViewObject*)* @memory_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @memory_as_buffer, i64 278528, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @memory_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyMemoryViewObject*, i32 (%struct._object*, i8*)*, i8*)* @memory_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyMemoryViewObject*)* @memory_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @memory_richcompare, i64 144, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @memory_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([13 x %struct.PyGetSetDef], [13 x %struct.PyGetSetDef]* @memory_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @memory_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"operation forbidden on released memoryview object\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"memoryview: %.200s object does not have the buffer interface\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"underlying buffer is not writable\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"writable contiguous buffer requested for a non-contiguous object.\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"PyBuffer_ToContiguous: len != view->len\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"memoryview\00", align 1
@memory_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyMemoryViewObject*)* @memory_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null, %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, i64)* @memory_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@memory_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyMemoryViewObject*)* @memory_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyMemoryViewObject*, %struct._object*, %struct._object*)* @memory_ass_sub to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@memory_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.PyMemoryViewObject*, %struct.bufferinfo*, i32)* @memory_getbuf to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (void (%struct.PyMemoryViewObject*, %struct.bufferinfo*)* @memory_releasebuf to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@memory_doc = internal global [86 x i8] c"memoryview(object)\0A\0ACreate a new memoryview object which references the given object.\00", align 16
@memory_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_release to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @memory_release_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_tobytes to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @memory_tobytes_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_tolist to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @memory_tolist_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*, %struct._object*)* @memory_cast to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @memory_cast_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @memory_enter, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @memory_exit, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@memory_getsetlist = internal global [13 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_obj_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @memory_obj_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_nbytes_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @memory_nbytes_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_readonly_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @memory_readonly_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_itemsize_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @memory_itemsize_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_format_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @memory_format_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_ndim_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @memory_ndim_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_shape_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @memory_shape_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_strides_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @memory_strides_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*)* @memory_suboffsets_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @memory_suboffsets_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_c_contiguous to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @memory_c_contiguous_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_f_contiguous to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @memory_f_contiguous_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyMemoryViewObject*, %struct._object*)* @memory_contiguous to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @memory_contiguous_doc, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"memoryview: number of dimensions must not exceed 64\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"memoryview assignment: lvalue and rvalue have different structures\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"memoryview has %zd exported buffer%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"_memory_release(): negative export count\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"<released memory at %p>\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"<memory at %p>\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"invalid indexing of 0-dim memory\00", align 1
@PyExc_NotImplementedError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [48 x i8] c"multi-dimensional sub-views are not implemented\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"memoryview: unsupported format %s\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"memoryview: format %s not supported\00", align 1
@_Py_EllipsisObject = external global %struct._object, align 8
@PySlice_Type = external global %struct._typeobject, align 8
@.str.23 = private unnamed_addr constant [45 x i8] c"multi-dimensional slicing is not implemented\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"memoryview: invalid slice key\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"cannot modify read-only memory\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"cannot delete memory\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"memoryview assignments are currently restricted to ndim = 1\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"memoryview slice assignments are currently restricted to ndim = 1\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"memoryview: invalid type for format '%s'\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"memoryview: invalid value for format '%s'\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [39 x i8] c"cannot hash writable memoryview object\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"memoryview: hashing is restricted to formats 'B', 'b' or 'c'\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"memoryview: underlying buffer is not writable\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"memoryview: underlying buffer is not C-contiguous\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"memoryview: underlying buffer is not Fortran contiguous\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"memoryview: underlying buffer is not contiguous\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"memoryview: underlying buffer requires suboffsets\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"memoryview: cannot cast to unsigned bytes if the format flag is present\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Struct\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"unpack_from\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@PyExc_MemoryError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.42 = private unnamed_addr constant [42 x i8] c"memoryview: internal error in richcompare\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@memory_release_doc = internal global [85 x i8] c"M.release() -> None\0A\0ARelease the underlying buffer exposed by the memoryview object.\00", align 16
@.str.44 = private unnamed_addr constant [8 x i8] c"tobytes\00", align 1
@memory_tobytes_doc = internal global [70 x i8] c"M.tobytes() -> bytes\0A\0AReturn the data in the buffer as a byte string.\00", align 16
@.str.45 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@memory_tolist_doc = internal global [73 x i8] c"M.tolist() -> list\0A\0AReturn the data in the buffer as a list of elements.\00", align 16
@.str.46 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@memory_cast_doc = internal global [83 x i8] c"M.cast(format[, shape]) -> memoryview\0A\0ACast a memoryview to a new format or shape.\00", align 16
@.str.47 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@memory_cast.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* null], align 16
@.str.49 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"memoryview: format argument must be a string\00", align 1
@.str.53 = private unnamed_addr constant [55 x i8] c"memoryview: casts are restricted to C-contiguous views\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"memoryview: cannot cast view with zeros in shape or strides\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"shape must be a list or a tuple\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"memoryview: cast must be 1D -> ND or ND -> 1D\00", align 1
@.str.57 = private unnamed_addr constant [97 x i8] c"memoryview: source format must be a native single character format prefixed with an optional '@'\00", align 1
@.str.58 = private unnamed_addr constant [102 x i8] c"memoryview: destination format must be a native single character format prefixed with an optional '@'\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"memoryview: cannot cast between two non-byte formats\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"memoryview: length is not a multiple of itemsize\00", align 1
@.str.61 = private unnamed_addr constant [53 x i8] c"memoryview: product(shape) * itemsize != buffer size\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"memoryview.cast(): elements of shape must be integers\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c"memoryview.cast(): elements of shape must be integers > 0\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"memoryview.cast(): product(shape) > SSIZE_MAX\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@memory_obj_doc = internal global [41 x i8] c"The underlying object of the memoryview.\00", align 16
@.str.66 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@memory_nbytes_doc = internal global [87 x i8] c"The amount of space in bytes that the array would use in\0A a contiguous representation.\00", align 16
@.str.67 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@memory_readonly_doc = internal global [51 x i8] c"A bool indicating whether the memory is read only.\00", align 16
@.str.68 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@memory_itemsize_doc = internal global [53 x i8] c"The size in bytes of each element of the memoryview.\00", align 16
@memory_format_doc = internal global [87 x i8] c"A string containing the format (in struct module style)\0A for each element in the view.\00", align 16
@.str.69 = private unnamed_addr constant [5 x i8] c"ndim\00", align 1
@memory_ndim_doc = internal global [95 x i8] c"An integer indicating how many dimensions of a multi-dimensional\0A array the memory represents.\00", align 16
@memory_shape_doc = internal global [84 x i8] c"A tuple of ndim integers giving the shape of the memory\0A as an N-dimensional array.\00", align 16
@.str.70 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@memory_strides_doc = internal global [107 x i8] c"A tuple of ndim integers giving the size in bytes to access\0A each element for each dimension of the array.\00", align 16
@.str.71 = private unnamed_addr constant [11 x i8] c"suboffsets\00", align 1
@memory_suboffsets_doc = internal global [58 x i8] c"A tuple of integers used internally for PIL-style arrays.\00", align 16
@.str.72 = private unnamed_addr constant [13 x i8] c"c_contiguous\00", align 1
@memory_c_contiguous_doc = internal global [54 x i8] c"A bool indicating whether the memory is C contiguous.\00", align 16
@.str.73 = private unnamed_addr constant [13 x i8] c"f_contiguous\00", align 1
@memory_f_contiguous_doc = internal global [60 x i8] c"A bool indicating whether the memory is Fortran contiguous.\00", align 16
@.str.74 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@memory_contiguous_doc = internal global [52 x i8] c"A bool indicating whether the memory is contiguous.\00", align 16
@memory_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* null], align 16
@.str.75 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"O:memoryview\00", align 1

; Function Attrs: nounwind uwtable
define internal void @mbuf_dealloc(%struct._PyManagedBufferObject* %self) #0 {
entry:
  %self.addr = alloca %struct._PyManagedBufferObject*, align 8
  store %struct._PyManagedBufferObject* %self, %struct._PyManagedBufferObject** %self.addr, align 8
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  call void @mbuf_release(%struct._PyManagedBufferObject* %0)
  %1 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 3
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master, i32 0, i32 6
  %4 = load i8*, i8** %format, align 8
  call void @PyMem_Free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %6 = bitcast %struct._PyManagedBufferObject* %5 to i8*
  call void @PyObject_GC_Del(i8* %6)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mbuf_traverse(%struct._PyManagedBufferObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._PyManagedBufferObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct._PyManagedBufferObject* %self, %struct._PyManagedBufferObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %0, i32 0, i32 3
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %master1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 3
  %obj2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master1, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj2, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @mbuf_clear(%struct._PyManagedBufferObject* %self) #0 {
entry:
  %self.addr = alloca %struct._PyManagedBufferObject*, align 8
  store %struct._PyManagedBufferObject* %self, %struct._PyManagedBufferObject** %self.addr, align 8
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  call void @mbuf_release(%struct._PyManagedBufferObject* %0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMemoryView_FromMemory(i8* %mem, i64 %size, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mem.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %mv = alloca %struct._object*, align 8
  %readonly = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %mem, i8** %mem.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %struct._PyManagedBufferObject* @mbuf_alloc()
  store %struct._PyManagedBufferObject* %call, %struct._PyManagedBufferObject** %mbuf, align 8
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp = icmp eq %struct._PyManagedBufferObject* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %cmp1 = icmp eq i32 %1, 512
  %cond = select i1 %cmp1, i32 0, i32 1
  store i32 %cond, i32* %readonly, align 4
  %2 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %2, i32 0, i32 3
  %3 = load i8*, i8** %mem.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load i32, i32* %readonly, align 4
  %call2 = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %master, %struct._object* null, i8* %3, i64 %4, i32 %5, i32 284)
  %6 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %call3 = call %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %6, %struct.bufferinfo* null)
  store %struct._object* %call3, %struct._object** %mv, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %8 = bitcast %struct._PyManagedBufferObject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %mv, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._PyManagedBufferObject* @mbuf_alloc() #2 {
entry:
  %retval = alloca %struct._PyManagedBufferObject*, align 8
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_PyManagedBuffer_Type)
  %0 = bitcast %struct._object* %call to %struct._PyManagedBufferObject*
  store %struct._PyManagedBufferObject* %0, %struct._PyManagedBufferObject** %mbuf, align 8
  %1 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp = icmp eq %struct._PyManagedBufferObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._PyManagedBufferObject* null, %struct._PyManagedBufferObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %2, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %exports = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 2
  store i64 0, i64* %exports, align 8
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 3
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %6 = bitcast %struct._PyManagedBufferObject* %5 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %6, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %8 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %8, 1
  %cmp1 = icmp ne i64 %shr, -2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

if.end.3:                                         ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  %10 = load i64, i64* %gc_refs6, align 8
  %and = and i64 %10, 1
  %or = or i64 %and, -6
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_refs8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 2
  store i64 %or, i64* %gc_refs8, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.4
  %12 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0
  store %union._gc_head* %12, %union._gc_head** %gc_next, align 8
  %14 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc10 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 1
  %15 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_prev12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1
  store %union._gc_head* %15, %union._gc_head** %gc_prev12, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_prev14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1
  %19 = load %union._gc_head*, %union._gc_head** %gc_prev14, align 8
  %gc15 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_next16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 0
  store %union._gc_head* %17, %union._gc_head** %gc_next16, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc17 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1
  store %union._gc_head* %20, %union._gc_head** %gc_prev18, align 8
  br label %do.end.19

do.end.19:                                        ; preds = %do.end
  %22 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  store %struct._PyManagedBufferObject* %22, %struct._PyManagedBufferObject** %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.then
  %23 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %retval
  ret %struct._PyManagedBufferObject* %23
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %mbuf, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mbuf.addr = alloca %struct._PyManagedBufferObject*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %dest = alloca %struct.bufferinfo*, align 8
  store %struct._PyManagedBufferObject* %mbuf, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %1, i32 0, i32 3
  store %struct.bufferinfo* %master, %struct.bufferinfo** %src.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %cmp1 = icmp sgt i32 %3, 64
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 5
  %6 = load i32, i32* %ndim4, align 4
  %call = call %struct.PyMemoryViewObject* @memory_alloc(i32 %6)
  store %struct.PyMemoryViewObject* %call, %struct.PyMemoryViewObject** %mv, align 8
  %7 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp5 = icmp eq %struct.PyMemoryViewObject* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  store %struct.bufferinfo* %view, %struct.bufferinfo** %dest, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_shared_values(%struct.bufferinfo* %9, %struct.bufferinfo* %10)
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_shape_strides(%struct.bufferinfo* %11, %struct.bufferinfo* %12)
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_suboffsets(%struct.bufferinfo* %13, %struct.bufferinfo* %14)
  %15 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  call void @init_flags(%struct.PyMemoryViewObject* %15)
  %16 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %17 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %mbuf8 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %17, i32 0, i32 1
  store %struct._PyManagedBufferObject* %16, %struct._PyManagedBufferObject** %mbuf8, align 8
  %18 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %19 = bitcast %struct._PyManagedBufferObject* %18 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %exports = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %21, i32 0, i32 2
  %22 = load i64, i64* %exports, align 8
  %inc9 = add i64 %22, 1
  store i64 %inc9, i64* %exports, align 8
  %23 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %24 = bitcast %struct.PyMemoryViewObject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyMemoryView_FromBuffer(%struct.bufferinfo* %info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %info.addr = alloca %struct.bufferinfo*, align 8
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %mv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.bufferinfo* %info, %struct.bufferinfo** %info.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %info.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._PyManagedBufferObject* @mbuf_alloc()
  store %struct._PyManagedBufferObject* %call, %struct._PyManagedBufferObject** %mbuf, align 8
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp1 = icmp eq %struct._PyManagedBufferObject* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 3
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %info.addr, align 8
  %6 = bitcast %struct.bufferinfo* %master to i8*
  %7 = bitcast %struct.bufferinfo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 80, i32 8, i1 false)
  %8 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master4 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %8, i32 0, i32 3
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master4, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  %9 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %call5 = call %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %9, %struct.bufferinfo* null)
  store %struct._object* %call5, %struct._object** %mv, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %11 = bitcast %struct._PyManagedBufferObject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
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
  %18 = load %struct._object*, %struct._object** %mv, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyMemoryView_FromObject(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyMemoryView_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %3, %struct.PyMemoryViewObject** %mv, align 8
  %4 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %4, i32 0, i32 3
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %mbuf1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 1
  %7 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf1, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %7, i32 0, i32 1
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %mbuf6 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %10, i32 0, i32 1
  %11 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf6, align 8
  %12 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %12, i32 0, i32 5
  %call = call %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %11, %struct.bufferinfo* %view)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 18
  %15 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp8 = icmp ne %struct.PyBufferProcs* %15, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_as_buffer10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 18
  %18 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer10, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %18, i32 0, i32 0
  %19 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp11 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %land.lhs.true
  %20 = load %struct._object*, %struct._object** %v.addr, align 8
  %call13 = call %struct._object* @_PyManagedBuffer_FromObject(%struct._object* %20)
  %21 = bitcast %struct._object* %call13 to %struct._PyManagedBufferObject*
  store %struct._PyManagedBufferObject* %21, %struct._PyManagedBufferObject** %mbuf, align 8
  %22 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp14 = icmp eq %struct._PyManagedBufferObject* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %23 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %call17 = call %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %23, %struct.bufferinfo* null)
  store %struct._object* %call17, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %24 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %25 = bitcast %struct._PyManagedBufferObject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body
  br label %if.end.22

if.else.20:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %32 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  %33 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %34 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 1
  %36 = load i8*, i8** %tp_name, align 8
  %call26 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0), i8* %36)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %do.end, %if.then.15, %if.end, %if.then.5
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_PyManagedBuffer_FromObject(%struct._object* %base) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %base.addr = alloca %struct._object*, align 8
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %base, %struct._object** %base.addr, align 8
  %call = call %struct._PyManagedBufferObject* @mbuf_alloc()
  store %struct._PyManagedBufferObject* %call, %struct._PyManagedBufferObject** %mbuf, align 8
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp = icmp eq %struct._PyManagedBufferObject* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %base.addr, align 8
  %2 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %2, i32 0, i32 3
  %call1 = call i32 @PyObject_GetBuffer(%struct._object* %1, %struct.bufferinfo* %master, i32 284)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %master4 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 3
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master4, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %5 = bitcast %struct._PyManagedBufferObject* %4 to %struct._object*
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
  %12 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %13 = bitcast %struct._PyManagedBufferObject* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMemoryView_GetContiguous(%struct._object* %obj, i32 %buffertype, i8 signext %order) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %buffertype.addr = alloca i32, align 4
  %order.addr = alloca i8, align 1
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %ret = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i32 %buffertype, i32* %buffertype.addr, align 4
  store i8 %order, i8* %order.addr, align 1
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyMemoryView_FromObject(%struct._object* %0)
  %1 = bitcast %struct._object* %call to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %1, %struct.PyMemoryViewObject** %mv, align 8
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp = icmp eq %struct.PyMemoryViewObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %4 = load i32, i32* %buffertype.addr, align 4
  %cmp2 = icmp eq i32 %4, 512
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 4
  %6 = load i32, i32* %readonly, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %9 = bitcast %struct.PyMemoryViewObject* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %17 = load i8, i8* %order.addr, align 1
  %call8 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %16, i8 signext %17)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %18 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %19 = bitcast %struct.PyMemoryViewObject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %20 = load i32, i32* %buffertype.addr, align 4
  %cmp12 = icmp eq i32 %20, 512
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.end.11
  %21 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0))
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %22 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %23 = bitcast %struct.PyMemoryViewObject* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %_py_decref_tmp15, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %25, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %28(%struct._object* %29)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.11
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %31 = load i8, i8* %order.addr, align 1
  %call26 = call %struct._object* @memory_from_contiguous_copy(%struct.bufferinfo* %30, i8 signext %31)
  store %struct._object* %call26, %struct._object** %ret, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.25
  %32 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %33 = bitcast %struct.PyMemoryViewObject* %32 to %struct._object*
  store %struct._object* %33, %struct._object** %_py_decref_tmp28, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %35, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %38(%struct._object* %39)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %40 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.37, %do.end.24, %if.then.10, %do.end, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

declare i32 @PyBuffer_IsContiguous(%struct.bufferinfo*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_from_contiguous_copy(%struct.bufferinfo* %src, i8 signext %order) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %order.addr = alloca i8, align 1
  %mbuf = alloca %struct._PyManagedBufferObject*, align 8
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %bytes = alloca %struct._object*, align 8
  %dest = alloca %struct.bufferinfo*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i8 %order, i8* %order.addr, align 1
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %1)
  store %struct._object* %call, %struct._object** %bytes, align 8
  %2 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %bytes, align 8
  %call1 = call %struct._object* @_PyManagedBuffer_FromObject(%struct._object* %3)
  %4 = bitcast %struct._object* %call1 to %struct._PyManagedBufferObject*
  store %struct._PyManagedBufferObject* %4, %struct._PyManagedBufferObject** %mbuf, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %cmp5 = icmp eq %struct._PyManagedBufferObject* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %13 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 6
  %15 = load i8*, i8** %format, align 8
  %call8 = call i32 @mbuf_copy_format(%struct._PyManagedBufferObject* %13, i8* %15)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %16 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %17 = bitcast %struct._PyManagedBufferObject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_decref_tmp12, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %19, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %22(%struct._object* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.7
  %24 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 5
  %26 = load i32, i32* %ndim, align 4
  %call23 = call %struct._object* @mbuf_add_incomplete_view(%struct._PyManagedBufferObject* %24, %struct.bufferinfo* null, i32 %26)
  %27 = bitcast %struct._object* %call23 to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %27, %struct.PyMemoryViewObject** %mv, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.22
  %28 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %29 = bitcast %struct._PyManagedBufferObject* %28 to %struct._object*
  store %struct._object* %29, %struct._object** %_py_decref_tmp25, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %31, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %34(%struct._object* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %36 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp35 = icmp eq %struct.PyMemoryViewObject* %36, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.34
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %do.end.34
  %37 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %37, i32 0, i32 5
  store %struct.bufferinfo* %view, %struct.bufferinfo** %dest, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 3
  %39 = load i64, i64* %itemsize, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %itemsize38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 3
  store i64 %39, i64* %itemsize38, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim39 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 5
  %43 = load i32, i32* %ndim39, align 4
  %cmp40 = icmp slt i32 %41, %43
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 7
  %46 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %46, i64 %idxprom
  %47 = load i64, i64* %arrayidx, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %shape42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 7
  %50 = load i64*, i64** %shape42, align 8
  %arrayidx43 = getelementptr i64, i64* %50, i64 %idxprom41
  store i64 %47, i64* %arrayidx43, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i8, i8* %order.addr, align 1
  %conv = sext i8 %52 to i32
  %cmp44 = icmp eq i32 %conv, 67
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %53 = load i8, i8* %order.addr, align 1
  %conv46 = sext i8 %53 to i32
  %cmp47 = icmp eq i32 %conv46, 65
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %lor.lhs.false, %for.end
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  call void @init_strides_from_shape(%struct.bufferinfo* %54)
  br label %if.end.51

if.else.50:                                       ; preds = %lor.lhs.false
  %55 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  call void @init_fortran_strides_from_shape(%struct.bufferinfo* %55)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  %56 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %56, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %57 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  call void @init_flags(%struct.PyMemoryViewObject* %57)
  %58 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %59 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call52 = call i32 @copy_buffer(%struct.bufferinfo* %58, %struct.bufferinfo* %59)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %if.end.51
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %60 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %61 = bitcast %struct.PyMemoryViewObject* %60 to %struct._object*
  store %struct._object* %61, %struct._object** %_py_decref_tmp57, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %63, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.56
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.56
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %66(%struct._object* %67)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.51
  %68 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %69 = bitcast %struct.PyMemoryViewObject* %68 to %struct._object*
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.68, %do.end.67, %if.then.36, %do.end.21, %if.then.6, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define i32 @PyBuffer_ToContiguous(i8* %buf, %struct.bufferinfo* %src, i64 %len, i8 signext %order) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %len.addr = alloca i64, align 8
  %order.addr = alloca i8, align 1
  %fb = alloca %struct.Py_buffer_full*, align 8
  %ret = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8 %order, i8* %order.addr, align 1
  store %struct.Py_buffer_full* null, %struct.Py_buffer_full** %fb, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 2
  %2 = load i64, i64* %len1, align 8
  %cmp = icmp ne i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %5 = load i8, i8* %order.addr, align 1
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %4, i8 signext %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %buf3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf3, align 8
  %9 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %8, i64 %9, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 5
  %11 = load i32, i32* %ndim, align 4
  %mul = mul i32 3, %11
  %conv = sext i32 %mul to i64
  %mul5 = mul i64 %conv, 8
  %add = add i64 88, %mul5
  %call6 = call i8* @PyMem_Malloc(i64 %add)
  %12 = bitcast i8* %call6 to %struct.Py_buffer_full*
  store %struct.Py_buffer_full* %12, %struct.Py_buffer_full** %fb, align 8
  %13 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %cmp7 = icmp eq %struct.Py_buffer_full* %13, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %call10 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim12, align 4
  %16 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %16, i32 0, i32 0
  %ndim13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  store i32 %15, i32* %ndim13, align 4
  %17 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %array = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %array, i32 0, i32 0
  %18 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view14 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %18, i32 0, i32 0
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view14, i32 0, i32 7
  store i64* %arraydecay, i64** %shape, align 8
  %19 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %array15 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %19, i32 0, i32 1
  %arraydecay16 = getelementptr inbounds [1 x i64], [1 x i64]* %array15, i32 0, i32 0
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 5
  %21 = load i32, i32* %ndim17, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr i64, i64* %arraydecay16, i64 %idx.ext
  %22 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view18 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %22, i32 0, i32 0
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view18, i32 0, i32 8
  store i64* %add.ptr, i64** %strides, align 8
  %23 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %array19 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %23, i32 0, i32 1
  %arraydecay20 = getelementptr inbounds [1 x i64], [1 x i64]* %array19, i32 0, i32 0
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 5
  %25 = load i32, i32* %ndim21, align 4
  %mul22 = mul i32 2, %25
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr i64, i64* %arraydecay20, i64 %idx.ext23
  %26 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view25 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %26, i32 0, i32 0
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view25, i32 0, i32 9
  store i64* %add.ptr24, i64** %suboffsets, align 8
  %27 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view26 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %27, i32 0, i32 0
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_shared_values(%struct.bufferinfo* %view26, %struct.bufferinfo* %28)
  %29 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view27 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %29, i32 0, i32 0
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_shape_strides(%struct.bufferinfo* %view27, %struct.bufferinfo* %30)
  %31 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view28 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %31, i32 0, i32 0
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_suboffsets(%struct.bufferinfo* %view28, %struct.bufferinfo* %32)
  %33 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %view29 = getelementptr inbounds %struct.Py_buffer_full, %struct.Py_buffer_full* %33, i32 0, i32 0
  store %struct.bufferinfo* %view29, %struct.bufferinfo** %src.addr, align 8
  %34 = load i8*, i8** %buf.addr, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %36 = load i8, i8* %order.addr, align 1
  %call30 = call i32 @buffer_to_contiguous(i8* %34, %struct.bufferinfo* %35, i8 signext %36)
  store i32 %call30, i32* %ret, align 4
  %37 = load %struct.Py_buffer_full*, %struct.Py_buffer_full** %fb, align 8
  %38 = bitcast %struct.Py_buffer_full* %37 to i8*
  call void @PyMem_Free(i8* %38)
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.2, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @init_shared_values(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #2 {
entry:
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %obj1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 1
  store %struct._object* %1, %struct._object** %obj1, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %buf2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 0
  store i8* %4, i8** %buf2, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2
  %7 = load i64, i64* %len, align 8
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 2
  store i64 %7, i64* %len3, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 3
  %10 = load i64, i64* %itemsize, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 3
  store i64 %10, i64* %itemsize4, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 4
  %13 = load i32, i32* %readonly, align 4
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %readonly5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 4
  store i32 %13, i32* %readonly5, align 4
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 6
  %16 = load i8*, i8** %format, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 6
  %18 = load i8*, i8** %format6, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 6
  store i8* %cond, i8** %format7, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %internal = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 10
  %21 = load i8*, i8** %internal, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %internal8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 10
  store i8* %21, i8** %internal8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_shape_strides(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  store i64* null, i64** %shape, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  br label %if.end.43

if.end:                                           ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim1, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 7
  %7 = load i64*, i64** %shape4, align 8
  %tobool = icmp ne i64* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 7
  %9 = load i64*, i64** %shape5, align 8
  %arrayidx = getelementptr i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 3
  %14 = load i64, i64* %itemsize, align 8
  %div = sdiv i64 %12, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %div, %cond.false ]
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 7
  %16 = load i64*, i64** %shape6, align 8
  %arrayidx7 = getelementptr i64, i64* %16, i64 0
  store i64 %cond, i64* %arrayidx7, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 8
  %18 = load i64*, i64** %strides8, align 8
  %tobool9 = icmp ne i64* %18, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.end
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 8
  %20 = load i64*, i64** %strides11, align 8
  %arrayidx12 = getelementptr i64, i64* %20, i64 0
  %21 = load i64, i64* %arrayidx12, align 8
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 3
  %23 = load i64, i64* %itemsize14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.10
  %cond16 = phi i64 [ %21, %cond.true.10 ], [ %23, %cond.false.13 ]
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 8
  %25 = load i64*, i64** %strides17, align 8
  %arrayidx18 = getelementptr i64, i64* %25, i64 0
  store i64 %cond16, i64* %arrayidx18, align 8
  br label %if.end.43

if.end.19:                                        ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 5
  %28 = load i32, i32* %ndim20, align 4
  %conv = sext i32 %28 to i64
  %cmp21 = icmp slt i64 %26, %conv
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %i, align 8
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 7
  %31 = load i64*, i64** %shape23, align 8
  %arrayidx24 = getelementptr i64, i64* %31, i64 %29
  %32 = load i64, i64* %arrayidx24, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 7
  %35 = load i64*, i64** %shape25, align 8
  %arrayidx26 = getelementptr i64, i64* %35, i64 %33
  store i64 %32, i64* %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 8
  %38 = load i64*, i64** %strides27, align 8
  %tobool28 = icmp ne i64* %38, null
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %if.then.29
  %39 = load i64, i64* %i, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim31 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 5
  %41 = load i32, i32* %ndim31, align 4
  %conv32 = sext i32 %41 to i64
  %cmp33 = icmp slt i64 %39, %conv32
  br i1 %cmp33, label %for.body.35, label %for.end.42

for.body.35:                                      ; preds = %for.cond.30
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides36 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %43, i32 0, i32 8
  %44 = load i64*, i64** %strides36, align 8
  %arrayidx37 = getelementptr i64, i64* %44, i64 %42
  %45 = load i64, i64* %arrayidx37, align 8
  %46 = load i64, i64* %i, align 8
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 8
  %48 = load i64*, i64** %strides38, align 8
  %arrayidx39 = getelementptr i64, i64* %48, i64 %46
  store i64 %45, i64* %arrayidx39, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %49 = load i64, i64* %i, align 8
  %inc41 = add i64 %49, 1
  store i64 %inc41, i64* %i, align 8
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  br label %if.end.43

if.else:                                          ; preds = %for.end
  %50 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  call void @init_strides_from_shape(%struct.bufferinfo* %50)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then, %cond.end.15, %if.else, %for.end.42
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @init_suboffsets(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #2 {
entry:
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 9
  %1 = load i64*, i64** %suboffsets, align 8
  %cmp = icmp eq i64* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 9
  store i64* null, i64** %suboffsets1, align 8
  br label %for.end

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim, align 4
  %conv = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %3, %conv
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 9
  %8 = load i64*, i64** %suboffsets4, align 8
  %arrayidx = getelementptr i64, i64* %8, i64 %6
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 9
  %12 = load i64*, i64** %suboffsets5, align 8
  %arrayidx6 = getelementptr i64, i64* %12, i64 %10
  store i64 %9, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @buffer_to_contiguous(i8* %mem, %struct.bufferinfo* %src, i8 signext %order) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca i8*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %order.addr = alloca i8, align 1
  %dest = alloca %struct.bufferinfo, align 8
  %strides = alloca i64*, align 8
  %ret = alloca i32, align 4
  store i8* %mem, i8** %mem.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i8 %order, i8* %order.addr, align 1
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %2 = bitcast i8* %call to i64*
  store i64* %2, i64** %strides, align 8
  %3 = load i64*, i64** %strides, align 8
  %cmp = icmp eq i64* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %5 = bitcast %struct.bufferinfo* %dest to i8*
  %6 = bitcast %struct.bufferinfo* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 80, i32 8, i1 false)
  %7 = load i8*, i8** %mem.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 0
  store i8* %7, i8** %buf, align 8
  %8 = load i64*, i64** %strides, align 8
  %strides3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  store i64* %8, i64** %strides3, align 8
  %9 = load i8, i8* %order.addr, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 67
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i8, i8* %order.addr, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 65
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  call void @init_strides_from_shape(%struct.bufferinfo* %dest)
  br label %if.end.11

if.else:                                          ; preds = %lor.lhs.false
  call void @init_fortran_strides_from_shape(%struct.bufferinfo* %dest)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call12 = call i32 @copy_buffer(%struct.bufferinfo* %dest, %struct.bufferinfo* %11)
  store i32 %call12, i32* %ret, align 4
  %12 = load i64*, i64** %strides, align 8
  %13 = bitcast i64* %12 to i8*
  call void @PyMem_Free(i8* %13)
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @memory_dealloc(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %1 = bitcast %struct.PyMemoryViewObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call = call i32 @_memory_release(%struct.PyMemoryViewObject* %14)
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %15, i32 0, i32 1
  %16 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %17 = bitcast %struct._PyManagedBufferObject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %18, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %do.body.17
  %19 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf18 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %19, i32 0, i32 1
  store %struct._PyManagedBufferObject* null, %struct._PyManagedBufferObject** %mbuf18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.19
  br label %if.end

if.else:                                          ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %do.end.22

do.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.17
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %27 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %27, i32 0, i32 7
  %28 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp25 = icmp ne %struct._object* %28, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end.24
  %29 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %30 = bitcast %struct.PyMemoryViewObject* %29 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %30)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %do.end.24
  %31 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %32 = bitcast %struct.PyMemoryViewObject* %31 to i8*
  call void @PyObject_GC_Del(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_repr(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), %struct.PyMemoryViewObject* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call1 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %struct.PyMemoryViewObject* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i64 @memory_hash(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %mem = alloca i8*, align 8
  %ret = alloca i64, align 8
  %fmt = alloca i8, align 1
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %hash = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 2
  %1 = load i64, i64* %hash, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end.55

if.then:                                          ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %mem, align 8
  %5 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %5, i32 0, i32 3
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %7, i32 0, i32 1
  %8 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %8, i32 0, i32 1
  %9 = load i32, i32* %flags2, align 4
  %and3 = and i32 %9, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 4
  %12 = load i32, i32* %readonly, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 6
  %15 = load i8*, i8** %format, align 8
  %call = call i64 @get_native_fmtchar(i8* %fmt, i8* %15)
  store i64 %call, i64* %ret, align 8
  %16 = load i64, i64* %ret, align 8
  %cmp9 = icmp slt i64 %16, 0
  br i1 %cmp9, label %if.then.21, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %17 = load i8, i8* %fmt, align 1
  %conv = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv, 98
  br i1 %cmp11, label %if.end.22, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %18 = load i8, i8* %fmt, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 66
  br i1 %cmp15, label %if.end.22, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %19 = load i8, i8* %fmt, align 1
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 99
  br i1 %cmp19, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false.17, %if.end.8
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false.10
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %obj, align 8
  %cmp23 = icmp ne %struct._object* %22, null
  br i1 %cmp23, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.22
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj25 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 1
  %24 = load %struct._object*, %struct._object** %obj25, align 8
  %call26 = call i64 @PyObject_Hash(%struct._object* %24)
  %cmp27 = icmp eq i64 %call26, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true
  store i64 -1, i64* %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true, %if.end.22
  %25 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags31 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %25, i32 0, i32 3
  %26 = load i32, i32* %flags31, align 4
  %and32 = and i32 %26, 10
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.46, label %if.then.34

if.then.34:                                       ; preds = %if.end.30
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 2
  %28 = load i64, i64* %len, align 8
  %call35 = call i8* @PyMem_Malloc(i64 %28)
  store i8* %call35, i8** %mem, align 8
  %29 = load i8*, i8** %mem, align 8
  %cmp36 = icmp eq i8* %29, null
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.34
  %call39 = call %struct._object* @PyErr_NoMemory()
  store i64 -1, i64* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.34
  %30 = load i8*, i8** %mem, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call41 = call i32 @buffer_to_contiguous(i8* %30, %struct.bufferinfo* %31, i8 signext 67)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  %32 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %32)
  store i64 -1, i64* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.30
  %33 = load i8*, i8** %mem, align 8
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %len47 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 2
  %35 = load i64, i64* %len47, align 8
  %call48 = call i64 @_Py_HashBytes(i8* %33, i64 %35)
  %36 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %hash49 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %36, i32 0, i32 2
  store i64 %call48, i64* %hash49, align 8
  %37 = load i8*, i8** %mem, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf50 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf50, align 8
  %cmp51 = icmp ne i8* %37, %39
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  %40 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %40)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.46
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %entry
  %41 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %hash56 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %41, i32 0, i32 2
  %42 = load i64, i64* %hash56, align 8
  store i64 %42, i64* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.44, %if.then.38, %if.then.29, %if.then.21, %if.then.7, %if.then.5
  %43 = load i64, i64* %retval
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @memory_traverse(%struct.PyMemoryViewObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 1
  %1 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %tobool = icmp ne %struct._PyManagedBufferObject* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf1, align 8
  %5 = bitcast %struct._PyManagedBufferObject* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @memory_clear(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call = call i32 @_memory_release(%struct.PyMemoryViewObject* %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 1
  %2 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %3 = bitcast %struct._PyManagedBufferObject* %2 to %struct._object*
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %5, i32 0, i32 1
  store %struct._PyManagedBufferObject* null, %struct._PyManagedBufferObject** %mbuf1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
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
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %wbuf = alloca %struct.bufferinfo, align 8
  %vv = alloca %struct.bufferinfo*, align 8
  %ww = alloca %struct.bufferinfo*, align 8
  %unpack_v = alloca %struct.unpacker*, align 8
  %unpack_w = alloca %struct.unpacker*, align 8
  %vfmt = alloca i8, align 1
  %wfmt = alloca i8, align 1
  %equal = alloca i32, align 4
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store %struct.bufferinfo* null, %struct.bufferinfo** %ww, align 8
  store %struct.unpacker* null, %struct.unpacker** %unpack_v, align 8
  store %struct.unpacker* null, %struct.unpacker** %unpack_w, align 8
  store i32 -2, i32* %equal, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %result

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyMemoryViewObject*
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 3
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyMemoryViewObject*
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 1
  %7 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %7, i32 0, i32 1
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp6 = icmp eq %struct._object* %9, %10
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %equal, align 4
  br label %result

if.end.7:                                         ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyMemoryViewObject*
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %12, i32 0, i32 5
  store %struct.bufferinfo* %view, %struct.bufferinfo** %vv, align 8
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %14, @PyMemoryView_Type
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyMemoryViewObject*
  %flags11 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %16, i32 0, i32 3
  %17 = load i32, i32* %flags11, align 4
  %and12 = and i32 %17, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.then.10
  %18 = load %struct._object*, %struct._object** %w.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyMemoryViewObject*
  %mbuf15 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %19, i32 0, i32 1
  %20 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf15, align 8
  %flags16 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %20, i32 0, i32 1
  %21 = load i32, i32* %flags16, align 4
  %and17 = and i32 %21, 1
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %lor.lhs.false.14, %if.then.10
  %22 = load %struct._object*, %struct._object** %v.addr, align 8
  %23 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp20 = icmp eq %struct._object* %22, %23
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %equal, align 4
  br label %result

if.end.22:                                        ; preds = %lor.lhs.false.14
  %24 = load %struct._object*, %struct._object** %w.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyMemoryViewObject*
  %view23 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %25, i32 0, i32 5
  store %struct.bufferinfo* %view23, %struct.bufferinfo** %ww, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.7
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call i32 @PyObject_GetBuffer(%struct._object* %26, %struct.bufferinfo* %wbuf, i32 284)
  %cmp24 = icmp slt i32 %call, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  call void @PyErr_Clear()
  br label %result

if.end.27:                                        ; preds = %if.else
  store %struct.bufferinfo* %wbuf, %struct.bufferinfo** %ww, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.22
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %call29 = call i32 @equiv_shape(%struct.bufferinfo* %27, %struct.bufferinfo* %28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  call void @PyErr_Clear()
  store i32 0, i32* %equal, align 4
  br label %result

if.end.32:                                        ; preds = %if.end.28
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 6
  %30 = load i8*, i8** %format, align 8
  %call33 = call i64 @get_native_fmtchar(i8* %vfmt, i8* %30)
  %cmp34 = icmp slt i64 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i8 95, i8* %vfmt, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.32
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %format38 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 6
  %32 = load i8*, i8** %format38, align 8
  %call39 = call i64 @get_native_fmtchar(i8* %wfmt, i8* %32)
  %cmp40 = icmp slt i64 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.37
  store i8 95, i8* %wfmt, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.37
  %33 = load i8, i8* %vfmt, align 1
  %conv44 = sext i8 %33 to i32
  %cmp45 = icmp eq i32 %conv44, 95
  br i1 %cmp45, label %if.then.56, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.43
  %34 = load i8, i8* %wfmt, align 1
  %conv48 = sext i8 %34 to i32
  %cmp49 = icmp eq i32 %conv48, 95
  br i1 %cmp49, label %if.then.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %35 = load i8, i8* %vfmt, align 1
  %conv52 = sext i8 %35 to i32
  %36 = load i8, i8* %wfmt, align 1
  %conv53 = sext i8 %36 to i32
  %cmp54 = icmp ne i32 %conv52, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.47, %if.end.43
  store i8 95, i8* %vfmt, align 1
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %format57 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 6
  %38 = load i8*, i8** %format57, align 8
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 3
  %40 = load i64, i64* %itemsize, align 8
  %call58 = call %struct.unpacker* @struct_get_unpacker(i8* %38, i64 %40)
  store %struct.unpacker* %call58, %struct.unpacker** %unpack_v, align 8
  %41 = load %struct.unpacker*, %struct.unpacker** %unpack_v, align 8
  %cmp59 = icmp eq %struct.unpacker* %41, null
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.56
  %call62 = call i32 @fix_struct_error_int()
  store i32 %call62, i32* %equal, align 4
  br label %result

if.end.63:                                        ; preds = %if.then.56
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %format64 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 6
  %43 = load i8*, i8** %format64, align 8
  %44 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %itemsize65 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %44, i32 0, i32 3
  %45 = load i64, i64* %itemsize65, align 8
  %call66 = call %struct.unpacker* @struct_get_unpacker(i8* %43, i64 %45)
  store %struct.unpacker* %call66, %struct.unpacker** %unpack_w, align 8
  %46 = load %struct.unpacker*, %struct.unpacker** %unpack_w, align 8
  %cmp67 = icmp eq %struct.unpacker* %46, null
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.63
  %call70 = call i32 @fix_struct_error_int()
  store i32 %call70, i32* %equal, align 4
  br label %result

if.end.71:                                        ; preds = %if.end.63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %lor.lhs.false.51
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 5
  %48 = load i32, i32* %ndim, align 4
  %cmp73 = icmp eq i32 %48, 0
  br i1 %cmp73, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.72
  %49 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %49, i32 0, i32 0
  %50 = load i8*, i8** %buf, align 8
  %51 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %buf76 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %51, i32 0, i32 0
  %52 = load i8*, i8** %buf76, align 8
  %53 = load i8, i8* %vfmt, align 1
  %54 = load %struct.unpacker*, %struct.unpacker** %unpack_v, align 8
  %55 = load %struct.unpacker*, %struct.unpacker** %unpack_w, align 8
  %call77 = call i32 @unpack_cmp(i8* %50, i8* %52, i8 signext %53, %struct.unpacker* %54, %struct.unpacker* %55)
  store i32 %call77, i32* %equal, align 4
  br label %if.end.100

if.else.78:                                       ; preds = %if.end.72
  %56 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %ndim79 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %56, i32 0, i32 5
  %57 = load i32, i32* %ndim79, align 4
  %cmp80 = icmp eq i32 %57, 1
  br i1 %cmp80, label %if.then.82, label %if.else.88

if.then.82:                                       ; preds = %if.else.78
  %58 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %buf83 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %58, i32 0, i32 0
  %59 = load i8*, i8** %buf83, align 8
  %60 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %buf84 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %60, i32 0, i32 0
  %61 = load i8*, i8** %buf84, align 8
  %62 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %62, i32 0, i32 7
  %63 = load i64*, i64** %shape, align 8
  %64 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %64, i32 0, i32 8
  %65 = load i64*, i64** %strides, align 8
  %66 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %66, i32 0, i32 9
  %67 = load i64*, i64** %suboffsets, align 8
  %68 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %strides85 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %68, i32 0, i32 8
  %69 = load i64*, i64** %strides85, align 8
  %70 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %suboffsets86 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %70, i32 0, i32 9
  %71 = load i64*, i64** %suboffsets86, align 8
  %72 = load i8, i8* %vfmt, align 1
  %73 = load %struct.unpacker*, %struct.unpacker** %unpack_v, align 8
  %74 = load %struct.unpacker*, %struct.unpacker** %unpack_w, align 8
  %call87 = call i32 @cmp_base(i8* %59, i8* %61, i64* %63, i64* %65, i64* %67, i64* %69, i64* %71, i8 signext %72, %struct.unpacker* %73, %struct.unpacker* %74)
  store i32 %call87, i32* %equal, align 4
  br label %if.end.99

if.else.88:                                       ; preds = %if.else.78
  %75 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %buf89 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %75, i32 0, i32 0
  %76 = load i8*, i8** %buf89, align 8
  %77 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %buf90 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %77, i32 0, i32 0
  %78 = load i8*, i8** %buf90, align 8
  %79 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %ndim91 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %79, i32 0, i32 5
  %80 = load i32, i32* %ndim91, align 4
  %conv92 = sext i32 %80 to i64
  %81 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %shape93 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %81, i32 0, i32 7
  %82 = load i64*, i64** %shape93, align 8
  %83 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %strides94 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %83, i32 0, i32 8
  %84 = load i64*, i64** %strides94, align 8
  %85 = load %struct.bufferinfo*, %struct.bufferinfo** %vv, align 8
  %suboffsets95 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %85, i32 0, i32 9
  %86 = load i64*, i64** %suboffsets95, align 8
  %87 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %strides96 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %87, i32 0, i32 8
  %88 = load i64*, i64** %strides96, align 8
  %89 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %suboffsets97 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %89, i32 0, i32 9
  %90 = load i64*, i64** %suboffsets97, align 8
  %91 = load i8, i8* %vfmt, align 1
  %92 = load %struct.unpacker*, %struct.unpacker** %unpack_v, align 8
  %93 = load %struct.unpacker*, %struct.unpacker** %unpack_w, align 8
  %call98 = call i32 @cmp_rec(i8* %76, i8* %78, i64 %conv92, i64* %82, i64* %84, i64* %86, i64* %88, i64* %90, i8 signext %91, %struct.unpacker* %92, %struct.unpacker* %93)
  store i32 %call98, i32* %equal, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.88, %if.then.82
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.75
  br label %result

result:                                           ; preds = %if.end.100, %if.then.69, %if.then.61, %if.then.31, %if.then.26, %if.then.19, %if.then.5, %if.then
  %94 = load i32, i32* %equal, align 4
  %cmp101 = icmp slt i32 %94, 0
  br i1 %cmp101, label %if.then.103, label %if.else.109

if.then.103:                                      ; preds = %result
  %95 = load i32, i32* %equal, align 4
  %cmp104 = icmp eq i32 %95, -2
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.then.103
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %res, align 8
  br label %if.end.108

if.else.107:                                      ; preds = %if.then.103
  store %struct._object* null, %struct._object** %res, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.106
  br label %if.end.122

if.else.109:                                      ; preds = %result
  %96 = load i32, i32* %equal, align 4
  %tobool110 = icmp ne i32 %96, 0
  br i1 %tobool110, label %land.lhs.true.111, label %lor.lhs.false.114

land.lhs.true.111:                                ; preds = %if.else.109
  %97 = load i32, i32* %op.addr, align 4
  %cmp112 = icmp eq i32 %97, 2
  br i1 %cmp112, label %if.then.119, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %land.lhs.true.111, %if.else.109
  %98 = load i32, i32* %equal, align 4
  %tobool115 = icmp ne i32 %98, 0
  br i1 %tobool115, label %if.else.120, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %lor.lhs.false.114
  %99 = load i32, i32* %op.addr, align 4
  %cmp117 = icmp eq i32 %99, 3
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %land.lhs.true.116, %land.lhs.true.111
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.121

if.else.120:                                      ; preds = %land.lhs.true.116, %lor.lhs.false.114
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.108
  %100 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  %cmp123 = icmp eq %struct.bufferinfo* %100, %wbuf
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.122
  %101 = load %struct.bufferinfo*, %struct.bufferinfo** %ww, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %101)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.122
  %102 = load %struct.unpacker*, %struct.unpacker** %unpack_v, align 8
  call void @unpacker_free(%struct.unpacker* %102)
  %103 = load %struct.unpacker*, %struct.unpacker** %unpack_w, align 8
  call void @unpacker_free(%struct.unpacker* %103)
  br label %do.body

do.body:                                          ; preds = %if.end.126
  %104 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %104, %struct._object** %_py_xincref_tmp, align 8
  %105 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp127 = icmp ne %struct._object* %105, null
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %do.body
  %106 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0
  %107 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %107, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.130
  %108 = load %struct._object*, %struct._object** %res, align 8
  ret %struct._object* %108
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_new(%struct._typeobject* %subtype, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %subtype.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct._typeobject* %subtype, %struct._typeobject** %subtype.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @memory_new.kwlist, i32 0, i32 0), %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %call1 = call %struct._object* @PyMemoryView_FromObject(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal void @mbuf_release(%struct._PyManagedBufferObject* %self) #0 {
entry:
  %self.addr = alloca %struct._PyManagedBufferObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._PyManagedBufferObject* %self, %struct._PyManagedBufferObject** %self.addr, align 8
  %0 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %0, i32 0, i32 1
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %2, i32 0, i32 1
  %3 = load i32, i32* %flags1, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* %flags1, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %5 = bitcast %struct._PyManagedBufferObject* %4 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %5, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %7 = load i64, i64* %gc_refs, align 8
  %and3 = and i64 %7, 1
  %or4 = or i64 %and3, -4
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_refs6 = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 2
  store i64 %or4, i64* %gc_refs6, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.2
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 0
  %10 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc9 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_next10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 0
  store %union._gc_head* %10, %union._gc_head** %gc_next10, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_prev12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 1
  %14 = load %union._gc_head*, %union._gc_head** %gc_prev12, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 0
  %16 = load %union._gc_head*, %union._gc_head** %gc_next14, align 8
  %gc15 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  store %union._gc_head* %14, %union._gc_head** %gc_prev16, align 8
  %17 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_next18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next18, align 8
  br label %do.end.19

do.end.19:                                        ; preds = %do.end
  %18 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %self.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %18, i32 0, i32 3
  call void @PyBuffer_Release(%struct.bufferinfo* %master)
  br label %return

return:                                           ; preds = %do.end.19, %if.then
  ret void
}

declare void @PyObject_GC_Del(i8*) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.PyMemoryViewObject* @memory_alloc(i32 %ndim) #2 {
entry:
  %retval = alloca %struct.PyMemoryViewObject*, align 8
  %ndim.addr = alloca i32, align 4
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store i32 %ndim, i32* %ndim.addr, align 4
  %0 = load i32, i32* %ndim.addr, align 4
  %mul = mul i32 3, %0
  %conv = sext i32 %mul to i64
  %call = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyMemoryView_Type, i64 %conv)
  %1 = bitcast %struct.PyVarObject* %call to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %1, %struct.PyMemoryViewObject** %mv, align 8
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp = icmp eq %struct.PyMemoryViewObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.PyMemoryViewObject* null, %struct.PyMemoryViewObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  store %struct._PyManagedBufferObject* null, %struct._PyManagedBufferObject** %mbuf, align 8
  %4 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %hash = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %4, i32 0, i32 2
  store i64 -1, i64* %hash, align 8
  %5 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %5, i32 0, i32 3
  store i32 0, i32* %flags, align 4
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %exports = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 4
  store i64 0, i64* %exports, align 8
  %7 = load i32, i32* %ndim.addr, align 4
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  %ndim2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  store i32 %7, i32* %ndim2, align 4
  %9 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %ob_array = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %9, i32 0, i32 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %ob_array, i32 0, i32 0
  %10 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view3 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %10, i32 0, i32 5
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view3, i32 0, i32 7
  store i64* %arraydecay, i64** %shape, align 8
  %11 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %ob_array4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %11, i32 0, i32 8
  %arraydecay5 = getelementptr inbounds [1 x i64], [1 x i64]* %ob_array4, i32 0, i32 0
  %12 = load i32, i32* %ndim.addr, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr i64, i64* %arraydecay5, i64 %idx.ext
  %13 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view6 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %13, i32 0, i32 5
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view6, i32 0, i32 8
  store i64* %add.ptr, i64** %strides, align 8
  %14 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %ob_array7 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %14, i32 0, i32 8
  %arraydecay8 = getelementptr inbounds [1 x i64], [1 x i64]* %ob_array7, i32 0, i32 0
  %15 = load i32, i32* %ndim.addr, align 4
  %mul9 = mul i32 2, %15
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr i64, i64* %arraydecay8, i64 %idx.ext10
  %16 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view12 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %16, i32 0, i32 5
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view12, i32 0, i32 9
  store i64* %add.ptr11, i64** %suboffsets, align 8
  %17 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %weakreflist = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %17, i32 0, i32 7
  store %struct._object* null, %struct._object** %weakreflist, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %19 = bitcast %struct.PyMemoryViewObject* %18 to %union._gc_head*
  %add.ptr13 = getelementptr %union._gc_head, %union._gc_head* %19, i64 -1
  store %union._gc_head* %add.ptr13, %union._gc_head** %g, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %20 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %21 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %21, 1
  %cmp14 = icmp ne i64 %shr, -2
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

if.end.17:                                        ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_refs20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 2
  %23 = load i64, i64* %gc_refs20, align 8
  %and = and i64 %23, 1
  %or = or i64 %and, -6
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_refs22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 2
  store i64 %or, i64* %gc_refs22, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.18
  %25 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %26 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc23 = bitcast %union._gc_head* %26 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 0
  store %union._gc_head* %25, %union._gc_head** %gc_next, align 8
  %27 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc24 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc24, i32 0, i32 1
  %28 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc25 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_prev26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 1
  store %union._gc_head* %28, %union._gc_head** %gc_prev26, align 8
  %30 = load %union._gc_head*, %union._gc_head** %g, align 8
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc27 = bitcast %union._gc_head* %31 to %struct.anon*
  %gc_prev28 = getelementptr inbounds %struct.anon, %struct.anon* %gc27, i32 0, i32 1
  %32 = load %union._gc_head*, %union._gc_head** %gc_prev28, align 8
  %gc29 = bitcast %union._gc_head* %32 to %struct.anon*
  %gc_next30 = getelementptr inbounds %struct.anon, %struct.anon* %gc29, i32 0, i32 0
  store %union._gc_head* %30, %union._gc_head** %gc_next30, align 8
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %34 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc31 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_prev32 = getelementptr inbounds %struct.anon, %struct.anon* %gc31, i32 0, i32 1
  store %union._gc_head* %33, %union._gc_head** %gc_prev32, align 8
  br label %do.end.33

do.end.33:                                        ; preds = %do.end
  %35 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  store %struct.PyMemoryViewObject* %35, %struct.PyMemoryViewObject** %retval
  br label %return

return:                                           ; preds = %do.end.33, %if.then
  %36 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %retval
  ret %struct.PyMemoryViewObject* %36
}

; Function Attrs: nounwind uwtable
define internal void @init_flags(%struct.PyMemoryViewObject* %mv) #0 {
entry:
  %mv.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %flags = alloca i32, align 4
  store %struct.PyMemoryViewObject* %mv, %struct.PyMemoryViewObject** %mv.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  store i32 0, i32* %flags, align 4
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 5
  %2 = load i32, i32* %ndim, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 14
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 7
  %5 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8
  %cmp = icmp eq i64 %6, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.2
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 8
  %8 = load i64*, i64** %strides, align 8
  %arrayidx3 = getelementptr i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx3, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 3
  %11 = load i64, i64* %itemsize, align 8
  %cmp4 = icmp eq i64 %9, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.2
  %12 = load i32, i32* %flags, align 4
  %or5 = or i32 %12, 6
  store i32 %or5, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %13, i8 signext 67)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %sw.default
  %14 = load i32, i32* %flags, align 4
  %or7 = or i32 %14, 2
  store i32 %or7, i32* %flags, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %sw.default
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call9 = call i32 @PyBuffer_IsContiguous(%struct.bufferinfo* %15, i8 signext 70)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %16 = load i32, i32* %flags, align 4
  %or12 = or i32 %16, 4
  store i32 %or12, i32* %flags, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.13, %if.end, %sw.bb
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 9
  %18 = load i64*, i64** %suboffsets, align 8
  %tobool14 = icmp ne i64* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %sw.epilog
  %19 = load i32, i32* %flags, align 4
  %or16 = or i32 %19, 16
  store i32 %or16, i32* %flags, align 4
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, -7
  store i32 %and, i32* %flags, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %sw.epilog
  %21 = load i32, i32* %flags, align 4
  %22 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %flags18 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %22, i32 0, i32 3
  store i32 %21, i32* %flags18, align 4
  ret void
}

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @mbuf_copy_format(%struct._PyManagedBufferObject* %mbuf, i8* %fmt) #0 {
entry:
  %retval = alloca i32, align 4
  %mbuf.addr = alloca %struct._PyManagedBufferObject*, align 8
  %fmt.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store %struct._PyManagedBufferObject* %mbuf, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add = add i64 %call, 1
  %call1 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call1, i8** %cp, align 8
  %2 = load i8*, i8** %cp, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8*, i8** %fmt.addr, align 8
  %call5 = call i8* @strcpy(i8* %3, i8* %4) #3
  %5 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %5, i32 0, i32 3
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %master, i32 0, i32 6
  store i8* %call5, i8** %format, align 8
  %6 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %flags = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %6, i32 0, i32 1
  %7 = load i32, i32* %flags, align 4
  %or = or i32 %7, 2
  store i32 %or, i32* %flags, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbuf_add_incomplete_view(%struct._PyManagedBufferObject* %mbuf, %struct.bufferinfo* %src, i32 %ndim) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mbuf.addr = alloca %struct._PyManagedBufferObject*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %ndim.addr = alloca i32, align 4
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %dest = alloca %struct.bufferinfo*, align 8
  store %struct._PyManagedBufferObject* %mbuf, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i32 %ndim, i32* %ndim.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %cmp = icmp eq %struct.bufferinfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %master = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %1, i32 0, i32 3
  store %struct.bufferinfo* %master, %struct.bufferinfo** %src.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ndim.addr, align 4
  %call = call %struct.PyMemoryViewObject* @memory_alloc(i32 %2)
  store %struct.PyMemoryViewObject* %call, %struct.PyMemoryViewObject** %mv, align 8
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp1 = icmp eq %struct.PyMemoryViewObject* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %4, i32 0, i32 5
  store %struct.bufferinfo* %view, %struct.bufferinfo** %dest, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %dest, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  call void @init_shared_values(%struct.bufferinfo* %5, %struct.bufferinfo* %6)
  %7 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %mbuf4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 1
  store %struct._PyManagedBufferObject* %7, %struct._PyManagedBufferObject** %mbuf4, align 8
  %9 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %10 = bitcast %struct._PyManagedBufferObject* %9 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf.addr, align 8
  %exports = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %12, i32 0, i32 2
  %13 = load i64, i64* %exports, align 8
  %inc5 = add i64 %13, 1
  store i64 %inc5, i64* %exports, align 8
  %14 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %15 = bitcast %struct.PyMemoryViewObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @init_strides_from_shape(%struct.bufferinfo* %view) #2 {
entry:
  %view.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 3
  %1 = load i64, i64* %itemsize, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %sub = sub i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 8
  %5 = load i64*, i64** %strides, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %idxprom
  store i64 %1, i64* %arrayidx, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 5
  %7 = load i32, i32* %ndim1, align 4
  %sub2 = sub i32 %7, 2
  %conv = sext i32 %sub2 to i64
  store i64 %conv, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %i, align 8
  %cmp = icmp sge i64 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %add = add i64 %9, 1
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 8
  %11 = load i64*, i64** %strides4, align 8
  %arrayidx5 = getelementptr i64, i64* %11, i64 %add
  %12 = load i64, i64* %arrayidx5, align 8
  %13 = load i64, i64* %i, align 8
  %add6 = add i64 %13, 1
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 7
  %15 = load i64*, i64** %shape, align 8
  %arrayidx7 = getelementptr i64, i64* %15, i64 %add6
  %16 = load i64, i64* %arrayidx7, align 8
  %mul = mul i64 %12, %16
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides8 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 8
  %19 = load i64*, i64** %strides8, align 8
  %arrayidx9 = getelementptr i64, i64* %19, i64 %17
  store i64 %mul, i64* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @init_fortran_strides_from_shape(%struct.bufferinfo* %view) #2 {
entry:
  %view.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 3
  %1 = load i64, i64* %itemsize, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 8
  %3 = load i64*, i64** %strides, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 0
  store i64 %1, i64* %arrayidx, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 5
  %6 = load i32, i32* %ndim, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %sub = sub i64 %7, 1
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 8
  %9 = load i64*, i64** %strides2, align 8
  %arrayidx3 = getelementptr i64, i64* %9, i64 %sub
  %10 = load i64, i64* %arrayidx3, align 8
  %11 = load i64, i64* %i, align 8
  %sub4 = sub i64 %11, 1
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 7
  %13 = load i64*, i64** %shape, align 8
  %arrayidx5 = getelementptr i64, i64* %13, i64 %sub4
  %14 = load i64, i64* %arrayidx5, align 8
  %mul = mul i64 %10, %14
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 8
  %17 = load i64*, i64** %strides6, align 8
  %arrayidx7 = getelementptr i64, i64* %17, i64 %15
  store i64 %mul, i64* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_buffer(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %mem = alloca i8*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i8* null, i8** %mem, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call = call i32 @equiv_structure(%struct.bufferinfo* %0, %struct.bufferinfo* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call1 = call i32 @last_dim_is_contiguous(%struct.bufferinfo* %2, %struct.bufferinfo* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 5
  %5 = load i32, i32* %ndim, align 4
  %sub = sub i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 7
  %7 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %7, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 3
  %10 = load i64, i64* %itemsize, align 8
  %mul = mul i64 %8, %10
  %call4 = call i8* @PyMem_Malloc(i64 %mul)
  store i8* %call4, i8** %mem, align 8
  %11 = load i8*, i8** %mem, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %call6 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 7
  %13 = load i64*, i64** %shape9, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim10, align 4
  %conv = sext i32 %15 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 3
  %17 = load i64, i64* %itemsize11, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 0
  %19 = load i8*, i8** %buf, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 8
  %21 = load i64*, i64** %strides, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 9
  %23 = load i64*, i64** %suboffsets, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 0
  %25 = load i8*, i8** %buf12, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 8
  %27 = load i64*, i64** %strides13, align 8
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets14 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 9
  %29 = load i64*, i64** %suboffsets14, align 8
  %30 = load i8*, i8** %mem, align 8
  call void @copy_rec(i64* %13, i64 %conv, i64 %17, i8* %19, i64* %21, i64* %23, i8* %25, i64* %27, i64* %29, i8* %30)
  %31 = load i8*, i8** %mem, align 8
  %tobool15 = icmp ne i8* %31, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.8
  %32 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %32)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.5, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @equiv_structure(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call = call i32 @equiv_format(%struct.bufferinfo* %0, %struct.bufferinfo* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call1 = call i32 @equiv_shape(%struct.bufferinfo* %2, %struct.bufferinfo* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @last_dim_is_contiguous(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #2 {
entry:
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 9
  %1 = load i64*, i64** %suboffsets, align 8
  %tobool = icmp ne i64* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true.2

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %sub = sub i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 9
  %5 = load i64*, i64** %suboffsets1, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %cmp = icmp sge i64 %6, 0
  br i1 %cmp, label %land.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true, %entry
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 9
  %8 = load i64*, i64** %suboffsets3, align 8
  %tobool4 = icmp ne i64* %8, null
  br i1 %tobool4, label %land.lhs.true.5, label %land.lhs.true.12

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 5
  %10 = load i32, i32* %ndim6, align 4
  %sub7 = sub i32 %10, 1
  %idxprom8 = sext i32 %sub7 to i64
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 9
  %12 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %12, i64 %idxprom8
  %13 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp sge i64 %13, 0
  br i1 %cmp11, label %land.end, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true.5, %land.lhs.true.2
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim13, align 4
  %sub14 = sub i32 %15, 1
  %idxprom15 = sext i32 %sub14 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 8
  %17 = load i64*, i64** %strides, align 8
  %arrayidx16 = getelementptr i64, i64* %17, i64 %idxprom15
  %18 = load i64, i64* %arrayidx16, align 8
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 3
  %20 = load i64, i64* %itemsize, align 8
  %cmp17 = icmp eq i64 %18, %20
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 5
  %22 = load i32, i32* %ndim18, align 4
  %sub19 = sub i32 %22, 1
  %idxprom20 = sext i32 %sub19 to i64
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 8
  %24 = load i64*, i64** %strides21, align 8
  %arrayidx22 = getelementptr i64, i64* %24, i64 %idxprom20
  %25 = load i64, i64* %arrayidx22, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 3
  %27 = load i64, i64* %itemsize23, align 8
  %cmp24 = icmp eq i64 %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.12, %land.lhs.true.5, %land.lhs.true
  %28 = phi i1 [ false, %land.lhs.true.12 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @copy_rec(i64* %shape, i64 %ndim, i64 %itemsize, i8* %dptr, i64* %dstrides, i64* %dsuboffsets, i8* %sptr, i64* %sstrides, i64* %ssuboffsets, i8* %mem) #0 {
entry:
  %shape.addr = alloca i64*, align 8
  %ndim.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %dptr.addr = alloca i8*, align 8
  %dstrides.addr = alloca i64*, align 8
  %dsuboffsets.addr = alloca i64*, align 8
  %sptr.addr = alloca i8*, align 8
  %sstrides.addr = alloca i64*, align 8
  %ssuboffsets.addr = alloca i64*, align 8
  %mem.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %xdptr = alloca i8*, align 8
  %xsptr = alloca i8*, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i8* %dptr, i8** %dptr.addr, align 8
  store i64* %dstrides, i64** %dstrides.addr, align 8
  store i64* %dsuboffsets, i64** %dsuboffsets.addr, align 8
  store i8* %sptr, i8** %sptr.addr, align 8
  store i64* %sstrides, i64** %sstrides.addr, align 8
  store i64* %ssuboffsets, i64** %ssuboffsets.addr, align 8
  store i8* %mem, i8** %mem.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %shape.addr, align 8
  %2 = load i64, i64* %itemsize.addr, align 8
  %3 = load i8*, i8** %dptr.addr, align 8
  %4 = load i64*, i64** %dstrides.addr, align 8
  %5 = load i64*, i64** %dsuboffsets.addr, align 8
  %6 = load i8*, i8** %sptr.addr, align 8
  %7 = load i64*, i64** %sstrides.addr, align 8
  %8 = load i64*, i64** %ssuboffsets.addr, align 8
  %9 = load i8*, i8** %mem.addr, align 8
  call void @copy_base(i64* %1, i64 %2, i8* %3, i64* %4, i64* %5, i8* %6, i64* %7, i64* %8, i8* %9)
  br label %for.end

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp slt i64 %10, %12
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool = icmp ne i64* %13, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %14 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx2, align 8
  %cmp3 = icmp sge i64 %15, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %dptr.addr, align 8
  %17 = bitcast i8* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %19, i64 0
  %20 = load i64, i64* %arrayidx4, align 8
  %add.ptr = getelementptr i8, i8* %18, i64 %20
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %21 = load i8*, i8** %dptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %21, %cond.false ]
  store i8* %cond, i8** %xdptr, align 8
  %22 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool5 = icmp ne i64* %22, null
  br i1 %tobool5, label %land.lhs.true.6, label %cond.false.12

land.lhs.true.6:                                  ; preds = %cond.end
  %23 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %23, i64 0
  %24 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp sge i64 %24, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %land.lhs.true.6
  %25 = load i8*, i8** %sptr.addr, align 8
  %26 = bitcast i8* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx10 = getelementptr i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx10, align 8
  %add.ptr11 = getelementptr i8, i8* %27, i64 %29
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true.6, %cond.end
  %30 = load i8*, i8** %sptr.addr, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i8* [ %add.ptr11, %cond.true.9 ], [ %30, %cond.false.12 ]
  store i8* %cond14, i8** %xsptr, align 8
  %31 = load i64*, i64** %shape.addr, align 8
  %add.ptr15 = getelementptr i64, i64* %31, i64 1
  %32 = load i64, i64* %ndim.addr, align 8
  %sub = sub i64 %32, 1
  %33 = load i64, i64* %itemsize.addr, align 8
  %34 = load i8*, i8** %xdptr, align 8
  %35 = load i64*, i64** %dstrides.addr, align 8
  %add.ptr16 = getelementptr i64, i64* %35, i64 1
  %36 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool17 = icmp ne i64* %36, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.13
  %37 = load i64*, i64** %dsuboffsets.addr, align 8
  %add.ptr19 = getelementptr i64, i64* %37, i64 1
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.13
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i64* [ %add.ptr19, %cond.true.18 ], [ null, %cond.false.20 ]
  %38 = load i8*, i8** %xsptr, align 8
  %39 = load i64*, i64** %sstrides.addr, align 8
  %add.ptr23 = getelementptr i64, i64* %39, i64 1
  %40 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool24 = icmp ne i64* %40, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.21
  %41 = load i64*, i64** %ssuboffsets.addr, align 8
  %add.ptr26 = getelementptr i64, i64* %41, i64 1
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.21
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i64* [ %add.ptr26, %cond.true.25 ], [ null, %cond.false.27 ]
  %42 = load i8*, i8** %mem.addr, align 8
  call void @copy_rec(i64* %add.ptr15, i64 %sub, i64 %33, i8* %34, i64* %add.ptr16, i64* %cond22, i8* %38, i64* %add.ptr23, i64* %cond29, i8* %42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.28
  %43 = load i64*, i64** %dstrides.addr, align 8
  %arrayidx30 = getelementptr i64, i64* %43, i64 0
  %44 = load i64, i64* %arrayidx30, align 8
  %45 = load i8*, i8** %dptr.addr, align 8
  %add.ptr31 = getelementptr i8, i8* %45, i64 %44
  store i8* %add.ptr31, i8** %dptr.addr, align 8
  %46 = load i64*, i64** %sstrides.addr, align 8
  %arrayidx32 = getelementptr i64, i64* %46, i64 0
  %47 = load i64, i64* %arrayidx32, align 8
  %48 = load i8*, i8** %sptr.addr, align 8
  %add.ptr33 = getelementptr i8, i8* %48, i64 %47
  store i8* %add.ptr33, i8** %sptr.addr, align 8
  %49 = load i64, i64* %i, align 8
  %inc = add i64 %49, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @equiv_format(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #2 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %dfmt = alloca i8*, align 8
  %sfmt = alloca i8*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 6
  %1 = load i8*, i8** %format, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 6
  %4 = load i8*, i8** %format2, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %format3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 6
  %6 = load i8*, i8** %format3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  store i8* %cond, i8** %dfmt, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 6
  %8 = load i8*, i8** %format4, align 8
  %arrayidx5 = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 64
  br i1 %cmp7, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 6
  %11 = load i8*, i8** %format10, align 8
  %add.ptr11 = getelementptr i8, i8* %11, i64 1
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %format13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 6
  %13 = load i8*, i8** %format13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.9
  %cond15 = phi i8* [ %add.ptr11, %cond.true.9 ], [ %13, %cond.false.12 ]
  store i8* %cond15, i8** %sfmt, align 8
  %14 = load i8*, i8** %dfmt, align 8
  %15 = load i8*, i8** %sfmt, align 8
  %call = call i32 @strcmp(i8* %14, i8* %15) #8
  %cmp16 = icmp ne i32 %call, 0
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.14
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 3
  %17 = load i64, i64* %itemsize, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %itemsize18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 3
  %19 = load i64, i64* %itemsize18, align 8
  %cmp19 = icmp ne i64 %17, %19
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.14
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @equiv_shape(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #2 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i32, align 4
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 5
  %1 = load i32, i32* %ndim, align 4
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %ndim1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %ndim2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 5
  %6 = load i32, i32* %ndim2, align 4
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 7
  %9 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %shape5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 7
  %13 = load i64*, i64** %shape5, align 8
  %arrayidx6 = getelementptr i64, i64* %13, i64 %idxprom4
  %14 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp ne i64 %10, %14
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 7
  %17 = load i64*, i64** %shape11, align 8
  %arrayidx12 = getelementptr i64, i64* %17, i64 %idxprom10
  %18 = load i64, i64* %arrayidx12, align 8
  %cmp13 = icmp eq i64 %18, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  br label %for.end

if.end.15:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @copy_base(i64* %shape, i64 %itemsize, i8* %dptr, i64* %dstrides, i64* %dsuboffsets, i8* %sptr, i64* %sstrides, i64* %ssuboffsets, i8* %mem) #0 {
entry:
  %shape.addr = alloca i64*, align 8
  %itemsize.addr = alloca i64, align 8
  %dptr.addr = alloca i8*, align 8
  %dstrides.addr = alloca i64*, align 8
  %dsuboffsets.addr = alloca i64*, align 8
  %sptr.addr = alloca i8*, align 8
  %sstrides.addr = alloca i64*, align 8
  %ssuboffsets.addr = alloca i64*, align 8
  %mem.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %p = alloca i8*, align 8
  %i = alloca i64, align 8
  %xsptr = alloca i8*, align 8
  %xdptr = alloca i8*, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store i8* %dptr, i8** %dptr.addr, align 8
  store i64* %dstrides, i64** %dstrides.addr, align 8
  store i64* %dsuboffsets, i64** %dsuboffsets.addr, align 8
  store i8* %sptr, i8** %sptr.addr, align 8
  store i64* %sstrides, i64** %sstrides.addr, align 8
  store i64* %ssuboffsets, i64** %ssuboffsets.addr, align 8
  store i8* %mem, i8** %mem.addr, align 8
  %0 = load i8*, i8** %mem.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i64, i64* %itemsize.addr, align 8
  %mul = mul i64 %2, %3
  store i64 %mul, i64* %size, align 8
  %4 = load i8*, i8** %dptr.addr, align 8
  %5 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %5
  %6 = load i8*, i8** %sptr.addr, align 8
  %cmp1 = icmp ult i8* %add.ptr, %6
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i8*, i8** %sptr.addr, align 8
  %8 = load i64, i64* %size, align 8
  %add.ptr2 = getelementptr i8, i8* %7, i64 %8
  %9 = load i8*, i8** %dptr.addr, align 8
  %cmp3 = icmp ult i8* %add.ptr2, %9
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %10 = load i8*, i8** %dptr.addr, align 8
  %11 = load i8*, i8** %sptr.addr, align 8
  %12 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %12, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %13 = load i8*, i8** %dptr.addr, align 8
  %14 = load i8*, i8** %sptr.addr, align 8
  %15 = load i64, i64* %size, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %15, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.35

if.else.5:                                        ; preds = %entry
  store i64 0, i64* %i, align 8
  %16 = load i8*, i8** %mem.addr, align 8
  store i8* %16, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.5
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** %shape.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp slt i64 %17, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64*, i64** %ssuboffsets.addr, align 8
  %tobool = icmp ne i64* %20, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %21 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx8 = getelementptr i64, i64* %21, i64 0
  %22 = load i64, i64* %arrayidx8, align 8
  %cmp9 = icmp sge i64 %22, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %23 = load i8*, i8** %sptr.addr, align 8
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = load i64*, i64** %ssuboffsets.addr, align 8
  %arrayidx10 = getelementptr i64, i64* %26, i64 0
  %27 = load i64, i64* %arrayidx10, align 8
  %add.ptr11 = getelementptr i8, i8* %25, i64 %27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %28 = load i8*, i8** %sptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr11, %cond.true ], [ %28, %cond.false ]
  store i8* %cond, i8** %xsptr, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %xsptr, align 8
  %31 = load i64, i64* %itemsize.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %31, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %32 = load i64, i64* %itemsize.addr, align 8
  %33 = load i8*, i8** %p, align 8
  %add.ptr12 = getelementptr i8, i8* %33, i64 %32
  store i8* %add.ptr12, i8** %p, align 8
  %34 = load i64*, i64** %sstrides.addr, align 8
  %arrayidx13 = getelementptr i64, i64* %34, i64 0
  %35 = load i64, i64* %arrayidx13, align 8
  %36 = load i8*, i8** %sptr.addr, align 8
  %add.ptr14 = getelementptr i8, i8* %36, i64 %35
  store i8* %add.ptr14, i8** %sptr.addr, align 8
  %37 = load i64, i64* %i, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  %38 = load i8*, i8** %mem.addr, align 8
  store i8* %38, i8** %p, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.29, %for.end
  %39 = load i64, i64* %i, align 8
  %40 = load i64*, i64** %shape.addr, align 8
  %arrayidx16 = getelementptr i64, i64* %40, i64 0
  %41 = load i64, i64* %arrayidx16, align 8
  %cmp17 = icmp slt i64 %39, %41
  br i1 %cmp17, label %for.body.18, label %for.end.34

for.body.18:                                      ; preds = %for.cond.15
  %42 = load i64*, i64** %dsuboffsets.addr, align 8
  %tobool19 = icmp ne i64* %42, null
  br i1 %tobool19, label %land.lhs.true.20, label %cond.false.26

land.lhs.true.20:                                 ; preds = %for.body.18
  %43 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx21 = getelementptr i64, i64* %43, i64 0
  %44 = load i64, i64* %arrayidx21, align 8
  %cmp22 = icmp sge i64 %44, 0
  br i1 %cmp22, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %land.lhs.true.20
  %45 = load i8*, i8** %dptr.addr, align 8
  %46 = bitcast i8* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = load i64*, i64** %dsuboffsets.addr, align 8
  %arrayidx24 = getelementptr i64, i64* %48, i64 0
  %49 = load i64, i64* %arrayidx24, align 8
  %add.ptr25 = getelementptr i8, i8* %47, i64 %49
  br label %cond.end.27

cond.false.26:                                    ; preds = %land.lhs.true.20, %for.body.18
  %50 = load i8*, i8** %dptr.addr, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.23
  %cond28 = phi i8* [ %add.ptr25, %cond.true.23 ], [ %50, %cond.false.26 ]
  store i8* %cond28, i8** %xdptr, align 8
  %51 = load i8*, i8** %xdptr, align 8
  %52 = load i8*, i8** %p, align 8
  %53 = load i64, i64* %itemsize.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %53, i32 1, i1 false)
  br label %for.inc.29

for.inc.29:                                       ; preds = %cond.end.27
  %54 = load i64, i64* %itemsize.addr, align 8
  %55 = load i8*, i8** %p, align 8
  %add.ptr30 = getelementptr i8, i8* %55, i64 %54
  store i8* %add.ptr30, i8** %p, align 8
  %56 = load i64*, i64** %dstrides.addr, align 8
  %arrayidx31 = getelementptr i64, i64* %56, i64 0
  %57 = load i64, i64* %arrayidx31, align 8
  %58 = load i8*, i8** %dptr.addr, align 8
  %add.ptr32 = getelementptr i8, i8* %58, i64 %57
  store i8* %add.ptr32, i8** %dptr.addr, align 8
  %59 = load i64, i64* %i, align 8
  %inc33 = add i64 %59, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond.15

for.end.34:                                       ; preds = %for.cond.15
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @_memory_release(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 4
  %3 = load i64, i64* %exports, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags2 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %4, i32 0, i32 3
  %5 = load i32, i32* %flags2, align 4
  %or = or i32 %5, 1
  store i32 %or, i32* %flags2, align 4
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 1
  %7 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %exports3 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %7, i32 0, i32 2
  %8 = load i64, i64* %exports3, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %exports3, align 8
  %cmp4 = icmp eq i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.1
  %9 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf6 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %9, i32 0, i32 1
  %10 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf6, align 8
  call void @mbuf_release(%struct._PyManagedBufferObject* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports9 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %11, i32 0, i32 4
  %12 = load i64, i64* %exports9, align 8
  %cmp10 = icmp sgt i64 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %14 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports12 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %14, i32 0, i32 4
  %15 = load i64, i64* %exports12, align 8
  %16 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports13 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %16, i32 0, i32 4
  %17 = load i64, i64* %exports13, align 8
  %cmp14 = icmp eq i64 %17, 1
  %cond = select i1 %cmp14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i64 %15, i8* %cond)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0)) #7
  unreachable

return:                                           ; preds = %if.then.11, %if.end.7, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @memory_length(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %7 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view4, i32 0, i32 7
  %9 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_item(%struct.PyMemoryViewObject* %self, i64 %index) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %index.addr = alloca i64, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %fmt = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags2, align 4
  %and3 = and i32 %5, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call = call i8* @adjust_fmt(%struct.bufferinfo* %7)
  store i8* %call, i8** %fmt, align 8
  %8 = load i8*, i8** %fmt, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 5
  %10 = load i32, i32* %ndim, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 5
  %13 = load i32, i32* %ndim10, align 4
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.9
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %15 = load i64, i64* %index.addr, align 8
  %call13 = call i8* @ptr_from_index(%struct.bufferinfo* %14, i64 %15)
  store i8* %call13, i8** %ptr, align 8
  %16 = load i8*, i8** %ptr, align 8
  %cmp14 = icmp eq i8* %16, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %17 = load i8*, i8** %ptr, align 8
  %18 = load i8*, i8** %fmt, align 8
  %call17 = call %struct._object* @unpack_single(i8* %17, i8* %18)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end.16, %if.then.15, %if.then.8, %if.then.5, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @adjust_fmt(%struct.bufferinfo* %view) #2 {
entry:
  %retval = alloca i8*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %fmt = alloca i8*, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 6
  %1 = load i8*, i8** %format, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 6
  %4 = load i8*, i8** %format2, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 6
  %6 = load i8*, i8** %format3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  store i8* %cond, i8** %fmt, align 8
  %7 = load i8*, i8** %fmt, align 8
  %arrayidx4 = getelementptr i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %9 = load i8*, i8** %fmt, align 8
  %arrayidx6 = getelementptr i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8*, i8** %fmt, align 8
  store i8* %11, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %12 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 6
  %14 = load i8*, i8** %format10, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8* %14)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @ptr_from_index(%struct.bufferinfo* %view, i64 %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %index.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %nitems = alloca i64, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 7
  %1 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %nitems, align 8
  %3 = load i64, i64* %index.addr, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %nitems, align 8
  %5 = load i64, i64* %index.addr, align 8
  %add = add i64 %5, %4
  store i64 %add, i64* %index.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %index.addr, align 8
  %cmp1 = icmp slt i64 %6, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %index.addr, align 8
  %8 = load i64, i64* %nitems, align 8
  %cmp2 = icmp sge i64 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0
  %11 = load i8*, i8** %buf, align 8
  store i8* %11, i8** %ptr, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 8
  %13 = load i64*, i64** %strides, align 8
  %arrayidx5 = getelementptr i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load i64, i64* %index.addr, align 8
  %mul = mul i64 %14, %15
  %16 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 %mul
  store i8* %add.ptr, i8** %ptr, align 8
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 9
  %18 = load i64*, i64** %suboffsets, align 8
  %tobool = icmp ne i64* %18, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.4
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 9
  %20 = load i64*, i64** %suboffsets6, align 8
  %arrayidx7 = getelementptr i64, i64* %20, i64 0
  %21 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp sge i64 %21, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %22 = load i8*, i8** %ptr, align 8
  %23 = bitcast i8* %22 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 9
  %26 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %26, i64 0
  %27 = load i64, i64* %arrayidx10, align 8
  %add.ptr11 = getelementptr i8, i8* %24, i64 %27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.4
  %28 = load i8*, i8** %ptr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr11, %cond.true ], [ %28, %cond.false ]
  store i8* %cond, i8** %ptr, align 8
  %29 = load i8*, i8** %ptr, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._object* @unpack_single(i8* %ptr, i8* %fmt) #2 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %llu = alloca i64, align 8
  %lu = alloca i64, align 8
  %zu = alloca i64, align 8
  %lld = alloca i64, align 8
  %ld = alloca i64, align 8
  %zd = alloca i64, align 8
  %d = alloca double, align 8
  %uc = alloca i8, align 1
  %p = alloca i8*, align 8
  %x = alloca i16, align 2
  %x7 = alloca i32, align 4
  %x12 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x21 = alloca i16, align 2
  %x26 = alloca i32, align 4
  %x31 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x51 = alloca float, align 4
  %x56 = alloca double, align 8
  %x61 = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 66, label %sw.bb
    i32 98, label %sw.bb.1
    i32 104, label %sw.bb.3
    i32 105, label %sw.bb.5
    i32 108, label %sw.bb.10
    i32 63, label %sw.bb.14
    i32 72, label %sw.bb.19
    i32 73, label %sw.bb.24
    i32 76, label %sw.bb.29
    i32 113, label %sw.bb.33
    i32 81, label %sw.bb.37
    i32 110, label %sw.bb.41
    i32 78, label %sw.bb.45
    i32 102, label %sw.bb.49
    i32 100, label %sw.bb.54
    i32 99, label %sw.bb.58
    i32 80, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %uc, align 1
  br label %convert_uc

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i64
  store i64 %conv2, i64* %ld, align 8
  br label %convert_ld

sw.bb.3:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.3
  %6 = bitcast i16* %x to i8*
  %7 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 2, i32 1, i1 false)
  %8 = load i16, i16* %x, align 2
  %conv4 = sext i16 %8 to i64
  store i64 %conv4, i64* %ld, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %convert_ld

sw.bb.5:                                          ; preds = %entry
  br label %do.body.6

do.body.6:                                        ; preds = %sw.bb.5
  %9 = bitcast i32* %x7 to i8*
  %10 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = load i32, i32* %x7, align 4
  %conv8 = sext i32 %11 to i64
  store i64 %conv8, i64* %ld, align 8
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.6
  br label %convert_ld

sw.bb.10:                                         ; preds = %entry
  br label %do.body.11

do.body.11:                                       ; preds = %sw.bb.10
  %12 = bitcast i64* %x12 to i8*
  %13 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 1, i1 false)
  %14 = load i64, i64* %x12, align 8
  store i64 %14, i64* %ld, align 8
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.11
  br label %convert_ld

sw.bb.14:                                         ; preds = %entry
  br label %do.body.15

do.body.15:                                       ; preds = %sw.bb.14
  %15 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x16, i8* %15, i64 1, i32 1, i1 false)
  %16 = load i8, i8* %x16, align 1
  %tobool = trunc i8 %16 to i1
  %conv17 = zext i1 %tobool to i64
  store i64 %conv17, i64* %ld, align 8
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.15
  br label %convert_bool

sw.bb.19:                                         ; preds = %entry
  br label %do.body.20

do.body.20:                                       ; preds = %sw.bb.19
  %17 = bitcast i16* %x21 to i8*
  %18 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 2, i32 1, i1 false)
  %19 = load i16, i16* %x21, align 2
  %conv22 = zext i16 %19 to i64
  store i64 %conv22, i64* %lu, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.20
  br label %convert_lu

sw.bb.24:                                         ; preds = %entry
  br label %do.body.25

do.body.25:                                       ; preds = %sw.bb.24
  %20 = bitcast i32* %x26 to i8*
  %21 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 4, i32 1, i1 false)
  %22 = load i32, i32* %x26, align 4
  %conv27 = zext i32 %22 to i64
  store i64 %conv27, i64* %lu, align 8
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.25
  br label %convert_lu

sw.bb.29:                                         ; preds = %entry
  br label %do.body.30

do.body.30:                                       ; preds = %sw.bb.29
  %23 = bitcast i64* %x31 to i8*
  %24 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 1, i1 false)
  %25 = load i64, i64* %x31, align 8
  store i64 %25, i64* %lu, align 8
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.30
  br label %convert_lu

sw.bb.33:                                         ; preds = %entry
  br label %do.body.34

do.body.34:                                       ; preds = %sw.bb.33
  %26 = bitcast i64* %x35 to i8*
  %27 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 1, i1 false)
  %28 = load i64, i64* %x35, align 8
  store i64 %28, i64* %lld, align 8
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.34
  br label %convert_lld

sw.bb.37:                                         ; preds = %entry
  br label %do.body.38

do.body.38:                                       ; preds = %sw.bb.37
  %29 = bitcast i64* %x39 to i8*
  %30 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false)
  %31 = load i64, i64* %x39, align 8
  store i64 %31, i64* %llu, align 8
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.38
  br label %convert_llu

sw.bb.41:                                         ; preds = %entry
  br label %do.body.42

do.body.42:                                       ; preds = %sw.bb.41
  %32 = bitcast i64* %x43 to i8*
  %33 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 1, i1 false)
  %34 = load i64, i64* %x43, align 8
  store i64 %34, i64* %zd, align 8
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.42
  br label %convert_zd

sw.bb.45:                                         ; preds = %entry
  br label %do.body.46

do.body.46:                                       ; preds = %sw.bb.45
  %35 = bitcast i64* %x47 to i8*
  %36 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 1, i1 false)
  %37 = load i64, i64* %x47, align 8
  store i64 %37, i64* %zu, align 8
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.46
  br label %convert_zu

sw.bb.49:                                         ; preds = %entry
  br label %do.body.50

do.body.50:                                       ; preds = %sw.bb.49
  %38 = bitcast float* %x51 to i8*
  %39 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 4, i32 1, i1 false)
  %40 = load float, float* %x51, align 4
  %conv52 = fpext float %40 to double
  store double %conv52, double* %d, align 8
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.50
  br label %convert_double

sw.bb.54:                                         ; preds = %entry
  br label %do.body.55

do.body.55:                                       ; preds = %sw.bb.54
  %41 = bitcast double* %x56 to i8*
  %42 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 1, i1 false)
  %43 = load double, double* %x56, align 8
  store double %43, double* %d, align 8
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.55
  br label %convert_double

sw.bb.58:                                         ; preds = %entry
  br label %convert_bytes

sw.bb.59:                                         ; preds = %entry
  br label %do.body.60

do.body.60:                                       ; preds = %sw.bb.59
  %44 = bitcast i8** %x61 to i8*
  %45 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 1, i1 false)
  %46 = load i8*, i8** %x61, align 8
  store i8* %46, i8** %p, align 8
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.60
  br label %convert_pointer

sw.default:                                       ; preds = %entry
  br label %err_format

convert_uc:                                       ; preds = %sw.bb
  %47 = load i8, i8* %uc, align 1
  %conv63 = zext i8 %47 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv63)
  store %struct._object* %call, %struct._object** %retval
  br label %return

convert_ld:                                       ; preds = %do.end.13, %do.end.9, %do.end, %sw.bb.1
  %48 = load i64, i64* %ld, align 8
  %call64 = call %struct._object* @PyLong_FromLong(i64 %48)
  store %struct._object* %call64, %struct._object** %retval
  br label %return

convert_lu:                                       ; preds = %do.end.32, %do.end.28, %do.end.23
  %49 = load i64, i64* %lu, align 8
  %call65 = call %struct._object* @PyLong_FromUnsignedLong(i64 %49)
  store %struct._object* %call65, %struct._object** %retval
  br label %return

convert_lld:                                      ; preds = %do.end.36
  %50 = load i64, i64* %lld, align 8
  %call66 = call %struct._object* @PyLong_FromLongLong(i64 %50)
  store %struct._object* %call66, %struct._object** %retval
  br label %return

convert_llu:                                      ; preds = %do.end.40
  %51 = load i64, i64* %llu, align 8
  %call67 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %51)
  store %struct._object* %call67, %struct._object** %retval
  br label %return

convert_zd:                                       ; preds = %do.end.44
  %52 = load i64, i64* %zd, align 8
  %call68 = call %struct._object* @PyLong_FromSsize_t(i64 %52)
  store %struct._object* %call68, %struct._object** %retval
  br label %return

convert_zu:                                       ; preds = %do.end.48
  %53 = load i64, i64* %zu, align 8
  %call69 = call %struct._object* @PyLong_FromSize_t(i64 %53)
  store %struct._object* %call69, %struct._object** %retval
  br label %return

convert_double:                                   ; preds = %do.end.57, %do.end.53
  %54 = load double, double* %d, align 8
  %call70 = call %struct._object* @PyFloat_FromDouble(double %54)
  store %struct._object* %call70, %struct._object** %retval
  br label %return

convert_bool:                                     ; preds = %do.end.18
  %55 = load i64, i64* %ld, align 8
  %call71 = call %struct._object* @PyBool_FromLong(i64 %55)
  store %struct._object* %call71, %struct._object** %retval
  br label %return

convert_bytes:                                    ; preds = %sw.bb.58
  %56 = load i8*, i8** %ptr.addr, align 8
  %call72 = call %struct._object* @PyBytes_FromStringAndSize(i8* %56, i64 1)
  store %struct._object* %call72, %struct._object** %retval
  br label %return

convert_pointer:                                  ; preds = %do.end.62
  %57 = load i8*, i8** %p, align 8
  %call73 = call %struct._object* @PyLong_FromVoidPtr(i8* %57)
  store %struct._object* %call73, %struct._object** %retval
  br label %return

err_format:                                       ; preds = %sw.default
  %58 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %59 = load i8*, i8** %fmt.addr, align 8
  %call74 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %59)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %err_format, %convert_pointer, %convert_bytes, %convert_bool, %convert_double, %convert_zu, %convert_zd, %convert_llu, %convert_lld, %convert_lu, %convert_ld, %convert_uc
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyLong_FromSize_t(i64) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_subscript(%struct.PyMemoryViewObject* %self, %struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %fmt = alloca i8*, align 8
  %index = alloca i64, align 8
  %sliced = alloca %struct.PyMemoryViewObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags2, align 4
  %and3 = and i32 %5, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 5
  %8 = load i32, i32* %ndim, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and6 = and i64 %11, 67108864
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.5
  %12 = load %struct._object*, %struct._object** %key.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  %cmp8 = icmp eq i64 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call = call i8* @adjust_fmt(%struct.bufferinfo* %15)
  store i8* %call, i8** %fmt, align 8
  %16 = load i8*, i8** %fmt, align 8
  %cmp10 = icmp eq i8* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.9
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 0
  %18 = load i8*, i8** %buf, align 8
  %19 = load i8*, i8** %fmt, align 8
  %call13 = call %struct._object* @unpack_single(i8* %18, i8* %19)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then.5
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp14 = icmp eq %struct._object* %20, @_Py_EllipsisObject
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %21 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %22 = bitcast %struct.PyMemoryViewObject* %21 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %24 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %25 = bitcast %struct.PyMemoryViewObject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

if.else.16:                                       ; preds = %if.else
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %27 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 10
  %29 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp19 = icmp ne %struct.PyNumberMethods* %29, null
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.33

land.lhs.true.20:                                 ; preds = %if.end.17
  %30 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_as_number22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 10
  %32 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number22, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %32, i32 0, i32 33
  %33 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp23 = icmp ne %struct._object* (%struct._object*)* %33, null
  br i1 %cmp23, label %if.then.24, label %if.else.33

if.then.24:                                       ; preds = %land.lhs.true.20
  %34 = load %struct._object*, %struct._object** %key.addr, align 8
  %35 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call25 = call i64 @PyNumber_AsSsize_t(%struct._object* %34, %struct._object* %35)
  store i64 %call25, i64* %index, align 8
  %36 = load i64, i64* %index, align 8
  %cmp26 = icmp eq i64 %36, -1
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.then.24
  %call28 = call %struct._object* @PyErr_Occurred()
  %tobool29 = icmp ne %struct._object* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.27, %if.then.24
  %37 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %38 = load i64, i64* %index, align 8
  %call32 = call %struct._object* @memory_item(%struct.PyMemoryViewObject* %37, i64 %38)
  store %struct._object* %call32, %struct._object** %retval
  br label %return

if.else.33:                                       ; preds = %land.lhs.true.20, %if.end.17
  %39 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %cmp35 = icmp eq %struct._typeobject* %40, @PySlice_Type
  br i1 %cmp35, label %if.then.36, label %if.else.54

if.then.36:                                       ; preds = %if.else.33
  %41 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf37 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %41, i32 0, i32 1
  %42 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf37, align 8
  %43 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call38 = call %struct._object* @mbuf_add_view(%struct._PyManagedBufferObject* %42, %struct.bufferinfo* %43)
  %44 = bitcast %struct._object* %call38 to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %44, %struct.PyMemoryViewObject** %sliced, align 8
  %45 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  %cmp39 = icmp eq %struct.PyMemoryViewObject* %45, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.36
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.36
  %46 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  %view42 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %46, i32 0, i32 5
  %47 = load %struct._object*, %struct._object** %key.addr, align 8
  %call43 = call i32 @init_slice(%struct.bufferinfo* %view42, %struct._object* %47, i32 0)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.41
  br label %do.body

do.body:                                          ; preds = %if.then.45
  %48 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  %49 = bitcast %struct.PyMemoryViewObject* %48 to %struct._object*
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt46, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt46, align 8
  %cmp47 = icmp ne i64 %dec, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body
  br label %if.end.51

if.else.49:                                       ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end

do.end:                                           ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.41
  %56 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  %view53 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %56, i32 0, i32 5
  call void @init_len(%struct.bufferinfo* %view53)
  %57 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  call void @init_flags(%struct.PyMemoryViewObject* %57)
  %58 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %sliced, align 8
  %59 = bitcast %struct.PyMemoryViewObject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %retval
  br label %return

if.else.54:                                       ; preds = %if.else.33
  %60 = load %struct._object*, %struct._object** %key.addr, align 8
  %call55 = call i32 @is_multislice(%struct._object* %60)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.54
  %61 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %if.else.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  %62 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.57, %if.end.52, %do.end, %if.then.40, %if.end.31, %if.then.30, %if.else.16, %if.then.15, %if.end.12, %if.then.11, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

; Function Attrs: nounwind uwtable
define internal i32 @memory_ass_sub(%struct.PyMemoryViewObject* %self, %struct._object* %key, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %key.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %src = alloca %struct.bufferinfo, align 8
  %fmt = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %index = alloca i64, align 8
  %dest = alloca %struct.bufferinfo, align 8
  %arrays = alloca [3 x i64], align 16
  %ret = alloca i32, align 4
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags2, align 4
  %and3 = and i32 %5, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call = call i8* @adjust_fmt(%struct.bufferinfo* %7)
  store i8* %call, i8** %fmt, align 8
  %8 = load i8*, i8** %fmt, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 4
  %10 = load i32, i32* %readonly, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim, align 4
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %key.addr, align 8
  %cmp15 = icmp eq %struct._object* %16, @_Py_EllipsisObject
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags, align 8
  %and17 = and i64 %19, 67108864
  %cmp18 = icmp ne i64 %and17, 0
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %20 = load %struct._object*, %struct._object** %key.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size, align 8
  %cmp19 = icmp eq i64 %22, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true, %if.then.14
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf, align 8
  store i8* %24, i8** %ptr, align 8
  %25 = load i8*, i8** %ptr, align 8
  %26 = load %struct._object*, %struct._object** %value.addr, align 8
  %27 = load i8*, i8** %fmt, align 8
  %call21 = call i32 @pack_single(i8* %25, %struct._object* %26, i8* %27)
  store i32 %call21, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.16
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.12
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 5
  %30 = load i32, i32* %ndim23, align 4
  %cmp24 = icmp ne i32 %30, 1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %31 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.27, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %32 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 10
  %34 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp28 = icmp ne %struct.PyNumberMethods* %34, null
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.46

land.lhs.true.29:                                 ; preds = %if.end.26
  %35 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_as_number31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 10
  %37 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number31, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %37, i32 0, i32 33
  %38 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp32 = icmp ne %struct._object* (%struct._object*)* %38, null
  br i1 %cmp32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %land.lhs.true.29
  %39 = load %struct._object*, %struct._object** %key.addr, align 8
  %40 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call34 = call i64 @PyNumber_AsSsize_t(%struct._object* %39, %struct._object* %40)
  store i64 %call34, i64* %index, align 8
  %41 = load i64, i64* %index, align 8
  %cmp35 = icmp eq i64 %41, -1
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.40

land.lhs.true.36:                                 ; preds = %if.then.33
  %call37 = call %struct._object* @PyErr_Occurred()
  %tobool38 = icmp ne %struct._object* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.36
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.36, %if.then.33
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %43 = load i64, i64* %index, align 8
  %call41 = call i8* @ptr_from_index(%struct.bufferinfo* %42, i64 %43)
  store i8* %call41, i8** %ptr, align 8
  %44 = load i8*, i8** %ptr, align 8
  %cmp42 = icmp eq i8* %44, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %45 = load i8*, i8** %ptr, align 8
  %46 = load %struct._object*, %struct._object** %value.addr, align 8
  %47 = load i8*, i8** %fmt, align 8
  %call45 = call i32 @pack_single(i8* %45, %struct._object* %46, i8* %47)
  store i32 %call45, i32* %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.29, %if.end.26
  %48 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %cmp48 = icmp eq %struct._typeobject* %49, @PySlice_Type
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.82

land.lhs.true.49:                                 ; preds = %if.end.46
  %50 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim50 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %50, i32 0, i32 5
  %51 = load i32, i32* %ndim50, align 4
  %cmp51 = icmp eq i32 %51, 1
  br i1 %cmp51, label %if.then.52, label %if.else.82

if.then.52:                                       ; preds = %land.lhs.true.49
  store i32 -1, i32* %ret, align 4
  %52 = load %struct._object*, %struct._object** %value.addr, align 8
  %call53 = call i32 @PyObject_GetBuffer(%struct._object* %52, %struct.bufferinfo* %src, i32 284)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  %53 = load i32, i32* %ret, align 4
  store i32 %53, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.52
  %54 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %55 = bitcast %struct.bufferinfo* %dest to i8*
  %56 = bitcast %struct.bufferinfo* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 80, i32 8, i1 false)
  %arrayidx = getelementptr [3 x i64], [3 x i64]* %arrays, i32 0, i64 0
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 7
  store i64* %arrayidx, i64** %shape, align 8
  %57 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape57 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %57, i32 0, i32 7
  %58 = load i64*, i64** %shape57, align 8
  %arrayidx58 = getelementptr i64, i64* %58, i64 0
  %59 = load i64, i64* %arrayidx58, align 8
  %shape59 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 7
  %60 = load i64*, i64** %shape59, align 8
  %arrayidx60 = getelementptr i64, i64* %60, i64 0
  store i64 %59, i64* %arrayidx60, align 8
  %arrayidx61 = getelementptr [3 x i64], [3 x i64]* %arrays, i32 0, i64 1
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  store i64* %arrayidx61, i64** %strides, align 8
  %61 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides62 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %61, i32 0, i32 8
  %62 = load i64*, i64** %strides62, align 8
  %arrayidx63 = getelementptr i64, i64* %62, i64 0
  %63 = load i64, i64* %arrayidx63, align 8
  %strides64 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 8
  %64 = load i64*, i64** %strides64, align 8
  %arrayidx65 = getelementptr i64, i64* %64, i64 0
  store i64 %63, i64* %arrayidx65, align 8
  %65 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %65, i32 0, i32 9
  %66 = load i64*, i64** %suboffsets, align 8
  %tobool66 = icmp ne i64* %66, null
  br i1 %tobool66, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %if.end.56
  %arrayidx68 = getelementptr [3 x i64], [3 x i64]* %arrays, i32 0, i64 2
  %suboffsets69 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 9
  store i64* %arrayidx68, i64** %suboffsets69, align 8
  %67 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets70 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %67, i32 0, i32 9
  %68 = load i64*, i64** %suboffsets70, align 8
  %arrayidx71 = getelementptr i64, i64* %68, i64 0
  %69 = load i64, i64* %arrayidx71, align 8
  %suboffsets72 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 9
  %70 = load i64*, i64** %suboffsets72, align 8
  %arrayidx73 = getelementptr i64, i64* %70, i64 0
  store i64 %69, i64* %arrayidx73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %if.end.56
  %71 = load %struct._object*, %struct._object** %key.addr, align 8
  %call75 = call i32 @init_slice(%struct.bufferinfo* %dest, %struct._object* %71, i32 0)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  br label %end_block

if.end.78:                                        ; preds = %if.end.74
  %shape79 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 7
  %72 = load i64*, i64** %shape79, align 8
  %arrayidx80 = getelementptr i64, i64* %72, i64 0
  %73 = load i64, i64* %arrayidx80, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 3
  %74 = load i64, i64* %itemsize, align 8
  %mul = mul i64 %73, %74
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %dest, i32 0, i32 2
  store i64 %mul, i64* %len, align 8
  %call81 = call i32 @copy_single(%struct.bufferinfo* %dest, %struct.bufferinfo* %src)
  store i32 %call81, i32* %ret, align 4
  br label %end_block

end_block:                                        ; preds = %if.end.78, %if.then.77
  call void @PyBuffer_Release(%struct.bufferinfo* %src)
  %75 = load i32, i32* %ret, align 4
  store i32 %75, i32* %retval
  br label %return

if.else.82:                                       ; preds = %land.lhs.true.49, %if.end.46
  %76 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %cmp84 = icmp eq %struct._typeobject* %77, @PySlice_Type
  br i1 %cmp84, label %if.then.88, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.else.82
  %78 = load %struct._object*, %struct._object** %key.addr, align 8
  %call86 = call i32 @is_multislice(%struct._object* %78)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.85, %if.else.82
  %79 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  call void @PyErr_SetString(%struct._object* %79, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.88, %end_block, %if.then.55, %if.end.44, %if.then.43, %if.then.39, %if.then.25, %if.else, %if.then.20, %if.then.11, %if.then.8, %if.then.5, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @init_slice(%struct.bufferinfo* %base, %struct._object* %key, i32 %dim) #2 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca %struct.bufferinfo*, align 8
  %key.addr = alloca %struct._object*, align 8
  %dim.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.bufferinfo* %base, %struct.bufferinfo** %base.addr, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %1 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 7
  %3 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %call = call i32 @PySlice_GetIndicesEx(%struct._object* %0, i64 %4, i64* %start, i64* %stop, i64* %step, i64* %slicelength)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 9
  %6 = load i64*, i64** %suboffsets, align 8
  %cmp1 = icmp eq i64* %6, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %dim.addr, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %adjust_buf

adjust_buf:                                       ; preds = %if.then.15, %if.then.3
  %8 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %8, i32 0, i32 0
  %9 = load i8*, i8** %buf, align 8
  %10 = load i32, i32* %dim.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 8
  %12 = load i64*, i64** %strides, align 8
  %arrayidx5 = getelementptr i64, i64* %12, i64 %idxprom4
  %13 = load i64, i64* %arrayidx5, align 8
  %14 = load i64, i64* %start, align 8
  %mul = mul i64 %13, %14
  %add.ptr = getelementptr i8, i8* %9, i64 %mul
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %buf6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 0
  store i8* %add.ptr, i8** %buf6, align 8
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %dim.addr, align 4
  %sub = sub i32 %16, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %17 = load i64, i64* %n, align 8
  %cmp7 = icmp sge i64 %17, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i64, i64* %n, align 8
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 9
  %20 = load i64*, i64** %suboffsets9, align 8
  %arrayidx10 = getelementptr i64, i64* %20, i64 %18
  %21 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp slt i64 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i64, i64* %n, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i64, i64* %n, align 8
  %cmp13 = icmp slt i64 %24, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  br label %adjust_buf

if.end.16:                                        ; preds = %while.end
  %25 = load i64, i64* %n, align 8
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 9
  %27 = load i64*, i64** %suboffsets17, align 8
  %arrayidx18 = getelementptr i64, i64* %27, i64 %25
  %28 = load i64, i64* %arrayidx18, align 8
  %29 = load i32, i32* %dim.addr, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 8
  %31 = load i64*, i64** %strides20, align 8
  %arrayidx21 = getelementptr i64, i64* %31, i64 %idxprom19
  %32 = load i64, i64* %arrayidx21, align 8
  %33 = load i64, i64* %start, align 8
  %mul22 = mul i64 %32, %33
  %add = add i64 %28, %mul22
  %34 = load i64, i64* %n, align 8
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %suboffsets23 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 9
  %36 = load i64*, i64** %suboffsets23, align 8
  %arrayidx24 = getelementptr i64, i64* %36, i64 %34
  store i64 %add, i64* %arrayidx24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.16, %adjust_buf
  %37 = load i64, i64* %slicelength, align 8
  %38 = load i32, i32* %dim.addr, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %shape27 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %39, i32 0, i32 7
  %40 = load i64*, i64** %shape27, align 8
  %arrayidx28 = getelementptr i64, i64* %40, i64 %idxprom26
  store i64 %37, i64* %arrayidx28, align 8
  %41 = load i32, i32* %dim.addr, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides30 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 8
  %43 = load i64*, i64** %strides30, align 8
  %arrayidx31 = getelementptr i64, i64* %43, i64 %idxprom29
  %44 = load i64, i64* %arrayidx31, align 8
  %45 = load i64, i64* %step, align 8
  %mul32 = mul i64 %44, %45
  %46 = load i32, i32* %dim.addr, align 4
  %idxprom33 = sext i32 %46 to i64
  %47 = load %struct.bufferinfo*, %struct.bufferinfo** %base.addr, align 8
  %strides34 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %47, i32 0, i32 8
  %48 = load i64*, i64** %strides34, align 8
  %arrayidx35 = getelementptr i64, i64* %48, i64 %idxprom33
  store i64 %mul32, i64* %arrayidx35, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @init_len(%struct.bufferinfo* %view) #2 {
entry:
  %view.addr = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i64 1, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 5
  %2 = load i32, i32* %ndim, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp slt i64 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 7
  %5 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 %3
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %len, align 8
  %mul = mul i64 %7, %6
  store i64 %mul, i64* %len, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 3
  %10 = load i64, i64* %itemsize, align 8
  %11 = load i64, i64* %len, align 8
  %mul2 = mul i64 %11, %10
  store i64 %mul2, i64* %len, align 8
  %12 = load i64, i64* %len, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  store i64 %12, i64* %len3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_multislice(%struct._object* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %x = alloca %struct._object*, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  store i64 %5, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %size, align 8
  %cmp4 = icmp slt i64 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %key.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %x, align 8
  %13 = load %struct._object*, %struct._object** %x, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %cmp6 = icmp eq %struct._typeobject* %14, @PySlice_Type
  br i1 %cmp6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then.2, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pack_single(i8* %ptr, %struct._object* %item, i8* %fmt) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %item.addr = alloca %struct._object*, align 8
  %fmt.addr = alloca i8*, align 8
  %llu = alloca i64, align 8
  %lu = alloca i64, align 8
  %zu = alloca i64, align 8
  %lld = alloca i64, align 8
  %ld = alloca i64, align 8
  %zd = alloca i64, align 8
  %d = alloca double, align 8
  %p = alloca i8*, align 8
  %x = alloca i16, align 2
  %x31 = alloca i32, align 4
  %x35 = alloca i64, align 8
  %x60 = alloca i16, align 2
  %x69 = alloca i32, align 4
  %x74 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x140 = alloca float, align 4
  %x144 = alloca double, align 8
  %x155 = alloca i8, align 1
  %x180 = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default.182 [
    i32 98, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 108, label %sw.bb
    i32 66, label %sw.bb.37
    i32 72, label %sw.bb.37
    i32 73, label %sw.bb.37
    i32 76, label %sw.bb.37
    i32 113, label %sw.bb.77
    i32 81, label %sw.bb.89
    i32 110, label %sw.bb.101
    i32 78, label %sw.bb.113
    i32 102, label %sw.bb.125
    i32 100, label %sw.bb.125
    i32 63, label %sw.bb.147
    i32 99, label %sw.bb.158
    i32 80, label %sw.bb.170
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %2 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call i64 @pylong_as_ld(%struct._object* %2)
  store i64 %call, i64* %ld, align 8
  %3 = load i64, i64* %ld, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %err_occurred

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %4 = load i8*, i8** %fmt.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  switch i32 %conv4, label %sw.default [
    i32 98, label %sw.bb.5
    i32 104, label %sw.bb.13
    i32 105, label %sw.bb.22
  ]

sw.bb.5:                                          ; preds = %if.end
  %6 = load i64, i64* %ld, align 8
  %cmp6 = icmp slt i64 %6, -128
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.5
  %7 = load i64, i64* %ld, align 8
  %cmp8 = icmp sgt i64 %7, 127
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %sw.bb.5
  br label %err_range

if.end.11:                                        ; preds = %lor.lhs.false
  %8 = load i64, i64* %ld, align 8
  %conv12 = trunc i64 %8 to i8
  %9 = load i8*, i8** %ptr.addr, align 8
  store i8 %conv12, i8* %9, align 1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %10 = load i64, i64* %ld, align 8
  %cmp14 = icmp slt i64 %10, -32768
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %sw.bb.13
  %11 = load i64, i64* %ld, align 8
  %cmp17 = icmp sgt i64 %11, 32767
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %sw.bb.13
  br label %err_range

if.end.20:                                        ; preds = %lor.lhs.false.16
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %12 = load i64, i64* %ld, align 8
  %conv21 = trunc i64 %12 to i16
  store i16 %conv21, i16* %x, align 2
  %13 = load i8*, i8** %ptr.addr, align 8
  %14 = bitcast i16* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 2, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  %15 = load i64, i64* %ld, align 8
  %cmp23 = icmp slt i64 %15, -2147483648
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %sw.bb.22
  %16 = load i64, i64* %ld, align 8
  %cmp26 = icmp sgt i64 %16, 2147483647
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.25, %sw.bb.22
  br label %err_range

if.end.29:                                        ; preds = %lor.lhs.false.25
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %17 = load i64, i64* %ld, align 8
  %conv32 = trunc i64 %17 to i32
  store i32 %conv32, i32* %x31, align 4
  %18 = load i8*, i8** %ptr.addr, align 8
  %19 = bitcast i32* %x31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 4, i32 1, i1 false)
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.30
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body.34

do.body.34:                                       ; preds = %sw.default
  %20 = load i64, i64* %ld, align 8
  store i64 %20, i64* %x35, align 8
  %21 = load i8*, i8** %ptr.addr, align 8
  %22 = bitcast i64* %x35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 8, i32 1, i1 false)
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.34
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.36, %do.end.33, %do.end, %if.end.11
  br label %sw.epilog.183

sw.bb.37:                                         ; preds = %entry, %entry, %entry, %entry
  %23 = load %struct._object*, %struct._object** %item.addr, align 8
  %call38 = call i64 @pylong_as_lu(%struct._object* %23)
  store i64 %call38, i64* %lu, align 8
  %24 = load i64, i64* %lu, align 8
  %cmp39 = icmp eq i64 %24, -1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %sw.bb.37
  %call42 = call %struct._object* @PyErr_Occurred()
  %tobool43 = icmp ne %struct._object* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  br label %err_occurred

if.end.45:                                        ; preds = %land.lhs.true.41, %sw.bb.37
  %25 = load i8*, i8** %fmt.addr, align 8
  %arrayidx46 = getelementptr i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %26 to i32
  switch i32 %conv47, label %sw.default.72 [
    i32 66, label %sw.bb.48
    i32 72, label %sw.bb.54
    i32 73, label %sw.bb.63
  ]

sw.bb.48:                                         ; preds = %if.end.45
  %27 = load i64, i64* %lu, align 8
  %cmp49 = icmp ugt i64 %27, 255
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %sw.bb.48
  br label %err_range

if.end.52:                                        ; preds = %sw.bb.48
  %28 = load i64, i64* %lu, align 8
  %conv53 = trunc i64 %28 to i8
  %29 = load i8*, i8** %ptr.addr, align 8
  store i8 %conv53, i8* %29, align 1
  br label %sw.epilog.76

sw.bb.54:                                         ; preds = %if.end.45
  %30 = load i64, i64* %lu, align 8
  %cmp55 = icmp ugt i64 %30, 65535
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.bb.54
  br label %err_range

if.end.58:                                        ; preds = %sw.bb.54
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  %31 = load i64, i64* %lu, align 8
  %conv61 = trunc i64 %31 to i16
  store i16 %conv61, i16* %x60, align 2
  %32 = load i8*, i8** %ptr.addr, align 8
  %33 = bitcast i16* %x60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 2, i32 1, i1 false)
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.59
  br label %sw.epilog.76

sw.bb.63:                                         ; preds = %if.end.45
  %34 = load i64, i64* %lu, align 8
  %cmp64 = icmp ugt i64 %34, 4294967295
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.bb.63
  br label %err_range

if.end.67:                                        ; preds = %sw.bb.63
  br label %do.body.68

do.body.68:                                       ; preds = %if.end.67
  %35 = load i64, i64* %lu, align 8
  %conv70 = trunc i64 %35 to i32
  store i32 %conv70, i32* %x69, align 4
  %36 = load i8*, i8** %ptr.addr, align 8
  %37 = bitcast i32* %x69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 4, i32 1, i1 false)
  br label %do.end.71

do.end.71:                                        ; preds = %do.body.68
  br label %sw.epilog.76

sw.default.72:                                    ; preds = %if.end.45
  br label %do.body.73

do.body.73:                                       ; preds = %sw.default.72
  %38 = load i64, i64* %lu, align 8
  store i64 %38, i64* %x74, align 8
  %39 = load i8*, i8** %ptr.addr, align 8
  %40 = bitcast i64* %x74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 1, i1 false)
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.73
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %do.end.75, %do.end.71, %do.end.62, %if.end.52
  br label %sw.epilog.183

sw.bb.77:                                         ; preds = %entry
  %41 = load %struct._object*, %struct._object** %item.addr, align 8
  %call78 = call i64 @pylong_as_lld(%struct._object* %41)
  store i64 %call78, i64* %lld, align 8
  %42 = load i64, i64* %lld, align 8
  %cmp79 = icmp eq i64 %42, -1
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.85

land.lhs.true.81:                                 ; preds = %sw.bb.77
  %call82 = call %struct._object* @PyErr_Occurred()
  %tobool83 = icmp ne %struct._object* %call82, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.81
  br label %err_occurred

if.end.85:                                        ; preds = %land.lhs.true.81, %sw.bb.77
  br label %do.body.86

do.body.86:                                       ; preds = %if.end.85
  %43 = load i64, i64* %lld, align 8
  store i64 %43, i64* %x87, align 8
  %44 = load i8*, i8** %ptr.addr, align 8
  %45 = bitcast i64* %x87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 1, i1 false)
  br label %do.end.88

do.end.88:                                        ; preds = %do.body.86
  br label %sw.epilog.183

sw.bb.89:                                         ; preds = %entry
  %46 = load %struct._object*, %struct._object** %item.addr, align 8
  %call90 = call i64 @pylong_as_llu(%struct._object* %46)
  store i64 %call90, i64* %llu, align 8
  %47 = load i64, i64* %llu, align 8
  %cmp91 = icmp eq i64 %47, -1
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %sw.bb.89
  %call94 = call %struct._object* @PyErr_Occurred()
  %tobool95 = icmp ne %struct._object* %call94, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.93
  br label %err_occurred

if.end.97:                                        ; preds = %land.lhs.true.93, %sw.bb.89
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %48 = load i64, i64* %llu, align 8
  store i64 %48, i64* %x99, align 8
  %49 = load i8*, i8** %ptr.addr, align 8
  %50 = bitcast i64* %x99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 1, i1 false)
  br label %do.end.100

do.end.100:                                       ; preds = %do.body.98
  br label %sw.epilog.183

sw.bb.101:                                        ; preds = %entry
  %51 = load %struct._object*, %struct._object** %item.addr, align 8
  %call102 = call i64 @pylong_as_zd(%struct._object* %51)
  store i64 %call102, i64* %zd, align 8
  %52 = load i64, i64* %zd, align 8
  %cmp103 = icmp eq i64 %52, -1
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.109

land.lhs.true.105:                                ; preds = %sw.bb.101
  %call106 = call %struct._object* @PyErr_Occurred()
  %tobool107 = icmp ne %struct._object* %call106, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.105
  br label %err_occurred

if.end.109:                                       ; preds = %land.lhs.true.105, %sw.bb.101
  br label %do.body.110

do.body.110:                                      ; preds = %if.end.109
  %53 = load i64, i64* %zd, align 8
  store i64 %53, i64* %x111, align 8
  %54 = load i8*, i8** %ptr.addr, align 8
  %55 = bitcast i64* %x111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 1, i1 false)
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.110
  br label %sw.epilog.183

sw.bb.113:                                        ; preds = %entry
  %56 = load %struct._object*, %struct._object** %item.addr, align 8
  %call114 = call i64 @pylong_as_zu(%struct._object* %56)
  store i64 %call114, i64* %zu, align 8
  %57 = load i64, i64* %zu, align 8
  %cmp115 = icmp eq i64 %57, -1
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.121

land.lhs.true.117:                                ; preds = %sw.bb.113
  %call118 = call %struct._object* @PyErr_Occurred()
  %tobool119 = icmp ne %struct._object* %call118, null
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.117
  br label %err_occurred

if.end.121:                                       ; preds = %land.lhs.true.117, %sw.bb.113
  br label %do.body.122

do.body.122:                                      ; preds = %if.end.121
  %58 = load i64, i64* %zu, align 8
  store i64 %58, i64* %x123, align 8
  %59 = load i8*, i8** %ptr.addr, align 8
  %60 = bitcast i64* %x123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 8, i32 1, i1 false)
  br label %do.end.124

do.end.124:                                       ; preds = %do.body.122
  br label %sw.epilog.183

sw.bb.125:                                        ; preds = %entry, %entry
  %61 = load %struct._object*, %struct._object** %item.addr, align 8
  %call126 = call double @PyFloat_AsDouble(%struct._object* %61)
  store double %call126, double* %d, align 8
  %62 = load double, double* %d, align 8
  %cmp127 = fcmp oeq double %62, -1.000000e+00
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.133

land.lhs.true.129:                                ; preds = %sw.bb.125
  %call130 = call %struct._object* @PyErr_Occurred()
  %tobool131 = icmp ne %struct._object* %call130, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.129
  br label %err_occurred

if.end.133:                                       ; preds = %land.lhs.true.129, %sw.bb.125
  %63 = load i8*, i8** %fmt.addr, align 8
  %arrayidx134 = getelementptr i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %64 to i32
  %cmp136 = icmp eq i32 %conv135, 102
  br i1 %cmp136, label %if.then.138, label %if.else

if.then.138:                                      ; preds = %if.end.133
  br label %do.body.139

do.body.139:                                      ; preds = %if.then.138
  %65 = load double, double* %d, align 8
  %conv141 = fptrunc double %65 to float
  store float %conv141, float* %x140, align 4
  %66 = load i8*, i8** %ptr.addr, align 8
  %67 = bitcast float* %x140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 4, i32 1, i1 false)
  br label %do.end.142

do.end.142:                                       ; preds = %do.body.139
  br label %if.end.146

if.else:                                          ; preds = %if.end.133
  br label %do.body.143

do.body.143:                                      ; preds = %if.else
  %68 = load double, double* %d, align 8
  store double %68, double* %x144, align 8
  %69 = load i8*, i8** %ptr.addr, align 8
  %70 = bitcast double* %x144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 1, i1 false)
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.143
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.end.142
  br label %sw.epilog.183

sw.bb.147:                                        ; preds = %entry
  %71 = load %struct._object*, %struct._object** %item.addr, align 8
  %call148 = call i32 @PyObject_IsTrue(%struct._object* %71)
  %conv149 = sext i32 %call148 to i64
  store i64 %conv149, i64* %ld, align 8
  %72 = load i64, i64* %ld, align 8
  %cmp150 = icmp slt i64 %72, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %sw.bb.147
  store i32 -1, i32* %retval
  br label %return

if.end.153:                                       ; preds = %sw.bb.147
  br label %do.body.154

do.body.154:                                      ; preds = %if.end.153
  %73 = load i64, i64* %ld, align 8
  %tobool156 = icmp ne i64 %73, 0
  %frombool = zext i1 %tobool156 to i8
  store i8 %frombool, i8* %x155, align 1
  %74 = load i8*, i8** %ptr.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %x155, i64 1, i32 1, i1 false)
  br label %do.end.157

do.end.157:                                       ; preds = %do.body.154
  br label %sw.epilog.183

sw.bb.158:                                        ; preds = %entry
  %75 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 19
  %77 = load i64, i64* %tp_flags, align 8
  %and = and i64 %77, 134217728
  %cmp159 = icmp ne i64 %and, 0
  br i1 %cmp159, label %if.end.163, label %if.then.161

if.then.161:                                      ; preds = %sw.bb.158
  %78 = load i8*, i8** %fmt.addr, align 8
  %call162 = call i32 @type_error_int(i8* %78)
  store i32 %call162, i32* %retval
  br label %return

if.end.163:                                       ; preds = %sw.bb.158
  %79 = load %struct._object*, %struct._object** %item.addr, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %80, i32 0, i32 1
  %81 = load i64, i64* %ob_size, align 8
  %cmp164 = icmp ne i64 %81, 1
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.end.163
  %82 = load i8*, i8** %fmt.addr, align 8
  %call167 = call i32 @value_error_int(i8* %82)
  store i32 %call167, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.end.163
  %83 = load %struct._object*, %struct._object** %item.addr, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %84, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx169 = getelementptr i8, i8* %arraydecay, i64 0
  %85 = load i8, i8* %arrayidx169, align 1
  %86 = load i8*, i8** %ptr.addr, align 8
  store i8 %85, i8* %86, align 1
  br label %sw.epilog.183

sw.bb.170:                                        ; preds = %entry
  %87 = load %struct._object*, %struct._object** %item.addr, align 8
  %call171 = call i8* @PyLong_AsVoidPtr(%struct._object* %87)
  store i8* %call171, i8** %p, align 8
  %88 = load i8*, i8** %p, align 8
  %cmp172 = icmp eq i8* %88, null
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.178

land.lhs.true.174:                                ; preds = %sw.bb.170
  %call175 = call %struct._object* @PyErr_Occurred()
  %tobool176 = icmp ne %struct._object* %call175, null
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.174
  br label %err_occurred

if.end.178:                                       ; preds = %land.lhs.true.174, %sw.bb.170
  br label %do.body.179

do.body.179:                                      ; preds = %if.end.178
  %89 = load i8*, i8** %p, align 8
  store i8* %89, i8** %x180, align 8
  %90 = load i8*, i8** %ptr.addr, align 8
  %91 = bitcast i8** %x180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 8, i32 1, i1 false)
  br label %do.end.181

do.end.181:                                       ; preds = %do.body.179
  br label %sw.epilog.183

sw.default.182:                                   ; preds = %entry
  br label %err_format

sw.epilog.183:                                    ; preds = %do.end.181, %if.end.168, %do.end.157, %if.end.146, %do.end.124, %do.end.112, %do.end.100, %do.end.88, %sw.epilog.76, %sw.epilog
  store i32 0, i32* %retval
  br label %return

err_occurred:                                     ; preds = %if.then.177, %if.then.132, %if.then.120, %if.then.108, %if.then.96, %if.then.84, %if.then.44, %if.then
  %92 = load i8*, i8** %fmt.addr, align 8
  %call184 = call i32 @fix_error_int(i8* %92)
  store i32 %call184, i32* %retval
  br label %return

err_range:                                        ; preds = %if.then.66, %if.then.57, %if.then.51, %if.then.28, %if.then.19, %if.then.10
  %93 = load i8*, i8** %fmt.addr, align 8
  %call185 = call i32 @value_error_int(i8* %93)
  store i32 %call185, i32* %retval
  br label %return

err_format:                                       ; preds = %sw.default.182
  %94 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %95 = load i8*, i8** %fmt.addr, align 8
  %call186 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %95)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %err_format, %err_range, %err_occurred, %sw.epilog.183, %if.then.166, %if.then.161, %if.then.152
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_single(%struct.bufferinfo* %dest, %struct.bufferinfo* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.bufferinfo*, align 8
  %src.addr = alloca %struct.bufferinfo*, align 8
  %mem = alloca i8*, align 8
  store %struct.bufferinfo* %dest, %struct.bufferinfo** %dest.addr, align 8
  store %struct.bufferinfo* %src, %struct.bufferinfo** %src.addr, align 8
  store i8* null, i8** %mem, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call = call i32 @equiv_structure(%struct.bufferinfo* %0, %struct.bufferinfo* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %call1 = call i32 @last_dim_is_contiguous(%struct.bufferinfo* %2, %struct.bufferinfo* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 7
  %5 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 3
  %8 = load i64, i64* %itemsize, align 8
  %mul = mul i64 %6, %8
  %call4 = call i8* @PyMem_Malloc(i64 %mul)
  store i8* %call4, i8** %mem, align 8
  %9 = load i8*, i8** %mem, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %call6 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %shape9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 7
  %11 = load i64*, i64** %shape9, align 8
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %itemsize10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 3
  %13 = load i64, i64* %itemsize10, align 8
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 0
  %15 = load i8*, i8** %buf, align 8
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 8
  %17 = load i64*, i64** %strides, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %dest.addr, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 9
  %19 = load i64*, i64** %suboffsets, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %buf11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 0
  %21 = load i8*, i8** %buf11, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %strides12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 8
  %23 = load i64*, i64** %strides12, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %src.addr, align 8
  %suboffsets13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 9
  %25 = load i64*, i64** %suboffsets13, align 8
  %26 = load i8*, i8** %mem, align 8
  call void @copy_base(i64* %11, i64 %13, i8* %15, i64* %17, i64* %19, i8* %21, i64* %23, i64* %25, i8* %26)
  %27 = load i8*, i8** %mem, align 8
  %tobool14 = icmp ne i8* %27, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.8
  %28 = load i8*, i8** %mem, align 8
  call void @PyMem_Free(i8* %28)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.5, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_ld(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %ld = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsLong(%struct._object* %2)
  store i64 %call2, i64* %ld, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %ld, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_lu(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %lu = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsUnsignedLong(%struct._object* %2)
  store i64 %call2, i64* %lu, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %lu, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_lld(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %lld = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsLongLong(%struct._object* %2)
  store i64 %call2, i64* %lld, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %lld, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_llu(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %llu = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %2)
  store i64 %call2, i64* %llu, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %llu, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_zd(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %zd = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsSsize_t(%struct._object* %2)
  store i64 %call2, i64* %zd, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %zd, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @pylong_as_zu(%struct._object* %item) #0 {
entry:
  %retval = alloca i64, align 8
  %item.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %zu = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  %0 = load %struct._object*, %struct._object** %item.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i64 @PyLong_AsSize_t(%struct._object* %2)
  store i64 %call2, i64* %zu, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load i64, i64* %zu, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

declare double @PyFloat_AsDouble(%struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @type_error_int(i8* %fmt) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i32 0, i32 0), i8* %1)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @value_error_int(i8* %fmt) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %1 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* %1)
  ret i32 -1
}

declare i8* @PyLong_AsVoidPtr(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fix_error_int(i8* %fmt) #0 {
entry:
  %retval = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call = call i32 @PyErr_ExceptionMatches(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  %1 = load i8*, i8** %fmt.addr, align 8
  %call1 = call i32 @type_error_int(i8* %1)
  store i32 %call1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call2 = call i32 @PyErr_ExceptionMatches(%struct._object* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  call void @PyErr_Clear()
  %4 = load i8*, i8** %fmt.addr, align 8
  %call7 = call i32 @value_error_int(i8* %4)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare i64 @PyLong_AsLongLong(%struct._object*) #1

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare i64 @PyLong_AsSize_t(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @get_native_fmtchar(i8* %result, i8* %fmt) #2 {
entry:
  %retval = alloca i64, align 8
  %result.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i64 -1, i64* %size, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %fmt.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %fmt.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  switch i32 %conv3, label %sw.epilog [
    i32 99, label %sw.bb
    i32 98, label %sw.bb
    i32 66, label %sw.bb
    i32 104, label %sw.bb.4
    i32 72, label %sw.bb.4
    i32 105, label %sw.bb.5
    i32 73, label %sw.bb.5
    i32 108, label %sw.bb.6
    i32 76, label %sw.bb.6
    i32 113, label %sw.bb.7
    i32 81, label %sw.bb.7
    i32 110, label %sw.bb.8
    i32 78, label %sw.bb.8
    i32 102, label %sw.bb.9
    i32 100, label %sw.bb.10
    i32 63, label %sw.bb.11
    i32 80, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  store i64 1, i64* %size, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end
  store i64 2, i64* %size, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end, %if.end
  store i64 4, i64* %size, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end, %if.end
  store i64 8, i64* %size, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end, %if.end
  store i64 8, i64* %size, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end, %if.end
  store i64 8, i64* %size, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  store i64 4, i64* %size, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  store i64 8, i64* %size, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  store i64 1, i64* %size, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  store i64 8, i64* %size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  %5 = load i64, i64* %size, align 8
  %cmp13 = icmp sgt i64 %5, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %sw.epilog
  %6 = load i8*, i8** %fmt.addr, align 8
  %arrayidx15 = getelementptr i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %7 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  %8 = load i8*, i8** %fmt.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx20, align 1
  %10 = load i8*, i8** %result.addr, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i64, i64* %size, align 8
  store i64 %11, i64* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %sw.epilog
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i64 @PyObject_Hash(%struct._object*) #1

declare i64 @_Py_HashBytes(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @memory_getbuf(%struct.PyMemoryViewObject* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  %base = alloca %struct.bufferinfo*, align 8
  %baseflags = alloca i32, align 4
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %base, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags2 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags2, align 4
  store i32 %2, i32* %baseflags, align 4
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags3 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 3
  %4 = load i32, i32* %flags3, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %5, i32 0, i32 1
  %6 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags4 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %6, i32 0, i32 1
  %7 = load i32, i32* %flags4, align 4
  %and5 = and i32 %7, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %11 = bitcast %struct.bufferinfo* %9 to i8*
  %12 = bitcast %struct.bufferinfo* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 80, i32 8, i1 false)
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 1
  store %struct._object* null, %struct._object** %obj, align 8
  %14 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %14, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.bufferinfo*, %struct.bufferinfo** %base, align 8
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %15, i32 0, i32 4
  %16 = load i32, i32* %readonly, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %18 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %18, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 6
  store i8* null, i8** %format, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %20 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %20, 56
  %cmp = icmp eq i32 %and16, 56
  br i1 %cmp, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %if.end.15
  %21 = load i32, i32* %baseflags, align 4
  %and18 = and i32 %21, 10
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %22 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %if.end.15
  %23 = load i32, i32* %flags.addr, align 4
  %and22 = and i32 %23, 88
  %cmp23 = icmp eq i32 %and22, 88
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %if.end.21
  %24 = load i32, i32* %baseflags, align 4
  %and25 = and i32 %24, 12
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.24
  %25 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.24, %if.end.21
  %26 = load i32, i32* %flags.addr, align 4
  %and29 = and i32 %26, 152
  %cmp30 = icmp eq i32 %and29, 152
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %if.end.28
  %27 = load i32, i32* %baseflags, align 4
  %and32 = and i32 %27, 14
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31
  %28 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.31, %if.end.28
  %29 = load i32, i32* %flags.addr, align 4
  %and36 = and i32 %29, 280
  %cmp37 = icmp eq i32 %and36, 280
  br i1 %cmp37, label %if.end.42, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %if.end.35
  %30 = load i32, i32* %baseflags, align 4
  %and39 = and i32 %30, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38
  %31 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.38, %if.end.35
  %32 = load i32, i32* %flags.addr, align 4
  %and43 = and i32 %32, 24
  %cmp44 = icmp eq i32 %and43, 24
  br i1 %cmp44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  %33 = load i32, i32* %baseflags, align 4
  %and46 = and i32 %33, 10
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.then.45
  %34 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.45
  %35 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %35, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.42
  %36 = load i32, i32* %flags.addr, align 4
  %and51 = and i32 %36, 8
  %cmp52 = icmp eq i32 %and51, 8
  br i1 %cmp52, label %if.end.58, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  %37 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %format54 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %37, i32 0, i32 6
  %38 = load i8*, i8** %format54, align 8
  %cmp55 = icmp ne i8* %38, null
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  %39 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %39, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.53
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 5
  store i32 1, i32* %ndim, align 4
  %41 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %41, i32 0, i32 7
  store i64* null, i64** %shape, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.50
  %42 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %43 = bitcast %struct.PyMemoryViewObject* %42 to %struct._object*
  %44 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj59 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %44, i32 0, i32 1
  store %struct._object* %43, %struct._object** %obj59, align 8
  %45 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %obj60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %45, i32 0, i32 1
  %46 = load %struct._object*, %struct._object** %obj60, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %48 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %48, i32 0, i32 4
  %49 = load i64, i64* %exports, align 8
  %inc61 = add i64 %49, 1
  store i64 %inc61, i64* %exports, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.56, %if.then.48, %if.then.41, %if.then.34, %if.then.27, %if.then.20, %if.then.10, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @memory_releasebuf(%struct.PyMemoryViewObject* %self, %struct.bufferinfo* %view) #0 {
entry:
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %exports = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 4
  %1 = load i64, i64* %exports, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %exports, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.unpacker* @struct_get_unpacker(i8* %fmt, i64 %itemsize) #0 {
entry:
  %retval = alloca %struct.unpacker*, align 8
  %fmt.addr = alloca i8*, align 8
  %itemsize.addr = alloca i64, align 8
  %structmodule = alloca %struct._object*, align 8
  %Struct = alloca %struct._object*, align 8
  %structobj = alloca %struct._object*, align 8
  %format = alloca %struct._object*, align 8
  %x = alloca %struct.unpacker*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_xdecref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  store %struct._object* null, %struct._object** %Struct, align 8
  store %struct._object* null, %struct._object** %structobj, align 8
  store %struct._object* null, %struct._object** %format, align 8
  store %struct.unpacker* null, %struct.unpacker** %x, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %structmodule, align 8
  %0 = load %struct._object*, %struct._object** %structmodule, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.unpacker* null, %struct.unpacker** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %structmodule, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %Struct, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %structmodule, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %Struct, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct.unpacker* null, %struct.unpacker** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  %call8 = call %struct.unpacker* @unpacker_new()
  store %struct.unpacker* %call8, %struct.unpacker** %x, align 8
  %10 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %cmp9 = icmp eq %struct.unpacker* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %error

if.end.11:                                        ; preds = %if.end.7
  %11 = load i8*, i8** %fmt.addr, align 8
  %call12 = call %struct._object* @PyBytes_FromString(i8* %11)
  store %struct._object* %call12, %struct._object** %format, align 8
  %12 = load %struct._object*, %struct._object** %format, align 8
  %cmp13 = icmp eq %struct._object* %12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %13 = load %struct._object*, %struct._object** %Struct, align 8
  %14 = load %struct._object*, %struct._object** %format, align 8
  %call16 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %13, %struct._object* %14, i8* null)
  store %struct._object* %call16, %struct._object** %structobj, align 8
  %15 = load %struct._object*, %struct._object** %structobj, align 8
  %cmp17 = icmp eq %struct._object* %15, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  br label %error

if.end.19:                                        ; preds = %if.end.15
  %16 = load %struct._object*, %struct._object** %structobj, align 8
  %call20 = call %struct._object* @PyObject_GetAttrString(%struct._object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0))
  %17 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %unpack_from = getelementptr inbounds %struct.unpacker, %struct.unpacker* %17, i32 0, i32 0
  store %struct._object* %call20, %struct._object** %unpack_from, align 8
  %18 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %unpack_from21 = getelementptr inbounds %struct.unpacker, %struct.unpacker* %18, i32 0, i32 0
  %19 = load %struct._object*, %struct._object** %unpack_from21, align 8
  %cmp22 = icmp eq %struct._object* %19, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  br label %error

if.end.24:                                        ; preds = %if.end.19
  %20 = load i64, i64* %itemsize.addr, align 8
  %call25 = call i8* @PyMem_Malloc(i64 %20)
  %21 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %item = getelementptr inbounds %struct.unpacker, %struct.unpacker* %21, i32 0, i32 2
  store i8* %call25, i8** %item, align 8
  %22 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %item26 = getelementptr inbounds %struct.unpacker, %struct.unpacker* %22, i32 0, i32 2
  %23 = load i8*, i8** %item26, align 8
  %cmp27 = icmp eq i8* %23, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %call29 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.30:                                        ; preds = %if.end.24
  %24 = load i64, i64* %itemsize.addr, align 8
  %25 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %itemsize31 = getelementptr inbounds %struct.unpacker, %struct.unpacker* %25, i32 0, i32 3
  store i64 %24, i64* %itemsize31, align 8
  %26 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %item32 = getelementptr inbounds %struct.unpacker, %struct.unpacker* %26, i32 0, i32 2
  %27 = load i8*, i8** %item32, align 8
  %28 = load i64, i64* %itemsize.addr, align 8
  %call33 = call %struct._object* @PyMemoryView_FromMemory(i8* %27, i64 %28, i32 512)
  %29 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %mview = getelementptr inbounds %struct.unpacker, %struct.unpacker* %29, i32 0, i32 1
  store %struct._object* %call33, %struct._object** %mview, align 8
  %30 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %mview34 = getelementptr inbounds %struct.unpacker, %struct.unpacker* %30, i32 0, i32 1
  %31 = load %struct._object*, %struct._object** %mview34, align 8
  %cmp35 = icmp eq %struct._object* %31, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  br label %error

if.end.37:                                        ; preds = %if.end.30
  br label %out

out:                                              ; preds = %error, %if.end.37
  br label %do.body.38

do.body.38:                                       ; preds = %out
  %32 = load %struct._object*, %struct._object** %Struct, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp39 = icmp ne %struct._object* %33, null
  br i1 %cmp39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %do.body.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp42, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %36, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %39(%struct._object* %40)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.body.38
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %41 = load %struct._object*, %struct._object** %format, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp55, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  %cmp56 = icmp ne %struct._object* %42, null
  br i1 %cmp56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp59, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %45, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %48(%struct._object* %49)
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
  %50 = load %struct._object*, %struct._object** %structobj, align 8
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp72, align 8
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  %cmp73 = icmp ne %struct._object* %51, null
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %do.body.71
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp76, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %54, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %57(%struct._object* %58)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.71
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %59 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  store %struct.unpacker* %59, %struct.unpacker** %retval
  br label %return

error:                                            ; preds = %if.then.36, %if.then.28, %if.then.23, %if.then.18, %if.then.14, %if.then.10
  %60 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  call void @unpacker_free(%struct.unpacker* %60)
  store %struct.unpacker* null, %struct.unpacker** %x, align 8
  br label %out

return:                                           ; preds = %do.end.87, %if.then.6, %if.then
  %61 = load %struct.unpacker*, %struct.unpacker** %retval
  ret %struct.unpacker* %61
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_struct_error_int() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %call = call i32 @PyErr_ExceptionMatches(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @unpack_cmp(i8* %p, i8* %q, i8 signext %fmt, %struct.unpacker* %unpack_p, %struct.unpacker* %unpack_q) #2 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %fmt.addr = alloca i8, align 1
  %unpack_p.addr = alloca %struct.unpacker*, align 8
  %unpack_q.addr = alloca %struct.unpacker*, align 8
  %equal = alloca i32, align 4
  %x = alloca i16, align 2
  %y = alloca i16, align 2
  %x16 = alloca i32, align 4
  %y17 = alloca i32, align 4
  %x23 = alloca i64, align 8
  %y24 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %y31 = alloca i8, align 1
  %x40 = alloca i16, align 2
  %y41 = alloca i16, align 2
  %x49 = alloca i32, align 4
  %y50 = alloca i32, align 4
  %x56 = alloca i64, align 8
  %y57 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %y64 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %y71 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %y78 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %y85 = alloca i64, align 8
  %x91 = alloca float, align 4
  %y92 = alloca float, align 4
  %x98 = alloca double, align 8
  %y99 = alloca double, align 8
  %x110 = alloca i8*, align 8
  %y111 = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  store i8 %fmt, i8* %fmt.addr, align 1
  store %struct.unpacker* %unpack_p, %struct.unpacker** %unpack_p.addr, align 8
  store %struct.unpacker* %unpack_q, %struct.unpacker** %unpack_q.addr, align 8
  %0 = load i8, i8* %fmt.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 66, label %sw.bb
    i32 98, label %sw.bb.4
    i32 104, label %sw.bb.9
    i32 105, label %sw.bb.14
    i32 108, label %sw.bb.21
    i32 63, label %sw.bb.28
    i32 72, label %sw.bb.38
    i32 73, label %sw.bb.47
    i32 76, label %sw.bb.54
    i32 113, label %sw.bb.61
    i32 81, label %sw.bb.68
    i32 110, label %sw.bb.75
    i32 78, label %sw.bb.82
    i32 102, label %sw.bb.89
    i32 100, label %sw.bb.96
    i32 99, label %sw.bb.103
    i32 80, label %sw.bb.108
    i32 95, label %sw.bb.115
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i8*, i8** %q.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %7 = load i8*, i8** %q.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv5, %conv6
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.9
  %9 = bitcast i16* %x to i8*
  %10 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 2, i32 1, i1 false)
  %11 = bitcast i16* %y to i8*
  %12 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 2, i32 1, i1 false)
  %13 = load i16, i16* %x, align 2
  %conv10 = sext i16 %13 to i32
  %14 = load i16, i16* %y, align 2
  %conv11 = sext i16 %14 to i32
  %cmp12 = icmp eq i32 %conv10, %conv11
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, i32* %equal, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i32, i32* %equal, align 4
  store i32 %15, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  br label %do.body.15

do.body.15:                                       ; preds = %sw.bb.14
  %16 = bitcast i32* %x16 to i8*
  %17 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 4, i32 1, i1 false)
  %18 = bitcast i32* %y17 to i8*
  %19 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 4, i32 1, i1 false)
  %20 = load i32, i32* %x16, align 4
  %21 = load i32, i32* %y17, align 4
  %cmp18 = icmp eq i32 %20, %21
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %equal, align 4
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.15
  %22 = load i32, i32* %equal, align 4
  store i32 %22, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  br label %do.body.22

do.body.22:                                       ; preds = %sw.bb.21
  %23 = bitcast i64* %x23 to i8*
  %24 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 1, i1 false)
  %25 = bitcast i64* %y24 to i8*
  %26 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 1, i1 false)
  %27 = load i64, i64* %x23, align 8
  %28 = load i64, i64* %y24, align 8
  %cmp25 = icmp eq i64 %27, %28
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %equal, align 4
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.22
  %29 = load i32, i32* %equal, align 4
  store i32 %29, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %entry
  br label %do.body.29

do.body.29:                                       ; preds = %sw.bb.28
  %30 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x30, i8* %30, i64 1, i32 1, i1 false)
  %31 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %y31, i8* %31, i64 1, i32 1, i1 false)
  %32 = load i8, i8* %x30, align 1
  %tobool = trunc i8 %32 to i1
  %conv32 = zext i1 %tobool to i32
  %33 = load i8, i8* %y31, align 1
  %tobool33 = trunc i8 %33 to i1
  %conv34 = zext i1 %tobool33 to i32
  %cmp35 = icmp eq i32 %conv32, %conv34
  %conv36 = zext i1 %cmp35 to i32
  store i32 %conv36, i32* %equal, align 4
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.29
  %34 = load i32, i32* %equal, align 4
  store i32 %34, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  br label %do.body.39

do.body.39:                                       ; preds = %sw.bb.38
  %35 = bitcast i16* %x40 to i8*
  %36 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 2, i32 1, i1 false)
  %37 = bitcast i16* %y41 to i8*
  %38 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 2, i32 1, i1 false)
  %39 = load i16, i16* %x40, align 2
  %conv42 = zext i16 %39 to i32
  %40 = load i16, i16* %y41, align 2
  %conv43 = zext i16 %40 to i32
  %cmp44 = icmp eq i32 %conv42, %conv43
  %conv45 = zext i1 %cmp44 to i32
  store i32 %conv45, i32* %equal, align 4
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.39
  %41 = load i32, i32* %equal, align 4
  store i32 %41, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %entry
  br label %do.body.48

do.body.48:                                       ; preds = %sw.bb.47
  %42 = bitcast i32* %x49 to i8*
  %43 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 4, i32 1, i1 false)
  %44 = bitcast i32* %y50 to i8*
  %45 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 4, i32 1, i1 false)
  %46 = load i32, i32* %x49, align 4
  %47 = load i32, i32* %y50, align 4
  %cmp51 = icmp eq i32 %46, %47
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %equal, align 4
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.48
  %48 = load i32, i32* %equal, align 4
  store i32 %48, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %entry
  br label %do.body.55

do.body.55:                                       ; preds = %sw.bb.54
  %49 = bitcast i64* %x56 to i8*
  %50 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 1, i1 false)
  %51 = bitcast i64* %y57 to i8*
  %52 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 8, i32 1, i1 false)
  %53 = load i64, i64* %x56, align 8
  %54 = load i64, i64* %y57, align 8
  %cmp58 = icmp eq i64 %53, %54
  %conv59 = zext i1 %cmp58 to i32
  store i32 %conv59, i32* %equal, align 4
  br label %do.end.60

do.end.60:                                        ; preds = %do.body.55
  %55 = load i32, i32* %equal, align 4
  store i32 %55, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %entry
  br label %do.body.62

do.body.62:                                       ; preds = %sw.bb.61
  %56 = bitcast i64* %x63 to i8*
  %57 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 8, i32 1, i1 false)
  %58 = bitcast i64* %y64 to i8*
  %59 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 8, i32 1, i1 false)
  %60 = load i64, i64* %x63, align 8
  %61 = load i64, i64* %y64, align 8
  %cmp65 = icmp eq i64 %60, %61
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, i32* %equal, align 4
  br label %do.end.67

do.end.67:                                        ; preds = %do.body.62
  %62 = load i32, i32* %equal, align 4
  store i32 %62, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %entry
  br label %do.body.69

do.body.69:                                       ; preds = %sw.bb.68
  %63 = bitcast i64* %x70 to i8*
  %64 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 1, i1 false)
  %65 = bitcast i64* %y71 to i8*
  %66 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 1, i1 false)
  %67 = load i64, i64* %x70, align 8
  %68 = load i64, i64* %y71, align 8
  %cmp72 = icmp eq i64 %67, %68
  %conv73 = zext i1 %cmp72 to i32
  store i32 %conv73, i32* %equal, align 4
  br label %do.end.74

do.end.74:                                        ; preds = %do.body.69
  %69 = load i32, i32* %equal, align 4
  store i32 %69, i32* %retval
  br label %return

sw.bb.75:                                         ; preds = %entry
  br label %do.body.76

do.body.76:                                       ; preds = %sw.bb.75
  %70 = bitcast i64* %x77 to i8*
  %71 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 8, i32 1, i1 false)
  %72 = bitcast i64* %y78 to i8*
  %73 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 1, i1 false)
  %74 = load i64, i64* %x77, align 8
  %75 = load i64, i64* %y78, align 8
  %cmp79 = icmp eq i64 %74, %75
  %conv80 = zext i1 %cmp79 to i32
  store i32 %conv80, i32* %equal, align 4
  br label %do.end.81

do.end.81:                                        ; preds = %do.body.76
  %76 = load i32, i32* %equal, align 4
  store i32 %76, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %entry
  br label %do.body.83

do.body.83:                                       ; preds = %sw.bb.82
  %77 = bitcast i64* %x84 to i8*
  %78 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 8, i32 1, i1 false)
  %79 = bitcast i64* %y85 to i8*
  %80 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 1, i1 false)
  %81 = load i64, i64* %x84, align 8
  %82 = load i64, i64* %y85, align 8
  %cmp86 = icmp eq i64 %81, %82
  %conv87 = zext i1 %cmp86 to i32
  store i32 %conv87, i32* %equal, align 4
  br label %do.end.88

do.end.88:                                        ; preds = %do.body.83
  %83 = load i32, i32* %equal, align 4
  store i32 %83, i32* %retval
  br label %return

sw.bb.89:                                         ; preds = %entry
  br label %do.body.90

do.body.90:                                       ; preds = %sw.bb.89
  %84 = bitcast float* %x91 to i8*
  %85 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 4, i32 1, i1 false)
  %86 = bitcast float* %y92 to i8*
  %87 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 4, i32 1, i1 false)
  %88 = load float, float* %x91, align 4
  %89 = load float, float* %y92, align 4
  %cmp93 = fcmp oeq float %88, %89
  %conv94 = zext i1 %cmp93 to i32
  store i32 %conv94, i32* %equal, align 4
  br label %do.end.95

do.end.95:                                        ; preds = %do.body.90
  %90 = load i32, i32* %equal, align 4
  store i32 %90, i32* %retval
  br label %return

sw.bb.96:                                         ; preds = %entry
  br label %do.body.97

do.body.97:                                       ; preds = %sw.bb.96
  %91 = bitcast double* %x98 to i8*
  %92 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 8, i32 1, i1 false)
  %93 = bitcast double* %y99 to i8*
  %94 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 8, i32 1, i1 false)
  %95 = load double, double* %x98, align 8
  %96 = load double, double* %y99, align 8
  %cmp100 = fcmp oeq double %95, %96
  %conv101 = zext i1 %cmp100 to i32
  store i32 %conv101, i32* %equal, align 4
  br label %do.end.102

do.end.102:                                       ; preds = %do.body.97
  %97 = load i32, i32* %equal, align 4
  store i32 %97, i32* %retval
  br label %return

sw.bb.103:                                        ; preds = %entry
  %98 = load i8*, i8** %p.addr, align 8
  %99 = load i8, i8* %98, align 1
  %conv104 = sext i8 %99 to i32
  %100 = load i8*, i8** %q.addr, align 8
  %101 = load i8, i8* %100, align 1
  %conv105 = sext i8 %101 to i32
  %cmp106 = icmp eq i32 %conv104, %conv105
  %conv107 = zext i1 %cmp106 to i32
  store i32 %conv107, i32* %retval
  br label %return

sw.bb.108:                                        ; preds = %entry
  br label %do.body.109

do.body.109:                                      ; preds = %sw.bb.108
  %102 = bitcast i8** %x110 to i8*
  %103 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 8, i32 1, i1 false)
  %104 = bitcast i8** %y111 to i8*
  %105 = load i8*, i8** %q.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 8, i32 1, i1 false)
  %106 = load i8*, i8** %x110, align 8
  %107 = load i8*, i8** %y111, align 8
  %cmp112 = icmp eq i8* %106, %107
  %conv113 = zext i1 %cmp112 to i32
  store i32 %conv113, i32* %equal, align 4
  br label %do.end.114

do.end.114:                                       ; preds = %do.body.109
  %108 = load i32, i32* %equal, align 4
  store i32 %108, i32* %retval
  br label %return

sw.bb.115:                                        ; preds = %entry
  %109 = load i8*, i8** %p.addr, align 8
  %110 = load i8*, i8** %q.addr, align 8
  %111 = load %struct.unpacker*, %struct.unpacker** %unpack_p.addr, align 8
  %112 = load %struct.unpacker*, %struct.unpacker** %unpack_q.addr, align 8
  %call = call i32 @struct_unpack_cmp(i8* %109, i8* %110, %struct.unpacker* %111, %struct.unpacker* %112)
  store i32 %call, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %113 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.115, %do.end.114, %sw.bb.103, %do.end.102, %do.end.95, %do.end.88, %do.end.81, %do.end.74, %do.end.67, %do.end.60, %do.end.53, %do.end.46, %do.end.37, %do.end.27, %do.end.20, %do.end, %sw.bb.4, %sw.bb
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_base(i8* %p, i8* %q, i64* %shape, i64* %pstrides, i64* %psuboffsets, i64* %qstrides, i64* %qsuboffsets, i8 signext %fmt, %struct.unpacker* %unpack_p, %struct.unpacker* %unpack_q) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %shape.addr = alloca i64*, align 8
  %pstrides.addr = alloca i64*, align 8
  %psuboffsets.addr = alloca i64*, align 8
  %qstrides.addr = alloca i64*, align 8
  %qsuboffsets.addr = alloca i64*, align 8
  %fmt.addr = alloca i8, align 1
  %unpack_p.addr = alloca %struct.unpacker*, align 8
  %unpack_q.addr = alloca %struct.unpacker*, align 8
  %i = alloca i64, align 8
  %equal = alloca i32, align 4
  %xp = alloca i8*, align 8
  %xq = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %pstrides, i64** %pstrides.addr, align 8
  store i64* %psuboffsets, i64** %psuboffsets.addr, align 8
  store i64* %qstrides, i64** %qstrides.addr, align 8
  store i64* %qsuboffsets, i64** %qsuboffsets.addr, align 8
  store i8 %fmt, i8* %fmt.addr, align 1
  store %struct.unpacker* %unpack_p, %struct.unpacker** %unpack_p.addr, align 8
  store %struct.unpacker* %unpack_q, %struct.unpacker** %unpack_q.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %cmp = icmp slt i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %psuboffsets.addr, align 8
  %tobool = icmp ne i64* %3, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i64*, i64** %psuboffsets.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp sge i64 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %p.addr, align 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = load i64*, i64** %psuboffsets.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx3, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %11 = load i8*, i8** %p.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %11, %cond.false ]
  store i8* %cond, i8** %xp, align 8
  %12 = load i64*, i64** %qsuboffsets.addr, align 8
  %tobool4 = icmp ne i64* %12, null
  br i1 %tobool4, label %land.lhs.true.5, label %cond.false.11

land.lhs.true.5:                                  ; preds = %cond.end
  %13 = load i64*, i64** %qsuboffsets.addr, align 8
  %arrayidx6 = getelementptr i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp sge i64 %14, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %land.lhs.true.5
  %15 = load i8*, i8** %q.addr, align 8
  %16 = bitcast i8* %15 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = load i64*, i64** %qsuboffsets.addr, align 8
  %arrayidx9 = getelementptr i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx9, align 8
  %add.ptr10 = getelementptr i8, i8* %17, i64 %19
  br label %cond.end.12

cond.false.11:                                    ; preds = %land.lhs.true.5, %cond.end
  %20 = load i8*, i8** %q.addr, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.8
  %cond13 = phi i8* [ %add.ptr10, %cond.true.8 ], [ %20, %cond.false.11 ]
  store i8* %cond13, i8** %xq, align 8
  %21 = load i8*, i8** %xp, align 8
  %22 = load i8*, i8** %xq, align 8
  %23 = load i8, i8* %fmt.addr, align 1
  %24 = load %struct.unpacker*, %struct.unpacker** %unpack_p.addr, align 8
  %25 = load %struct.unpacker*, %struct.unpacker** %unpack_q.addr, align 8
  %call = call i32 @unpack_cmp(i8* %21, i8* %22, i8 signext %23, %struct.unpacker* %24, %struct.unpacker* %25)
  store i32 %call, i32* %equal, align 4
  %26 = load i32, i32* %equal, align 4
  %cmp14 = icmp sle i32 %26, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.12
  %27 = load i32, i32* %equal, align 4
  store i32 %27, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i64*, i64** %pstrides.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx15, align 8
  %30 = load i8*, i8** %p.addr, align 8
  %add.ptr16 = getelementptr i8, i8* %30, i64 %29
  store i8* %add.ptr16, i8** %p.addr, align 8
  %31 = load i64*, i64** %qstrides.addr, align 8
  %arrayidx17 = getelementptr i64, i64* %31, i64 0
  %32 = load i64, i64* %arrayidx17, align 8
  %33 = load i8*, i8** %q.addr, align 8
  %add.ptr18 = getelementptr i8, i8* %33, i64 %32
  store i8* %add.ptr18, i8** %q.addr, align 8
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_rec(i8* %p, i8* %q, i64 %ndim, i64* %shape, i64* %pstrides, i64* %psuboffsets, i64* %qstrides, i64* %qsuboffsets, i8 signext %fmt, %struct.unpacker* %unpack_p, %struct.unpacker* %unpack_q) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %ndim.addr = alloca i64, align 8
  %shape.addr = alloca i64*, align 8
  %pstrides.addr = alloca i64*, align 8
  %psuboffsets.addr = alloca i64*, align 8
  %qstrides.addr = alloca i64*, align 8
  %qsuboffsets.addr = alloca i64*, align 8
  %fmt.addr = alloca i8, align 1
  %unpack_p.addr = alloca %struct.unpacker*, align 8
  %unpack_q.addr = alloca %struct.unpacker*, align 8
  %i = alloca i64, align 8
  %equal = alloca i32, align 4
  %xp = alloca i8*, align 8
  %xq = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %pstrides, i64** %pstrides.addr, align 8
  store i64* %psuboffsets, i64** %psuboffsets.addr, align 8
  store i64* %qstrides, i64** %qstrides.addr, align 8
  store i64* %qsuboffsets, i64** %qsuboffsets.addr, align 8
  store i8 %fmt, i8* %fmt.addr, align 1
  store %struct.unpacker* %unpack_p, %struct.unpacker** %unpack_p.addr, align 8
  store %struct.unpacker* %unpack_q, %struct.unpacker** %unpack_q.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8*, i8** %q.addr, align 8
  %3 = load i64*, i64** %shape.addr, align 8
  %4 = load i64*, i64** %pstrides.addr, align 8
  %5 = load i64*, i64** %psuboffsets.addr, align 8
  %6 = load i64*, i64** %qstrides.addr, align 8
  %7 = load i64*, i64** %qsuboffsets.addr, align 8
  %8 = load i8, i8* %fmt.addr, align 1
  %9 = load %struct.unpacker*, %struct.unpacker** %unpack_p.addr, align 8
  %10 = load %struct.unpacker*, %struct.unpacker** %unpack_q.addr, align 8
  %call = call i32 @cmp_base(i8* %1, i8* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i8 signext %8, %struct.unpacker* %9, %struct.unpacker* %10)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp slt i64 %11, %13
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64*, i64** %psuboffsets.addr, align 8
  %tobool = icmp ne i64* %14, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %15 = load i64*, i64** %psuboffsets.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx2, align 8
  %cmp3 = icmp sge i64 %16, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %17 = load i8*, i8** %p.addr, align 8
  %18 = bitcast i8* %17 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = load i64*, i64** %psuboffsets.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %20, i64 0
  %21 = load i64, i64* %arrayidx4, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %21
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %22 = load i8*, i8** %p.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %22, %cond.false ]
  store i8* %cond, i8** %xp, align 8
  %23 = load i64*, i64** %qsuboffsets.addr, align 8
  %tobool5 = icmp ne i64* %23, null
  br i1 %tobool5, label %land.lhs.true.6, label %cond.false.12

land.lhs.true.6:                                  ; preds = %cond.end
  %24 = load i64*, i64** %qsuboffsets.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %24, i64 0
  %25 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp sge i64 %25, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %land.lhs.true.6
  %26 = load i8*, i8** %q.addr, align 8
  %27 = bitcast i8* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = load i64*, i64** %qsuboffsets.addr, align 8
  %arrayidx10 = getelementptr i64, i64* %29, i64 0
  %30 = load i64, i64* %arrayidx10, align 8
  %add.ptr11 = getelementptr i8, i8* %28, i64 %30
  br label %cond.end.13

cond.false.12:                                    ; preds = %land.lhs.true.6, %cond.end
  %31 = load i8*, i8** %q.addr, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i8* [ %add.ptr11, %cond.true.9 ], [ %31, %cond.false.12 ]
  store i8* %cond14, i8** %xq, align 8
  %32 = load i8*, i8** %xp, align 8
  %33 = load i8*, i8** %xq, align 8
  %34 = load i64, i64* %ndim.addr, align 8
  %sub = sub i64 %34, 1
  %35 = load i64*, i64** %shape.addr, align 8
  %add.ptr15 = getelementptr i64, i64* %35, i64 1
  %36 = load i64*, i64** %pstrides.addr, align 8
  %add.ptr16 = getelementptr i64, i64* %36, i64 1
  %37 = load i64*, i64** %psuboffsets.addr, align 8
  %tobool17 = icmp ne i64* %37, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.13
  %38 = load i64*, i64** %psuboffsets.addr, align 8
  %add.ptr19 = getelementptr i64, i64* %38, i64 1
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.13
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i64* [ %add.ptr19, %cond.true.18 ], [ null, %cond.false.20 ]
  %39 = load i64*, i64** %qstrides.addr, align 8
  %add.ptr23 = getelementptr i64, i64* %39, i64 1
  %40 = load i64*, i64** %qsuboffsets.addr, align 8
  %tobool24 = icmp ne i64* %40, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.21
  %41 = load i64*, i64** %qsuboffsets.addr, align 8
  %add.ptr26 = getelementptr i64, i64* %41, i64 1
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.21
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i64* [ %add.ptr26, %cond.true.25 ], [ null, %cond.false.27 ]
  %42 = load i8, i8* %fmt.addr, align 1
  %43 = load %struct.unpacker*, %struct.unpacker** %unpack_p.addr, align 8
  %44 = load %struct.unpacker*, %struct.unpacker** %unpack_q.addr, align 8
  %call30 = call i32 @cmp_rec(i8* %32, i8* %33, i64 %sub, i64* %add.ptr15, i64* %add.ptr16, i64* %cond22, i64* %add.ptr23, i64* %cond29, i8 signext %42, %struct.unpacker* %43, %struct.unpacker* %44)
  store i32 %call30, i32* %equal, align 4
  %45 = load i32, i32* %equal, align 4
  %cmp31 = icmp sle i32 %45, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end.28
  %46 = load i32, i32* %equal, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.33:                                        ; preds = %cond.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %47 = load i64*, i64** %pstrides.addr, align 8
  %arrayidx34 = getelementptr i64, i64* %47, i64 0
  %48 = load i64, i64* %arrayidx34, align 8
  %49 = load i8*, i8** %p.addr, align 8
  %add.ptr35 = getelementptr i8, i8* %49, i64 %48
  store i8* %add.ptr35, i8** %p.addr, align 8
  %50 = load i64*, i64** %qstrides.addr, align 8
  %arrayidx36 = getelementptr i64, i64* %50, i64 0
  %51 = load i64, i64* %arrayidx36, align 8
  %52 = load i8*, i8** %q.addr, align 8
  %add.ptr37 = getelementptr i8, i8* %52, i64 %51
  store i8* %add.ptr37, i8** %q.addr, align 8
  %53 = load i64, i64* %i, align 8
  %inc = add i64 %53, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.32, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal void @unpacker_free(%struct.unpacker* %x) #0 {
entry:
  %x.addr = alloca %struct.unpacker*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  store %struct.unpacker* %x, %struct.unpacker** %x.addr, align 8
  %0 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %tobool = icmp ne %struct.unpacker* %0, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %unpack_from = getelementptr inbounds %struct.unpacker, %struct.unpacker* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %unpack_from, align 8
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
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
  %11 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %mview = getelementptr inbounds %struct.unpacker, %struct.unpacker* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %mview, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp12, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %16, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %19(%struct._object* %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.7
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %21 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %item = getelementptr inbounds %struct.unpacker, %struct.unpacker* %21, i32 0, i32 2
  %22 = load i8*, i8** %item, align 8
  call void @PyMem_Free(i8* %22)
  %23 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %24 = bitcast %struct.unpacker* %23 to i8*
  call void @PyMem_Free(i8* %24)
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %entry
  ret void
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.unpacker* @unpacker_new() #0 {
entry:
  %retval = alloca %struct.unpacker*, align 8
  %x = alloca %struct.unpacker*, align 8
  %call = call i8* @PyMem_Malloc(i64 32)
  %0 = bitcast i8* %call to %struct.unpacker*
  store %struct.unpacker* %0, %struct.unpacker** %x, align 8
  %1 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %cmp = icmp eq %struct.unpacker* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct.unpacker* null, %struct.unpacker** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %unpack_from = getelementptr inbounds %struct.unpacker, %struct.unpacker* %2, i32 0, i32 0
  store %struct._object* null, %struct._object** %unpack_from, align 8
  %3 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %mview = getelementptr inbounds %struct.unpacker, %struct.unpacker* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %mview, align 8
  %4 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %item = getelementptr inbounds %struct.unpacker, %struct.unpacker* %4, i32 0, i32 2
  store i8* null, i8** %item, align 8
  %5 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  %itemsize = getelementptr inbounds %struct.unpacker, %struct.unpacker* %5, i32 0, i32 3
  store i64 0, i64* %itemsize, align 8
  %6 = load %struct.unpacker*, %struct.unpacker** %x, align 8
  store %struct.unpacker* %6, %struct.unpacker** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.unpacker*, %struct.unpacker** %retval
  ret %struct.unpacker* %7
}

declare %struct._object* @PyBytes_FromString(i8*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @struct_unpack_cmp(i8* %p, i8* %q, %struct.unpacker* %unpack_p, %struct.unpacker* %unpack_q) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %unpack_p.addr = alloca %struct.unpacker*, align 8
  %unpack_q.addr = alloca %struct.unpacker*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  store %struct.unpacker* %unpack_p, %struct.unpacker** %unpack_p.addr, align 8
  store %struct.unpacker* %unpack_q, %struct.unpacker** %unpack_q.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load %struct.unpacker*, %struct.unpacker** %unpack_p.addr, align 8
  %call = call %struct._object* @struct_unpack_single(i8* %0, %struct.unpacker* %1)
  store %struct._object* %call, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %q.addr, align 8
  %4 = load %struct.unpacker*, %struct.unpacker** %unpack_q.addr, align 8
  %call1 = call %struct._object* @struct_unpack_single(i8* %3, %struct.unpacker* %4)
  store %struct._object* %call1, %struct._object** %w, align 8
  %5 = load %struct._object*, %struct._object** %w, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %v, align 8
  %14 = load %struct._object*, %struct._object** %w, align 8
  %call8 = call i32 @PyObject_RichCompareBool(%struct._object* %13, %struct._object* %14, i32 2)
  store i32 %call8, i32* %ret, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp10, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %17, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %20(%struct._object* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %22 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %24, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %27(%struct._object* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %do.end.30, %do.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @struct_unpack_single(i8* %ptr, %struct.unpacker* %x) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %x.addr = alloca %struct.unpacker*, align 8
  %v = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store %struct.unpacker* %x, %struct.unpacker** %x.addr, align 8
  %0 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %item = getelementptr inbounds %struct.unpacker, %struct.unpacker* %0, i32 0, i32 2
  %1 = load i8*, i8** %item, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %itemsize = getelementptr inbounds %struct.unpacker, %struct.unpacker* %3, i32 0, i32 3
  %4 = load i64, i64* %itemsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %4, i32 1, i1 false)
  %5 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %unpack_from = getelementptr inbounds %struct.unpacker, %struct.unpacker* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %unpack_from, align 8
  %7 = load %struct.unpacker*, %struct.unpacker** %x.addr, align 8
  %mview = getelementptr inbounds %struct.unpacker, %struct.unpacker* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %mview, align 8
  %call = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %6, %struct._object* %8, i8* null)
  store %struct._object* %call, %struct._object** %v, align 8
  %9 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %v, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %v, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %15 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %15, %struct._object** %tmp, align 8
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %18 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %25 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_release(%struct.PyMemoryViewObject* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call = call i32 @_memory_release(%struct.PyMemoryViewObject* %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_tobytes(%struct.PyMemoryViewObject* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  %src = alloca %struct.bufferinfo*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view, %struct.bufferinfo** %src, align 8
  store %struct._object* null, %struct._object** %bytes, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags1, align 4
  %and2 = and i32 %5, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %7, i32 0, i32 3
  %8 = load i32, i32* %flags4, align 4
  %and5 = and i32 %8, 10
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %10, i64 %12)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len9, align 8
  %call10 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %14)
  store %struct._object* %call10, %struct._object** %bytes, align 8
  %15 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp = icmp eq %struct._object* %15, null
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** %bytes, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %src, align 8
  %call13 = call i32 @buffer_to_contiguous(i8* %arraydecay, %struct.bufferinfo* %18, i8 signext 67)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %19 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %26 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end, %if.then.11, %if.then.7, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_tolist(%struct.PyMemoryViewObject* %mv, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mv.addr = alloca %struct.PyMemoryViewObject*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %fmt = alloca i8*, align 8
  store %struct.PyMemoryViewObject* %mv, %struct.PyMemoryViewObject** %mv.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags2, align 4
  %and3 = and i32 %5, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %call = call i8* @adjust_fmt(%struct.bufferinfo* %7)
  store i8* %call, i8** %fmt, align 8
  %8 = load i8*, i8** %fmt, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 5
  %10 = load i32, i32* %ndim, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 0
  %12 = load i8*, i8** %buf, align 8
  %13 = load i8*, i8** %fmt, align 8
  %call9 = call %struct._object* @unpack_single(i8* %12, i8* %13)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 5
  %15 = load i32, i32* %ndim10, align 4
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf13, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 7
  %19 = load i64*, i64** %shape, align 8
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 8
  %21 = load i64*, i64** %strides, align 8
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 9
  %23 = load i64*, i64** %suboffsets, align 8
  %24 = load i8*, i8** %fmt, align 8
  %call14 = call %struct._object* @tolist_base(i8* %17, i64* %19, i64* %21, i64* %23, i8* %24)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.else.15:                                       ; preds = %if.else
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %buf16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 0
  %26 = load i8*, i8** %buf16, align 8
  %27 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %27, i32 0, i32 5
  %28 = load i32, i32* %ndim17, align 4
  %conv = sext i32 %28 to i64
  %29 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape18 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %29, i32 0, i32 7
  %30 = load i64*, i64** %shape18, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides19 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 8
  %32 = load i64*, i64** %strides19, align 8
  %33 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets20 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %33, i32 0, i32 9
  %34 = load i64*, i64** %suboffsets20, align 8
  %35 = load i8*, i8** %fmt, align 8
  %call21 = call %struct._object* @tolist_rec(i8* %26, i64 %conv, i64* %30, i64* %32, i64* %34, i8* %35)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.12, %if.then.8, %if.then.5, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_cast(%struct.PyMemoryViewObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %mv = alloca %struct.PyMemoryViewObject*, align 8
  %shape = alloca %struct._object*, align 8
  %format = alloca %struct._object*, align 8
  %ndim = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct.PyMemoryViewObject* null, %struct.PyMemoryViewObject** %mv, align 8
  store %struct._object* null, %struct._object** %shape, align 8
  store i64 1, i64* %ndim, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @memory_cast.kwlist, i32 0, i32 0), %struct._object** %format, %struct._object** %shape)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %format, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and7 = and i64 %10, 268435456
  %cmp = icmp ne i64 %and7, 0
  br i1 %cmp, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %12 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags10 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %12, i32 0, i32 3
  %13 = load i32, i32* %flags10, align 4
  %and11 = and i32 %13, 10
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %15 = load %struct._object*, %struct._object** %shape, align 8
  %tobool15 = icmp ne %struct._object* %15, null
  br i1 %tobool15, label %land.lhs.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.14
  %16 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %16, i32 0, i32 5
  %ndim17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %17 = load i32, i32* %ndim17, align 4
  %cmp18 = icmp ne i32 %17, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %lor.lhs.false.16, %if.end.14
  %18 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %call19 = call i32 @zero_in_shape(%struct.PyMemoryViewObject* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %lor.lhs.false.16
  %20 = load %struct._object*, %struct._object** %shape, align 8
  %tobool23 = icmp ne %struct._object* %20, null
  br i1 %tobool23, label %if.then.24, label %if.end.51

if.then.24:                                       ; preds = %if.end.22
  %21 = load %struct._object*, %struct._object** %shape, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags26, align 8
  %and27 = and i64 %23, 33554432
  %cmp28 = icmp ne i64 %and27, 0
  br i1 %cmp28, label %if.end.35, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.then.24
  %24 = load %struct._object*, %struct._object** %shape, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_flags31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19
  %26 = load i64, i64* %tp_flags31, align 8
  %and32 = and i64 %26, 67108864
  %cmp33 = icmp ne i64 %and32, 0
  br i1 %cmp33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.29
  %27 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.29, %if.then.24
  %28 = load %struct._object*, %struct._object** %shape, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_flags37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags37, align 8
  %and38 = and i64 %30, 33554432
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %31 = load %struct._object*, %struct._object** %shape, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.35
  %34 = load %struct._object*, %struct._object** %shape, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyVarObject*
  %ob_size40 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %35, i32 0, i32 1
  %36 = load i64, i64* %ob_size40, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %36, %cond.false ]
  store i64 %cond, i64* %ndim, align 8
  %37 = load i64, i64* %ndim, align 8
  %cmp41 = icmp sgt i64 %37, 64
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %cond.end
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %cond.end
  %39 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view44 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %39, i32 0, i32 5
  %ndim45 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view44, i32 0, i32 5
  %40 = load i32, i32* %ndim45, align 4
  %cmp46 = icmp ne i32 %40, 1
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.50

land.lhs.true.47:                                 ; preds = %if.end.43
  %41 = load i64, i64* %ndim, align 8
  %cmp48 = icmp ne i64 %41, 1
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.47
  %42 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.47, %if.end.43
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.22
  %43 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf52 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %43, i32 0, i32 1
  %44 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf52, align 8
  %45 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view53 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %45, i32 0, i32 5
  %46 = load i64, i64* %ndim, align 8
  %cmp54 = icmp eq i64 %46, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.end.51
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.end.51
  %47 = load i64, i64* %ndim, align 8
  %conv = trunc i64 %47 to i32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ 1, %cond.true.55 ], [ %conv, %cond.false.56 ]
  %call59 = call %struct._object* @mbuf_add_incomplete_view(%struct._PyManagedBufferObject* %44, %struct.bufferinfo* %view53, i32 %cond58)
  %48 = bitcast %struct._object* %call59 to %struct.PyMemoryViewObject*
  store %struct.PyMemoryViewObject* %48, %struct.PyMemoryViewObject** %mv, align 8
  %49 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %cmp60 = icmp eq %struct.PyMemoryViewObject* %49, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %cond.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %cond.end.57
  %50 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %51 = load %struct._object*, %struct._object** %format, align 8
  %call64 = call i32 @cast_to_1D(%struct.PyMemoryViewObject* %50, %struct._object* %51)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  br label %error

if.end.68:                                        ; preds = %if.end.63
  %52 = load %struct._object*, %struct._object** %shape, align 8
  %tobool69 = icmp ne %struct._object* %52, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.76

land.lhs.true.70:                                 ; preds = %if.end.68
  %53 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %54 = load %struct._object*, %struct._object** %shape, align 8
  %55 = load i64, i64* %ndim, align 8
  %conv71 = trunc i64 %55 to i32
  %call72 = call i32 @cast_to_ND(%struct.PyMemoryViewObject* %53, %struct._object* %54, i32 %conv71)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.70
  br label %error

if.end.76:                                        ; preds = %land.lhs.true.70, %if.end.68
  %56 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %57 = bitcast %struct.PyMemoryViewObject* %56 to %struct._object*
  store %struct._object* %57, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.75, %if.then.67
  br label %do.body

do.body:                                          ; preds = %error
  %58 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv, align 8
  %59 = bitcast %struct.PyMemoryViewObject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %_py_decref_tmp, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %61, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp77 = icmp ne i64 %dec, 0
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %do.body
  br label %if.end.81

if.else:                                          ; preds = %do.body
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %64(%struct._object* %65)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.79
  br label %do.end

do.end:                                           ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.76, %if.then.62, %if.then.49, %if.then.42, %if.then.34, %if.then.21, %if.then.13, %if.then.8, %if.then.5, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_enter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMemoryViewObject*
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyMemoryViewObject*
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %4, i32 0, i32 1
  %5 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %5, i32 0, i32 1
  %6 = load i32, i32* %flags1, align 4
  %and2 = and i32 %6, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyMemoryViewObject*
  %call = call %struct._object* @memory_release(%struct.PyMemoryViewObject* %1, %struct._object* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tolist_base(i8* %ptr, i64* %shape, i64* %strides, i64* %suboffsets, i8* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %shape.addr = alloca i64*, align 8
  %strides.addr = alloca i64*, align 8
  %suboffsets.addr = alloca i64*, align 8
  %fmt.addr = alloca i8*, align 8
  %lst = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %xptr = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %strides, i64** %strides.addr, align 8
  store i64* %suboffsets, i64** %suboffsets.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %call = call %struct._object* @PyList_New(i64 %1)
  store %struct._object* %call, %struct._object** %lst, align 8
  %2 = load %struct._object*, %struct._object** %lst, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %shape.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** %suboffsets.addr, align 8
  %tobool = icmp ne i64* %6, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx3, align 8
  %cmp4 = icmp sge i64 %8, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %ptr.addr, align 8
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx5, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %14 = load i8*, i8** %ptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %14, %cond.false ]
  store i8* %cond, i8** %xptr, align 8
  %15 = load i8*, i8** %xptr, align 8
  %16 = load i8*, i8** %fmt.addr, align 8
  %call6 = call %struct._object* @unpack_single(i8* %15, i8* %16)
  store %struct._object* %call6, %struct._object** %item, align 8
  %17 = load %struct._object*, %struct._object** %item, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %18 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %cond.end
  %25 = load %struct._object*, %struct._object** %item, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._object*, %struct._object** %lst, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %28, i32 0, i32 1
  %29 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx13 = getelementptr %struct._object*, %struct._object** %29, i64 %26
  store %struct._object* %25, %struct._object** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %30 = load i64*, i64** %strides.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %30, i64 0
  %31 = load i64, i64* %arrayidx14, align 8
  %32 = load i8*, i8** %ptr.addr, align 8
  %add.ptr15 = getelementptr i8, i8* %32, i64 %31
  store i8* %add.ptr15, i8** %ptr.addr, align 8
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tolist_rec(i8* %ptr, i64 %ndim, i64* %shape, i64* %strides, i64* %suboffsets, i8* %fmt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %ndim.addr = alloca i64, align 8
  %shape.addr = alloca i64*, align 8
  %strides.addr = alloca i64*, align 8
  %suboffsets.addr = alloca i64*, align 8
  %fmt.addr = alloca i8*, align 8
  %lst = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %xptr = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store i64* %strides, i64** %strides.addr, align 8
  store i64* %suboffsets, i64** %suboffsets.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i64*, i64** %shape.addr, align 8
  %3 = load i64*, i64** %strides.addr, align 8
  %4 = load i64*, i64** %suboffsets.addr, align 8
  %5 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._object* @tolist_base(i8* %1, i64* %2, i64* %3, i64* %4, i8* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64*, i64** %shape.addr, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx, align 8
  %call1 = call %struct._object* @PyList_New(i64 %7)
  store %struct._object* %call1, %struct._object** %lst, align 8
  %8 = load %struct._object*, %struct._object** %lst, align 8
  %cmp2 = icmp eq %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i64, i64* %i, align 8
  %10 = load i64*, i64** %shape.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx5, align 8
  %cmp6 = icmp slt i64 %9, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %suboffsets.addr, align 8
  %tobool = icmp ne i64* %12, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %13 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %13, i64 0
  %14 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp sge i64 %14, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = bitcast i8* %15 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = load i64*, i64** %suboffsets.addr, align 8
  %arrayidx9 = getelementptr i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx9, align 8
  %add.ptr = getelementptr i8, i8* %17, i64 %19
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %20 = load i8*, i8** %ptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %20, %cond.false ]
  store i8* %cond, i8** %xptr, align 8
  %21 = load i8*, i8** %xptr, align 8
  %22 = load i64, i64* %ndim.addr, align 8
  %sub = sub i64 %22, 1
  %23 = load i64*, i64** %shape.addr, align 8
  %add.ptr10 = getelementptr i64, i64* %23, i64 1
  %24 = load i64*, i64** %strides.addr, align 8
  %add.ptr11 = getelementptr i64, i64* %24, i64 1
  %25 = load i64*, i64** %suboffsets.addr, align 8
  %tobool12 = icmp ne i64* %25, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.end
  %26 = load i64*, i64** %suboffsets.addr, align 8
  %add.ptr14 = getelementptr i64, i64* %26, i64 1
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi i64* [ %add.ptr14, %cond.true.13 ], [ null, %cond.false.15 ]
  %27 = load i8*, i8** %fmt.addr, align 8
  %call18 = call %struct._object* @tolist_rec(i8* %21, i64 %sub, i64* %add.ptr10, i64* %add.ptr11, i64* %cond17, i8* %27)
  store %struct._object* %call18, %struct._object** %item, align 8
  %28 = load %struct._object*, %struct._object** %item, align 8
  %cmp19 = icmp eq %struct._object* %28, null
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %cond.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %29 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %cond.end.16
  %36 = load %struct._object*, %struct._object** %item, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct._object*, %struct._object** %lst, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %39, i32 0, i32 1
  %40 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx25 = getelementptr %struct._object*, %struct._object** %40, i64 %37
  store %struct._object* %36, %struct._object** %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %41 = load i64*, i64** %strides.addr, align 8
  %arrayidx26 = getelementptr i64, i64* %41, i64 0
  %42 = load i64, i64* %arrayidx26, align 8
  %43 = load i8*, i8** %ptr.addr, align 8
  %add.ptr27 = getelementptr i8, i8* %43, i64 %42
  store i8* %add.ptr27, i8** %ptr.addr, align 8
  %44 = load i64, i64* %i, align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._object*, %struct._object** %lst, align 8
  store %struct._object* %45, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.3, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @zero_in_shape(%struct.PyMemoryViewObject* %mv) #0 {
entry:
  %retval = alloca i32, align 4
  %mv.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %i = alloca i64, align 8
  store %struct.PyMemoryViewObject* %mv, %struct.PyMemoryViewObject** %mv.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  %3 = load i32, i32* %ndim, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp slt i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 7
  %6 = load i64*, i64** %shape, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %4
  %7 = load i64, i64* %arrayidx, align 8
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @cast_to_1D(%struct.PyMemoryViewObject* %mv, %struct._object* %format) #0 {
entry:
  %retval = alloca i32, align 4
  %mv.addr = alloca %struct.PyMemoryViewObject*, align 8
  %format.addr = alloca %struct._object*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  %asciifmt = alloca %struct._object*, align 8
  %srcchar = alloca i8, align 1
  %destchar = alloca i8, align 1
  %itemsize = alloca i64, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %mv, %struct.PyMemoryViewObject** %mv.addr, align 8
  store %struct._object* %format, %struct._object** %format.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  store i32 -1, i32* %ret, align 4
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 6
  %2 = load i8*, i8** %format2, align 8
  %call = call i64 @get_native_fmtchar(i8* %srcchar, i8* %2)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.57, i32 0, i32 0))
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %format.addr, align 8
  %call3 = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %5)
  store %struct._object* %call3, %struct._object** %asciifmt, align 8
  %6 = load %struct._object*, %struct._object** %asciifmt, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %asciifmt, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call7 = call i64 @get_native_fmtchar(i8* %destchar, i8* %arraydecay)
  store i64 %call7, i64* %itemsize, align 8
  %10 = load i64, i64* %itemsize, align 8
  %cmp8 = icmp slt i64 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.58, i32 0, i32 0))
  br label %out

if.end.10:                                        ; preds = %if.end.6
  %12 = load i8, i8* %srcchar, align 1
  %conv = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv, 98
  br i1 %cmp11, label %if.end.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %13 = load i8, i8* %srcchar, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 66
  br i1 %cmp14, label %if.end.32, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %14 = load i8, i8* %srcchar, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 99
  br i1 %cmp18, label %if.end.32, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %15 = load i8, i8* %destchar, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 98
  br i1 %cmp21, label %if.end.32, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true
  %16 = load i8, i8* %destchar, align 1
  %conv24 = sext i8 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 66
  br i1 %cmp25, label %if.end.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %17 = load i8, i8* %destchar, align 1
  %conv28 = sext i8 %17 to i32
  %cmp29 = icmp eq i32 %conv28, 99
  br i1 %cmp29, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false.27
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.59, i32 0, i32 0))
  br label %out

if.end.32:                                        ; preds = %lor.lhs.false.27, %lor.lhs.false.23, %land.lhs.true, %lor.lhs.false.16, %lor.lhs.false, %if.end.10
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 2
  %20 = load i64, i64* %len, align 8
  %21 = load i64, i64* %itemsize, align 8
  %rem = srem i64 %20, %21
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.32
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i32 0, i32 0))
  br label %out

if.end.34:                                        ; preds = %if.end.32
  %23 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %format35 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %23, i32 0, i32 6
  %arraydecay36 = getelementptr inbounds [3 x i8], [3 x i8]* %format35, i32 0, i32 0
  %24 = load %struct._object*, %struct._object** %asciifmt, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyBytesObject*
  %ob_sval37 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %25, i32 0, i32 2
  %arraydecay38 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval37, i32 0, i32 0
  %call39 = call i8* @strncpy(i8* %arraydecay36, i8* %arraydecay38, i64 3) #3
  %26 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %format40 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %26, i32 0, i32 6
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %format40, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  %27 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %format41 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %27, i32 0, i32 6
  %arraydecay42 = getelementptr inbounds [3 x i8], [3 x i8]* %format41, i32 0, i32 0
  %28 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %format43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %28, i32 0, i32 6
  store i8* %arraydecay42, i8** %format43, align 8
  %29 = load i64, i64* %itemsize, align 8
  %30 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize44 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %30, i32 0, i32 3
  store i64 %29, i64* %itemsize44, align 8
  %31 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %31, i32 0, i32 5
  store i32 1, i32* %ndim, align 4
  %32 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %len45 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %32, i32 0, i32 2
  %33 = load i64, i64* %len45, align 8
  %34 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %34, i32 0, i32 3
  %35 = load i64, i64* %itemsize46, align 8
  %div = sdiv i64 %33, %35
  %36 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %36, i32 0, i32 7
  %37 = load i64*, i64** %shape, align 8
  %arrayidx47 = getelementptr i64, i64* %37, i64 0
  store i64 %div, i64* %arrayidx47, align 8
  %38 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize48 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %38, i32 0, i32 3
  %39 = load i64, i64* %itemsize48, align 8
  %40 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %40, i32 0, i32 8
  %41 = load i64*, i64** %strides, align 8
  %arrayidx49 = getelementptr i64, i64* %41, i64 0
  store i64 %39, i64* %arrayidx49, align 8
  %42 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %42, i32 0, i32 9
  store i64* null, i64** %suboffsets, align 8
  %43 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  call void @init_flags(%struct.PyMemoryViewObject* %43)
  store i32 0, i32* %ret, align 4
  br label %out

out:                                              ; preds = %if.end.34, %if.then.33, %if.then.31, %if.then.9
  br label %do.body

do.body:                                          ; preds = %out
  %44 = load %struct._object*, %struct._object** %asciifmt, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %do.body
  br label %if.end.53

if.else:                                          ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  br label %do.end

do.end:                                           ; preds = %if.end.53
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @cast_to_ND(%struct.PyMemoryViewObject* %mv, %struct._object* %shape, i32 %ndim) #0 {
entry:
  %retval = alloca i32, align 4
  %mv.addr = alloca %struct.PyMemoryViewObject*, align 8
  %shape.addr = alloca %struct._object*, align 8
  %ndim.addr = alloca i32, align 4
  %view = alloca %struct.bufferinfo*, align 8
  %len = alloca i64, align 8
  store %struct.PyMemoryViewObject* %mv, %struct.PyMemoryViewObject** %mv.addr, align 8
  store %struct._object* %shape, %struct._object** %shape.addr, align 8
  store i32 %ndim, i32* %ndim.addr, align 4
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load i32, i32* %ndim.addr, align 4
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 5
  store i32 %1, i32* %ndim2, align 4
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %ndim3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 5
  %4 = load i32, i32* %ndim3, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 7
  store i64* null, i64** %shape4, align 8
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 8
  store i64* null, i64** %strides, align 8
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 3
  %8 = load i64, i64* %itemsize, align 8
  store i64 %8, i64* %len, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %shape5 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 7
  %10 = load i64*, i64** %shape5, align 8
  %11 = load %struct._object*, %struct._object** %shape.addr, align 8
  %12 = load i32, i32* %ndim.addr, align 4
  %conv = sext i32 %12 to i64
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %itemsize6 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 3
  %14 = load i64, i64* %itemsize6, align 8
  %call = call i64 @copy_shape(i64* %10, %struct._object* %11, i64 %conv, i64 %14)
  store i64 %call, i64* %len, align 8
  %15 = load i64, i64* %len, align 8
  %cmp7 = icmp slt i64 %15, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  call void @init_strides_from_shape(%struct.bufferinfo* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %17 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %len11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %17, i32 0, i32 2
  %18 = load i64, i64* %len11, align 8
  %19 = load i64, i64* %len, align 8
  %cmp12 = icmp ne i64 %18, %19
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.61, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %21 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %mv.addr, align 8
  call void @init_flags(%struct.PyMemoryViewObject* %21)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare %struct._object* @PyUnicode_AsASCIIString(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal i64 @copy_shape(i64* %shape, %struct._object* %seq, i64 %ndim, i64 %itemsize) #0 {
entry:
  %retval = alloca i64, align 8
  %shape.addr = alloca i64*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %ndim.addr = alloca i64, align 8
  %itemsize.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  store i64* %shape, i64** %shape.addr, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store i64 %ndim, i64* %ndim.addr, align 8
  store i64 %itemsize, i64* %itemsize.addr, align 8
  %0 = load i64, i64* %itemsize.addr, align 8
  store i64 %0, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %ndim.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %7 = load %struct._object*, %struct._object** %seq.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %6
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %seq.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %11
  %14 = load %struct._object*, %struct._object** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct._object* %cond, %struct._object** %tmp, align 8
  %15 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags5, align 8
  %and6 = and i64 %17, 16777216
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %19 = load %struct._object*, %struct._object** %tmp, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %19)
  store i64 %call, i64* %x, align 8
  %20 = load i64, i64* %x, align 8
  %cmp8 = icmp eq i64 %20, -1
  br i1 %cmp8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %call9 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call9, null
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i64 -1, i64* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %21 = load i64, i64* %x, align 8
  %cmp12 = icmp sle i64 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.63, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %23 = load i64, i64* %x, align 8
  %24 = load i64, i64* %len, align 8
  %div = sdiv i64 9223372036854775807, %24
  %cmp16 = icmp sgt i64 %23, %div
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %26 = load i64, i64* %x, align 8
  %27 = load i64, i64* %len, align 8
  %mul = mul i64 %27, %26
  store i64 %mul, i64* %len, align 8
  %28 = load i64, i64* %x, align 8
  %29 = load i64, i64* %i, align 8
  %30 = load i64*, i64** %shape.addr, align 8
  %arrayidx20 = getelementptr i64, i64* %30, i64 %29
  store i64 %28, i64* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %len, align 8
  store i64 %32, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.13, %if.then.10, %if.then
  %33 = load i64, i64* %retval
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_obj_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %view = alloca %struct.bufferinfo*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view1 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 5
  store %struct.bufferinfo* %view1, %struct.bufferinfo** %view, align 8
  %1 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %1, i32 0, i32 3
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %3, i32 0, i32 1
  %4 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags2 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %4, i32 0, i32 1
  %5 = load i32, i32* %flags2, align 4
  %and3 = and i32 %5, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %cmp = icmp eq %struct._object* %8, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj7 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %obj7, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc8 = add i64 %12, 1
  store i64 %inc8, i64* %ob_refcnt, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view, align 8
  %obj9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %obj9, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_nbytes_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %7 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_readonly_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %readonly = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 4
  %7 = load i32, i32* %readonly, align 4
  %conv = sext i32 %7 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_itemsize_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %itemsize = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 3
  %7 = load i64, i64* %itemsize, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_format_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %format = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 6
  %7 = load i8*, i8** %format, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_ndim_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %7 = load i32, i32* %ndim, align 4
  %conv = sext i32 %7 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_shape_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %7 = load i32, i32* %ndim, align 4
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  %shape = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view4, i32 0, i32 7
  %9 = load i64*, i64** %shape, align 8
  %call = call %struct._object* @_IntTupleFromSsizet(i32 %7, i64* %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_strides_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %7 = load i32, i32* %ndim, align 4
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  %strides = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view4, i32 0, i32 8
  %9 = load i64*, i64** %strides, align 8
  %call = call %struct._object* @_IntTupleFromSsizet(i32 %7, i64* %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_suboffsets_get(%struct.PyMemoryViewObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 5
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 5
  %7 = load i32, i32* %ndim, align 4
  %8 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %view4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %8, i32 0, i32 5
  %suboffsets = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view4, i32 0, i32 9
  %9 = load i64*, i64** %suboffsets, align 8
  %call = call %struct._object* @_IntTupleFromSsizet(i32 %7, i64* %9)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_c_contiguous(%struct.PyMemoryViewObject* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 3
  %7 = load i32, i32* %flags4, align 4
  %and5 = and i32 %7, 10
  %conv = sext i32 %and5 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_f_contiguous(%struct.PyMemoryViewObject* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 3
  %7 = load i32, i32* %flags4, align 4
  %and5 = and i32 %7, 12
  %conv = sext i32 %and5 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @memory_contiguous(%struct.PyMemoryViewObject* %self, %struct._object* %dummy) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyMemoryViewObject*, align 8
  %dummy.addr = alloca %struct._object*, align 8
  store %struct.PyMemoryViewObject* %self, %struct.PyMemoryViewObject** %self.addr, align 8
  store %struct._object* %dummy, %struct._object** %dummy.addr, align 8
  %0 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %0, i32 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %mbuf = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %2, i32 0, i32 1
  %3 = load %struct._PyManagedBufferObject*, %struct._PyManagedBufferObject** %mbuf, align 8
  %flags1 = getelementptr inbounds %struct._PyManagedBufferObject, %struct._PyManagedBufferObject* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.PyMemoryViewObject*, %struct.PyMemoryViewObject** %self.addr, align 8
  %flags4 = getelementptr inbounds %struct.PyMemoryViewObject, %struct.PyMemoryViewObject* %6, i32 0, i32 3
  %7 = load i32, i32* %flags4, align 4
  %and5 = and i32 %7, 14
  %conv = sext i32 %and5 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_IntTupleFromSsizet(i32 %len, i64* %vals) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %len.addr = alloca i32, align 4
  %vals.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %o = alloca %struct._object*, align 8
  %intTuple = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %len, i32* %len.addr, align 4
  store i64* %vals, i64** %vals.addr, align 8
  %0 = load i64*, i64** %vals.addr, align 8
  %cmp = icmp eq i64* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call1, %struct._object** %intTuple, align 8
  %2 = load %struct._object*, %struct._object** %intTuple, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i64*, i64** %vals.addr, align 8
  %arrayidx = getelementptr i64, i64* %6, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %7)
  store %struct._object* %call6, %struct._object** %o, align 8
  %8 = load %struct._object*, %struct._object** %o, align 8
  %tobool7 = icmp ne %struct._object* %8, null
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %intTuple, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  %16 = load %struct._object*, %struct._object** %o, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct._object*, %struct._object** %intTuple, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx15 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom14
  store %struct._object* %16, %struct._object** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %intTuple, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyTuple_New(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
