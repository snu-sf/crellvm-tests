; ModuleID = './row.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Row = type { %struct._object, %struct._object*, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@pysqlite_CursorType = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"instance of cursor required for first argument\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"tuple required for second argument\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"No item with that key\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"slices not implemented, yet\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Index must be int or string\00", align 1
@pysqlite_row_as_mapping = global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._Row*, %struct._object*)* @pysqlite_row_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"sqlite3.Row\00", align 1
@pysqlite_row_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_keys to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@pysqlite_RowType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct._Row*)* @pysqlite_row_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* bitcast (i32 (%struct._Row*, %struct._IO_FILE*, i32)* @pysqlite_row_print to i32 (%struct._object*, %struct._IO_FILE*, i32)*), %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct._Row*)* @pysqlite_row_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct._Row*, %struct._object*, i32)* @pysqlite_row_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._Row*)* @pysqlite_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @pysqlite_row_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Returns the keys of the row.\00", align 1

; Function Attrs: nounwind uwtable
define void @pysqlite_row_dealloc(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
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
  %10 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %description, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp7, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp11, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %15, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %18(%struct._object* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %20 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %21 = bitcast %struct._Row* %20 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 38
  %23 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %24 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %25 = bitcast %struct._Row* %24 to %struct._object*
  %26 = bitcast %struct._object* %25 to i8*
  call void %23(i8* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_row_init(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %cursor = alloca %struct.pysqlite_Cursor*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data1 = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1
  store %struct._object* null, %struct._object** %data1, align 8
  %1 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %1, i32 0, i32 2
  store %struct._object* null, %struct._object** %description, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.pysqlite_Cursor** %cursor, %struct._object** %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8
  %4 = bitcast %struct.pysqlite_Cursor* %3 to %struct._object*
  %call2 = call i32 @PyObject_IsInstance(%struct._object* %4, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %data, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %data, align 8
  %13 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data8 = getelementptr inbounds %struct._Row, %struct._Row* %13, i32 0, i32 1
  store %struct._object* %12, %struct._object** %data8, align 8
  %14 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8
  %description9 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %description9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %16, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %17 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8
  %description12 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %description12, align 8
  %19 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description13 = getelementptr inbounds %struct._Row, %struct._Row* %19, i32 0, i32 2
  store %struct._object* %18, %struct._object** %description13, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.4, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_row_subscript(%struct._Row* %self, %struct._object* %idx) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %idx.addr = alloca %struct._object*, align 8
  %_idx = alloca i64, align 8
  %key = alloca i8*, align 8
  %nitems = alloca i64, align 8
  %i = alloca i64, align 8
  %compare_key = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._object* %idx, %struct._object** %idx.addr, align 8
  %0 = load %struct._object*, %struct._object** %idx.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %idx.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  store i64 %call, i64* %_idx, align 8
  %4 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %data, align 8
  %6 = load i64, i64* %_idx, align 8
  %call1 = call %struct._object* @PyTuple_GetItem(%struct._object* %5, i64 %6)
  store %struct._object* %call1, %struct._object** %item, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %7, %struct._object** %_py_xincref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct._object*, %struct._object** %idx.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags5, align 8
  %and6 = and i64 %14, 268435456
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.49

if.then.8:                                        ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %idx.addr, align 8
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %15)
  store i8* %call9, i8** %key, align 8
  %16 = load i8*, i8** %key, align 8
  %cmp10 = icmp eq i8* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  %17 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %description, align 8
  %call13 = call i64 @PyTuple_Size(%struct._object* %18)
  store i64 %call13, i64* %nitems, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %nitems, align 8
  %cmp14 = icmp slt i64 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %i, align 8
  %22 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description15 = getelementptr inbounds %struct._Row, %struct._Row* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %description15, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %21
  %25 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %25, %struct._object** %obj, align 8
  %26 = load %struct._object*, %struct._object** %obj, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 0
  %28 = load %struct._object*, %struct._object** %arrayidx17, align 8
  store %struct._object* %28, %struct._object** %obj, align 8
  %29 = load %struct._object*, %struct._object** %obj, align 8
  %call18 = call i8* @PyUnicode_AsUTF8(%struct._object* %29)
  store i8* %call18, i8** %compare_key, align 8
  %30 = load i8*, i8** %compare_key, align 8
  %tobool = icmp ne i8* %30, null
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %for.body
  %31 = load i8*, i8** %key, align 8
  store i8* %31, i8** %p1, align 8
  %32 = load i8*, i8** %compare_key, align 8
  store i8* %32, i8** %p2, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.20, %if.end.34
  %33 = load i8*, i8** %p1, align 8
  %34 = load i8, i8* %33, align 1
  %conv = sext i8 %34 to i32
  %cmp21 = icmp eq i32 %conv, 0
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %35 = load i8*, i8** %p2, align 8
  %36 = load i8, i8* %35, align 1
  %conv23 = sext i8 %36 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.27:                                        ; preds = %lor.lhs.false
  %37 = load i8*, i8** %p1, align 8
  %38 = load i8, i8* %37, align 1
  %conv28 = sext i8 %38 to i32
  %or = or i32 %conv28, 32
  %39 = load i8*, i8** %p2, align 8
  %40 = load i8, i8* %39, align 1
  %conv29 = sext i8 %40 to i32
  %or30 = or i32 %conv29, 32
  %cmp31 = icmp ne i32 %or, %or30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  br label %while.end

if.end.34:                                        ; preds = %if.end.27
  %41 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %42 = load i8*, i8** %p2, align 8
  %incdec.ptr35 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr35, i8** %p2, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.33, %if.then.26
  %43 = load i8*, i8** %p1, align 8
  %44 = load i8, i8* %43, align 1
  %conv36 = sext i8 %44 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %while.end
  %45 = load i8*, i8** %p2, align 8
  %46 = load i8, i8* %45, align 1
  %conv39 = sext i8 %46 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true
  %47 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data43 = getelementptr inbounds %struct._Row, %struct._Row* %47, i32 0, i32 1
  %48 = load %struct._object*, %struct._object** %data43, align 8
  %49 = load i64, i64* %i, align 8
  %call44 = call %struct._object* @PyTuple_GetItem(%struct._object* %48, i64 %49)
  store %struct._object* %call44, %struct._object** %item, align 8
  %50 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt45, align 8
  %inc46 = add i64 %51, 1
  store i64 %inc46, i64* %ob_refcnt45, align 8
  %52 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %52, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %53 = load i64, i64* %i, align 8
  %inc48 = add i64 %53, 1
  store i64 %inc48, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.49:                                       ; preds = %if.else
  %55 = load %struct._object*, %struct._object** %idx.addr, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %cmp51 = icmp eq %struct._typeobject* %56, @PySlice_Type
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.49
  %57 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.54:                                       ; preds = %if.else.49
  %58 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.54, %if.then.53, %for.end, %if.then.42, %if.then.19, %if.then.11, %do.end
  %59 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %59
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i64 @pysqlite_row_length(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %data, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_row_keys(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %nitems = alloca i32, align 4
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %description, align 8
  %call1 = call i64 @PyTuple_Size(%struct._object* %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %nitems, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nitems, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._object*, %struct._object** %list, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description3 = getelementptr inbounds %struct._Row, %struct._Row* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %description3, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item4, i32 0, i64 0
  %12 = load %struct._object*, %struct._object** %arrayidx5, align 8
  %call6 = call i32 @PyList_Append(%struct._object* %5, %struct._object* %12)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_row_print(%struct._Row* %self, %struct._IO_FILE* %fp, i32 %flags) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32 (%struct._object*, %struct._IO_FILE*, i32)*, i32 (%struct._object*, %struct._IO_FILE*, i32)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 5), align 8
  %1 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %data, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call = call i32 %0(%struct._object* %2, %struct._IO_FILE* %3, i32 %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @pysqlite_row_hash(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %description, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %1)
  %2 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %data, align 8
  %call1 = call i64 @PyObject_Hash(%struct._object* %3)
  %xor = xor i64 %call, %call1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_row_richcompare(%struct._Row* %self, %struct._object* %_other, i32 %opid) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %_other.addr = alloca %struct._object*, align 8
  %opid.addr = alloca i32, align 4
  %other = alloca %struct._Row*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  store %struct._object* %_other, %struct._object** %_other.addr, align 8
  store i32 %opid, i32* %opid.addr, align 4
  %0 = load i32, i32* %opid.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %opid.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._object*, %struct._object** %_other.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @pysqlite_RowType)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %_other.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct._Row*
  store %struct._Row* %6, %struct._Row** %other, align 8
  %7 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %description = getelementptr inbounds %struct._Row, %struct._Row* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %description, align 8
  %9 = load %struct._Row*, %struct._Row** %other, align 8
  %description3 = getelementptr inbounds %struct._Row, %struct._Row* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %description3, align 8
  %11 = load i32, i32* %opid.addr, align 4
  %call4 = call %struct._object* @PyObject_RichCompare(%struct._object* %8, %struct._object* %10, i32 %11)
  store %struct._object* %call4, %struct._object** %res, align 8
  %12 = load i32, i32* %opid.addr, align 4
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false

land.lhs.true.6:                                  ; preds = %if.then.2
  %13 = load %struct._object*, %struct._object** %res, align 8
  %cmp7 = icmp eq %struct._object* %13, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6, %if.then.2
  %14 = load i32, i32* %opid.addr, align 4
  %cmp8 = icmp eq i32 %14, 3
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.18

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %res, align 8
  %cmp10 = icmp eq %struct._object* %15, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true.9, %land.lhs.true.6
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %16 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %23 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %23, i32 0, i32 1
  %24 = load %struct._object*, %struct._object** %data, align 8
  %25 = load %struct._Row*, %struct._Row** %other, align 8
  %data16 = getelementptr inbounds %struct._Row, %struct._Row* %25, i32 0, i32 1
  %26 = load %struct._object*, %struct._object** %data16, align 8
  %27 = load i32, i32* %opid.addr, align 4
  %call17 = call %struct._object* @PyObject_RichCompare(%struct._object* %24, %struct._object* %26, i32 %27)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.9, %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc20 = add i64 %28, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_iter(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8
  %data = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %data, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_row_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 37), align 8
  store %struct.PyMappingMethods* @pysqlite_row_as_mapping, %struct.PyMappingMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 12), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_RowType)
  ret i32 %call
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
