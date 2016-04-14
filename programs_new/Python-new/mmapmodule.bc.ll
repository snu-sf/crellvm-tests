; ModuleID = 'programs_new/Python-new/mmapmodule.bc.ll'
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
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %dict to i8*, !dbg !994
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !994
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !596, metadata !995), !dbg !996
  %1 = bitcast %struct._object** %module to i8*, !dbg !994
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !994
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !597, metadata !995), !dbg !997
  %call = call i32 @PyType_Ready(%struct._typeobject* @mmap_object_type), !dbg !998
  %cmp = icmp slt i32 %call, 0, !dbg !1000
  br i1 %cmp, label %if.then, label %if.end, !dbg !1001

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1002
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1002

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @mmapmodule, i32 1013), !dbg !1003
  store %struct._object* %call1, %struct._object** %module, align 8, !dbg !1004, !tbaa !1005
  %2 = load %struct._object*, %struct._object** %module, align 8, !dbg !1009, !tbaa !1005
  %cmp2 = icmp eq %struct._object* %2, null, !dbg !1011
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1012

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1013
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1013

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %module, align 8, !dbg !1014, !tbaa !1005
  %call5 = call %struct._object* @PyModule_GetDict(%struct._object* %3), !dbg !1015
  store %struct._object* %call5, %struct._object** %dict, align 8, !dbg !1016, !tbaa !1005
  %4 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1017, !tbaa !1005
  %tobool = icmp ne %struct._object* %4, null, !dbg !1017
  br i1 %tobool, label %if.end.7, label %if.then.6, !dbg !1019

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1020
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1020

if.end.7:                                         ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1021, !tbaa !1005
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1022, !tbaa !1005
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* %6), !dbg !1023
  %7 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1024, !tbaa !1005
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @mmap_object_type, i32 0, i32 0, i32 0)), !dbg !1025
  %8 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1026, !tbaa !1005
  call void @setint(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 4), !dbg !1027
  %9 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1028, !tbaa !1005
  call void @setint(%struct._object* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 1), !dbg !1029
  %10 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1030, !tbaa !1005
  call void @setint(%struct._object* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 2), !dbg !1031
  %11 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1032, !tbaa !1005
  call void @setint(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 1), !dbg !1033
  %12 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1034, !tbaa !1005
  call void @setint(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 2), !dbg !1035
  %13 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1036, !tbaa !1005
  call void @setint(%struct._object* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i64 2048), !dbg !1037
  %14 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1038, !tbaa !1005
  call void @setint(%struct._object* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i64 4096), !dbg !1039
  %15 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1040, !tbaa !1005
  call void @setint(%struct._object* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 32), !dbg !1041
  %16 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1042, !tbaa !1005
  call void @setint(%struct._object* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i64 32), !dbg !1043
  %17 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1044, !tbaa !1005
  %call10 = call i32 @my_getpagesize(), !dbg !1045
  %conv = sext i32 %call10 to i64, !dbg !1046
  call void @setint(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i64 %conv), !dbg !1047
  %18 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1048, !tbaa !1005
  %call11 = call i32 @my_getpagesize(), !dbg !1049
  %conv12 = sext i32 %call11 to i64, !dbg !1050
  call void @setint(%struct._object* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i64 %conv12), !dbg !1051
  %19 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1052, !tbaa !1005
  call void @setint(%struct._object* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i64 1), !dbg !1053
  %20 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1054, !tbaa !1005
  call void @setint(%struct._object* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 2), !dbg !1055
  %21 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1056, !tbaa !1005
  call void @setint(%struct._object* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i64 3), !dbg !1057
  %22 = load %struct._object*, %struct._object** %module, align 8, !dbg !1058, !tbaa !1005
  store %struct._object* %22, %struct._object** %retval, !dbg !1059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1059

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.3, %if.then
  %23 = bitcast %struct._object** %module to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1060
  %24 = bitcast %struct._object** %dict to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1060
  %25 = load %struct._object*, %struct._object** %retval, !dbg !1060
  ret %struct._object* %25, !dbg !1060
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @setint(%struct._object* %d, i8* %name, i64 %value) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %d.addr, metadata !925, metadata !995), !dbg !1061
  store i8* %name, i8** %name.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !926, metadata !995), !dbg !1062
  store i64 %value, i64* %value.addr, align 8, !tbaa !1063
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !927, metadata !995), !dbg !1065
  %0 = bitcast %struct._object** %o to i8*, !dbg !1066
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1066
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !928, metadata !995), !dbg !1067
  %1 = load i64, i64* %value.addr, align 8, !dbg !1068, !tbaa !1063
  %call = call %struct._object* @PyLong_FromLong(i64 %1), !dbg !1069
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !1067, !tbaa !1005
  %2 = load %struct._object*, %struct._object** %o, align 8, !dbg !1070, !tbaa !1005
  %tobool = icmp ne %struct._object* %2, null, !dbg !1070
  br i1 %tobool, label %land.lhs.true, label %if.end.4, !dbg !1071

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %d.addr, align 8, !dbg !1072, !tbaa !1005
  %4 = load i8*, i8** %name.addr, align 8, !dbg !1074, !tbaa !1005
  %5 = load %struct._object*, %struct._object** %o, align 8, !dbg !1075, !tbaa !1005
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* %4, %struct._object* %5), !dbg !1076
  %cmp = icmp eq i32 %call1, 0, !dbg !1077
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1078

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1079

do.body:                                          ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1080
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1080
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !929, metadata !995), !dbg !1082
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !1083, !tbaa !1005
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1082, !tbaa !1005
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1084, !tbaa !1005
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1086
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1087, !tbaa !1088
  %dec = add i64 %9, -1, !dbg !1087
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1087, !tbaa !1088
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1090
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1091

if.then.3:                                        ; preds = %do.body
  br label %if.end, !dbg !1092

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1094, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1096
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1096, !tbaa !1097
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1098
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1098, !tbaa !1099
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1103, !tbaa !1005
  call void %12(%struct._object* %13), !dbg !1104
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1105
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1105
  br label %do.cond, !dbg !1107

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1108

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1110

if.end.4:                                         ; preds = %do.end, %land.lhs.true, %entry
  %15 = bitcast %struct._object** %o to i8*, !dbg !1111
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1111
  ret void, !dbg !1111
}

; Function Attrs: nounwind uwtable
define internal i32 @my_getpagesize() #0 {
entry:
  %call = call i64 @sysconf(i32 30) #1, !dbg !1112
  %conv = trunc i64 %call to i32, !dbg !1112
  ret i32 %conv, !dbg !1113
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @mmap_object_dealloc(%struct.mmap_object* %m_obj) #0 {
entry:
  %m_obj.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %m_obj, %struct.mmap_object** %m_obj.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %m_obj.addr, metadata !602, metadata !995), !dbg !1114
  %0 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1115, !tbaa !1005
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 6, !dbg !1117
  %1 = load i32, i32* %fd, align 4, !dbg !1117, !tbaa !1118
  %cmp = icmp sge i32 %1, 0, !dbg !1120
  br i1 %cmp, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %entry
  %2 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1122, !tbaa !1005
  %fd1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 6, !dbg !1123
  %3 = load i32, i32* %fd1, align 4, !dbg !1123, !tbaa !1118
  %call = call i32 @close(i32 %3), !dbg !1124
  br label %if.end, !dbg !1125

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1126, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 1, !dbg !1128
  %5 = load i8*, i8** %data, align 8, !dbg !1128, !tbaa !1129
  %cmp2 = icmp ne i8* %5, null, !dbg !1130
  br i1 %cmp2, label %if.then.3, label %if.end.6, !dbg !1131

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1132, !tbaa !1005
  %data4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 1, !dbg !1134
  %7 = load i8*, i8** %data4, align 8, !dbg !1134, !tbaa !1129
  %8 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1135, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2, !dbg !1136
  %9 = load i64, i64* %size, align 8, !dbg !1136, !tbaa !1137
  %call5 = call i32 @munmap(i8* %7, i64 %9) #1, !dbg !1138
  br label %if.end.6, !dbg !1139

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1140, !tbaa !1005
  %weakreflist = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 7, !dbg !1142
  %11 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1142, !tbaa !1143
  %cmp7 = icmp ne %struct._object* %11, null, !dbg !1144
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1145

if.then.8:                                        ; preds = %if.end.6
  %12 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1146, !tbaa !1005
  %13 = bitcast %struct.mmap_object* %12 to %struct._object*, !dbg !1147
  call void @PyObject_ClearWeakRefs(%struct._object* %13), !dbg !1148
  br label %if.end.9, !dbg !1148

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1149, !tbaa !1005
  %15 = bitcast %struct.mmap_object* %14 to %struct._object*, !dbg !1150
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1151
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1151, !tbaa !1097
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 38, !dbg !1152
  %17 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1152, !tbaa !1153
  %18 = load %struct.mmap_object*, %struct.mmap_object** %m_obj.addr, align 8, !dbg !1154, !tbaa !1005
  %19 = bitcast %struct.mmap_object* %18 to %struct._object*, !dbg !1155
  %20 = bitcast %struct._object* %19 to i8*, !dbg !1155
  call void %17(i8* %20), !dbg !1156
  ret void, !dbg !1157
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !889, metadata !995), !dbg !1158
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !890, metadata !995), !dbg !1159
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %kwdict.addr, metadata !891, metadata !995), !dbg !1160
  %0 = bitcast %struct.stat* %st to i8*, !dbg !1161
  call void @llvm.lifetime.start(i64 144, i8* %0) #1, !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !892, metadata !995), !dbg !1162
  %1 = bitcast %struct.mmap_object** %m_obj to i8*, !dbg !1163
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %m_obj, metadata !893, metadata !995), !dbg !1164
  %2 = bitcast %struct._object** %map_size_obj to i8*, !dbg !1165
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1165
  call void @llvm.dbg.declare(metadata %struct._object** %map_size_obj, metadata !894, metadata !995), !dbg !1166
  store %struct._object* null, %struct._object** %map_size_obj, align 8, !dbg !1166, !tbaa !1005
  %3 = bitcast i64* %map_size to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1167
  call void @llvm.dbg.declare(metadata i64* %map_size, metadata !895, metadata !995), !dbg !1168
  %4 = bitcast i64* %offset to i8*, !dbg !1169
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1169
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !896, metadata !995), !dbg !1170
  store i64 0, i64* %offset, align 8, !dbg !1170, !tbaa !1063
  %5 = bitcast i32* %fd to i8*, !dbg !1171
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !897, metadata !995), !dbg !1172
  %6 = bitcast i32* %flags to i8*, !dbg !1171
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !898, metadata !995), !dbg !1173
  store i32 1, i32* %flags, align 4, !dbg !1173, !tbaa !1174
  %7 = bitcast i32* %prot to i8*, !dbg !1171
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %prot, metadata !899, metadata !995), !dbg !1175
  store i32 3, i32* %prot, align 4, !dbg !1175, !tbaa !1174
  %8 = bitcast i32* %devzero to i8*, !dbg !1176
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !1176
  call void @llvm.dbg.declare(metadata i32* %devzero, metadata !900, metadata !995), !dbg !1177
  store i32 -1, i32* %devzero, align 4, !dbg !1177, !tbaa !1174
  %9 = bitcast i32* %access to i8*, !dbg !1178
  call void @llvm.lifetime.start(i64 4, i8* %9) #1, !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %access, metadata !901, metadata !995), !dbg !1179
  store i32 0, i32* %access, align 4, !dbg !1179, !tbaa !1174
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1180, !tbaa !1005
  %11 = load %struct._object*, %struct._object** %kwdict.addr, align 8, !dbg !1182, !tbaa !1005
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @new_mmap_object.keywords, i32 0, i32 0), i32* %fd, %struct._object** %map_size_obj, i32* %flags, i32* %prot, i32* %access, i64* %offset), !dbg !1183
  %tobool = icmp ne i32 %call, 0, !dbg !1183
  br i1 %tobool, label %if.end, label %if.then, !dbg !1184

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1185
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1185

if.end:                                           ; preds = %entry
  %12 = load %struct._object*, %struct._object** %map_size_obj, align 8, !dbg !1186, !tbaa !1005
  %call1 = call i64 @_GetMapSize(%struct._object* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)), !dbg !1187
  store i64 %call1, i64* %map_size, align 8, !dbg !1188, !tbaa !1063
  %13 = load i64, i64* %map_size, align 8, !dbg !1189, !tbaa !1063
  %cmp = icmp slt i64 %13, 0, !dbg !1191
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1192

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1193

if.end.3:                                         ; preds = %if.end
  %14 = load i64, i64* %offset, align 8, !dbg !1194, !tbaa !1063
  %cmp4 = icmp slt i64 %14, 0, !dbg !1196
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1197

if.then.5:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1198, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0)), !dbg !1200
  store %struct._object* null, %struct._object** %retval, !dbg !1201
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1201

if.end.6:                                         ; preds = %if.end.3
  %16 = load i32, i32* %access, align 4, !dbg !1202, !tbaa !1174
  %cmp7 = icmp ne i32 %16, 0, !dbg !1204
  br i1 %cmp7, label %land.lhs.true, label %if.end.12, !dbg !1205

land.lhs.true:                                    ; preds = %if.end.6
  %17 = load i32, i32* %flags, align 4, !dbg !1206, !tbaa !1174
  %cmp8 = icmp ne i32 %17, 1, !dbg !1207
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false, !dbg !1208

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i32, i32* %prot, align 4, !dbg !1209, !tbaa !1174
  %cmp9 = icmp ne i32 %18, 3, !dbg !1211
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !1212

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1213, !tbaa !1005
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i32 0, i32 0)), !dbg !1214
  store %struct._object* %call11, %struct._object** %retval, !dbg !1215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1215

if.end.12:                                        ; preds = %lor.lhs.false, %if.end.6
  %20 = load i32, i32* %access, align 4, !dbg !1216, !tbaa !1174
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end.12
  %Pivot.6 = icmp slt i32 %20, 2
  br i1 %Pivot.6, label %NodeBlock, label %NodeBlock.3

NodeBlock.3:                                      ; preds = %NodeBlock.5
  %Pivot.4 = icmp slt i32 %20, 3
  br i1 %Pivot.4, label %sw.bb.13, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock.3
  %SwitchLeaf2 = icmp eq i32 %20, 3
  br i1 %SwitchLeaf2, label %sw.bb.14, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %20, 1
  br i1 %Pivot, label %LeafBlock, label %sw.bb

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %20, 0
  br i1 %SwitchLeaf, label %sw.bb.15, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock
  store i32 1, i32* %flags, align 4, !dbg !1217, !tbaa !1174
  store i32 1, i32* %prot, align 4, !dbg !1219, !tbaa !1174
  br label %sw.epilog, !dbg !1220

sw.bb.13:                                         ; preds = %NodeBlock.3
  store i32 1, i32* %flags, align 4, !dbg !1221, !tbaa !1174
  store i32 3, i32* %prot, align 4, !dbg !1222, !tbaa !1174
  br label %sw.epilog, !dbg !1223

sw.bb.14:                                         ; preds = %LeafBlock.1
  store i32 2, i32* %flags, align 4, !dbg !1224, !tbaa !1174
  store i32 3, i32* %prot, align 4, !dbg !1225, !tbaa !1174
  br label %sw.epilog, !dbg !1226

sw.bb.15:                                         ; preds = %LeafBlock
  %21 = load i32, i32* %prot, align 4, !dbg !1227, !tbaa !1174
  %and = and i32 %21, 1, !dbg !1229
  %tobool16 = icmp ne i32 %and, 0, !dbg !1229
  br i1 %tobool16, label %land.lhs.true.17, label %if.else, !dbg !1230

land.lhs.true.17:                                 ; preds = %sw.bb.15
  %22 = load i32, i32* %prot, align 4, !dbg !1231, !tbaa !1174
  %and18 = and i32 %22, 2, !dbg !1233
  %tobool19 = icmp ne i32 %and18, 0, !dbg !1233
  br i1 %tobool19, label %if.then.20, label %if.else, !dbg !1234

if.then.20:                                       ; preds = %land.lhs.true.17
  br label %if.end.26, !dbg !1235

if.else:                                          ; preds = %land.lhs.true.17, %sw.bb.15
  %23 = load i32, i32* %prot, align 4, !dbg !1237, !tbaa !1174
  %and21 = and i32 %23, 2, !dbg !1239
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1239
  br i1 %tobool22, label %if.then.23, label %if.else.24, !dbg !1240

if.then.23:                                       ; preds = %if.else
  store i32 2, i32* %access, align 4, !dbg !1241, !tbaa !1174
  br label %if.end.25, !dbg !1243

if.else.24:                                       ; preds = %if.else
  store i32 1, i32* %access, align 4, !dbg !1244, !tbaa !1174
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.20
  br label %sw.epilog, !dbg !1246

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1247, !tbaa !1005
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0)), !dbg !1248
  store %struct._object* %call27, %struct._object** %retval, !dbg !1249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1249

sw.epilog:                                        ; preds = %if.end.26, %sw.bb.14, %sw.bb.13, %sw.bb
  %25 = load i32, i32* %fd, align 4, !dbg !1250, !tbaa !1174
  %cmp28 = icmp ne i32 %25, -1, !dbg !1252
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.57, !dbg !1253

land.lhs.true.29:                                 ; preds = %sw.epilog
  %26 = load i32, i32* %fd, align 4, !dbg !1254, !tbaa !1174
  %call30 = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %26, %struct.stat* %st) #1, !dbg !1256
  %cmp31 = icmp eq i32 %call30, 0, !dbg !1257
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.57, !dbg !1258

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3, !dbg !1259
  %27 = load i32, i32* %st_mode, align 4, !dbg !1259, !tbaa !1261
  %and33 = and i32 %27, 61440, !dbg !1264
  %cmp34 = icmp eq i32 %and33, 32768, !dbg !1265
  br i1 %cmp34, label %if.then.35, label %if.end.57, !dbg !1266

if.then.35:                                       ; preds = %land.lhs.true.32
  %28 = load i64, i64* %map_size, align 8, !dbg !1267, !tbaa !1063
  %cmp36 = icmp eq i64 %28, 0, !dbg !1270
  br i1 %cmp36, label %if.then.37, label %if.else.51, !dbg !1271

if.then.37:                                       ; preds = %if.then.35
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1272
  %29 = load i64, i64* %st_size, align 8, !dbg !1272, !tbaa !1275
  %cmp38 = icmp eq i64 %29, 0, !dbg !1276
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !1277

if.then.39:                                       ; preds = %if.then.37
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1278, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0)), !dbg !1280
  store %struct._object* null, %struct._object** %retval, !dbg !1281
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1281

if.end.40:                                        ; preds = %if.then.37
  %31 = load i64, i64* %offset, align 8, !dbg !1282, !tbaa !1063
  %st_size41 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1284
  %32 = load i64, i64* %st_size41, align 8, !dbg !1284, !tbaa !1275
  %cmp42 = icmp sge i64 %31, %32, !dbg !1285
  br i1 %cmp42, label %if.then.43, label %if.end.44, !dbg !1286

if.then.43:                                       ; preds = %if.end.40
  %33 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1287, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0)), !dbg !1289
  store %struct._object* null, %struct._object** %retval, !dbg !1290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1290

if.end.44:                                        ; preds = %if.end.40
  %st_size45 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1291
  %34 = load i64, i64* %st_size45, align 8, !dbg !1291, !tbaa !1275
  %35 = load i64, i64* %offset, align 8, !dbg !1293, !tbaa !1063
  %sub = sub i64 %34, %35, !dbg !1294
  %cmp46 = icmp sgt i64 %sub, 9223372036854775807, !dbg !1295
  br i1 %cmp46, label %if.then.47, label %if.end.48, !dbg !1296

if.then.47:                                       ; preds = %if.end.44
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1297, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0)), !dbg !1299
  store %struct._object* null, %struct._object** %retval, !dbg !1300
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1300

if.end.48:                                        ; preds = %if.end.44
  %st_size49 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1301
  %37 = load i64, i64* %st_size49, align 8, !dbg !1301, !tbaa !1275
  %38 = load i64, i64* %offset, align 8, !dbg !1302, !tbaa !1063
  %sub50 = sub i64 %37, %38, !dbg !1303
  store i64 %sub50, i64* %map_size, align 8, !dbg !1304, !tbaa !1063
  br label %if.end.56, !dbg !1305

if.else.51:                                       ; preds = %if.then.35
  %39 = load i64, i64* %offset, align 8, !dbg !1306, !tbaa !1063
  %40 = load i64, i64* %map_size, align 8, !dbg !1308, !tbaa !1063
  %add = add i64 %39, %40, !dbg !1309
  %st_size52 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8, !dbg !1310
  %41 = load i64, i64* %st_size52, align 8, !dbg !1310, !tbaa !1275
  %cmp53 = icmp ugt i64 %add, %41, !dbg !1311
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !1312

if.then.54:                                       ; preds = %if.else.51
  %42 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1313, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i32 0, i32 0)), !dbg !1315
  store %struct._object* null, %struct._object** %retval, !dbg !1316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1316

if.end.55:                                        ; preds = %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.48
  br label %if.end.57, !dbg !1317

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.32, %land.lhs.true.29, %sw.epilog
  %43 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1318, !tbaa !1005
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 36, !dbg !1319
  %44 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1319, !tbaa !1320
  %45 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1321, !tbaa !1005
  %call58 = call %struct._object* %44(%struct._typeobject* %45, i64 0), !dbg !1318
  %46 = bitcast %struct._object* %call58 to %struct.mmap_object*, !dbg !1322
  store %struct.mmap_object* %46, %struct.mmap_object** %m_obj, align 8, !dbg !1323, !tbaa !1005
  %47 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1324, !tbaa !1005
  %cmp59 = icmp eq %struct.mmap_object* %47, null, !dbg !1326
  br i1 %cmp59, label %if.then.60, label %if.end.61, !dbg !1327

if.then.60:                                       ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval, !dbg !1328
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1331

if.end.61:                                        ; preds = %if.end.57
  %48 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1332, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %48, i32 0, i32 1, !dbg !1333
  store i8* null, i8** %data, align 8, !dbg !1334, !tbaa !1129
  %49 = load i64, i64* %map_size, align 8, !dbg !1335, !tbaa !1063
  %50 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1336, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %50, i32 0, i32 2, !dbg !1337
  store i64 %49, i64* %size, align 8, !dbg !1338, !tbaa !1137
  %51 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1339, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %51, i32 0, i32 3, !dbg !1340
  store i64 0, i64* %pos, align 8, !dbg !1341, !tbaa !1342
  %52 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1343, !tbaa !1005
  %weakreflist = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %52, i32 0, i32 7, !dbg !1344
  store %struct._object* null, %struct._object** %weakreflist, align 8, !dbg !1345, !tbaa !1143
  %53 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1346, !tbaa !1005
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %53, i32 0, i32 5, !dbg !1347
  store i32 0, i32* %exports, align 4, !dbg !1348, !tbaa !1349
  %54 = load i64, i64* %offset, align 8, !dbg !1350, !tbaa !1063
  %55 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1351, !tbaa !1005
  %offset62 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %55, i32 0, i32 4, !dbg !1352
  store i64 %54, i64* %offset62, align 8, !dbg !1353, !tbaa !1354
  %56 = load i32, i32* %fd, align 4, !dbg !1355, !tbaa !1174
  %cmp63 = icmp eq i32 %56, -1, !dbg !1356
  br i1 %cmp63, label %if.then.64, label %if.else.66, !dbg !1357

if.then.64:                                       ; preds = %if.end.61
  %57 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1358, !tbaa !1005
  %fd65 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %57, i32 0, i32 6, !dbg !1360
  store i32 -1, i32* %fd65, align 4, !dbg !1361, !tbaa !1118
  %58 = load i32, i32* %flags, align 4, !dbg !1362, !tbaa !1174
  %or = or i32 %58, 32, !dbg !1362
  store i32 %or, i32* %flags, align 4, !dbg !1362, !tbaa !1174
  br label %if.end.77, !dbg !1363

if.else.66:                                       ; preds = %if.end.61
  %59 = load i32, i32* %fd, align 4, !dbg !1364, !tbaa !1174
  %call67 = call i32 @_Py_dup(i32 %59), !dbg !1365
  %60 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1366, !tbaa !1005
  %fd68 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %60, i32 0, i32 6, !dbg !1367
  store i32 %call67, i32* %fd68, align 4, !dbg !1368, !tbaa !1118
  %61 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1369, !tbaa !1005
  %fd69 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %61, i32 0, i32 6, !dbg !1370
  %62 = load i32, i32* %fd69, align 4, !dbg !1370, !tbaa !1118
  %cmp70 = icmp eq i32 %62, -1, !dbg !1371
  br i1 %cmp70, label %if.then.71, label %if.end.76, !dbg !1372

if.then.71:                                       ; preds = %if.else.66
  br label %do.body, !dbg !1373

do.body:                                          ; preds = %if.then.71
  %63 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1374
  call void @llvm.lifetime.start(i64 8, i8* %63) #1, !dbg !1374
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !902, metadata !995), !dbg !1376
  %64 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1377, !tbaa !1005
  %65 = bitcast %struct.mmap_object* %64 to %struct._object*, !dbg !1378
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8, !dbg !1376, !tbaa !1005
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1379, !tbaa !1005
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !1381
  %67 = load i64, i64* %ob_refcnt, align 8, !dbg !1382, !tbaa !1088
  %dec = add i64 %67, -1, !dbg !1382
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1382, !tbaa !1088
  %cmp72 = icmp ne i64 %dec, 0, !dbg !1383
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !1384

if.then.73:                                       ; preds = %do.body
  br label %if.end.75, !dbg !1385

if.else.74:                                       ; preds = %do.body
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1387, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !1389
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1389, !tbaa !1097
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !1390
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1390, !tbaa !1099
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1391, !tbaa !1005
  call void %70(%struct._object* %71), !dbg !1392
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  %72 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1393
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !1393
  br label %do.cond, !dbg !1395

do.cond:                                          ; preds = %if.end.75
  br label %do.end, !dbg !1396

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1398
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1398

if.end.76:                                        ; preds = %if.else.66
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.64
  %73 = load i64, i64* %map_size, align 8, !dbg !1399, !tbaa !1063
  %74 = load i32, i32* %prot, align 4, !dbg !1400, !tbaa !1174
  %75 = load i32, i32* %flags, align 4, !dbg !1401, !tbaa !1174
  %76 = load i32, i32* %fd, align 4, !dbg !1402, !tbaa !1174
  %77 = load i64, i64* %offset, align 8, !dbg !1403, !tbaa !1063
  %call78 = call i8* @mmap64(i8* null, i64 %73, i32 %74, i32 %75, i32 %76, i64 %77) #1, !dbg !1404
  %78 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1405, !tbaa !1005
  %data79 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %78, i32 0, i32 1, !dbg !1406
  store i8* %call78, i8** %data79, align 8, !dbg !1407, !tbaa !1129
  %79 = load i32, i32* %devzero, align 4, !dbg !1408, !tbaa !1174
  %cmp80 = icmp ne i32 %79, -1, !dbg !1410
  br i1 %cmp80, label %if.then.81, label %if.end.83, !dbg !1411

if.then.81:                                       ; preds = %if.end.77
  %80 = load i32, i32* %devzero, align 4, !dbg !1412, !tbaa !1174
  %call82 = call i32 @close(i32 %80), !dbg !1414
  br label %if.end.83, !dbg !1415

if.end.83:                                        ; preds = %if.then.81, %if.end.77
  %81 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1416, !tbaa !1005
  %data84 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %81, i32 0, i32 1, !dbg !1417
  %82 = load i8*, i8** %data84, align 8, !dbg !1417, !tbaa !1129
  %cmp85 = icmp eq i8* %82, inttoptr (i64 -1 to i8*), !dbg !1418
  br i1 %cmp85, label %if.then.86, label %if.end.101, !dbg !1419

if.then.86:                                       ; preds = %if.end.83
  %83 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1420, !tbaa !1005
  %data87 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %83, i32 0, i32 1, !dbg !1421
  store i8* null, i8** %data87, align 8, !dbg !1422, !tbaa !1129
  br label %do.body.88, !dbg !1423

do.body.88:                                       ; preds = %if.then.86
  %84 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %84) #1, !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !908, metadata !995), !dbg !1426
  %85 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1427, !tbaa !1005
  %86 = bitcast %struct.mmap_object* %85 to %struct._object*, !dbg !1428
  store %struct._object* %86, %struct._object** %_py_decref_tmp89, align 8, !dbg !1426, !tbaa !1005
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !1429, !tbaa !1005
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0, !dbg !1431
  %88 = load i64, i64* %ob_refcnt90, align 8, !dbg !1432, !tbaa !1088
  %dec91 = add i64 %88, -1, !dbg !1432
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !1432, !tbaa !1088
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !1433
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !1434

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !1435

if.else.94:                                       ; preds = %do.body.88
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !1437, !tbaa !1005
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1, !dbg !1439
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !1439, !tbaa !1097
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4, !dbg !1440
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !1440, !tbaa !1099
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !1441, !tbaa !1005
  call void %91(%struct._object* %92), !dbg !1442
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %93 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !1443
  br label %do.cond.98, !dbg !1445

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !1446

do.end.99:                                        ; preds = %do.cond.98
  %94 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1448, !tbaa !1005
  %call100 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %94), !dbg !1449
  store %struct._object* null, %struct._object** %retval, !dbg !1450
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1450

if.end.101:                                       ; preds = %if.end.83
  %95 = load i32, i32* %access, align 4, !dbg !1451, !tbaa !1174
  %96 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1452, !tbaa !1005
  %access102 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %96, i32 0, i32 8, !dbg !1453
  store i32 %95, i32* %access102, align 4, !dbg !1454, !tbaa !1455
  %97 = load %struct.mmap_object*, %struct.mmap_object** %m_obj, align 8, !dbg !1456, !tbaa !1005
  %98 = bitcast %struct.mmap_object* %97 to %struct._object*, !dbg !1457
  store %struct._object* %98, %struct._object** %retval, !dbg !1458
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1458

cleanup:                                          ; preds = %if.end.101, %do.end.99, %do.end, %if.then.60, %if.then.54, %if.then.47, %if.then.43, %if.then.39, %sw.default, %if.then.10, %if.then.5, %if.then.2, %if.then
  %99 = bitcast i32* %access to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 4, i8* %99) #1, !dbg !1459
  %100 = bitcast i32* %devzero to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 4, i8* %100) #1, !dbg !1459
  %101 = bitcast i32* %prot to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 4, i8* %101) #1, !dbg !1459
  %102 = bitcast i32* %flags to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 4, i8* %102) #1, !dbg !1459
  %103 = bitcast i32* %fd to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 4, i8* %103) #1, !dbg !1459
  %104 = bitcast i64* %offset to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !1459
  %105 = bitcast i64* %map_size to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !1459
  %106 = bitcast %struct._object** %map_size_obj to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !1459
  %107 = bitcast %struct.mmap_object** %m_obj to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !1459
  %108 = bitcast %struct.stat* %st to i8*, !dbg !1459
  call void @llvm.lifetime.end(i64 144, i8* %108) #1, !dbg !1459
  %109 = load %struct._object*, %struct._object** %retval, !dbg !1459
  ret %struct._object* %109, !dbg !1459
}

declare void @PyObject_Free(i8*) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #4

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i64 @mmap_length(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !607, metadata !995), !dbg !1460
  br label %do.body, !dbg !1461

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1462, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1466
  %1 = load i8*, i8** %data, align 8, !dbg !1466, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1467
  br i1 %cmp, label %if.then, label %if.end, !dbg !1468

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1469, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1472
  store i64 -1, i64* %retval, !dbg !1473
  br label %return, !dbg !1473

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1474

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1476, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 2, !dbg !1477
  %4 = load i64, i64* %size, align 8, !dbg !1477, !tbaa !1137
  store i64 %4, i64* %retval, !dbg !1478
  br label %return, !dbg !1478

return:                                           ; preds = %do.end, %if.then
  %5 = load i64, i64* %retval, !dbg !1479
  ret i64 %5, !dbg !1479
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_concat(%struct.mmap_object* %self, %struct._object* %bb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %bb.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !612, metadata !995), !dbg !1480
  store %struct._object* %bb, %struct._object** %bb.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %bb.addr, metadata !613, metadata !995), !dbg !1481
  br label %do.body, !dbg !1482

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1483, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1487
  %1 = load i8*, i8** %data, align 8, !dbg !1487, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1488
  br i1 %cmp, label %if.then, label %if.end, !dbg !1489

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1490, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1493
  store %struct._object* null, %struct._object** %retval, !dbg !1494
  br label %return, !dbg !1494

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1495

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1497, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)), !dbg !1498
  store %struct._object* null, %struct._object** %retval, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %do.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1500
  ret %struct._object* %4, !dbg !1500
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_repeat(%struct.mmap_object* %self, i64 %n) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %n.addr = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !618, metadata !995), !dbg !1501
  store i64 %n, i64* %n.addr, align 8, !tbaa !1063
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !619, metadata !995), !dbg !1502
  br label %do.body, !dbg !1503

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1504, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1508
  %1 = load i8*, i8** %data, align 8, !dbg !1508, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1509
  br i1 %cmp, label %if.then, label %if.end, !dbg !1510

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1511, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1514
  store %struct._object* null, %struct._object** %retval, !dbg !1515
  br label %return, !dbg !1515

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1516

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1518, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0)), !dbg !1519
  store %struct._object* null, %struct._object** %retval, !dbg !1520
  br label %return, !dbg !1520

return:                                           ; preds = %do.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !1521
  ret %struct._object* %4, !dbg !1521
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_item(%struct.mmap_object* %self, i64 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %i.addr = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !622, metadata !995), !dbg !1522
  store i64 %i, i64* %i.addr, align 8, !tbaa !1063
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !623, metadata !995), !dbg !1523
  br label %do.body, !dbg !1524

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1525, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1529
  %1 = load i8*, i8** %data, align 8, !dbg !1529, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1530
  br i1 %cmp, label %if.then, label %if.end, !dbg !1531

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1532, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1535
  store %struct._object* null, %struct._object** %retval, !dbg !1536
  br label %return, !dbg !1536

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1537

do.end:                                           ; preds = %if.end
  %3 = load i64, i64* %i.addr, align 8, !dbg !1539, !tbaa !1063
  %cmp1 = icmp slt i64 %3, 0, !dbg !1541
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !1542

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i64, i64* %i.addr, align 8, !dbg !1543, !tbaa !1063
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1545, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 2, !dbg !1546
  %6 = load i64, i64* %size, align 8, !dbg !1546, !tbaa !1137
  %cmp2 = icmp uge i64 %4, %6, !dbg !1547
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1548

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1549, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1551
  store %struct._object* null, %struct._object** %retval, !dbg !1552
  br label %return, !dbg !1552

if.end.4:                                         ; preds = %lor.lhs.false
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1553, !tbaa !1005
  %data5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1, !dbg !1554
  %9 = load i8*, i8** %data5, align 8, !dbg !1554, !tbaa !1129
  %10 = load i64, i64* %i.addr, align 8, !dbg !1555, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %9, i64 %10, !dbg !1556
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 1), !dbg !1557
  store %struct._object* %call, %struct._object** %retval, !dbg !1558
  br label %return, !dbg !1558

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1559
  ret %struct._object* %11, !dbg !1559
}

; Function Attrs: nounwind uwtable
define internal i32 @mmap_ass_item(%struct.mmap_object* %self, i64 %i, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !628, metadata !995), !dbg !1560
  store i64 %i, i64* %i.addr, align 8, !tbaa !1063
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !629, metadata !995), !dbg !1561
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !630, metadata !995), !dbg !1562
  %0 = bitcast i8** %buf to i8*, !dbg !1563
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1563
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !631, metadata !995), !dbg !1564
  br label %do.body, !dbg !1565

do.body:                                          ; preds = %entry
  %1 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1566, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %1, i32 0, i32 1, !dbg !1570
  %2 = load i8*, i8** %data, align 8, !dbg !1570, !tbaa !1129
  %cmp = icmp eq i8* %2, null, !dbg !1571
  br i1 %cmp, label %if.then, label %if.end, !dbg !1572

if.then:                                          ; preds = %do.body
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1573, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1576
  store i32 -1, i32* %retval, !dbg !1577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1577

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1578

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1580

do.end:                                           ; preds = %do.cond
  %4 = load i64, i64* %i.addr, align 8, !dbg !1582, !tbaa !1063
  %cmp1 = icmp slt i64 %4, 0, !dbg !1584
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !1585

lor.lhs.false:                                    ; preds = %do.end
  %5 = load i64, i64* %i.addr, align 8, !dbg !1586, !tbaa !1063
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1588, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 2, !dbg !1589
  %7 = load i64, i64* %size, align 8, !dbg !1589, !tbaa !1137
  %cmp2 = icmp uge i64 %5, %7, !dbg !1590
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1591

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1592, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1594
  store i32 -1, i32* %retval, !dbg !1595
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1595

if.end.4:                                         ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1596, !tbaa !1005
  %cmp5 = icmp eq %struct._object* %9, null, !dbg !1598
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1599

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1600, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0)), !dbg !1602
  store i32 -1, i32* %retval, !dbg !1603
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1603

if.end.7:                                         ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1604, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1606
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1606, !tbaa !1097
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !1607
  %13 = load i64, i64* %tp_flags, align 8, !dbg !1607, !tbaa !1608
  %and = and i64 %13, 134217728, !dbg !1609
  %cmp8 = icmp ne i64 %and, 0, !dbg !1610
  br i1 %cmp8, label %land.lhs.true, label %if.then.10, !dbg !1611

land.lhs.true:                                    ; preds = %if.end.7
  %14 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1612, !tbaa !1005
  %call = call i64 @PyBytes_Size(%struct._object* %14), !dbg !1614
  %cmp9 = icmp eq i64 %call, 1, !dbg !1615
  br i1 %cmp9, label %if.end.11, label %if.then.10, !dbg !1616

if.then.10:                                       ; preds = %land.lhs.true, %if.end.7
  %15 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1617, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0)), !dbg !1619
  store i32 -1, i32* %retval, !dbg !1620
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1620

if.end.11:                                        ; preds = %land.lhs.true
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1621, !tbaa !1005
  %call12 = call i32 @is_writable(%struct.mmap_object* %16), !dbg !1623
  %tobool = icmp ne i32 %call12, 0, !dbg !1623
  br i1 %tobool, label %if.end.14, label %if.then.13, !dbg !1624

if.then.13:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval, !dbg !1625
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1625

if.end.14:                                        ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1626, !tbaa !1005
  %call15 = call i8* @PyBytes_AsString(%struct._object* %17), !dbg !1627
  store i8* %call15, i8** %buf, align 8, !dbg !1628, !tbaa !1005
  %18 = load i8*, i8** %buf, align 8, !dbg !1629, !tbaa !1005
  %arrayidx = getelementptr i8, i8* %18, i64 0, !dbg !1629
  %19 = load i8, i8* %arrayidx, align 1, !dbg !1629, !tbaa !1630
  %20 = load i64, i64* %i.addr, align 8, !dbg !1631, !tbaa !1063
  %21 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1632, !tbaa !1005
  %data16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %21, i32 0, i32 1, !dbg !1633
  %22 = load i8*, i8** %data16, align 8, !dbg !1633, !tbaa !1129
  %arrayidx17 = getelementptr i8, i8* %22, i64 %20, !dbg !1632
  store i8 %19, i8* %arrayidx17, align 1, !dbg !1634, !tbaa !1630
  store i32 0, i32* %retval, !dbg !1635
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1635

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.10, %if.then.6, %if.then.3, %if.then
  %23 = bitcast i8** %buf to i8*, !dbg !1636
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1636
  %24 = load i32, i32* %retval, !dbg !1636
  ret i32 %24, !dbg !1636
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i64 @PyBytes_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @is_writable(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !636, metadata !995), !dbg !1637
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1638, !tbaa !1005
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 8, !dbg !1640
  %1 = load i32, i32* %access, align 4, !dbg !1640, !tbaa !1455
  %cmp = icmp ne i32 %1, 1, !dbg !1641
  br i1 %cmp, label %if.then, label %if.end, !dbg !1642

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !1643
  br label %return, !dbg !1643

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1644, !tbaa !1005
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0)), !dbg !1645
  store i32 0, i32* %retval, !dbg !1646
  br label %return, !dbg !1646

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, !dbg !1647
  ret i32 %3, !dbg !1647
}

declare i8* @PyBytes_AsString(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_subscript(%struct.mmap_object* %self, %struct._object* %item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelen = alloca i64, align 8
  %result_buf = alloca i8*, align 8
  %cur = alloca i64, align 8
  %i45 = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !639, metadata !995), !dbg !1648
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !640, metadata !995), !dbg !1649
  br label %do.body, !dbg !1650

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1651, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1655
  %1 = load i8*, i8** %data, align 8, !dbg !1655, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1656
  br i1 %cmp, label %if.then, label %if.end, !dbg !1657

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1658, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1661
  store %struct._object* null, %struct._object** %retval, !dbg !1662
  br label %return, !dbg !1662

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1663

do.end:                                           ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1665, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1666
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1666, !tbaa !1097
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10, !dbg !1667
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1667, !tbaa !1668
  %cmp1 = icmp ne %struct.PyNumberMethods* %5, null, !dbg !1669
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !1670

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1671, !tbaa !1005
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1673
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1673, !tbaa !1097
  %tp_as_number3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 10, !dbg !1674
  %8 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number3, align 8, !dbg !1674, !tbaa !1668
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %8, i32 0, i32 33, !dbg !1675
  %9 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !1675, !tbaa !1676
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %9, null, !dbg !1678
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1679

if.then.5:                                        ; preds = %land.lhs.true
  %10 = bitcast i64* %i to i8*, !dbg !1680
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !1680
  call void @llvm.dbg.declare(metadata i64* %i, metadata !641, metadata !995), !dbg !1681
  %11 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1682, !tbaa !1005
  %12 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1683, !tbaa !1005
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %11, %struct._object* %12), !dbg !1684
  store i64 %call, i64* %i, align 8, !dbg !1681, !tbaa !1063
  %13 = load i64, i64* %i, align 8, !dbg !1685, !tbaa !1063
  %cmp6 = icmp eq i64 %13, -1, !dbg !1687
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.10, !dbg !1688

land.lhs.true.7:                                  ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !1689
  %tobool = icmp ne %struct._object* %call8, null, !dbg !1689
  br i1 %tobool, label %if.then.9, label %if.end.10, !dbg !1691

if.then.9:                                        ; preds = %land.lhs.true.7
  store %struct._object* null, %struct._object** %retval, !dbg !1692
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1692

if.end.10:                                        ; preds = %land.lhs.true.7, %if.then.5
  %14 = load i64, i64* %i, align 8, !dbg !1693, !tbaa !1063
  %cmp11 = icmp slt i64 %14, 0, !dbg !1695
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1696

if.then.12:                                       ; preds = %if.end.10
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1697, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 2, !dbg !1698
  %16 = load i64, i64* %size, align 8, !dbg !1698, !tbaa !1137
  %17 = load i64, i64* %i, align 8, !dbg !1699, !tbaa !1063
  %add = add i64 %17, %16, !dbg !1699
  store i64 %add, i64* %i, align 8, !dbg !1699, !tbaa !1063
  br label %if.end.13, !dbg !1700

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %18 = load i64, i64* %i, align 8, !dbg !1701, !tbaa !1063
  %cmp14 = icmp slt i64 %18, 0, !dbg !1703
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false, !dbg !1704

lor.lhs.false:                                    ; preds = %if.end.13
  %19 = load i64, i64* %i, align 8, !dbg !1705, !tbaa !1063
  %20 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1707, !tbaa !1005
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %20, i32 0, i32 2, !dbg !1708
  %21 = load i64, i64* %size15, align 8, !dbg !1708, !tbaa !1137
  %cmp16 = icmp uge i64 %19, %21, !dbg !1709
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !1710

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  %22 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1711, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1713
  store %struct._object* null, %struct._object** %retval, !dbg !1714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1714

if.end.18:                                        ; preds = %lor.lhs.false
  %23 = load i64, i64* %i, align 8, !dbg !1715, !tbaa !1063
  %24 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1716, !tbaa !1005
  %data19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %24, i32 0, i32 1, !dbg !1717
  %25 = load i8*, i8** %data19, align 8, !dbg !1717, !tbaa !1129
  %arrayidx = getelementptr i8, i8* %25, i64 %23, !dbg !1716
  %26 = load i8, i8* %arrayidx, align 1, !dbg !1716, !tbaa !1630
  %conv = sext i8 %26 to i32, !dbg !1718
  %and = and i32 %conv, 255, !dbg !1719
  %conv20 = trunc i32 %and to i8, !dbg !1720
  %conv21 = zext i8 %conv20 to i64, !dbg !1721
  %call22 = call %struct._object* @PyLong_FromLong(i64 %conv21), !dbg !1722
  store %struct._object* %call22, %struct._object** %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1723

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.9
  %27 = bitcast i64* %i to i8*, !dbg !1724
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1724
  br label %return

if.else:                                          ; preds = %land.lhs.true, %do.end
  %28 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1725, !tbaa !1005
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1726
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1726, !tbaa !1097
  %cmp24 = icmp eq %struct._typeobject* %29, @PySlice_Type, !dbg !1727
  br i1 %cmp24, label %if.then.26, label %if.else.66, !dbg !1728

if.then.26:                                       ; preds = %if.else
  %30 = bitcast i64* %start to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1729
  call void @llvm.dbg.declare(metadata i64* %start, metadata !644, metadata !995), !dbg !1730
  %31 = bitcast i64* %stop to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !1729
  call void @llvm.dbg.declare(metadata i64* %stop, metadata !647, metadata !995), !dbg !1731
  %32 = bitcast i64* %step to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !1729
  call void @llvm.dbg.declare(metadata i64* %step, metadata !648, metadata !995), !dbg !1732
  %33 = bitcast i64* %slicelen to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !1729
  call void @llvm.dbg.declare(metadata i64* %slicelen, metadata !649, metadata !995), !dbg !1733
  %34 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1734, !tbaa !1005
  %35 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1736, !tbaa !1005
  %size27 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %35, i32 0, i32 2, !dbg !1737
  %36 = load i64, i64* %size27, align 8, !dbg !1737, !tbaa !1137
  %call28 = call i32 @PySlice_GetIndicesEx(%struct._object* %34, i64 %36, i64* %start, i64* %stop, i64* %step, i64* %slicelen), !dbg !1738
  %cmp29 = icmp slt i32 %call28, 0, !dbg !1739
  br i1 %cmp29, label %if.then.31, label %if.end.32, !dbg !1740

if.then.31:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %retval, !dbg !1741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !1741

if.end.32:                                        ; preds = %if.then.26
  %37 = load i64, i64* %slicelen, align 8, !dbg !1743, !tbaa !1063
  %cmp33 = icmp sle i64 %37, 0, !dbg !1744
  br i1 %cmp33, label %if.then.35, label %if.else.37, !dbg !1745

if.then.35:                                       ; preds = %if.end.32
  %call36 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i64 0), !dbg !1746
  store %struct._object* %call36, %struct._object** %retval, !dbg !1747
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !1747

if.else.37:                                       ; preds = %if.end.32
  %38 = load i64, i64* %step, align 8, !dbg !1748, !tbaa !1063
  %cmp38 = icmp eq i64 %38, 1, !dbg !1749
  br i1 %cmp38, label %if.then.40, label %if.else.43, !dbg !1750

if.then.40:                                       ; preds = %if.else.37
  %39 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1751, !tbaa !1005
  %data41 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %39, i32 0, i32 1, !dbg !1752
  %40 = load i8*, i8** %data41, align 8, !dbg !1752, !tbaa !1129
  %41 = load i64, i64* %start, align 8, !dbg !1753, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %40, i64 %41, !dbg !1754
  %42 = load i64, i64* %slicelen, align 8, !dbg !1755, !tbaa !1063
  %call42 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %42), !dbg !1756
  store %struct._object* %call42, %struct._object** %retval, !dbg !1757
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62, !dbg !1757

if.else.43:                                       ; preds = %if.else.37
  %43 = bitcast i8** %result_buf to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 8, i8* %43) #1, !dbg !1758
  call void @llvm.dbg.declare(metadata i8** %result_buf, metadata !650, metadata !995), !dbg !1759
  %44 = load i64, i64* %slicelen, align 8, !dbg !1760, !tbaa !1063
  %call44 = call i8* @PyMem_Malloc(i64 %44), !dbg !1761
  store i8* %call44, i8** %result_buf, align 8, !dbg !1759, !tbaa !1005
  %45 = bitcast i64* %cur to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !1762
  call void @llvm.dbg.declare(metadata i64* %cur, metadata !654, metadata !995), !dbg !1763
  %46 = bitcast i64* %i45 to i8*, !dbg !1762
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !1762
  call void @llvm.dbg.declare(metadata i64* %i45, metadata !655, metadata !995), !dbg !1764
  %47 = bitcast %struct._object** %result to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !656, metadata !995), !dbg !1766
  %48 = load i8*, i8** %result_buf, align 8, !dbg !1767, !tbaa !1005
  %cmp46 = icmp eq i8* %48, null, !dbg !1769
  br i1 %cmp46, label %if.then.48, label %if.end.50, !dbg !1770

if.then.48:                                       ; preds = %if.else.43
  %call49 = call %struct._object* @PyErr_NoMemory(), !dbg !1771
  store %struct._object* %call49, %struct._object** %retval, !dbg !1772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1772

if.end.50:                                        ; preds = %if.else.43
  %49 = load i64, i64* %start, align 8, !dbg !1773, !tbaa !1063
  store i64 %49, i64* %cur, align 8, !dbg !1775, !tbaa !1063
  store i64 0, i64* %i45, align 8, !dbg !1776, !tbaa !1063
  br label %for.cond, !dbg !1777

for.cond:                                         ; preds = %for.inc, %if.end.50
  %50 = load i64, i64* %i45, align 8, !dbg !1778, !tbaa !1063
  %51 = load i64, i64* %slicelen, align 8, !dbg !1782, !tbaa !1063
  %cmp51 = icmp slt i64 %50, %51, !dbg !1783
  br i1 %cmp51, label %for.body, label %for.end, !dbg !1784

for.body:                                         ; preds = %for.cond
  %52 = load i64, i64* %cur, align 8, !dbg !1785, !tbaa !1063
  %53 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1787, !tbaa !1005
  %data53 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %53, i32 0, i32 1, !dbg !1788
  %54 = load i8*, i8** %data53, align 8, !dbg !1788, !tbaa !1129
  %arrayidx54 = getelementptr i8, i8* %54, i64 %52, !dbg !1787
  %55 = load i8, i8* %arrayidx54, align 1, !dbg !1787, !tbaa !1630
  %56 = load i64, i64* %i45, align 8, !dbg !1789, !tbaa !1063
  %57 = load i8*, i8** %result_buf, align 8, !dbg !1790, !tbaa !1005
  %arrayidx55 = getelementptr i8, i8* %57, i64 %56, !dbg !1790
  store i8 %55, i8* %arrayidx55, align 1, !dbg !1791, !tbaa !1630
  br label %for.inc, !dbg !1792

for.inc:                                          ; preds = %for.body
  %58 = load i64, i64* %step, align 8, !dbg !1793, !tbaa !1063
  %59 = load i64, i64* %cur, align 8, !dbg !1794, !tbaa !1063
  %add56 = add i64 %59, %58, !dbg !1794
  store i64 %add56, i64* %cur, align 8, !dbg !1794, !tbaa !1063
  %60 = load i64, i64* %i45, align 8, !dbg !1795, !tbaa !1063
  %inc = add i64 %60, 1, !dbg !1795
  store i64 %inc, i64* %i45, align 8, !dbg !1795, !tbaa !1063
  br label %for.cond, !dbg !1796

for.end:                                          ; preds = %for.cond
  %61 = load i8*, i8** %result_buf, align 8, !dbg !1797, !tbaa !1005
  %62 = load i64, i64* %slicelen, align 8, !dbg !1798, !tbaa !1063
  %call57 = call %struct._object* @PyBytes_FromStringAndSize(i8* %61, i64 %62), !dbg !1799
  store %struct._object* %call57, %struct._object** %result, align 8, !dbg !1800, !tbaa !1005
  %63 = load i8*, i8** %result_buf, align 8, !dbg !1801, !tbaa !1005
  call void @PyMem_Free(i8* %63), !dbg !1802
  %64 = load %struct._object*, %struct._object** %result, align 8, !dbg !1803, !tbaa !1005
  store %struct._object* %64, %struct._object** %retval, !dbg !1804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58, !dbg !1804

cleanup.58:                                       ; preds = %for.end, %if.then.48
  %65 = bitcast %struct._object** %result to i8*, !dbg !1805
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !1805
  %66 = bitcast i64* %i45 to i8*, !dbg !1805
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !1805
  %67 = bitcast i64* %cur to i8*, !dbg !1805
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !1805
  %68 = bitcast i8** %result_buf to i8*, !dbg !1805
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !1805
  br label %cleanup.62

cleanup.62:                                       ; preds = %cleanup.58, %if.then.40, %if.then.35, %if.then.31
  %69 = bitcast i64* %slicelen to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !1806
  %70 = bitcast i64* %step to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !1806
  %71 = bitcast i64* %stop to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !1806
  %72 = bitcast i64* %start to i8*, !dbg !1806
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !1806
  br label %return

if.else.66:                                       ; preds = %if.else
  %73 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1807, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0)), !dbg !1809
  store %struct._object* null, %struct._object** %retval, !dbg !1810
  br label %return, !dbg !1810

return:                                           ; preds = %if.else.66, %cleanup.62, %cleanup, %if.then
  %74 = load %struct._object*, %struct._object** %retval, !dbg !1811
  ret %struct._object* %74, !dbg !1811
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
  %cleanup.dest.slot = alloca i32
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelen = alloca i64, align 8
  %vbuf = alloca %struct.bufferinfo, align 8
  %cur = alloca i64, align 8
  %i82 = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !661, metadata !995), !dbg !1812
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !662, metadata !995), !dbg !1813
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !663, metadata !995), !dbg !1814
  br label %do.body, !dbg !1815

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1816, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !1820
  %1 = load i8*, i8** %data, align 8, !dbg !1820, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !1821
  br i1 %cmp, label %if.then, label %if.end, !dbg !1822

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1823, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !1826
  store i32 -1, i32* %retval, !dbg !1827
  br label %return, !dbg !1827

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1828

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1830, !tbaa !1005
  %call = call i32 @is_writable(%struct.mmap_object* %3), !dbg !1832
  %tobool = icmp ne i32 %call, 0, !dbg !1832
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1833

if.then.1:                                        ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !1834
  br label %return, !dbg !1834

if.end.2:                                         ; preds = %do.end
  %4 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1835, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1836
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1836, !tbaa !1097
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10, !dbg !1837
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1837, !tbaa !1668
  %cmp3 = icmp ne %struct.PyNumberMethods* %6, null, !dbg !1838
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !1839

land.lhs.true:                                    ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1840, !tbaa !1005
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1842
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1842, !tbaa !1097
  %tp_as_number5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 10, !dbg !1843
  %9 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number5, align 8, !dbg !1843, !tbaa !1668
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %9, i32 0, i32 33, !dbg !1844
  %10 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !1844, !tbaa !1676
  %cmp6 = icmp ne %struct._object* (%struct._object*)* %10, null, !dbg !1845
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1846

if.then.7:                                        ; preds = %land.lhs.true
  %11 = bitcast i64* %i to i8*, !dbg !1847
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1847
  call void @llvm.dbg.declare(metadata i64* %i, metadata !664, metadata !995), !dbg !1848
  %12 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1849, !tbaa !1005
  %13 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1850, !tbaa !1005
  %call8 = call i64 @PyNumber_AsSsize_t(%struct._object* %12, %struct._object* %13), !dbg !1851
  store i64 %call8, i64* %i, align 8, !dbg !1848, !tbaa !1063
  %14 = bitcast i64* %v to i8*, !dbg !1852
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1852
  call void @llvm.dbg.declare(metadata i64* %v, metadata !667, metadata !995), !dbg !1853
  %15 = load i64, i64* %i, align 8, !dbg !1854, !tbaa !1063
  %cmp9 = icmp eq i64 %15, -1, !dbg !1856
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.14, !dbg !1857

land.lhs.true.10:                                 ; preds = %if.then.7
  %call11 = call %struct._object* @PyErr_Occurred(), !dbg !1858
  %tobool12 = icmp ne %struct._object* %call11, null, !dbg !1858
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !1860

if.then.13:                                       ; preds = %land.lhs.true.10
  store i32 -1, i32* %retval, !dbg !1861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1861

if.end.14:                                        ; preds = %land.lhs.true.10, %if.then.7
  %16 = load i64, i64* %i, align 8, !dbg !1862, !tbaa !1063
  %cmp15 = icmp slt i64 %16, 0, !dbg !1864
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1865

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1866, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %17, i32 0, i32 2, !dbg !1867
  %18 = load i64, i64* %size, align 8, !dbg !1867, !tbaa !1137
  %19 = load i64, i64* %i, align 8, !dbg !1868, !tbaa !1063
  %add = add i64 %19, %18, !dbg !1868
  store i64 %add, i64* %i, align 8, !dbg !1868, !tbaa !1063
  br label %if.end.17, !dbg !1869

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %20 = load i64, i64* %i, align 8, !dbg !1870, !tbaa !1063
  %cmp18 = icmp slt i64 %20, 0, !dbg !1872
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false, !dbg !1873

lor.lhs.false:                                    ; preds = %if.end.17
  %21 = load i64, i64* %i, align 8, !dbg !1874, !tbaa !1063
  %22 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1876, !tbaa !1005
  %size19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %22, i32 0, i32 2, !dbg !1877
  %23 = load i64, i64* %size19, align 8, !dbg !1877, !tbaa !1137
  %cmp20 = icmp uge i64 %21, %23, !dbg !1878
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !1879

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.17
  %24 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1880, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1882
  store i32 -1, i32* %retval, !dbg !1883
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1883

if.end.22:                                        ; preds = %lor.lhs.false
  %25 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1884, !tbaa !1005
  %cmp23 = icmp eq %struct._object* %25, null, !dbg !1886
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !1887

if.then.24:                                       ; preds = %if.end.22
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1888, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)), !dbg !1890
  store i32 -1, i32* %retval, !dbg !1891
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1891

if.end.25:                                        ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1892, !tbaa !1005
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1894
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1894, !tbaa !1097
  %tp_as_number27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 10, !dbg !1895
  %29 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number27, align 8, !dbg !1895, !tbaa !1668
  %cmp28 = icmp ne %struct.PyNumberMethods* %29, null, !dbg !1896
  br i1 %cmp28, label %land.lhs.true.29, label %if.then.34, !dbg !1897

land.lhs.true.29:                                 ; preds = %if.end.25
  %30 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1898, !tbaa !1005
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1900
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1900, !tbaa !1097
  %tp_as_number31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 10, !dbg !1901
  %32 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number31, align 8, !dbg !1901, !tbaa !1668
  %nb_index32 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %32, i32 0, i32 33, !dbg !1902
  %33 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index32, align 8, !dbg !1902, !tbaa !1676
  %cmp33 = icmp ne %struct._object* (%struct._object*)* %33, null, !dbg !1903
  br i1 %cmp33, label %if.end.35, label %if.then.34, !dbg !1904

if.then.34:                                       ; preds = %land.lhs.true.29, %if.end.25
  %34 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1905, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0)), !dbg !1907
  store i32 -1, i32* %retval, !dbg !1908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1908

if.end.35:                                        ; preds = %land.lhs.true.29
  %35 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1909, !tbaa !1005
  %36 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1910, !tbaa !1005
  %call36 = call i64 @PyNumber_AsSsize_t(%struct._object* %35, %struct._object* %36), !dbg !1911
  store i64 %call36, i64* %v, align 8, !dbg !1912, !tbaa !1063
  %37 = load i64, i64* %v, align 8, !dbg !1913, !tbaa !1063
  %cmp37 = icmp eq i64 %37, -1, !dbg !1915
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.42, !dbg !1916

land.lhs.true.38:                                 ; preds = %if.end.35
  %call39 = call %struct._object* @PyErr_Occurred(), !dbg !1917
  %tobool40 = icmp ne %struct._object* %call39, null, !dbg !1917
  br i1 %tobool40, label %if.then.41, label %if.end.42, !dbg !1919

if.then.41:                                       ; preds = %land.lhs.true.38
  store i32 -1, i32* %retval, !dbg !1920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1920

if.end.42:                                        ; preds = %land.lhs.true.38, %if.end.35
  %38 = load i64, i64* %v, align 8, !dbg !1921, !tbaa !1063
  %cmp43 = icmp slt i64 %38, 0, !dbg !1923
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44, !dbg !1924

lor.lhs.false.44:                                 ; preds = %if.end.42
  %39 = load i64, i64* %v, align 8, !dbg !1925, !tbaa !1063
  %cmp45 = icmp sgt i64 %39, 255, !dbg !1927
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !1928

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.end.42
  %40 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1929, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0)), !dbg !1931
  store i32 -1, i32* %retval, !dbg !1932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1932

if.end.47:                                        ; preds = %lor.lhs.false.44
  %41 = load i64, i64* %v, align 8, !dbg !1933, !tbaa !1063
  %conv = trunc i64 %41 to i8, !dbg !1934
  %42 = load i64, i64* %i, align 8, !dbg !1935, !tbaa !1063
  %43 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1936, !tbaa !1005
  %data48 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %43, i32 0, i32 1, !dbg !1937
  %44 = load i8*, i8** %data48, align 8, !dbg !1937, !tbaa !1129
  %arrayidx = getelementptr i8, i8* %44, i64 %42, !dbg !1936
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1938, !tbaa !1630
  store i32 0, i32* %retval, !dbg !1939
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1939

cleanup:                                          ; preds = %if.end.47, %if.then.46, %if.then.41, %if.then.34, %if.then.24, %if.then.21, %if.then.13
  %45 = bitcast i64* %v to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1940
  %46 = bitcast i64* %i to i8*, !dbg !1940
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1940
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.2
  %47 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1941, !tbaa !1005
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1942
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !1942, !tbaa !1097
  %cmp51 = icmp eq %struct._typeobject* %48, @PySlice_Type, !dbg !1943
  br i1 %cmp51, label %if.then.53, label %if.else.97, !dbg !1944

if.then.53:                                       ; preds = %if.else
  %49 = bitcast i64* %start to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %start, metadata !668, metadata !995), !dbg !1946
  %50 = bitcast i64* %stop to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %50) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %stop, metadata !671, metadata !995), !dbg !1947
  %51 = bitcast i64* %step to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %step, metadata !672, metadata !995), !dbg !1948
  %52 = bitcast i64* %slicelen to i8*, !dbg !1945
  call void @llvm.lifetime.start(i64 8, i8* %52) #1, !dbg !1945
  call void @llvm.dbg.declare(metadata i64* %slicelen, metadata !673, metadata !995), !dbg !1949
  %53 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !1950
  call void @llvm.lifetime.start(i64 80, i8* %53) #1, !dbg !1950
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %vbuf, metadata !674, metadata !995), !dbg !1951
  %54 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !1952, !tbaa !1005
  %55 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1954, !tbaa !1005
  %size54 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %55, i32 0, i32 2, !dbg !1955
  %56 = load i64, i64* %size54, align 8, !dbg !1955, !tbaa !1137
  %call55 = call i32 @PySlice_GetIndicesEx(%struct._object* %54, i64 %56, i64* %start, i64* %stop, i64* %step, i64* %slicelen), !dbg !1956
  %cmp56 = icmp slt i32 %call55, 0, !dbg !1957
  br i1 %cmp56, label %if.then.58, label %if.end.59, !dbg !1958

if.then.58:                                       ; preds = %if.then.53
  store i32 -1, i32* %retval, !dbg !1959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92, !dbg !1959

if.end.59:                                        ; preds = %if.then.53
  %57 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1961, !tbaa !1005
  %cmp60 = icmp eq %struct._object* %57, null, !dbg !1963
  br i1 %cmp60, label %if.then.62, label %if.end.63, !dbg !1964

if.then.62:                                       ; preds = %if.end.59
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1965, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0)), !dbg !1967
  store i32 -1, i32* %retval, !dbg !1968
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92, !dbg !1968

if.end.63:                                        ; preds = %if.end.59
  %59 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1969, !tbaa !1005
  %call64 = call i32 @PyObject_GetBuffer(%struct._object* %59, %struct.bufferinfo* %vbuf, i32 0), !dbg !1971
  %cmp65 = icmp slt i32 %call64, 0, !dbg !1972
  br i1 %cmp65, label %if.then.67, label %if.end.68, !dbg !1973

if.then.67:                                       ; preds = %if.end.63
  store i32 -1, i32* %retval, !dbg !1974
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92, !dbg !1974

if.end.68:                                        ; preds = %if.end.63
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 2, !dbg !1975
  %60 = load i64, i64* %len, align 8, !dbg !1975, !tbaa !1977
  %61 = load i64, i64* %slicelen, align 8, !dbg !1979, !tbaa !1063
  %cmp69 = icmp ne i64 %60, %61, !dbg !1980
  br i1 %cmp69, label %if.then.71, label %if.end.72, !dbg !1981

if.then.71:                                       ; preds = %if.end.68
  %62 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1982, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !1984
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !1985
  store i32 -1, i32* %retval, !dbg !1986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92, !dbg !1986

if.end.72:                                        ; preds = %if.end.68
  %63 = load i64, i64* %slicelen, align 8, !dbg !1987, !tbaa !1063
  %cmp73 = icmp eq i64 %63, 0, !dbg !1988
  br i1 %cmp73, label %if.then.75, label %if.else.76, !dbg !1989

if.then.75:                                       ; preds = %if.end.72
  br label %if.end.91, !dbg !1990

if.else.76:                                       ; preds = %if.end.72
  %64 = load i64, i64* %step, align 8, !dbg !1992, !tbaa !1063
  %cmp77 = icmp eq i64 %64, 1, !dbg !1993
  br i1 %cmp77, label %if.then.79, label %if.else.81, !dbg !1994

if.then.79:                                       ; preds = %if.else.76
  %65 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !1995, !tbaa !1005
  %data80 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %65, i32 0, i32 1, !dbg !1997
  %66 = load i8*, i8** %data80, align 8, !dbg !1997, !tbaa !1129
  %67 = load i64, i64* %start, align 8, !dbg !1998, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %66, i64 %67, !dbg !1999
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0, !dbg !2000
  %68 = load i8*, i8** %buf, align 8, !dbg !2000, !tbaa !2001
  %69 = load i64, i64* %slicelen, align 8, !dbg !2002, !tbaa !1063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %68, i64 %69, i32 1, i1 false), !dbg !2003
  br label %if.end.90, !dbg !2004

if.else.81:                                       ; preds = %if.else.76
  %70 = bitcast i64* %cur to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 8, i8* %70) #1, !dbg !2005
  call void @llvm.dbg.declare(metadata i64* %cur, metadata !675, metadata !995), !dbg !2006
  %71 = bitcast i64* %i82 to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2005
  call void @llvm.dbg.declare(metadata i64* %i82, metadata !679, metadata !995), !dbg !2007
  %72 = load i64, i64* %start, align 8, !dbg !2008, !tbaa !1063
  store i64 %72, i64* %cur, align 8, !dbg !2010, !tbaa !1063
  store i64 0, i64* %i82, align 8, !dbg !2011, !tbaa !1063
  br label %for.cond, !dbg !2012

for.cond:                                         ; preds = %for.inc, %if.else.81
  %73 = load i64, i64* %i82, align 8, !dbg !2013, !tbaa !1063
  %74 = load i64, i64* %slicelen, align 8, !dbg !2015, !tbaa !1063
  %cmp83 = icmp slt i64 %73, %74, !dbg !2016
  br i1 %cmp83, label %for.body, label %for.end, !dbg !2017

for.body:                                         ; preds = %for.cond
  %75 = load i64, i64* %i82, align 8, !dbg !2018, !tbaa !1063
  %buf85 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %vbuf, i32 0, i32 0, !dbg !2020
  %76 = load i8*, i8** %buf85, align 8, !dbg !2020, !tbaa !2001
  %arrayidx86 = getelementptr i8, i8* %76, i64 %75, !dbg !2021
  %77 = load i8, i8* %arrayidx86, align 1, !dbg !2021, !tbaa !1630
  %78 = load i64, i64* %cur, align 8, !dbg !2022, !tbaa !1063
  %79 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2023, !tbaa !1005
  %data87 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %79, i32 0, i32 1, !dbg !2024
  %80 = load i8*, i8** %data87, align 8, !dbg !2024, !tbaa !1129
  %arrayidx88 = getelementptr i8, i8* %80, i64 %78, !dbg !2023
  store i8 %77, i8* %arrayidx88, align 1, !dbg !2025, !tbaa !1630
  br label %for.inc, !dbg !2026

for.inc:                                          ; preds = %for.body
  %81 = load i64, i64* %step, align 8, !dbg !2027, !tbaa !1063
  %82 = load i64, i64* %cur, align 8, !dbg !2028, !tbaa !1063
  %add89 = add i64 %82, %81, !dbg !2028
  store i64 %add89, i64* %cur, align 8, !dbg !2028, !tbaa !1063
  %83 = load i64, i64* %i82, align 8, !dbg !2029, !tbaa !1063
  %inc = add i64 %83, 1, !dbg !2029
  store i64 %inc, i64* %i82, align 8, !dbg !2029, !tbaa !1063
  br label %for.cond, !dbg !2030

for.end:                                          ; preds = %for.cond
  %84 = bitcast i64* %i82 to i8*, !dbg !2031
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !2031
  %85 = bitcast i64* %cur to i8*, !dbg !2031
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !2031
  br label %if.end.90

if.end.90:                                        ; preds = %for.end, %if.then.79
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.75
  call void @PyBuffer_Release(%struct.bufferinfo* %vbuf), !dbg !2032
  store i32 0, i32* %retval, !dbg !2033
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92, !dbg !2033

cleanup.92:                                       ; preds = %if.end.91, %if.then.71, %if.then.67, %if.then.62, %if.then.58
  %86 = bitcast %struct.bufferinfo* %vbuf to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 80, i8* %86) #1, !dbg !2034
  %87 = bitcast i64* %slicelen to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !2034
  %88 = bitcast i64* %step to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !2034
  %89 = bitcast i64* %stop to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !2034
  %90 = bitcast i64* %start to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !2034
  br label %return

if.else.97:                                       ; preds = %if.else
  %91 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2035, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0)), !dbg !2037
  store i32 -1, i32* %retval, !dbg !2038
  br label %return, !dbg !2038

return:                                           ; preds = %if.else.97, %cleanup.92, %cleanup, %if.then.1, %if.then
  %92 = load i32, i32* %retval, !dbg !2039
  ret i32 %92, !dbg !2039
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #3

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare void @PyMem_Free(i8*) #3

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @mmap_buffer_getbuf(%struct.mmap_object* %self, %struct.bufferinfo* %view, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !684, metadata !995), !dbg !2040
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !685, metadata !995), !dbg !2041
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1174
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !686, metadata !995), !dbg !2042
  br label %do.body, !dbg !2043

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2044, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2048
  %1 = load i8*, i8** %data, align 8, !dbg !2048, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2049
  br i1 %cmp, label %if.then, label %if.end, !dbg !2050

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2051, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2054
  store i32 -1, i32* %retval, !dbg !2055
  br label %return, !dbg !2055

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2056

do.end:                                           ; preds = %if.end
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8, !dbg !2058, !tbaa !1005
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2060, !tbaa !1005
  %5 = bitcast %struct.mmap_object* %4 to %struct._object*, !dbg !2061
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2062, !tbaa !1005
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 1, !dbg !2063
  %7 = load i8*, i8** %data1, align 8, !dbg !2063, !tbaa !1129
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2064, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2, !dbg !2065
  %9 = load i64, i64* %size, align 8, !dbg !2065, !tbaa !1137
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2066, !tbaa !1005
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 8, !dbg !2067
  %11 = load i32, i32* %access, align 4, !dbg !2067, !tbaa !1455
  %cmp2 = icmp eq i32 %11, 1, !dbg !2068
  %conv = zext i1 %cmp2 to i32, !dbg !2068
  %12 = load i32, i32* %flags.addr, align 4, !dbg !2069, !tbaa !1174
  %call = call i32 @PyBuffer_FillInfo(%struct.bufferinfo* %3, %struct._object* %5, i8* %7, i64 %9, i32 %conv, i32 %12), !dbg !2070
  %cmp3 = icmp slt i32 %call, 0, !dbg !2071
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !2072

if.then.5:                                        ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !2073
  br label %return, !dbg !2073

if.end.6:                                         ; preds = %do.end
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2074, !tbaa !1005
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 5, !dbg !2075
  %14 = load i32, i32* %exports, align 4, !dbg !2076, !tbaa !1349
  %inc = add i32 %14, 1, !dbg !2076
  store i32 %inc, i32* %exports, align 4, !dbg !2076, !tbaa !1349
  store i32 0, i32* %retval, !dbg !2077
  br label %return, !dbg !2077

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %15 = load i32, i32* %retval, !dbg !2078
  ret i32 %15, !dbg !2078
}

; Function Attrs: nounwind uwtable
define internal void @mmap_buffer_releasebuf(%struct.mmap_object* %self, %struct.bufferinfo* %view) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !691, metadata !995), !dbg !2079
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %view.addr, metadata !692, metadata !995), !dbg !2080
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2081, !tbaa !1005
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5, !dbg !2082
  %1 = load i32, i32* %exports, align 4, !dbg !2083, !tbaa !1349
  %dec = add i32 %1, -1, !dbg !2083
  store i32 %dec, i32* %exports, align 4, !dbg !2083, !tbaa !1349
  ret void, !dbg !2084
}

declare i32 @PyBuffer_FillInfo(%struct.bufferinfo*, %struct._object*, i8*, i64, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_close_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !695, metadata !995), !dbg !2085
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !696, metadata !995), !dbg !2086
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2087, !tbaa !1005
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5, !dbg !2089
  %1 = load i32, i32* %exports, align 4, !dbg !2089, !tbaa !1349
  %cmp = icmp sgt i32 %1, 0, !dbg !2090
  br i1 %cmp, label %if.then, label %if.end, !dbg !2091

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !2092, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0)), !dbg !2094
  store %struct._object* null, %struct._object** %retval, !dbg !2095
  br label %return, !dbg !2095

if.end:                                           ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2096, !tbaa !1005
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 6, !dbg !2098
  %4 = load i32, i32* %fd, align 4, !dbg !2098, !tbaa !1118
  %cmp1 = icmp sle i32 0, %4, !dbg !2099
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !2100

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2101, !tbaa !1005
  %fd3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 6, !dbg !2102
  %6 = load i32, i32* %fd3, align 4, !dbg !2102, !tbaa !1118
  %call = call i32 @close(i32 %6), !dbg !2103
  br label %if.end.4, !dbg !2104

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2105, !tbaa !1005
  %fd5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 6, !dbg !2106
  store i32 -1, i32* %fd5, align 4, !dbg !2107, !tbaa !1118
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2108, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1, !dbg !2110
  %9 = load i8*, i8** %data, align 8, !dbg !2110, !tbaa !1129
  %cmp6 = icmp ne i8* %9, null, !dbg !2111
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !2112

if.then.7:                                        ; preds = %if.end.4
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2113, !tbaa !1005
  %data8 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 1, !dbg !2115
  %11 = load i8*, i8** %data8, align 8, !dbg !2115, !tbaa !1129
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2116, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 2, !dbg !2117
  %13 = load i64, i64* %size, align 8, !dbg !2117, !tbaa !1137
  %call9 = call i32 @munmap(i8* %11, i64 %13) #1, !dbg !2118
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2119, !tbaa !1005
  %data10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 1, !dbg !2120
  store i8* null, i8** %data10, align 8, !dbg !2121, !tbaa !1129
  br label %if.end.11, !dbg !2122

if.end.11:                                        ; preds = %if.then.7, %if.end.4
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2123, !tbaa !1088
  %inc = add i64 %15, 1, !dbg !2123
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2123, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2124
  br label %return, !dbg !2124

return:                                           ; preds = %if.end.11, %if.then
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2125
  ret %struct._object* %16, !dbg !2125
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_find_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !699, metadata !995), !dbg !2126
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !700, metadata !995), !dbg !2127
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2128, !tbaa !1005
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2129, !tbaa !1005
  %call = call %struct._object* @mmap_gfind(%struct.mmap_object* %0, %struct._object* %1, i32 0), !dbg !2130
  ret %struct._object* %call, !dbg !2131
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_rfind_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !724, metadata !995), !dbg !2132
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !725, metadata !995), !dbg !2133
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2134, !tbaa !1005
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2135, !tbaa !1005
  %call = call %struct._object* @mmap_gfind(%struct.mmap_object* %0, %struct._object* %1, i32 1), !dbg !2136
  ret %struct._object* %call, !dbg !2137
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_flush_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !728, metadata !995), !dbg !2138
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !729, metadata !995), !dbg !2139
  %0 = bitcast i64* %offset to i8*, !dbg !2140
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2140
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !730, metadata !995), !dbg !2141
  store i64 0, i64* %offset, align 8, !dbg !2141, !tbaa !1063
  %1 = bitcast i64* %size to i8*, !dbg !2142
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2142
  call void @llvm.dbg.declare(metadata i64* %size, metadata !731, metadata !995), !dbg !2143
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2144, !tbaa !1005
  %size1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 2, !dbg !2145
  %3 = load i64, i64* %size1, align 8, !dbg !2145, !tbaa !1137
  store i64 %3, i64* %size, align 8, !dbg !2143, !tbaa !1063
  br label %do.body, !dbg !2146

do.body:                                          ; preds = %entry
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2147, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 1, !dbg !2151
  %5 = load i8*, i8** %data, align 8, !dbg !2151, !tbaa !1129
  %cmp = icmp eq i8* %5, null, !dbg !2152
  br i1 %cmp, label %if.then, label %if.end, !dbg !2153

if.then:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2154, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2157
  store %struct._object* null, %struct._object** %retval, !dbg !2158
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2158

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2159

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2161

do.end:                                           ; preds = %do.cond
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2163, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i64* %offset, i64* %size), !dbg !2165
  %tobool = icmp ne i32 %call, 0, !dbg !2165
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2166

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2167

if.end.3:                                         ; preds = %do.end
  %8 = load i64, i64* %offset, align 8, !dbg !2168, !tbaa !1063
  %9 = load i64, i64* %size, align 8, !dbg !2170, !tbaa !1063
  %add = add i64 %8, %9, !dbg !2171
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2172, !tbaa !1005
  %size4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 2, !dbg !2173
  %11 = load i64, i64* %size4, align 8, !dbg !2173, !tbaa !1137
  %cmp5 = icmp ugt i64 %add, %11, !dbg !2174
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2175

if.then.6:                                        ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2176, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0)), !dbg !2178
  store %struct._object* null, %struct._object** %retval, !dbg !2179
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2179

if.end.7:                                         ; preds = %if.end.3
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2180, !tbaa !1005
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 8, !dbg !2182
  %14 = load i32, i32* %access, align 4, !dbg !2182, !tbaa !1455
  %cmp8 = icmp eq i32 %14, 1, !dbg !2183
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false, !dbg !2184

lor.lhs.false:                                    ; preds = %if.end.7
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2185, !tbaa !1005
  %access9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 8, !dbg !2187
  %16 = load i32, i32* %access9, align 4, !dbg !2187, !tbaa !1455
  %cmp10 = icmp eq i32 %16, 3, !dbg !2188
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !2189

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  %call12 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !2190
  store %struct._object* %call12, %struct._object** %retval, !dbg !2191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2191

if.end.13:                                        ; preds = %lor.lhs.false
  %17 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2192, !tbaa !1005
  %data14 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %17, i32 0, i32 1, !dbg !2194
  %18 = load i8*, i8** %data14, align 8, !dbg !2194, !tbaa !1129
  %19 = load i64, i64* %offset, align 8, !dbg !2195, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %18, i64 %19, !dbg !2196
  %20 = load i64, i64* %size, align 8, !dbg !2197, !tbaa !1063
  %call15 = call i32 @msync(i8* %add.ptr, i64 %20, i32 4), !dbg !2198
  %cmp16 = icmp eq i32 -1, %call15, !dbg !2199
  br i1 %cmp16, label %if.then.17, label %if.end.19, !dbg !2200

if.then.17:                                       ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2201, !tbaa !1005
  %call18 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21), !dbg !2203
  store %struct._object* null, %struct._object** %retval, !dbg !2204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2204

if.end.19:                                        ; preds = %if.end.13
  %call20 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !2205
  store %struct._object* %call20, %struct._object** %retval, !dbg !2206
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2206

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.11, %if.then.6, %if.then.2, %if.then
  %22 = bitcast i64* %size to i8*, !dbg !2207
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !2207
  %23 = bitcast i64* %offset to i8*, !dbg !2207
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2207
  %24 = load %struct._object*, %struct._object** %retval, !dbg !2207
  ret %struct._object* %24, !dbg !2207
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
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !734, metadata !995), !dbg !2208
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !735, metadata !995), !dbg !2209
  %0 = bitcast i64* %dest to i8*, !dbg !2210
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2210
  call void @llvm.dbg.declare(metadata i64* %dest, metadata !736, metadata !995), !dbg !2211
  %1 = bitcast i64* %src to i8*, !dbg !2210
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2210
  call void @llvm.dbg.declare(metadata i64* %src, metadata !737, metadata !995), !dbg !2212
  %2 = bitcast i64* %cnt to i8*, !dbg !2210
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2210
  call void @llvm.dbg.declare(metadata i64* %cnt, metadata !738, metadata !995), !dbg !2213
  br label %do.body, !dbg !2214

do.body:                                          ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2215, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 1, !dbg !2219
  %4 = load i8*, i8** %data, align 8, !dbg !2219, !tbaa !1129
  %cmp = icmp eq i8* %4, null, !dbg !2220
  br i1 %cmp, label %if.then, label %if.end, !dbg !2221

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2222, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2225
  store %struct._object* null, %struct._object** %retval, !dbg !2226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2226

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2227

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2229

do.end:                                           ; preds = %do.cond
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2231, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i64* %dest, i64* %src, i64* %cnt), !dbg !2233
  %tobool = icmp ne i32 %call, 0, !dbg !2233
  br i1 %tobool, label %lor.lhs.false, label %if.then.3, !dbg !2234

lor.lhs.false:                                    ; preds = %do.end
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2235, !tbaa !1005
  %call1 = call i32 @is_writable(%struct.mmap_object* %7), !dbg !2236
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2236
  br i1 %tobool2, label %if.else, label %if.then.3, !dbg !2237

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2238
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2238

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i64, i64* %cnt, align 8, !dbg !2240, !tbaa !1063
  %9 = load i64, i64* %dest, align 8, !dbg !2243, !tbaa !1063
  %add = add i64 %8, %9, !dbg !2244
  %10 = load i64, i64* %cnt, align 8, !dbg !2245, !tbaa !1063
  %cmp4 = icmp ult i64 %add, %10, !dbg !2246
  br i1 %cmp4, label %if.then.21, label %lor.lhs.false.5, !dbg !2247

lor.lhs.false.5:                                  ; preds = %if.else
  %11 = load i64, i64* %cnt, align 8, !dbg !2248, !tbaa !1063
  %12 = load i64, i64* %src, align 8, !dbg !2250, !tbaa !1063
  %add6 = add i64 %11, %12, !dbg !2251
  %13 = load i64, i64* %cnt, align 8, !dbg !2252, !tbaa !1063
  %cmp7 = icmp ult i64 %add6, %13, !dbg !2253
  br i1 %cmp7, label %if.then.21, label %lor.lhs.false.8, !dbg !2254

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %14 = load i64, i64* %src, align 8, !dbg !2255, !tbaa !1063
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2256, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 2, !dbg !2257
  %16 = load i64, i64* %size, align 8, !dbg !2257, !tbaa !1137
  %cmp9 = icmp ugt i64 %14, %16, !dbg !2258
  br i1 %cmp9, label %if.then.21, label %lor.lhs.false.10, !dbg !2259

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %17 = load i64, i64* %src, align 8, !dbg !2260, !tbaa !1063
  %18 = load i64, i64* %cnt, align 8, !dbg !2261, !tbaa !1063
  %add11 = add i64 %17, %18, !dbg !2262
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2263, !tbaa !1005
  %size12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 2, !dbg !2264
  %20 = load i64, i64* %size12, align 8, !dbg !2264, !tbaa !1137
  %cmp13 = icmp ugt i64 %add11, %20, !dbg !2265
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false.14, !dbg !2266

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %21 = load i64, i64* %dest, align 8, !dbg !2267, !tbaa !1063
  %22 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2268, !tbaa !1005
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %22, i32 0, i32 2, !dbg !2269
  %23 = load i64, i64* %size15, align 8, !dbg !2269, !tbaa !1137
  %cmp16 = icmp ugt i64 %21, %23, !dbg !2270
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.17, !dbg !2271

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %24 = load i64, i64* %dest, align 8, !dbg !2272, !tbaa !1063
  %25 = load i64, i64* %cnt, align 8, !dbg !2273, !tbaa !1063
  %add18 = add i64 %24, %25, !dbg !2274
  %26 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2275, !tbaa !1005
  %size19 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %26, i32 0, i32 2, !dbg !2276
  %27 = load i64, i64* %size19, align 8, !dbg !2276, !tbaa !1137
  %cmp20 = icmp ugt i64 %add18, %27, !dbg !2277
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2278

if.then.21:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.5, %if.else
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2279, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0)), !dbg !2281
  store %struct._object* null, %struct._object** %retval, !dbg !2282
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2282

if.end.22:                                        ; preds = %lor.lhs.false.17
  %29 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2283, !tbaa !1005
  %data23 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %29, i32 0, i32 1, !dbg !2284
  %30 = load i8*, i8** %data23, align 8, !dbg !2284, !tbaa !1129
  %31 = load i64, i64* %dest, align 8, !dbg !2285, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %30, i64 %31, !dbg !2286
  %32 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2287, !tbaa !1005
  %data24 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %32, i32 0, i32 1, !dbg !2288
  %33 = load i8*, i8** %data24, align 8, !dbg !2288, !tbaa !1129
  %34 = load i64, i64* %src, align 8, !dbg !2289, !tbaa !1063
  %add.ptr25 = getelementptr i8, i8* %33, i64 %34, !dbg !2290
  %35 = load i64, i64* %cnt, align 8, !dbg !2291, !tbaa !1063
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr25, i64 %35, i32 1, i1 false), !dbg !2292
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2293, !tbaa !1088
  %inc = add i64 %36, 1, !dbg !2293
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2293, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2294
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2294

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.3, %if.then
  %37 = bitcast i64* %cnt to i8*, !dbg !2295
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2295
  %38 = bitcast i64* %src to i8*, !dbg !2295
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2295
  %39 = bitcast i64* %dest to i8*, !dbg !2295
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !2295
  %40 = load %struct._object*, %struct._object** %retval, !dbg !2295
  ret %struct._object* %40, !dbg !2295
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
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !741, metadata !995), !dbg !2296
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !742, metadata !995), !dbg !2297
  %0 = bitcast i64* %num_bytes to i8*, !dbg !2298
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2298
  call void @llvm.dbg.declare(metadata i64* %num_bytes, metadata !743, metadata !995), !dbg !2299
  store i64 -1, i64* %num_bytes, align 8, !dbg !2299, !tbaa !1063
  %1 = bitcast i64* %n to i8*, !dbg !2298
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2298
  call void @llvm.dbg.declare(metadata i64* %n, metadata !744, metadata !995), !dbg !2300
  %2 = bitcast %struct._object** %result to i8*, !dbg !2301
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !745, metadata !995), !dbg !2302
  br label %do.body, !dbg !2303

do.body:                                          ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2304, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 1, !dbg !2308
  %4 = load i8*, i8** %data, align 8, !dbg !2308, !tbaa !1129
  %cmp = icmp eq i8* %4, null, !dbg !2309
  br i1 %cmp, label %if.then, label %if.end, !dbg !2310

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2311, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2314
  store %struct._object* null, %struct._object** %retval, !dbg !2315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2315

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2316

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2318

do.end:                                           ; preds = %do.cond
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2320, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 (%struct._object*, i8*)* @mmap_convert_ssize_t, i64* %num_bytes), !dbg !2322
  %tobool = icmp ne i32 %call, 0, !dbg !2322
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2323

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2324
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2324

if.end.2:                                         ; preds = %do.end
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2325, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 2, !dbg !2326
  %8 = load i64, i64* %size, align 8, !dbg !2326, !tbaa !1137
  %9 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2327, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %9, i32 0, i32 3, !dbg !2328
  %10 = load i64, i64* %pos, align 8, !dbg !2328, !tbaa !1342
  %sub = sub i64 %8, %10, !dbg !2329
  store i64 %sub, i64* %n, align 8, !dbg !2330, !tbaa !1063
  %11 = load i64, i64* %n, align 8, !dbg !2331, !tbaa !1063
  %cmp3 = icmp slt i64 %11, 0, !dbg !2333
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2334

if.then.4:                                        ; preds = %if.end.2
  store i64 9223372036854775807, i64* %n, align 8, !dbg !2335, !tbaa !1063
  br label %if.end.5, !dbg !2336

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %12 = load i64, i64* %num_bytes, align 8, !dbg !2337, !tbaa !1063
  %cmp6 = icmp slt i64 %12, 0, !dbg !2339
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false, !dbg !2340

lor.lhs.false:                                    ; preds = %if.end.5
  %13 = load i64, i64* %num_bytes, align 8, !dbg !2341, !tbaa !1063
  %14 = load i64, i64* %n, align 8, !dbg !2343, !tbaa !1063
  %cmp7 = icmp sgt i64 %13, %14, !dbg !2344
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2345

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  %15 = load i64, i64* %n, align 8, !dbg !2346, !tbaa !1063
  store i64 %15, i64* %num_bytes, align 8, !dbg !2348, !tbaa !1063
  br label %if.end.9, !dbg !2349

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2350, !tbaa !1005
  %data10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 1, !dbg !2351
  %17 = load i8*, i8** %data10, align 8, !dbg !2351, !tbaa !1129
  %18 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2352, !tbaa !1005
  %pos11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %18, i32 0, i32 3, !dbg !2353
  %19 = load i64, i64* %pos11, align 8, !dbg !2353, !tbaa !1342
  %add.ptr = getelementptr i8, i8* %17, i64 %19, !dbg !2354
  %20 = load i64, i64* %num_bytes, align 8, !dbg !2355, !tbaa !1063
  %call12 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %20), !dbg !2356
  store %struct._object* %call12, %struct._object** %result, align 8, !dbg !2357, !tbaa !1005
  %21 = load i64, i64* %num_bytes, align 8, !dbg !2358, !tbaa !1063
  %22 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2359, !tbaa !1005
  %pos13 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %22, i32 0, i32 3, !dbg !2360
  %23 = load i64, i64* %pos13, align 8, !dbg !2361, !tbaa !1342
  %add = add i64 %23, %21, !dbg !2361
  store i64 %add, i64* %pos13, align 8, !dbg !2361, !tbaa !1342
  %24 = load %struct._object*, %struct._object** %result, align 8, !dbg !2362, !tbaa !1005
  store %struct._object* %24, %struct._object** %retval, !dbg !2363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2363

cleanup:                                          ; preds = %if.end.9, %if.then.1, %if.then
  %25 = bitcast %struct._object** %result to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2364
  %26 = bitcast i64* %n to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2364
  %27 = bitcast i64* %num_bytes to i8*, !dbg !2364
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2364
  %28 = load %struct._object*, %struct._object** %retval, !dbg !2364
  ret %struct._object* %28, !dbg !2364
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_read_byte_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !753, metadata !995), !dbg !2365
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !754, metadata !995), !dbg !2366
  br label %do.body, !dbg !2367

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2368, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2372
  %1 = load i8*, i8** %data, align 8, !dbg !2372, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2373
  br i1 %cmp, label %if.then, label %if.end, !dbg !2374

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2375, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2378
  store %struct._object* null, %struct._object** %retval, !dbg !2379
  br label %return, !dbg !2379

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2380

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2382, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 3, !dbg !2383
  %4 = load i64, i64* %pos, align 8, !dbg !2383, !tbaa !1342
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2384, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 2, !dbg !2385
  %6 = load i64, i64* %size, align 8, !dbg !2385, !tbaa !1137
  %cmp1 = icmp ult i64 %4, %6, !dbg !2386
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !2387

if.then.2:                                        ; preds = %do.end
  call void @llvm.lifetime.start(i64 1, i8* %value) #1, !dbg !2388
  call void @llvm.dbg.declare(metadata i8* %value, metadata !755, metadata !995), !dbg !2389
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2390, !tbaa !1005
  %pos3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 3, !dbg !2391
  %8 = load i64, i64* %pos3, align 8, !dbg !2391, !tbaa !1342
  %9 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2392, !tbaa !1005
  %data4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %9, i32 0, i32 1, !dbg !2393
  %10 = load i8*, i8** %data4, align 8, !dbg !2393, !tbaa !1129
  %arrayidx = getelementptr i8, i8* %10, i64 %8, !dbg !2392
  %11 = load i8, i8* %arrayidx, align 1, !dbg !2392, !tbaa !1630
  store i8 %11, i8* %value, align 1, !dbg !2389, !tbaa !1630
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2394, !tbaa !1005
  %pos5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 3, !dbg !2395
  %13 = load i64, i64* %pos5, align 8, !dbg !2396, !tbaa !1342
  %add = add i64 %13, 1, !dbg !2396
  store i64 %add, i64* %pos5, align 8, !dbg !2396, !tbaa !1342
  %14 = load i8, i8* %value, align 1, !dbg !2397, !tbaa !1630
  %conv = zext i8 %14 to i32, !dbg !2398
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i32 %conv), !dbg !2399
  store %struct._object* %call, %struct._object** %retval, !dbg !2400
  call void @llvm.lifetime.end(i64 1, i8* %value) #1, !dbg !2401
  br label %return

if.else:                                          ; preds = %do.end
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2402, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0)), !dbg !2404
  store %struct._object* null, %struct._object** %retval, !dbg !2405
  br label %return, !dbg !2405

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2406
  ret %struct._object* %16, !dbg !2406
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
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !760, metadata !995), !dbg !2407
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !761, metadata !995), !dbg !2408
  %0 = bitcast i8** %start to i8*, !dbg !2409
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2409
  call void @llvm.dbg.declare(metadata i8** %start, metadata !762, metadata !995), !dbg !2410
  %1 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2411, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %1, i32 0, i32 1, !dbg !2412
  %2 = load i8*, i8** %data, align 8, !dbg !2412, !tbaa !1129
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2413, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 3, !dbg !2414
  %4 = load i64, i64* %pos, align 8, !dbg !2414, !tbaa !1342
  %add.ptr = getelementptr i8, i8* %2, i64 %4, !dbg !2415
  store i8* %add.ptr, i8** %start, align 8, !dbg !2410, !tbaa !1005
  %5 = bitcast i8** %eof to i8*, !dbg !2416
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2416
  call void @llvm.dbg.declare(metadata i8** %eof, metadata !763, metadata !995), !dbg !2417
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2418, !tbaa !1005
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %6, i32 0, i32 1, !dbg !2419
  %7 = load i8*, i8** %data1, align 8, !dbg !2419, !tbaa !1129
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2420, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 2, !dbg !2421
  %9 = load i64, i64* %size, align 8, !dbg !2421, !tbaa !1137
  %add.ptr2 = getelementptr i8, i8* %7, i64 %9, !dbg !2422
  store i8* %add.ptr2, i8** %eof, align 8, !dbg !2417, !tbaa !1005
  %10 = bitcast i8** %eol to i8*, !dbg !2423
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2423
  call void @llvm.dbg.declare(metadata i8** %eol, metadata !764, metadata !995), !dbg !2424
  %11 = bitcast %struct._object** %result to i8*, !dbg !2425
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !2425
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !765, metadata !995), !dbg !2426
  br label %do.body, !dbg !2427

do.body:                                          ; preds = %entry
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2428, !tbaa !1005
  %data3 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 1, !dbg !2432
  %13 = load i8*, i8** %data3, align 8, !dbg !2432, !tbaa !1129
  %cmp = icmp eq i8* %13, null, !dbg !2433
  br i1 %cmp, label %if.then, label %if.end, !dbg !2434

if.then:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2435, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2438
  store %struct._object* null, %struct._object** %retval, !dbg !2439
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2439

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2440

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2442

do.end:                                           ; preds = %do.cond
  %15 = load i8*, i8** %start, align 8, !dbg !2444, !tbaa !1005
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2445, !tbaa !1005
  %size4 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 2, !dbg !2446
  %17 = load i64, i64* %size4, align 8, !dbg !2446, !tbaa !1137
  %18 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2447, !tbaa !1005
  %pos5 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %18, i32 0, i32 3, !dbg !2448
  %19 = load i64, i64* %pos5, align 8, !dbg !2448, !tbaa !1342
  %sub = sub i64 %17, %19, !dbg !2449
  %call = call i8* @memchr(i8* %15, i32 10, i64 %sub) #7, !dbg !2450
  store i8* %call, i8** %eol, align 8, !dbg !2451, !tbaa !1005
  %20 = load i8*, i8** %eol, align 8, !dbg !2452, !tbaa !1005
  %tobool = icmp ne i8* %20, null, !dbg !2452
  br i1 %tobool, label %if.else, label %if.then.6, !dbg !2454

if.then.6:                                        ; preds = %do.end
  %21 = load i8*, i8** %eof, align 8, !dbg !2455, !tbaa !1005
  store i8* %21, i8** %eol, align 8, !dbg !2456, !tbaa !1005
  br label %if.end.7, !dbg !2457

if.else:                                          ; preds = %do.end
  %22 = load i8*, i8** %eol, align 8, !dbg !2458, !tbaa !1005
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !2458
  store i8* %incdec.ptr, i8** %eol, align 8, !dbg !2458, !tbaa !1005
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %23 = load i8*, i8** %start, align 8, !dbg !2459, !tbaa !1005
  %24 = load i8*, i8** %eol, align 8, !dbg !2460, !tbaa !1005
  %25 = load i8*, i8** %start, align 8, !dbg !2461, !tbaa !1005
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64, !dbg !2462
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64, !dbg !2462
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2462
  %call8 = call %struct._object* @PyBytes_FromStringAndSize(i8* %23, i64 %sub.ptr.sub), !dbg !2463
  store %struct._object* %call8, %struct._object** %result, align 8, !dbg !2464, !tbaa !1005
  %26 = load i8*, i8** %eol, align 8, !dbg !2465, !tbaa !1005
  %27 = load i8*, i8** %start, align 8, !dbg !2466, !tbaa !1005
  %sub.ptr.lhs.cast9 = ptrtoint i8* %26 to i64, !dbg !2467
  %sub.ptr.rhs.cast10 = ptrtoint i8* %27 to i64, !dbg !2467
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !2467
  %28 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2468, !tbaa !1005
  %pos12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %28, i32 0, i32 3, !dbg !2469
  %29 = load i64, i64* %pos12, align 8, !dbg !2470, !tbaa !1342
  %add = add i64 %29, %sub.ptr.sub11, !dbg !2470
  store i64 %add, i64* %pos12, align 8, !dbg !2470, !tbaa !1342
  %30 = load %struct._object*, %struct._object** %result, align 8, !dbg !2471, !tbaa !1005
  store %struct._object* %30, %struct._object** %retval, !dbg !2472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2472

cleanup:                                          ; preds = %if.end.7, %if.then
  %31 = bitcast %struct._object** %result to i8*, !dbg !2473
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2473
  %32 = bitcast i8** %eol to i8*, !dbg !2473
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2473
  %33 = bitcast i8** %eof to i8*, !dbg !2473
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !2473
  %34 = bitcast i8** %start to i8*, !dbg !2473
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2473
  %35 = load %struct._object*, %struct._object** %retval, !dbg !2473
  ret %struct._object* %35, !dbg !2473
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_resize_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %newmap = alloca i8*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !768, metadata !995), !dbg !2474
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !769, metadata !995), !dbg !2475
  %0 = bitcast i64* %new_size to i8*, !dbg !2476
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2476
  call void @llvm.dbg.declare(metadata i64* %new_size, metadata !770, metadata !995), !dbg !2477
  br label %do.body, !dbg !2478

do.body:                                          ; preds = %entry
  %1 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2479, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %1, i32 0, i32 1, !dbg !2483
  %2 = load i8*, i8** %data, align 8, !dbg !2483, !tbaa !1129
  %cmp = icmp eq i8* %2, null, !dbg !2484
  br i1 %cmp, label %if.then, label %if.end, !dbg !2485

if.then:                                          ; preds = %do.body
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2486, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2489
  store %struct._object* null, %struct._object** %retval, !dbg !2490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17, !dbg !2490

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2491

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2493

do.end:                                           ; preds = %do.cond
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2495, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i64* %new_size), !dbg !2496
  %tobool = icmp ne i32 %call, 0, !dbg !2496
  br i1 %tobool, label %lor.lhs.false, label %if.then.3, !dbg !2497

lor.lhs.false:                                    ; preds = %do.end
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2498, !tbaa !1005
  %call1 = call i32 @is_resizeable(%struct.mmap_object* %5), !dbg !2499
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2499
  br i1 %tobool2, label %if.else, label %if.then.3, !dbg !2500

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17, !dbg !2501

if.else:                                          ; preds = %lor.lhs.false
  %6 = bitcast i8** %newmap to i8*, !dbg !2503
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2503
  call void @llvm.dbg.declare(metadata i8** %newmap, metadata !771, metadata !995), !dbg !2504
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2505, !tbaa !1005
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 6, !dbg !2507
  %8 = load i32, i32* %fd, align 4, !dbg !2507, !tbaa !1118
  %9 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2508, !tbaa !1005
  %offset = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %9, i32 0, i32 4, !dbg !2509
  %10 = load i64, i64* %offset, align 8, !dbg !2509, !tbaa !1354
  %11 = load i64, i64* %new_size, align 8, !dbg !2510, !tbaa !1063
  %add = add i64 %10, %11, !dbg !2511
  %call4 = call i32 @ftruncate64(i32 %8, i64 %add) #1, !dbg !2512
  %cmp5 = icmp eq i32 %call4, -1, !dbg !2513
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !2514

if.then.6:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2515, !tbaa !1005
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %12), !dbg !2517
  store %struct._object* null, %struct._object** %retval, !dbg !2518
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2518

if.end.8:                                         ; preds = %if.else
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2519, !tbaa !1005
  %data9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 1, !dbg !2520
  %14 = load i8*, i8** %data9, align 8, !dbg !2520, !tbaa !1129
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2521, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 2, !dbg !2522
  %16 = load i64, i64* %size, align 8, !dbg !2522, !tbaa !1137
  %17 = load i64, i64* %new_size, align 8, !dbg !2523, !tbaa !1063
  %call10 = call i8* (i8*, i64, i64, i32, ...) @mremap(i8* %14, i64 %16, i64 %17, i32 1) #1, !dbg !2524
  store i8* %call10, i8** %newmap, align 8, !dbg !2525, !tbaa !1005
  %18 = load i8*, i8** %newmap, align 8, !dbg !2526, !tbaa !1005
  %cmp11 = icmp eq i8* %18, inttoptr (i64 -1 to i8*), !dbg !2528
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !2529

if.then.12:                                       ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2530, !tbaa !1005
  %call13 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19), !dbg !2532
  store %struct._object* null, %struct._object** %retval, !dbg !2533
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2533

if.end.14:                                        ; preds = %if.end.8
  %20 = load i8*, i8** %newmap, align 8, !dbg !2534, !tbaa !1005
  %21 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2535, !tbaa !1005
  %data15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %21, i32 0, i32 1, !dbg !2536
  store i8* %20, i8** %data15, align 8, !dbg !2537, !tbaa !1129
  %22 = load i64, i64* %new_size, align 8, !dbg !2538, !tbaa !1063
  %23 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2539, !tbaa !1005
  %size16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %23, i32 0, i32 2, !dbg !2540
  store i64 %22, i64* %size16, align 8, !dbg !2541, !tbaa !1137
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2542, !tbaa !1088
  %inc = add i64 %24, 1, !dbg !2542
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2542, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2543
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2543

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.6
  %25 = bitcast i8** %newmap to i8*, !dbg !2544
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2544
  br label %cleanup.17

cleanup.17:                                       ; preds = %cleanup, %if.then.3, %if.then
  %26 = bitcast i64* %new_size to i8*, !dbg !2545
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2545
  %27 = load %struct._object*, %struct._object** %retval, !dbg !2545
  ret %struct._object* %27, !dbg !2545
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_seek_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %dist = alloca i64, align 8
  %how = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %where = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !779, metadata !995), !dbg !2546
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !780, metadata !995), !dbg !2547
  %0 = bitcast i64* %dist to i8*, !dbg !2548
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2548
  call void @llvm.dbg.declare(metadata i64* %dist, metadata !781, metadata !995), !dbg !2549
  %1 = bitcast i32* %how to i8*, !dbg !2550
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2550
  call void @llvm.dbg.declare(metadata i32* %how, metadata !782, metadata !995), !dbg !2551
  store i32 0, i32* %how, align 4, !dbg !2551, !tbaa !1174
  br label %do.body, !dbg !2552

do.body:                                          ; preds = %entry
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2553, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 1, !dbg !2557
  %3 = load i8*, i8** %data, align 8, !dbg !2557, !tbaa !1129
  %cmp = icmp eq i8* %3, null, !dbg !2558
  br i1 %cmp, label %if.then, label %if.end, !dbg !2559

if.then:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2560, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2563
  store %struct._object* null, %struct._object** %retval, !dbg !2564
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2564

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2565

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2567

do.end:                                           ; preds = %do.cond
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2569, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i64* %dist, i32* %how), !dbg !2570
  %tobool = icmp ne i32 %call, 0, !dbg !2570
  br i1 %tobool, label %if.else, label %if.then.1, !dbg !2571

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2572

if.else:                                          ; preds = %do.end
  %6 = bitcast i64* %where to i8*, !dbg !2573
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2573
  call void @llvm.dbg.declare(metadata i64* %where, metadata !783, metadata !995), !dbg !2574
  %7 = load i32, i32* %how, align 4, !dbg !2575, !tbaa !1174
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %if.else
  %Pivot.4 = icmp slt i32 %7, 1
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %7, 2
  br i1 %Pivot, label %sw.bb.5, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %7, 2
  br i1 %SwitchLeaf2, label %sw.bb.11, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %7, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %8 = load i64, i64* %dist, align 8, !dbg !2576, !tbaa !1063
  %cmp2 = icmp slt i64 %8, 0, !dbg !2579
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2580

if.then.3:                                        ; preds = %sw.bb
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2581

if.end.4:                                         ; preds = %sw.bb
  %9 = load i64, i64* %dist, align 8, !dbg !2582, !tbaa !1063
  store i64 %9, i64* %where, align 8, !dbg !2583, !tbaa !1063
  br label %sw.epilog, !dbg !2584

sw.bb.5:                                          ; preds = %NodeBlock
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2585, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 3, !dbg !2587
  %11 = load i64, i64* %pos, align 8, !dbg !2587, !tbaa !1342
  %12 = load i64, i64* %dist, align 8, !dbg !2588, !tbaa !1063
  %add = add i64 %11, %12, !dbg !2589
  %cmp6 = icmp slt i64 %add, 0, !dbg !2590
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2591

if.then.7:                                        ; preds = %sw.bb.5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2592

if.end.8:                                         ; preds = %sw.bb.5
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2593, !tbaa !1005
  %pos9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 3, !dbg !2594
  %14 = load i64, i64* %pos9, align 8, !dbg !2594, !tbaa !1342
  %15 = load i64, i64* %dist, align 8, !dbg !2595, !tbaa !1063
  %add10 = add i64 %14, %15, !dbg !2596
  store i64 %add10, i64* %where, align 8, !dbg !2597, !tbaa !1063
  br label %sw.epilog, !dbg !2598

sw.bb.11:                                         ; preds = %LeafBlock.1
  %16 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2599, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %16, i32 0, i32 2, !dbg !2601
  %17 = load i64, i64* %size, align 8, !dbg !2601, !tbaa !1137
  %18 = load i64, i64* %dist, align 8, !dbg !2602, !tbaa !1063
  %add12 = add i64 %17, %18, !dbg !2603
  %cmp13 = icmp slt i64 %add12, 0, !dbg !2604
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !2605

if.then.14:                                       ; preds = %sw.bb.11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2606

if.end.15:                                        ; preds = %sw.bb.11
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2607, !tbaa !1005
  %size16 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 2, !dbg !2608
  %20 = load i64, i64* %size16, align 8, !dbg !2608, !tbaa !1137
  %21 = load i64, i64* %dist, align 8, !dbg !2609, !tbaa !1063
  %add17 = add i64 %20, %21, !dbg !2610
  store i64 %add17, i64* %where, align 8, !dbg !2611, !tbaa !1063
  br label %sw.epilog, !dbg !2612

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2613, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0)), !dbg !2614
  store %struct._object* null, %struct._object** %retval, !dbg !2615
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2615

sw.epilog:                                        ; preds = %if.end.15, %if.end.8, %if.end.4
  %23 = load i64, i64* %where, align 8, !dbg !2616, !tbaa !1063
  %24 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2618, !tbaa !1005
  %size18 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %24, i32 0, i32 2, !dbg !2619
  %25 = load i64, i64* %size18, align 8, !dbg !2619, !tbaa !1137
  %cmp19 = icmp ugt i64 %23, %25, !dbg !2620
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !2621

if.then.20:                                       ; preds = %sw.epilog
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2622

if.end.21:                                        ; preds = %sw.epilog
  %26 = load i64, i64* %where, align 8, !dbg !2623, !tbaa !1063
  %27 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2624, !tbaa !1005
  %pos22 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %27, i32 0, i32 3, !dbg !2625
  store i64 %26, i64* %pos22, align 8, !dbg !2626, !tbaa !1342
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2627, !tbaa !1088
  %inc = add i64 %28, 1, !dbg !2627
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2627, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2628

cleanup:                                          ; preds = %if.end.21, %if.then.20, %sw.default, %if.then.14, %if.then.7, %if.then.3
  %29 = bitcast i64* %where to i8*, !dbg !2629
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2629
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.6

LeafBlock.6:                                      ; preds = %cleanup
  %SwitchLeaf7 = icmp eq i32 %cleanup.dest, 5
  br i1 %SwitchLeaf7, label %onoutofrange, label %NewDefault.5

onoutofrange:                                     ; preds = %LeafBlock.6
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2630, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0)), !dbg !2631
  store %struct._object* null, %struct._object** %retval, !dbg !2632
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2632

NewDefault.5:                                     ; preds = %LeafBlock.6
  br label %cleanup.23

cleanup.23:                                       ; preds = %NewDefault.5, %onoutofrange, %if.then.1, %if.then
  %31 = bitcast i32* %how to i8*, !dbg !2633
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !2633
  %32 = bitcast i64* %dist to i8*, !dbg !2633
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2633
  %33 = load %struct._object*, %struct._object** %retval, !dbg !2633
  ret %struct._object* %33, !dbg !2633
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_size_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !788, metadata !995), !dbg !2634
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !789, metadata !995), !dbg !2635
  br label %do.body, !dbg !2636

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2637, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2641
  %1 = load i8*, i8** %data, align 8, !dbg !2641, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2642
  br i1 %cmp, label %if.then, label %if.end, !dbg !2643

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2644, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2647
  store %struct._object* null, %struct._object** %retval, !dbg !2648
  br label %return, !dbg !2648

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2649

do.end:                                           ; preds = %if.end
  %3 = bitcast %struct.stat* %buf to i8*, !dbg !2651
  call void @llvm.lifetime.start(i64 144, i8* %3) #1, !dbg !2651
  call void @llvm.dbg.declare(metadata %struct.stat* %buf, metadata !790, metadata !995), !dbg !2652
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2653, !tbaa !1005
  %fd = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 6, !dbg !2655
  %5 = load i32, i32* %fd, align 4, !dbg !2655, !tbaa !1118
  %call = call i32 bitcast (i32 (i32, %struct.stat64*)* @fstat64 to i32 (i32, %struct.stat*)*)(i32 %5, %struct.stat* %buf) #1, !dbg !2656
  %cmp1 = icmp eq i32 -1, %call, !dbg !2657
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !2658

if.then.2:                                        ; preds = %do.end
  %6 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2659, !tbaa !1005
  %call3 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6), !dbg !2661
  store %struct._object* null, %struct._object** %retval, !dbg !2662
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2662

if.end.4:                                         ; preds = %do.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8, !dbg !2663
  %7 = load i64, i64* %st_size, align 8, !dbg !2663, !tbaa !1275
  %call5 = call %struct._object* @PyLong_FromLong(i64 %7), !dbg !2664
  store %struct._object* %call5, %struct._object** %retval, !dbg !2665
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2665

cleanup:                                          ; preds = %if.end.4, %if.then.2
  %8 = bitcast %struct.stat* %buf to i8*, !dbg !2666
  call void @llvm.lifetime.end(i64 144, i8* %8) #1, !dbg !2666
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %9 = load %struct._object*, %struct._object** %retval, !dbg !2667
  ret %struct._object* %9, !dbg !2667
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_tell_method(%struct.mmap_object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !857, metadata !995), !dbg !2668
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !858, metadata !995), !dbg !2669
  br label %do.body, !dbg !2670

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2671, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2675
  %1 = load i8*, i8** %data, align 8, !dbg !2675, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2676
  br i1 %cmp, label %if.then, label %if.end, !dbg !2677

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2678, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2681
  store %struct._object* null, %struct._object** %retval, !dbg !2682
  br label %return, !dbg !2682

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2683

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2685, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 3, !dbg !2686
  %4 = load i64, i64* %pos, align 8, !dbg !2686, !tbaa !1342
  %call = call %struct._object* @PyLong_FromSize_t(i64 %4), !dbg !2687
  store %struct._object* %call, %struct._object** %retval, !dbg !2688
  br label %return, !dbg !2688

return:                                           ; preds = %do.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2689
  ret %struct._object* %5, !dbg !2689
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_write_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !861, metadata !995), !dbg !2690
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !862, metadata !995), !dbg !2691
  %0 = bitcast i64* %length to i8*, !dbg !2692
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2692
  call void @llvm.dbg.declare(metadata i64* %length, metadata !863, metadata !995), !dbg !2693
  %1 = bitcast i8** %data to i8*, !dbg !2694
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2694
  call void @llvm.dbg.declare(metadata i8** %data, metadata !864, metadata !995), !dbg !2695
  br label %do.body, !dbg !2696

do.body:                                          ; preds = %entry
  %2 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2697, !tbaa !1005
  %data1 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %2, i32 0, i32 1, !dbg !2701
  %3 = load i8*, i8** %data1, align 8, !dbg !2701, !tbaa !1129
  %cmp = icmp eq i8* %3, null, !dbg !2702
  br i1 %cmp, label %if.then, label %if.end, !dbg !2703

if.then:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2704, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2707
  store %struct._object* null, %struct._object** %retval, !dbg !2708
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2708

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2709

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2711

do.end:                                           ; preds = %do.cond
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2713, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8** %data, i64* %length), !dbg !2715
  %tobool = icmp ne i32 %call, 0, !dbg !2715
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2716

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2717

if.end.3:                                         ; preds = %do.end
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2718, !tbaa !1005
  %call4 = call i32 @is_writable(%struct.mmap_object* %6), !dbg !2720
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2720
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !2721

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2722
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2722

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2723, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 3, !dbg !2725
  %8 = load i64, i64* %pos, align 8, !dbg !2725, !tbaa !1342
  %9 = load i64, i64* %length, align 8, !dbg !2726, !tbaa !1063
  %add = add i64 %8, %9, !dbg !2727
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2728, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 2, !dbg !2729
  %11 = load i64, i64* %size, align 8, !dbg !2729, !tbaa !1137
  %cmp8 = icmp ugt i64 %add, %11, !dbg !2730
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2731

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2732, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)), !dbg !2734
  store %struct._object* null, %struct._object** %retval, !dbg !2735
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2735

if.end.10:                                        ; preds = %if.end.7
  %13 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2736, !tbaa !1005
  %data11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %13, i32 0, i32 1, !dbg !2737
  %14 = load i8*, i8** %data11, align 8, !dbg !2737, !tbaa !1129
  %15 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2738, !tbaa !1005
  %pos12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %15, i32 0, i32 3, !dbg !2739
  %16 = load i64, i64* %pos12, align 8, !dbg !2739, !tbaa !1342
  %add.ptr = getelementptr i8, i8* %14, i64 %16, !dbg !2740
  %17 = load i8*, i8** %data, align 8, !dbg !2741, !tbaa !1005
  %18 = load i64, i64* %length, align 8, !dbg !2742, !tbaa !1063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %17, i64 %18, i32 1, i1 false), !dbg !2743
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2744, !tbaa !1005
  %pos13 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 3, !dbg !2745
  %20 = load i64, i64* %pos13, align 8, !dbg !2745, !tbaa !1342
  %21 = load i64, i64* %length, align 8, !dbg !2746, !tbaa !1063
  %add14 = add i64 %20, %21, !dbg !2747
  %22 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2748, !tbaa !1005
  %pos15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %22, i32 0, i32 3, !dbg !2749
  store i64 %add14, i64* %pos15, align 8, !dbg !2750, !tbaa !1342
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2751, !tbaa !1088
  %inc = add i64 %23, 1, !dbg !2751
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2751, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2752

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then.2, %if.then
  %24 = bitcast i8** %data to i8*, !dbg !2753
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2753
  %25 = bitcast i64* %length to i8*, !dbg !2753
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2753
  %26 = load %struct._object*, %struct._object** %retval, !dbg !2753
  ret %struct._object* %26, !dbg !2753
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_write_byte_method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !867, metadata !995), !dbg !2754
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !868, metadata !995), !dbg !2755
  call void @llvm.lifetime.start(i64 1, i8* %value) #1, !dbg !2756
  call void @llvm.dbg.declare(metadata i8* %value, metadata !869, metadata !995), !dbg !2757
  br label %do.body, !dbg !2758

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2759, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2763
  %1 = load i8*, i8** %data, align 8, !dbg !2763, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2764
  br i1 %cmp, label %if.then, label %if.end, !dbg !2765

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2766, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2769
  store %struct._object* null, %struct._object** %retval, !dbg !2770
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2770

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2771

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2773

do.end:                                           ; preds = %do.cond
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2775, !tbaa !1005
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i8* %value), !dbg !2777
  %tobool = icmp ne i32 %call, 0, !dbg !2777
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2778

if.then.1:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2779
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2779

if.end.2:                                         ; preds = %do.end
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2780, !tbaa !1005
  %call3 = call i32 @is_writable(%struct.mmap_object* %4), !dbg !2782
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2782
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !2783

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !2784
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2784

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2785, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 3, !dbg !2787
  %6 = load i64, i64* %pos, align 8, !dbg !2787, !tbaa !1342
  %7 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2788, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %7, i32 0, i32 2, !dbg !2789
  %8 = load i64, i64* %size, align 8, !dbg !2789, !tbaa !1137
  %cmp7 = icmp ult i64 %6, %8, !dbg !2790
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2791

if.then.8:                                        ; preds = %if.end.6
  %9 = load i8, i8* %value, align 1, !dbg !2792, !tbaa !1630
  %10 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2794, !tbaa !1005
  %data9 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %10, i32 0, i32 1, !dbg !2795
  %11 = load i8*, i8** %data9, align 8, !dbg !2795, !tbaa !1129
  %12 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2796, !tbaa !1005
  %pos10 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %12, i32 0, i32 3, !dbg !2797
  %13 = load i64, i64* %pos10, align 8, !dbg !2797, !tbaa !1342
  %add.ptr = getelementptr i8, i8* %11, i64 %13, !dbg !2798
  store i8 %9, i8* %add.ptr, align 1, !dbg !2799, !tbaa !1630
  %14 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2800, !tbaa !1005
  %pos11 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %14, i32 0, i32 3, !dbg !2801
  %15 = load i64, i64* %pos11, align 8, !dbg !2802, !tbaa !1342
  %add = add i64 %15, 1, !dbg !2802
  store i64 %add, i64* %pos11, align 8, !dbg !2802, !tbaa !1342
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2803, !tbaa !1088
  %inc = add i64 %16, 1, !dbg !2803
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2803, !tbaa !1088
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2804

if.else:                                          ; preds = %if.end.6
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2805, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0)), !dbg !2807
  store %struct._object* null, %struct._object** %retval, !dbg !2808
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2808

cleanup:                                          ; preds = %if.else, %if.then.8, %if.then.5, %if.then.1, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %value) #1, !dbg !2809
  %18 = load %struct._object*, %struct._object** %retval, !dbg !2809
  ret %struct._object* %18, !dbg !2809
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap__enter__method(%struct.mmap_object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.mmap_object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !872, metadata !995), !dbg !2810
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !873, metadata !995), !dbg !2811
  br label %do.body, !dbg !2812

do.body:                                          ; preds = %entry
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2813, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !2817
  %1 = load i8*, i8** %data, align 8, !dbg !2817, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !2818
  br i1 %cmp, label %if.then, label %if.end, !dbg !2819

if.then:                                          ; preds = %do.body
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2820, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2823
  store %struct._object* null, %struct._object** %retval, !dbg !2824
  br label %return, !dbg !2824

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !2825

do.end:                                           ; preds = %if.end
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2827, !tbaa !1005
  %4 = bitcast %struct.mmap_object* %3 to %struct._object*, !dbg !2828
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !2829
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2830, !tbaa !1088
  %inc = add i64 %5, 1, !dbg !2830
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2830, !tbaa !1088
  %6 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2831, !tbaa !1005
  %7 = bitcast %struct.mmap_object* %6 to %struct._object*, !dbg !2832
  store %struct._object* %7, %struct._object** %retval, !dbg !2833
  br label %return, !dbg !2833

return:                                           ; preds = %do.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2834
  ret %struct._object* %8, !dbg !2834
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap__exit__method(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !876, metadata !995), !dbg !2835
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !877, metadata !995), !dbg !2836
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !2837, !tbaa !1005
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %0, %struct._Py_Identifier* @mmap__exit__method.PyId_close, i8* null), !dbg !2838
  ret %struct._object* %call, !dbg !2839
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
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %start_p = alloca i8*, align 8
  %end_p = alloca i8*, align 8
  %sign = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !705, metadata !995), !dbg !2840
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !706, metadata !995), !dbg !2841
  store i32 %reverse, i32* %reverse.addr, align 4, !tbaa !1174
  call void @llvm.dbg.declare(metadata i32* %reverse.addr, metadata !707, metadata !995), !dbg !2842
  %0 = bitcast i64* %start to i8*, !dbg !2843
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2843
  call void @llvm.dbg.declare(metadata i64* %start, metadata !708, metadata !995), !dbg !2844
  %1 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2845, !tbaa !1005
  %pos = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %1, i32 0, i32 3, !dbg !2846
  %2 = load i64, i64* %pos, align 8, !dbg !2846, !tbaa !1342
  store i64 %2, i64* %start, align 8, !dbg !2844, !tbaa !1063
  %3 = bitcast i64* %end to i8*, !dbg !2847
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2847
  call void @llvm.dbg.declare(metadata i64* %end, metadata !709, metadata !995), !dbg !2848
  %4 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2849, !tbaa !1005
  %size = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %4, i32 0, i32 2, !dbg !2850
  %5 = load i64, i64* %size, align 8, !dbg !2850, !tbaa !1137
  store i64 %5, i64* %end, align 8, !dbg !2848, !tbaa !1063
  %6 = bitcast i8** %needle to i8*, !dbg !2851
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2851
  call void @llvm.dbg.declare(metadata i8** %needle, metadata !710, metadata !995), !dbg !2852
  %7 = bitcast i64* %len to i8*, !dbg !2853
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2853
  call void @llvm.dbg.declare(metadata i64* %len, metadata !711, metadata !995), !dbg !2854
  br label %do.body, !dbg !2855

do.body:                                          ; preds = %entry
  %8 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2856, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %8, i32 0, i32 1, !dbg !2860
  %9 = load i8*, i8** %data, align 8, !dbg !2860, !tbaa !1129
  %cmp = icmp eq i8* %9, null, !dbg !2861
  br i1 %cmp, label %if.then, label %if.end, !dbg !2862

if.then:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2863, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0)), !dbg !2866
  store %struct._object* null, %struct._object** %retval, !dbg !2867
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64, !dbg !2867

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2868

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2870

do.end:                                           ; preds = %do.cond
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2872, !tbaa !1005
  %12 = load i32, i32* %reverse.addr, align 4, !dbg !2873, !tbaa !1174
  %tobool = icmp ne i32 %12, 0, !dbg !2873
  %cond = select i1 %tobool, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), !dbg !2873
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %11, i8* %cond, i8** %needle, i64* %len, i64* %start, i64* %end), !dbg !2874
  %tobool1 = icmp ne i32 %call, 0, !dbg !2874
  br i1 %tobool1, label %if.else, label %if.then.2, !dbg !2875

if.then.2:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2876
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64, !dbg !2876

if.else:                                          ; preds = %do.end
  %13 = bitcast i8** %p to i8*, !dbg !2878
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2878
  call void @llvm.dbg.declare(metadata i8** %p, metadata !712, metadata !995), !dbg !2879
  %14 = bitcast i8** %start_p to i8*, !dbg !2878
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !2878
  call void @llvm.dbg.declare(metadata i8** %start_p, metadata !715, metadata !995), !dbg !2880
  %15 = bitcast i8** %end_p to i8*, !dbg !2878
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !2878
  call void @llvm.dbg.declare(metadata i8** %end_p, metadata !716, metadata !995), !dbg !2881
  %16 = bitcast i32* %sign to i8*, !dbg !2882
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !2882
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !717, metadata !995), !dbg !2883
  %17 = load i32, i32* %reverse.addr, align 4, !dbg !2884, !tbaa !1174
  %tobool3 = icmp ne i32 %17, 0, !dbg !2884
  %cond4 = select i1 %tobool3, i32 -1, i32 1, !dbg !2884
  store i32 %cond4, i32* %sign, align 4, !dbg !2883, !tbaa !1174
  %18 = load i64, i64* %start, align 8, !dbg !2885, !tbaa !1063
  %cmp5 = icmp slt i64 %18, 0, !dbg !2887
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !2888

if.then.6:                                        ; preds = %if.else
  %19 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2889, !tbaa !1005
  %size7 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %19, i32 0, i32 2, !dbg !2890
  %20 = load i64, i64* %size7, align 8, !dbg !2890, !tbaa !1137
  %21 = load i64, i64* %start, align 8, !dbg !2891, !tbaa !1063
  %add = add i64 %21, %20, !dbg !2891
  store i64 %add, i64* %start, align 8, !dbg !2891, !tbaa !1063
  br label %if.end.8, !dbg !2892

if.end.8:                                         ; preds = %if.then.6, %if.else
  %22 = load i64, i64* %start, align 8, !dbg !2893, !tbaa !1063
  %cmp9 = icmp slt i64 %22, 0, !dbg !2895
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !2896

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %start, align 8, !dbg !2897, !tbaa !1063
  br label %if.end.17, !dbg !2898

if.else.11:                                       ; preds = %if.end.8
  %23 = load i64, i64* %start, align 8, !dbg !2899, !tbaa !1063
  %24 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2901, !tbaa !1005
  %size12 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %24, i32 0, i32 2, !dbg !2902
  %25 = load i64, i64* %size12, align 8, !dbg !2902, !tbaa !1137
  %cmp13 = icmp ugt i64 %23, %25, !dbg !2903
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !2904

if.then.14:                                       ; preds = %if.else.11
  %26 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2905, !tbaa !1005
  %size15 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %26, i32 0, i32 2, !dbg !2906
  %27 = load i64, i64* %size15, align 8, !dbg !2906, !tbaa !1137
  store i64 %27, i64* %start, align 8, !dbg !2907, !tbaa !1063
  br label %if.end.16, !dbg !2908

if.end.16:                                        ; preds = %if.then.14, %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %28 = load i64, i64* %end, align 8, !dbg !2909, !tbaa !1063
  %cmp18 = icmp slt i64 %28, 0, !dbg !2911
  br i1 %cmp18, label %if.then.19, label %if.end.22, !dbg !2912

if.then.19:                                       ; preds = %if.end.17
  %29 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2913, !tbaa !1005
  %size20 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %29, i32 0, i32 2, !dbg !2914
  %30 = load i64, i64* %size20, align 8, !dbg !2914, !tbaa !1137
  %31 = load i64, i64* %end, align 8, !dbg !2915, !tbaa !1063
  %add21 = add i64 %31, %30, !dbg !2915
  store i64 %add21, i64* %end, align 8, !dbg !2915, !tbaa !1063
  br label %if.end.22, !dbg !2916

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %32 = load i64, i64* %end, align 8, !dbg !2917, !tbaa !1063
  %cmp23 = icmp slt i64 %32, 0, !dbg !2919
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !2920

if.then.24:                                       ; preds = %if.end.22
  store i64 0, i64* %end, align 8, !dbg !2921, !tbaa !1063
  br label %if.end.31, !dbg !2922

if.else.25:                                       ; preds = %if.end.22
  %33 = load i64, i64* %end, align 8, !dbg !2923, !tbaa !1063
  %34 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2925, !tbaa !1005
  %size26 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %34, i32 0, i32 2, !dbg !2926
  %35 = load i64, i64* %size26, align 8, !dbg !2926, !tbaa !1137
  %cmp27 = icmp ugt i64 %33, %35, !dbg !2927
  br i1 %cmp27, label %if.then.28, label %if.end.30, !dbg !2928

if.then.28:                                       ; preds = %if.else.25
  %36 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2929, !tbaa !1005
  %size29 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %36, i32 0, i32 2, !dbg !2930
  %37 = load i64, i64* %size29, align 8, !dbg !2930, !tbaa !1137
  store i64 %37, i64* %end, align 8, !dbg !2931, !tbaa !1063
  br label %if.end.30, !dbg !2932

if.end.30:                                        ; preds = %if.then.28, %if.else.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  %38 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2933, !tbaa !1005
  %data32 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %38, i32 0, i32 1, !dbg !2934
  %39 = load i8*, i8** %data32, align 8, !dbg !2934, !tbaa !1129
  %40 = load i64, i64* %start, align 8, !dbg !2935, !tbaa !1063
  %add.ptr = getelementptr i8, i8* %39, i64 %40, !dbg !2936
  store i8* %add.ptr, i8** %start_p, align 8, !dbg !2937, !tbaa !1005
  %41 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2938, !tbaa !1005
  %data33 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %41, i32 0, i32 1, !dbg !2939
  %42 = load i8*, i8** %data33, align 8, !dbg !2939, !tbaa !1129
  %43 = load i64, i64* %end, align 8, !dbg !2940, !tbaa !1063
  %add.ptr34 = getelementptr i8, i8* %42, i64 %43, !dbg !2941
  store i8* %add.ptr34, i8** %end_p, align 8, !dbg !2942, !tbaa !1005
  %44 = load i32, i32* %reverse.addr, align 4, !dbg !2943, !tbaa !1174
  %tobool35 = icmp ne i32 %44, 0, !dbg !2943
  br i1 %tobool35, label %cond.true, label %cond.false, !dbg !2943

cond.true:                                        ; preds = %if.end.31
  %45 = load i8*, i8** %end_p, align 8, !dbg !2944, !tbaa !1005
  %46 = load i64, i64* %len, align 8, !dbg !2946, !tbaa !1063
  %idx.neg = sub i64 0, %46, !dbg !2947
  %add.ptr36 = getelementptr i8, i8* %45, i64 %idx.neg, !dbg !2947
  br label %cond.end, !dbg !2943

cond.false:                                       ; preds = %if.end.31
  %47 = load i8*, i8** %start_p, align 8, !dbg !2948, !tbaa !1005
  br label %cond.end, !dbg !2943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i8* [ %add.ptr36, %cond.true ], [ %47, %cond.false ], !dbg !2943
  store i8* %cond37, i8** %p, align 8, !dbg !2950, !tbaa !1005
  br label %for.cond, !dbg !2953

for.cond:                                         ; preds = %for.inc.56, %cond.end
  %48 = load i8*, i8** %p, align 8, !dbg !2954, !tbaa !1005
  %49 = load i8*, i8** %start_p, align 8, !dbg !2955, !tbaa !1005
  %cmp38 = icmp uge i8* %48, %49, !dbg !2956
  br i1 %cmp38, label %land.rhs, label %land.end, !dbg !2957

land.rhs:                                         ; preds = %for.cond
  %50 = load i8*, i8** %p, align 8, !dbg !2958, !tbaa !1005
  %51 = load i64, i64* %len, align 8, !dbg !2960, !tbaa !1063
  %add.ptr39 = getelementptr i8, i8* %50, i64 %51, !dbg !2961
  %52 = load i8*, i8** %end_p, align 8, !dbg !2962, !tbaa !1005
  %cmp40 = icmp ule i8* %add.ptr39, %52, !dbg !2963
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %53 = phi i1 [ false, %for.cond ], [ %cmp40, %land.rhs ]
  br i1 %53, label %for.body, label %for.end.58, !dbg !2964

for.body:                                         ; preds = %land.end
  %54 = bitcast i64* %i to i8*, !dbg !2965
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !2965
  call void @llvm.dbg.declare(metadata i64* %i, metadata !718, metadata !995), !dbg !2966
  store i64 0, i64* %i, align 8, !dbg !2967, !tbaa !1063
  br label %for.cond.41, !dbg !2969

for.cond.41:                                      ; preds = %for.inc, %for.body
  %55 = load i64, i64* %i, align 8, !dbg !2970, !tbaa !1063
  %56 = load i64, i64* %len, align 8, !dbg !2974, !tbaa !1063
  %cmp42 = icmp slt i64 %55, %56, !dbg !2975
  br i1 %cmp42, label %land.rhs.43, label %land.end.48, !dbg !2976

land.rhs.43:                                      ; preds = %for.cond.41
  %57 = load i64, i64* %i, align 8, !dbg !2977, !tbaa !1063
  %58 = load i8*, i8** %needle, align 8, !dbg !2979, !tbaa !1005
  %arrayidx = getelementptr i8, i8* %58, i64 %57, !dbg !2979
  %59 = load i8, i8* %arrayidx, align 1, !dbg !2979, !tbaa !1630
  %conv = sext i8 %59 to i32, !dbg !2979
  %60 = load i64, i64* %i, align 8, !dbg !2980, !tbaa !1063
  %61 = load i8*, i8** %p, align 8, !dbg !2981, !tbaa !1005
  %arrayidx44 = getelementptr i8, i8* %61, i64 %60, !dbg !2981
  %62 = load i8, i8* %arrayidx44, align 1, !dbg !2981, !tbaa !1630
  %conv45 = sext i8 %62 to i32, !dbg !2981
  %cmp46 = icmp eq i32 %conv, %conv45, !dbg !2982
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.43, %for.cond.41
  %63 = phi i1 [ false, %for.cond.41 ], [ %cmp46, %land.rhs.43 ]
  br i1 %63, label %for.body.49, label %for.end, !dbg !2983

for.body.49:                                      ; preds = %land.end.48
  br label %for.inc, !dbg !2985

for.inc:                                          ; preds = %for.body.49
  %64 = load i64, i64* %i, align 8, !dbg !2987, !tbaa !1063
  %inc = add i64 %64, 1, !dbg !2987
  store i64 %inc, i64* %i, align 8, !dbg !2987, !tbaa !1063
  br label %for.cond.41, !dbg !2989

for.end:                                          ; preds = %land.end.48
  %65 = load i64, i64* %i, align 8, !dbg !2990, !tbaa !1063
  %66 = load i64, i64* %len, align 8, !dbg !2992, !tbaa !1063
  %cmp50 = icmp eq i64 %65, %66, !dbg !2993
  br i1 %cmp50, label %if.then.52, label %if.end.55, !dbg !2994

if.then.52:                                       ; preds = %for.end
  %67 = load i8*, i8** %p, align 8, !dbg !2995, !tbaa !1005
  %68 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !2997, !tbaa !1005
  %data53 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %68, i32 0, i32 1, !dbg !2998
  %69 = load i8*, i8** %data53, align 8, !dbg !2998, !tbaa !1129
  %sub.ptr.lhs.cast = ptrtoint i8* %67 to i64, !dbg !2999
  %sub.ptr.rhs.cast = ptrtoint i8* %69 to i64, !dbg !2999
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2999
  %call54 = call %struct._object* @PyLong_FromSsize_t(i64 %sub.ptr.sub), !dbg !3000
  store %struct._object* %call54, %struct._object** %retval, !dbg !3001
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3001

if.end.55:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !3002
  br label %cleanup, !dbg !3002

cleanup:                                          ; preds = %if.end.55, %if.then.52
  %70 = bitcast i64* %i to i8*, !dbg !3003
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !3003
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc.56, !dbg !3004

for.inc.56:                                       ; preds = %cleanup.cont
  %71 = load i32, i32* %sign, align 4, !dbg !3005, !tbaa !1174
  %72 = load i8*, i8** %p, align 8, !dbg !3006, !tbaa !1005
  %idx.ext = sext i32 %71 to i64, !dbg !3006
  %add.ptr57 = getelementptr i8, i8* %72, i64 %idx.ext, !dbg !3006
  store i8* %add.ptr57, i8** %p, align 8, !dbg !3006, !tbaa !1005
  br label %for.cond, !dbg !3007

for.end.58:                                       ; preds = %land.end
  %call59 = call %struct._object* @PyLong_FromLong(i64 -1), !dbg !3008
  store %struct._object* %call59, %struct._object** %retval, !dbg !3009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60, !dbg !3009

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.60

cleanup.60:                                       ; preds = %NewDefault, %for.end.58
  %73 = bitcast i32* %sign to i8*, !dbg !3010
  call void @llvm.lifetime.end(i64 4, i8* %73) #1, !dbg !3010
  %74 = bitcast i8** %end_p to i8*, !dbg !3010
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !3010
  %75 = bitcast i8** %start_p to i8*, !dbg !3010
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !3010
  %76 = bitcast i8** %p to i8*, !dbg !3010
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !3010
  br label %cleanup.64

cleanup.64:                                       ; preds = %cleanup.60, %if.then.2, %if.then
  %77 = bitcast i64* %len to i8*, !dbg !3011
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !3011
  %78 = bitcast i8** %needle to i8*, !dbg !3011
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !3011
  %79 = bitcast i64* %end to i8*, !dbg !3011
  call void @llvm.lifetime.end(i64 8, i8* %79) #1, !dbg !3011
  %80 = bitcast i64* %start to i8*, !dbg !3011
  call void @llvm.lifetime.end(i64 8, i8* %80) #1, !dbg !3011
  %81 = load %struct._object*, %struct._object** %retval, !dbg !3011
  ret %struct._object* %81, !dbg !3011
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i32 @msync(i8*, i64, i32) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @mmap_convert_ssize_t(%struct._object* %obj, i8* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %result.addr = alloca i8*, align 8
  %limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !748, metadata !995), !dbg !3012
  store i8* %result, i8** %result.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata i8** %result.addr, metadata !749, metadata !995), !dbg !3013
  %0 = bitcast i64* %limit to i8*, !dbg !3014
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3014
  call void @llvm.dbg.declare(metadata i64* %limit, metadata !750, metadata !995), !dbg !3015
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3016, !tbaa !1005
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !3018
  br i1 %cmp, label %if.then, label %if.else, !dbg !3019

if.then:                                          ; preds = %entry
  store i64 -1, i64* %limit, align 8, !dbg !3020, !tbaa !1063
  br label %if.end.10, !dbg !3022

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3023, !tbaa !1005
  %call = call i32 @PyNumber_Check(%struct._object* %2), !dbg !3025
  %tobool = icmp ne i32 %call, 0, !dbg !3025
  br i1 %tobool, label %if.then.1, label %if.else.7, !dbg !3026

if.then.1:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3027, !tbaa !1005
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3029, !tbaa !1005
  %call2 = call i64 @PyNumber_AsSsize_t(%struct._object* %3, %struct._object* %4), !dbg !3030
  store i64 %call2, i64* %limit, align 8, !dbg !3031, !tbaa !1063
  %5 = load i64, i64* %limit, align 8, !dbg !3032, !tbaa !1063
  %cmp3 = icmp eq i64 %5, -1, !dbg !3034
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !3035

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3036
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !3036
  br i1 %tobool5, label %if.then.6, label %if.end, !dbg !3038

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !3039
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3039

if.end:                                           ; preds = %land.lhs.true, %if.then.1
  br label %if.end.9, !dbg !3040

if.else.7:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3041, !tbaa !1005
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3043, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3044
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3044, !tbaa !1097
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1, !dbg !3045
  %9 = load i8*, i8** %tp_name, align 8, !dbg !3045, !tbaa !3046
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0), i8* %9), !dbg !3047
  store i32 0, i32* %retval, !dbg !3048
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3048

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %10 = load i64, i64* %limit, align 8, !dbg !3049, !tbaa !1063
  %11 = load i8*, i8** %result.addr, align 8, !dbg !3050, !tbaa !1005
  %12 = bitcast i8* %11 to i64*, !dbg !3051
  store i64 %10, i64* %12, align 8, !dbg !3052, !tbaa !1063
  store i32 1, i32* %retval, !dbg !3053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3053

cleanup:                                          ; preds = %if.end.10, %if.else.7, %if.then.6
  %13 = bitcast i64* %limit to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3054
  %14 = load i32, i32* %retval, !dbg !3054
  ret i32 %14, !dbg !3054
}

declare i32 @PyNumber_Check(%struct._object*) #3

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @is_resizeable(%struct.mmap_object* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !776, metadata !995), !dbg !3055
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !3056, !tbaa !1005
  %exports = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 5, !dbg !3058
  %1 = load i32, i32* %exports, align 4, !dbg !3058, !tbaa !1349
  %cmp = icmp sgt i32 %1, 0, !dbg !3059
  br i1 %cmp, label %if.then, label %if.end, !dbg !3060

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !3061, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i32 0, i32 0)), !dbg !3063
  store i32 0, i32* %retval, !dbg !3064
  br label %return, !dbg !3064

if.end:                                           ; preds = %entry
  %3 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !3065, !tbaa !1005
  %access = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %3, i32 0, i32 8, !dbg !3067
  %4 = load i32, i32* %access, align 4, !dbg !3067, !tbaa !1455
  %cmp1 = icmp eq i32 %4, 2, !dbg !3068
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false, !dbg !3069

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !3070, !tbaa !1005
  %access2 = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %5, i32 0, i32 8, !dbg !3072
  %6 = load i32, i32* %access2, align 4, !dbg !3072, !tbaa !1455
  %cmp3 = icmp eq i32 %6, 0, !dbg !3073
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3074

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval, !dbg !3075
  br label %return, !dbg !3075

if.end.5:                                         ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3076, !tbaa !1005
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.61, i32 0, i32 0)), !dbg !3077
  store i32 0, i32* %retval, !dbg !3078
  br label %return, !dbg !3078

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %8 = load i32, i32* %retval, !dbg !3079
  ret i32 %8, !dbg !3079
}

; Function Attrs: nounwind
declare i32 @ftruncate64(i32, i64) #4

; Function Attrs: nounwind
declare i8* @mremap(i8*, i64, i64, i32, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat64(i32 %__fd, %struct.stat64* nonnull %__statbuf) #6 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !1174
  call void @llvm.dbg.declare(metadata i32* %__fd.addr, metadata !853, metadata !995), !dbg !3080
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !854, metadata !995), !dbg !3081
  %0 = load i32, i32* %__fd.addr, align 4, !dbg !3082, !tbaa !1174
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !3083, !tbaa !1005
  %call = call i32 @__fxstat64(i32 1, i32 %0, %struct.stat64* %1) #1, !dbg !3084
  ret i32 %call, !dbg !3085
}

; Function Attrs: nounwind
declare i32 @__fxstat64(i32, i32, %struct.stat64*) #4

declare %struct._object* @PyLong_FromSize_t(i64) #3

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @mmap_closed_get(%struct.mmap_object* %self) #0 {
entry:
  %self.addr = alloca %struct.mmap_object*, align 8
  store %struct.mmap_object* %self, %struct.mmap_object** %self.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct.mmap_object** %self.addr, metadata !882, metadata !995), !dbg !3086
  %0 = load %struct.mmap_object*, %struct.mmap_object** %self.addr, align 8, !dbg !3087, !tbaa !1005
  %data = getelementptr inbounds %struct.mmap_object, %struct.mmap_object* %0, i32 0, i32 1, !dbg !3088
  %1 = load i8*, i8** %data, align 8, !dbg !3088, !tbaa !1129
  %cmp = icmp eq i8* %1, null, !dbg !3089
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !3087
  %conv = sext i32 %cond to i64, !dbg !3087
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !3090
  ret %struct._object* %call, !dbg !3091
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @_GetMapSize(%struct._object* %o, i8* %param) #0 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct._object*, align 8
  %param.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !916, metadata !995), !dbg !3092
  store i8* %param, i8** %param.addr, align 8, !tbaa !1005
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !917, metadata !995), !dbg !3093
  %0 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !3094, !tbaa !1005
  %cmp = icmp eq %struct._object* %0, null, !dbg !3096
  br i1 %cmp, label %if.then, label %if.end, !dbg !3097

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, !dbg !3098
  br label %return, !dbg !3098

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !3099, !tbaa !1005
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !3100
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3100, !tbaa !1097
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 10, !dbg !3101
  %3 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !3101, !tbaa !1668
  %cmp1 = icmp ne %struct.PyNumberMethods* %3, null, !dbg !3102
  br i1 %cmp1, label %land.lhs.true, label %if.end.15, !dbg !3103

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !3104, !tbaa !1005
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3106
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !3106, !tbaa !1097
  %tp_as_number3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 10, !dbg !3107
  %6 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number3, align 8, !dbg !3107, !tbaa !1668
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %6, i32 0, i32 33, !dbg !3108
  %7 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !3108, !tbaa !1676
  %cmp4 = icmp ne %struct._object* (%struct._object*)* %7, null, !dbg !3109
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !3110

if.then.5:                                        ; preds = %land.lhs.true
  %8 = bitcast i64* %i to i8*, !dbg !3111
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3111
  call void @llvm.dbg.declare(metadata i64* %i, metadata !918, metadata !995), !dbg !3112
  %9 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !3113, !tbaa !1005
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3114, !tbaa !1005
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %9, %struct._object* %10), !dbg !3115
  store i64 %call, i64* %i, align 8, !dbg !3112, !tbaa !1063
  %11 = load i64, i64* %i, align 8, !dbg !3116, !tbaa !1063
  %cmp6 = icmp eq i64 %11, -1, !dbg !3118
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.10, !dbg !3119

land.lhs.true.7:                                  ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !3120
  %tobool = icmp ne %struct._object* %call8, null, !dbg !3120
  br i1 %tobool, label %if.then.9, label %if.end.10, !dbg !3122

if.then.9:                                        ; preds = %land.lhs.true.7
  store i64 -1, i64* %retval, !dbg !3123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3123

if.end.10:                                        ; preds = %land.lhs.true.7, %if.then.5
  %12 = load i64, i64* %i, align 8, !dbg !3124, !tbaa !1063
  %cmp11 = icmp slt i64 %12, 0, !dbg !3126
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !3127

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3128, !tbaa !1005
  %14 = load i8*, i8** %param.addr, align 8, !dbg !3130, !tbaa !1005
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %14), !dbg !3131
  store i64 -1, i64* %retval, !dbg !3132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3132

if.end.14:                                        ; preds = %if.end.10
  %15 = load i64, i64* %i, align 8, !dbg !3133, !tbaa !1063
  store i64 %15, i64* %retval, !dbg !3134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3134

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.9
  %16 = bitcast i64* %i to i8*, !dbg !3135
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !3135
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3136, !tbaa !1005
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i32 0, i32 0)), !dbg !3137
  store i64 -1, i64* %retval, !dbg !3138
  br label %return, !dbg !3138

return:                                           ; preds = %if.end.15, %cleanup, %if.then
  %18 = load i64, i64* %retval, !dbg !3139
  ret i64 %18, !dbg !3139
}

declare i32 @_Py_dup(i32) #3

; Function Attrs: nounwind
declare i8* @mmap64(i8*, i64, i32, i32, i32, i64) #4

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!990, !991, !992}
!llvm.ident = !{!993}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !228, subprograms: !591, globals: !937)
!1 = !DIFile(filename: "mmapmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 82, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/mmapmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "ACCESS_DEFAULT", value: 0)
!7 = !DIEnumerator(name: "ACCESS_READ", value: 1)
!8 = !DIEnumerator(name: "ACCESS_WRITE", value: 2)
!9 = !DIEnumerator(name: "ACCESS_COPY", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 72, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!13 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!14 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!15 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!16 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!17 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!18 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!19 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!20 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!21 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!22 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!23 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!24 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!25 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!26 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!27 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!28 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!29 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!30 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!31 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!32 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!33 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!34 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!35 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!36 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!37 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!38 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!39 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!40 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!41 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!42 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!43 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!44 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!45 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!46 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!47 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!48 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!49 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!50 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!51 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!52 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!53 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!54 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!55 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!56 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!57 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!58 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!59 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!60 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!61 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!62 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!63 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!64 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!65 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!66 = !DIEnumerator(name: "_SC_PII", value: 53)
!67 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!68 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!70 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!71 = !DIEnumerator(name: "_SC_POLL", value: 58)
!72 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!73 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!74 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!75 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!76 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!77 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!78 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!79 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!80 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!81 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!82 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!83 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!84 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!85 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!86 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!87 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!88 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!89 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!90 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!91 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!92 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!93 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!94 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!95 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!96 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!97 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!98 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!99 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!100 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!101 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!102 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!103 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!104 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!105 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!106 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!107 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!108 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!109 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!110 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!111 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!112 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!113 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!114 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!115 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!116 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!117 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!118 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!119 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!120 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!121 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!122 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!123 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!124 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!125 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!126 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!127 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!128 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!129 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!130 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!131 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!132 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!133 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!134 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!135 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!136 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!137 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!138 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!139 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!140 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!141 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!142 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!143 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!144 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!145 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!146 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!147 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!148 = !DIEnumerator(name: "_SC_BASE", value: 134)
!149 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!150 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!151 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!152 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!153 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!154 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!155 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!156 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!157 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!158 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!159 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!160 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!161 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!162 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!163 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!164 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!165 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!166 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!167 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!168 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!169 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!170 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!171 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!172 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!173 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!174 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!175 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!176 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!177 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!178 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!179 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!180 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!181 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!182 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!183 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!184 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!185 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!186 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!187 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!188 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!189 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!190 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!191 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!192 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!193 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!194 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!195 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!196 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!197 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!198 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!199 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!200 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!201 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!202 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!203 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!204 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!205 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!206 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!207 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!208 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!209 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!210 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!211 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!212 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!213 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!214 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!215 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!216 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!217 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!218 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!219 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!220 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!221 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!222 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!223 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!224 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!225 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!226 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!227 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!228 = !{!229, !230, !242, !319, !575, !277, !256, !236, !472, !269, !576, !577}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !232, line: 109, baseType: !233)
!232 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !232, line: 105, size: 128, align: 64, elements: !234)
!234 = !{!235, !243}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !233, file: !232, line: 107, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !237, line: 177, baseType: !238)
!237 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !239, line: 102, baseType: !240)
!239 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !241, line: 181, baseType: !242)
!241 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!242 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !233, file: !232, line: 108, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !232, line: 334, size: 3200, align: 64, elements: !246)
!246 = !{!247, !253, !257, !258, !259, !264, !327, !332, !337, !338, !343, !395, !426, !438, !444, !445, !446, !448, !450, !481, !482, !483, !492, !493, !498, !499, !501, !503, !513, !523, !541, !542, !543, !545, !547, !548, !550, !555, !560, !565, !566, !567, !568, !569, !570, !571, !572, !574}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !245, file: !232, line: 335, baseType: !248, size: 192, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !232, line: 114, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 111, size: 192, align: 64, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !249, file: !232, line: 112, baseType: !231, size: 128, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !249, file: !232, line: 113, baseType: !236, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !245, file: !232, line: 336, baseType: !254, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !245, file: !232, line: 337, baseType: !236, size: 64, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !245, file: !232, line: 337, baseType: !236, size: 64, align: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !245, file: !232, line: 341, baseType: !260, size: 64, align: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !232, line: 308, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !230}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !245, file: !232, line: 342, baseType: !265, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !232, line: 314, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !230, !270, !269}
!269 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !239, line: 48, baseType: !272)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !273, line: 246, size: 1728, align: 64, elements: !274)
!273 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!274 = !{!275, !276, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !296, !297, !298, !299, !301, !303, !305, !309, !312, !314, !315, !316, !317, !318, !322, !323}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !272, file: !273, line: 247, baseType: !269, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !272, file: !273, line: 252, baseType: !277, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !272, file: !273, line: 253, baseType: !277, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !272, file: !273, line: 254, baseType: !277, size: 64, align: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !272, file: !273, line: 255, baseType: !277, size: 64, align: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !272, file: !273, line: 256, baseType: !277, size: 64, align: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !272, file: !273, line: 257, baseType: !277, size: 64, align: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !272, file: !273, line: 258, baseType: !277, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !272, file: !273, line: 259, baseType: !277, size: 64, align: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !272, file: !273, line: 261, baseType: !277, size: 64, align: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !272, file: !273, line: 262, baseType: !277, size: 64, align: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !272, file: !273, line: 263, baseType: !277, size: 64, align: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !272, file: !273, line: 265, baseType: !289, size: 64, align: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !273, line: 161, size: 192, align: 64, elements: !291)
!291 = !{!292, !293, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !290, file: !273, line: 162, baseType: !289, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !290, file: !273, line: 163, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !290, file: !273, line: 167, baseType: !269, size: 32, align: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !272, file: !273, line: 267, baseType: !294, size: 64, align: 64, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !272, file: !273, line: 269, baseType: !269, size: 32, align: 32, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !272, file: !273, line: 273, baseType: !269, size: 32, align: 32, offset: 928)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !272, file: !273, line: 275, baseType: !300, size: 64, align: 64, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 140, baseType: !242)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !272, file: !273, line: 279, baseType: !302, size: 16, align: 16, offset: 1024)
!302 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !272, file: !273, line: 280, baseType: !304, size: 8, align: 8, offset: 1040)
!304 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !272, file: !273, line: 281, baseType: !306, size: 8, align: 8, offset: 1048)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 8, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 1)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !272, file: !273, line: 285, baseType: !310, size: 64, align: 64, offset: 1088)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !273, line: 155, baseType: null)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !272, file: !273, line: 294, baseType: !313, size: 64, align: 64, offset: 1152)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 141, baseType: !242)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !272, file: !273, line: 303, baseType: !229, size: 64, align: 64, offset: 1216)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !272, file: !273, line: 304, baseType: !229, size: 64, align: 64, offset: 1280)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !272, file: !273, line: 305, baseType: !229, size: 64, align: 64, offset: 1344)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !272, file: !273, line: 306, baseType: !229, size: 64, align: 64, offset: 1408)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !272, file: !273, line: 307, baseType: !319, size: 64, align: 64, offset: 1472)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 62, baseType: !321)
!320 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!321 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !272, file: !273, line: 309, baseType: !269, size: 32, align: 32, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !272, file: !273, line: 311, baseType: !324, size: 160, align: 8, offset: 1568)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 160, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 20)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !245, file: !232, line: 343, baseType: !328, size: 64, align: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !232, line: 316, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!230, !230, !277}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !245, file: !232, line: 344, baseType: !333, size: 64, align: 64, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !232, line: 318, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!269, !230, !277, !230}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !245, file: !232, line: 345, baseType: !229, size: 64, align: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !245, file: !232, line: 346, baseType: !339, size: 64, align: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !232, line: 320, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!230, !230}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !245, file: !232, line: 350, baseType: !344, size: 64, align: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !232, line: 278, baseType: !346)
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 236, size: 2176, align: 64, elements: !347)
!347 = !{!348, !353, !354, !355, !356, !357, !362, !364, !365, !366, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !346, file: !232, line: 241, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !232, line: 166, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!230, !230, !230}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !346, file: !232, line: 242, baseType: !349, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !346, file: !232, line: 243, baseType: !349, size: 64, align: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !346, file: !232, line: 244, baseType: !349, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !346, file: !232, line: 245, baseType: !349, size: 64, align: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !346, file: !232, line: 246, baseType: !358, size: 64, align: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !232, line: 167, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!230, !230, !230, !230}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !346, file: !232, line: 247, baseType: !363, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !232, line: 165, baseType: !340)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !346, file: !232, line: 248, baseType: !363, size: 64, align: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !346, file: !232, line: 249, baseType: !363, size: 64, align: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !346, file: !232, line: 250, baseType: !367, size: 64, align: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !232, line: 168, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!269, !230}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !346, file: !232, line: 251, baseType: !363, size: 64, align: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !346, file: !232, line: 252, baseType: !349, size: 64, align: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !346, file: !232, line: 253, baseType: !349, size: 64, align: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !346, file: !232, line: 254, baseType: !349, size: 64, align: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !346, file: !232, line: 255, baseType: !349, size: 64, align: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !346, file: !232, line: 256, baseType: !349, size: 64, align: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !346, file: !232, line: 257, baseType: !363, size: 64, align: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !346, file: !232, line: 258, baseType: !229, size: 64, align: 64, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !346, file: !232, line: 259, baseType: !363, size: 64, align: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !346, file: !232, line: 261, baseType: !349, size: 64, align: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !346, file: !232, line: 262, baseType: !349, size: 64, align: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !346, file: !232, line: 263, baseType: !349, size: 64, align: 64, offset: 1344)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !346, file: !232, line: 264, baseType: !349, size: 64, align: 64, offset: 1408)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !346, file: !232, line: 265, baseType: !358, size: 64, align: 64, offset: 1472)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !346, file: !232, line: 266, baseType: !349, size: 64, align: 64, offset: 1536)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !346, file: !232, line: 267, baseType: !349, size: 64, align: 64, offset: 1600)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !346, file: !232, line: 268, baseType: !349, size: 64, align: 64, offset: 1664)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !346, file: !232, line: 269, baseType: !349, size: 64, align: 64, offset: 1728)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !346, file: !232, line: 270, baseType: !349, size: 64, align: 64, offset: 1792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !346, file: !232, line: 272, baseType: !349, size: 64, align: 64, offset: 1856)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !346, file: !232, line: 273, baseType: !349, size: 64, align: 64, offset: 1920)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !346, file: !232, line: 274, baseType: !349, size: 64, align: 64, offset: 1984)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !346, file: !232, line: 275, baseType: !349, size: 64, align: 64, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !346, file: !232, line: 277, baseType: !363, size: 64, align: 64, offset: 2112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !245, file: !232, line: 351, baseType: !396, size: 64, align: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !232, line: 292, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 280, size: 640, align: 64, elements: !399)
!399 = !{!400, !405, !406, !411, !412, !413, !418, !419, !424, !425}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !398, file: !232, line: 281, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !232, line: 169, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!236, !230}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !398, file: !232, line: 282, baseType: !349, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !398, file: !232, line: 283, baseType: !407, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !232, line: 170, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!230, !230, !236}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !398, file: !232, line: 284, baseType: !407, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !398, file: !232, line: 285, baseType: !229, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !398, file: !232, line: 286, baseType: !414, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !232, line: 172, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!269, !230, !236, !230}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !398, file: !232, line: 287, baseType: !229, size: 64, align: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !398, file: !232, line: 288, baseType: !420, size: 64, align: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !232, line: 231, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!269, !230, !230}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !398, file: !232, line: 290, baseType: !349, size: 64, align: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !398, file: !232, line: 291, baseType: !407, size: 64, align: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !245, file: !232, line: 352, baseType: !427, size: 64, align: 64, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !232, line: 298, baseType: !429)
!429 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 294, size: 192, align: 64, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !429, file: !232, line: 295, baseType: !401, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !429, file: !232, line: 296, baseType: !349, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !429, file: !232, line: 297, baseType: !434, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !232, line: 174, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!269, !230, !230, !230}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !245, file: !232, line: 356, baseType: !439, size: 64, align: 64, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !232, line: 321, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !230}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !237, line: 186, baseType: !236)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !245, file: !232, line: 357, baseType: !358, size: 64, align: 64, offset: 1024)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !245, file: !232, line: 358, baseType: !339, size: 64, align: 64, offset: 1088)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !245, file: !232, line: 359, baseType: !447, size: 64, align: 64, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !232, line: 317, baseType: !350)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !245, file: !232, line: 360, baseType: !449, size: 64, align: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !232, line: 319, baseType: !435)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !245, file: !232, line: 363, baseType: !451, size: 64, align: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !232, line: 304, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 301, size: 128, align: 64, elements: !454)
!454 = !{!455, !476}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !453, file: !232, line: 302, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !232, line: 193, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!269, !230, !460, !269}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !232, line: 191, baseType: !462)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !232, line: 178, size: 640, align: 64, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !473, !474, !475}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !462, file: !232, line: 179, baseType: !229, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !462, file: !232, line: 180, baseType: !230, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !462, file: !232, line: 181, baseType: !236, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !462, file: !232, line: 182, baseType: !236, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !462, file: !232, line: 184, baseType: !269, size: 32, align: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !462, file: !232, line: 185, baseType: !269, size: 32, align: 32, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !462, file: !232, line: 186, baseType: !277, size: 64, align: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !462, file: !232, line: 187, baseType: !472, size: 64, align: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !462, file: !232, line: 188, baseType: !472, size: 64, align: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !462, file: !232, line: 189, baseType: !472, size: 64, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !462, file: !232, line: 190, baseType: !229, size: 64, align: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !453, file: !232, line: 303, baseType: !477, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !232, line: 194, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !230, !460}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !245, file: !232, line: 366, baseType: !321, size: 64, align: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !245, file: !232, line: 368, baseType: !254, size: 64, align: 64, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !245, file: !232, line: 372, baseType: !484, size: 64, align: 64, offset: 1472)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !232, line: 233, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!269, !230, !488, !229}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !232, line: 232, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!269, !230, !229}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !245, file: !232, line: 375, baseType: !367, size: 64, align: 64, offset: 1536)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !245, file: !232, line: 379, baseType: !494, size: 64, align: 64, offset: 1600)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !232, line: 322, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!230, !230, !230, !269}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !245, file: !232, line: 382, baseType: !236, size: 64, align: 64, offset: 1664)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !245, file: !232, line: 385, baseType: !500, size: 64, align: 64, offset: 1728)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !232, line: 323, baseType: !340)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !245, file: !232, line: 386, baseType: !502, size: 64, align: 64, offset: 1792)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !232, line: 324, baseType: !340)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !245, file: !232, line: 389, baseType: !504, size: 64, align: 64, offset: 1856)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !506, line: 40, size: 256, align: 64, elements: !507)
!506 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!507 = !{!508, !509, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !505, file: !506, line: 41, baseType: !254, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !505, file: !506, line: 42, baseType: !510, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !506, line: 18, baseType: !350)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !505, file: !506, line: 43, baseType: !269, size: 32, align: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !505, file: !506, line: 45, baseType: !254, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !245, file: !232, line: 390, baseType: !514, size: 64, align: 64, offset: 1920)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !516, line: 18, size: 320, align: 64, elements: !517)
!516 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!517 = !{!518, !519, !520, !521, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !516, line: 19, baseType: !277, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !515, file: !516, line: 20, baseType: !269, size: 32, align: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !515, file: !516, line: 21, baseType: !236, size: 64, align: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !516, line: 22, baseType: !269, size: 32, align: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !515, file: !516, line: 23, baseType: !277, size: 64, align: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !245, file: !232, line: 391, baseType: !524, size: 64, align: 64, offset: 1984)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !526, line: 11, size: 320, align: 64, elements: !527)
!526 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!527 = !{!528, !529, !534, !539, !540}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !525, file: !526, line: 12, baseType: !277, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !525, file: !526, line: 13, baseType: !530, size: 64, align: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !526, line: 8, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!230, !230, !229}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !525, file: !526, line: 14, baseType: !535, size: 64, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !526, line: 9, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!269, !230, !230, !229}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !525, file: !526, line: 15, baseType: !277, size: 64, align: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !525, file: !526, line: 16, baseType: !229, size: 64, align: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !245, file: !232, line: 392, baseType: !244, size: 64, align: 64, offset: 2048)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !245, file: !232, line: 393, baseType: !230, size: 64, align: 64, offset: 2112)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !245, file: !232, line: 394, baseType: !544, size: 64, align: 64, offset: 2176)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !232, line: 325, baseType: !359)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !245, file: !232, line: 395, baseType: !546, size: 64, align: 64, offset: 2240)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !232, line: 326, baseType: !435)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !245, file: !232, line: 396, baseType: !236, size: 64, align: 64, offset: 2304)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !245, file: !232, line: 397, baseType: !549, size: 64, align: 64, offset: 2368)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !232, line: 327, baseType: !435)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !245, file: !232, line: 398, baseType: !551, size: 64, align: 64, offset: 2432)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !232, line: 329, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!230, !244, !236}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !245, file: !232, line: 399, baseType: !556, size: 64, align: 64, offset: 2496)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !232, line: 328, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!230, !244, !230, !230}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !245, file: !232, line: 400, baseType: !561, size: 64, align: 64, offset: 2560)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !232, line: 307, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !229}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !245, file: !232, line: 401, baseType: !367, size: 64, align: 64, offset: 2624)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !245, file: !232, line: 402, baseType: !230, size: 64, align: 64, offset: 2688)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !245, file: !232, line: 403, baseType: !230, size: 64, align: 64, offset: 2752)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !245, file: !232, line: 404, baseType: !230, size: 64, align: 64, offset: 2816)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !245, file: !232, line: 405, baseType: !230, size: 64, align: 64, offset: 2880)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !245, file: !232, line: 406, baseType: !230, size: 64, align: 64, offset: 2944)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !245, file: !232, line: 407, baseType: !260, size: 64, align: 64, offset: 3008)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !245, file: !232, line: 410, baseType: !573, size: 32, align: 32, offset: 3072)
!573 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !245, file: !232, line: 412, baseType: !260, size: 64, align: 64, offset: 3136)
!575 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "access_mode", file: !4, line: 88, baseType: !3)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmap_object", file: !4, line: 114, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 90, size: 576, align: 64, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !587, !588, !589, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !579, file: !4, line: 91, baseType: !231, size: 128, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !579, file: !4, line: 92, baseType: !277, size: 64, align: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !579, file: !4, line: 93, baseType: !319, size: 64, align: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !579, file: !4, line: 94, baseType: !319, size: 64, align: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !579, file: !4, line: 98, baseType: !586, size: 64, align: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 92, baseType: !313)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exports", scope: !579, file: !4, line: 100, baseType: !269, size: 32, align: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !579, file: !4, line: 109, baseType: !269, size: 32, align: 32, offset: 416)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !579, file: !4, line: 112, baseType: !230, size: 64, align: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !579, file: !4, line: 113, baseType: !576, size: 32, align: 32, offset: 512)
!591 = !{!592, !598, !603, !608, !614, !620, !624, !632, !637, !657, !680, !687, !693, !697, !701, !722, !726, !732, !739, !746, !751, !758, !766, !774, !777, !786, !828, !855, !859, !865, !870, !874, !878, !883, !912, !921, !933}
!592 = !DISubprogram(name: "PyInit_mmap", scope: !4, file: !4, line: 1468, type: !593, isLocal: false, isDefinition: true, scopeLine: 1469, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_mmap, variables: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!230}
!595 = !{!596, !597}
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !592, file: !4, line: 1470, type: !230)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !592, file: !4, line: 1470, type: !230)
!598 = !DISubprogram(name: "mmap_object_dealloc", scope: !4, file: !4, line: 118, type: !599, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mmap_object*)* @mmap_object_dealloc, variables: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !577}
!601 = !{!602}
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m_obj", arg: 1, scope: !598, file: !4, line: 118, type: !577)
!603 = !DISubprogram(name: "mmap_length", scope: !4, file: !4, line: 758, type: !604, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.mmap_object*)* @mmap_length, variables: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!236, !577}
!606 = !{!607}
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !603, file: !4, line: 758, type: !577)
!608 = !DISubprogram(name: "mmap_concat", scope: !4, file: !4, line: 830, type: !609, isLocal: true, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_concat, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!230, !577, !230}
!611 = !{!612, !613}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !608, file: !4, line: 830, type: !577)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bb", arg: 2, scope: !608, file: !4, line: 830, type: !230)
!614 = !DISubprogram(name: "mmap_repeat", scope: !4, file: !4, line: 839, type: !615, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, i64)* @mmap_repeat, variables: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!230, !577, !236}
!617 = !{!618, !619}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !614, file: !4, line: 839, type: !577)
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !614, file: !4, line: 839, type: !236)
!620 = !DISubprogram(name: "mmap_item", scope: !4, file: !4, line: 765, type: !615, isLocal: true, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, i64)* @mmap_item, variables: !621)
!621 = !{!622, !623}
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !620, file: !4, line: 765, type: !577)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !620, file: !4, line: 765, type: !236)
!624 = !DISubprogram(name: "mmap_ass_item", scope: !4, file: !4, line: 848, type: !625, isLocal: true, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mmap_object*, i64, %struct._object*)* @mmap_ass_item, variables: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!269, !577, !236, !230}
!627 = !{!628, !629, !630, !631}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !624, file: !4, line: 848, type: !577)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !624, file: !4, line: 848, type: !236)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !624, file: !4, line: 848, type: !230)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !624, file: !4, line: 850, type: !254)
!632 = !DISubprogram(name: "is_writable", scope: !4, file: !4, line: 360, type: !633, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mmap_object*)* @is_writable, variables: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{!269, !577}
!635 = !{!636}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !632, file: !4, line: 360, type: !577)
!637 = !DISubprogram(name: "mmap_subscript", scope: !4, file: !4, line: 776, type: !609, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_subscript, variables: !638)
!638 = !{!639, !640, !641, !644, !647, !648, !649, !650, !654, !655, !656}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !637, file: !4, line: 776, type: !577)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !637, file: !4, line: 776, type: !230)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !642, file: !4, line: 780, type: !236)
!642 = distinct !DILexicalBlock(scope: !643, file: !4, line: 779, column: 113)
!643 = distinct !DILexicalBlock(scope: !637, file: !4, line: 779, column: 9)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !645, file: !4, line: 793, type: !236)
!645 = distinct !DILexicalBlock(scope: !646, file: !4, line: 792, column: 65)
!646 = distinct !DILexicalBlock(scope: !643, file: !4, line: 792, column: 14)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !645, file: !4, line: 793, type: !236)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !645, file: !4, line: 793, type: !236)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicelen", scope: !645, file: !4, line: 793, type: !236)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_buf", scope: !651, file: !4, line: 806, type: !277)
!651 = distinct !DILexicalBlock(scope: !652, file: !4, line: 805, column: 14)
!652 = distinct !DILexicalBlock(scope: !653, file: !4, line: 802, column: 18)
!653 = distinct !DILexicalBlock(scope: !645, file: !4, line: 800, column: 13)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !651, file: !4, line: 807, type: !236)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !651, file: !4, line: 807, type: !236)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !651, file: !4, line: 808, type: !230)
!657 = !DISubprogram(name: "mmap_ass_subscript", scope: !4, file: !4, line: 875, type: !658, isLocal: true, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mmap_object*, %struct._object*, %struct._object*)* @mmap_ass_subscript, variables: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!269, !577, !230, !230}
!660 = !{!661, !662, !663, !664, !667, !668, !671, !672, !673, !674, !675, !679}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !657, file: !4, line: 875, type: !577)
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !657, file: !4, line: 875, type: !230)
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !657, file: !4, line: 875, type: !230)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !665, file: !4, line: 883, type: !236)
!665 = distinct !DILexicalBlock(scope: !666, file: !4, line: 882, column: 113)
!666 = distinct !DILexicalBlock(scope: !657, file: !4, line: 882, column: 9)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !665, file: !4, line: 884, type: !236)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !669, file: !4, line: 918, type: !236)
!669 = distinct !DILexicalBlock(scope: !670, file: !4, line: 917, column: 65)
!670 = distinct !DILexicalBlock(scope: !666, file: !4, line: 917, column: 14)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !669, file: !4, line: 918, type: !236)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !669, file: !4, line: 918, type: !236)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicelen", scope: !669, file: !4, line: 918, type: !236)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vbuf", scope: !669, file: !4, line: 919, type: !461)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !676, file: !4, line: 946, type: !236)
!676 = distinct !DILexicalBlock(scope: !677, file: !4, line: 945, column: 14)
!677 = distinct !DILexicalBlock(scope: !678, file: !4, line: 942, column: 18)
!678 = distinct !DILexicalBlock(scope: !669, file: !4, line: 940, column: 13)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !676, file: !4, line: 946, type: !236)
!680 = !DISubprogram(name: "mmap_buffer_getbuf", scope: !4, file: !4, line: 741, type: !681, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mmap_object*, %struct.bufferinfo*, i32)* @mmap_buffer_getbuf, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!269, !577, !460, !269}
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !680, file: !4, line: 741, type: !577)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !680, file: !4, line: 741, type: !460)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !680, file: !4, line: 741, type: !269)
!687 = !DISubprogram(name: "mmap_buffer_releasebuf", scope: !4, file: !4, line: 752, type: !688, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.mmap_object*, %struct.bufferinfo*)* @mmap_buffer_releasebuf, variables: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !577, !460}
!690 = !{!691, !692}
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !687, file: !4, line: 752, type: !577)
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !687, file: !4, line: 752, type: !460)
!693 = !DISubprogram(name: "mmap_close_method", scope: !4, file: !4, line: 145, type: !609, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_close_method, variables: !694)
!694 = !{!695, !696}
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !693, file: !4, line: 145, type: !577)
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !693, file: !4, line: 145, type: !230)
!697 = !DISubprogram(name: "mmap_find_method", scope: !4, file: !4, line: 346, type: !609, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_find_method, variables: !698)
!698 = !{!699, !700}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !697, file: !4, line: 346, type: !577)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !697, file: !4, line: 347, type: !230)
!701 = !DISubprogram(name: "mmap_gfind", scope: !4, file: !4, line: 298, type: !702, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*, i32)* @mmap_gfind, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!230, !577, !230, !269}
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !715, !716, !717, !718}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !701, file: !4, line: 298, type: !577)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !701, file: !4, line: 299, type: !230)
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reverse", arg: 3, scope: !701, file: !4, line: 300, type: !269)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !701, file: !4, line: 302, type: !236)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !701, file: !4, line: 303, type: !236)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "needle", scope: !701, file: !4, line: 304, type: !254)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !701, file: !4, line: 305, type: !236)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !713, file: !4, line: 312, type: !254)
!713 = distinct !DILexicalBlock(scope: !714, file: !4, line: 311, column: 12)
!714 = distinct !DILexicalBlock(scope: !701, file: !4, line: 308, column: 9)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_p", scope: !713, file: !4, line: 312, type: !254)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end_p", scope: !713, file: !4, line: 312, type: !254)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !713, file: !4, line: 313, type: !269)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !719, file: !4, line: 334, type: !236)
!719 = distinct !DILexicalBlock(scope: !720, file: !4, line: 333, column: 63)
!720 = distinct !DILexicalBlock(scope: !721, file: !4, line: 332, column: 9)
!721 = distinct !DILexicalBlock(scope: !713, file: !4, line: 332, column: 9)
!722 = !DISubprogram(name: "mmap_rfind_method", scope: !4, file: !4, line: 353, type: !609, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_rfind_method, variables: !723)
!723 = !{!724, !725}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !722, file: !4, line: 353, type: !577)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !722, file: !4, line: 354, type: !230)
!726 = !DISubprogram(name: "mmap_flush_method", scope: !4, file: !4, line: 589, type: !609, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_flush_method, variables: !727)
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !726, file: !4, line: 589, type: !577)
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !726, file: !4, line: 589, type: !230)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !726, file: !4, line: 591, type: !236)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !726, file: !4, line: 592, type: !236)
!732 = !DISubprogram(name: "mmap_move_method", scope: !4, file: !4, line: 663, type: !609, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_move_method, variables: !733)
!733 = !{!734, !735, !736, !737, !738}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !732, file: !4, line: 663, type: !577)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !732, file: !4, line: 663, type: !230)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !732, file: !4, line: 665, type: !321)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !732, file: !4, line: 665, type: !321)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !732, file: !4, line: 665, type: !321)
!739 = !DISubprogram(name: "mmap_read_method", scope: !4, file: !4, line: 268, type: !609, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_method, variables: !740)
!740 = !{!741, !742, !743, !744, !745}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !739, file: !4, line: 268, type: !577)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !739, file: !4, line: 269, type: !230)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_bytes", scope: !739, file: !4, line: 271, type: !236)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !739, file: !4, line: 271, type: !236)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !739, file: !4, line: 272, type: !230)
!746 = !DISubprogram(name: "mmap_convert_ssize_t", scope: !4, file: !4, line: 247, type: !490, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @mmap_convert_ssize_t, variables: !747)
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !746, file: !4, line: 247, type: !230)
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 2, scope: !746, file: !4, line: 247, type: !229)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !746, file: !4, line: 248, type: !236)
!751 = !DISubprogram(name: "mmap_read_byte_method", scope: !4, file: !4, line: 209, type: !609, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_byte_method, variables: !752)
!752 = !{!753, !754, !755}
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !751, file: !4, line: 209, type: !577)
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !751, file: !4, line: 210, type: !230)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !756, file: !4, line: 214, type: !256)
!756 = distinct !DILexicalBlock(scope: !757, file: !4, line: 213, column: 33)
!757 = distinct !DILexicalBlock(scope: !751, file: !4, line: 213, column: 9)
!758 = !DISubprogram(name: "mmap_read_line_method", scope: !4, file: !4, line: 224, type: !609, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_read_line_method, variables: !759)
!759 = !{!760, !761, !762, !763, !764, !765}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !758, file: !4, line: 224, type: !577)
!761 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !758, file: !4, line: 225, type: !230)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !758, file: !4, line: 227, type: !277)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eof", scope: !758, file: !4, line: 228, type: !277)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eol", scope: !758, file: !4, line: 229, type: !277)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !758, file: !4, line: 230, type: !230)
!766 = !DISubprogram(name: "mmap_resize_method", scope: !4, file: !4, line: 486, type: !609, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_resize_method, variables: !767)
!767 = !{!768, !769, !770, !771}
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !766, file: !4, line: 486, type: !577)
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !766, file: !4, line: 487, type: !230)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !766, file: !4, line: 489, type: !236)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmap", scope: !772, file: !4, line: 551, type: !229)
!772 = distinct !DILexicalBlock(scope: !773, file: !4, line: 550, column: 12)
!773 = distinct !DILexicalBlock(scope: !766, file: !4, line: 491, column: 9)
!774 = !DISubprogram(name: "is_resizeable", scope: !4, file: !4, line: 369, type: !633, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.mmap_object*)* @is_resizeable, variables: !775)
!775 = !{!776}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !774, file: !4, line: 369, type: !577)
!777 = !DISubprogram(name: "mmap_seek_method", scope: !4, file: !4, line: 621, type: !609, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_seek_method, variables: !778)
!778 = !{!779, !780, !781, !782, !783}
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !777, file: !4, line: 621, type: !577)
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !777, file: !4, line: 621, type: !230)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dist", scope: !777, file: !4, line: 623, type: !236)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "how", scope: !777, file: !4, line: 624, type: !269)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "where", scope: !784, file: !4, line: 629, type: !319)
!784 = distinct !DILexicalBlock(scope: !785, file: !4, line: 628, column: 10)
!785 = distinct !DILexicalBlock(scope: !777, file: !4, line: 626, column: 9)
!786 = !DISubprogram(name: "mmap_size_method", scope: !4, file: !4, line: 434, type: !609, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_size_method, variables: !787)
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !786, file: !4, line: 434, type: !577)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !786, file: !4, line: 435, type: !230)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !791, file: !4, line: 462, type: !792)
!791 = distinct !DILexicalBlock(scope: !786, file: !4, line: 461, column: 5)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !793, line: 46, size: 1152, align: 64, elements: !794)
!793 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!794 = !{!795, !797, !799, !801, !803, !805, !807, !808, !809, !810, !812, !814, !822, !823, !824}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !792, file: !793, line: 48, baseType: !796, size: 64, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !241, line: 133, baseType: !321)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !792, file: !793, line: 53, baseType: !798, size: 64, align: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !241, line: 136, baseType: !321)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !792, file: !793, line: 61, baseType: !800, size: 64, align: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !241, line: 139, baseType: !321)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !792, file: !793, line: 62, baseType: !802, size: 32, align: 32, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !241, line: 138, baseType: !573)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !792, file: !793, line: 64, baseType: !804, size: 32, align: 32, offset: 224)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !241, line: 134, baseType: !573)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !792, file: !793, line: 65, baseType: !806, size: 32, align: 32, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !241, line: 135, baseType: !573)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !792, file: !793, line: 67, baseType: !269, size: 32, align: 32, offset: 288)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !792, file: !793, line: 69, baseType: !796, size: 64, align: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !792, file: !793, line: 74, baseType: !300, size: 64, align: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !792, file: !793, line: 78, baseType: !811, size: 64, align: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !241, line: 162, baseType: !242)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !792, file: !793, line: 80, baseType: !813, size: 64, align: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !241, line: 167, baseType: !242)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !792, file: !793, line: 91, baseType: !815, size: 128, align: 64, offset: 576)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !816, line: 120, size: 128, align: 64, elements: !817)
!816 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!817 = !{!818, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !815, file: !816, line: 122, baseType: !819, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !241, line: 148, baseType: !242)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !815, file: !816, line: 123, baseType: !821, size: 64, align: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !241, line: 184, baseType: !242)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !792, file: !793, line: 92, baseType: !815, size: 128, align: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !792, file: !793, line: 93, baseType: !815, size: 128, align: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !792, file: !793, line: 106, baseType: !825, size: 192, align: 64, offset: 960)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 192, align: 64, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 3)
!828 = !DISubprogram(name: "fstat64", scope: !829, file: !829, line: 517, type: !830, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.stat64*)* @fstat64, variables: !852)
!829 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!830 = !DISubroutineType(types: !831)
!831 = !{!269, !269, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64, align: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !793, line: 119, size: 1152, align: 64, elements: !834)
!834 = !{!835, !836, !838, !839, !840, !841, !842, !843, !844, !845, !846, !848, !849, !850, !851}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !833, file: !793, line: 121, baseType: !796, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !833, file: !793, line: 123, baseType: !837, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !241, line: 137, baseType: !321)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !833, file: !793, line: 124, baseType: !800, size: 64, align: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !833, file: !793, line: 125, baseType: !802, size: 32, align: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !833, file: !793, line: 132, baseType: !804, size: 32, align: 32, offset: 224)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !833, file: !793, line: 133, baseType: !806, size: 32, align: 32, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !833, file: !793, line: 135, baseType: !269, size: 32, align: 32, offset: 288)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !833, file: !793, line: 136, baseType: !796, size: 64, align: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !833, file: !793, line: 137, baseType: !300, size: 64, align: 64, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !833, file: !793, line: 143, baseType: !811, size: 64, align: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !833, file: !793, line: 144, baseType: !847, size: 64, align: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !241, line: 168, baseType: !242)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !833, file: !793, line: 152, baseType: !815, size: 128, align: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !833, file: !793, line: 153, baseType: !815, size: 128, align: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !833, file: !793, line: 154, baseType: !815, size: 128, align: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !833, file: !793, line: 164, baseType: !825, size: 192, align: 64, offset: 960)
!852 = !{!853, !854}
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fd", arg: 1, scope: !828, file: !829, line: 517, type: !269)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !828, file: !829, line: 517, type: !832)
!855 = !DISubprogram(name: "mmap_tell_method", scope: !4, file: !4, line: 582, type: !609, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_tell_method, variables: !856)
!856 = !{!857, !858}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !855, file: !4, line: 582, type: !577)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !855, file: !4, line: 582, type: !230)
!859 = !DISubprogram(name: "mmap_write_method", scope: !4, file: !4, line: 385, type: !609, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_write_method, variables: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !859, file: !4, line: 385, type: !577)
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !859, file: !4, line: 386, type: !230)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !859, file: !4, line: 388, type: !236)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !859, file: !4, line: 389, type: !277)
!865 = !DISubprogram(name: "mmap_write_byte_method", scope: !4, file: !4, line: 409, type: !609, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap_write_byte_method, variables: !866)
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !865, file: !4, line: 409, type: !577)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !865, file: !4, line: 410, type: !230)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !865, file: !4, line: 412, type: !256)
!870 = !DISubprogram(name: "mmap__enter__method", scope: !4, file: !4, line: 696, type: !609, isLocal: true, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*, %struct._object*)* @mmap__enter__method, variables: !871)
!871 = !{!872, !873}
!872 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !870, file: !4, line: 696, type: !577)
!873 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !870, file: !4, line: 696, type: !230)
!874 = !DISubprogram(name: "mmap__exit__method", scope: !4, file: !4, line: 705, type: !351, isLocal: true, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @mmap__exit__method, variables: !875)
!875 = !{!876, !877}
!876 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !874, file: !4, line: 705, type: !230)
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !874, file: !4, line: 705, type: !230)
!878 = !DISubprogram(name: "mmap_closed_get", scope: !4, file: !4, line: 686, type: !879, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.mmap_object*)* @mmap_closed_get, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!230, !577}
!881 = !{!882}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !878, file: !4, line: 686, type: !577)
!883 = !DISubprogram(name: "new_mmap_object", scope: !4, file: !4, line: 1091, type: !884, isLocal: true, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @new_mmap_object, variables: !888)
!884 = !DISubroutineType(types: !885)
!885 = !{!230, !886, !230, !230}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !232, line: 422, baseType: !245)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !908}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !883, file: !4, line: 1091, type: !886)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !883, file: !4, line: 1091, type: !230)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwdict", arg: 3, scope: !883, file: !4, line: 1091, type: !230)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !883, file: !4, line: 1094, type: !792)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m_obj", scope: !883, file: !4, line: 1096, type: !577)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map_size_obj", scope: !883, file: !4, line: 1097, type: !230)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map_size", scope: !883, file: !4, line: 1098, type: !236)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !883, file: !4, line: 1099, type: !586)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !883, file: !4, line: 1100, type: !269)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !883, file: !4, line: 1100, type: !269)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prot", scope: !883, file: !4, line: 1100, type: !269)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devzero", scope: !883, file: !4, line: 1101, type: !269)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "access", scope: !883, file: !4, line: 1102, type: !269)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !903, file: !4, line: 1216, type: !230)
!903 = distinct !DILexicalBlock(scope: !904, file: !4, line: 1216, column: 16)
!904 = distinct !DILexicalBlock(scope: !905, file: !4, line: 1215, column: 30)
!905 = distinct !DILexicalBlock(scope: !906, file: !4, line: 1215, column: 13)
!906 = distinct !DILexicalBlock(scope: !907, file: !4, line: 1213, column: 10)
!907 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1194, column: 9)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !909, file: !4, line: 1231, type: !230)
!909 = distinct !DILexicalBlock(scope: !910, file: !4, line: 1231, column: 12)
!910 = distinct !DILexicalBlock(scope: !911, file: !4, line: 1229, column: 36)
!911 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1229, column: 9)
!912 = !DISubprogram(name: "_GetMapSize", scope: !4, file: !4, line: 1062, type: !913, isLocal: true, isDefinition: true, scopeLine: 1063, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, i8*)* @_GetMapSize, variables: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!236, !230, !254}
!915 = !{!916, !917, !918}
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !912, file: !4, line: 1062, type: !230)
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 2, scope: !912, file: !4, line: 1062, type: !254)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !919, file: !4, line: 1067, type: !236)
!919 = distinct !DILexicalBlock(scope: !920, file: !4, line: 1066, column: 107)
!920 = distinct !DILexicalBlock(scope: !912, file: !4, line: 1066, column: 9)
!921 = !DISubprogram(name: "setint", scope: !4, file: !4, line: 1446, type: !922, isLocal: true, isDefinition: true, scopeLine: 1447, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*, i64)* @setint, variables: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !230, !254, !242}
!924 = !{!925, !926, !927, !928, !929}
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !921, file: !4, line: 1446, type: !230)
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !921, file: !4, line: 1446, type: !254)
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !921, file: !4, line: 1446, type: !242)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !921, file: !4, line: 1448, type: !230)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !930, file: !4, line: 1450, type: !230)
!930 = distinct !DILexicalBlock(scope: !931, file: !4, line: 1450, column: 12)
!931 = distinct !DILexicalBlock(scope: !932, file: !4, line: 1449, column: 53)
!932 = distinct !DILexicalBlock(scope: !921, file: !4, line: 1449, column: 9)
!933 = !DISubprogram(name: "my_getpagesize", scope: !4, file: !4, line: 59, type: !934, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @my_getpagesize, variables: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!269}
!936 = !{}
!937 = !{!938, !939, !940, !941, !942, !946, !950, !958, !963, !967}
!938 = !DIGlobalVariable(name: "mmap_object_type", scope: !0, file: !4, line: 1013, type: !887, isLocal: true, isDefinition: true, variable: %struct._typeobject* @mmap_object_type)
!939 = !DIGlobalVariable(name: "mmap_as_sequence", scope: !0, file: !4, line: 965, type: !397, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @mmap_as_sequence)
!940 = !DIGlobalVariable(name: "mmap_as_mapping", scope: !0, file: !4, line: 975, type: !428, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @mmap_as_mapping)
!941 = !DIGlobalVariable(name: "mmap_as_buffer", scope: !0, file: !4, line: 981, type: !452, isLocal: true, isDefinition: true, variable: %struct.PyBufferProcs* @mmap_as_buffer)
!942 = !DIGlobalVariable(name: "mmap_doc", scope: !0, file: !4, line: 989, type: !943, isLocal: true, isDefinition: true, variable: [1102 x i8]* @mmap_doc)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 8816, align: 8, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 1102)
!946 = !DIGlobalVariable(name: "mmap_object_methods", scope: !0, file: !4, line: 712, type: !947, isLocal: true, isDefinition: true, variable: [17 x %struct.PyMethodDef]* @mmap_object_methods)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 4352, align: 64, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 17)
!950 = !DIGlobalVariable(name: "PyId_close", scope: !874, file: !4, line: 707, type: !951, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @mmap__exit__method.PyId_close)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !232, line: 144, baseType: !952)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !232, line: 140, size: 192, align: 64, elements: !953)
!953 = !{!954, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !232, line: 141, baseType: !955, size: 64, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !952, file: !232, line: 142, baseType: !254, size: 64, align: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !952, file: !232, line: 143, baseType: !230, size: 64, align: 64, offset: 128)
!958 = !DIGlobalVariable(name: "mmap_object_getset", scope: !0, file: !4, line: 732, type: !959, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @mmap_object_getset)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 640, align: 64, elements: !961)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !526, line: 17, baseType: !525)
!961 = !{!962}
!962 = !DISubrange(count: 2)
!963 = !DIGlobalVariable(name: "keywords", scope: !883, file: !4, line: 1103, type: !964, isLocal: true, isDefinition: true, variable: [7 x i8*]* @new_mmap_object.keywords)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 448, align: 64, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 7)
!967 = !DIGlobalVariable(name: "mmapmodule", scope: !0, file: !4, line: 1455, type: !968, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @mmapmodule)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !969, line: 47, size: 832, align: 64, elements: !970)
!969 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!970 = !{!971, !980, !981, !982, !983, !986, !987, !988, !989}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !968, file: !969, line: 48, baseType: !972, size: 320, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !969, line: 38, baseType: !973)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !969, line: 33, size: 320, align: 64, elements: !974)
!974 = !{!975, !976, !978, !979}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !973, file: !969, line: 34, baseType: !231, size: 128, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !973, file: !969, line: 35, baseType: !977, size: 64, align: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !973, file: !969, line: 36, baseType: !236, size: 64, align: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !973, file: !969, line: 37, baseType: !230, size: 64, align: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !968, file: !969, line: 49, baseType: !254, size: 64, align: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !968, file: !969, line: 50, baseType: !254, size: 64, align: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !968, file: !969, line: 51, baseType: !236, size: 64, align: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !968, file: !969, line: 52, baseType: !984, size: 64, align: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !506, line: 47, baseType: !505)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !968, file: !969, line: 53, baseType: !367, size: 64, align: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !968, file: !969, line: 54, baseType: !484, size: 64, align: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !968, file: !969, line: 55, baseType: !367, size: 64, align: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !968, file: !969, line: 56, baseType: !561, size: 64, align: 64, offset: 768)
!990 = !{i32 2, !"Dwarf Version", i32 4}
!991 = !{i32 2, !"Debug Info Version", i32 3}
!992 = !{i32 1, !"PIC Level", i32 2}
!993 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!994 = !DILocation(line: 1470, column: 5, scope: !592)
!995 = !DIExpression()
!996 = !DILocation(line: 1470, column: 15, scope: !592)
!997 = !DILocation(line: 1470, column: 22, scope: !592)
!998 = !DILocation(line: 1472, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !592, file: !4, line: 1472, column: 9)
!1000 = !DILocation(line: 1472, column: 41, scope: !999)
!1001 = !DILocation(line: 1472, column: 9, scope: !592)
!1002 = !DILocation(line: 1473, column: 9, scope: !999)
!1003 = !DILocation(line: 1475, column: 14, scope: !592)
!1004 = !DILocation(line: 1475, column: 12, scope: !592)
!1005 = !{!1006, !1006, i64 0}
!1006 = !{!"any pointer", !1007, i64 0}
!1007 = !{!"omnipotent char", !1008, i64 0}
!1008 = !{!"Simple C/C++ TBAA"}
!1009 = !DILocation(line: 1476, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !592, file: !4, line: 1476, column: 9)
!1011 = !DILocation(line: 1476, column: 16, scope: !1010)
!1012 = !DILocation(line: 1476, column: 9, scope: !592)
!1013 = !DILocation(line: 1477, column: 9, scope: !1010)
!1014 = !DILocation(line: 1478, column: 29, scope: !592)
!1015 = !DILocation(line: 1478, column: 12, scope: !592)
!1016 = !DILocation(line: 1478, column: 10, scope: !592)
!1017 = !DILocation(line: 1479, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !592, file: !4, line: 1479, column: 9)
!1019 = !DILocation(line: 1479, column: 9, scope: !592)
!1020 = !DILocation(line: 1480, column: 9, scope: !1018)
!1021 = !DILocation(line: 1481, column: 26, scope: !592)
!1022 = !DILocation(line: 1481, column: 41, scope: !592)
!1023 = !DILocation(line: 1481, column: 5, scope: !592)
!1024 = !DILocation(line: 1482, column: 26, scope: !592)
!1025 = !DILocation(line: 1482, column: 5, scope: !592)
!1026 = !DILocation(line: 1484, column: 12, scope: !592)
!1027 = !DILocation(line: 1484, column: 5, scope: !592)
!1028 = !DILocation(line: 1487, column: 12, scope: !592)
!1029 = !DILocation(line: 1487, column: 5, scope: !592)
!1030 = !DILocation(line: 1490, column: 12, scope: !592)
!1031 = !DILocation(line: 1490, column: 5, scope: !592)
!1032 = !DILocation(line: 1494, column: 12, scope: !592)
!1033 = !DILocation(line: 1494, column: 5, scope: !592)
!1034 = !DILocation(line: 1497, column: 12, scope: !592)
!1035 = !DILocation(line: 1497, column: 5, scope: !592)
!1036 = !DILocation(line: 1500, column: 12, scope: !592)
!1037 = !DILocation(line: 1500, column: 5, scope: !592)
!1038 = !DILocation(line: 1503, column: 12, scope: !592)
!1039 = !DILocation(line: 1503, column: 5, scope: !592)
!1040 = !DILocation(line: 1506, column: 12, scope: !592)
!1041 = !DILocation(line: 1506, column: 5, scope: !592)
!1042 = !DILocation(line: 1507, column: 12, scope: !592)
!1043 = !DILocation(line: 1507, column: 5, scope: !592)
!1044 = !DILocation(line: 1510, column: 12, scope: !592)
!1045 = !DILocation(line: 1510, column: 36, scope: !592)
!1046 = !DILocation(line: 1510, column: 30, scope: !592)
!1047 = !DILocation(line: 1510, column: 5, scope: !592)
!1048 = !DILocation(line: 1512, column: 12, scope: !592)
!1049 = !DILocation(line: 1512, column: 49, scope: !592)
!1050 = !DILocation(line: 1512, column: 43, scope: !592)
!1051 = !DILocation(line: 1512, column: 5, scope: !592)
!1052 = !DILocation(line: 1514, column: 12, scope: !592)
!1053 = !DILocation(line: 1514, column: 5, scope: !592)
!1054 = !DILocation(line: 1515, column: 12, scope: !592)
!1055 = !DILocation(line: 1515, column: 5, scope: !592)
!1056 = !DILocation(line: 1516, column: 12, scope: !592)
!1057 = !DILocation(line: 1516, column: 5, scope: !592)
!1058 = !DILocation(line: 1517, column: 12, scope: !592)
!1059 = !DILocation(line: 1517, column: 5, scope: !592)
!1060 = !DILocation(line: 1518, column: 1, scope: !592)
!1061 = !DILocation(line: 1446, column: 18, scope: !921)
!1062 = !DILocation(line: 1446, column: 33, scope: !921)
!1063 = !{!1064, !1064, i64 0}
!1064 = !{!"long", !1007, i64 0}
!1065 = !DILocation(line: 1446, column: 44, scope: !921)
!1066 = !DILocation(line: 1448, column: 5, scope: !921)
!1067 = !DILocation(line: 1448, column: 15, scope: !921)
!1068 = !DILocation(line: 1448, column: 35, scope: !921)
!1069 = !DILocation(line: 1448, column: 19, scope: !921)
!1070 = !DILocation(line: 1449, column: 9, scope: !932)
!1071 = !DILocation(line: 1449, column: 11, scope: !932)
!1072 = !DILocation(line: 1449, column: 35, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !932, file: !4, discriminator: 1)
!1074 = !DILocation(line: 1449, column: 38, scope: !932)
!1075 = !DILocation(line: 1449, column: 44, scope: !932)
!1076 = !DILocation(line: 1449, column: 14, scope: !932)
!1077 = !DILocation(line: 1449, column: 47, scope: !932)
!1078 = !DILocation(line: 1449, column: 9, scope: !921)
!1079 = !DILocation(line: 1450, column: 9, scope: !931)
!1080 = !DILocation(line: 1450, column: 14, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !930, file: !4, discriminator: 1)
!1082 = !DILocation(line: 1450, column: 24, scope: !930)
!1083 = !DILocation(line: 1450, column: 54, scope: !930)
!1084 = !DILocation(line: 1450, column: 66, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !930, file: !4, line: 1450, column: 63)
!1086 = !DILocation(line: 1450, column: 83, scope: !1085)
!1087 = !DILocation(line: 1450, column: 63, scope: !1085)
!1088 = !{!1089, !1064, i64 0}
!1089 = !{!"_object", !1064, i64 0, !1006, i64 8}
!1090 = !DILocation(line: 1450, column: 93, scope: !1085)
!1091 = !DILocation(line: 1450, column: 63, scope: !930)
!1092 = !DILocation(line: 1450, column: 63, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !930, file: !4, discriminator: 2)
!1094 = !DILocation(line: 1450, column: 124, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1085, file: !4, discriminator: 3)
!1096 = !DILocation(line: 1450, column: 142, scope: !1085)
!1097 = !{!1089, !1006, i64 8}
!1098 = !DILocation(line: 1450, column: 152, scope: !1085)
!1099 = !{!1100, !1006, i64 48}
!1100 = !{!"_typeobject", !1101, i64 0, !1006, i64 24, !1064, i64 32, !1064, i64 40, !1006, i64 48, !1006, i64 56, !1006, i64 64, !1006, i64 72, !1006, i64 80, !1006, i64 88, !1006, i64 96, !1006, i64 104, !1006, i64 112, !1006, i64 120, !1006, i64 128, !1006, i64 136, !1006, i64 144, !1006, i64 152, !1006, i64 160, !1064, i64 168, !1006, i64 176, !1006, i64 184, !1006, i64 192, !1006, i64 200, !1064, i64 208, !1006, i64 216, !1006, i64 224, !1006, i64 232, !1006, i64 240, !1006, i64 248, !1006, i64 256, !1006, i64 264, !1006, i64 272, !1006, i64 280, !1064, i64 288, !1006, i64 296, !1006, i64 304, !1006, i64 312, !1006, i64 320, !1006, i64 328, !1006, i64 336, !1006, i64 344, !1006, i64 352, !1006, i64 360, !1006, i64 368, !1006, i64 376, !1102, i64 384, !1006, i64 392}
!1101 = !{!"", !1089, i64 0, !1064, i64 16}
!1102 = !{!"int", !1007, i64 0}
!1103 = !DILocation(line: 1450, column: 177, scope: !1085)
!1104 = !DILocation(line: 1450, column: 108, scope: !1085)
!1105 = !DILocation(line: 1450, column: 196, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !931, file: !4, discriminator: 4)
!1107 = !DILocation(line: 1450, column: 196, scope: !930)
!1108 = !DILocation(line: 1450, column: 196, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !930, file: !4, discriminator: 5)
!1110 = !DILocation(line: 1451, column: 5, scope: !931)
!1111 = !DILocation(line: 1452, column: 1, scope: !921)
!1112 = !DILocation(line: 61, column: 12, scope: !933)
!1113 = !DILocation(line: 61, column: 5, scope: !933)
!1114 = !DILocation(line: 118, column: 34, scope: !598)
!1115 = !DILocation(line: 132, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !598, file: !4, line: 132, column: 9)
!1117 = !DILocation(line: 132, column: 16, scope: !1116)
!1118 = !{!1119, !1102, i64 52}
!1119 = !{!"", !1089, i64 0, !1006, i64 16, !1064, i64 24, !1064, i64 32, !1064, i64 40, !1102, i64 48, !1102, i64 52, !1006, i64 56, !1007, i64 64}
!1120 = !DILocation(line: 132, column: 19, scope: !1116)
!1121 = !DILocation(line: 132, column: 9, scope: !598)
!1122 = !DILocation(line: 133, column: 22, scope: !1116)
!1123 = !DILocation(line: 133, column: 29, scope: !1116)
!1124 = !DILocation(line: 133, column: 16, scope: !1116)
!1125 = !DILocation(line: 133, column: 9, scope: !1116)
!1126 = !DILocation(line: 134, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !598, file: !4, line: 134, column: 9)
!1128 = !DILocation(line: 134, column: 16, scope: !1127)
!1129 = !{!1119, !1006, i64 16}
!1130 = !DILocation(line: 134, column: 20, scope: !1127)
!1131 = !DILocation(line: 134, column: 9, scope: !598)
!1132 = !DILocation(line: 135, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !4, line: 134, column: 34)
!1134 = !DILocation(line: 135, column: 23, scope: !1133)
!1135 = !DILocation(line: 135, column: 29, scope: !1133)
!1136 = !DILocation(line: 135, column: 36, scope: !1133)
!1137 = !{!1119, !1064, i64 24}
!1138 = !DILocation(line: 135, column: 9, scope: !1133)
!1139 = !DILocation(line: 136, column: 5, scope: !1133)
!1140 = !DILocation(line: 139, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !598, file: !4, line: 139, column: 9)
!1142 = !DILocation(line: 139, column: 16, scope: !1141)
!1143 = !{!1119, !1006, i64 56}
!1144 = !DILocation(line: 139, column: 28, scope: !1141)
!1145 = !DILocation(line: 139, column: 9, scope: !598)
!1146 = !DILocation(line: 140, column: 45, scope: !1141)
!1147 = !DILocation(line: 140, column: 32, scope: !1141)
!1148 = !DILocation(line: 140, column: 9, scope: !1141)
!1149 = !DILocation(line: 141, column: 19, scope: !598)
!1150 = !DILocation(line: 141, column: 7, scope: !598)
!1151 = !DILocation(line: 141, column: 28, scope: !598)
!1152 = !DILocation(line: 141, column: 38, scope: !598)
!1153 = !{!1100, !1006, i64 320}
!1154 = !DILocation(line: 141, column: 57, scope: !598)
!1155 = !DILocation(line: 141, column: 46, scope: !598)
!1156 = !DILocation(line: 141, column: 5, scope: !598)
!1157 = !DILocation(line: 142, column: 1, scope: !598)
!1158 = !DILocation(line: 1091, column: 31, scope: !883)
!1159 = !DILocation(line: 1091, column: 47, scope: !883)
!1160 = !DILocation(line: 1091, column: 63, scope: !883)
!1161 = !DILocation(line: 1094, column: 5, scope: !883)
!1162 = !DILocation(line: 1094, column: 17, scope: !883)
!1163 = !DILocation(line: 1096, column: 5, scope: !883)
!1164 = !DILocation(line: 1096, column: 18, scope: !883)
!1165 = !DILocation(line: 1097, column: 5, scope: !883)
!1166 = !DILocation(line: 1097, column: 15, scope: !883)
!1167 = !DILocation(line: 1098, column: 5, scope: !883)
!1168 = !DILocation(line: 1098, column: 16, scope: !883)
!1169 = !DILocation(line: 1099, column: 5, scope: !883)
!1170 = !DILocation(line: 1099, column: 11, scope: !883)
!1171 = !DILocation(line: 1100, column: 5, scope: !883)
!1172 = !DILocation(line: 1100, column: 9, scope: !883)
!1173 = !DILocation(line: 1100, column: 13, scope: !883)
!1174 = !{!1102, !1102, i64 0}
!1175 = !DILocation(line: 1100, column: 27, scope: !883)
!1176 = !DILocation(line: 1101, column: 5, scope: !883)
!1177 = !DILocation(line: 1101, column: 9, scope: !883)
!1178 = !DILocation(line: 1102, column: 5, scope: !883)
!1179 = !DILocation(line: 1102, column: 9, scope: !883)
!1180 = !DILocation(line: 1107, column: 45, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1107, column: 9)
!1182 = !DILocation(line: 1107, column: 51, scope: !1181)
!1183 = !DILocation(line: 1107, column: 10, scope: !1181)
!1184 = !DILocation(line: 1107, column: 9, scope: !883)
!1185 = !DILocation(line: 1110, column: 9, scope: !1181)
!1186 = !DILocation(line: 1111, column: 28, scope: !883)
!1187 = !DILocation(line: 1111, column: 16, scope: !883)
!1188 = !DILocation(line: 1111, column: 14, scope: !883)
!1189 = !DILocation(line: 1112, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1112, column: 9)
!1191 = !DILocation(line: 1112, column: 18, scope: !1190)
!1192 = !DILocation(line: 1112, column: 9, scope: !883)
!1193 = !DILocation(line: 1113, column: 9, scope: !1190)
!1194 = !DILocation(line: 1114, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1114, column: 9)
!1196 = !DILocation(line: 1114, column: 16, scope: !1195)
!1197 = !DILocation(line: 1114, column: 9, scope: !883)
!1198 = !DILocation(line: 1115, column: 25, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !4, line: 1114, column: 21)
!1200 = !DILocation(line: 1115, column: 9, scope: !1199)
!1201 = !DILocation(line: 1117, column: 9, scope: !1199)
!1202 = !DILocation(line: 1120, column: 10, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1120, column: 9)
!1204 = !DILocation(line: 1120, column: 17, scope: !1203)
!1205 = !DILocation(line: 1120, column: 41, scope: !1203)
!1206 = !DILocation(line: 1121, column: 11, scope: !1203)
!1207 = !DILocation(line: 1121, column: 17, scope: !1203)
!1208 = !DILocation(line: 1121, column: 26, scope: !1203)
!1209 = !DILocation(line: 1121, column: 30, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1203, file: !4, discriminator: 1)
!1211 = !DILocation(line: 1121, column: 35, scope: !1203)
!1212 = !DILocation(line: 1120, column: 9, scope: !883)
!1213 = !DILocation(line: 1122, column: 29, scope: !1203)
!1214 = !DILocation(line: 1122, column: 16, scope: !1203)
!1215 = !DILocation(line: 1122, column: 9, scope: !1203)
!1216 = !DILocation(line: 1124, column: 26, scope: !883)
!1217 = !DILocation(line: 1126, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1124, column: 34)
!1219 = !DILocation(line: 1127, column: 14, scope: !1218)
!1220 = !DILocation(line: 1128, column: 9, scope: !1218)
!1221 = !DILocation(line: 1130, column: 15, scope: !1218)
!1222 = !DILocation(line: 1131, column: 14, scope: !1218)
!1223 = !DILocation(line: 1132, column: 9, scope: !1218)
!1224 = !DILocation(line: 1134, column: 15, scope: !1218)
!1225 = !DILocation(line: 1135, column: 14, scope: !1218)
!1226 = !DILocation(line: 1136, column: 9, scope: !1218)
!1227 = !DILocation(line: 1139, column: 14, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1218, file: !4, line: 1139, column: 13)
!1229 = !DILocation(line: 1139, column: 19, scope: !1228)
!1230 = !DILocation(line: 1139, column: 26, scope: !1228)
!1231 = !DILocation(line: 1139, column: 30, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1228, file: !4, discriminator: 1)
!1233 = !DILocation(line: 1139, column: 35, scope: !1228)
!1234 = !DILocation(line: 1139, column: 13, scope: !1218)
!1235 = !DILocation(line: 1141, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !4, line: 1139, column: 43)
!1237 = !DILocation(line: 1142, column: 18, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1228, file: !4, line: 1142, column: 18)
!1239 = !DILocation(line: 1142, column: 23, scope: !1238)
!1240 = !DILocation(line: 1142, column: 18, scope: !1228)
!1241 = !DILocation(line: 1143, column: 20, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !4, line: 1142, column: 30)
!1243 = !DILocation(line: 1144, column: 9, scope: !1242)
!1244 = !DILocation(line: 1146, column: 20, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !4, line: 1145, column: 14)
!1246 = !DILocation(line: 1148, column: 9, scope: !1218)
!1247 = !DILocation(line: 1150, column: 29, scope: !1218)
!1248 = !DILocation(line: 1150, column: 16, scope: !1218)
!1249 = !DILocation(line: 1150, column: 9, scope: !1218)
!1250 = !DILocation(line: 1161, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1161, column: 9)
!1252 = !DILocation(line: 1161, column: 12, scope: !1251)
!1253 = !DILocation(line: 1161, column: 18, scope: !1251)
!1254 = !DILocation(line: 1161, column: 27, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1251, file: !4, discriminator: 1)
!1256 = !DILocation(line: 1161, column: 21, scope: !1251)
!1257 = !DILocation(line: 1161, column: 36, scope: !1251)
!1258 = !DILocation(line: 1161, column: 41, scope: !1251)
!1259 = !DILocation(line: 1161, column: 51, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1251, file: !4, discriminator: 2)
!1261 = !{!1262, !1102, i64 24}
!1262 = !{!"stat", !1064, i64 0, !1064, i64 8, !1064, i64 16, !1102, i64 24, !1102, i64 28, !1102, i64 32, !1102, i64 36, !1064, i64 40, !1064, i64 48, !1064, i64 56, !1064, i64 64, !1263, i64 72, !1263, i64 88, !1263, i64 104, !1007, i64 120}
!1263 = !{!"timespec", !1064, i64 0, !1064, i64 8}
!1264 = !DILocation(line: 1161, column: 61, scope: !1251)
!1265 = !DILocation(line: 1161, column: 72, scope: !1251)
!1266 = !DILocation(line: 1161, column: 9, scope: !883)
!1267 = !DILocation(line: 1162, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !4, line: 1162, column: 13)
!1269 = distinct !DILexicalBlock(scope: !1251, file: !4, line: 1161, column: 87)
!1270 = !DILocation(line: 1162, column: 22, scope: !1268)
!1271 = !DILocation(line: 1162, column: 13, scope: !1269)
!1272 = !DILocation(line: 1163, column: 20, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !4, line: 1163, column: 17)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !4, line: 1162, column: 28)
!1275 = !{!1262, !1064, i64 48}
!1276 = !DILocation(line: 1163, column: 28, scope: !1273)
!1277 = !DILocation(line: 1163, column: 17, scope: !1274)
!1278 = !DILocation(line: 1164, column: 33, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !4, line: 1163, column: 34)
!1280 = !DILocation(line: 1164, column: 17, scope: !1279)
!1281 = !DILocation(line: 1166, column: 17, scope: !1279)
!1282 = !DILocation(line: 1168, column: 17, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !4, line: 1168, column: 17)
!1284 = !DILocation(line: 1168, column: 30, scope: !1283)
!1285 = !DILocation(line: 1168, column: 24, scope: !1283)
!1286 = !DILocation(line: 1168, column: 17, scope: !1274)
!1287 = !DILocation(line: 1169, column: 33, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !4, line: 1168, column: 39)
!1289 = !DILocation(line: 1169, column: 17, scope: !1288)
!1290 = !DILocation(line: 1171, column: 17, scope: !1288)
!1291 = !DILocation(line: 1173, column: 20, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1274, file: !4, line: 1173, column: 17)
!1293 = !DILocation(line: 1173, column: 30, scope: !1292)
!1294 = !DILocation(line: 1173, column: 28, scope: !1292)
!1295 = !DILocation(line: 1173, column: 37, scope: !1292)
!1296 = !DILocation(line: 1173, column: 17, scope: !1274)
!1297 = !DILocation(line: 1174, column: 33, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !4, line: 1173, column: 72)
!1299 = !DILocation(line: 1174, column: 17, scope: !1298)
!1300 = !DILocation(line: 1176, column: 17, scope: !1298)
!1301 = !DILocation(line: 1178, column: 41, scope: !1274)
!1302 = !DILocation(line: 1178, column: 51, scope: !1274)
!1303 = !DILocation(line: 1178, column: 49, scope: !1274)
!1304 = !DILocation(line: 1178, column: 22, scope: !1274)
!1305 = !DILocation(line: 1179, column: 9, scope: !1274)
!1306 = !DILocation(line: 1179, column: 20, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1268, file: !4, line: 1179, column: 20)
!1308 = !DILocation(line: 1179, column: 37, scope: !1307)
!1309 = !DILocation(line: 1179, column: 27, scope: !1307)
!1310 = !DILocation(line: 1179, column: 51, scope: !1307)
!1311 = !DILocation(line: 1179, column: 46, scope: !1307)
!1312 = !DILocation(line: 1179, column: 20, scope: !1268)
!1313 = !DILocation(line: 1180, column: 29, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !4, line: 1179, column: 60)
!1315 = !DILocation(line: 1180, column: 13, scope: !1314)
!1316 = !DILocation(line: 1182, column: 13, scope: !1314)
!1317 = !DILocation(line: 1184, column: 5, scope: !1269)
!1318 = !DILocation(line: 1186, column: 28, scope: !883)
!1319 = !DILocation(line: 1186, column: 34, scope: !883)
!1320 = !{!1100, !1006, i64 304}
!1321 = !DILocation(line: 1186, column: 43, scope: !883)
!1322 = !DILocation(line: 1186, column: 13, scope: !883)
!1323 = !DILocation(line: 1186, column: 11, scope: !883)
!1324 = !DILocation(line: 1187, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1187, column: 9)
!1326 = !DILocation(line: 1187, column: 15, scope: !1325)
!1327 = !DILocation(line: 1187, column: 9, scope: !883)
!1328 = !DILocation(line: 1187, column: 31, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !4, discriminator: 1)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !4, line: 1187, column: 30)
!1331 = !DILocation(line: 1187, column: 31, scope: !1330)
!1332 = !DILocation(line: 1188, column: 5, scope: !883)
!1333 = !DILocation(line: 1188, column: 12, scope: !883)
!1334 = !DILocation(line: 1188, column: 17, scope: !883)
!1335 = !DILocation(line: 1189, column: 28, scope: !883)
!1336 = !DILocation(line: 1189, column: 5, scope: !883)
!1337 = !DILocation(line: 1189, column: 12, scope: !883)
!1338 = !DILocation(line: 1189, column: 17, scope: !883)
!1339 = !DILocation(line: 1190, column: 5, scope: !883)
!1340 = !DILocation(line: 1190, column: 12, scope: !883)
!1341 = !DILocation(line: 1190, column: 16, scope: !883)
!1342 = !{!1119, !1064, i64 32}
!1343 = !DILocation(line: 1191, column: 5, scope: !883)
!1344 = !DILocation(line: 1191, column: 12, scope: !883)
!1345 = !DILocation(line: 1191, column: 24, scope: !883)
!1346 = !DILocation(line: 1192, column: 5, scope: !883)
!1347 = !DILocation(line: 1192, column: 12, scope: !883)
!1348 = !DILocation(line: 1192, column: 20, scope: !883)
!1349 = !{!1119, !1102, i64 48}
!1350 = !DILocation(line: 1193, column: 21, scope: !883)
!1351 = !DILocation(line: 1193, column: 5, scope: !883)
!1352 = !DILocation(line: 1193, column: 12, scope: !883)
!1353 = !DILocation(line: 1193, column: 19, scope: !883)
!1354 = !{!1119, !1064, i64 40}
!1355 = !DILocation(line: 1194, column: 9, scope: !907)
!1356 = !DILocation(line: 1194, column: 12, scope: !907)
!1357 = !DILocation(line: 1194, column: 9, scope: !883)
!1358 = !DILocation(line: 1195, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !907, file: !4, line: 1194, column: 19)
!1360 = !DILocation(line: 1195, column: 16, scope: !1359)
!1361 = !DILocation(line: 1195, column: 19, scope: !1359)
!1362 = !DILocation(line: 1202, column: 15, scope: !1359)
!1363 = !DILocation(line: 1212, column: 5, scope: !1359)
!1364 = !DILocation(line: 1214, column: 29, scope: !906)
!1365 = !DILocation(line: 1214, column: 21, scope: !906)
!1366 = !DILocation(line: 1214, column: 9, scope: !906)
!1367 = !DILocation(line: 1214, column: 16, scope: !906)
!1368 = !DILocation(line: 1214, column: 19, scope: !906)
!1369 = !DILocation(line: 1215, column: 13, scope: !905)
!1370 = !DILocation(line: 1215, column: 20, scope: !905)
!1371 = !DILocation(line: 1215, column: 23, scope: !905)
!1372 = !DILocation(line: 1215, column: 13, scope: !906)
!1373 = !DILocation(line: 1216, column: 13, scope: !904)
!1374 = !DILocation(line: 1216, column: 18, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !903, file: !4, discriminator: 1)
!1376 = !DILocation(line: 1216, column: 28, scope: !903)
!1377 = !DILocation(line: 1216, column: 58, scope: !903)
!1378 = !DILocation(line: 1216, column: 45, scope: !903)
!1379 = !DILocation(line: 1216, column: 74, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !903, file: !4, line: 1216, column: 71)
!1381 = !DILocation(line: 1216, column: 91, scope: !1380)
!1382 = !DILocation(line: 1216, column: 71, scope: !1380)
!1383 = !DILocation(line: 1216, column: 101, scope: !1380)
!1384 = !DILocation(line: 1216, column: 71, scope: !903)
!1385 = !DILocation(line: 1216, column: 71, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !903, file: !4, discriminator: 2)
!1387 = !DILocation(line: 1216, column: 132, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1380, file: !4, discriminator: 3)
!1389 = !DILocation(line: 1216, column: 150, scope: !1380)
!1390 = !DILocation(line: 1216, column: 160, scope: !1380)
!1391 = !DILocation(line: 1216, column: 185, scope: !1380)
!1392 = !DILocation(line: 1216, column: 116, scope: !1380)
!1393 = !DILocation(line: 1216, column: 204, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !904, file: !4, discriminator: 4)
!1395 = !DILocation(line: 1216, column: 204, scope: !903)
!1396 = !DILocation(line: 1216, column: 204, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !903, file: !4, discriminator: 5)
!1398 = !DILocation(line: 1217, column: 13, scope: !904)
!1399 = !DILocation(line: 1221, column: 36, scope: !883)
!1400 = !DILocation(line: 1222, column: 24, scope: !883)
!1401 = !DILocation(line: 1222, column: 30, scope: !883)
!1402 = !DILocation(line: 1223, column: 24, scope: !883)
!1403 = !DILocation(line: 1223, column: 28, scope: !883)
!1404 = !DILocation(line: 1221, column: 19, scope: !883)
!1405 = !DILocation(line: 1221, column: 5, scope: !883)
!1406 = !DILocation(line: 1221, column: 12, scope: !883)
!1407 = !DILocation(line: 1221, column: 17, scope: !883)
!1408 = !DILocation(line: 1225, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1225, column: 9)
!1410 = !DILocation(line: 1225, column: 17, scope: !1409)
!1411 = !DILocation(line: 1225, column: 9, scope: !883)
!1412 = !DILocation(line: 1226, column: 15, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !4, line: 1225, column: 24)
!1414 = !DILocation(line: 1226, column: 9, scope: !1413)
!1415 = !DILocation(line: 1227, column: 5, scope: !1413)
!1416 = !DILocation(line: 1229, column: 9, scope: !911)
!1417 = !DILocation(line: 1229, column: 16, scope: !911)
!1418 = !DILocation(line: 1229, column: 21, scope: !911)
!1419 = !DILocation(line: 1229, column: 9, scope: !883)
!1420 = !DILocation(line: 1230, column: 9, scope: !910)
!1421 = !DILocation(line: 1230, column: 16, scope: !910)
!1422 = !DILocation(line: 1230, column: 21, scope: !910)
!1423 = !DILocation(line: 1231, column: 9, scope: !910)
!1424 = !DILocation(line: 1231, column: 14, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !909, file: !4, discriminator: 1)
!1426 = !DILocation(line: 1231, column: 24, scope: !909)
!1427 = !DILocation(line: 1231, column: 54, scope: !909)
!1428 = !DILocation(line: 1231, column: 41, scope: !909)
!1429 = !DILocation(line: 1231, column: 70, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !909, file: !4, line: 1231, column: 67)
!1431 = !DILocation(line: 1231, column: 87, scope: !1430)
!1432 = !DILocation(line: 1231, column: 67, scope: !1430)
!1433 = !DILocation(line: 1231, column: 97, scope: !1430)
!1434 = !DILocation(line: 1231, column: 67, scope: !909)
!1435 = !DILocation(line: 1231, column: 67, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !909, file: !4, discriminator: 2)
!1437 = !DILocation(line: 1231, column: 128, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1430, file: !4, discriminator: 3)
!1439 = !DILocation(line: 1231, column: 146, scope: !1430)
!1440 = !DILocation(line: 1231, column: 156, scope: !1430)
!1441 = !DILocation(line: 1231, column: 181, scope: !1430)
!1442 = !DILocation(line: 1231, column: 112, scope: !1430)
!1443 = !DILocation(line: 1231, column: 200, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !910, file: !4, discriminator: 4)
!1445 = !DILocation(line: 1231, column: 200, scope: !909)
!1446 = !DILocation(line: 1231, column: 200, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !909, file: !4, discriminator: 5)
!1448 = !DILocation(line: 1232, column: 28, scope: !910)
!1449 = !DILocation(line: 1232, column: 9, scope: !910)
!1450 = !DILocation(line: 1233, column: 9, scope: !910)
!1451 = !DILocation(line: 1235, column: 34, scope: !883)
!1452 = !DILocation(line: 1235, column: 5, scope: !883)
!1453 = !DILocation(line: 1235, column: 12, scope: !883)
!1454 = !DILocation(line: 1235, column: 19, scope: !883)
!1455 = !{!1119, !1007, i64 64}
!1456 = !DILocation(line: 1236, column: 24, scope: !883)
!1457 = !DILocation(line: 1236, column: 12, scope: !883)
!1458 = !DILocation(line: 1236, column: 5, scope: !883)
!1459 = !DILocation(line: 1237, column: 1, scope: !883)
!1460 = !DILocation(line: 758, column: 26, scope: !603)
!1461 = !DILocation(line: 760, column: 5, scope: !603)
!1462 = !DILocation(line: 760, column: 14, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1464, file: !4, discriminator: 1)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !4, line: 760, column: 14)
!1465 = distinct !DILexicalBlock(scope: !603, file: !4, line: 760, column: 8)
!1466 = !DILocation(line: 760, column: 20, scope: !1464)
!1467 = !DILocation(line: 760, column: 25, scope: !1464)
!1468 = !DILocation(line: 760, column: 14, scope: !1465)
!1469 = !DILocation(line: 760, column: 58, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1471, file: !4, discriminator: 2)
!1471 = distinct !DILexicalBlock(scope: !1464, file: !4, line: 760, column: 40)
!1472 = !DILocation(line: 760, column: 42, scope: !1471)
!1473 = !DILocation(line: 760, column: 103, scope: !1471)
!1474 = !DILocation(line: 760, column: 116, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1465, file: !4, discriminator: 3)
!1476 = !DILocation(line: 761, column: 12, scope: !603)
!1477 = !DILocation(line: 761, column: 18, scope: !603)
!1478 = !DILocation(line: 761, column: 5, scope: !603)
!1479 = !DILocation(line: 762, column: 1, scope: !603)
!1480 = !DILocation(line: 830, column: 26, scope: !608)
!1481 = !DILocation(line: 830, column: 42, scope: !608)
!1482 = !DILocation(line: 832, column: 5, scope: !608)
!1483 = !DILocation(line: 832, column: 14, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !4, discriminator: 1)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !4, line: 832, column: 14)
!1486 = distinct !DILexicalBlock(scope: !608, file: !4, line: 832, column: 8)
!1487 = !DILocation(line: 832, column: 20, scope: !1485)
!1488 = !DILocation(line: 832, column: 25, scope: !1485)
!1489 = !DILocation(line: 832, column: 14, scope: !1486)
!1490 = !DILocation(line: 832, column: 58, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !4, discriminator: 2)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !4, line: 832, column: 40)
!1493 = !DILocation(line: 832, column: 42, scope: !1492)
!1494 = !DILocation(line: 832, column: 103, scope: !1492)
!1495 = !DILocation(line: 832, column: 124, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1486, file: !4, discriminator: 3)
!1497 = !DILocation(line: 833, column: 21, scope: !608)
!1498 = !DILocation(line: 833, column: 5, scope: !608)
!1499 = !DILocation(line: 835, column: 5, scope: !608)
!1500 = !DILocation(line: 836, column: 1, scope: !608)
!1501 = !DILocation(line: 839, column: 26, scope: !614)
!1502 = !DILocation(line: 839, column: 43, scope: !614)
!1503 = !DILocation(line: 841, column: 5, scope: !614)
!1504 = !DILocation(line: 841, column: 14, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !4, discriminator: 1)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !4, line: 841, column: 14)
!1507 = distinct !DILexicalBlock(scope: !614, file: !4, line: 841, column: 8)
!1508 = !DILocation(line: 841, column: 20, scope: !1506)
!1509 = !DILocation(line: 841, column: 25, scope: !1506)
!1510 = !DILocation(line: 841, column: 14, scope: !1507)
!1511 = !DILocation(line: 841, column: 58, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !4, discriminator: 2)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !4, line: 841, column: 40)
!1514 = !DILocation(line: 841, column: 42, scope: !1513)
!1515 = !DILocation(line: 841, column: 103, scope: !1513)
!1516 = !DILocation(line: 841, column: 124, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1507, file: !4, discriminator: 3)
!1518 = !DILocation(line: 842, column: 21, scope: !614)
!1519 = !DILocation(line: 842, column: 5, scope: !614)
!1520 = !DILocation(line: 844, column: 5, scope: !614)
!1521 = !DILocation(line: 845, column: 1, scope: !614)
!1522 = !DILocation(line: 765, column: 24, scope: !620)
!1523 = !DILocation(line: 765, column: 41, scope: !620)
!1524 = !DILocation(line: 767, column: 5, scope: !620)
!1525 = !DILocation(line: 767, column: 14, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !4, discriminator: 1)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !4, line: 767, column: 14)
!1528 = distinct !DILexicalBlock(scope: !620, file: !4, line: 767, column: 8)
!1529 = !DILocation(line: 767, column: 20, scope: !1527)
!1530 = !DILocation(line: 767, column: 25, scope: !1527)
!1531 = !DILocation(line: 767, column: 14, scope: !1528)
!1532 = !DILocation(line: 767, column: 58, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !4, discriminator: 2)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !4, line: 767, column: 40)
!1535 = !DILocation(line: 767, column: 42, scope: !1534)
!1536 = !DILocation(line: 767, column: 103, scope: !1534)
!1537 = !DILocation(line: 767, column: 124, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1528, file: !4, discriminator: 3)
!1539 = !DILocation(line: 768, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !620, file: !4, line: 768, column: 9)
!1541 = !DILocation(line: 768, column: 11, scope: !1540)
!1542 = !DILocation(line: 768, column: 15, scope: !1540)
!1543 = !DILocation(line: 768, column: 26, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1540, file: !4, discriminator: 1)
!1545 = !DILocation(line: 768, column: 31, scope: !1540)
!1546 = !DILocation(line: 768, column: 37, scope: !1540)
!1547 = !DILocation(line: 768, column: 28, scope: !1540)
!1548 = !DILocation(line: 768, column: 9, scope: !620)
!1549 = !DILocation(line: 769, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1540, file: !4, line: 768, column: 43)
!1551 = !DILocation(line: 769, column: 9, scope: !1550)
!1552 = !DILocation(line: 770, column: 9, scope: !1550)
!1553 = !DILocation(line: 772, column: 38, scope: !620)
!1554 = !DILocation(line: 772, column: 44, scope: !620)
!1555 = !DILocation(line: 772, column: 51, scope: !620)
!1556 = !DILocation(line: 772, column: 49, scope: !620)
!1557 = !DILocation(line: 772, column: 12, scope: !620)
!1558 = !DILocation(line: 772, column: 5, scope: !620)
!1559 = !DILocation(line: 773, column: 1, scope: !620)
!1560 = !DILocation(line: 848, column: 28, scope: !624)
!1561 = !DILocation(line: 848, column: 45, scope: !624)
!1562 = !DILocation(line: 848, column: 58, scope: !624)
!1563 = !DILocation(line: 850, column: 5, scope: !624)
!1564 = !DILocation(line: 850, column: 17, scope: !624)
!1565 = !DILocation(line: 852, column: 5, scope: !624)
!1566 = !DILocation(line: 852, column: 14, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !4, discriminator: 1)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !4, line: 852, column: 14)
!1569 = distinct !DILexicalBlock(scope: !624, file: !4, line: 852, column: 8)
!1570 = !DILocation(line: 852, column: 20, scope: !1568)
!1571 = !DILocation(line: 852, column: 25, scope: !1568)
!1572 = !DILocation(line: 852, column: 14, scope: !1569)
!1573 = !DILocation(line: 852, column: 58, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !4, discriminator: 2)
!1575 = distinct !DILexicalBlock(scope: !1568, file: !4, line: 852, column: 40)
!1576 = !DILocation(line: 852, column: 42, scope: !1575)
!1577 = !DILocation(line: 852, column: 103, scope: !1575)
!1578 = !DILocation(line: 852, column: 116, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1569, file: !4, discriminator: 3)
!1580 = !DILocation(line: 852, column: 116, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1569, file: !4, discriminator: 4)
!1582 = !DILocation(line: 853, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !624, file: !4, line: 853, column: 9)
!1584 = !DILocation(line: 853, column: 11, scope: !1583)
!1585 = !DILocation(line: 853, column: 15, scope: !1583)
!1586 = !DILocation(line: 853, column: 26, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1583, file: !4, discriminator: 1)
!1588 = !DILocation(line: 853, column: 31, scope: !1583)
!1589 = !DILocation(line: 853, column: 37, scope: !1583)
!1590 = !DILocation(line: 853, column: 28, scope: !1583)
!1591 = !DILocation(line: 853, column: 9, scope: !624)
!1592 = !DILocation(line: 854, column: 25, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1583, file: !4, line: 853, column: 43)
!1594 = !DILocation(line: 854, column: 9, scope: !1593)
!1595 = !DILocation(line: 855, column: 9, scope: !1593)
!1596 = !DILocation(line: 857, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !624, file: !4, line: 857, column: 9)
!1598 = !DILocation(line: 857, column: 11, scope: !1597)
!1599 = !DILocation(line: 857, column: 9, scope: !624)
!1600 = !DILocation(line: 858, column: 25, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !4, line: 857, column: 26)
!1602 = !DILocation(line: 858, column: 9, scope: !1601)
!1603 = !DILocation(line: 860, column: 9, scope: !1601)
!1604 = !DILocation(line: 862, column: 29, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !624, file: !4, line: 862, column: 9)
!1606 = !DILocation(line: 862, column: 34, scope: !1605)
!1607 = !DILocation(line: 862, column: 45, scope: !1605)
!1608 = !{!1100, !1064, i64 168}
!1609 = !DILocation(line: 862, column: 54, scope: !1605)
!1610 = !DILocation(line: 862, column: 71, scope: !1605)
!1611 = !DILocation(line: 862, column: 77, scope: !1605)
!1612 = !DILocation(line: 862, column: 93, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1605, file: !4, discriminator: 1)
!1614 = !DILocation(line: 862, column: 80, scope: !1605)
!1615 = !DILocation(line: 862, column: 95, scope: !1605)
!1616 = !DILocation(line: 862, column: 9, scope: !624)
!1617 = !DILocation(line: 863, column: 25, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1605, file: !4, line: 862, column: 102)
!1619 = !DILocation(line: 863, column: 9, scope: !1618)
!1620 = !DILocation(line: 865, column: 9, scope: !1618)
!1621 = !DILocation(line: 867, column: 22, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !624, file: !4, line: 867, column: 9)
!1623 = !DILocation(line: 867, column: 10, scope: !1622)
!1624 = !DILocation(line: 867, column: 9, scope: !624)
!1625 = !DILocation(line: 868, column: 9, scope: !1622)
!1626 = !DILocation(line: 869, column: 28, scope: !624)
!1627 = !DILocation(line: 869, column: 11, scope: !624)
!1628 = !DILocation(line: 869, column: 9, scope: !624)
!1629 = !DILocation(line: 870, column: 21, scope: !624)
!1630 = !{!1007, !1007, i64 0}
!1631 = !DILocation(line: 870, column: 16, scope: !624)
!1632 = !DILocation(line: 870, column: 5, scope: !624)
!1633 = !DILocation(line: 870, column: 11, scope: !624)
!1634 = !DILocation(line: 870, column: 19, scope: !624)
!1635 = !DILocation(line: 871, column: 5, scope: !624)
!1636 = !DILocation(line: 872, column: 1, scope: !624)
!1637 = !DILocation(line: 360, column: 26, scope: !632)
!1638 = !DILocation(line: 362, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !632, file: !4, line: 362, column: 9)
!1640 = !DILocation(line: 362, column: 15, scope: !1639)
!1641 = !DILocation(line: 362, column: 22, scope: !1639)
!1642 = !DILocation(line: 362, column: 9, scope: !632)
!1643 = !DILocation(line: 363, column: 9, scope: !1639)
!1644 = !DILocation(line: 364, column: 18, scope: !632)
!1645 = !DILocation(line: 364, column: 5, scope: !632)
!1646 = !DILocation(line: 365, column: 5, scope: !632)
!1647 = !DILocation(line: 366, column: 1, scope: !632)
!1648 = !DILocation(line: 776, column: 29, scope: !637)
!1649 = !DILocation(line: 776, column: 45, scope: !637)
!1650 = !DILocation(line: 778, column: 5, scope: !637)
!1651 = !DILocation(line: 778, column: 14, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !4, discriminator: 1)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !4, line: 778, column: 14)
!1654 = distinct !DILexicalBlock(scope: !637, file: !4, line: 778, column: 8)
!1655 = !DILocation(line: 778, column: 20, scope: !1653)
!1656 = !DILocation(line: 778, column: 25, scope: !1653)
!1657 = !DILocation(line: 778, column: 14, scope: !1654)
!1658 = !DILocation(line: 778, column: 58, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !4, discriminator: 2)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !4, line: 778, column: 40)
!1661 = !DILocation(line: 778, column: 42, scope: !1660)
!1662 = !DILocation(line: 778, column: 103, scope: !1660)
!1663 = !DILocation(line: 778, column: 124, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1654, file: !4, discriminator: 3)
!1665 = !DILocation(line: 779, column: 11, scope: !643)
!1666 = !DILocation(line: 779, column: 18, scope: !643)
!1667 = !DILocation(line: 779, column: 27, scope: !643)
!1668 = !{!1100, !1006, i64 96}
!1669 = !DILocation(line: 779, column: 40, scope: !643)
!1670 = !DILocation(line: 779, column: 54, scope: !643)
!1671 = !DILocation(line: 779, column: 58, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !643, file: !4, discriminator: 1)
!1673 = !DILocation(line: 779, column: 65, scope: !643)
!1674 = !DILocation(line: 779, column: 74, scope: !643)
!1675 = !DILocation(line: 779, column: 88, scope: !643)
!1676 = !{!1677, !1006, i64 264}
!1677 = !{!"", !1006, i64 0, !1006, i64 8, !1006, i64 16, !1006, i64 24, !1006, i64 32, !1006, i64 40, !1006, i64 48, !1006, i64 56, !1006, i64 64, !1006, i64 72, !1006, i64 80, !1006, i64 88, !1006, i64 96, !1006, i64 104, !1006, i64 112, !1006, i64 120, !1006, i64 128, !1006, i64 136, !1006, i64 144, !1006, i64 152, !1006, i64 160, !1006, i64 168, !1006, i64 176, !1006, i64 184, !1006, i64 192, !1006, i64 200, !1006, i64 208, !1006, i64 216, !1006, i64 224, !1006, i64 232, !1006, i64 240, !1006, i64 248, !1006, i64 256, !1006, i64 264}
!1678 = !DILocation(line: 779, column: 97, scope: !643)
!1679 = !DILocation(line: 779, column: 9, scope: !637)
!1680 = !DILocation(line: 780, column: 9, scope: !642)
!1681 = !DILocation(line: 780, column: 20, scope: !642)
!1682 = !DILocation(line: 780, column: 43, scope: !642)
!1683 = !DILocation(line: 780, column: 49, scope: !642)
!1684 = !DILocation(line: 780, column: 24, scope: !642)
!1685 = !DILocation(line: 781, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !642, file: !4, line: 781, column: 13)
!1687 = !DILocation(line: 781, column: 15, scope: !1686)
!1688 = !DILocation(line: 781, column: 21, scope: !1686)
!1689 = !DILocation(line: 781, column: 24, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1686, file: !4, discriminator: 1)
!1691 = !DILocation(line: 781, column: 13, scope: !642)
!1692 = !DILocation(line: 782, column: 13, scope: !1686)
!1693 = !DILocation(line: 783, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !642, file: !4, line: 783, column: 13)
!1695 = !DILocation(line: 783, column: 15, scope: !1694)
!1696 = !DILocation(line: 783, column: 13, scope: !642)
!1697 = !DILocation(line: 784, column: 18, scope: !1694)
!1698 = !DILocation(line: 784, column: 24, scope: !1694)
!1699 = !DILocation(line: 784, column: 15, scope: !1694)
!1700 = !DILocation(line: 784, column: 13, scope: !1694)
!1701 = !DILocation(line: 785, column: 13, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !642, file: !4, line: 785, column: 13)
!1703 = !DILocation(line: 785, column: 15, scope: !1702)
!1704 = !DILocation(line: 785, column: 19, scope: !1702)
!1705 = !DILocation(line: 785, column: 30, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1702, file: !4, discriminator: 1)
!1707 = !DILocation(line: 785, column: 35, scope: !1702)
!1708 = !DILocation(line: 785, column: 41, scope: !1702)
!1709 = !DILocation(line: 785, column: 32, scope: !1702)
!1710 = !DILocation(line: 785, column: 13, scope: !642)
!1711 = !DILocation(line: 786, column: 29, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1702, file: !4, line: 785, column: 47)
!1713 = !DILocation(line: 786, column: 13, scope: !1712)
!1714 = !DILocation(line: 788, column: 13, scope: !1712)
!1715 = !DILocation(line: 790, column: 61, scope: !642)
!1716 = !DILocation(line: 790, column: 50, scope: !642)
!1717 = !DILocation(line: 790, column: 56, scope: !642)
!1718 = !DILocation(line: 790, column: 49, scope: !642)
!1719 = !DILocation(line: 790, column: 65, scope: !642)
!1720 = !DILocation(line: 790, column: 33, scope: !642)
!1721 = !DILocation(line: 790, column: 32, scope: !642)
!1722 = !DILocation(line: 790, column: 16, scope: !642)
!1723 = !DILocation(line: 790, column: 9, scope: !642)
!1724 = !DILocation(line: 791, column: 5, scope: !643)
!1725 = !DILocation(line: 792, column: 29, scope: !646)
!1726 = !DILocation(line: 792, column: 37, scope: !646)
!1727 = !DILocation(line: 792, column: 46, scope: !646)
!1728 = !DILocation(line: 792, column: 14, scope: !643)
!1729 = !DILocation(line: 793, column: 9, scope: !645)
!1730 = !DILocation(line: 793, column: 20, scope: !645)
!1731 = !DILocation(line: 793, column: 27, scope: !645)
!1732 = !DILocation(line: 793, column: 33, scope: !645)
!1733 = !DILocation(line: 793, column: 39, scope: !645)
!1734 = !DILocation(line: 795, column: 34, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !645, file: !4, line: 795, column: 13)
!1736 = !DILocation(line: 795, column: 40, scope: !1735)
!1737 = !DILocation(line: 795, column: 46, scope: !1735)
!1738 = !DILocation(line: 795, column: 13, scope: !1735)
!1739 = !DILocation(line: 796, column: 59, scope: !1735)
!1740 = !DILocation(line: 795, column: 13, scope: !645)
!1741 = !DILocation(line: 797, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1735, file: !4, line: 796, column: 64)
!1743 = !DILocation(line: 800, column: 13, scope: !653)
!1744 = !DILocation(line: 800, column: 22, scope: !653)
!1745 = !DILocation(line: 800, column: 13, scope: !645)
!1746 = !DILocation(line: 801, column: 20, scope: !653)
!1747 = !DILocation(line: 801, column: 13, scope: !653)
!1748 = !DILocation(line: 802, column: 18, scope: !652)
!1749 = !DILocation(line: 802, column: 23, scope: !652)
!1750 = !DILocation(line: 802, column: 18, scope: !653)
!1751 = !DILocation(line: 803, column: 46, scope: !652)
!1752 = !DILocation(line: 803, column: 52, scope: !652)
!1753 = !DILocation(line: 803, column: 59, scope: !652)
!1754 = !DILocation(line: 803, column: 57, scope: !652)
!1755 = !DILocation(line: 804, column: 47, scope: !652)
!1756 = !DILocation(line: 803, column: 20, scope: !652)
!1757 = !DILocation(line: 803, column: 13, scope: !652)
!1758 = !DILocation(line: 806, column: 13, scope: !651)
!1759 = !DILocation(line: 806, column: 19, scope: !651)
!1760 = !DILocation(line: 806, column: 53, scope: !651)
!1761 = !DILocation(line: 806, column: 40, scope: !651)
!1762 = !DILocation(line: 807, column: 13, scope: !651)
!1763 = !DILocation(line: 807, column: 24, scope: !651)
!1764 = !DILocation(line: 807, column: 29, scope: !651)
!1765 = !DILocation(line: 808, column: 13, scope: !651)
!1766 = !DILocation(line: 808, column: 23, scope: !651)
!1767 = !DILocation(line: 810, column: 17, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !651, file: !4, line: 810, column: 17)
!1769 = !DILocation(line: 810, column: 28, scope: !1768)
!1770 = !DILocation(line: 810, column: 17, scope: !651)
!1771 = !DILocation(line: 811, column: 24, scope: !1768)
!1772 = !DILocation(line: 811, column: 17, scope: !1768)
!1773 = !DILocation(line: 812, column: 24, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !651, file: !4, line: 812, column: 13)
!1775 = !DILocation(line: 812, column: 22, scope: !1774)
!1776 = !DILocation(line: 812, column: 33, scope: !1774)
!1777 = !DILocation(line: 812, column: 18, scope: !1774)
!1778 = !DILocation(line: 812, column: 38, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !4, discriminator: 2)
!1780 = !DILexicalBlockFile(scope: !1781, file: !4, discriminator: 1)
!1781 = distinct !DILexicalBlock(scope: !1774, file: !4, line: 812, column: 13)
!1782 = !DILocation(line: 812, column: 42, scope: !1781)
!1783 = !DILocation(line: 812, column: 40, scope: !1781)
!1784 = !DILocation(line: 812, column: 13, scope: !1774)
!1785 = !DILocation(line: 814, column: 44, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !4, line: 813, column: 36)
!1787 = !DILocation(line: 814, column: 33, scope: !1786)
!1788 = !DILocation(line: 814, column: 39, scope: !1786)
!1789 = !DILocation(line: 814, column: 28, scope: !1786)
!1790 = !DILocation(line: 814, column: 17, scope: !1786)
!1791 = !DILocation(line: 814, column: 31, scope: !1786)
!1792 = !DILocation(line: 815, column: 13, scope: !1786)
!1793 = !DILocation(line: 813, column: 25, scope: !1781)
!1794 = !DILocation(line: 813, column: 22, scope: !1781)
!1795 = !DILocation(line: 813, column: 32, scope: !1781)
!1796 = !DILocation(line: 812, column: 13, scope: !1781)
!1797 = !DILocation(line: 816, column: 48, scope: !651)
!1798 = !DILocation(line: 817, column: 49, scope: !651)
!1799 = !DILocation(line: 816, column: 22, scope: !651)
!1800 = !DILocation(line: 816, column: 20, scope: !651)
!1801 = !DILocation(line: 818, column: 24, scope: !651)
!1802 = !DILocation(line: 818, column: 13, scope: !651)
!1803 = !DILocation(line: 819, column: 20, scope: !651)
!1804 = !DILocation(line: 819, column: 13, scope: !651)
!1805 = !DILocation(line: 820, column: 9, scope: !652)
!1806 = !DILocation(line: 821, column: 5, scope: !646)
!1807 = !DILocation(line: 823, column: 25, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !646, file: !4, line: 822, column: 10)
!1809 = !DILocation(line: 823, column: 9, scope: !1808)
!1810 = !DILocation(line: 825, column: 9, scope: !1808)
!1811 = !DILocation(line: 827, column: 1, scope: !637)
!1812 = !DILocation(line: 875, column: 33, scope: !657)
!1813 = !DILocation(line: 875, column: 49, scope: !657)
!1814 = !DILocation(line: 875, column: 65, scope: !657)
!1815 = !DILocation(line: 877, column: 5, scope: !657)
!1816 = !DILocation(line: 877, column: 14, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !4, discriminator: 1)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !4, line: 877, column: 14)
!1819 = distinct !DILexicalBlock(scope: !657, file: !4, line: 877, column: 8)
!1820 = !DILocation(line: 877, column: 20, scope: !1818)
!1821 = !DILocation(line: 877, column: 25, scope: !1818)
!1822 = !DILocation(line: 877, column: 14, scope: !1819)
!1823 = !DILocation(line: 877, column: 58, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1825, file: !4, discriminator: 2)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !4, line: 877, column: 40)
!1826 = !DILocation(line: 877, column: 42, scope: !1825)
!1827 = !DILocation(line: 877, column: 103, scope: !1825)
!1828 = !DILocation(line: 877, column: 116, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1819, file: !4, discriminator: 3)
!1830 = !DILocation(line: 879, column: 22, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !657, file: !4, line: 879, column: 9)
!1832 = !DILocation(line: 879, column: 10, scope: !1831)
!1833 = !DILocation(line: 879, column: 9, scope: !657)
!1834 = !DILocation(line: 880, column: 9, scope: !1831)
!1835 = !DILocation(line: 882, column: 11, scope: !666)
!1836 = !DILocation(line: 882, column: 18, scope: !666)
!1837 = !DILocation(line: 882, column: 27, scope: !666)
!1838 = !DILocation(line: 882, column: 40, scope: !666)
!1839 = !DILocation(line: 882, column: 54, scope: !666)
!1840 = !DILocation(line: 882, column: 58, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !666, file: !4, discriminator: 1)
!1842 = !DILocation(line: 882, column: 65, scope: !666)
!1843 = !DILocation(line: 882, column: 74, scope: !666)
!1844 = !DILocation(line: 882, column: 88, scope: !666)
!1845 = !DILocation(line: 882, column: 97, scope: !666)
!1846 = !DILocation(line: 882, column: 9, scope: !657)
!1847 = !DILocation(line: 883, column: 9, scope: !665)
!1848 = !DILocation(line: 883, column: 20, scope: !665)
!1849 = !DILocation(line: 883, column: 43, scope: !665)
!1850 = !DILocation(line: 883, column: 49, scope: !665)
!1851 = !DILocation(line: 883, column: 24, scope: !665)
!1852 = !DILocation(line: 884, column: 9, scope: !665)
!1853 = !DILocation(line: 884, column: 20, scope: !665)
!1854 = !DILocation(line: 886, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !665, file: !4, line: 886, column: 13)
!1856 = !DILocation(line: 886, column: 15, scope: !1855)
!1857 = !DILocation(line: 886, column: 21, scope: !1855)
!1858 = !DILocation(line: 886, column: 24, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1855, file: !4, discriminator: 1)
!1860 = !DILocation(line: 886, column: 13, scope: !665)
!1861 = !DILocation(line: 887, column: 13, scope: !1855)
!1862 = !DILocation(line: 888, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !665, file: !4, line: 888, column: 13)
!1864 = !DILocation(line: 888, column: 15, scope: !1863)
!1865 = !DILocation(line: 888, column: 13, scope: !665)
!1866 = !DILocation(line: 889, column: 18, scope: !1863)
!1867 = !DILocation(line: 889, column: 24, scope: !1863)
!1868 = !DILocation(line: 889, column: 15, scope: !1863)
!1869 = !DILocation(line: 889, column: 13, scope: !1863)
!1870 = !DILocation(line: 890, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !665, file: !4, line: 890, column: 13)
!1872 = !DILocation(line: 890, column: 15, scope: !1871)
!1873 = !DILocation(line: 890, column: 19, scope: !1871)
!1874 = !DILocation(line: 890, column: 30, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1871, file: !4, discriminator: 1)
!1876 = !DILocation(line: 890, column: 35, scope: !1871)
!1877 = !DILocation(line: 890, column: 41, scope: !1871)
!1878 = !DILocation(line: 890, column: 32, scope: !1871)
!1879 = !DILocation(line: 890, column: 13, scope: !665)
!1880 = !DILocation(line: 891, column: 29, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1871, file: !4, line: 890, column: 47)
!1882 = !DILocation(line: 891, column: 13, scope: !1881)
!1883 = !DILocation(line: 893, column: 13, scope: !1881)
!1884 = !DILocation(line: 895, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !665, file: !4, line: 895, column: 13)
!1886 = !DILocation(line: 895, column: 19, scope: !1885)
!1887 = !DILocation(line: 895, column: 13, scope: !665)
!1888 = !DILocation(line: 896, column: 29, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !4, line: 895, column: 34)
!1890 = !DILocation(line: 896, column: 13, scope: !1889)
!1891 = !DILocation(line: 898, column: 13, scope: !1889)
!1892 = !DILocation(line: 900, column: 16, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !665, file: !4, line: 900, column: 13)
!1894 = !DILocation(line: 900, column: 24, scope: !1893)
!1895 = !DILocation(line: 900, column: 33, scope: !1893)
!1896 = !DILocation(line: 900, column: 46, scope: !1893)
!1897 = !DILocation(line: 900, column: 60, scope: !1893)
!1898 = !DILocation(line: 900, column: 64, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1893, file: !4, discriminator: 1)
!1900 = !DILocation(line: 900, column: 72, scope: !1893)
!1901 = !DILocation(line: 900, column: 81, scope: !1893)
!1902 = !DILocation(line: 900, column: 95, scope: !1893)
!1903 = !DILocation(line: 900, column: 104, scope: !1893)
!1904 = !DILocation(line: 900, column: 13, scope: !665)
!1905 = !DILocation(line: 901, column: 29, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1893, file: !4, line: 900, column: 120)
!1907 = !DILocation(line: 901, column: 13, scope: !1906)
!1908 = !DILocation(line: 903, column: 13, scope: !1906)
!1909 = !DILocation(line: 905, column: 32, scope: !665)
!1910 = !DILocation(line: 905, column: 39, scope: !665)
!1911 = !DILocation(line: 905, column: 13, scope: !665)
!1912 = !DILocation(line: 905, column: 11, scope: !665)
!1913 = !DILocation(line: 906, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !665, file: !4, line: 906, column: 13)
!1915 = !DILocation(line: 906, column: 15, scope: !1914)
!1916 = !DILocation(line: 906, column: 21, scope: !1914)
!1917 = !DILocation(line: 906, column: 24, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1914, file: !4, discriminator: 1)
!1919 = !DILocation(line: 906, column: 13, scope: !665)
!1920 = !DILocation(line: 907, column: 13, scope: !1914)
!1921 = !DILocation(line: 908, column: 13, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !665, file: !4, line: 908, column: 13)
!1923 = !DILocation(line: 908, column: 15, scope: !1922)
!1924 = !DILocation(line: 908, column: 19, scope: !1922)
!1925 = !DILocation(line: 908, column: 22, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1922, file: !4, discriminator: 1)
!1927 = !DILocation(line: 908, column: 24, scope: !1922)
!1928 = !DILocation(line: 908, column: 13, scope: !665)
!1929 = !DILocation(line: 909, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !4, line: 908, column: 31)
!1931 = !DILocation(line: 909, column: 13, scope: !1930)
!1932 = !DILocation(line: 912, column: 13, scope: !1930)
!1933 = !DILocation(line: 914, column: 32, scope: !665)
!1934 = !DILocation(line: 914, column: 25, scope: !665)
!1935 = !DILocation(line: 914, column: 20, scope: !665)
!1936 = !DILocation(line: 914, column: 9, scope: !665)
!1937 = !DILocation(line: 914, column: 15, scope: !665)
!1938 = !DILocation(line: 914, column: 23, scope: !665)
!1939 = !DILocation(line: 915, column: 9, scope: !665)
!1940 = !DILocation(line: 916, column: 5, scope: !666)
!1941 = !DILocation(line: 917, column: 29, scope: !670)
!1942 = !DILocation(line: 917, column: 37, scope: !670)
!1943 = !DILocation(line: 917, column: 46, scope: !670)
!1944 = !DILocation(line: 917, column: 14, scope: !666)
!1945 = !DILocation(line: 918, column: 9, scope: !669)
!1946 = !DILocation(line: 918, column: 20, scope: !669)
!1947 = !DILocation(line: 918, column: 27, scope: !669)
!1948 = !DILocation(line: 918, column: 33, scope: !669)
!1949 = !DILocation(line: 918, column: 39, scope: !669)
!1950 = !DILocation(line: 919, column: 9, scope: !669)
!1951 = !DILocation(line: 919, column: 19, scope: !669)
!1952 = !DILocation(line: 921, column: 34, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !669, file: !4, line: 921, column: 13)
!1954 = !DILocation(line: 922, column: 34, scope: !1953)
!1955 = !DILocation(line: 922, column: 40, scope: !1953)
!1956 = !DILocation(line: 921, column: 13, scope: !1953)
!1957 = !DILocation(line: 923, column: 52, scope: !1953)
!1958 = !DILocation(line: 921, column: 13, scope: !669)
!1959 = !DILocation(line: 924, column: 13, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1953, file: !4, line: 923, column: 57)
!1961 = !DILocation(line: 926, column: 13, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !669, file: !4, line: 926, column: 13)
!1963 = !DILocation(line: 926, column: 19, scope: !1962)
!1964 = !DILocation(line: 926, column: 13, scope: !669)
!1965 = !DILocation(line: 927, column: 29, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !4, line: 926, column: 34)
!1967 = !DILocation(line: 927, column: 13, scope: !1966)
!1968 = !DILocation(line: 929, column: 13, scope: !1966)
!1969 = !DILocation(line: 931, column: 32, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !669, file: !4, line: 931, column: 13)
!1971 = !DILocation(line: 931, column: 13, scope: !1970)
!1972 = !DILocation(line: 931, column: 49, scope: !1970)
!1973 = !DILocation(line: 931, column: 13, scope: !669)
!1974 = !DILocation(line: 932, column: 13, scope: !1970)
!1975 = !DILocation(line: 933, column: 18, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !669, file: !4, line: 933, column: 13)
!1977 = !{!1978, !1064, i64 16}
!1978 = !{!"bufferinfo", !1006, i64 0, !1006, i64 8, !1064, i64 16, !1064, i64 24, !1102, i64 32, !1102, i64 36, !1006, i64 40, !1006, i64 48, !1006, i64 56, !1006, i64 64, !1006, i64 72}
!1979 = !DILocation(line: 933, column: 25, scope: !1976)
!1980 = !DILocation(line: 933, column: 22, scope: !1976)
!1981 = !DILocation(line: 933, column: 13, scope: !669)
!1982 = !DILocation(line: 934, column: 29, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !4, line: 933, column: 35)
!1984 = !DILocation(line: 934, column: 13, scope: !1983)
!1985 = !DILocation(line: 936, column: 13, scope: !1983)
!1986 = !DILocation(line: 937, column: 13, scope: !1983)
!1987 = !DILocation(line: 940, column: 13, scope: !678)
!1988 = !DILocation(line: 940, column: 22, scope: !678)
!1989 = !DILocation(line: 940, column: 13, scope: !669)
!1990 = !DILocation(line: 941, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !678, file: !4, line: 940, column: 28)
!1992 = !DILocation(line: 942, column: 18, scope: !677)
!1993 = !DILocation(line: 942, column: 23, scope: !677)
!1994 = !DILocation(line: 942, column: 18, scope: !678)
!1995 = !DILocation(line: 943, column: 20, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !677, file: !4, line: 942, column: 29)
!1997 = !DILocation(line: 943, column: 26, scope: !1996)
!1998 = !DILocation(line: 943, column: 33, scope: !1996)
!1999 = !DILocation(line: 943, column: 31, scope: !1996)
!2000 = !DILocation(line: 943, column: 45, scope: !1996)
!2001 = !{!1978, !1006, i64 0}
!2002 = !DILocation(line: 943, column: 50, scope: !1996)
!2003 = !DILocation(line: 943, column: 13, scope: !1996)
!2004 = !DILocation(line: 944, column: 9, scope: !1996)
!2005 = !DILocation(line: 946, column: 13, scope: !676)
!2006 = !DILocation(line: 946, column: 24, scope: !676)
!2007 = !DILocation(line: 946, column: 29, scope: !676)
!2008 = !DILocation(line: 948, column: 24, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !676, file: !4, line: 948, column: 13)
!2010 = !DILocation(line: 948, column: 22, scope: !2009)
!2011 = !DILocation(line: 948, column: 33, scope: !2009)
!2012 = !DILocation(line: 948, column: 18, scope: !2009)
!2013 = !DILocation(line: 949, column: 18, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !4, line: 948, column: 13)
!2015 = !DILocation(line: 949, column: 22, scope: !2014)
!2016 = !DILocation(line: 949, column: 20, scope: !2014)
!2017 = !DILocation(line: 948, column: 13, scope: !2009)
!2018 = !DILocation(line: 952, column: 54, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !4, line: 951, column: 13)
!2020 = !DILocation(line: 952, column: 49, scope: !2019)
!2021 = !DILocation(line: 952, column: 35, scope: !2019)
!2022 = !DILocation(line: 952, column: 28, scope: !2019)
!2023 = !DILocation(line: 952, column: 17, scope: !2019)
!2024 = !DILocation(line: 952, column: 23, scope: !2019)
!2025 = !DILocation(line: 952, column: 33, scope: !2019)
!2026 = !DILocation(line: 953, column: 13, scope: !2019)
!2027 = !DILocation(line: 950, column: 25, scope: !2014)
!2028 = !DILocation(line: 950, column: 22, scope: !2014)
!2029 = !DILocation(line: 950, column: 32, scope: !2014)
!2030 = !DILocation(line: 948, column: 13, scope: !2014)
!2031 = !DILocation(line: 954, column: 9, scope: !677)
!2032 = !DILocation(line: 955, column: 9, scope: !669)
!2033 = !DILocation(line: 956, column: 9, scope: !669)
!2034 = !DILocation(line: 957, column: 5, scope: !670)
!2035 = !DILocation(line: 959, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !670, file: !4, line: 958, column: 10)
!2037 = !DILocation(line: 959, column: 9, scope: !2036)
!2038 = !DILocation(line: 961, column: 9, scope: !2036)
!2039 = !DILocation(line: 963, column: 1, scope: !657)
!2040 = !DILocation(line: 741, column: 33, scope: !680)
!2041 = !DILocation(line: 741, column: 50, scope: !680)
!2042 = !DILocation(line: 741, column: 60, scope: !680)
!2043 = !DILocation(line: 743, column: 5, scope: !680)
!2044 = !DILocation(line: 743, column: 14, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2046, file: !4, discriminator: 1)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !4, line: 743, column: 14)
!2047 = distinct !DILexicalBlock(scope: !680, file: !4, line: 743, column: 8)
!2048 = !DILocation(line: 743, column: 20, scope: !2046)
!2049 = !DILocation(line: 743, column: 25, scope: !2046)
!2050 = !DILocation(line: 743, column: 14, scope: !2047)
!2051 = !DILocation(line: 743, column: 58, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !4, discriminator: 2)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !4, line: 743, column: 40)
!2054 = !DILocation(line: 743, column: 42, scope: !2053)
!2055 = !DILocation(line: 743, column: 103, scope: !2053)
!2056 = !DILocation(line: 743, column: 116, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2047, file: !4, discriminator: 3)
!2058 = !DILocation(line: 744, column: 27, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !680, file: !4, line: 744, column: 9)
!2060 = !DILocation(line: 744, column: 44, scope: !2059)
!2061 = !DILocation(line: 744, column: 33, scope: !2059)
!2062 = !DILocation(line: 744, column: 50, scope: !2059)
!2063 = !DILocation(line: 744, column: 56, scope: !2059)
!2064 = !DILocation(line: 744, column: 62, scope: !2059)
!2065 = !DILocation(line: 744, column: 68, scope: !2059)
!2066 = !DILocation(line: 745, column: 28, scope: !2059)
!2067 = !DILocation(line: 745, column: 34, scope: !2059)
!2068 = !DILocation(line: 745, column: 41, scope: !2059)
!2069 = !DILocation(line: 745, column: 58, scope: !2059)
!2070 = !DILocation(line: 744, column: 9, scope: !2059)
!2071 = !DILocation(line: 745, column: 65, scope: !2059)
!2072 = !DILocation(line: 744, column: 9, scope: !680)
!2073 = !DILocation(line: 746, column: 9, scope: !2059)
!2074 = !DILocation(line: 747, column: 5, scope: !680)
!2075 = !DILocation(line: 747, column: 11, scope: !680)
!2076 = !DILocation(line: 747, column: 18, scope: !680)
!2077 = !DILocation(line: 748, column: 5, scope: !680)
!2078 = !DILocation(line: 749, column: 1, scope: !680)
!2079 = !DILocation(line: 752, column: 37, scope: !687)
!2080 = !DILocation(line: 752, column: 54, scope: !687)
!2081 = !DILocation(line: 754, column: 5, scope: !687)
!2082 = !DILocation(line: 754, column: 11, scope: !687)
!2083 = !DILocation(line: 754, column: 18, scope: !687)
!2084 = !DILocation(line: 755, column: 1, scope: !687)
!2085 = !DILocation(line: 145, column: 32, scope: !693)
!2086 = !DILocation(line: 145, column: 48, scope: !693)
!2087 = !DILocation(line: 147, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !693, file: !4, line: 147, column: 9)
!2089 = !DILocation(line: 147, column: 15, scope: !2088)
!2090 = !DILocation(line: 147, column: 23, scope: !2088)
!2091 = !DILocation(line: 147, column: 9, scope: !693)
!2092 = !DILocation(line: 148, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !4, line: 147, column: 28)
!2094 = !DILocation(line: 148, column: 9, scope: !2093)
!2095 = !DILocation(line: 150, column: 9, scope: !2093)
!2096 = !DILocation(line: 175, column: 14, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !693, file: !4, line: 175, column: 9)
!2098 = !DILocation(line: 175, column: 20, scope: !2097)
!2099 = !DILocation(line: 175, column: 11, scope: !2097)
!2100 = !DILocation(line: 175, column: 9, scope: !693)
!2101 = !DILocation(line: 176, column: 22, scope: !2097)
!2102 = !DILocation(line: 176, column: 28, scope: !2097)
!2103 = !DILocation(line: 176, column: 16, scope: !2097)
!2104 = !DILocation(line: 176, column: 9, scope: !2097)
!2105 = !DILocation(line: 177, column: 5, scope: !693)
!2106 = !DILocation(line: 177, column: 11, scope: !693)
!2107 = !DILocation(line: 177, column: 14, scope: !693)
!2108 = !DILocation(line: 178, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !693, file: !4, line: 178, column: 9)
!2110 = !DILocation(line: 178, column: 15, scope: !2109)
!2111 = !DILocation(line: 178, column: 20, scope: !2109)
!2112 = !DILocation(line: 178, column: 9, scope: !693)
!2113 = !DILocation(line: 179, column: 16, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2109, file: !4, line: 178, column: 35)
!2115 = !DILocation(line: 179, column: 22, scope: !2114)
!2116 = !DILocation(line: 179, column: 28, scope: !2114)
!2117 = !DILocation(line: 179, column: 34, scope: !2114)
!2118 = !DILocation(line: 179, column: 9, scope: !2114)
!2119 = !DILocation(line: 180, column: 9, scope: !2114)
!2120 = !DILocation(line: 180, column: 15, scope: !2114)
!2121 = !DILocation(line: 180, column: 20, scope: !2114)
!2122 = !DILocation(line: 181, column: 5, scope: !2114)
!2123 = !DILocation(line: 184, column: 51, scope: !693)
!2124 = !DILocation(line: 185, column: 5, scope: !693)
!2125 = !DILocation(line: 186, column: 1, scope: !693)
!2126 = !DILocation(line: 346, column: 31, scope: !697)
!2127 = !DILocation(line: 347, column: 28, scope: !697)
!2128 = !DILocation(line: 349, column: 23, scope: !697)
!2129 = !DILocation(line: 349, column: 29, scope: !697)
!2130 = !DILocation(line: 349, column: 12, scope: !697)
!2131 = !DILocation(line: 349, column: 5, scope: !697)
!2132 = !DILocation(line: 353, column: 32, scope: !722)
!2133 = !DILocation(line: 354, column: 28, scope: !722)
!2134 = !DILocation(line: 356, column: 23, scope: !722)
!2135 = !DILocation(line: 356, column: 29, scope: !722)
!2136 = !DILocation(line: 356, column: 12, scope: !722)
!2137 = !DILocation(line: 356, column: 5, scope: !722)
!2138 = !DILocation(line: 589, column: 32, scope: !726)
!2139 = !DILocation(line: 589, column: 48, scope: !726)
!2140 = !DILocation(line: 591, column: 5, scope: !726)
!2141 = !DILocation(line: 591, column: 16, scope: !726)
!2142 = !DILocation(line: 592, column: 5, scope: !726)
!2143 = !DILocation(line: 592, column: 16, scope: !726)
!2144 = !DILocation(line: 592, column: 23, scope: !726)
!2145 = !DILocation(line: 592, column: 29, scope: !726)
!2146 = !DILocation(line: 593, column: 5, scope: !726)
!2147 = !DILocation(line: 593, column: 14, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2149, file: !4, discriminator: 1)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !4, line: 593, column: 14)
!2150 = distinct !DILexicalBlock(scope: !726, file: !4, line: 593, column: 8)
!2151 = !DILocation(line: 593, column: 20, scope: !2149)
!2152 = !DILocation(line: 593, column: 25, scope: !2149)
!2153 = !DILocation(line: 593, column: 14, scope: !2150)
!2154 = !DILocation(line: 593, column: 58, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2156, file: !4, discriminator: 2)
!2156 = distinct !DILexicalBlock(scope: !2149, file: !4, line: 593, column: 40)
!2157 = !DILocation(line: 593, column: 42, scope: !2156)
!2158 = !DILocation(line: 593, column: 103, scope: !2156)
!2159 = !DILocation(line: 593, column: 124, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2150, file: !4, discriminator: 3)
!2161 = !DILocation(line: 593, column: 124, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2150, file: !4, discriminator: 4)
!2163 = !DILocation(line: 594, column: 34, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !726, file: !4, line: 594, column: 9)
!2165 = !DILocation(line: 594, column: 10, scope: !2164)
!2166 = !DILocation(line: 594, column: 9, scope: !726)
!2167 = !DILocation(line: 595, column: 9, scope: !2164)
!2168 = !DILocation(line: 596, column: 18, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !726, file: !4, line: 596, column: 9)
!2170 = !DILocation(line: 596, column: 27, scope: !2169)
!2171 = !DILocation(line: 596, column: 25, scope: !2169)
!2172 = !DILocation(line: 596, column: 35, scope: !2169)
!2173 = !DILocation(line: 596, column: 41, scope: !2169)
!2174 = !DILocation(line: 596, column: 33, scope: !2169)
!2175 = !DILocation(line: 596, column: 9, scope: !726)
!2176 = !DILocation(line: 597, column: 25, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !4, line: 596, column: 47)
!2178 = !DILocation(line: 597, column: 9, scope: !2177)
!2179 = !DILocation(line: 598, column: 9, scope: !2177)
!2180 = !DILocation(line: 601, column: 9, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !726, file: !4, line: 601, column: 9)
!2182 = !DILocation(line: 601, column: 15, scope: !2181)
!2183 = !DILocation(line: 601, column: 22, scope: !2181)
!2184 = !DILocation(line: 601, column: 37, scope: !2181)
!2185 = !DILocation(line: 601, column: 40, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2181, file: !4, discriminator: 1)
!2187 = !DILocation(line: 601, column: 46, scope: !2181)
!2188 = !DILocation(line: 601, column: 53, scope: !2181)
!2189 = !DILocation(line: 601, column: 9, scope: !726)
!2190 = !DILocation(line: 602, column: 16, scope: !2181)
!2191 = !DILocation(line: 602, column: 9, scope: !2181)
!2192 = !DILocation(line: 609, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !726, file: !4, line: 609, column: 9)
!2194 = !DILocation(line: 609, column: 27, scope: !2193)
!2195 = !DILocation(line: 609, column: 34, scope: !2193)
!2196 = !DILocation(line: 609, column: 32, scope: !2193)
!2197 = !DILocation(line: 609, column: 42, scope: !2193)
!2198 = !DILocation(line: 609, column: 15, scope: !2193)
!2199 = !DILocation(line: 609, column: 12, scope: !2193)
!2200 = !DILocation(line: 609, column: 9, scope: !726)
!2201 = !DILocation(line: 610, column: 28, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2193, file: !4, line: 609, column: 52)
!2203 = !DILocation(line: 610, column: 9, scope: !2202)
!2204 = !DILocation(line: 611, column: 9, scope: !2202)
!2205 = !DILocation(line: 613, column: 12, scope: !726)
!2206 = !DILocation(line: 613, column: 5, scope: !726)
!2207 = !DILocation(line: 618, column: 1, scope: !726)
!2208 = !DILocation(line: 663, column: 31, scope: !732)
!2209 = !DILocation(line: 663, column: 47, scope: !732)
!2210 = !DILocation(line: 665, column: 5, scope: !732)
!2211 = !DILocation(line: 665, column: 19, scope: !732)
!2212 = !DILocation(line: 665, column: 25, scope: !732)
!2213 = !DILocation(line: 665, column: 30, scope: !732)
!2214 = !DILocation(line: 666, column: 5, scope: !732)
!2215 = !DILocation(line: 666, column: 14, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !4, discriminator: 1)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !4, line: 666, column: 14)
!2218 = distinct !DILexicalBlock(scope: !732, file: !4, line: 666, column: 8)
!2219 = !DILocation(line: 666, column: 20, scope: !2217)
!2220 = !DILocation(line: 666, column: 25, scope: !2217)
!2221 = !DILocation(line: 666, column: 14, scope: !2218)
!2222 = !DILocation(line: 666, column: 58, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2224, file: !4, discriminator: 2)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !4, line: 666, column: 40)
!2225 = !DILocation(line: 666, column: 42, scope: !2224)
!2226 = !DILocation(line: 666, column: 103, scope: !2224)
!2227 = !DILocation(line: 666, column: 124, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2218, file: !4, discriminator: 3)
!2229 = !DILocation(line: 666, column: 124, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2218, file: !4, discriminator: 4)
!2231 = !DILocation(line: 667, column: 34, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !732, file: !4, line: 667, column: 9)
!2233 = !DILocation(line: 667, column: 10, scope: !2232)
!2234 = !DILocation(line: 667, column: 71, scope: !2232)
!2235 = !DILocation(line: 668, column: 22, scope: !2232)
!2236 = !DILocation(line: 668, column: 10, scope: !2232)
!2237 = !DILocation(line: 667, column: 9, scope: !732)
!2238 = !DILocation(line: 669, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !4, line: 668, column: 29)
!2240 = !DILocation(line: 672, column: 14, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !4, line: 672, column: 13)
!2242 = distinct !DILexicalBlock(scope: !2232, file: !4, line: 670, column: 12)
!2243 = !DILocation(line: 672, column: 20, scope: !2241)
!2244 = !DILocation(line: 672, column: 18, scope: !2241)
!2245 = !DILocation(line: 672, column: 28, scope: !2241)
!2246 = !DILocation(line: 672, column: 26, scope: !2241)
!2247 = !DILocation(line: 672, column: 32, scope: !2241)
!2248 = !DILocation(line: 672, column: 36, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2241, file: !4, discriminator: 1)
!2250 = !DILocation(line: 672, column: 42, scope: !2241)
!2251 = !DILocation(line: 672, column: 40, scope: !2241)
!2252 = !DILocation(line: 672, column: 49, scope: !2241)
!2253 = !DILocation(line: 672, column: 47, scope: !2241)
!2254 = !DILocation(line: 672, column: 53, scope: !2241)
!2255 = !DILocation(line: 673, column: 12, scope: !2241)
!2256 = !DILocation(line: 673, column: 18, scope: !2241)
!2257 = !DILocation(line: 673, column: 24, scope: !2241)
!2258 = !DILocation(line: 673, column: 16, scope: !2241)
!2259 = !DILocation(line: 673, column: 29, scope: !2241)
!2260 = !DILocation(line: 673, column: 33, scope: !2249)
!2261 = !DILocation(line: 673, column: 39, scope: !2241)
!2262 = !DILocation(line: 673, column: 37, scope: !2241)
!2263 = !DILocation(line: 673, column: 46, scope: !2241)
!2264 = !DILocation(line: 673, column: 52, scope: !2241)
!2265 = !DILocation(line: 673, column: 44, scope: !2241)
!2266 = !DILocation(line: 673, column: 57, scope: !2241)
!2267 = !DILocation(line: 674, column: 12, scope: !2241)
!2268 = !DILocation(line: 674, column: 19, scope: !2241)
!2269 = !DILocation(line: 674, column: 25, scope: !2241)
!2270 = !DILocation(line: 674, column: 17, scope: !2241)
!2271 = !DILocation(line: 674, column: 30, scope: !2241)
!2272 = !DILocation(line: 674, column: 34, scope: !2249)
!2273 = !DILocation(line: 674, column: 41, scope: !2241)
!2274 = !DILocation(line: 674, column: 39, scope: !2241)
!2275 = !DILocation(line: 674, column: 48, scope: !2241)
!2276 = !DILocation(line: 674, column: 54, scope: !2241)
!2277 = !DILocation(line: 674, column: 46, scope: !2241)
!2278 = !DILocation(line: 672, column: 13, scope: !2242)
!2279 = !DILocation(line: 675, column: 29, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2241, file: !4, line: 674, column: 60)
!2281 = !DILocation(line: 675, column: 13, scope: !2280)
!2282 = !DILocation(line: 677, column: 13, scope: !2280)
!2283 = !DILocation(line: 679, column: 17, scope: !2242)
!2284 = !DILocation(line: 679, column: 23, scope: !2242)
!2285 = !DILocation(line: 679, column: 28, scope: !2242)
!2286 = !DILocation(line: 679, column: 27, scope: !2242)
!2287 = !DILocation(line: 679, column: 34, scope: !2242)
!2288 = !DILocation(line: 679, column: 40, scope: !2242)
!2289 = !DILocation(line: 679, column: 45, scope: !2242)
!2290 = !DILocation(line: 679, column: 44, scope: !2242)
!2291 = !DILocation(line: 679, column: 50, scope: !2242)
!2292 = !DILocation(line: 679, column: 9, scope: !2242)
!2293 = !DILocation(line: 680, column: 55, scope: !2242)
!2294 = !DILocation(line: 681, column: 9, scope: !2242)
!2295 = !DILocation(line: 683, column: 1, scope: !732)
!2296 = !DILocation(line: 268, column: 31, scope: !739)
!2297 = !DILocation(line: 269, column: 28, scope: !739)
!2298 = !DILocation(line: 271, column: 5, scope: !739)
!2299 = !DILocation(line: 271, column: 16, scope: !739)
!2300 = !DILocation(line: 271, column: 32, scope: !739)
!2301 = !DILocation(line: 272, column: 5, scope: !739)
!2302 = !DILocation(line: 272, column: 15, scope: !739)
!2303 = !DILocation(line: 274, column: 5, scope: !739)
!2304 = !DILocation(line: 274, column: 14, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !4, discriminator: 1)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !4, line: 274, column: 14)
!2307 = distinct !DILexicalBlock(scope: !739, file: !4, line: 274, column: 8)
!2308 = !DILocation(line: 274, column: 20, scope: !2306)
!2309 = !DILocation(line: 274, column: 25, scope: !2306)
!2310 = !DILocation(line: 274, column: 14, scope: !2307)
!2311 = !DILocation(line: 274, column: 58, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !4, discriminator: 2)
!2313 = distinct !DILexicalBlock(scope: !2306, file: !4, line: 274, column: 40)
!2314 = !DILocation(line: 274, column: 42, scope: !2313)
!2315 = !DILocation(line: 274, column: 103, scope: !2313)
!2316 = !DILocation(line: 274, column: 124, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2307, file: !4, discriminator: 3)
!2318 = !DILocation(line: 274, column: 124, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2307, file: !4, discriminator: 4)
!2320 = !DILocation(line: 275, column: 34, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !739, file: !4, line: 275, column: 9)
!2322 = !DILocation(line: 275, column: 10, scope: !2321)
!2323 = !DILocation(line: 275, column: 9, scope: !739)
!2324 = !DILocation(line: 276, column: 9, scope: !2321)
!2325 = !DILocation(line: 280, column: 9, scope: !739)
!2326 = !DILocation(line: 280, column: 15, scope: !739)
!2327 = !DILocation(line: 280, column: 22, scope: !739)
!2328 = !DILocation(line: 280, column: 28, scope: !739)
!2329 = !DILocation(line: 280, column: 20, scope: !739)
!2330 = !DILocation(line: 280, column: 7, scope: !739)
!2331 = !DILocation(line: 287, column: 9, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !739, file: !4, line: 287, column: 9)
!2333 = !DILocation(line: 287, column: 11, scope: !2332)
!2334 = !DILocation(line: 287, column: 9, scope: !739)
!2335 = !DILocation(line: 288, column: 11, scope: !2332)
!2336 = !DILocation(line: 288, column: 9, scope: !2332)
!2337 = !DILocation(line: 289, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !739, file: !4, line: 289, column: 9)
!2339 = !DILocation(line: 289, column: 19, scope: !2338)
!2340 = !DILocation(line: 289, column: 23, scope: !2338)
!2341 = !DILocation(line: 289, column: 26, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2338, file: !4, discriminator: 1)
!2343 = !DILocation(line: 289, column: 38, scope: !2338)
!2344 = !DILocation(line: 289, column: 36, scope: !2338)
!2345 = !DILocation(line: 289, column: 9, scope: !739)
!2346 = !DILocation(line: 290, column: 21, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2338, file: !4, line: 289, column: 41)
!2348 = !DILocation(line: 290, column: 19, scope: !2347)
!2349 = !DILocation(line: 291, column: 5, scope: !2347)
!2350 = !DILocation(line: 292, column: 40, scope: !739)
!2351 = !DILocation(line: 292, column: 46, scope: !739)
!2352 = !DILocation(line: 292, column: 51, scope: !739)
!2353 = !DILocation(line: 292, column: 57, scope: !739)
!2354 = !DILocation(line: 292, column: 50, scope: !739)
!2355 = !DILocation(line: 292, column: 62, scope: !739)
!2356 = !DILocation(line: 292, column: 14, scope: !739)
!2357 = !DILocation(line: 292, column: 12, scope: !739)
!2358 = !DILocation(line: 293, column: 18, scope: !739)
!2359 = !DILocation(line: 293, column: 5, scope: !739)
!2360 = !DILocation(line: 293, column: 11, scope: !739)
!2361 = !DILocation(line: 293, column: 15, scope: !739)
!2362 = !DILocation(line: 294, column: 12, scope: !739)
!2363 = !DILocation(line: 294, column: 5, scope: !739)
!2364 = !DILocation(line: 295, column: 1, scope: !739)
!2365 = !DILocation(line: 209, column: 36, scope: !751)
!2366 = !DILocation(line: 210, column: 33, scope: !751)
!2367 = !DILocation(line: 212, column: 5, scope: !751)
!2368 = !DILocation(line: 212, column: 14, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !4, discriminator: 1)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !4, line: 212, column: 14)
!2371 = distinct !DILexicalBlock(scope: !751, file: !4, line: 212, column: 8)
!2372 = !DILocation(line: 212, column: 20, scope: !2370)
!2373 = !DILocation(line: 212, column: 25, scope: !2370)
!2374 = !DILocation(line: 212, column: 14, scope: !2371)
!2375 = !DILocation(line: 212, column: 58, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2377, file: !4, discriminator: 2)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !4, line: 212, column: 40)
!2378 = !DILocation(line: 212, column: 42, scope: !2377)
!2379 = !DILocation(line: 212, column: 103, scope: !2377)
!2380 = !DILocation(line: 212, column: 124, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2371, file: !4, discriminator: 3)
!2382 = !DILocation(line: 213, column: 9, scope: !757)
!2383 = !DILocation(line: 213, column: 15, scope: !757)
!2384 = !DILocation(line: 213, column: 21, scope: !757)
!2385 = !DILocation(line: 213, column: 27, scope: !757)
!2386 = !DILocation(line: 213, column: 19, scope: !757)
!2387 = !DILocation(line: 213, column: 9, scope: !751)
!2388 = !DILocation(line: 214, column: 9, scope: !756)
!2389 = !DILocation(line: 214, column: 14, scope: !756)
!2390 = !DILocation(line: 214, column: 33, scope: !756)
!2391 = !DILocation(line: 214, column: 39, scope: !756)
!2392 = !DILocation(line: 214, column: 22, scope: !756)
!2393 = !DILocation(line: 214, column: 28, scope: !756)
!2394 = !DILocation(line: 215, column: 9, scope: !756)
!2395 = !DILocation(line: 215, column: 15, scope: !756)
!2396 = !DILocation(line: 215, column: 19, scope: !756)
!2397 = !DILocation(line: 216, column: 57, scope: !756)
!2398 = !DILocation(line: 216, column: 42, scope: !756)
!2399 = !DILocation(line: 216, column: 16, scope: !756)
!2400 = !DILocation(line: 216, column: 9, scope: !756)
!2401 = !DILocation(line: 217, column: 5, scope: !757)
!2402 = !DILocation(line: 218, column: 25, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !757, file: !4, line: 217, column: 12)
!2404 = !DILocation(line: 218, column: 9, scope: !2403)
!2405 = !DILocation(line: 219, column: 9, scope: !2403)
!2406 = !DILocation(line: 221, column: 1, scope: !751)
!2407 = !DILocation(line: 224, column: 36, scope: !758)
!2408 = !DILocation(line: 225, column: 33, scope: !758)
!2409 = !DILocation(line: 227, column: 5, scope: !758)
!2410 = !DILocation(line: 227, column: 11, scope: !758)
!2411 = !DILocation(line: 227, column: 19, scope: !758)
!2412 = !DILocation(line: 227, column: 25, scope: !758)
!2413 = !DILocation(line: 227, column: 30, scope: !758)
!2414 = !DILocation(line: 227, column: 36, scope: !758)
!2415 = !DILocation(line: 227, column: 29, scope: !758)
!2416 = !DILocation(line: 228, column: 5, scope: !758)
!2417 = !DILocation(line: 228, column: 11, scope: !758)
!2418 = !DILocation(line: 228, column: 17, scope: !758)
!2419 = !DILocation(line: 228, column: 23, scope: !758)
!2420 = !DILocation(line: 228, column: 28, scope: !758)
!2421 = !DILocation(line: 228, column: 34, scope: !758)
!2422 = !DILocation(line: 228, column: 27, scope: !758)
!2423 = !DILocation(line: 229, column: 5, scope: !758)
!2424 = !DILocation(line: 229, column: 11, scope: !758)
!2425 = !DILocation(line: 230, column: 5, scope: !758)
!2426 = !DILocation(line: 230, column: 15, scope: !758)
!2427 = !DILocation(line: 232, column: 5, scope: !758)
!2428 = !DILocation(line: 232, column: 14, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2430, file: !4, discriminator: 1)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !4, line: 232, column: 14)
!2431 = distinct !DILexicalBlock(scope: !758, file: !4, line: 232, column: 8)
!2432 = !DILocation(line: 232, column: 20, scope: !2430)
!2433 = !DILocation(line: 232, column: 25, scope: !2430)
!2434 = !DILocation(line: 232, column: 14, scope: !2431)
!2435 = !DILocation(line: 232, column: 58, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2437, file: !4, discriminator: 2)
!2437 = distinct !DILexicalBlock(scope: !2430, file: !4, line: 232, column: 40)
!2438 = !DILocation(line: 232, column: 42, scope: !2437)
!2439 = !DILocation(line: 232, column: 103, scope: !2437)
!2440 = !DILocation(line: 232, column: 124, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2431, file: !4, discriminator: 3)
!2442 = !DILocation(line: 232, column: 124, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2431, file: !4, discriminator: 4)
!2444 = !DILocation(line: 234, column: 18, scope: !758)
!2445 = !DILocation(line: 234, column: 31, scope: !758)
!2446 = !DILocation(line: 234, column: 37, scope: !758)
!2447 = !DILocation(line: 234, column: 44, scope: !758)
!2448 = !DILocation(line: 234, column: 50, scope: !758)
!2449 = !DILocation(line: 234, column: 42, scope: !758)
!2450 = !DILocation(line: 234, column: 11, scope: !758)
!2451 = !DILocation(line: 234, column: 9, scope: !758)
!2452 = !DILocation(line: 235, column: 10, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !758, file: !4, line: 235, column: 9)
!2454 = !DILocation(line: 235, column: 9, scope: !758)
!2455 = !DILocation(line: 236, column: 15, scope: !2453)
!2456 = !DILocation(line: 236, column: 13, scope: !2453)
!2457 = !DILocation(line: 236, column: 9, scope: !2453)
!2458 = !DILocation(line: 238, column: 9, scope: !2453)
!2459 = !DILocation(line: 240, column: 40, scope: !758)
!2460 = !DILocation(line: 240, column: 48, scope: !758)
!2461 = !DILocation(line: 240, column: 54, scope: !758)
!2462 = !DILocation(line: 240, column: 52, scope: !758)
!2463 = !DILocation(line: 240, column: 14, scope: !758)
!2464 = !DILocation(line: 240, column: 12, scope: !758)
!2465 = !DILocation(line: 241, column: 19, scope: !758)
!2466 = !DILocation(line: 241, column: 25, scope: !758)
!2467 = !DILocation(line: 241, column: 23, scope: !758)
!2468 = !DILocation(line: 241, column: 5, scope: !758)
!2469 = !DILocation(line: 241, column: 11, scope: !758)
!2470 = !DILocation(line: 241, column: 15, scope: !758)
!2471 = !DILocation(line: 242, column: 12, scope: !758)
!2472 = !DILocation(line: 242, column: 5, scope: !758)
!2473 = !DILocation(line: 243, column: 1, scope: !758)
!2474 = !DILocation(line: 486, column: 33, scope: !766)
!2475 = !DILocation(line: 487, column: 30, scope: !766)
!2476 = !DILocation(line: 489, column: 5, scope: !766)
!2477 = !DILocation(line: 489, column: 16, scope: !766)
!2478 = !DILocation(line: 490, column: 5, scope: !766)
!2479 = !DILocation(line: 490, column: 14, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !4, discriminator: 1)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !4, line: 490, column: 14)
!2482 = distinct !DILexicalBlock(scope: !766, file: !4, line: 490, column: 8)
!2483 = !DILocation(line: 490, column: 20, scope: !2481)
!2484 = !DILocation(line: 490, column: 25, scope: !2481)
!2485 = !DILocation(line: 490, column: 14, scope: !2482)
!2486 = !DILocation(line: 490, column: 58, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2488, file: !4, discriminator: 2)
!2488 = distinct !DILexicalBlock(scope: !2481, file: !4, line: 490, column: 40)
!2489 = !DILocation(line: 490, column: 42, scope: !2488)
!2490 = !DILocation(line: 490, column: 103, scope: !2488)
!2491 = !DILocation(line: 490, column: 124, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2482, file: !4, discriminator: 3)
!2493 = !DILocation(line: 490, column: 124, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2482, file: !4, discriminator: 4)
!2495 = !DILocation(line: 491, column: 34, scope: !773)
!2496 = !DILocation(line: 491, column: 10, scope: !773)
!2497 = !DILocation(line: 491, column: 63, scope: !773)
!2498 = !DILocation(line: 492, column: 24, scope: !773)
!2499 = !DILocation(line: 492, column: 10, scope: !773)
!2500 = !DILocation(line: 491, column: 9, scope: !766)
!2501 = !DILocation(line: 493, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !773, file: !4, line: 492, column: 31)
!2503 = !DILocation(line: 551, column: 9, scope: !772)
!2504 = !DILocation(line: 551, column: 15, scope: !772)
!2505 = !DILocation(line: 553, column: 23, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !772, file: !4, line: 553, column: 13)
!2507 = !DILocation(line: 553, column: 29, scope: !2506)
!2508 = !DILocation(line: 553, column: 33, scope: !2506)
!2509 = !DILocation(line: 553, column: 39, scope: !2506)
!2510 = !DILocation(line: 553, column: 48, scope: !2506)
!2511 = !DILocation(line: 553, column: 46, scope: !2506)
!2512 = !DILocation(line: 553, column: 13, scope: !2506)
!2513 = !DILocation(line: 553, column: 58, scope: !2506)
!2514 = !DILocation(line: 553, column: 13, scope: !772)
!2515 = !DILocation(line: 554, column: 32, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2506, file: !4, line: 553, column: 65)
!2517 = !DILocation(line: 554, column: 13, scope: !2516)
!2518 = !DILocation(line: 555, column: 13, scope: !2516)
!2519 = !DILocation(line: 559, column: 25, scope: !772)
!2520 = !DILocation(line: 559, column: 31, scope: !772)
!2521 = !DILocation(line: 559, column: 37, scope: !772)
!2522 = !DILocation(line: 559, column: 43, scope: !772)
!2523 = !DILocation(line: 559, column: 49, scope: !772)
!2524 = !DILocation(line: 559, column: 18, scope: !772)
!2525 = !DILocation(line: 559, column: 16, scope: !772)
!2526 = !DILocation(line: 567, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !772, file: !4, line: 567, column: 13)
!2528 = !DILocation(line: 567, column: 20, scope: !2527)
!2529 = !DILocation(line: 567, column: 13, scope: !772)
!2530 = !DILocation(line: 569, column: 32, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !4, line: 568, column: 9)
!2532 = !DILocation(line: 569, column: 13, scope: !2531)
!2533 = !DILocation(line: 570, column: 13, scope: !2531)
!2534 = !DILocation(line: 572, column: 22, scope: !772)
!2535 = !DILocation(line: 572, column: 9, scope: !772)
!2536 = !DILocation(line: 572, column: 15, scope: !772)
!2537 = !DILocation(line: 572, column: 20, scope: !772)
!2538 = !DILocation(line: 573, column: 22, scope: !772)
!2539 = !DILocation(line: 573, column: 9, scope: !772)
!2540 = !DILocation(line: 573, column: 15, scope: !772)
!2541 = !DILocation(line: 573, column: 20, scope: !772)
!2542 = !DILocation(line: 574, column: 55, scope: !772)
!2543 = !DILocation(line: 575, column: 9, scope: !772)
!2544 = !DILocation(line: 578, column: 5, scope: !773)
!2545 = !DILocation(line: 579, column: 1, scope: !766)
!2546 = !DILocation(line: 621, column: 31, scope: !777)
!2547 = !DILocation(line: 621, column: 47, scope: !777)
!2548 = !DILocation(line: 623, column: 5, scope: !777)
!2549 = !DILocation(line: 623, column: 16, scope: !777)
!2550 = !DILocation(line: 624, column: 5, scope: !777)
!2551 = !DILocation(line: 624, column: 9, scope: !777)
!2552 = !DILocation(line: 625, column: 5, scope: !777)
!2553 = !DILocation(line: 625, column: 14, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2555, file: !4, discriminator: 1)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !4, line: 625, column: 14)
!2556 = distinct !DILexicalBlock(scope: !777, file: !4, line: 625, column: 8)
!2557 = !DILocation(line: 625, column: 20, scope: !2555)
!2558 = !DILocation(line: 625, column: 25, scope: !2555)
!2559 = !DILocation(line: 625, column: 14, scope: !2556)
!2560 = !DILocation(line: 625, column: 58, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !4, discriminator: 2)
!2562 = distinct !DILexicalBlock(scope: !2555, file: !4, line: 625, column: 40)
!2563 = !DILocation(line: 625, column: 42, scope: !2562)
!2564 = !DILocation(line: 625, column: 103, scope: !2562)
!2565 = !DILocation(line: 625, column: 124, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2556, file: !4, discriminator: 3)
!2567 = !DILocation(line: 625, column: 124, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2556, file: !4, discriminator: 4)
!2569 = !DILocation(line: 626, column: 34, scope: !785)
!2570 = !DILocation(line: 626, column: 10, scope: !785)
!2571 = !DILocation(line: 626, column: 9, scope: !777)
!2572 = !DILocation(line: 627, column: 9, scope: !785)
!2573 = !DILocation(line: 629, column: 9, scope: !784)
!2574 = !DILocation(line: 629, column: 16, scope: !784)
!2575 = !DILocation(line: 630, column: 17, scope: !784)
!2576 = !DILocation(line: 632, column: 17, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !4, line: 632, column: 17)
!2578 = distinct !DILexicalBlock(scope: !784, file: !4, line: 630, column: 22)
!2579 = !DILocation(line: 632, column: 22, scope: !2577)
!2580 = !DILocation(line: 632, column: 17, scope: !2578)
!2581 = !DILocation(line: 633, column: 17, scope: !2577)
!2582 = !DILocation(line: 634, column: 21, scope: !2578)
!2583 = !DILocation(line: 634, column: 19, scope: !2578)
!2584 = !DILocation(line: 635, column: 13, scope: !2578)
!2585 = !DILocation(line: 637, column: 29, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !4, line: 637, column: 17)
!2587 = !DILocation(line: 637, column: 35, scope: !2586)
!2588 = !DILocation(line: 637, column: 41, scope: !2586)
!2589 = !DILocation(line: 637, column: 39, scope: !2586)
!2590 = !DILocation(line: 637, column: 46, scope: !2586)
!2591 = !DILocation(line: 637, column: 17, scope: !2578)
!2592 = !DILocation(line: 638, column: 17, scope: !2586)
!2593 = !DILocation(line: 639, column: 21, scope: !2578)
!2594 = !DILocation(line: 639, column: 27, scope: !2578)
!2595 = !DILocation(line: 639, column: 33, scope: !2578)
!2596 = !DILocation(line: 639, column: 31, scope: !2578)
!2597 = !DILocation(line: 639, column: 19, scope: !2578)
!2598 = !DILocation(line: 640, column: 13, scope: !2578)
!2599 = !DILocation(line: 642, column: 29, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2578, file: !4, line: 642, column: 17)
!2601 = !DILocation(line: 642, column: 35, scope: !2600)
!2602 = !DILocation(line: 642, column: 42, scope: !2600)
!2603 = !DILocation(line: 642, column: 40, scope: !2600)
!2604 = !DILocation(line: 642, column: 47, scope: !2600)
!2605 = !DILocation(line: 642, column: 17, scope: !2578)
!2606 = !DILocation(line: 643, column: 17, scope: !2600)
!2607 = !DILocation(line: 644, column: 21, scope: !2578)
!2608 = !DILocation(line: 644, column: 27, scope: !2578)
!2609 = !DILocation(line: 644, column: 34, scope: !2578)
!2610 = !DILocation(line: 644, column: 32, scope: !2578)
!2611 = !DILocation(line: 644, column: 19, scope: !2578)
!2612 = !DILocation(line: 645, column: 13, scope: !2578)
!2613 = !DILocation(line: 647, column: 29, scope: !2578)
!2614 = !DILocation(line: 647, column: 13, scope: !2578)
!2615 = !DILocation(line: 648, column: 13, scope: !2578)
!2616 = !DILocation(line: 650, column: 13, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !784, file: !4, line: 650, column: 13)
!2618 = !DILocation(line: 650, column: 21, scope: !2617)
!2619 = !DILocation(line: 650, column: 27, scope: !2617)
!2620 = !DILocation(line: 650, column: 19, scope: !2617)
!2621 = !DILocation(line: 650, column: 13, scope: !784)
!2622 = !DILocation(line: 651, column: 13, scope: !2617)
!2623 = !DILocation(line: 652, column: 21, scope: !784)
!2624 = !DILocation(line: 652, column: 9, scope: !784)
!2625 = !DILocation(line: 652, column: 15, scope: !784)
!2626 = !DILocation(line: 652, column: 19, scope: !784)
!2627 = !DILocation(line: 653, column: 55, scope: !784)
!2628 = !DILocation(line: 654, column: 9, scope: !784)
!2629 = !DILocation(line: 655, column: 5, scope: !785)
!2630 = !DILocation(line: 658, column: 21, scope: !777)
!2631 = !DILocation(line: 658, column: 5, scope: !777)
!2632 = !DILocation(line: 659, column: 5, scope: !777)
!2633 = !DILocation(line: 660, column: 1, scope: !777)
!2634 = !DILocation(line: 434, column: 31, scope: !786)
!2635 = !DILocation(line: 435, column: 28, scope: !786)
!2636 = !DILocation(line: 437, column: 5, scope: !786)
!2637 = !DILocation(line: 437, column: 14, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2639, file: !4, discriminator: 1)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !4, line: 437, column: 14)
!2640 = distinct !DILexicalBlock(scope: !786, file: !4, line: 437, column: 8)
!2641 = !DILocation(line: 437, column: 20, scope: !2639)
!2642 = !DILocation(line: 437, column: 25, scope: !2639)
!2643 = !DILocation(line: 437, column: 14, scope: !2640)
!2644 = !DILocation(line: 437, column: 58, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2646, file: !4, discriminator: 2)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !4, line: 437, column: 40)
!2647 = !DILocation(line: 437, column: 42, scope: !2646)
!2648 = !DILocation(line: 437, column: 103, scope: !2646)
!2649 = !DILocation(line: 437, column: 124, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2640, file: !4, discriminator: 3)
!2651 = !DILocation(line: 462, column: 9, scope: !791)
!2652 = !DILocation(line: 462, column: 21, scope: !791)
!2653 = !DILocation(line: 463, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !791, file: !4, line: 463, column: 13)
!2655 = !DILocation(line: 463, column: 31, scope: !2654)
!2656 = !DILocation(line: 463, column: 19, scope: !2654)
!2657 = !DILocation(line: 463, column: 16, scope: !2654)
!2658 = !DILocation(line: 463, column: 13, scope: !791)
!2659 = !DILocation(line: 464, column: 32, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !4, line: 463, column: 42)
!2661 = !DILocation(line: 464, column: 13, scope: !2660)
!2662 = !DILocation(line: 465, column: 13, scope: !2660)
!2663 = !DILocation(line: 470, column: 36, scope: !791)
!2664 = !DILocation(line: 470, column: 16, scope: !791)
!2665 = !DILocation(line: 470, column: 9, scope: !791)
!2666 = !DILocation(line: 472, column: 5, scope: !786)
!2667 = !DILocation(line: 474, column: 1, scope: !786)
!2668 = !DILocation(line: 582, column: 31, scope: !855)
!2669 = !DILocation(line: 582, column: 47, scope: !855)
!2670 = !DILocation(line: 584, column: 5, scope: !855)
!2671 = !DILocation(line: 584, column: 14, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !4, discriminator: 1)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !4, line: 584, column: 14)
!2674 = distinct !DILexicalBlock(scope: !855, file: !4, line: 584, column: 8)
!2675 = !DILocation(line: 584, column: 20, scope: !2673)
!2676 = !DILocation(line: 584, column: 25, scope: !2673)
!2677 = !DILocation(line: 584, column: 14, scope: !2674)
!2678 = !DILocation(line: 584, column: 58, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !4, discriminator: 2)
!2680 = distinct !DILexicalBlock(scope: !2673, file: !4, line: 584, column: 40)
!2681 = !DILocation(line: 584, column: 42, scope: !2680)
!2682 = !DILocation(line: 584, column: 103, scope: !2680)
!2683 = !DILocation(line: 584, column: 124, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2674, file: !4, discriminator: 3)
!2685 = !DILocation(line: 585, column: 30, scope: !855)
!2686 = !DILocation(line: 585, column: 36, scope: !855)
!2687 = !DILocation(line: 585, column: 12, scope: !855)
!2688 = !DILocation(line: 585, column: 5, scope: !855)
!2689 = !DILocation(line: 586, column: 1, scope: !855)
!2690 = !DILocation(line: 385, column: 32, scope: !859)
!2691 = !DILocation(line: 386, column: 29, scope: !859)
!2692 = !DILocation(line: 388, column: 5, scope: !859)
!2693 = !DILocation(line: 388, column: 16, scope: !859)
!2694 = !DILocation(line: 389, column: 5, scope: !859)
!2695 = !DILocation(line: 389, column: 11, scope: !859)
!2696 = !DILocation(line: 391, column: 5, scope: !859)
!2697 = !DILocation(line: 391, column: 14, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !4, discriminator: 1)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !4, line: 391, column: 14)
!2700 = distinct !DILexicalBlock(scope: !859, file: !4, line: 391, column: 8)
!2701 = !DILocation(line: 391, column: 20, scope: !2699)
!2702 = !DILocation(line: 391, column: 25, scope: !2699)
!2703 = !DILocation(line: 391, column: 14, scope: !2700)
!2704 = !DILocation(line: 391, column: 58, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !4, discriminator: 2)
!2706 = distinct !DILexicalBlock(scope: !2699, file: !4, line: 391, column: 40)
!2707 = !DILocation(line: 391, column: 42, scope: !2706)
!2708 = !DILocation(line: 391, column: 103, scope: !2706)
!2709 = !DILocation(line: 391, column: 124, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2700, file: !4, discriminator: 3)
!2711 = !DILocation(line: 391, column: 124, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2700, file: !4, discriminator: 4)
!2713 = !DILocation(line: 392, column: 34, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !859, file: !4, line: 392, column: 9)
!2715 = !DILocation(line: 392, column: 10, scope: !2714)
!2716 = !DILocation(line: 392, column: 9, scope: !859)
!2717 = !DILocation(line: 393, column: 9, scope: !2714)
!2718 = !DILocation(line: 395, column: 22, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !859, file: !4, line: 395, column: 9)
!2720 = !DILocation(line: 395, column: 10, scope: !2719)
!2721 = !DILocation(line: 395, column: 9, scope: !859)
!2722 = !DILocation(line: 396, column: 9, scope: !2719)
!2723 = !DILocation(line: 398, column: 10, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !859, file: !4, line: 398, column: 9)
!2725 = !DILocation(line: 398, column: 16, scope: !2724)
!2726 = !DILocation(line: 398, column: 22, scope: !2724)
!2727 = !DILocation(line: 398, column: 20, scope: !2724)
!2728 = !DILocation(line: 398, column: 32, scope: !2724)
!2729 = !DILocation(line: 398, column: 38, scope: !2724)
!2730 = !DILocation(line: 398, column: 30, scope: !2724)
!2731 = !DILocation(line: 398, column: 9, scope: !859)
!2732 = !DILocation(line: 399, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !4, line: 398, column: 44)
!2734 = !DILocation(line: 399, column: 9, scope: !2733)
!2735 = !DILocation(line: 400, column: 9, scope: !2733)
!2736 = !DILocation(line: 402, column: 12, scope: !859)
!2737 = !DILocation(line: 402, column: 18, scope: !859)
!2738 = !DILocation(line: 402, column: 23, scope: !859)
!2739 = !DILocation(line: 402, column: 29, scope: !859)
!2740 = !DILocation(line: 402, column: 22, scope: !859)
!2741 = !DILocation(line: 402, column: 34, scope: !859)
!2742 = !DILocation(line: 402, column: 40, scope: !859)
!2743 = !DILocation(line: 402, column: 5, scope: !859)
!2744 = !DILocation(line: 403, column: 17, scope: !859)
!2745 = !DILocation(line: 403, column: 23, scope: !859)
!2746 = !DILocation(line: 403, column: 27, scope: !859)
!2747 = !DILocation(line: 403, column: 26, scope: !859)
!2748 = !DILocation(line: 403, column: 5, scope: !859)
!2749 = !DILocation(line: 403, column: 11, scope: !859)
!2750 = !DILocation(line: 403, column: 15, scope: !859)
!2751 = !DILocation(line: 404, column: 51, scope: !859)
!2752 = !DILocation(line: 405, column: 5, scope: !859)
!2753 = !DILocation(line: 406, column: 1, scope: !859)
!2754 = !DILocation(line: 409, column: 37, scope: !865)
!2755 = !DILocation(line: 410, column: 34, scope: !865)
!2756 = !DILocation(line: 412, column: 5, scope: !865)
!2757 = !DILocation(line: 412, column: 10, scope: !865)
!2758 = !DILocation(line: 414, column: 5, scope: !865)
!2759 = !DILocation(line: 414, column: 14, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2761, file: !4, discriminator: 1)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !4, line: 414, column: 14)
!2762 = distinct !DILexicalBlock(scope: !865, file: !4, line: 414, column: 8)
!2763 = !DILocation(line: 414, column: 20, scope: !2761)
!2764 = !DILocation(line: 414, column: 25, scope: !2761)
!2765 = !DILocation(line: 414, column: 14, scope: !2762)
!2766 = !DILocation(line: 414, column: 58, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2768, file: !4, discriminator: 2)
!2768 = distinct !DILexicalBlock(scope: !2761, file: !4, line: 414, column: 40)
!2769 = !DILocation(line: 414, column: 42, scope: !2768)
!2770 = !DILocation(line: 414, column: 103, scope: !2768)
!2771 = !DILocation(line: 414, column: 124, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2762, file: !4, discriminator: 3)
!2773 = !DILocation(line: 414, column: 124, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2762, file: !4, discriminator: 4)
!2775 = !DILocation(line: 415, column: 34, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !865, file: !4, line: 415, column: 9)
!2777 = !DILocation(line: 415, column: 10, scope: !2776)
!2778 = !DILocation(line: 415, column: 9, scope: !865)
!2779 = !DILocation(line: 416, column: 9, scope: !2776)
!2780 = !DILocation(line: 418, column: 22, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !865, file: !4, line: 418, column: 9)
!2782 = !DILocation(line: 418, column: 10, scope: !2781)
!2783 = !DILocation(line: 418, column: 9, scope: !865)
!2784 = !DILocation(line: 419, column: 9, scope: !2781)
!2785 = !DILocation(line: 421, column: 9, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !865, file: !4, line: 421, column: 9)
!2787 = !DILocation(line: 421, column: 15, scope: !2786)
!2788 = !DILocation(line: 421, column: 21, scope: !2786)
!2789 = !DILocation(line: 421, column: 27, scope: !2786)
!2790 = !DILocation(line: 421, column: 19, scope: !2786)
!2791 = !DILocation(line: 421, column: 9, scope: !865)
!2792 = !DILocation(line: 422, column: 35, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2786, file: !4, line: 421, column: 33)
!2794 = !DILocation(line: 422, column: 11, scope: !2793)
!2795 = !DILocation(line: 422, column: 17, scope: !2793)
!2796 = !DILocation(line: 422, column: 22, scope: !2793)
!2797 = !DILocation(line: 422, column: 28, scope: !2793)
!2798 = !DILocation(line: 422, column: 21, scope: !2793)
!2799 = !DILocation(line: 422, column: 33, scope: !2793)
!2800 = !DILocation(line: 423, column: 9, scope: !2793)
!2801 = !DILocation(line: 423, column: 15, scope: !2793)
!2802 = !DILocation(line: 423, column: 19, scope: !2793)
!2803 = !DILocation(line: 424, column: 55, scope: !2793)
!2804 = !DILocation(line: 425, column: 9, scope: !2793)
!2805 = !DILocation(line: 428, column: 25, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2786, file: !4, line: 427, column: 10)
!2807 = !DILocation(line: 428, column: 9, scope: !2806)
!2808 = !DILocation(line: 429, column: 9, scope: !2806)
!2809 = !DILocation(line: 431, column: 1, scope: !865)
!2810 = !DILocation(line: 696, column: 34, scope: !870)
!2811 = !DILocation(line: 696, column: 50, scope: !870)
!2812 = !DILocation(line: 698, column: 5, scope: !870)
!2813 = !DILocation(line: 698, column: 14, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2815, file: !4, discriminator: 1)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !4, line: 698, column: 14)
!2816 = distinct !DILexicalBlock(scope: !870, file: !4, line: 698, column: 8)
!2817 = !DILocation(line: 698, column: 20, scope: !2815)
!2818 = !DILocation(line: 698, column: 25, scope: !2815)
!2819 = !DILocation(line: 698, column: 14, scope: !2816)
!2820 = !DILocation(line: 698, column: 58, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2822, file: !4, discriminator: 2)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !4, line: 698, column: 40)
!2823 = !DILocation(line: 698, column: 42, scope: !2822)
!2824 = !DILocation(line: 698, column: 103, scope: !2822)
!2825 = !DILocation(line: 698, column: 124, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2816, file: !4, discriminator: 3)
!2827 = !DILocation(line: 700, column: 21, scope: !870)
!2828 = !DILocation(line: 700, column: 8, scope: !870)
!2829 = !DILocation(line: 700, column: 29, scope: !870)
!2830 = !DILocation(line: 700, column: 38, scope: !870)
!2831 = !DILocation(line: 701, column: 24, scope: !870)
!2832 = !DILocation(line: 701, column: 12, scope: !870)
!2833 = !DILocation(line: 701, column: 5, scope: !870)
!2834 = !DILocation(line: 702, column: 1, scope: !870)
!2835 = !DILocation(line: 705, column: 30, scope: !874)
!2836 = !DILocation(line: 705, column: 46, scope: !874)
!2837 = !DILocation(line: 709, column: 41, scope: !874)
!2838 = !DILocation(line: 709, column: 12, scope: !874)
!2839 = !DILocation(line: 709, column: 5, scope: !874)
!2840 = !DILocation(line: 298, column: 25, scope: !701)
!2841 = !DILocation(line: 299, column: 22, scope: !701)
!2842 = !DILocation(line: 300, column: 16, scope: !701)
!2843 = !DILocation(line: 302, column: 5, scope: !701)
!2844 = !DILocation(line: 302, column: 16, scope: !701)
!2845 = !DILocation(line: 302, column: 24, scope: !701)
!2846 = !DILocation(line: 302, column: 30, scope: !701)
!2847 = !DILocation(line: 303, column: 5, scope: !701)
!2848 = !DILocation(line: 303, column: 16, scope: !701)
!2849 = !DILocation(line: 303, column: 22, scope: !701)
!2850 = !DILocation(line: 303, column: 28, scope: !701)
!2851 = !DILocation(line: 304, column: 5, scope: !701)
!2852 = !DILocation(line: 304, column: 17, scope: !701)
!2853 = !DILocation(line: 305, column: 5, scope: !701)
!2854 = !DILocation(line: 305, column: 16, scope: !701)
!2855 = !DILocation(line: 307, column: 5, scope: !701)
!2856 = !DILocation(line: 307, column: 14, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2858, file: !4, discriminator: 1)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !4, line: 307, column: 14)
!2859 = distinct !DILexicalBlock(scope: !701, file: !4, line: 307, column: 8)
!2860 = !DILocation(line: 307, column: 20, scope: !2858)
!2861 = !DILocation(line: 307, column: 25, scope: !2858)
!2862 = !DILocation(line: 307, column: 14, scope: !2859)
!2863 = !DILocation(line: 307, column: 58, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2865, file: !4, discriminator: 2)
!2865 = distinct !DILexicalBlock(scope: !2858, file: !4, line: 307, column: 40)
!2866 = !DILocation(line: 307, column: 42, scope: !2865)
!2867 = !DILocation(line: 307, column: 103, scope: !2865)
!2868 = !DILocation(line: 307, column: 124, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2859, file: !4, discriminator: 3)
!2870 = !DILocation(line: 307, column: 124, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2859, file: !4, discriminator: 4)
!2872 = !DILocation(line: 308, column: 34, scope: !714)
!2873 = !DILocation(line: 308, column: 40, scope: !714)
!2874 = !DILocation(line: 308, column: 10, scope: !714)
!2875 = !DILocation(line: 308, column: 9, scope: !701)
!2876 = !DILocation(line: 310, column: 9, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !714, file: !4, line: 309, column: 57)
!2878 = !DILocation(line: 312, column: 9, scope: !713)
!2879 = !DILocation(line: 312, column: 21, scope: !713)
!2880 = !DILocation(line: 312, column: 25, scope: !713)
!2881 = !DILocation(line: 312, column: 35, scope: !713)
!2882 = !DILocation(line: 313, column: 9, scope: !713)
!2883 = !DILocation(line: 313, column: 13, scope: !713)
!2884 = !DILocation(line: 313, column: 20, scope: !713)
!2885 = !DILocation(line: 315, column: 13, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !713, file: !4, line: 315, column: 13)
!2887 = !DILocation(line: 315, column: 19, scope: !2886)
!2888 = !DILocation(line: 315, column: 13, scope: !713)
!2889 = !DILocation(line: 316, column: 22, scope: !2886)
!2890 = !DILocation(line: 316, column: 28, scope: !2886)
!2891 = !DILocation(line: 316, column: 19, scope: !2886)
!2892 = !DILocation(line: 316, column: 13, scope: !2886)
!2893 = !DILocation(line: 317, column: 13, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !713, file: !4, line: 317, column: 13)
!2895 = !DILocation(line: 317, column: 19, scope: !2894)
!2896 = !DILocation(line: 317, column: 13, scope: !713)
!2897 = !DILocation(line: 318, column: 19, scope: !2894)
!2898 = !DILocation(line: 318, column: 13, scope: !2894)
!2899 = !DILocation(line: 319, column: 26, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !4, line: 319, column: 18)
!2901 = !DILocation(line: 319, column: 34, scope: !2900)
!2902 = !DILocation(line: 319, column: 40, scope: !2900)
!2903 = !DILocation(line: 319, column: 32, scope: !2900)
!2904 = !DILocation(line: 319, column: 18, scope: !2894)
!2905 = !DILocation(line: 320, column: 21, scope: !2900)
!2906 = !DILocation(line: 320, column: 27, scope: !2900)
!2907 = !DILocation(line: 320, column: 19, scope: !2900)
!2908 = !DILocation(line: 320, column: 13, scope: !2900)
!2909 = !DILocation(line: 322, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !713, file: !4, line: 322, column: 13)
!2911 = !DILocation(line: 322, column: 17, scope: !2910)
!2912 = !DILocation(line: 322, column: 13, scope: !713)
!2913 = !DILocation(line: 323, column: 20, scope: !2910)
!2914 = !DILocation(line: 323, column: 26, scope: !2910)
!2915 = !DILocation(line: 323, column: 17, scope: !2910)
!2916 = !DILocation(line: 323, column: 13, scope: !2910)
!2917 = !DILocation(line: 324, column: 13, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !713, file: !4, line: 324, column: 13)
!2919 = !DILocation(line: 324, column: 17, scope: !2918)
!2920 = !DILocation(line: 324, column: 13, scope: !713)
!2921 = !DILocation(line: 325, column: 17, scope: !2918)
!2922 = !DILocation(line: 325, column: 13, scope: !2918)
!2923 = !DILocation(line: 326, column: 26, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !4, line: 326, column: 18)
!2925 = !DILocation(line: 326, column: 32, scope: !2924)
!2926 = !DILocation(line: 326, column: 38, scope: !2924)
!2927 = !DILocation(line: 326, column: 30, scope: !2924)
!2928 = !DILocation(line: 326, column: 18, scope: !2918)
!2929 = !DILocation(line: 327, column: 19, scope: !2924)
!2930 = !DILocation(line: 327, column: 25, scope: !2924)
!2931 = !DILocation(line: 327, column: 17, scope: !2924)
!2932 = !DILocation(line: 327, column: 13, scope: !2924)
!2933 = !DILocation(line: 329, column: 19, scope: !713)
!2934 = !DILocation(line: 329, column: 25, scope: !713)
!2935 = !DILocation(line: 329, column: 32, scope: !713)
!2936 = !DILocation(line: 329, column: 30, scope: !713)
!2937 = !DILocation(line: 329, column: 17, scope: !713)
!2938 = !DILocation(line: 330, column: 17, scope: !713)
!2939 = !DILocation(line: 330, column: 23, scope: !713)
!2940 = !DILocation(line: 330, column: 30, scope: !713)
!2941 = !DILocation(line: 330, column: 28, scope: !713)
!2942 = !DILocation(line: 330, column: 15, scope: !713)
!2943 = !DILocation(line: 332, column: 19, scope: !721)
!2944 = !DILocation(line: 332, column: 29, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !721, file: !4, discriminator: 1)
!2946 = !DILocation(line: 332, column: 37, scope: !721)
!2947 = !DILocation(line: 332, column: 35, scope: !721)
!2948 = !DILocation(line: 332, column: 43, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !721, file: !4, discriminator: 2)
!2950 = !DILocation(line: 332, column: 16, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2952, file: !4, discriminator: 4)
!2952 = !DILexicalBlockFile(scope: !721, file: !4, discriminator: 3)
!2953 = !DILocation(line: 332, column: 14, scope: !721)
!2954 = !DILocation(line: 333, column: 15, scope: !720)
!2955 = !DILocation(line: 333, column: 20, scope: !720)
!2956 = !DILocation(line: 333, column: 17, scope: !720)
!2957 = !DILocation(line: 333, column: 29, scope: !720)
!2958 = !DILocation(line: 333, column: 33, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !720, file: !4, discriminator: 1)
!2960 = !DILocation(line: 333, column: 37, scope: !720)
!2961 = !DILocation(line: 333, column: 35, scope: !720)
!2962 = !DILocation(line: 333, column: 44, scope: !720)
!2963 = !DILocation(line: 333, column: 41, scope: !720)
!2964 = !DILocation(line: 332, column: 9, scope: !721)
!2965 = !DILocation(line: 334, column: 13, scope: !719)
!2966 = !DILocation(line: 334, column: 24, scope: !719)
!2967 = !DILocation(line: 335, column: 20, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !719, file: !4, line: 335, column: 13)
!2969 = !DILocation(line: 335, column: 18, scope: !2968)
!2970 = !DILocation(line: 335, column: 25, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !4, discriminator: 6)
!2972 = !DILexicalBlockFile(scope: !2973, file: !4, discriminator: 1)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !4, line: 335, column: 13)
!2974 = !DILocation(line: 335, column: 29, scope: !2973)
!2975 = !DILocation(line: 335, column: 27, scope: !2973)
!2976 = !DILocation(line: 335, column: 33, scope: !2973)
!2977 = !DILocation(line: 335, column: 43, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2973, file: !4, discriminator: 2)
!2979 = !DILocation(line: 335, column: 36, scope: !2973)
!2980 = !DILocation(line: 335, column: 51, scope: !2973)
!2981 = !DILocation(line: 335, column: 49, scope: !2973)
!2982 = !DILocation(line: 335, column: 46, scope: !2973)
!2983 = !DILocation(line: 335, column: 13, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2968, file: !4, discriminator: 3)
!2985 = !DILocation(line: 335, column: 13, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2968, file: !4, discriminator: 4)
!2987 = !DILocation(line: 335, column: 55, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2973, file: !4, discriminator: 5)
!2989 = !DILocation(line: 335, column: 13, scope: !2973)
!2990 = !DILocation(line: 337, column: 17, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !719, file: !4, line: 337, column: 17)
!2992 = !DILocation(line: 337, column: 22, scope: !2991)
!2993 = !DILocation(line: 337, column: 19, scope: !2991)
!2994 = !DILocation(line: 337, column: 17, scope: !719)
!2995 = !DILocation(line: 338, column: 43, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2991, file: !4, line: 337, column: 27)
!2997 = !DILocation(line: 338, column: 47, scope: !2996)
!2998 = !DILocation(line: 338, column: 53, scope: !2996)
!2999 = !DILocation(line: 338, column: 45, scope: !2996)
!3000 = !DILocation(line: 338, column: 24, scope: !2996)
!3001 = !DILocation(line: 338, column: 17, scope: !2996)
!3002 = !DILocation(line: 340, column: 9, scope: !720)
!3003 = !DILocation(line: 340, column: 9, scope: !2959)
!3004 = !DILocation(line: 340, column: 9, scope: !719)
!3005 = !DILocation(line: 333, column: 57, scope: !720)
!3006 = !DILocation(line: 333, column: 54, scope: !720)
!3007 = !DILocation(line: 332, column: 9, scope: !720)
!3008 = !DILocation(line: 341, column: 16, scope: !713)
!3009 = !DILocation(line: 341, column: 9, scope: !713)
!3010 = !DILocation(line: 342, column: 5, scope: !714)
!3011 = !DILocation(line: 343, column: 1, scope: !701)
!3012 = !DILocation(line: 247, column: 32, scope: !746)
!3013 = !DILocation(line: 247, column: 43, scope: !746)
!3014 = !DILocation(line: 248, column: 5, scope: !746)
!3015 = !DILocation(line: 248, column: 16, scope: !746)
!3016 = !DILocation(line: 249, column: 9, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !746, file: !4, line: 249, column: 9)
!3018 = !DILocation(line: 249, column: 13, scope: !3017)
!3019 = !DILocation(line: 249, column: 9, scope: !746)
!3020 = !DILocation(line: 250, column: 15, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !4, line: 249, column: 35)
!3022 = !DILocation(line: 251, column: 5, scope: !3021)
!3023 = !DILocation(line: 252, column: 29, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !4, line: 252, column: 14)
!3025 = !DILocation(line: 252, column: 14, scope: !3024)
!3026 = !DILocation(line: 252, column: 14, scope: !3017)
!3027 = !DILocation(line: 253, column: 36, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !4, line: 252, column: 35)
!3029 = !DILocation(line: 253, column: 41, scope: !3028)
!3030 = !DILocation(line: 253, column: 17, scope: !3028)
!3031 = !DILocation(line: 253, column: 15, scope: !3028)
!3032 = !DILocation(line: 254, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3028, file: !4, line: 254, column: 13)
!3034 = !DILocation(line: 254, column: 19, scope: !3033)
!3035 = !DILocation(line: 254, column: 25, scope: !3033)
!3036 = !DILocation(line: 254, column: 28, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3033, file: !4, discriminator: 1)
!3038 = !DILocation(line: 254, column: 13, scope: !3028)
!3039 = !DILocation(line: 255, column: 13, scope: !3033)
!3040 = !DILocation(line: 256, column: 5, scope: !3028)
!3041 = !DILocation(line: 258, column: 22, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3024, file: !4, line: 257, column: 10)
!3043 = !DILocation(line: 260, column: 36, scope: !3042)
!3044 = !DILocation(line: 260, column: 43, scope: !3042)
!3045 = !DILocation(line: 260, column: 53, scope: !3042)
!3046 = !{!1100, !1006, i64 24}
!3047 = !DILocation(line: 258, column: 9, scope: !3042)
!3048 = !DILocation(line: 261, column: 9, scope: !3042)
!3049 = !DILocation(line: 263, column: 31, scope: !746)
!3050 = !DILocation(line: 263, column: 21, scope: !746)
!3051 = !DILocation(line: 263, column: 7, scope: !746)
!3052 = !DILocation(line: 263, column: 29, scope: !746)
!3053 = !DILocation(line: 264, column: 5, scope: !746)
!3054 = !DILocation(line: 265, column: 1, scope: !746)
!3055 = !DILocation(line: 369, column: 28, scope: !774)
!3056 = !DILocation(line: 371, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !774, file: !4, line: 371, column: 9)
!3058 = !DILocation(line: 371, column: 15, scope: !3057)
!3059 = !DILocation(line: 371, column: 23, scope: !3057)
!3060 = !DILocation(line: 371, column: 9, scope: !774)
!3061 = !DILocation(line: 372, column: 25, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !4, line: 371, column: 28)
!3063 = !DILocation(line: 372, column: 9, scope: !3062)
!3064 = !DILocation(line: 374, column: 9, scope: !3062)
!3065 = !DILocation(line: 376, column: 10, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !774, file: !4, line: 376, column: 9)
!3067 = !DILocation(line: 376, column: 16, scope: !3066)
!3068 = !DILocation(line: 376, column: 23, scope: !3066)
!3069 = !DILocation(line: 376, column: 40, scope: !3066)
!3070 = !DILocation(line: 376, column: 44, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3066, file: !4, discriminator: 1)
!3072 = !DILocation(line: 376, column: 50, scope: !3066)
!3073 = !DILocation(line: 376, column: 57, scope: !3066)
!3074 = !DILocation(line: 376, column: 9, scope: !774)
!3075 = !DILocation(line: 377, column: 9, scope: !3066)
!3076 = !DILocation(line: 378, column: 18, scope: !774)
!3077 = !DILocation(line: 378, column: 5, scope: !774)
!3078 = !DILocation(line: 380, column: 5, scope: !774)
!3079 = !DILocation(line: 381, column: 1, scope: !774)
!3080 = !DILocation(line: 517, column: 45, scope: !828)
!3081 = !DILocation(line: 517, column: 66, scope: !828)
!3082 = !DILocation(line: 519, column: 25, scope: !828)
!3083 = !DILocation(line: 519, column: 31, scope: !828)
!3084 = !DILocation(line: 519, column: 10, scope: !828)
!3085 = !DILocation(line: 519, column: 3, scope: !828)
!3086 = !DILocation(line: 686, column: 30, scope: !878)
!3087 = !DILocation(line: 691, column: 28, scope: !878)
!3088 = !DILocation(line: 691, column: 34, scope: !878)
!3089 = !DILocation(line: 691, column: 39, scope: !878)
!3090 = !DILocation(line: 691, column: 12, scope: !878)
!3091 = !DILocation(line: 691, column: 5, scope: !878)
!3092 = !DILocation(line: 1062, column: 23, scope: !912)
!3093 = !DILocation(line: 1062, column: 38, scope: !912)
!3094 = !DILocation(line: 1064, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !912, file: !4, line: 1064, column: 9)
!3096 = !DILocation(line: 1064, column: 11, scope: !3095)
!3097 = !DILocation(line: 1064, column: 9, scope: !912)
!3098 = !DILocation(line: 1065, column: 9, scope: !3095)
!3099 = !DILocation(line: 1066, column: 11, scope: !920)
!3100 = !DILocation(line: 1066, column: 15, scope: !920)
!3101 = !DILocation(line: 1066, column: 24, scope: !920)
!3102 = !DILocation(line: 1066, column: 37, scope: !920)
!3103 = !DILocation(line: 1066, column: 51, scope: !920)
!3104 = !DILocation(line: 1066, column: 55, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !920, file: !4, discriminator: 1)
!3106 = !DILocation(line: 1066, column: 59, scope: !920)
!3107 = !DILocation(line: 1066, column: 68, scope: !920)
!3108 = !DILocation(line: 1066, column: 82, scope: !920)
!3109 = !DILocation(line: 1066, column: 91, scope: !920)
!3110 = !DILocation(line: 1066, column: 9, scope: !912)
!3111 = !DILocation(line: 1067, column: 9, scope: !919)
!3112 = !DILocation(line: 1067, column: 20, scope: !919)
!3113 = !DILocation(line: 1067, column: 43, scope: !919)
!3114 = !DILocation(line: 1067, column: 46, scope: !919)
!3115 = !DILocation(line: 1067, column: 24, scope: !919)
!3116 = !DILocation(line: 1068, column: 13, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !919, file: !4, line: 1068, column: 13)
!3118 = !DILocation(line: 1068, column: 14, scope: !3117)
!3119 = !DILocation(line: 1068, column: 19, scope: !3117)
!3120 = !DILocation(line: 1068, column: 22, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3117, file: !4, discriminator: 1)
!3122 = !DILocation(line: 1068, column: 13, scope: !919)
!3123 = !DILocation(line: 1069, column: 13, scope: !3117)
!3124 = !DILocation(line: 1070, column: 13, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !919, file: !4, line: 1070, column: 13)
!3126 = !DILocation(line: 1070, column: 15, scope: !3125)
!3127 = !DILocation(line: 1070, column: 13, scope: !919)
!3128 = !DILocation(line: 1071, column: 26, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !4, line: 1070, column: 20)
!3130 = !DILocation(line: 1073, column: 29, scope: !3129)
!3131 = !DILocation(line: 1071, column: 13, scope: !3129)
!3132 = !DILocation(line: 1074, column: 13, scope: !3129)
!3133 = !DILocation(line: 1076, column: 16, scope: !919)
!3134 = !DILocation(line: 1076, column: 9, scope: !919)
!3135 = !DILocation(line: 1077, column: 5, scope: !920)
!3136 = !DILocation(line: 1079, column: 21, scope: !912)
!3137 = !DILocation(line: 1079, column: 5, scope: !912)
!3138 = !DILocation(line: 1080, column: 5, scope: !912)
!3139 = !DILocation(line: 1081, column: 1, scope: !912)
