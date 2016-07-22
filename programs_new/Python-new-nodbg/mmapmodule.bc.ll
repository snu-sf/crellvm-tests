; ModuleID = './mmapmodule.bc'
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
%struct.mmap_object = type { %struct._object, i8*, i64, i64, i64, i32, i32, %struct._object*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@mmap_object_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* bitcast (void (%struct.mmap_object*)* @mmap_object_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* @mmap_as_sequence, %struct.PyMappingMethods* @mmap_as_mapping, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* @mmap_as_buffer, i64 263168, i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @mmap_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 56, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([17 x %struct.PyMethodDef], [17 x %struct.PyMethodDef]* @mmap_object_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @mmap_object_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @new_mmap_object, void (i8*)* @PyObject_Free, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@mmapmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* null, i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PROT_EXEC\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PROT_READ\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"PROT_WRITE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"MAP_SHARED\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"MAP_PRIVATE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"MAP_DENYWRITE\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"MAP_EXECUTABLE\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MAP_ANON\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"MAP_ANONYMOUS\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"PAGESIZE\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"ALLOCATIONGRANULARITY\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"ACCESS_READ\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ACCESS_WRITE\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"ACCESS_COPY\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"mmap.mmap\00", align 1
@mmap_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.mmap_object*)* @mmap_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_concat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.mmap_object*, i64)* @mmap_repeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.mmap_object*, i64)* @mmap_item to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* bitcast (i32 (%struct.mmap_object*, i64, %struct._object*)* @mmap_ass_item to i32 (%struct._object*, i64, %struct._object*)*), i8* null, i32 (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@mmap_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.mmap_object*)* @mmap_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.mmap_object*, %struct._object*, %struct._object*)* @mmap_ass_subscript to i32 (%struct._object*, %struct._object*, %struct._object*)*) }, align 8
@mmap_as_buffer = internal global %struct.PyBufferProcs { i32 (%struct._object*, %struct.bufferinfo*, i32)* bitcast (i32 (%struct.mmap_object*, %struct.bufferinfo*, i32)* @mmap_buffer_getbuf to i32 (%struct._object*, %struct.bufferinfo*, i32)*), void (%struct._object*, %struct.bufferinfo*)* bitcast (void (%struct.mmap_object*, %struct.bufferinfo*)* @mmap_buffer_releasebuf to void (%struct._object*, %struct.bufferinfo*)*) }, align 8
@mmap_doc = internal global [1102 x i8] c"Windows: mmap(fileno, length[, tagname[, access[, offset]]])\0A\0AMaps length bytes from the file specified by the file handle fileno,\0Aand returns a mmap object.  If length is larger than the current size\0Aof the file, the file is extended to contain length bytes.  If length\0Ais 0, the maximum length of the map is the current size of the file,\0Aexcept that if the file is empty Windows raises an exception (you cannot\0Acreate an empty mapping on Windows).\0A\0AUnix: mmap(fileno, length[, flags[, prot[, access[, offset]]]])\0A\0AMaps length bytes from the file specified by the file descriptor fileno,\0Aand returns a mmap object.  If length is 0, the maximum length of the map\0Awill be the current size of the file when mmap is called.\0Aflags specifies the nature of the mapping. MAP_PRIVATE creates a\0Aprivate copy-on-write mapping, so changes to the contents of the mmap\0Aobject will be private to this process, and MAP_SHARED creates a mapping\0Athat's shared with all other processes mapping the same areas of the file.\0AThe default value is MAP_SHARED.\0A\0ATo map anonymous memory, pass -1 as the fileno (both versions).\00", align 16
@mmap_object_methods = internal global [17 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_close_method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_find_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_rfind_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_flush_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_move_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_byte_method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_line_method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_resize_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_seek_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_size_method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_tell_method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_write_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_write_byte_method to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.mmap_object*, %struct._object*)* @mmap__enter__method to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @mmap__exit__method, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@mmap_object_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.mmap_object*)* @mmap_closed_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyExc_ValueError = external global %struct._object*, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"mmap closed or invalid\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"mmaps don't support concatenation\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"mmaps don't support repeat operation\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"mmap index out of range\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.21 = private unnamed_addr constant [42 x i8] c"mmap object doesn't support item deletion\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"mmap assignment must be length-1 bytes()\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"mmap can't modify a readonly memory map.\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"mmap indices must be integers\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"mmap doesn't support item deletion\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"mmap item value must be an int\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"mmap item value must be in range(0, 256)\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"mmap object doesn't support slice deletion\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"mmap slice assignment is wrong size\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"mmap indices must be integer\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"rfind\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"read_byte\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"write_byte\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.48 = private unnamed_addr constant [37 x i8] c"cannot close exported pointers exist\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"y#|nn:rfind\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"y#|nn:find\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"|nn:flush\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"flush values out of range\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"kkk:move\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"source, destination, or count out of range\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"|O&:read\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.56 = private unnamed_addr constant [40 x i8] c"integer argument expected, got '%.200s'\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"read byte out of range\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"n:resize\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"mmap can't resize with extant buffers exported.\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"mmap can't resize a readonly or copy-on-write memory map.\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"n|i:seek\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"unknown seek type\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"seek out of range\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"y#:write\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"data out of range\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"b:write_byte\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"write byte out of range\00", align 1
@mmap__exit__method.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._object* null }, align 8
@.str.69 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@new_mmap_object.keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* null], align 16
@.str.70 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"iO|iiil\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"memory mapped offset must be positive\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"mmap can't specify both access and flags, prot.\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"mmap invalid access parameter.\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"cannot mmap an empty file\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"mmap offset is greater than file size\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"mmap length is too large\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"mmap length is greater than file size\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"memory mapped %s must be positive\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"map size must be an integral value\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_mmap() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @mmap_object_type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @mmapmodule, i32 1013)
  store %struct._object* %call1, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %module, align 8
  %call5 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call5, %struct._object** %dict, align 8
  %2 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** %dict, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %4)
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @mmap_object_type, i32 0, i32 0, i32 0))
  %6 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 4)
  %7 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 1)
  %8 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 2)
  %9 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 1)
  %10 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 2)
  %11 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 2048)
  %12 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i64 4096)
  %13 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 32)
  %14 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i64 32)
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %call10 = call i32 @my_getpagesize()
  %conv = sext i32 %call10 to i64
  call void @setint(%struct._object* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i64 %conv)
  %16 = load %struct._object*, %struct._object** %dict, align 8
  %call11 = call i32 @my_getpagesize()
  %conv12 = sext i32 %call11 to i64
  call void @setint(%struct._object* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i64 %conv12)
  %17 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i64 1)
  %18 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 2)
  %19 = load %struct._object*, %struct._object** %dict, align 8
  call void @setint(%struct._object* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i64 3)
  %20 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @setint(%struct._object* %d, i8* %name, i64 %value) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %0)
  store %struct._object* %call, %struct._object** %o, align 8
  %1 = load %struct._object*, %struct._object** %o, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %d.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct._object*, %struct._object** %o, align 8
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %2, i8* %3, %struct._object* %4)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
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

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @my_getpagesize() #0 {
entry:
  %call = call i64 @sysconf(i32 30) #3
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @mmap_object_dealloc(%struct.mmap_object* %m_obj) #0 {
entry:
  %m_obj.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %m_obj, %struct.mmap_object** %m_obj.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 6
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %fd1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 6
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @close(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %data4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 1
  %7 = load i8*, i8** %data4, align 8
  %8 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2
  %9 = load i64, i64* %size, align 8
  %call5 = call i32 @munmap(i8* %7, i64 %9) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %weakreflist = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 7
  %11 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp7 = icmp ne %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %12 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %13 = bitcast %struct.mmap_object* %12 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %15 = bitcast %struct.mmap_object* %14 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 38
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %18 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8
  %19 = bitcast %struct.mmap_object* %18 to %struct._object*
  %20 = bitcast %struct._object* %19 to i8*
  call void %17(i8* %20)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @new_mmap_object(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %st = alloca %struct.stat, align 8
  %m_obj = alloca %struct.mmap_object*, align 8
  %map_size_obj = alloca %struct._object*, align 8
  %map_size = alloca i64, align 8
  %offset = alloca i64, align 8
  %fd = alloca i32, align 4
  %flags = alloca i32, align 4
  %prot = alloca i32, align 4
  %devzero = alloca i32, align 4
  %access = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store %struct._object* null, %struct._object** %map_size_obj, align 8
  store i64 0, i64* %offset, align 8
  store i32 1, i32* %flags, align 4
  store i32 3, i32* %prot, align 4
  store i32 -1, i32* %devzero, align 4
  store i32 0, i32* %access, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @new_mmap_object.keywords, i32 0, i32 0), i32* %fd, %struct._object** %map_size_obj, i32* %flags, i32* %prot, i32* %access, i64* %offset)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %map_size_obj, align 8
  %call1 = call i64 @_GetMapSize(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  store i64 %call1, i64* %map_size, align 8
  %3 = load i64, i64* %map_size, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* %offset, align 8
  %cmp4 = icmp slt i64 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load i32, i32* %access, align 4
  %cmp7 = icmp ne i32 %6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.6
  %7 = load i32, i32* %flags, align 4
  %cmp8 = icmp ne i32 %7, 1
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %prot, align 4
  %cmp9 = icmp ne i32 %8, 3
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false, %if.end.6
  %10 = load i32, i32* %access, align 4
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.14
    i32 0, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end.12
  store i32 1, i32* %flags, align 4
  store i32 1, i32* %prot, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.12
  store i32 1, i32* %flags, align 4
  store i32 3, i32* %prot, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.12
  store i32 2, i32* %flags, align 4
  store i32 3, i32* %prot, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.12
  %11 = load i32, i32* %prot, align 4
  %and = and i32 %11, 1
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %sw.bb.15
  %12 = load i32, i32* %prot, align 4
  %and18 = and i32 %12, 2
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.17
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.17, %sw.bb.15
  %13 = load i32, i32* %prot, align 4
  %and21 = and i32 %13, 2
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i32 2, i32* %access, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  store i32 1, i32* %access, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.20
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0))
  store %struct._object* %call27, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.26, %sw.bb.14, %sw.bb.13, %sw.bb
  %15 = load i32, i32* %fd, align 4
  %cmp28 = icmp ne i32 %15, -1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.57

land.lhs.true.29:                                 ; preds = %sw.epilog
  %16 = load i32, i32* %fd, align 4
  %call30 = call i32 @fstat64(i32 %16, %struct.stat* %st) #3
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.57

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %17 = load i32, i32* %st_mode, align 4
  %and33 = and i32 %17, 61440
  %cmp34 = icmp eq i32 %and33, 32768
  br i1 %cmp34, label %if.then.35, label %if.end.57

if.then.35:                                       ; preds = %land.lhs.true.32
  %18 = load i64, i64* %map_size, align 8
  %cmp36 = icmp eq i64 %18, 0
  br i1 %cmp36, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %if.then.35
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %19 = load i64, i64* %st_size, align 8
  %cmp38 = icmp eq i64 %19, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.37
  %21 = load i64, i64* %offset, align 8
  %st_size41 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %22 = load i64, i64* %st_size41, align 8
  %cmp42 = icmp sge i64 %21, %22
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %23 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %st_size45 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %24 = load i64, i64* %st_size45, align 8
  %25 = load i64, i64* %offset, align 8
  %sub = sub i64 %24, %25
  %cmp46 = icmp sgt i64 %sub, 9223372036854775807
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %st_size49 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %27 = load i64, i64* %st_size49, align 8
  %28 = load i64, i64* %offset, align 8
  %sub50 = sub i64 %27, %28
  store i64 %sub50, i64* %map_size, align 8
  br label %if.end.56

if.else.51:                                       ; preds = %if.then.35
  %29 = load i64, i64* %offset, align 8
  %30 = load i64, i64* %map_size, align 8
  %add = add i64 %29, %30
  %st_size52 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %31 = load i64, i64* %st_size52, align 8
  %cmp53 = icmp ugt i64 %add, %31
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  %32 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.48
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.32, %land.lhs.true.29, %sw.epilog
  %33 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 36
  %34 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %35 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call58 = call %struct._object* %34(%struct._typeobject* %35, i64 0)
  %36 = bitcast %struct._object* %call58 to %struct.mmap_object*
  store %struct.mmap_object* %36, %struct.mmap_object** %m_obj, align 8
  %37 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %cmp59 = icmp eq %struct.mmap_object* %37, null
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57
  %38 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %38, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %39 = load i64, i64* %map_size, align 8
  %40 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %40, i32 0, i32 2
  store i64 %39, i64* %size, align 8
  %41 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %41, i32 0, i32 3
  store i64 0, i64* %pos, align 8
  %42 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %weakreflist = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %42, i32 0, i32 7
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %43 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %43, i32 0, i32 5
  store i32 0, i32* %exports, align 4
  %44 = load i64, i64* %offset, align 8
  %45 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %offset62 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %45, i32 0, i32 4
  store i64 %44, i64* %offset62, align 8
  %46 = load i32, i32* %fd, align 4
  %cmp63 = icmp eq i32 %46, -1
  br i1 %cmp63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.end.61
  %47 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %fd65 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %47, i32 0, i32 6
  store i32 -1, i32* %fd65, align 4
  %48 = load i32, i32* %flags, align 4
  %or = or i32 %48, 32
  store i32 %or, i32* %flags, align 4
  br label %if.end.77

if.else.66:                                       ; preds = %if.end.61
  %49 = load i32, i32* %fd, align 4
  %call67 = call i32 @_Py_dup(i32 %49)
  %50 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %fd68 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %50, i32 0, i32 6
  store i32 %call67, i32* %fd68, align 4
  %51 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %fd69 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %51, i32 0, i32 6
  %52 = load i32, i32* %fd69, align 4
  %cmp70 = icmp eq i32 %52, -1
  br i1 %cmp70, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %if.else.66
  br label %do.body

do.body:                                          ; preds = %if.then.71
  %53 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %54 = bitcast %struct.mmap_object* %53 to %struct._object*
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %56, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp72 = icmp ne i64 %dec, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body
  br label %if.end.75

if.else.74:                                       ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %59(%struct._object* %60)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.76:                                        ; preds = %if.else.66
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.64
  %61 = load i64, i64* %map_size, align 8
  %62 = load i32, i32* %prot, align 4
  %63 = load i32, i32* %flags, align 4
  %64 = load i32, i32* %fd, align 4
  %65 = load i64, i64* %offset, align 8
  %call78 = call i8* @mmap64(i8* null, i64 %61, i32 %62, i32 %63, i32 %64, i64 %65) #3
  %66 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %data79 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %66, i32 0, i32 1
  store i8* %call78, i8** %data79, align 8
  %67 = load i32, i32* %devzero, align 4
  %cmp80 = icmp ne i32 %67, -1
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.77
  %68 = load i32, i32* %devzero, align 4
  %call82 = call i32 @close(i32 %68)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.77
  %69 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %data84 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %69, i32 0, i32 1
  %70 = load i8*, i8** %data84, align 8
  %cmp85 = icmp eq i8* %70, inttoptr (i64 -1 to i8*)
  br i1 %cmp85, label %if.then.86, label %if.end.100

if.then.86:                                       ; preds = %if.end.83
  %71 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %data87 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %71, i32 0, i32 1
  store i8* null, i8** %data87, align 8
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.86
  %72 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %73 = bitcast %struct.mmap_object* %72 to %struct._object*
  store %struct._object* %73, %struct._object** %_py_decref_tmp89, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %75, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %78(%struct._object* %79)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %80 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call99 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %80)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.100:                                       ; preds = %if.end.83
  %81 = load i32, i32* %access, align 4
  %82 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %access101 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %82, i32 0, i32 8
  store i32 %81, i32* %access101, align 4
  %83 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8
  %84 = bitcast %struct.mmap_object* %83 to %struct._object*
  store %struct._object* %84, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.100, %do.end.98, %do.end, %if.then.60, %if.then.54, %if.then.47, %if.then.43, %if.then.39, %sw.default, %if.then.10, %if.then.5, %if.then.2, %if.then
  %85 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %85
}

declare void @PyObject_Free(i8*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @mmap_length(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 2
  %4 = load i64, i64* %size, align 8
  store i64 %4, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_concat(%struct.mmap_object* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %bb.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %bb, %struct._object** %bb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_repeat(%struct.mmap_object* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %n.addr = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_item(%struct.mmap_object* %self, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %i.addr = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 2
  %6 = load i64, i64* %size, align 8
  %cmp2 = icmp uge i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1
  %9 = load i8*, i8** %data5, align 8
  %10 = load i64, i64* %i.addr, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 %10
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 1)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @mmap_ass_item(%struct.mmap_object* %self, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i64, i64* %i.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i64, i64* %i.addr, align 8
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 2
  %6 = load i64, i64* %size, align 8
  %cmp2 = icmp uge i64 %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp5 = icmp eq %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 134217728
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyBytes_Size(%struct._object* %13)
  %cmp9 = icmp eq i64 %call, 1
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %if.end.7
  %14 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call12 = call i32 @is_writable(%struct.mmap_object* %15)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** %v.addr, align 8
  %call15 = call i8* @PyBytes_AsString(%struct._object* %16)
  store i8* %call15, i8** %buf, align 8
  %17 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %19 = load i64, i64* %i.addr, align 8
  %20 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %20, i32 0, i32 1
  %21 = load i8*, i8** %data16, align 8
  %arrayidx17 = getelementptr i8, i8* %21, i64 %19
  store i8 %18, i8* %arrayidx17, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.10, %if.then.6, %if.then.3, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i64 @PyBytes_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_writable(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 8
  %1 = load i32, i32* %access, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i8* @PyBytes_AsString(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_subscript(%struct.mmap_object* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelen = alloca i64, align 8
  %result_buf = alloca i8*, align 8
  %cur = alloca i64, align 8
  %i45 = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp1 = icmp ne %struct.PyNumberMethods* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_as_number3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number3, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %8, i32 0, i32 33
  %9 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %9, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** %item.addr, align 8
  %11 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %10, %struct._object* %11)
  store i64 %call, i64* %i, align 8
  %12 = load i64, i64* %i, align 8
  %cmp6 = icmp eq i64 %12, -1
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.10

land.lhs.true.7:                                  ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call8, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.7, %if.then.5
  %13 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 2
  %15 = load i64, i64* %size, align 8
  %16 = load i64, i64* %i, align 8
  %add = add i64 %16, %15
  store i64 %add, i64* %i, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %17 = load i64, i64* %i, align 8
  %cmp14 = icmp slt i64 %17, 0
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %18 = load i64, i64* %i, align 8
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 2
  %20 = load i64, i64* %size15, align 8
  %cmp16 = icmp uge i64 %18, %20
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  %21 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %23, i32 0, i32 1
  %24 = load i8*, i8** %data19, align 8
  %arrayidx = getelementptr i8, i8* %24, i64 %22
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %and = and i32 %conv, 255
  %conv20 = trunc i32 %and to i8
  %conv21 = zext i8 %conv20 to i64
  %call22 = call %struct._object* @PyLong_FromLong(i64 %conv21)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %do.end
  %26 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %cmp24 = icmp eq %struct._typeobject* %27, @PySlice_Type
  br i1 %cmp24, label %if.then.26, label %if.else.58

if.then.26:                                       ; preds = %if.else
  %28 = load %struct._object*, %struct._object** %item.addr, align 8
  %29 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size27 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %29, i32 0, i32 2
  %30 = load i64, i64* %size27, align 8
  %call28 = call i32 @PySlice_GetIndicesEx(%struct._object* %28, i64 %30, i64* %start, i64* %stop, i64* %step, i64* %slicelen)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.26
  %31 = load i64, i64* %slicelen, align 8
  %cmp33 = icmp sle i64 %31, 0
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.end.32
  %call36 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i64 0)
  store %struct._object* %call36, %struct._object** %retval
  br label %return

if.else.37:                                       ; preds = %if.end.32
  %32 = load i64, i64* %step, align 8
  %cmp38 = icmp eq i64 %32, 1
  br i1 %cmp38, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.else.37
  %33 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data41 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %33, i32 0, i32 1
  %34 = load i8*, i8** %data41, align 8
  %35 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %34, i64 %35
  %36 = load i64, i64* %slicelen, align 8
  %call42 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %36)
  store %struct._object* %call42, %struct._object** %retval
  br label %return

if.else.43:                                       ; preds = %if.else.37
  %37 = load i64, i64* %slicelen, align 8
  %call44 = call i8* @PyMem_Malloc(i64 %37)
  store i8* %call44, i8** %result_buf, align 8
  %38 = load i8*, i8** %result_buf, align 8
  %cmp46 = icmp eq i8* %38, null
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else.43
  %call49 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call49, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.else.43
  %39 = load i64, i64* %start, align 8
  store i64 %39, i64* %cur, align 8
  store i64 0, i64* %i45, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %40 = load i64, i64* %i45, align 8
  %41 = load i64, i64* %slicelen, align 8
  %cmp51 = icmp slt i64 %40, %41
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i64, i64* %cur, align 8
  %43 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data53 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %43, i32 0, i32 1
  %44 = load i8*, i8** %data53, align 8
  %arrayidx54 = getelementptr i8, i8* %44, i64 %42
  %45 = load i8, i8* %arrayidx54, align 1
  %46 = load i64, i64* %i45, align 8
  %47 = load i8*, i8** %result_buf, align 8
  %arrayidx55 = getelementptr i8, i8* %47, i64 %46
  store i8 %45, i8* %arrayidx55, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i64, i64* %step, align 8
  %49 = load i64, i64* %cur, align 8
  %add56 = add i64 %49, %48
  store i64 %add56, i64* %cur, align 8
  %50 = load i64, i64* %i45, align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* %i45, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i8*, i8** %result_buf, align 8
  %52 = load i64, i64* %slicelen, align 8
  %call57 = call %struct._object* @PyBytes_FromStringAndSize(i8* %51, i64 %52)
  store %struct._object* %call57, %struct._object** %result, align 8
  %53 = load i8*, i8** %result_buf, align 8
  call void @PyMem_Free(i8* %53)
  %54 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

if.else.58:                                       ; preds = %if.else
  %55 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.58, %for.end, %if.then.48, %if.then.40, %if.then.35, %if.then.31, %if.end.18, %if.then.17, %if.then.9, %if.then
  %56 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %56
}

; Function Attrs: nounwind uwtable
define internal i32 @mmap_ass_subscript(%struct.mmap_object* %self, %struct._object* %item, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelen = alloca i64, align 8
  %vbuf = alloca %struct.bufferinfo, align 8
  %cur = alloca i64, align 8
  %i81 = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %item, %struct._object** %item.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call = call i32 @is_writable(%struct.mmap_object* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %4 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp3 = icmp ne %struct.PyNumberMethods* %6, null
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_as_number5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 10
  %9 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number5, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %9, i32 0, i32 33
  %10 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp6 = icmp ne %struct._object* (%struct._object*)* %10, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** %item.addr, align 8
  %12 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call8 = call i64 @PyNumber_AsSsize_t(%struct._object* %11, %struct._object* %12)
  store i64 %call8, i64* %i, align 8
  %13 = load i64, i64* %i, align 8
  %cmp9 = icmp eq i64 %13, -1
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.then.7
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.10, %if.then.7
  %14 = load i64, i64* %i, align 8
  %cmp15 = icmp slt i64 %14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 2
  %16 = load i64, i64* %size, align 8
  %17 = load i64, i64* %i, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %i, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %18 = load i64, i64* %i, align 8
  %cmp18 = icmp slt i64 %18, 0
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %20, i32 0, i32 2
  %21 = load i64, i64* %size19, align 8
  %cmp20 = icmp uge i64 %19, %21
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.17
  %22 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %23 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp23 = icmp eq %struct._object* %23, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  %25 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_as_number27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 10
  %27 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number27, align 8
  %cmp28 = icmp ne %struct.PyNumberMethods* %27, null
  br i1 %cmp28, label %land.lhs.true.29, label %if.then.34

land.lhs.true.29:                                 ; preds = %if.end.25
  %28 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_as_number31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 10
  %30 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number31, align 8
  %nb_index32 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %30, i32 0, i32 33
  %31 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index32, align 8
  %cmp33 = icmp ne %struct._object* (%struct._object*)* %31, null
  br i1 %cmp33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.29, %if.end.25
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.29
  %33 = load %struct._object*, %struct._object** %value.addr, align 8
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call36 = call i64 @PyNumber_AsSsize_t(%struct._object* %33, %struct._object* %34)
  store i64 %call36, i64* %v, align 8
  %35 = load i64, i64* %v, align 8
  %cmp37 = icmp eq i64 %35, -1
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %if.end.35
  %call39 = call %struct._object* @PyErr_Occurred()
  %tobool40 = icmp ne %struct._object* %call39, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.38, %if.end.35
  %36 = load i64, i64* %v, align 8
  %cmp43 = icmp slt i64 %36, 0
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.42
  %37 = load i64, i64* %v, align 8
  %cmp45 = icmp sgt i64 %37, 255
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.end.42
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.44
  %39 = load i64, i64* %v, align 8
  %conv = trunc i64 %39 to i8
  %40 = load i64, i64* %i, align 8
  %41 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data48 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %41, i32 0, i32 1
  %42 = load i8*, i8** %data48, align 8
  %arrayidx = getelementptr i8, i8* %42, i64 %40
  store i8 %conv, i8* %arrayidx, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.2
  %43 = load %struct._object*, %struct._object** %item.addr, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %cmp50 = icmp eq %struct._typeobject* %44, @PySlice_Type
  br i1 %cmp50, label %if.then.52, label %if.else.91

if.then.52:                                       ; preds = %if.else
  %45 = load %struct._object*, %struct._object** %item.addr, align 8
  %46 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size53 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %46, i32 0, i32 2
  %47 = load i64, i64* %size53, align 8
  %call54 = call i32 @PySlice_GetIndicesEx(%struct._object* %45, i64 %47, i64* %start, i64* %stop, i64* %step, i64* %slicelen)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.52
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.52
  %48 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp59 = icmp eq %struct._object* %48, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  %49 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %50 = load %struct._object*, %struct._object** %value.addr, align 8
  %call63 = call i32 @PyObject_GetBuffer(%struct._object* %50, %struct.bufferinfo* %vbuf, i32 0)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.62
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2
  %51 = load i64, i64* %len, align 8
  %52 = load i64, i64* %slicelen, align 8
  %cmp68 = icmp ne i64 %51, %52
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %53 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.67
  %54 = load i64, i64* %slicelen, align 8
  %cmp72 = icmp eq i64 %54, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.71
  br label %if.end.90

if.else.75:                                       ; preds = %if.end.71
  %55 = load i64, i64* %step, align 8
  %cmp76 = icmp eq i64 %55, 1
  br i1 %cmp76, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.else.75
  %56 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data79 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %56, i32 0, i32 1
  %57 = load i8*, i8** %data79, align 8
  %58 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %57, i64 %58
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0
  %59 = load i8*, i8** %buf, align 8
  %60 = load i64, i64* %slicelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %59, i64 %60, i32 1, i1 false)
  br label %if.end.89

if.else.80:                                       ; preds = %if.else.75
  %61 = load i64, i64* %start, align 8
  store i64 %61, i64* %cur, align 8
  store i64 0, i64* %i81, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.80
  %62 = load i64, i64* %i81, align 8
  %63 = load i64, i64* %slicelen, align 8
  %cmp82 = icmp slt i64 %62, %63
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i64, i64* %i81, align 8
  %buf84 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0
  %65 = load i8*, i8** %buf84, align 8
  %arrayidx85 = getelementptr i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx85, align 1
  %67 = load i64, i64* %cur, align 8
  %68 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data86 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %68, i32 0, i32 1
  %69 = load i8*, i8** %data86, align 8
  %arrayidx87 = getelementptr i8, i8* %69, i64 %67
  store i8 %66, i8* %arrayidx87, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i64, i64* %step, align 8
  %71 = load i64, i64* %cur, align 8
  %add88 = add i64 %71, %70
  store i64 %add88, i64* %cur, align 8
  %72 = load i64, i64* %i81, align 8
  %inc = add i64 %72, 1
  store i64 %inc, i64* %i81, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %if.then.78
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.74
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf)
  store i32 0, i32* %retval
  br label %return

if.else.91:                                       ; preds = %if.else
  %73 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.91, %if.end.90, %if.then.70, %if.then.66, %if.then.61, %if.then.57, %if.end.47, %if.then.46, %if.then.41, %if.then.34, %if.then.24, %if.then.21, %if.then.13, %if.then.1, %if.then
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyMem_Free(i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @mmap_buffer_getbuf(%struct.mmap_object* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %5 = bitcast %struct.mmap_object* %4 to %struct._object*
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 1
  %7 = load i8*, i8** %data1, align 8
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2
  %9 = load i64, i64* %size, align 8
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 8
  %11 = load i32, i32* %access, align 4
  %cmp2 = icmp eq i32 %11, 1
  %conv = zext i1 %cmp2 to i32
  %12 = load i32, i32* %flags.addr, align 4
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %3, %struct._object* %5, i8* %7, i64 %9, i32 %conv, i32 %12)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 5
  %14 = load i32, i32* %exports, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %exports, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @mmap_buffer_releasebuf(%struct.mmap_object* %self, %struct.bufferinfo* %view) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5
  %1 = load i32, i32* %exports, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %exports, align 4
  ret void
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_close_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5
  %1 = load i32, i32* %exports, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 6
  %4 = load i32, i32* %fd, align 4
  %cmp1 = icmp sle i32 0, %4
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 6
  %6 = load i32, i32* %fd3, align 4
  %call = call i32 @close(i32 %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %fd5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 6
  store i32 -1, i32* %fd5, align 4
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data8 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 1
  %11 = load i8*, i8** %data8, align 8
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 2
  %13 = load i64, i64* %size, align 8
  %call9 = call i32 @munmap(i8* %11, i64 %13) #3
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 1
  store i8* null, i8** %data10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end.4
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_find_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @mmap_gfind(%struct.mmap_object* %0, %struct._object* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_rfind_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @mmap_gfind(%struct.mmap_object* %0, %struct._object* %1, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_flush_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %offset, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 2
  %1 = load i64, i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i64* %offset, i64* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %6 = load i64, i64* %offset, align 8
  %7 = load i64, i64* %size, align 8
  %add = add i64 %6, %7
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2
  %9 = load i64, i64* %size4, align 8
  %cmp5 = icmp ugt i64 %add, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %11 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %11, i32 0, i32 8
  %12 = load i32, i32* %access, align 4
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 8
  %14 = load i32, i32* %access9, align 4
  %cmp10 = icmp eq i32 %14, 3
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  %call12 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data14 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 1
  %16 = load i8*, i8** %data14, align 8
  %17 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 %17
  %18 = load i64, i64* %size, align 8
  %call15 = call i32 @msync(i8* %add.ptr, i64 %18, i32 4)
  %cmp16 = icmp eq i32 -1, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.13
  %19 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call18 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  %call20 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.11, %if.then.6, %if.then.2, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_move_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %dest = alloca i64, align 8
  %src = alloca i64, align 8
  %cnt = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i64* %dest, i64* %src, i64* %cnt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call1 = call i32 @is_writable(%struct.mmap_object* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i64, i64* %cnt, align 8
  %6 = load i64, i64* %dest, align 8
  %add = add i64 %5, %6
  %7 = load i64, i64* %cnt, align 8
  %cmp4 = icmp ult i64 %add, %7
  br i1 %cmp4, label %if.then.21, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.else
  %8 = load i64, i64* %cnt, align 8
  %9 = load i64, i64* %src, align 8
  %add6 = add i64 %8, %9
  %10 = load i64, i64* %cnt, align 8
  %cmp7 = icmp ult i64 %add6, %10
  br i1 %cmp7, label %if.then.21, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %11 = load i64, i64* %src, align 8
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 2
  %13 = load i64, i64* %size, align 8
  %cmp9 = icmp ugt i64 %11, %13
  br i1 %cmp9, label %if.then.21, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %14 = load i64, i64* %src, align 8
  %15 = load i64, i64* %cnt, align 8
  %add11 = add i64 %14, %15
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 2
  %17 = load i64, i64* %size12, align 8
  %cmp13 = icmp ugt i64 %add11, %17
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %18 = load i64, i64* %dest, align 8
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 2
  %20 = load i64, i64* %size15, align 8
  %cmp16 = icmp ugt i64 %18, %20
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %21 = load i64, i64* %dest, align 8
  %22 = load i64, i64* %cnt, align 8
  %add18 = add i64 %21, %22
  %23 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %23, i32 0, i32 2
  %24 = load i64, i64* %size19, align 8
  %cmp20 = icmp ugt i64 %add18, %24
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.5, %if.else
  %25 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.17
  %26 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data23 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %26, i32 0, i32 1
  %27 = load i8*, i8** %data23, align 8
  %28 = load i64, i64* %dest, align 8
  %add.ptr = getelementptr i8, i8* %27, i64 %28
  %29 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data24 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %29, i32 0, i32 1
  %30 = load i8*, i8** %data24, align 8
  %31 = load i64, i64* %src, align 8
  %add.ptr25 = getelementptr i8, i8* %30, i64 %31
  %32 = load i64, i64* %cnt, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr25, i64 %32, i32 1, i1 false)
  %33 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.3, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_read_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %num_bytes = alloca i64, align 8
  %n = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %num_bytes, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 (%struct._object*, i8*)* @mmap_convert_ssize_t, i64* %num_bytes)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 2
  %5 = load i64, i64* %size, align 8
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 3
  %7 = load i64, i64* %pos, align 8
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %n, align 8
  %8 = load i64, i64* %n, align 8
  %cmp3 = icmp slt i64 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i64 9223372036854775807, i64* %n, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %9 = load i64, i64* %num_bytes, align 8
  %cmp6 = icmp slt i64 %9, 0
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %10 = load i64, i64* %num_bytes, align 8
  %11 = load i64, i64* %n, align 8
  %cmp7 = icmp sgt i64 %10, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  %12 = load i64, i64* %n, align 8
  store i64 %12, i64* %num_bytes, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 1
  %14 = load i8*, i8** %data10, align 8
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 3
  %16 = load i64, i64* %pos11, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 %16
  %17 = load i64, i64* %num_bytes, align 8
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %17)
  store %struct._object* %call12, %struct._object** %result, align 8
  %18 = load i64, i64* %num_bytes, align 8
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos13 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 3
  %20 = load i64, i64* %pos13, align 8
  %add = add i64 %20, %18
  store i64 %add, i64* %pos13, align 8
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.1, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_read_byte_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 3
  %4 = load i64, i64* %pos, align 8
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 2
  %6 = load i64, i64* %size, align 8
  %cmp1 = icmp ult i64 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.end
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 3
  %8 = load i64, i64* %pos3, align 8
  %9 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %9, i32 0, i32 1
  %10 = load i8*, i8** %data4, align 8
  %arrayidx = getelementptr i8, i8* %10, i64 %8
  %11 = load i8, i8* %arrayidx, align 1
  store i8 %11, i8* %value, align 1
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 3
  %13 = load i64, i64* %pos5, align 8
  %add = add i64 %13, 1
  store i64 %add, i64* %pos5, align 8
  %14 = load i8, i8* %value, align 1
  %conv = zext i8 %14 to i32
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i32 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %do.end
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_read_line_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %start = alloca i8*, align 8
  %eof = alloca i8*, align 8
  %eol = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 3
  %3 = load i64, i64* %pos, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %start, align 8
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 1
  %5 = load i8*, i8** %data1, align 8
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 2
  %7 = load i64, i64* %size, align 8
  %add.ptr2 = getelementptr i8, i8* %5, i64 %7
  store i8* %add.ptr2, i8** %eof, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1
  %9 = load i8*, i8** %data3, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load i8*, i8** %start, align 8
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 2
  %13 = load i64, i64* %size4, align 8
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 3
  %15 = load i64, i64* %pos5, align 8
  %sub = sub i64 %13, %15
  %call = call i8* @memchr(i8* %11, i32 10, i64 %sub) #5
  store i8* %call, i8** %eol, align 8
  %16 = load i8*, i8** %eol, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %do.end
  %17 = load i8*, i8** %eof, align 8
  store i8* %17, i8** %eol, align 8
  br label %if.end.7

if.else:                                          ; preds = %do.end
  %18 = load i8*, i8** %eol, align 8
  %incdec.ptr = getelementptr i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %eol, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %19 = load i8*, i8** %start, align 8
  %20 = load i8*, i8** %eol, align 8
  %21 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call8 = call %struct._object* @PyBytes_FromStringAndSize(i8* %19, i64 %sub.ptr.sub)
  store %struct._object* %call8, %struct._object** %result, align 8
  %22 = load i8*, i8** %eol, align 8
  %23 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %23 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %24 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %24, i32 0, i32 3
  %25 = load i64, i64* %pos12, align 8
  %add = add i64 %25, %sub.ptr.sub11
  store i64 %add, i64* %pos12, align 8
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_resize_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_size = alloca i64, align 8
  %newmap = alloca i8*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i64* %new_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.3

lor.lhs.false:                                    ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call1 = call i32 @is_resizeable(%struct.mmap_object* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 6
  %6 = load i32, i32* %fd, align 4
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %offset = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 4
  %8 = load i64, i64* %offset, align 8
  %9 = load i64, i64* %new_size, align 8
  %add = add i64 %8, %9
  %call4 = call i32 @ftruncate64(i32 %6, i64 %add) #3
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  %11 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %11, i32 0, i32 1
  %12 = load i8*, i8** %data9, align 8
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 2
  %14 = load i64, i64* %size, align 8
  %15 = load i64, i64* %new_size, align 8
  %call10 = call i8* (i8*, i64, i64, i32, ...) @mremap(i8* %12, i64 %14, i64 %15, i32 1) #3
  store i8* %call10, i8** %newmap, align 8
  %16 = load i8*, i8** %newmap, align 8
  %cmp11 = icmp eq i8* %16, inttoptr (i64 -1 to i8*)
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call13 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %17)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %18 = load i8*, i8** %newmap, align 8
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 1
  store i8* %18, i8** %data15, align 8
  %20 = load i64, i64* %new_size, align 8
  %21 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %21, i32 0, i32 2
  store i64 %20, i64* %size16, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.6, %if.then.3, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_seek_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %dist = alloca i64, align 8
  %how = alloca i32, align 4
  %where = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %how, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i64* %dist, i32* %how)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %do.end
  %4 = load i32, i32* %how, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.else
  %5 = load i64, i64* %dist, align 8
  %cmp2 = icmp slt i64 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb
  br label %onoutofrange

if.end.4:                                         ; preds = %sw.bb
  %6 = load i64, i64* %dist, align 8
  store i64 %6, i64* %where, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.else
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 3
  %8 = load i64, i64* %pos, align 8
  %9 = load i64, i64* %dist, align 8
  %add = add i64 %8, %9
  %cmp6 = icmp slt i64 %add, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb.5
  br label %onoutofrange

if.end.8:                                         ; preds = %sw.bb.5
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 3
  %11 = load i64, i64* %pos9, align 8
  %12 = load i64, i64* %dist, align 8
  %add10 = add i64 %11, %12
  store i64 %add10, i64* %where, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.else
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 2
  %14 = load i64, i64* %size, align 8
  %15 = load i64, i64* %dist, align 8
  %add12 = add i64 %14, %15
  %cmp13 = icmp slt i64 %add12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.11
  br label %onoutofrange

if.end.15:                                        ; preds = %sw.bb.11
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 2
  %17 = load i64, i64* %size16, align 8
  %18 = load i64, i64* %dist, align 8
  %add17 = add i64 %17, %18
  store i64 %add17, i64* %where, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.15, %if.end.8, %if.end.4
  %20 = load i64, i64* %where, align 8
  %21 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size18 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %21, i32 0, i32 2
  %22 = load i64, i64* %size18, align 8
  %cmp19 = icmp ugt i64 %20, %22
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.epilog
  br label %onoutofrange

if.end.21:                                        ; preds = %sw.epilog
  %23 = load i64, i64* %where, align 8
  %24 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos22 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %24, i32 0, i32 3
  store i64 %23, i64* %pos22, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

onoutofrange:                                     ; preds = %if.then.20, %if.then.14, %if.then.7, %if.then.3
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %onoutofrange, %if.end.21, %sw.default, %if.then.1, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_size_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.stat, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 6
  %4 = load i32, i32* %fd, align 4
  %call = call i32 @fstat64(i32 %4, %struct.stat* %buf) #3
  %cmp1 = icmp eq i32 -1, %call
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %6 = load i64, i64* %st_size, align 8
  %call5 = call %struct._object* @PyLong_FromLong(i64 %6)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_tell_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 3
  %4 = load i64, i64* %pos, align 8
  %call = call %struct._object* @PyLong_FromSize_t(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_write_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data1, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8** %data, i64* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call4 = call i32 @is_writable(%struct.mmap_object* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 3
  %6 = load i64, i64* %pos, align 8
  %7 = load i64, i64* %length, align 8
  %add = add i64 %6, %7
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2
  %9 = load i64, i64* %size, align 8
  %cmp8 = icmp ugt i64 %add, %9
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %11 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %11, i32 0, i32 1
  %12 = load i8*, i8** %data11, align 8
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 3
  %14 = load i64, i64* %pos12, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %14
  %15 = load i8*, i8** %data, align 8
  %16 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %15, i64 %16, i32 1, i1 false)
  %17 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos13 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %17, i32 0, i32 3
  %18 = load i64, i64* %pos13, align 8
  %19 = load i64, i64* %length, align 8
  %add14 = add i64 %18, %19
  %20 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %20, i32 0, i32 3
  store i64 %add14, i64* %pos15, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_write_byte_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i8* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %call3 = call i32 @is_writable(%struct.mmap_object* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 3
  %6 = load i64, i64* %pos, align 8
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 2
  %8 = load i64, i64* %size, align 8
  %cmp7 = icmp ult i64 %6, %8
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8, i8* %value, align 1
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 1
  %11 = load i8*, i8** %data9, align 8
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 3
  %13 = load i64, i64* %pos10, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 %13
  store i8 %9, i8* %add.ptr, align 1
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 3
  %15 = load i64, i64* %pos11, align 8
  %add = add i64 %15, 1
  store i64 %add, i64* %pos11, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.8, %if.then.5, %if.then.1, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap__enter__method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %4 = bitcast %struct.mmap_object* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %7 = bitcast %struct.mmap_object* %6 to %struct._object*
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap__exit__method(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %0, %struct._Py_Identifier* @mmap__exit__method.PyId_close, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_gfind(%struct.mmap_object* %self, %struct._object* %args, i32 %reverse) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %reverse.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %needle = alloca i8*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %start_p = alloca i8*, align 8
  %end_p = alloca i8*, align 8
  %sign = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 3
  %1 = load i64, i64* %pos, align 8
  store i64 %1, i64* %start, align 8
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 2
  %3 = load i64, i64* %size, align 8
  store i64 %3, i64* %end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 1
  %5 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load i32, i32* %reverse.addr, align 4
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0)
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* %cond, i8** %needle, i64* %len, i64* %start, i64* %end)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %do.end
  %9 = load i32, i32* %reverse.addr, align 4
  %tobool3 = icmp ne i32 %9, 0
  %cond4 = select i1 %tobool3, i32 -1, i32 1
  store i32 %cond4, i32* %sign, align 4
  %10 = load i64, i64* %start, align 8
  %cmp5 = icmp slt i64 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.else
  %11 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size7 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %11, i32 0, i32 2
  %12 = load i64, i64* %size7, align 8
  %13 = load i64, i64* %start, align 8
  %add = add i64 %13, %12
  store i64 %add, i64* %start, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.else
  %14 = load i64, i64* %start, align 8
  %cmp9 = icmp slt i64 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %start, align 8
  br label %if.end.17

if.else.11:                                       ; preds = %if.end.8
  %15 = load i64, i64* %start, align 8
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 2
  %17 = load i64, i64* %size12, align 8
  %cmp13 = icmp ugt i64 %15, %17
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else.11
  %18 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %18, i32 0, i32 2
  %19 = load i64, i64* %size15, align 8
  store i64 %19, i64* %start, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %20 = load i64, i64* %end, align 8
  %cmp18 = icmp slt i64 %20, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %21 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size20 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %21, i32 0, i32 2
  %22 = load i64, i64* %size20, align 8
  %23 = load i64, i64* %end, align 8
  %add21 = add i64 %23, %22
  store i64 %add21, i64* %end, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %24 = load i64, i64* %end, align 8
  %cmp23 = icmp slt i64 %24, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.22
  store i64 0, i64* %end, align 8
  br label %if.end.31

if.else.25:                                       ; preds = %if.end.22
  %25 = load i64, i64* %end, align 8
  %26 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size26 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %26, i32 0, i32 2
  %27 = load i64, i64* %size26, align 8
  %cmp27 = icmp ugt i64 %25, %27
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else.25
  %28 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %size29 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %28, i32 0, i32 2
  %29 = load i64, i64* %size29, align 8
  store i64 %29, i64* %end, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.else.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  %30 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data32 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %30, i32 0, i32 1
  %31 = load i8*, i8** %data32, align 8
  %32 = load i64, i64* %start, align 8
  %add.ptr = getelementptr i8, i8* %31, i64 %32
  store i8* %add.ptr, i8** %start_p, align 8
  %33 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data33 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %33, i32 0, i32 1
  %34 = load i8*, i8** %data33, align 8
  %35 = load i64, i64* %end, align 8
  %add.ptr34 = getelementptr i8, i8* %34, i64 %35
  store i8* %add.ptr34, i8** %end_p, align 8
  %36 = load i32, i32* %reverse.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %37 = load i8*, i8** %end_p, align 8
  %38 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %38
  %add.ptr36 = getelementptr i8, i8* %37, i64 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  %39 = load i8*, i8** %start_p, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i8* [ %add.ptr36, %cond.true ], [ %39, %cond.false ]
  store i8* %cond37, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %cond.end
  %40 = load i8*, i8** %p, align 8
  %41 = load i8*, i8** %start_p, align 8
  %cmp38 = icmp uge i8* %40, %41
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %42 = load i8*, i8** %p, align 8
  %43 = load i64, i64* %len, align 8
  %add.ptr39 = getelementptr i8, i8* %42, i64 %43
  %44 = load i8*, i8** %end_p, align 8
  %cmp40 = icmp ule i8* %add.ptr39, %44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %45 = phi i1 [ false, %for.cond ], [ %cmp40, %land.rhs ]
  br i1 %45, label %for.body, label %for.end.58

for.body:                                         ; preds = %land.end
  store i64 0, i64* %i, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %for.body
  %46 = load i64, i64* %i, align 8
  %47 = load i64, i64* %len, align 8
  %cmp42 = icmp slt i64 %46, %47
  br i1 %cmp42, label %land.rhs.43, label %land.end.48

land.rhs.43:                                      ; preds = %for.cond.41
  %48 = load i64, i64* %i, align 8
  %49 = load i8*, i8** %needle, align 8
  %arrayidx = getelementptr i8, i8* %49, i64 %48
  %50 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %50 to i32
  %51 = load i64, i64* %i, align 8
  %52 = load i8*, i8** %p, align 8
  %arrayidx44 = getelementptr i8, i8* %52, i64 %51
  %53 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %53 to i32
  %cmp46 = icmp eq i32 %conv, %conv45
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.43, %for.cond.41
  %54 = phi i1 [ false, %for.cond.41 ], [ %cmp46, %land.rhs.43 ]
  br i1 %54, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %land.end.48
  br label %for.inc

for.inc:                                          ; preds = %for.body.49
  %55 = load i64, i64* %i, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.41

for.end:                                          ; preds = %land.end.48
  %56 = load i64, i64* %i, align 8
  %57 = load i64, i64* %len, align 8
  %cmp50 = icmp eq i64 %56, %57
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %for.end
  %58 = load i8*, i8** %p, align 8
  %59 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data53 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %59, i32 0, i32 1
  %60 = load i8*, i8** %data53, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call54 = call %struct._object* @PyLong_FromSsize_t(i64 %sub.ptr.sub)
  store %struct._object* %call54, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %for.end
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %61 = load i32, i32* %sign, align 4
  %62 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %61 to i64
  %add.ptr57 = getelementptr i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr57, i8** %p, align 8
  br label %for.cond

for.end.58:                                       ; preds = %land.end
  %call59 = call %struct._object* @PyLong_FromLong(i64 -1)
  store %struct._object* %call59, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.58, %if.then.52, %if.then.2, %if.then
  %63 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %63
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @msync(i8*, i64, i32) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @mmap_convert_ssize_t(%struct._object* %obj, i8* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %result.addr = alloca i8*, align 8
  %limit = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %result, i8** %result.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* %limit, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyNumber_Check(%struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.7

if.then.1:                                        ; preds = %if.else
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call2 = call i64 @PyNumber_AsSsize_t(%struct._object* %2, %struct._object* %3)
  store i64 %call2, i64* %limit, align 8
  %4 = load i64, i64* %limit, align 8
  %cmp3 = icmp eq i64 %4, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then.1
  br label %if.end.9

if.else.7:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %9 = load i64, i64* %limit, align 8
  %10 = load i8*, i8** %result.addr, align 8
  %11 = bitcast i8* %10 to i64*
  store i64 %9, i64* %11, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.7, %if.then.6
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @PyNumber_Check(%struct._object*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @is_resizeable(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5
  %1 = load i32, i32* %exports, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 8
  %4 = load i32, i32* %access, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %access2 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 8
  %6 = load i32, i32* %access2, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.61, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #2

; Function Attrs: nounwind
declare i8* @mremap(i8*, i64, i64, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #2

declare %struct._object* @PyLong_FromSize_t(i64) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_closed_get(%struct.mmap_object* %self) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp eq i8* %1, null
  %cond = select i1 %cmp, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @_GetMapSize(%struct._object* %o, i8* %param) #0 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %param.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp1 = icmp ne %struct.PyNumberMethods* %3, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_as_number3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number3, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %6, i32 0, i32 33
  %7 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %o.addr, align 8
  %9 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %8, %struct._object* %9)
  store i64 %call, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %cmp6 = icmp eq i64 %10, -1
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.10

land.lhs.true.7:                                  ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call8, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store i64 -1, i64* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.7, %if.then.5
  %11 = load i64, i64* %i, align 8
  %cmp11 = icmp slt i64 %11, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %13 = load i8*, i8** %param.addr, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %13)
  store i64 -1, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %14 = load i64, i64* %i, align 8
  store i64 %14, i64* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end.14, %if.then.12, %if.then.9, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i32 @_Py_dup(i32) #1

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
