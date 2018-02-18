; ModuleID = './util.bc'
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
%struct.sqlite3_stmt = type opaque
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@pysqlite_InternalError = external global %struct._object*, align 8
@pysqlite_OperationalError = external global %struct._object*, align 8
@pysqlite_DatabaseError = external global %struct._object*, align 8
@pysqlite_DataError = external global %struct._object*, align 8
@pysqlite_IntegrityError = external global %struct._object*, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [50 x i8] c"Python int too large to convert to SQLite INTEGER\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_step(%struct.sqlite3_stmt* %statement, %struct.pysqlite_Connection* %connection) #0 {
entry:
  %statement.addr = alloca %struct.sqlite3_stmt*, align 8
  %connection.addr = alloca %struct.pysqlite_Connection*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.sqlite3_stmt* %statement, %struct.sqlite3_stmt** %statement.addr, align 8
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8
  %0 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement.addr, align 8
  %cmp = icmp eq %struct.sqlite3_stmt* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement.addr, align 8
  %call1 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %1)
  store i32 %call1, i32* %rc, align 4
  %2 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %rc, align 4
  ret i32 %3
}

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @sqlite3_step(%struct.sqlite3_stmt*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define i32 @_pysqlite_seterror(%struct.sqlite3* %db, %struct.sqlite3_stmt* %st) #0 {
entry:
  %db.addr = alloca %struct.sqlite3*, align 8
  %st.addr = alloca %struct.sqlite3_stmt*, align 8
  %errorcode = alloca i32, align 4
  store %struct.sqlite3* %db, %struct.sqlite3** %db.addr, align 8
  store %struct.sqlite3_stmt* %st, %struct.sqlite3_stmt** %st.addr, align 8
  %0 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st.addr, align 8
  %cmp = icmp ne %struct.sqlite3_stmt* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st.addr, align 8
  %call = call i32 @sqlite3_reset(%struct.sqlite3_stmt* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call1 = call i32 @sqlite3_errcode(%struct.sqlite3* %2)
  store i32 %call1, i32* %errorcode, align 4
  %3 = load i32, i32* %errorcode, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.2
    i32 12, label %sw.bb.2
    i32 7, label %sw.bb.4
    i32 1, label %sw.bb.6
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.6
    i32 8, label %sw.bb.6
    i32 9, label %sw.bb.6
    i32 10, label %sw.bb.6
    i32 13, label %sw.bb.6
    i32 14, label %sw.bb.6
    i32 15, label %sw.bb.6
    i32 16, label %sw.bb.6
    i32 17, label %sw.bb.6
    i32 11, label %sw.bb.8
    i32 18, label %sw.bb.10
    i32 19, label %sw.bb.12
    i32 20, label %sw.bb.12
    i32 21, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  call void @PyErr_Clear()
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end
  %4 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call3 = call i8* @sqlite3_errmsg(%struct.sqlite3* %5)
  call void @PyErr_SetString(%struct._object* %4, i8* %call3)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NoMemory()
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %6 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  %7 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call7 = call i8* @sqlite3_errmsg(%struct.sqlite3* %7)
  call void @PyErr_SetString(%struct._object* %6, i8* %call7)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %9 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call9 = call i8* @sqlite3_errmsg(%struct.sqlite3* %9)
  call void @PyErr_SetString(%struct._object* %8, i8* %call9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8
  %11 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call11 = call i8* @sqlite3_errmsg(%struct.sqlite3* %11)
  call void @PyErr_SetString(%struct._object* %10, i8* %call11)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end, %if.end
  %12 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8
  %13 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call13 = call i8* @sqlite3_errmsg(%struct.sqlite3* %13)
  call void @PyErr_SetString(%struct._object* %12, i8* %call13)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %15 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call15 = call i8* @sqlite3_errmsg(%struct.sqlite3* %15)
  call void @PyErr_SetString(%struct._object* %14, i8* %call15)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %16 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %17 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %call16 = call i8* @sqlite3_errmsg(%struct.sqlite3* %17)
  call void @PyErr_SetString(%struct._object* %16, i8* %call16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %18 = load i32, i32* %errorcode, align 4
  ret i32 %18
}

declare i32 @sqlite3_reset(%struct.sqlite3_stmt*) #1

declare i32 @sqlite3_errcode(%struct.sqlite3*) #1

declare void @PyErr_Clear() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @sqlite3_errmsg(%struct.sqlite3*) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_long_from_int64(i64 %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %0)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define i64 @_pysqlite_long_as_int64(%struct._object* %py_val) #0 {
entry:
  %retval = alloca i64, align 8
  %py_val.addr = alloca %struct._object*, align 8
  %overflow = alloca i32, align 4
  %value = alloca i64, align 8
  store %struct._object* %py_val, %struct._object** %py_val.addr, align 8
  %0 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %call = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %0, i32* %overflow)
  store i64 %call, i64* %value, align 8
  %1 = load i64, i64* %value, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %overflow, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load i64, i64* %value, align 8
  store i64 %3, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare i64 @PyLong_AsLongLongAndOverflow(%struct._object*, i32*) #1

declare %struct._object* @PyErr_Occurred() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
