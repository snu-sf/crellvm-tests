; ModuleID = 'irs-onlybc/util.bc'
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
  store %struct.sqlite3_stmt* %statement, %struct.sqlite3_stmt** %statement.addr, align 8, !tbaa !512
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %statement.addr, metadata !422, metadata !516), !dbg !517
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8, !tbaa !512
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %connection.addr, metadata !423, metadata !516), !dbg !518
  %0 = bitcast i32* %rc to i8*, !dbg !519
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !519
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !424, metadata !516), !dbg !520
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement.addr, align 8, !dbg !521, !tbaa !512
  %cmp = icmp eq %struct.sqlite3_stmt* %1, null, !dbg !522
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  store i32 0, i32* %rc, align 4, !dbg !524, !tbaa !526
  br label %if.end, !dbg !528

if.else:                                          ; preds = %entry
  %2 = bitcast %struct._ts** %_save to i8*, !dbg !529
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !529
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !425, metadata !516), !dbg !530
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !531
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !532, !tbaa !512
  %3 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement.addr, align 8, !dbg !533, !tbaa !512
  %call1 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %3), !dbg !534
  store i32 %call1, i32* %rc, align 4, !dbg !535, !tbaa !526
  %4 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !536, !tbaa !512
  call void @PyEval_RestoreThread(%struct._ts* %4), !dbg !537
  %5 = bitcast %struct._ts** %_save to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !538
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %rc, align 4, !dbg !539, !tbaa !526
  %7 = bitcast i32* %rc to i8*, !dbg !540
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !540
  ret i32 %6, !dbg !541
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @sqlite3_step(%struct.sqlite3_stmt*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @_pysqlite_seterror(%struct.sqlite3* %db, %struct.sqlite3_stmt* %st) #0 {
entry:
  %db.addr = alloca %struct.sqlite3*, align 8
  %st.addr = alloca %struct.sqlite3_stmt*, align 8
  %errorcode = alloca i32, align 4
  store %struct.sqlite3* %db, %struct.sqlite3** %db.addr, align 8, !tbaa !512
  call void @llvm.dbg.declare(metadata %struct.sqlite3** %db.addr, metadata !491, metadata !516), !dbg !542
  store %struct.sqlite3_stmt* %st, %struct.sqlite3_stmt** %st.addr, align 8, !tbaa !512
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %st.addr, metadata !492, metadata !516), !dbg !543
  %0 = bitcast i32* %errorcode to i8*, !dbg !544
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !544
  call void @llvm.dbg.declare(metadata i32* %errorcode, metadata !493, metadata !516), !dbg !545
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st.addr, align 8, !dbg !546, !tbaa !512
  %cmp = icmp ne %struct.sqlite3_stmt* %1, null, !dbg !548
  br i1 %cmp, label %if.then, label %if.end, !dbg !549

if.then:                                          ; preds = %entry
  %2 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st.addr, align 8, !dbg !550, !tbaa !512
  %call = call i32 @sqlite3_reset(%struct.sqlite3_stmt* %2), !dbg !552
  br label %if.end, !dbg !553

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !554, !tbaa !512
  %call1 = call i32 @sqlite3_errcode(%struct.sqlite3* %3), !dbg !555
  store i32 %call1, i32* %errorcode, align 4, !dbg !556, !tbaa !526
  %4 = load i32, i32* %errorcode, align 4, !dbg !557, !tbaa !526
  switch i32 %4, label %sw.default [
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
  ], !dbg !558

sw.bb:                                            ; preds = %if.end
  call void @PyErr_Clear(), !dbg !559
  br label %sw.epilog, !dbg !561

sw.bb.2:                                          ; preds = %if.end, %if.end
  %5 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8, !dbg !562, !tbaa !512
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !563, !tbaa !512
  %call3 = call i8* @sqlite3_errmsg(%struct.sqlite3* %6), !dbg !564
  call void @PyErr_SetString(%struct._object* %5, i8* %call3), !dbg !565
  br label %sw.epilog, !dbg !566

sw.bb.4:                                          ; preds = %if.end
  %call5 = call %struct._object* @PyErr_NoMemory(), !dbg !567
  br label %sw.epilog, !dbg !568

sw.bb.6:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %7 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !569, !tbaa !512
  %8 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !570, !tbaa !512
  %call7 = call i8* @sqlite3_errmsg(%struct.sqlite3* %8), !dbg !571
  call void @PyErr_SetString(%struct._object* %7, i8* %call7), !dbg !572
  br label %sw.epilog, !dbg !573

sw.bb.8:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !574, !tbaa !512
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !575, !tbaa !512
  %call9 = call i8* @sqlite3_errmsg(%struct.sqlite3* %10), !dbg !576
  call void @PyErr_SetString(%struct._object* %9, i8* %call9), !dbg !577
  br label %sw.epilog, !dbg !578

sw.bb.10:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8, !dbg !579, !tbaa !512
  %12 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !580, !tbaa !512
  %call11 = call i8* @sqlite3_errmsg(%struct.sqlite3* %12), !dbg !581
  call void @PyErr_SetString(%struct._object* %11, i8* %call11), !dbg !582
  br label %sw.epilog, !dbg !583

sw.bb.12:                                         ; preds = %if.end, %if.end
  %13 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8, !dbg !584, !tbaa !512
  %14 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !585, !tbaa !512
  %call13 = call i8* @sqlite3_errmsg(%struct.sqlite3* %14), !dbg !586
  call void @PyErr_SetString(%struct._object* %13, i8* %call13), !dbg !587
  br label %sw.epilog, !dbg !588

sw.bb.14:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !589, !tbaa !512
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !590, !tbaa !512
  %call15 = call i8* @sqlite3_errmsg(%struct.sqlite3* %16), !dbg !591
  call void @PyErr_SetString(%struct._object* %15, i8* %call15), !dbg !592
  br label %sw.epilog, !dbg !593

sw.default:                                       ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !594, !tbaa !512
  %18 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8, !dbg !595, !tbaa !512
  %call16 = call i8* @sqlite3_errmsg(%struct.sqlite3* %18), !dbg !596
  call void @PyErr_SetString(%struct._object* %17, i8* %call16), !dbg !597
  br label %sw.epilog, !dbg !598

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %19 = load i32, i32* %errorcode, align 4, !dbg !599, !tbaa !526
  %20 = bitcast i32* %errorcode to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !600
  ret i32 %19, !dbg !601
}

declare i32 @sqlite3_reset(%struct.sqlite3_stmt*) #3

declare i32 @sqlite3_errcode(%struct.sqlite3*) #3

declare void @PyErr_Clear() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i8* @sqlite3_errmsg(%struct.sqlite3*) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_long_from_int64(i64 %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8, !tbaa !602
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !500, metadata !516), !dbg !604
  %0 = load i64, i64* %value.addr, align 8, !dbg !605, !tbaa !602
  %call = call %struct._object* @PyLong_FromLong(i64 %0), !dbg !606
  ret %struct._object* %call, !dbg !607
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define i64 @_pysqlite_long_as_int64(%struct._object* %py_val) #0 {
entry:
  %retval = alloca i64, align 8
  %py_val.addr = alloca %struct._object*, align 8
  %overflow = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %py_val, %struct._object** %py_val.addr, align 8, !tbaa !512
  call void @llvm.dbg.declare(metadata %struct._object** %py_val.addr, metadata !505, metadata !516), !dbg !608
  %0 = bitcast i32* %overflow to i8*, !dbg !609
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !609
  call void @llvm.dbg.declare(metadata i32* %overflow, metadata !506, metadata !516), !dbg !610
  %1 = bitcast i64* %value to i8*, !dbg !611
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !611
  call void @llvm.dbg.declare(metadata i64* %value, metadata !507, metadata !516), !dbg !612
  %2 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !613, !tbaa !512
  %call = call i64 @PyLong_AsLongLongAndOverflow(%struct._object* %2, i32* %overflow), !dbg !614
  store i64 %call, i64* %value, align 8, !dbg !612, !tbaa !602
  %3 = load i64, i64* %value, align 8, !dbg !615, !tbaa !602
  %cmp = icmp eq i64 %3, -1, !dbg !617
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !618

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !619
  %tobool = icmp ne %struct._object* %call1, null, !dbg !619
  br i1 %tobool, label %if.then, label %if.end, !dbg !621

if.then:                                          ; preds = %land.lhs.true
  store i64 -1, i64* %retval, !dbg !622
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !622

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %overflow, align 4, !dbg !623, !tbaa !526
  %tobool2 = icmp ne i32 %4, 0, !dbg !623
  br i1 %tobool2, label %if.else, label %if.then.3, !dbg !625

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %value, align 8, !dbg !626, !tbaa !602
  store i64 %5, i64* %retval, !dbg !628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !628

if.else:                                          ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !629, !tbaa !512
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0)), !dbg !630
  store i64 -1, i64* %retval, !dbg !631
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %7 = bitcast i64* %value to i8*, !dbg !632
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !632
  %8 = bitcast i32* %overflow to i8*, !dbg !632
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !632
  %9 = load i64, i64* %retval, !dbg !632
  ret i64 %9, !dbg !632
}

declare i64 @PyLong_AsLongLongAndOverflow(%struct._object*, i32*) #3

declare %struct._object* @PyErr_Occurred() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!508, !509, !510}
!llvm.ident = !{!511}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6)
!1 = !DIFile(filename: "util.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !{!7, !487, !494, !501}
!7 = !DISubprogram(name: "pysqlite_step", scope: !8, file: !8, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.sqlite3_stmt*, %struct.pysqlite_Connection*)* @pysqlite_step, variables: !421)
!8 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/util.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !16}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !14, line: 2911, baseType: !15)
!14 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !14, line: 2911, flags: DIFlagFwdDecl)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !18, line: 112, baseType: !19)
!18 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 35, size: 1792, align: 64, elements: !20)
!20 = !{!21, !365, !369, !370, !371, !373, !374, !375, !376, !377, !378, !379, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !18, line: 37, baseType: !22, size: 128, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !23, line: 109, baseType: !24)
!23 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !23, line: 105, size: 128, align: 64, elements: !25)
!25 = !{!26, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !24, file: !23, line: 107, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !28, line: 177, baseType: !29)
!28 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 102, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 181, baseType: !5)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !24, file: !23, line: 108, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !23, line: 334, size: 3200, align: 64, elements: !36)
!36 = !{!37, !43, !47, !48, !49, !55, !117, !122, !127, !128, !133, !185, !216, !228, !234, !235, !236, !238, !240, !271, !272, !273, !282, !283, !288, !289, !291, !293, !303, !313, !331, !332, !333, !335, !337, !338, !340, !345, !350, !355, !356, !357, !358, !359, !360, !361, !362, !364}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !23, line: 335, baseType: !38, size: 192, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !23, line: 114, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 111, size: 192, align: 64, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !39, file: !23, line: 112, baseType: !22, size: 128, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !39, file: !23, line: 113, baseType: !27, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !35, file: !23, line: 336, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !35, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !35, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !35, file: !23, line: 341, baseType: !50, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !23, line: 308, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !35, file: !23, line: 342, baseType: !56, size: 64, align: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !23, line: 314, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!11, !54, !60, !11}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 48, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 246, size: 1728, align: 64, elements: !64)
!63 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!64 = !{!65, !66, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !86, !87, !88, !89, !91, !93, !95, !99, !102, !104, !105, !106, !107, !108, !112, !113}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !62, file: !63, line: 247, baseType: !11, size: 32, align: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !62, file: !63, line: 252, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !62, file: !63, line: 253, baseType: !67, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !62, file: !63, line: 254, baseType: !67, size: 64, align: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !62, file: !63, line: 255, baseType: !67, size: 64, align: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !62, file: !63, line: 256, baseType: !67, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !62, file: !63, line: 257, baseType: !67, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !62, file: !63, line: 258, baseType: !67, size: 64, align: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !62, file: !63, line: 259, baseType: !67, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !62, file: !63, line: 261, baseType: !67, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !62, file: !63, line: 262, baseType: !67, size: 64, align: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !62, file: !63, line: 263, baseType: !67, size: 64, align: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !62, file: !63, line: 265, baseType: !79, size: 64, align: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !63, line: 161, size: 192, align: 64, elements: !81)
!81 = !{!82, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !80, file: !63, line: 162, baseType: !79, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !80, file: !63, line: 163, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !80, file: !63, line: 167, baseType: !11, size: 32, align: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !62, file: !63, line: 267, baseType: !84, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !62, file: !63, line: 269, baseType: !11, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !62, file: !63, line: 273, baseType: !11, size: 32, align: 32, offset: 928)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !62, file: !63, line: 275, baseType: !90, size: 64, align: 64, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 140, baseType: !5)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !62, file: !63, line: 279, baseType: !92, size: 16, align: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !62, file: !63, line: 280, baseType: !94, size: 8, align: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !62, file: !63, line: 281, baseType: !96, size: 8, align: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !62, file: !63, line: 285, baseType: !100, size: 64, align: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !63, line: 155, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !62, file: !63, line: 294, baseType: !103, size: 64, align: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 141, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !62, file: !63, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !62, file: !63, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !62, file: !63, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !62, file: !63, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !62, file: !63, line: 307, baseType: !109, size: 64, align: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 62, baseType: !111)
!110 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!111 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !62, file: !63, line: 309, baseType: !11, size: 32, align: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !62, file: !63, line: 311, baseType: !114, size: 160, align: 8, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !35, file: !23, line: 343, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !23, line: 316, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!54, !54, !67}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !35, file: !23, line: 344, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !23, line: 318, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!11, !54, !67, !54}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !35, file: !23, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !35, file: !23, line: 346, baseType: !129, size: 64, align: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !23, line: 320, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!54, !54}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !35, file: !23, line: 350, baseType: !134, size: 64, align: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !23, line: 278, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 236, size: 2176, align: 64, elements: !137)
!137 = !{!138, !143, !144, !145, !146, !147, !152, !154, !155, !156, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !136, file: !23, line: 241, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !23, line: 166, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!54, !54, !54}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !136, file: !23, line: 242, baseType: !139, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !136, file: !23, line: 243, baseType: !139, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !136, file: !23, line: 244, baseType: !139, size: 64, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !136, file: !23, line: 245, baseType: !139, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !136, file: !23, line: 246, baseType: !148, size: 64, align: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !23, line: 167, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!54, !54, !54, !54}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !136, file: !23, line: 247, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !23, line: 165, baseType: !130)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !136, file: !23, line: 248, baseType: !153, size: 64, align: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !136, file: !23, line: 249, baseType: !153, size: 64, align: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !136, file: !23, line: 250, baseType: !157, size: 64, align: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !23, line: 168, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!11, !54}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !136, file: !23, line: 251, baseType: !153, size: 64, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !136, file: !23, line: 252, baseType: !139, size: 64, align: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !136, file: !23, line: 253, baseType: !139, size: 64, align: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !136, file: !23, line: 254, baseType: !139, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !136, file: !23, line: 255, baseType: !139, size: 64, align: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !136, file: !23, line: 256, baseType: !139, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !136, file: !23, line: 257, baseType: !153, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !136, file: !23, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !136, file: !23, line: 259, baseType: !153, size: 64, align: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !136, file: !23, line: 261, baseType: !139, size: 64, align: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !136, file: !23, line: 262, baseType: !139, size: 64, align: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !136, file: !23, line: 263, baseType: !139, size: 64, align: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !136, file: !23, line: 264, baseType: !139, size: 64, align: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !136, file: !23, line: 265, baseType: !148, size: 64, align: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !136, file: !23, line: 266, baseType: !139, size: 64, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !136, file: !23, line: 267, baseType: !139, size: 64, align: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !136, file: !23, line: 268, baseType: !139, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !136, file: !23, line: 269, baseType: !139, size: 64, align: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !136, file: !23, line: 270, baseType: !139, size: 64, align: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !136, file: !23, line: 272, baseType: !139, size: 64, align: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !136, file: !23, line: 273, baseType: !139, size: 64, align: 64, offset: 1920)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !136, file: !23, line: 274, baseType: !139, size: 64, align: 64, offset: 1984)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !136, file: !23, line: 275, baseType: !139, size: 64, align: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !136, file: !23, line: 277, baseType: !153, size: 64, align: 64, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !35, file: !23, line: 351, baseType: !186, size: 64, align: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !23, line: 292, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 280, size: 640, align: 64, elements: !189)
!189 = !{!190, !195, !196, !201, !202, !203, !208, !209, !214, !215}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !188, file: !23, line: 281, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !23, line: 169, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!27, !54}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !188, file: !23, line: 282, baseType: !139, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !188, file: !23, line: 283, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !23, line: 170, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!54, !54, !27}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !188, file: !23, line: 284, baseType: !197, size: 64, align: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !188, file: !23, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !188, file: !23, line: 286, baseType: !204, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !23, line: 172, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!11, !54, !27, !54}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !188, file: !23, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !188, file: !23, line: 288, baseType: !210, size: 64, align: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !23, line: 231, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!11, !54, !54}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !188, file: !23, line: 290, baseType: !139, size: 64, align: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !188, file: !23, line: 291, baseType: !197, size: 64, align: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !35, file: !23, line: 352, baseType: !217, size: 64, align: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !23, line: 298, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 294, size: 192, align: 64, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !219, file: !23, line: 295, baseType: !191, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !219, file: !23, line: 296, baseType: !139, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !219, file: !23, line: 297, baseType: !224, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !23, line: 174, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!11, !54, !54, !54}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !35, file: !23, line: 356, baseType: !229, size: 64, align: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !23, line: 321, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !54}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !28, line: 186, baseType: !27)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !35, file: !23, line: 357, baseType: !148, size: 64, align: 64, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !35, file: !23, line: 358, baseType: !129, size: 64, align: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !35, file: !23, line: 359, baseType: !237, size: 64, align: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !23, line: 317, baseType: !140)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !35, file: !23, line: 360, baseType: !239, size: 64, align: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !23, line: 319, baseType: !225)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !35, file: !23, line: 363, baseType: !241, size: 64, align: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !23, line: 304, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 301, size: 128, align: 64, elements: !244)
!244 = !{!245, !266}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !243, file: !23, line: 302, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !23, line: 193, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!11, !54, !250, !11}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !23, line: 191, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !23, line: 178, size: 640, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !263, !264, !265}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !252, file: !23, line: 179, baseType: !4, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !252, file: !23, line: 180, baseType: !54, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !252, file: !23, line: 181, baseType: !27, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !252, file: !23, line: 182, baseType: !27, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !252, file: !23, line: 184, baseType: !11, size: 32, align: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !252, file: !23, line: 185, baseType: !11, size: 32, align: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !252, file: !23, line: 186, baseType: !67, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !252, file: !23, line: 187, baseType: !262, size: 64, align: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !252, file: !23, line: 188, baseType: !262, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !252, file: !23, line: 189, baseType: !262, size: 64, align: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !252, file: !23, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !243, file: !23, line: 303, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !23, line: 194, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !54, !250}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !35, file: !23, line: 366, baseType: !111, size: 64, align: 64, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !35, file: !23, line: 368, baseType: !44, size: 64, align: 64, offset: 1408)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !35, file: !23, line: 372, baseType: !274, size: 64, align: 64, offset: 1472)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !23, line: 233, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!11, !54, !278, !4}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !23, line: 232, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!11, !54, !4}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !35, file: !23, line: 375, baseType: !157, size: 64, align: 64, offset: 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !35, file: !23, line: 379, baseType: !284, size: 64, align: 64, offset: 1600)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !23, line: 322, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!54, !54, !54, !11}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !35, file: !23, line: 382, baseType: !27, size: 64, align: 64, offset: 1664)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !35, file: !23, line: 385, baseType: !290, size: 64, align: 64, offset: 1728)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !23, line: 323, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !35, file: !23, line: 386, baseType: !292, size: 64, align: 64, offset: 1792)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !23, line: 324, baseType: !130)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !35, file: !23, line: 389, baseType: !294, size: 64, align: 64, offset: 1856)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !296, line: 40, size: 256, align: 64, elements: !297)
!296 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!297 = !{!298, !299, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !295, file: !296, line: 41, baseType: !44, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !295, file: !296, line: 42, baseType: !300, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !296, line: 18, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !295, file: !296, line: 43, baseType: !11, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !295, file: !296, line: 45, baseType: !44, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !35, file: !23, line: 390, baseType: !304, size: 64, align: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !306, line: 18, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !310, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 19, baseType: !67, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !305, file: !306, line: 20, baseType: !11, size: 32, align: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !305, file: !306, line: 21, baseType: !27, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 22, baseType: !11, size: 32, align: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 23, baseType: !67, size: 64, align: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !35, file: !23, line: 391, baseType: !314, size: 64, align: 64, offset: 1984)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !316, line: 11, size: 320, align: 64, elements: !317)
!316 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!317 = !{!318, !319, !324, !329, !330}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 12, baseType: !67, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !315, file: !316, line: 13, baseType: !320, size: 64, align: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !316, line: 8, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!54, !54, !4}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !315, file: !316, line: 14, baseType: !325, size: 64, align: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !316, line: 9, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !54, !54, !4}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !315, file: !316, line: 15, baseType: !67, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !315, file: !316, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !35, file: !23, line: 392, baseType: !34, size: 64, align: 64, offset: 2048)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !35, file: !23, line: 393, baseType: !54, size: 64, align: 64, offset: 2112)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !35, file: !23, line: 394, baseType: !334, size: 64, align: 64, offset: 2176)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !23, line: 325, baseType: !149)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !35, file: !23, line: 395, baseType: !336, size: 64, align: 64, offset: 2240)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !23, line: 326, baseType: !225)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !35, file: !23, line: 396, baseType: !27, size: 64, align: 64, offset: 2304)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !35, file: !23, line: 397, baseType: !339, size: 64, align: 64, offset: 2368)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !23, line: 327, baseType: !225)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !35, file: !23, line: 398, baseType: !341, size: 64, align: 64, offset: 2432)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !23, line: 329, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!54, !34, !27}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !35, file: !23, line: 399, baseType: !346, size: 64, align: 64, offset: 2496)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !23, line: 328, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!54, !34, !54, !54}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !35, file: !23, line: 400, baseType: !351, size: 64, align: 64, offset: 2560)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !23, line: 307, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !4}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !35, file: !23, line: 401, baseType: !157, size: 64, align: 64, offset: 2624)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !35, file: !23, line: 402, baseType: !54, size: 64, align: 64, offset: 2688)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !35, file: !23, line: 403, baseType: !54, size: 64, align: 64, offset: 2752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !35, file: !23, line: 404, baseType: !54, size: 64, align: 64, offset: 2816)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !35, file: !23, line: 405, baseType: !54, size: 64, align: 64, offset: 2880)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !35, file: !23, line: 406, baseType: !54, size: 64, align: 64, offset: 2944)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !35, file: !23, line: 407, baseType: !50, size: 64, align: 64, offset: 3008)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !35, file: !23, line: 410, baseType: !363, size: 32, align: 32, offset: 3072)
!363 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !35, file: !23, line: 412, baseType: !50, size: 64, align: 64, offset: 3136)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !19, file: !18, line: 38, baseType: !366, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !14, line: 228, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !14, line: 228, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !19, file: !18, line: 42, baseType: !46, size: 8, align: 8, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !19, file: !18, line: 46, baseType: !11, size: 32, align: 32, offset: 224)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !19, file: !18, line: 49, baseType: !372, size: 64, align: 64, offset: 256)
!372 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !19, file: !18, line: 53, baseType: !372, size: 64, align: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !19, file: !18, line: 56, baseType: !54, size: 64, align: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !19, file: !18, line: 60, baseType: !67, size: 64, align: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !19, file: !18, line: 64, baseType: !11, size: 32, align: 32, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !19, file: !18, line: 66, baseType: !11, size: 32, align: 32, offset: 544)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !19, file: !18, line: 69, baseType: !5, size: 64, align: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !19, file: !18, line: 71, baseType: !380, size: 64, align: 64, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !382, line: 59, baseType: !383)
!382 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 42, size: 512, align: 64, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !401, !402}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !383, file: !382, line: 44, baseType: !22, size: 128, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !383, file: !382, line: 45, baseType: !11, size: 32, align: 32, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !383, file: !382, line: 48, baseType: !54, size: 64, align: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !383, file: !382, line: 51, baseType: !54, size: 64, align: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !383, file: !382, line: 53, baseType: !390, size: 64, align: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !382, line: 40, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !382, line: 32, size: 448, align: 64, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !400}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !392, file: !382, line: 34, baseType: !22, size: 128, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !392, file: !382, line: 35, baseType: !54, size: 64, align: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !392, file: !382, line: 36, baseType: !54, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !382, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !392, file: !382, line: 38, baseType: !399, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !382, line: 39, baseType: !399, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !383, file: !382, line: 54, baseType: !390, size: 64, align: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !383, file: !382, line: 58, baseType: !11, size: 32, align: 32, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !19, file: !18, line: 74, baseType: !54, size: 64, align: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !19, file: !18, line: 75, baseType: !54, size: 64, align: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !19, file: !18, line: 79, baseType: !11, size: 32, align: 32, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !19, file: !18, line: 80, baseType: !11, size: 32, align: 32, offset: 864)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !19, file: !18, line: 82, baseType: !54, size: 64, align: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !19, file: !18, line: 90, baseType: !54, size: 64, align: 64, offset: 960)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !19, file: !18, line: 96, baseType: !54, size: 64, align: 64, offset: 1024)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !19, file: !18, line: 99, baseType: !54, size: 64, align: 64, offset: 1088)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !19, file: !18, line: 102, baseType: !54, size: 64, align: 64, offset: 1152)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !19, file: !18, line: 103, baseType: !54, size: 64, align: 64, offset: 1216)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !19, file: !18, line: 104, baseType: !54, size: 64, align: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !19, file: !18, line: 105, baseType: !54, size: 64, align: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !19, file: !18, line: 106, baseType: !54, size: 64, align: 64, offset: 1408)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !19, file: !18, line: 107, baseType: !54, size: 64, align: 64, offset: 1472)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !19, file: !18, line: 108, baseType: !54, size: 64, align: 64, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !19, file: !18, line: 109, baseType: !54, size: 64, align: 64, offset: 1600)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !19, file: !18, line: 110, baseType: !54, size: 64, align: 64, offset: 1664)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !19, file: !18, line: 111, baseType: !54, size: 64, align: 64, offset: 1728)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statement", arg: 1, scope: !7, file: !8, line: 27, type: !12)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "connection", arg: 2, scope: !7, file: !8, line: 27, type: !16)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !7, file: !8, line: 29, type: !11)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !426, file: !8, line: 36, type: !429)
!426 = distinct !DILexicalBlock(scope: !427, file: !8, line: 36, column: 9)
!427 = distinct !DILexicalBlock(scope: !428, file: !8, line: 35, column: 12)
!428 = distinct !DILexicalBlock(scope: !7, file: !8, line: 31, column: 9)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !431, line: 139, baseType: !432)
!431 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !431, line: 69, size: 1536, align: 64, elements: !433)
!433 = !{!434, !436, !437, !457, !460, !461, !462, !463, !464, !465, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !432, file: !431, line: 72, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !432, file: !431, line: 73, baseType: !435, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !432, file: !431, line: 74, baseType: !438, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !431, line: 44, baseType: !440)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !431, line: 19, size: 832, align: 64, elements: !441)
!441 = !{!442, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !431, line: 21, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !440, file: !431, line: 22, baseType: !435, size: 64, align: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !440, file: !431, line: 24, baseType: !54, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !440, file: !431, line: 25, baseType: !54, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !440, file: !431, line: 26, baseType: !54, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !440, file: !431, line: 27, baseType: !54, size: 64, align: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !440, file: !431, line: 28, baseType: !54, size: 64, align: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !440, file: !431, line: 30, baseType: !54, size: 64, align: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !440, file: !431, line: 31, baseType: !54, size: 64, align: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !440, file: !431, line: 32, baseType: !54, size: 64, align: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !440, file: !431, line: 33, baseType: !11, size: 32, align: 32, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !440, file: !431, line: 34, baseType: !11, size: 32, align: 32, offset: 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !440, file: !431, line: 37, baseType: !11, size: 32, align: 32, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !440, file: !431, line: 43, baseType: !54, size: 64, align: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !432, file: !431, line: 76, baseType: !458, size: 64, align: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !431, line: 50, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !432, file: !431, line: 77, baseType: !11, size: 32, align: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !432, file: !431, line: 78, baseType: !46, size: 8, align: 8, offset: 288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !432, file: !431, line: 80, baseType: !46, size: 8, align: 8, offset: 296)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !432, file: !431, line: 85, baseType: !11, size: 32, align: 32, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !432, file: !431, line: 86, baseType: !11, size: 32, align: 32, offset: 352)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !432, file: !431, line: 88, baseType: !466, size: 64, align: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !431, line: 54, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!11, !54, !458, !11, !54}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !432, file: !431, line: 89, baseType: !466, size: 64, align: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !432, file: !431, line: 90, baseType: !54, size: 64, align: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !432, file: !431, line: 91, baseType: !54, size: 64, align: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !432, file: !431, line: 93, baseType: !54, size: 64, align: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !432, file: !431, line: 94, baseType: !54, size: 64, align: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !432, file: !431, line: 95, baseType: !54, size: 64, align: 64, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !432, file: !431, line: 97, baseType: !54, size: 64, align: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !432, file: !431, line: 98, baseType: !54, size: 64, align: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !432, file: !431, line: 99, baseType: !54, size: 64, align: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !432, file: !431, line: 101, baseType: !54, size: 64, align: 64, offset: 1024)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !432, file: !431, line: 103, baseType: !11, size: 32, align: 32, offset: 1088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !432, file: !431, line: 105, baseType: !54, size: 64, align: 64, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !432, file: !431, line: 106, baseType: !5, size: 64, align: 64, offset: 1216)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !432, file: !431, line: 108, baseType: !11, size: 32, align: 32, offset: 1280)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !432, file: !431, line: 109, baseType: !54, size: 64, align: 64, offset: 1344)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !432, file: !431, line: 134, baseType: !352, size: 64, align: 64, offset: 1408)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !432, file: !431, line: 135, baseType: !4, size: 64, align: 64, offset: 1472)
!487 = !DISubprogram(name: "_pysqlite_seterror", scope: !8, file: !8, line: 48, type: !488, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.sqlite3*, %struct.sqlite3_stmt*)* @_pysqlite_seterror, variables: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!11, !366, !12}
!490 = !{!491, !492, !493}
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "db", arg: 1, scope: !487, file: !8, line: 48, type: !366)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "st", arg: 2, scope: !487, file: !8, line: 48, type: !12)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errorcode", scope: !487, file: !8, line: 50, type: !11)
!494 = !DISubprogram(name: "_pysqlite_long_from_int64", scope: !8, file: !8, line: 114, type: !495, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @_pysqlite_long_from_int64, variables: !499)
!495 = !DISubroutineType(types: !496)
!496 = !{!54, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite_int64", file: !14, line: 253, baseType: !498)
!498 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!499 = !{!500}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !494, file: !8, line: 114, type: !497)
!501 = !DISubprogram(name: "_pysqlite_long_as_int64", scope: !8, file: !8, line: 139, type: !502, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*)* @_pysqlite_long_as_int64, variables: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!497, !54}
!504 = !{!505, !506, !507}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "py_val", arg: 1, scope: !501, file: !8, line: 139, type: !54)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !501, file: !8, line: 141, type: !11)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !501, file: !8, line: 143, type: !498)
!508 = !{i32 2, !"Dwarf Version", i32 4}
!509 = !{i32 2, !"Debug Info Version", i32 3}
!510 = !{i32 1, !"PIC Level", i32 2}
!511 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!512 = !{!513, !513, i64 0}
!513 = !{!"any pointer", !514, i64 0}
!514 = !{!"omnipotent char", !515, i64 0}
!515 = !{!"Simple C/C++ TBAA"}
!516 = !DIExpression()
!517 = !DILocation(line: 27, column: 33, scope: !7)
!518 = !DILocation(line: 27, column: 65, scope: !7)
!519 = !DILocation(line: 29, column: 5, scope: !7)
!520 = !DILocation(line: 29, column: 9, scope: !7)
!521 = !DILocation(line: 31, column: 9, scope: !428)
!522 = !DILocation(line: 31, column: 19, scope: !428)
!523 = !DILocation(line: 31, column: 9, scope: !7)
!524 = !DILocation(line: 34, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !428, file: !8, line: 31, column: 34)
!526 = !{!527, !527, i64 0}
!527 = !{!"int", !514, i64 0}
!528 = !DILocation(line: 35, column: 5, scope: !525)
!529 = !DILocation(line: 36, column: 11, scope: !426)
!530 = !DILocation(line: 36, column: 26, scope: !426)
!531 = !DILocation(line: 36, column: 41, scope: !426)
!532 = !DILocation(line: 36, column: 39, scope: !426)
!533 = !DILocation(line: 37, column: 27, scope: !426)
!534 = !DILocation(line: 37, column: 14, scope: !426)
!535 = !DILocation(line: 37, column: 12, scope: !426)
!536 = !DILocation(line: 38, column: 30, scope: !426)
!537 = !DILocation(line: 38, column: 9, scope: !426)
!538 = !DILocation(line: 38, column: 38, scope: !427)
!539 = !DILocation(line: 41, column: 12, scope: !7)
!540 = !DILocation(line: 42, column: 1, scope: !7)
!541 = !DILocation(line: 41, column: 5, scope: !7)
!542 = !DILocation(line: 48, column: 33, scope: !487)
!543 = !DILocation(line: 48, column: 51, scope: !487)
!544 = !DILocation(line: 50, column: 5, scope: !487)
!545 = !DILocation(line: 50, column: 9, scope: !487)
!546 = !DILocation(line: 53, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !487, file: !8, line: 53, column: 9)
!548 = !DILocation(line: 53, column: 12, scope: !547)
!549 = !DILocation(line: 53, column: 9, scope: !487)
!550 = !DILocation(line: 54, column: 29, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !8, line: 53, column: 27)
!552 = !DILocation(line: 54, column: 15, scope: !551)
!553 = !DILocation(line: 55, column: 5, scope: !551)
!554 = !DILocation(line: 57, column: 33, scope: !487)
!555 = !DILocation(line: 57, column: 17, scope: !487)
!556 = !DILocation(line: 57, column: 15, scope: !487)
!557 = !DILocation(line: 59, column: 13, scope: !487)
!558 = !DILocation(line: 59, column: 5, scope: !487)
!559 = !DILocation(line: 62, column: 13, scope: !560)
!560 = distinct !DILexicalBlock(scope: !487, file: !8, line: 60, column: 5)
!561 = !DILocation(line: 63, column: 13, scope: !560)
!562 = !DILocation(line: 66, column: 29, scope: !560)
!563 = !DILocation(line: 66, column: 68, scope: !560)
!564 = !DILocation(line: 66, column: 53, scope: !560)
!565 = !DILocation(line: 66, column: 13, scope: !560)
!566 = !DILocation(line: 67, column: 13, scope: !560)
!567 = !DILocation(line: 69, column: 19, scope: !560)
!568 = !DILocation(line: 70, column: 13, scope: !560)
!569 = !DILocation(line: 84, column: 29, scope: !560)
!570 = !DILocation(line: 84, column: 71, scope: !560)
!571 = !DILocation(line: 84, column: 56, scope: !560)
!572 = !DILocation(line: 84, column: 13, scope: !560)
!573 = !DILocation(line: 85, column: 13, scope: !560)
!574 = !DILocation(line: 87, column: 29, scope: !560)
!575 = !DILocation(line: 87, column: 68, scope: !560)
!576 = !DILocation(line: 87, column: 53, scope: !560)
!577 = !DILocation(line: 87, column: 13, scope: !560)
!578 = !DILocation(line: 88, column: 13, scope: !560)
!579 = !DILocation(line: 90, column: 29, scope: !560)
!580 = !DILocation(line: 90, column: 64, scope: !560)
!581 = !DILocation(line: 90, column: 49, scope: !560)
!582 = !DILocation(line: 90, column: 13, scope: !560)
!583 = !DILocation(line: 91, column: 13, scope: !560)
!584 = !DILocation(line: 94, column: 29, scope: !560)
!585 = !DILocation(line: 94, column: 69, scope: !560)
!586 = !DILocation(line: 94, column: 54, scope: !560)
!587 = !DILocation(line: 94, column: 13, scope: !560)
!588 = !DILocation(line: 95, column: 13, scope: !560)
!589 = !DILocation(line: 97, column: 29, scope: !560)
!590 = !DILocation(line: 97, column: 71, scope: !560)
!591 = !DILocation(line: 97, column: 56, scope: !560)
!592 = !DILocation(line: 97, column: 13, scope: !560)
!593 = !DILocation(line: 98, column: 13, scope: !560)
!594 = !DILocation(line: 100, column: 29, scope: !560)
!595 = !DILocation(line: 100, column: 68, scope: !560)
!596 = !DILocation(line: 100, column: 53, scope: !560)
!597 = !DILocation(line: 100, column: 13, scope: !560)
!598 = !DILocation(line: 101, column: 13, scope: !560)
!599 = !DILocation(line: 104, column: 12, scope: !487)
!600 = !DILocation(line: 105, column: 1, scope: !487)
!601 = !DILocation(line: 104, column: 5, scope: !487)
!602 = !{!603, !603, i64 0}
!603 = !{!"long long", !514, i64 0}
!604 = !DILocation(line: 114, column: 40, scope: !494)
!605 = !DILocation(line: 135, column: 35, scope: !494)
!606 = !DILocation(line: 135, column: 12, scope: !494)
!607 = !DILocation(line: 135, column: 5, scope: !494)
!608 = !DILocation(line: 139, column: 36, scope: !501)
!609 = !DILocation(line: 141, column: 5, scope: !501)
!610 = !DILocation(line: 141, column: 9, scope: !501)
!611 = !DILocation(line: 143, column: 5, scope: !501)
!612 = !DILocation(line: 143, column: 15, scope: !501)
!613 = !DILocation(line: 143, column: 52, scope: !501)
!614 = !DILocation(line: 143, column: 23, scope: !501)
!615 = !DILocation(line: 147, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !501, file: !8, line: 147, column: 9)
!617 = !DILocation(line: 147, column: 15, scope: !616)
!618 = !DILocation(line: 147, column: 21, scope: !616)
!619 = !DILocation(line: 147, column: 24, scope: !620)
!620 = !DILexicalBlockFile(scope: !616, file: !8, discriminator: 1)
!621 = !DILocation(line: 147, column: 9, scope: !501)
!622 = !DILocation(line: 148, column: 9, scope: !616)
!623 = !DILocation(line: 149, column: 10, scope: !624)
!624 = distinct !DILexicalBlock(scope: !501, file: !8, line: 149, column: 9)
!625 = !DILocation(line: 149, column: 9, scope: !501)
!626 = !DILocation(line: 159, column: 20, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !8, line: 149, column: 20)
!628 = !DILocation(line: 159, column: 13, scope: !627)
!629 = !DILocation(line: 169, column: 21, scope: !501)
!630 = !DILocation(line: 169, column: 5, scope: !501)
!631 = !DILocation(line: 171, column: 5, scope: !501)
!632 = !DILocation(line: 172, column: 1, scope: !501)
