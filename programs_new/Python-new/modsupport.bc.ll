; ModuleID = 'programs_new/Python-new/modsupport.bc.ll'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Py_complex = type { double, double }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_Py_PackageContext = global i8* null, align 8
@PyModule_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [47 x i8] c"PyModule_AddObject() needs module as first arg\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PyModule_AddObject() needs non-NULL value\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"module '%s' has no __dict__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unmatched paren in format\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"string too long for Python string\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"string too long for Python bytes\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"NULL object passed to Py_BuildValue\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"bad format char passed to Py_BuildValue\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unmatched paren in format\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @Py_BuildValue(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca %struct._object*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !375, metadata !629), !dbg !630
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !631
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !631
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !376, metadata !629), !dbg !632
  %1 = bitcast %struct._object** %retval1 to i8*, !dbg !633
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !633
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !389, metadata !629), !dbg !634
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !635
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !636
  call void @llvm.va_start(i8* %arraydecay2), !dbg !636
  %2 = load i8*, i8** %format.addr, align 8, !dbg !637, !tbaa !625
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !638
  %call = call %struct._object* @va_build_value(i8* %2, %struct.__va_list_tag* %arraydecay3, i32 0), !dbg !639
  store %struct._object* %call, %struct._object** %retval1, align 8, !dbg !640, !tbaa !625
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !641
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !642
  call void @llvm.va_end(i8* %arraydecay45), !dbg !642
  %3 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !643, !tbaa !625
  %4 = bitcast %struct._object** %retval1 to i8*, !dbg !644
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !644
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !644
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !644
  ret %struct._object* %3, !dbg !645
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @va_build_value(i8* %format, %struct.__va_list_tag* %va, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %flags.addr = alloca i32, align 4
  %f = alloca i8*, align 8
  %n = alloca i32, align 4
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !470, metadata !629), !dbg !646
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !471, metadata !629), !dbg !647
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !472, metadata !629), !dbg !650
  %0 = bitcast i8** %f to i8*, !dbg !651
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !651
  call void @llvm.dbg.declare(metadata i8** %f, metadata !473, metadata !629), !dbg !652
  %1 = load i8*, i8** %format.addr, align 8, !dbg !653, !tbaa !625
  store i8* %1, i8** %f, align 8, !dbg !652, !tbaa !625
  %2 = bitcast i32* %n to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !654
  call void @llvm.dbg.declare(metadata i32* %n, metadata !474, metadata !629), !dbg !655
  %3 = load i8*, i8** %f, align 8, !dbg !656, !tbaa !625
  %call = call i32 @countformat(i8* %3, i32 0), !dbg !657
  store i32 %call, i32* %n, align 4, !dbg !655, !tbaa !648
  %4 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 24, i8* %4) #2, !dbg !658
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %lva, metadata !475, metadata !629), !dbg !659
  %5 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !660
  %6 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !661, !tbaa !625
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 24, i32 8, i1 false), !dbg !660
  %8 = load i32, i32* %n, align 4, !dbg !662, !tbaa !648
  %cmp = icmp slt i32 %8, 0, !dbg !664
  br i1 %cmp, label %if.then, label %if.end, !dbg !665

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !666
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !666

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %n, align 4, !dbg !667, !tbaa !648
  %cmp1 = icmp eq i32 %9, 0, !dbg !669
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !670

if.then.2:                                        ; preds = %if.end
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !671, !tbaa !673
  %inc = add i64 %10, 1, !dbg !671
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !671, !tbaa !673
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !676

if.end.3:                                         ; preds = %if.end
  %11 = load i32, i32* %n, align 4, !dbg !677, !tbaa !648
  %cmp4 = icmp eq i32 %11, 1, !dbg !679
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !680

if.then.5:                                        ; preds = %if.end.3
  %12 = load i32, i32* %flags.addr, align 4, !dbg !681, !tbaa !648
  %call6 = call %struct._object* @do_mkvalue(i8** %f, [1 x %struct.__va_list_tag]* %lva, i32 %12), !dbg !682
  store %struct._object* %call6, %struct._object** %retval, !dbg !683
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !683

if.end.7:                                         ; preds = %if.end.3
  %13 = load i32, i32* %n, align 4, !dbg !684, !tbaa !648
  %14 = load i32, i32* %flags.addr, align 4, !dbg !685, !tbaa !648
  %call8 = call %struct._object* @do_mktuple(i8** %f, [1 x %struct.__va_list_tag]* %lva, i32 0, i32 %13, i32 %14), !dbg !686
  store %struct._object* %call8, %struct._object** %retval, !dbg !687
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !687

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %15 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 24, i8* %15) #2, !dbg !688
  %16 = bitcast i32* %n to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !688
  %17 = bitcast i8** %f to i8*, !dbg !688
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !688
  %18 = load %struct._object*, %struct._object** %retval, !dbg !688
  ret %struct._object* %18, !dbg !688
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_BuildValue_SizeT(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca %struct._object*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !392, metadata !629), !dbg !689
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !690
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !690
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !393, metadata !629), !dbg !691
  %1 = bitcast %struct._object** %retval1 to i8*, !dbg !692
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !692
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !394, metadata !629), !dbg !693
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !694
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !695
  call void @llvm.va_start(i8* %arraydecay2), !dbg !695
  %2 = load i8*, i8** %format.addr, align 8, !dbg !696, !tbaa !625
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !697
  %call = call %struct._object* @va_build_value(i8* %2, %struct.__va_list_tag* %arraydecay3, i32 1), !dbg !698
  store %struct._object* %call, %struct._object** %retval1, align 8, !dbg !699, !tbaa !625
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !700
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !701
  call void @llvm.va_end(i8* %arraydecay45), !dbg !701
  %3 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !702, !tbaa !625
  %4 = bitcast %struct._object** %retval1 to i8*, !dbg !703
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !703
  %5 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !703
  call void @llvm.lifetime.end(i64 24, i8* %5) #2, !dbg !703
  ret %struct._object* %3, !dbg !704
}

; Function Attrs: nounwind uwtable
define %struct._object* @Py_VaBuildValue(i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !400, metadata !629), !dbg !705
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !401, metadata !629), !dbg !706
  %0 = load i8*, i8** %format.addr, align 8, !dbg !707, !tbaa !625
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !708, !tbaa !625
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %1, i32 0), !dbg !709
  ret %struct._object* %call, !dbg !710
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_VaBuildValue_SizeT(i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !404, metadata !629), !dbg !711
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !405, metadata !629), !dbg !712
  %0 = load i8*, i8** %format.addr, align 8, !dbg !713, !tbaa !625
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !714, !tbaa !625
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %1, i32 1), !dbg !715
  ret %struct._object* %call, !dbg !716
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyEval_CallFunction(%struct._object* %obj, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !410, metadata !629), !dbg !717
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !411, metadata !629), !dbg !718
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !719
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !719
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !412, metadata !629), !dbg !720
  %1 = bitcast %struct._object** %args to i8*, !dbg !721
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !721
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !413, metadata !629), !dbg !722
  %2 = bitcast %struct._object** %res to i8*, !dbg !723
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !723
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !414, metadata !629), !dbg !724
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !725
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !726
  call void @llvm.va_start(i8* %arraydecay1), !dbg !726
  %3 = load i8*, i8** %format.addr, align 8, !dbg !727, !tbaa !625
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !728
  %call = call %struct._object* @Py_VaBuildValue(i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !729
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !730, !tbaa !625
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !731
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !732
  call void @llvm.va_end(i8* %arraydecay34), !dbg !732
  %4 = load %struct._object*, %struct._object** %args, align 8, !dbg !733, !tbaa !625
  %cmp = icmp eq %struct._object* %4, null, !dbg !735
  br i1 %cmp, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !737

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !738, !tbaa !625
  %6 = load %struct._object*, %struct._object** %args, align 8, !dbg !739, !tbaa !625
  %call5 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %5, %struct._object* %6, %struct._object* null), !dbg !740
  store %struct._object* %call5, %struct._object** %res, align 8, !dbg !741, !tbaa !625
  br label %do.body, !dbg !742

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !743
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !415, metadata !629), !dbg !745
  %8 = load %struct._object*, %struct._object** %args, align 8, !dbg !746, !tbaa !625
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !745, !tbaa !625
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !747, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !749
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !673
  %dec = add i64 %10, -1, !dbg !750
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !750, !tbaa !673
  %cmp6 = icmp ne i64 %dec, 0, !dbg !751
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !752

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !753

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !755, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !757
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !757, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !759
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !759, !tbaa !760
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !763, !tbaa !625
  call void %13(%struct._object* %14), !dbg !764
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !765
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !765
  br label %do.cond, !dbg !767

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !768

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %res, align 8, !dbg !770, !tbaa !625
  store %struct._object* %16, %struct._object** %retval, !dbg !771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !771

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %res to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !772
  %18 = bitcast %struct._object** %args to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !772
  %19 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 24, i8* %19) #2, !dbg !772
  %20 = load %struct._object*, %struct._object** %retval, !dbg !772
  ret %struct._object* %20, !dbg !772
}

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyEval_CallMethod(%struct._object* %obj, i8* %methodname, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %methodname.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %meth = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !421, metadata !629), !dbg !773
  store i8* %methodname, i8** %methodname.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %methodname.addr, metadata !422, metadata !629), !dbg !774
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !423, metadata !629), !dbg !775
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !776
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !424, metadata !629), !dbg !777
  %1 = bitcast %struct._object** %meth to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !778
  call void @llvm.dbg.declare(metadata %struct._object** %meth, metadata !425, metadata !629), !dbg !779
  %2 = bitcast %struct._object** %args to i8*, !dbg !780
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !780
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !426, metadata !629), !dbg !781
  %3 = bitcast %struct._object** %res to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !782
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !427, metadata !629), !dbg !783
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !784, !tbaa !625
  %5 = load i8*, i8** %methodname.addr, align 8, !dbg !785, !tbaa !625
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %4, i8* %5), !dbg !786
  store %struct._object* %call, %struct._object** %meth, align 8, !dbg !787, !tbaa !625
  %6 = load %struct._object*, %struct._object** %meth, align 8, !dbg !788, !tbaa !625
  %cmp = icmp eq %struct._object* %6, null, !dbg !790
  br i1 %cmp, label %if.then, label %if.end, !dbg !791

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !792
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !792

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !793
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !794
  call void @llvm.va_start(i8* %arraydecay1), !dbg !794
  %7 = load i8*, i8** %format.addr, align 8, !dbg !795, !tbaa !625
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !796
  %call3 = call %struct._object* @Py_VaBuildValue(i8* %7, %struct.__va_list_tag* %arraydecay2), !dbg !797
  store %struct._object* %call3, %struct._object** %args, align 8, !dbg !798, !tbaa !625
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !799
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !800
  call void @llvm.va_end(i8* %arraydecay45), !dbg !800
  %8 = load %struct._object*, %struct._object** %args, align 8, !dbg !801, !tbaa !625
  %cmp6 = icmp eq %struct._object* %8, null, !dbg !802
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !803

if.then.7:                                        ; preds = %if.end
  br label %do.body, !dbg !804

do.body:                                          ; preds = %if.then.7
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !805
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !805
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !428, metadata !629), !dbg !807
  %10 = load %struct._object*, %struct._object** %meth, align 8, !dbg !808, !tbaa !625
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !807, !tbaa !625
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !809, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !811
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !812, !tbaa !673
  %dec = add i64 %12, -1, !dbg !812
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !812, !tbaa !673
  %cmp8 = icmp ne i64 %dec, 0, !dbg !813
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !814

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !815

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !817, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !819
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !819, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !820
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !820, !tbaa !760
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !821, !tbaa !625
  call void %15(%struct._object* %16), !dbg !822
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !823
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !823
  br label %do.cond, !dbg !825

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !826

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !828
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !828

if.end.11:                                        ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %meth, align 8, !dbg !829, !tbaa !625
  %19 = load %struct._object*, %struct._object** %args, align 8, !dbg !830, !tbaa !625
  %call12 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %18, %struct._object* %19, %struct._object* null), !dbg !831
  store %struct._object* %call12, %struct._object** %res, align 8, !dbg !832, !tbaa !625
  br label %do.body.13, !dbg !833

do.body.13:                                       ; preds = %if.end.11
  %20 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !834
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !834
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !432, metadata !629), !dbg !836
  %21 = load %struct._object*, %struct._object** %meth, align 8, !dbg !837, !tbaa !625
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8, !dbg !836, !tbaa !625
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !838, !tbaa !625
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !840
  %23 = load i64, i64* %ob_refcnt15, align 8, !dbg !841, !tbaa !673
  %dec16 = add i64 %23, -1, !dbg !841
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !841, !tbaa !673
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !842
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !843

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !844

if.else.19:                                       ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !846, !tbaa !625
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !848
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !848, !tbaa !758
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !849
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !849, !tbaa !760
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !850, !tbaa !625
  call void %26(%struct._object* %27), !dbg !851
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !852
  br label %do.cond.23, !dbg !854

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !855

do.end.24:                                        ; preds = %do.cond.23
  br label %do.body.25, !dbg !857

do.body.25:                                       ; preds = %do.end.24
  %29 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !858
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !858
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !434, metadata !629), !dbg !860
  %30 = load %struct._object*, %struct._object** %args, align 8, !dbg !861, !tbaa !625
  store %struct._object* %30, %struct._object** %_py_decref_tmp26, align 8, !dbg !860, !tbaa !625
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !862, !tbaa !625
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !864
  %32 = load i64, i64* %ob_refcnt27, align 8, !dbg !865, !tbaa !673
  %dec28 = add i64 %32, -1, !dbg !865
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !865, !tbaa !673
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !866
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !867

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !868

if.else.31:                                       ; preds = %do.body.25
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !870, !tbaa !625
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !872
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !872, !tbaa !758
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !873
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !873, !tbaa !760
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !874, !tbaa !625
  call void %35(%struct._object* %36), !dbg !875
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %37 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !876
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !876
  br label %do.cond.35, !dbg !877

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !878

do.end.36:                                        ; preds = %do.cond.35
  %38 = load %struct._object*, %struct._object** %res, align 8, !dbg !880, !tbaa !625
  store %struct._object* %38, %struct._object** %retval, !dbg !881
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !881

cleanup:                                          ; preds = %do.end.36, %do.end, %if.then
  %39 = bitcast %struct._object** %res to i8*, !dbg !882
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !882
  %40 = bitcast %struct._object** %args to i8*, !dbg !882
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !882
  %41 = bitcast %struct._object** %meth to i8*, !dbg !882
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !882
  %42 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !882
  call void @llvm.lifetime.end(i64 24, i8* %42) #2, !dbg !882
  %43 = load %struct._object*, %struct._object** %retval, !dbg !882
  ret %struct._object* %43, !dbg !882
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddObject(%struct._object* %m, i8* %name, %struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !440, metadata !629), !dbg !883
  store i8* %name, i8** %name.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !441, metadata !629), !dbg !884
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !442, metadata !629), !dbg !885
  %0 = bitcast %struct._object** %dict to i8*, !dbg !886
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !886
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !443, metadata !629), !dbg !887
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !888, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !890
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !890, !tbaa !758
  %cmp = icmp eq %struct._typeobject* %2, @PyModule_Type, !dbg !891
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !892

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !893, !tbaa !625
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !895
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !895, !tbaa !758
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyModule_Type), !dbg !896
  %tobool = icmp ne i32 %call, 0, !dbg !896
  br i1 %tobool, label %if.end, label %if.then, !dbg !897

if.then:                                          ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !898, !tbaa !625
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0)), !dbg !900
  store i32 -1, i32* %retval, !dbg !901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !901

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !902, !tbaa !625
  %tobool2 = icmp ne %struct._object* %6, null, !dbg !902
  br i1 %tobool2, label %if.end.8, label %if.then.3, !dbg !904

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !905
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !905
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !908

if.then.6:                                        ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !909, !tbaa !625
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)), !dbg !910
  br label %if.end.7, !dbg !910

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  store i32 -1, i32* %retval, !dbg !911
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !911

if.end.8:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !912, !tbaa !625
  %call9 = call %struct._object* @PyModule_GetDict(%struct._object* %8), !dbg !913
  store %struct._object* %call9, %struct._object** %dict, align 8, !dbg !914, !tbaa !625
  %9 = load %struct._object*, %struct._object** %dict, align 8, !dbg !915, !tbaa !625
  %cmp10 = icmp eq %struct._object* %9, null, !dbg !917
  br i1 %cmp10, label %if.then.11, label %if.end.14, !dbg !918

if.then.11:                                       ; preds = %if.end.8
  %10 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !919, !tbaa !625
  %11 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !921, !tbaa !625
  %call12 = call i8* @PyModule_GetName(%struct._object* %11), !dbg !922
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %call12), !dbg !923
  store i32 -1, i32* %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !924

if.end.14:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %dict, align 8, !dbg !925, !tbaa !625
  %13 = load i8*, i8** %name.addr, align 8, !dbg !927, !tbaa !625
  %14 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !928, !tbaa !625
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %12, i8* %13, %struct._object* %14), !dbg !929
  %tobool16 = icmp ne i32 %call15, 0, !dbg !929
  br i1 %tobool16, label %if.then.17, label %if.end.18, !dbg !930

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval, !dbg !931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !931

if.end.18:                                        ; preds = %if.end.14
  br label %do.body, !dbg !932

do.body:                                          ; preds = %if.end.18
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !933
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !933
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !444, metadata !629), !dbg !935
  %16 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !936, !tbaa !625
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !935, !tbaa !625
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !937, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !939
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !940, !tbaa !673
  %dec = add i64 %18, -1, !dbg !940
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !940, !tbaa !673
  %cmp19 = icmp ne i64 %dec, 0, !dbg !941
  br i1 %cmp19, label %if.then.20, label %if.else, !dbg !942

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !943

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !945, !tbaa !625
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !947
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !947, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !948
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !948, !tbaa !760
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !949, !tbaa !625
  call void %21(%struct._object* %22), !dbg !950
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !951
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !951
  br label %do.cond, !dbg !953

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !954

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !956

cleanup:                                          ; preds = %do.end, %if.then.17, %if.then.11, %if.end.7, %if.then
  %24 = bitcast %struct._object** %dict to i8*, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !957
  %25 = load i32, i32* %retval, !dbg !957
  ret i32 %25, !dbg !957
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i8* @PyModule_GetName(%struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddIntConstant(%struct._object* %m, i8* %name, i64 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !450, metadata !629), !dbg !958
  store i8* %name, i8** %name.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !451, metadata !629), !dbg !959
  store i64 %value, i64* %value.addr, align 8, !tbaa !960
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !452, metadata !629), !dbg !961
  %0 = bitcast %struct._object** %o to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !962
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !453, metadata !629), !dbg !963
  %1 = load i64, i64* %value.addr, align 8, !dbg !964, !tbaa !960
  %call = call %struct._object* @PyLong_FromLong(i64 %1), !dbg !965
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !963, !tbaa !625
  %2 = load %struct._object*, %struct._object** %o, align 8, !dbg !966, !tbaa !625
  %tobool = icmp ne %struct._object* %2, null, !dbg !966
  br i1 %tobool, label %if.end, label %if.then, !dbg !968

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !969
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !969

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !970, !tbaa !625
  %4 = load i8*, i8** %name.addr, align 8, !dbg !972, !tbaa !625
  %5 = load %struct._object*, %struct._object** %o, align 8, !dbg !973, !tbaa !625
  %call1 = call i32 @PyModule_AddObject(%struct._object* %3, i8* %4, %struct._object* %5), !dbg !974
  %cmp = icmp eq i32 %call1, 0, !dbg !975
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !976

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !977

if.end.3:                                         ; preds = %if.end
  br label %do.body, !dbg !978

do.body:                                          ; preds = %if.end.3
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !979
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !454, metadata !629), !dbg !981
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !982, !tbaa !625
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !981, !tbaa !625
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !983, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !985
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !673
  %dec = add i64 %9, -1, !dbg !986
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !673
  %cmp4 = icmp ne i64 %dec, 0, !dbg !987
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !988

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !989

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !991, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !993
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !993, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !994
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !994, !tbaa !760
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !995, !tbaa !625
  call void %12(%struct._object* %13), !dbg !996
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !997
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !997
  br label %do.cond, !dbg !999

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1000

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1002
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1002

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %15 = bitcast %struct._object** %o to i8*, !dbg !1003
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1003
  %16 = load i32, i32* %retval, !dbg !1003
  ret i32 %16, !dbg !1003
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddStringConstant(%struct._object* %m, i8* %name, i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !460, metadata !629), !dbg !1004
  store i8* %name, i8** %name.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !461, metadata !629), !dbg !1005
  store i8* %value, i8** %value.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !462, metadata !629), !dbg !1006
  %0 = bitcast %struct._object** %o to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !463, metadata !629), !dbg !1008
  %1 = load i8*, i8** %value.addr, align 8, !dbg !1009, !tbaa !625
  %call = call %struct._object* @PyUnicode_FromString(i8* %1), !dbg !1010
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !1008, !tbaa !625
  %2 = load %struct._object*, %struct._object** %o, align 8, !dbg !1011, !tbaa !625
  %tobool = icmp ne %struct._object* %2, null, !dbg !1011
  br i1 %tobool, label %if.end, label %if.then, !dbg !1013

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1014

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1015, !tbaa !625
  %4 = load i8*, i8** %name.addr, align 8, !dbg !1017, !tbaa !625
  %5 = load %struct._object*, %struct._object** %o, align 8, !dbg !1018, !tbaa !625
  %call1 = call i32 @PyModule_AddObject(%struct._object* %3, i8* %4, %struct._object* %5), !dbg !1019
  %cmp = icmp eq i32 %call1, 0, !dbg !1020
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1021

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1022

if.end.3:                                         ; preds = %if.end
  br label %do.body, !dbg !1023

do.body:                                          ; preds = %if.end.3
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1024
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !464, metadata !629), !dbg !1026
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !1027, !tbaa !625
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1026, !tbaa !625
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1028, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1030
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1031, !tbaa !673
  %dec = add i64 %9, -1, !dbg !1031
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1031, !tbaa !673
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1032
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1033

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !1034

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1036, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1038
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1038, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1039
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1039, !tbaa !760
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1040, !tbaa !625
  call void %12(%struct._object* %13), !dbg !1041
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1042
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1042
  br label %do.cond, !dbg !1044

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1045

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %15 = bitcast %struct._object** %o to i8*, !dbg !1048
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1048
  %16 = load i32, i32* %retval, !dbg !1048
  ret i32 %16, !dbg !1048
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @countformat(i8* %format, i32 %endchar) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %endchar.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %format, i8** %format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !480, metadata !629), !dbg !1049
  store i32 %endchar, i32* %endchar.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %endchar.addr, metadata !481, metadata !629), !dbg !1050
  %0 = bitcast i32* %count to i8*, !dbg !1051
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1051
  call void @llvm.dbg.declare(metadata i32* %count, metadata !482, metadata !629), !dbg !1052
  store i32 0, i32* %count, align 4, !dbg !1052, !tbaa !648
  %1 = bitcast i32* %level to i8*, !dbg !1053
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %level, metadata !483, metadata !629), !dbg !1054
  store i32 0, i32* %level, align 4, !dbg !1054, !tbaa !648
  br label %while.cond, !dbg !1055

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %level, align 4, !dbg !1056, !tbaa !648
  %cmp = icmp sgt i32 %2, 0, !dbg !1059
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1060

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8*, i8** %format.addr, align 8, !dbg !1061, !tbaa !625
  %4 = load i8, i8* %3, align 1, !dbg !1063, !tbaa !1064
  %conv = sext i8 %4 to i32, !dbg !1063
  %5 = load i32, i32* %endchar.addr, align 4, !dbg !1065, !tbaa !648
  %cmp1 = icmp ne i32 %conv, %5, !dbg !1066
  br label %lor.end, !dbg !1060

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !1067

while.body:                                       ; preds = %lor.end
  %7 = load i8*, i8** %format.addr, align 8, !dbg !1070, !tbaa !625
  %8 = load i8, i8* %7, align 1, !dbg !1072, !tbaa !1064
  %conv3 = sext i8 %8 to i32, !dbg !1072
  br label %NodeBlock.43

NodeBlock.43:                                     ; preds = %while.body
  %Pivot.44 = icmp slt i32 %conv3, 41
  br i1 %Pivot.44, label %NodeBlock.15, label %NodeBlock.41

NodeBlock.41:                                     ; preds = %NodeBlock.43
  %Pivot.42 = icmp slt i32 %conv3, 91
  br i1 %Pivot.42, label %NodeBlock.25, label %NodeBlock.39

NodeBlock.39:                                     ; preds = %NodeBlock.41
  %Pivot.40 = icmp slt i32 %conv3, 123
  br i1 %Pivot.40, label %NodeBlock.31, label %NodeBlock.37

NodeBlock.37:                                     ; preds = %NodeBlock.39
  %Pivot.38 = icmp slt i32 %conv3, 125
  br i1 %Pivot.38, label %LeafBlock.33, label %LeafBlock.35

LeafBlock.35:                                     ; preds = %NodeBlock.37
  %SwitchLeaf36 = icmp eq i32 %conv3, 125
  br i1 %SwitchLeaf36, label %sw.bb.8, label %NewDefault

LeafBlock.33:                                     ; preds = %NodeBlock.37
  %SwitchLeaf34 = icmp eq i32 %conv3, 123
  br i1 %SwitchLeaf34, label %sw.bb.4, label %NewDefault

NodeBlock.31:                                     ; preds = %NodeBlock.39
  %Pivot.32 = icmp slt i32 %conv3, 93
  br i1 %Pivot.32, label %LeafBlock.27, label %LeafBlock.29

LeafBlock.29:                                     ; preds = %NodeBlock.31
  %SwitchLeaf30 = icmp eq i32 %conv3, 93
  br i1 %SwitchLeaf30, label %sw.bb.8, label %NewDefault

LeafBlock.27:                                     ; preds = %NodeBlock.31
  %SwitchLeaf28 = icmp eq i32 %conv3, 91
  br i1 %SwitchLeaf28, label %sw.bb.4, label %NewDefault

NodeBlock.25:                                     ; preds = %NodeBlock.41
  %Pivot.26 = icmp slt i32 %conv3, 44
  br i1 %Pivot.26, label %LeafBlock.17, label %NodeBlock.23

NodeBlock.23:                                     ; preds = %NodeBlock.25
  %Pivot.24 = icmp slt i32 %conv3, 58
  br i1 %Pivot.24, label %LeafBlock.19, label %LeafBlock.21

LeafBlock.21:                                     ; preds = %NodeBlock.23
  %SwitchLeaf22 = icmp eq i32 %conv3, 58
  br i1 %SwitchLeaf22, label %sw.bb.9, label %NewDefault

LeafBlock.19:                                     ; preds = %NodeBlock.23
  %SwitchLeaf20 = icmp eq i32 %conv3, 44
  br i1 %SwitchLeaf20, label %sw.bb.9, label %NewDefault

LeafBlock.17:                                     ; preds = %NodeBlock.25
  %SwitchLeaf18 = icmp eq i32 %conv3, 41
  br i1 %SwitchLeaf18, label %sw.bb.8, label %NewDefault

NodeBlock.15:                                     ; preds = %NodeBlock.43
  %Pivot.16 = icmp slt i32 %conv3, 35
  br i1 %Pivot.16, label %NodeBlock.5, label %NodeBlock.13

NodeBlock.13:                                     ; preds = %NodeBlock.15
  %Pivot.14 = icmp slt i32 %conv3, 38
  br i1 %Pivot.14, label %LeafBlock.7, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %conv3, 40
  br i1 %Pivot.12, label %LeafBlock.9, label %sw.bb.4

LeafBlock.9:                                      ; preds = %NodeBlock.11
  %SwitchLeaf10 = icmp eq i32 %conv3, 38
  br i1 %SwitchLeaf10, label %sw.bb.9, label %NewDefault

LeafBlock.7:                                      ; preds = %NodeBlock.13
  %SwitchLeaf8 = icmp eq i32 %conv3, 35
  br i1 %SwitchLeaf8, label %sw.bb.9, label %NewDefault

NodeBlock.5:                                      ; preds = %NodeBlock.15
  %Pivot.6 = icmp slt i32 %conv3, 9
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %conv3, 32
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %conv3, 32
  br i1 %SwitchLeaf4, label %sw.bb.9, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %conv3, 9
  br i1 %SwitchLeaf2, label %sw.bb.9, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %conv3, 0
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1073, !tbaa !625
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)), !dbg !1075
  store i32 -1, i32* %retval, !dbg !1076
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1076

sw.bb.4:                                          ; preds = %LeafBlock.33, %LeafBlock.27, %NodeBlock.11
  %10 = load i32, i32* %level, align 4, !dbg !1077, !tbaa !648
  %cmp5 = icmp eq i32 %10, 0, !dbg !1079
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1080

if.then:                                          ; preds = %sw.bb.4
  %11 = load i32, i32* %count, align 4, !dbg !1081, !tbaa !648
  %inc = add i32 %11, 1, !dbg !1081
  store i32 %inc, i32* %count, align 4, !dbg !1081, !tbaa !648
  br label %if.end, !dbg !1082

if.end:                                           ; preds = %if.then, %sw.bb.4
  %12 = load i32, i32* %level, align 4, !dbg !1083, !tbaa !648
  %inc7 = add i32 %12, 1, !dbg !1083
  store i32 %inc7, i32* %level, align 4, !dbg !1083, !tbaa !648
  br label %sw.epilog, !dbg !1084

sw.bb.8:                                          ; preds = %LeafBlock.35, %LeafBlock.29, %LeafBlock.17
  %13 = load i32, i32* %level, align 4, !dbg !1085, !tbaa !648
  %dec = add i32 %13, -1, !dbg !1085
  store i32 %dec, i32* %level, align 4, !dbg !1085, !tbaa !648
  br label %sw.epilog, !dbg !1086

sw.bb.9:                                          ; preds = %LeafBlock.21, %LeafBlock.19, %LeafBlock.9, %LeafBlock.7, %LeafBlock.3, %LeafBlock.1
  br label %sw.epilog, !dbg !1087

NewDefault:                                       ; preds = %LeafBlock.35, %LeafBlock.33, %LeafBlock.29, %LeafBlock.27, %LeafBlock.21, %LeafBlock.19, %LeafBlock.17, %LeafBlock.9, %LeafBlock.7, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %14 = load i32, i32* %level, align 4, !dbg !1088, !tbaa !648
  %cmp10 = icmp eq i32 %14, 0, !dbg !1090
  br i1 %cmp10, label %if.then.12, label %if.end.14, !dbg !1091

if.then.12:                                       ; preds = %sw.default
  %15 = load i32, i32* %count, align 4, !dbg !1092, !tbaa !648
  %inc13 = add i32 %15, 1, !dbg !1092
  store i32 %inc13, i32* %count, align 4, !dbg !1092, !tbaa !648
  br label %if.end.14, !dbg !1093

if.end.14:                                        ; preds = %if.then.12, %sw.default
  br label %sw.epilog, !dbg !1094

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.9, %sw.bb.8, %if.end
  %16 = load i8*, i8** %format.addr, align 8, !dbg !1095, !tbaa !625
  %incdec.ptr = getelementptr i8, i8* %16, i32 1, !dbg !1095
  store i8* %incdec.ptr, i8** %format.addr, align 8, !dbg !1095, !tbaa !625
  br label %while.cond, !dbg !1055

while.end:                                        ; preds = %lor.end
  %17 = load i32, i32* %count, align 4, !dbg !1096, !tbaa !648
  store i32 %17, i32* %retval, !dbg !1097
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1097

cleanup:                                          ; preds = %while.end, %sw.bb
  %18 = bitcast i32* %level to i8*, !dbg !1098
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !1098
  %19 = bitcast i32* %count to i8*, !dbg !1098
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !1098
  %20 = load i32, i32* %retval, !dbg !1098
  ret i32 %20, !dbg !1098
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mkvalue(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n56 = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %u = alloca i32*, align 8
  %n111 = alloca i64, align 8
  %p = alloca [1 x i8], align 1
  %i = alloca i32, align 4
  %v210 = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %n223 = alloca i64, align 8
  %m = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %v282 = alloca %struct._object*, align 8
  %str283 = alloca i8*, align 8
  %n296 = alloca i64, align 8
  %m343 = alloca i64, align 8
  %func = alloca %struct._object* (i8*)*, align 8
  %arg = alloca i8*, align 8
  %v392 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !490, metadata !629), !dbg !1099
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !491, metadata !629), !dbg !1100
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !492, metadata !629), !dbg !1101
  br label %for.cond, !dbg !1102

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load i8**, i8*** %p_format.addr, align 8, !dbg !1103, !tbaa !625
  %1 = load i8*, i8** %0, align 8, !dbg !1104, !tbaa !625
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !1104
  store i8* %incdec.ptr, i8** %0, align 8, !dbg !1104, !tbaa !625
  %2 = load i8, i8* %1, align 1, !dbg !1105, !tbaa !1064
  %conv = sext i8 %2 to i32, !dbg !1105
  br label %NodeBlock.92

NodeBlock.92:                                     ; preds = %for.cond
  %Pivot.93 = icmp slt i32 %conv, 85
  br i1 %Pivot.93, label %NodeBlock.41, label %NodeBlock.90

NodeBlock.90:                                     ; preds = %NodeBlock.92
  %Pivot.91 = icmp slt i32 %conv, 107
  br i1 %Pivot.91, label %NodeBlock.64, label %NodeBlock.88

NodeBlock.88:                                     ; preds = %NodeBlock.90
  %Pivot.89 = icmp slt i32 %conv, 117
  br i1 %Pivot.89, label %NodeBlock.76, label %NodeBlock.86

NodeBlock.86:                                     ; preds = %NodeBlock.88
  %Pivot.87 = icmp slt i32 %conv, 122
  br i1 %Pivot.87, label %NodeBlock.80, label %NodeBlock.84

NodeBlock.84:                                     ; preds = %NodeBlock.86
  %Pivot.85 = icmp slt i32 %conv, 123
  br i1 %Pivot.85, label %sw.bb.209, label %LeafBlock.82

LeafBlock.82:                                     ; preds = %NodeBlock.84
  %SwitchLeaf83 = icmp eq i32 %conv, 123
  br i1 %SwitchLeaf83, label %sw.bb.5, label %NewDefault

NodeBlock.80:                                     ; preds = %NodeBlock.86
  %Pivot.81 = icmp slt i32 %conv, 121
  br i1 %Pivot.81, label %LeafBlock.78, label %sw.bb.281

LeafBlock.78:                                     ; preds = %NodeBlock.80
  %SwitchLeaf79 = icmp eq i32 %conv, 117
  br i1 %SwitchLeaf79, label %sw.bb.98, label %NewDefault

NodeBlock.76:                                     ; preds = %NodeBlock.88
  %Pivot.77 = icmp slt i32 %conv, 110
  br i1 %Pivot.77, label %NodeBlock.68, label %NodeBlock.74

NodeBlock.74:                                     ; preds = %NodeBlock.76
  %Pivot.75 = icmp slt i32 %conv, 115
  br i1 %Pivot.75, label %LeafBlock.70, label %LeafBlock.72

LeafBlock.72:                                     ; preds = %NodeBlock.74
  %SwitchLeaf73 = icmp eq i32 %conv, 115
  br i1 %SwitchLeaf73, label %sw.bb.209, label %NewDefault

LeafBlock.70:                                     ; preds = %NodeBlock.74
  %SwitchLeaf71 = icmp eq i32 %conv, 110
  br i1 %SwitchLeaf71, label %sw.bb.41, label %NewDefault

NodeBlock.68:                                     ; preds = %NodeBlock.76
  %Pivot.69 = icmp slt i32 %conv, 108
  br i1 %Pivot.69, label %sw.bb.55, label %LeafBlock.66

LeafBlock.66:                                     ; preds = %NodeBlock.68
  %SwitchLeaf67 = icmp eq i32 %conv, 108
  br i1 %SwitchLeaf67, label %sw.bb.41, label %NewDefault

NodeBlock.64:                                     ; preds = %NodeBlock.90
  %Pivot.65 = icmp slt i32 %conv, 99
  br i1 %Pivot.65, label %NodeBlock.49, label %NodeBlock.62

NodeBlock.62:                                     ; preds = %NodeBlock.64
  %Pivot.63 = icmp slt i32 %conv, 102
  br i1 %Pivot.63, label %NodeBlock.53, label %NodeBlock.60

NodeBlock.60:                                     ; preds = %NodeBlock.62
  %Pivot.61 = icmp slt i32 %conv, 104
  br i1 %Pivot.61, label %LeafBlock.55, label %LeafBlock.57

LeafBlock.57:                                     ; preds = %NodeBlock.60
  %conv.off.58 = add i32 %conv, -104
  %SwitchLeaf59 = icmp ule i32 %conv.off.58, 1
  br i1 %SwitchLeaf59, label %sw.bb.8, label %NewDefault

LeafBlock.55:                                     ; preds = %NodeBlock.60
  %SwitchLeaf56 = icmp eq i32 %conv, 102
  br i1 %SwitchLeaf56, label %sw.bb.154, label %NewDefault

NodeBlock.53:                                     ; preds = %NodeBlock.62
  %Pivot.54 = icmp slt i32 %conv, 100
  br i1 %Pivot.54, label %sw.bb.179, label %LeafBlock.51

LeafBlock.51:                                     ; preds = %NodeBlock.53
  %SwitchLeaf52 = icmp eq i32 %conv, 100
  br i1 %SwitchLeaf52, label %sw.bb.154, label %NewDefault

NodeBlock.49:                                     ; preds = %NodeBlock.64
  %Pivot.50 = icmp slt i32 %conv, 91
  br i1 %Pivot.50, label %LeafBlock.43, label %NodeBlock.47

NodeBlock.47:                                     ; preds = %NodeBlock.49
  %Pivot.48 = icmp slt i32 %conv, 98
  br i1 %Pivot.48, label %LeafBlock.45, label %sw.bb.8

LeafBlock.45:                                     ; preds = %NodeBlock.47
  %SwitchLeaf46 = icmp eq i32 %conv, 91
  br i1 %SwitchLeaf46, label %sw.bb.2, label %NewDefault

LeafBlock.43:                                     ; preds = %NodeBlock.49
  %SwitchLeaf44 = icmp eq i32 %conv, 85
  br i1 %SwitchLeaf44, label %sw.bb.209, label %NewDefault

NodeBlock.41:                                     ; preds = %NodeBlock.92
  %Pivot.42 = icmp slt i32 %conv, 68
  br i1 %Pivot.42, label %NodeBlock.17, label %NodeBlock.39

NodeBlock.39:                                     ; preds = %NodeBlock.41
  %Pivot.40 = icmp slt i32 %conv, 75
  br i1 %Pivot.40, label %NodeBlock.25, label %NodeBlock.37

NodeBlock.37:                                     ; preds = %NodeBlock.39
  %Pivot.38 = icmp slt i32 %conv, 78
  br i1 %Pivot.38, label %NodeBlock.29, label %NodeBlock.35

NodeBlock.35:                                     ; preds = %NodeBlock.37
  %Pivot.36 = icmp slt i32 %conv, 83
  br i1 %Pivot.36, label %LeafBlock.31, label %LeafBlock.33

LeafBlock.33:                                     ; preds = %NodeBlock.35
  %SwitchLeaf34 = icmp eq i32 %conv, 83
  br i1 %SwitchLeaf34, label %sw.bb.358, label %NewDefault

LeafBlock.31:                                     ; preds = %NodeBlock.35
  %conv.off = add i32 %conv, -78
  %SwitchLeaf32 = icmp ule i32 %conv.off, 1
  br i1 %SwitchLeaf32, label %sw.bb.358, label %NewDefault

NodeBlock.29:                                     ; preds = %NodeBlock.37
  %Pivot.30 = icmp slt i32 %conv, 76
  br i1 %Pivot.30, label %sw.bb.84, label %LeafBlock.27

LeafBlock.27:                                     ; preds = %NodeBlock.29
  %SwitchLeaf28 = icmp eq i32 %conv, 76
  br i1 %SwitchLeaf28, label %sw.bb.70, label %NewDefault

NodeBlock.25:                                     ; preds = %NodeBlock.39
  %Pivot.26 = icmp slt i32 %conv, 72
  br i1 %Pivot.26, label %LeafBlock.19, label %NodeBlock.23

NodeBlock.23:                                     ; preds = %NodeBlock.25
  %Pivot.24 = icmp slt i32 %conv, 73
  br i1 %Pivot.24, label %sw.bb.11, label %LeafBlock.21

LeafBlock.21:                                     ; preds = %NodeBlock.23
  %SwitchLeaf22 = icmp eq i32 %conv, 73
  br i1 %SwitchLeaf22, label %sw.bb.26, label %NewDefault

LeafBlock.19:                                     ; preds = %NodeBlock.25
  %SwitchLeaf20 = icmp eq i32 %conv, 68
  br i1 %SwitchLeaf20, label %sw.bb.165, label %NewDefault

NodeBlock.17:                                     ; preds = %NodeBlock.41
  %Pivot.18 = icmp slt i32 %conv, 44
  br i1 %Pivot.18, label %NodeBlock.5, label %NodeBlock.15

NodeBlock.15:                                     ; preds = %NodeBlock.17
  %Pivot.16 = icmp slt i32 %conv, 66
  br i1 %Pivot.16, label %NodeBlock.11, label %NodeBlock.13

NodeBlock.13:                                     ; preds = %NodeBlock.15
  %Pivot.14 = icmp slt i32 %conv, 67
  br i1 %Pivot.14, label %sw.bb.8, label %sw.bb.195

NodeBlock.11:                                     ; preds = %NodeBlock.15
  %Pivot.12 = icmp slt i32 %conv, 58
  br i1 %Pivot.12, label %LeafBlock.7, label %LeafBlock.9

LeafBlock.9:                                      ; preds = %NodeBlock.11
  %SwitchLeaf10 = icmp eq i32 %conv, 58
  br i1 %SwitchLeaf10, label %sw.bb.422, label %NewDefault

LeafBlock.7:                                      ; preds = %NodeBlock.11
  %SwitchLeaf8 = icmp eq i32 %conv, 44
  br i1 %SwitchLeaf8, label %sw.bb.422, label %NewDefault

NodeBlock.5:                                      ; preds = %NodeBlock.17
  %Pivot.6 = icmp slt i32 %conv, 32
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %conv, 40
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %conv, 40
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %conv, 32
  br i1 %SwitchLeaf2, label %sw.bb.422, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %conv, 9
  br i1 %SwitchLeaf, label %sw.bb.422, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.3
  %3 = load i8**, i8*** %p_format.addr, align 8, !dbg !1106, !tbaa !625
  %4 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1107, !tbaa !625
  %5 = load i8**, i8*** %p_format.addr, align 8, !dbg !1108, !tbaa !625
  %6 = load i8*, i8** %5, align 8, !dbg !1109, !tbaa !625
  %call = call i32 @countformat(i8* %6, i32 41), !dbg !1110
  %7 = load i32, i32* %flags.addr, align 4, !dbg !1111, !tbaa !648
  %call1 = call %struct._object* @do_mktuple(i8** %3, [1 x %struct.__va_list_tag]* %4, i32 41, i32 %call, i32 %7), !dbg !1112
  store %struct._object* %call1, %struct._object** %retval, !dbg !1113
  br label %return, !dbg !1113

sw.bb.2:                                          ; preds = %LeafBlock.45
  %8 = load i8**, i8*** %p_format.addr, align 8, !dbg !1114, !tbaa !625
  %9 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1115, !tbaa !625
  %10 = load i8**, i8*** %p_format.addr, align 8, !dbg !1116, !tbaa !625
  %11 = load i8*, i8** %10, align 8, !dbg !1117, !tbaa !625
  %call3 = call i32 @countformat(i8* %11, i32 93), !dbg !1118
  %12 = load i32, i32* %flags.addr, align 4, !dbg !1119, !tbaa !648
  %call4 = call %struct._object* @do_mklist(i8** %8, [1 x %struct.__va_list_tag]* %9, i32 93, i32 %call3, i32 %12), !dbg !1120
  store %struct._object* %call4, %struct._object** %retval, !dbg !1121
  br label %return, !dbg !1121

sw.bb.5:                                          ; preds = %LeafBlock.82
  %13 = load i8**, i8*** %p_format.addr, align 8, !dbg !1122, !tbaa !625
  %14 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1123, !tbaa !625
  %15 = load i8**, i8*** %p_format.addr, align 8, !dbg !1124, !tbaa !625
  %16 = load i8*, i8** %15, align 8, !dbg !1125, !tbaa !625
  %call6 = call i32 @countformat(i8* %16, i32 125), !dbg !1126
  %17 = load i32, i32* %flags.addr, align 4, !dbg !1127, !tbaa !648
  %call7 = call %struct._object* @do_mkdict(i8** %13, [1 x %struct.__va_list_tag]* %14, i32 125, i32 %call6, i32 %17), !dbg !1128
  store %struct._object* %call7, %struct._object** %retval, !dbg !1129
  br label %return, !dbg !1129

sw.bb.8:                                          ; preds = %LeafBlock.57, %NodeBlock.47, %NodeBlock.13
  %18 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1130, !tbaa !625
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i32 0, i32 0, !dbg !1131
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0, !dbg !1132
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !1132
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1132
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1132

vaarg.in_reg:                                     ; preds = %sw.bb.8
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3, !dbg !1133
  %reg_save_area = load i8*, i8** %19, !dbg !1133
  %20 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !1133
  %21 = bitcast i8* %20 to i32*, !dbg !1133
  %22 = add i32 %gp_offset, 8, !dbg !1133
  store i32 %22, i32* %gp_offset_p, !dbg !1133
  br label %vaarg.end, !dbg !1133

vaarg.in_mem:                                     ; preds = %sw.bb.8
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2, !dbg !1135
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !1135
  %23 = bitcast i8* %overflow_arg_area to i32*, !dbg !1135
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !1135
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !1135
  br label %vaarg.end, !dbg !1135

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %21, %vaarg.in_reg ], [ %23, %vaarg.in_mem ], !dbg !1132
  %24 = load i32, i32* %vaarg.addr, !dbg !1137
  %conv9 = sext i32 %24 to i64, !dbg !1140
  %call10 = call %struct._object* @PyLong_FromLong(i64 %conv9), !dbg !1141
  store %struct._object* %call10, %struct._object** %retval, !dbg !1142
  br label %return, !dbg !1142

sw.bb.11:                                         ; preds = %NodeBlock.23
  %25 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1143, !tbaa !625
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i32 0, i32 0, !dbg !1144
  %gp_offset_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 0, !dbg !1145
  %gp_offset14 = load i32, i32* %gp_offset_p13, !dbg !1145
  %fits_in_gp15 = icmp ule i32 %gp_offset14, 40, !dbg !1145
  br i1 %fits_in_gp15, label %vaarg.in_reg.16, label %vaarg.in_mem.18, !dbg !1145

vaarg.in_reg.16:                                  ; preds = %sw.bb.11
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 3, !dbg !1146
  %reg_save_area17 = load i8*, i8** %26, !dbg !1146
  %27 = getelementptr i8, i8* %reg_save_area17, i32 %gp_offset14, !dbg !1146
  %28 = bitcast i8* %27 to i32*, !dbg !1146
  %29 = add i32 %gp_offset14, 8, !dbg !1146
  store i32 %29, i32* %gp_offset_p13, !dbg !1146
  br label %vaarg.end.22, !dbg !1146

vaarg.in_mem.18:                                  ; preds = %sw.bb.11
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 2, !dbg !1147
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19, !dbg !1147
  %30 = bitcast i8* %overflow_arg_area20 to i32*, !dbg !1147
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i32 8, !dbg !1147
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19, !dbg !1147
  br label %vaarg.end.22, !dbg !1147

vaarg.end.22:                                     ; preds = %vaarg.in_mem.18, %vaarg.in_reg.16
  %vaarg.addr23 = phi i32* [ %28, %vaarg.in_reg.16 ], [ %30, %vaarg.in_mem.18 ], !dbg !1145
  %31 = load i32, i32* %vaarg.addr23, !dbg !1148
  %conv24 = zext i32 %31 to i64, !dbg !1149
  %call25 = call %struct._object* @PyLong_FromLong(i64 %conv24), !dbg !1150
  store %struct._object* %call25, %struct._object** %retval, !dbg !1151
  br label %return, !dbg !1151

sw.bb.26:                                         ; preds = %LeafBlock.21
  %32 = bitcast i32* %n to i8*, !dbg !1152
  call void @llvm.lifetime.start(i64 4, i8* %32) #2, !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %n, metadata !493, metadata !629), !dbg !1153
  %33 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1154, !tbaa !625
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %33, i32 0, i32 0, !dbg !1155
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0, !dbg !1156
  %gp_offset29 = load i32, i32* %gp_offset_p28, !dbg !1156
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40, !dbg !1156
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33, !dbg !1156

vaarg.in_reg.31:                                  ; preds = %sw.bb.26
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3, !dbg !1157
  %reg_save_area32 = load i8*, i8** %34, !dbg !1157
  %35 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29, !dbg !1157
  %36 = bitcast i8* %35 to i32*, !dbg !1157
  %37 = add i32 %gp_offset29, 8, !dbg !1157
  store i32 %37, i32* %gp_offset_p28, !dbg !1157
  br label %vaarg.end.37, !dbg !1157

vaarg.in_mem.33:                                  ; preds = %sw.bb.26
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2, !dbg !1159
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34, !dbg !1159
  %38 = bitcast i8* %overflow_arg_area35 to i32*, !dbg !1159
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8, !dbg !1159
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34, !dbg !1159
  br label %vaarg.end.37, !dbg !1159

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i32* [ %36, %vaarg.in_reg.31 ], [ %38, %vaarg.in_mem.33 ], !dbg !1156
  %39 = load i32, i32* %vaarg.addr38, !dbg !1161
  store i32 %39, i32* %n, align 4, !dbg !1164, !tbaa !648
  %40 = load i32, i32* %n, align 4, !dbg !1165, !tbaa !648
  %conv39 = zext i32 %40 to i64, !dbg !1165
  %call40 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv39), !dbg !1166
  store %struct._object* %call40, %struct._object** %retval, !dbg !1167
  %41 = bitcast i32* %n to i8*, !dbg !1168
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !1168
  br label %return

sw.bb.41:                                         ; preds = %LeafBlock.70, %LeafBlock.66
  %42 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1169, !tbaa !625
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %42, i32 0, i32 0, !dbg !1170
  %gp_offset_p43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 0, !dbg !1171
  %gp_offset44 = load i32, i32* %gp_offset_p43, !dbg !1171
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40, !dbg !1171
  br i1 %fits_in_gp45, label %vaarg.in_reg.46, label %vaarg.in_mem.48, !dbg !1171

vaarg.in_reg.46:                                  ; preds = %sw.bb.41
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 3, !dbg !1172
  %reg_save_area47 = load i8*, i8** %43, !dbg !1172
  %44 = getelementptr i8, i8* %reg_save_area47, i32 %gp_offset44, !dbg !1172
  %45 = bitcast i8* %44 to i64*, !dbg !1172
  %46 = add i32 %gp_offset44, 8, !dbg !1172
  store i32 %46, i32* %gp_offset_p43, !dbg !1172
  br label %vaarg.end.52, !dbg !1172

vaarg.in_mem.48:                                  ; preds = %sw.bb.41
  %overflow_arg_area_p49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 2, !dbg !1173
  %overflow_arg_area50 = load i8*, i8** %overflow_arg_area_p49, !dbg !1173
  %47 = bitcast i8* %overflow_arg_area50 to i64*, !dbg !1173
  %overflow_arg_area.next51 = getelementptr i8, i8* %overflow_arg_area50, i32 8, !dbg !1173
  store i8* %overflow_arg_area.next51, i8** %overflow_arg_area_p49, !dbg !1173
  br label %vaarg.end.52, !dbg !1173

vaarg.end.52:                                     ; preds = %vaarg.in_mem.48, %vaarg.in_reg.46
  %vaarg.addr53 = phi i64* [ %45, %vaarg.in_reg.46 ], [ %47, %vaarg.in_mem.48 ], !dbg !1171
  %48 = load i64, i64* %vaarg.addr53, !dbg !1174
  %call54 = call %struct._object* @PyLong_FromLong(i64 %48), !dbg !1175
  store %struct._object* %call54, %struct._object** %retval, !dbg !1176
  br label %return, !dbg !1176

sw.bb.55:                                         ; preds = %NodeBlock.68
  %49 = bitcast i64* %n56 to i8*, !dbg !1177
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1177
  call void @llvm.dbg.declare(metadata i64* %n56, metadata !499, metadata !629), !dbg !1178
  %50 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1179, !tbaa !625
  %arraydecay57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %50, i32 0, i32 0, !dbg !1180
  %gp_offset_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 0, !dbg !1181
  %gp_offset59 = load i32, i32* %gp_offset_p58, !dbg !1181
  %fits_in_gp60 = icmp ule i32 %gp_offset59, 40, !dbg !1181
  br i1 %fits_in_gp60, label %vaarg.in_reg.61, label %vaarg.in_mem.63, !dbg !1181

vaarg.in_reg.61:                                  ; preds = %sw.bb.55
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 3, !dbg !1182
  %reg_save_area62 = load i8*, i8** %51, !dbg !1182
  %52 = getelementptr i8, i8* %reg_save_area62, i32 %gp_offset59, !dbg !1182
  %53 = bitcast i8* %52 to i64*, !dbg !1182
  %54 = add i32 %gp_offset59, 8, !dbg !1182
  store i32 %54, i32* %gp_offset_p58, !dbg !1182
  br label %vaarg.end.67, !dbg !1182

vaarg.in_mem.63:                                  ; preds = %sw.bb.55
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 2, !dbg !1184
  %overflow_arg_area65 = load i8*, i8** %overflow_arg_area_p64, !dbg !1184
  %55 = bitcast i8* %overflow_arg_area65 to i64*, !dbg !1184
  %overflow_arg_area.next66 = getelementptr i8, i8* %overflow_arg_area65, i32 8, !dbg !1184
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p64, !dbg !1184
  br label %vaarg.end.67, !dbg !1184

vaarg.end.67:                                     ; preds = %vaarg.in_mem.63, %vaarg.in_reg.61
  %vaarg.addr68 = phi i64* [ %53, %vaarg.in_reg.61 ], [ %55, %vaarg.in_mem.63 ], !dbg !1181
  %56 = load i64, i64* %vaarg.addr68, !dbg !1186
  store i64 %56, i64* %n56, align 8, !dbg !1189, !tbaa !960
  %57 = load i64, i64* %n56, align 8, !dbg !1190, !tbaa !960
  %call69 = call %struct._object* @PyLong_FromUnsignedLong(i64 %57), !dbg !1191
  store %struct._object* %call69, %struct._object** %retval, !dbg !1192
  %58 = bitcast i64* %n56 to i8*, !dbg !1193
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1193
  br label %return

sw.bb.70:                                         ; preds = %LeafBlock.27
  %59 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1194, !tbaa !625
  %arraydecay71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %59, i32 0, i32 0, !dbg !1195
  %gp_offset_p72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 0, !dbg !1196
  %gp_offset73 = load i32, i32* %gp_offset_p72, !dbg !1196
  %fits_in_gp74 = icmp ule i32 %gp_offset73, 40, !dbg !1196
  br i1 %fits_in_gp74, label %vaarg.in_reg.75, label %vaarg.in_mem.77, !dbg !1196

vaarg.in_reg.75:                                  ; preds = %sw.bb.70
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 3, !dbg !1197
  %reg_save_area76 = load i8*, i8** %60, !dbg !1197
  %61 = getelementptr i8, i8* %reg_save_area76, i32 %gp_offset73, !dbg !1197
  %62 = bitcast i8* %61 to i64*, !dbg !1197
  %63 = add i32 %gp_offset73, 8, !dbg !1197
  store i32 %63, i32* %gp_offset_p72, !dbg !1197
  br label %vaarg.end.81, !dbg !1197

vaarg.in_mem.77:                                  ; preds = %sw.bb.70
  %overflow_arg_area_p78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 2, !dbg !1198
  %overflow_arg_area79 = load i8*, i8** %overflow_arg_area_p78, !dbg !1198
  %64 = bitcast i8* %overflow_arg_area79 to i64*, !dbg !1198
  %overflow_arg_area.next80 = getelementptr i8, i8* %overflow_arg_area79, i32 8, !dbg !1198
  store i8* %overflow_arg_area.next80, i8** %overflow_arg_area_p78, !dbg !1198
  br label %vaarg.end.81, !dbg !1198

vaarg.end.81:                                     ; preds = %vaarg.in_mem.77, %vaarg.in_reg.75
  %vaarg.addr82 = phi i64* [ %62, %vaarg.in_reg.75 ], [ %64, %vaarg.in_mem.77 ], !dbg !1196
  %65 = load i64, i64* %vaarg.addr82, !dbg !1199
  %call83 = call %struct._object* @PyLong_FromLongLong(i64 %65), !dbg !1200
  store %struct._object* %call83, %struct._object** %retval, !dbg !1201
  br label %return, !dbg !1201

sw.bb.84:                                         ; preds = %NodeBlock.29
  %66 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1202, !tbaa !625
  %arraydecay85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %66, i32 0, i32 0, !dbg !1203
  %gp_offset_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 0, !dbg !1204
  %gp_offset87 = load i32, i32* %gp_offset_p86, !dbg !1204
  %fits_in_gp88 = icmp ule i32 %gp_offset87, 40, !dbg !1204
  br i1 %fits_in_gp88, label %vaarg.in_reg.89, label %vaarg.in_mem.91, !dbg !1204

vaarg.in_reg.89:                                  ; preds = %sw.bb.84
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 3, !dbg !1205
  %reg_save_area90 = load i8*, i8** %67, !dbg !1205
  %68 = getelementptr i8, i8* %reg_save_area90, i32 %gp_offset87, !dbg !1205
  %69 = bitcast i8* %68 to i64*, !dbg !1205
  %70 = add i32 %gp_offset87, 8, !dbg !1205
  store i32 %70, i32* %gp_offset_p86, !dbg !1205
  br label %vaarg.end.95, !dbg !1205

vaarg.in_mem.91:                                  ; preds = %sw.bb.84
  %overflow_arg_area_p92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 2, !dbg !1206
  %overflow_arg_area93 = load i8*, i8** %overflow_arg_area_p92, !dbg !1206
  %71 = bitcast i8* %overflow_arg_area93 to i64*, !dbg !1206
  %overflow_arg_area.next94 = getelementptr i8, i8* %overflow_arg_area93, i32 8, !dbg !1206
  store i8* %overflow_arg_area.next94, i8** %overflow_arg_area_p92, !dbg !1206
  br label %vaarg.end.95, !dbg !1206

vaarg.end.95:                                     ; preds = %vaarg.in_mem.91, %vaarg.in_reg.89
  %vaarg.addr96 = phi i64* [ %69, %vaarg.in_reg.89 ], [ %71, %vaarg.in_mem.91 ], !dbg !1204
  %72 = load i64, i64* %vaarg.addr96, !dbg !1207
  %call97 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %72), !dbg !1208
  store %struct._object* %call97, %struct._object** %retval, !dbg !1209
  br label %return, !dbg !1209

sw.bb.98:                                         ; preds = %LeafBlock.78
  %73 = bitcast %struct._object** %v to i8*, !dbg !1210
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !1210
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !501, metadata !629), !dbg !1211
  %74 = bitcast i32** %u to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1212
  call void @llvm.dbg.declare(metadata i32** %u, metadata !503, metadata !629), !dbg !1213
  %75 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1214, !tbaa !625
  %arraydecay99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %75, i32 0, i32 0, !dbg !1215
  %gp_offset_p100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 0, !dbg !1216
  %gp_offset101 = load i32, i32* %gp_offset_p100, !dbg !1216
  %fits_in_gp102 = icmp ule i32 %gp_offset101, 40, !dbg !1216
  br i1 %fits_in_gp102, label %vaarg.in_reg.103, label %vaarg.in_mem.105, !dbg !1216

vaarg.in_reg.103:                                 ; preds = %sw.bb.98
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 3, !dbg !1217
  %reg_save_area104 = load i8*, i8** %76, !dbg !1217
  %77 = getelementptr i8, i8* %reg_save_area104, i32 %gp_offset101, !dbg !1217
  %78 = bitcast i8* %77 to i32**, !dbg !1217
  %79 = add i32 %gp_offset101, 8, !dbg !1217
  store i32 %79, i32* %gp_offset_p100, !dbg !1217
  br label %vaarg.end.109, !dbg !1217

vaarg.in_mem.105:                                 ; preds = %sw.bb.98
  %overflow_arg_area_p106 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 2, !dbg !1219
  %overflow_arg_area107 = load i8*, i8** %overflow_arg_area_p106, !dbg !1219
  %80 = bitcast i8* %overflow_arg_area107 to i32**, !dbg !1219
  %overflow_arg_area.next108 = getelementptr i8, i8* %overflow_arg_area107, i32 8, !dbg !1219
  store i8* %overflow_arg_area.next108, i8** %overflow_arg_area_p106, !dbg !1219
  br label %vaarg.end.109, !dbg !1219

vaarg.end.109:                                    ; preds = %vaarg.in_mem.105, %vaarg.in_reg.103
  %vaarg.addr110 = phi i32** [ %78, %vaarg.in_reg.103 ], [ %80, %vaarg.in_mem.105 ], !dbg !1216
  %81 = load i32*, i32** %vaarg.addr110, !dbg !1221
  store i32* %81, i32** %u, align 8, !dbg !1213, !tbaa !625
  %82 = bitcast i64* %n111 to i8*, !dbg !1224
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !1224
  call void @llvm.dbg.declare(metadata i64* %n111, metadata !508, metadata !629), !dbg !1225
  %83 = load i8**, i8*** %p_format.addr, align 8, !dbg !1226, !tbaa !625
  %84 = load i8*, i8** %83, align 8, !dbg !1228, !tbaa !625
  %85 = load i8, i8* %84, align 1, !dbg !1229, !tbaa !1064
  %conv112 = sext i8 %85 to i32, !dbg !1229
  %cmp = icmp eq i32 %conv112, 35, !dbg !1230
  br i1 %cmp, label %if.then, label %if.else.141, !dbg !1231

if.then:                                          ; preds = %vaarg.end.109
  %86 = load i8**, i8*** %p_format.addr, align 8, !dbg !1232, !tbaa !625
  %87 = load i8*, i8** %86, align 8, !dbg !1234, !tbaa !625
  %incdec.ptr114 = getelementptr i8, i8* %87, i32 1, !dbg !1234
  store i8* %incdec.ptr114, i8** %86, align 8, !dbg !1234, !tbaa !625
  %88 = load i32, i32* %flags.addr, align 4, !dbg !1235, !tbaa !648
  %and = and i32 %88, 1, !dbg !1237
  %tobool = icmp ne i32 %and, 0, !dbg !1237
  br i1 %tobool, label %if.then.115, label %if.else, !dbg !1238

if.then.115:                                      ; preds = %if.then
  %89 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1239, !tbaa !625
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %89, i32 0, i32 0, !dbg !1240
  %gp_offset_p117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 0, !dbg !1241
  %gp_offset118 = load i32, i32* %gp_offset_p117, !dbg !1241
  %fits_in_gp119 = icmp ule i32 %gp_offset118, 40, !dbg !1241
  br i1 %fits_in_gp119, label %vaarg.in_reg.120, label %vaarg.in_mem.122, !dbg !1241

vaarg.in_reg.120:                                 ; preds = %if.then.115
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 3, !dbg !1242
  %reg_save_area121 = load i8*, i8** %90, !dbg !1242
  %91 = getelementptr i8, i8* %reg_save_area121, i32 %gp_offset118, !dbg !1242
  %92 = bitcast i8* %91 to i64*, !dbg !1242
  %93 = add i32 %gp_offset118, 8, !dbg !1242
  store i32 %93, i32* %gp_offset_p117, !dbg !1242
  br label %vaarg.end.126, !dbg !1242

vaarg.in_mem.122:                                 ; preds = %if.then.115
  %overflow_arg_area_p123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 2, !dbg !1244
  %overflow_arg_area124 = load i8*, i8** %overflow_arg_area_p123, !dbg !1244
  %94 = bitcast i8* %overflow_arg_area124 to i64*, !dbg !1244
  %overflow_arg_area.next125 = getelementptr i8, i8* %overflow_arg_area124, i32 8, !dbg !1244
  store i8* %overflow_arg_area.next125, i8** %overflow_arg_area_p123, !dbg !1244
  br label %vaarg.end.126, !dbg !1244

vaarg.end.126:                                    ; preds = %vaarg.in_mem.122, %vaarg.in_reg.120
  %vaarg.addr127 = phi i64* [ %92, %vaarg.in_reg.120 ], [ %94, %vaarg.in_mem.122 ], !dbg !1241
  %95 = load i64, i64* %vaarg.addr127, !dbg !1246
  store i64 %95, i64* %n111, align 8, !dbg !1249, !tbaa !960
  br label %if.end, !dbg !1250

if.else:                                          ; preds = %if.then
  %96 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1251, !tbaa !625
  %arraydecay128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %96, i32 0, i32 0, !dbg !1252
  %gp_offset_p129 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 0, !dbg !1253
  %gp_offset130 = load i32, i32* %gp_offset_p129, !dbg !1253
  %fits_in_gp131 = icmp ule i32 %gp_offset130, 40, !dbg !1253
  br i1 %fits_in_gp131, label %vaarg.in_reg.132, label %vaarg.in_mem.134, !dbg !1253

vaarg.in_reg.132:                                 ; preds = %if.else
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 3, !dbg !1254
  %reg_save_area133 = load i8*, i8** %97, !dbg !1254
  %98 = getelementptr i8, i8* %reg_save_area133, i32 %gp_offset130, !dbg !1254
  %99 = bitcast i8* %98 to i32*, !dbg !1254
  %100 = add i32 %gp_offset130, 8, !dbg !1254
  store i32 %100, i32* %gp_offset_p129, !dbg !1254
  br label %vaarg.end.138, !dbg !1254

vaarg.in_mem.134:                                 ; preds = %if.else
  %overflow_arg_area_p135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 2, !dbg !1255
  %overflow_arg_area136 = load i8*, i8** %overflow_arg_area_p135, !dbg !1255
  %101 = bitcast i8* %overflow_arg_area136 to i32*, !dbg !1255
  %overflow_arg_area.next137 = getelementptr i8, i8* %overflow_arg_area136, i32 8, !dbg !1255
  store i8* %overflow_arg_area.next137, i8** %overflow_arg_area_p135, !dbg !1255
  br label %vaarg.end.138, !dbg !1255

vaarg.end.138:                                    ; preds = %vaarg.in_mem.134, %vaarg.in_reg.132
  %vaarg.addr139 = phi i32* [ %99, %vaarg.in_reg.132 ], [ %101, %vaarg.in_mem.134 ], !dbg !1253
  %102 = load i32, i32* %vaarg.addr139, !dbg !1256
  %conv140 = sext i32 %102 to i64, !dbg !1256
  store i64 %conv140, i64* %n111, align 8, !dbg !1257, !tbaa !960
  br label %if.end

if.end:                                           ; preds = %vaarg.end.138, %vaarg.end.126
  br label %if.end.142, !dbg !1258

if.else.141:                                      ; preds = %vaarg.end.109
  store i64 -1, i64* %n111, align 8, !dbg !1259, !tbaa !960
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.end
  %103 = load i32*, i32** %u, align 8, !dbg !1260, !tbaa !625
  %cmp143 = icmp eq i32* %103, null, !dbg !1262
  br i1 %cmp143, label %if.then.145, label %if.else.146, !dbg !1263

if.then.145:                                      ; preds = %if.end.142
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8, !dbg !1264, !tbaa !625
  %104 = load %struct._object*, %struct._object** %v, align 8, !dbg !1266, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !1267
  %105 = load i64, i64* %ob_refcnt, align 8, !dbg !1268, !tbaa !673
  %inc = add i64 %105, 1, !dbg !1268
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1268, !tbaa !673
  br label %if.end.153, !dbg !1269

if.else.146:                                      ; preds = %if.end.142
  %106 = load i64, i64* %n111, align 8, !dbg !1270, !tbaa !960
  %cmp147 = icmp slt i64 %106, 0, !dbg !1273
  br i1 %cmp147, label %if.then.149, label %if.end.151, !dbg !1274

if.then.149:                                      ; preds = %if.else.146
  %107 = load i32*, i32** %u, align 8, !dbg !1275, !tbaa !625
  %call150 = call i64 @Py_UNICODE_strlen(i32* %107), !dbg !1276
  store i64 %call150, i64* %n111, align 8, !dbg !1277, !tbaa !960
  br label %if.end.151, !dbg !1278

if.end.151:                                       ; preds = %if.then.149, %if.else.146
  %108 = load i32*, i32** %u, align 8, !dbg !1279, !tbaa !625
  %109 = load i64, i64* %n111, align 8, !dbg !1280, !tbaa !960
  %call152 = call %struct._object* @PyUnicode_FromUnicode(i32* %108, i64 %109), !dbg !1281
  store %struct._object* %call152, %struct._object** %v, align 8, !dbg !1282, !tbaa !625
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.151, %if.then.145
  %110 = load %struct._object*, %struct._object** %v, align 8, !dbg !1283, !tbaa !625
  store %struct._object* %110, %struct._object** %retval, !dbg !1284
  %111 = bitcast i64* %n111 to i8*, !dbg !1285
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !1285
  %112 = bitcast i32** %u to i8*, !dbg !1285
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !1285
  %113 = bitcast %struct._object** %v to i8*, !dbg !1285
  call void @llvm.lifetime.end(i64 8, i8* %113) #2, !dbg !1285
  br label %return

sw.bb.154:                                        ; preds = %LeafBlock.55, %LeafBlock.51
  %114 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1286, !tbaa !625
  %arraydecay155 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %114, i32 0, i32 0, !dbg !1287
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 1, !dbg !1288
  %fp_offset = load i32, i32* %fp_offset_p, !dbg !1288
  %fits_in_fp = icmp ule i32 %fp_offset, 160, !dbg !1288
  br i1 %fits_in_fp, label %vaarg.in_reg.156, label %vaarg.in_mem.158, !dbg !1288

vaarg.in_reg.156:                                 ; preds = %sw.bb.154
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 3, !dbg !1289
  %reg_save_area157 = load i8*, i8** %115, !dbg !1289
  %116 = getelementptr i8, i8* %reg_save_area157, i32 %fp_offset, !dbg !1289
  %117 = bitcast i8* %116 to double*, !dbg !1289
  %118 = add i32 %fp_offset, 16, !dbg !1289
  store i32 %118, i32* %fp_offset_p, !dbg !1289
  br label %vaarg.end.162, !dbg !1289

vaarg.in_mem.158:                                 ; preds = %sw.bb.154
  %overflow_arg_area_p159 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 2, !dbg !1290
  %overflow_arg_area160 = load i8*, i8** %overflow_arg_area_p159, !dbg !1290
  %119 = bitcast i8* %overflow_arg_area160 to double*, !dbg !1290
  %overflow_arg_area.next161 = getelementptr i8, i8* %overflow_arg_area160, i32 8, !dbg !1290
  store i8* %overflow_arg_area.next161, i8** %overflow_arg_area_p159, !dbg !1290
  br label %vaarg.end.162, !dbg !1290

vaarg.end.162:                                    ; preds = %vaarg.in_mem.158, %vaarg.in_reg.156
  %vaarg.addr163 = phi double* [ %117, %vaarg.in_reg.156 ], [ %119, %vaarg.in_mem.158 ], !dbg !1288
  %120 = load double, double* %vaarg.addr163, !dbg !1291
  %call164 = call %struct._object* @PyFloat_FromDouble(double %120), !dbg !1292
  store %struct._object* %call164, %struct._object** %retval, !dbg !1293
  br label %return, !dbg !1293

sw.bb.165:                                        ; preds = %LeafBlock.19
  %121 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1294, !tbaa !625
  %arraydecay166 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %121, i32 0, i32 0, !dbg !1295
  %gp_offset_p167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 0, !dbg !1296
  %gp_offset168 = load i32, i32* %gp_offset_p167, !dbg !1296
  %fits_in_gp169 = icmp ule i32 %gp_offset168, 40, !dbg !1296
  br i1 %fits_in_gp169, label %vaarg.in_reg.170, label %vaarg.in_mem.172, !dbg !1296

vaarg.in_reg.170:                                 ; preds = %sw.bb.165
  %122 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 3, !dbg !1297
  %reg_save_area171 = load i8*, i8** %122, !dbg !1297
  %123 = getelementptr i8, i8* %reg_save_area171, i32 %gp_offset168, !dbg !1297
  %124 = bitcast i8* %123 to %struct.Py_complex**, !dbg !1297
  %125 = add i32 %gp_offset168, 8, !dbg !1297
  store i32 %125, i32* %gp_offset_p167, !dbg !1297
  br label %vaarg.end.176, !dbg !1297

vaarg.in_mem.172:                                 ; preds = %sw.bb.165
  %overflow_arg_area_p173 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 2, !dbg !1298
  %overflow_arg_area174 = load i8*, i8** %overflow_arg_area_p173, !dbg !1298
  %126 = bitcast i8* %overflow_arg_area174 to %struct.Py_complex**, !dbg !1298
  %overflow_arg_area.next175 = getelementptr i8, i8* %overflow_arg_area174, i32 8, !dbg !1298
  store i8* %overflow_arg_area.next175, i8** %overflow_arg_area_p173, !dbg !1298
  br label %vaarg.end.176, !dbg !1298

vaarg.end.176:                                    ; preds = %vaarg.in_mem.172, %vaarg.in_reg.170
  %vaarg.addr177 = phi %struct.Py_complex** [ %124, %vaarg.in_reg.170 ], [ %126, %vaarg.in_mem.172 ], !dbg !1296
  %127 = load %struct.Py_complex*, %struct.Py_complex** %vaarg.addr177, !dbg !1299
  %128 = bitcast %struct.Py_complex* %127 to { double, double }*, !dbg !1300
  %129 = getelementptr { double, double }, { double, double }* %128, i32 0, i32 0, !dbg !1300
  %130 = load double, double* %129, align 1, !dbg !1300
  %131 = getelementptr { double, double }, { double, double }* %128, i32 0, i32 1, !dbg !1300
  %132 = load double, double* %131, align 1, !dbg !1300
  %call178 = call %struct._object* @PyComplex_FromCComplex(double %130, double %132), !dbg !1300
  store %struct._object* %call178, %struct._object** %retval, !dbg !1301
  br label %return, !dbg !1301

sw.bb.179:                                        ; preds = %NodeBlock.53
  %133 = bitcast [1 x i8]* %p to i8*, !dbg !1302
  call void @llvm.lifetime.start(i64 1, i8* %133) #2, !dbg !1302
  call void @llvm.dbg.declare(metadata [1 x i8]* %p, metadata !509, metadata !629), !dbg !1303
  %134 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1304, !tbaa !625
  %arraydecay180 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %134, i32 0, i32 0, !dbg !1305
  %gp_offset_p181 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 0, !dbg !1306
  %gp_offset182 = load i32, i32* %gp_offset_p181, !dbg !1306
  %fits_in_gp183 = icmp ule i32 %gp_offset182, 40, !dbg !1306
  br i1 %fits_in_gp183, label %vaarg.in_reg.184, label %vaarg.in_mem.186, !dbg !1306

vaarg.in_reg.184:                                 ; preds = %sw.bb.179
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 3, !dbg !1307
  %reg_save_area185 = load i8*, i8** %135, !dbg !1307
  %136 = getelementptr i8, i8* %reg_save_area185, i32 %gp_offset182, !dbg !1307
  %137 = bitcast i8* %136 to i32*, !dbg !1307
  %138 = add i32 %gp_offset182, 8, !dbg !1307
  store i32 %138, i32* %gp_offset_p181, !dbg !1307
  br label %vaarg.end.190, !dbg !1307

vaarg.in_mem.186:                                 ; preds = %sw.bb.179
  %overflow_arg_area_p187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 2, !dbg !1309
  %overflow_arg_area188 = load i8*, i8** %overflow_arg_area_p187, !dbg !1309
  %139 = bitcast i8* %overflow_arg_area188 to i32*, !dbg !1309
  %overflow_arg_area.next189 = getelementptr i8, i8* %overflow_arg_area188, i32 8, !dbg !1309
  store i8* %overflow_arg_area.next189, i8** %overflow_arg_area_p187, !dbg !1309
  br label %vaarg.end.190, !dbg !1309

vaarg.end.190:                                    ; preds = %vaarg.in_mem.186, %vaarg.in_reg.184
  %vaarg.addr191 = phi i32* [ %137, %vaarg.in_reg.184 ], [ %139, %vaarg.in_mem.186 ], !dbg !1306
  %140 = load i32, i32* %vaarg.addr191, !dbg !1311
  %conv192 = trunc i32 %140 to i8, !dbg !1314
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %p, i32 0, i64 0, !dbg !1315
  store i8 %conv192, i8* %arrayidx, align 1, !dbg !1316, !tbaa !1064
  %arraydecay193 = getelementptr inbounds [1 x i8], [1 x i8]* %p, i32 0, i32 0, !dbg !1317
  %call194 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay193, i64 1), !dbg !1318
  store %struct._object* %call194, %struct._object** %retval, !dbg !1319
  %141 = bitcast [1 x i8]* %p to i8*, !dbg !1320
  call void @llvm.lifetime.end(i64 1, i8* %141) #2, !dbg !1320
  br label %return

sw.bb.195:                                        ; preds = %NodeBlock.13
  %142 = bitcast i32* %i to i8*, !dbg !1321
  call void @llvm.lifetime.start(i64 4, i8* %142) #2, !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %i, metadata !511, metadata !629), !dbg !1322
  %143 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1323, !tbaa !625
  %arraydecay196 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %143, i32 0, i32 0, !dbg !1324
  %gp_offset_p197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 0, !dbg !1325
  %gp_offset198 = load i32, i32* %gp_offset_p197, !dbg !1325
  %fits_in_gp199 = icmp ule i32 %gp_offset198, 40, !dbg !1325
  br i1 %fits_in_gp199, label %vaarg.in_reg.200, label %vaarg.in_mem.202, !dbg !1325

vaarg.in_reg.200:                                 ; preds = %sw.bb.195
  %144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 3, !dbg !1326
  %reg_save_area201 = load i8*, i8** %144, !dbg !1326
  %145 = getelementptr i8, i8* %reg_save_area201, i32 %gp_offset198, !dbg !1326
  %146 = bitcast i8* %145 to i32*, !dbg !1326
  %147 = add i32 %gp_offset198, 8, !dbg !1326
  store i32 %147, i32* %gp_offset_p197, !dbg !1326
  br label %vaarg.end.206, !dbg !1326

vaarg.in_mem.202:                                 ; preds = %sw.bb.195
  %overflow_arg_area_p203 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 2, !dbg !1328
  %overflow_arg_area204 = load i8*, i8** %overflow_arg_area_p203, !dbg !1328
  %148 = bitcast i8* %overflow_arg_area204 to i32*, !dbg !1328
  %overflow_arg_area.next205 = getelementptr i8, i8* %overflow_arg_area204, i32 8, !dbg !1328
  store i8* %overflow_arg_area.next205, i8** %overflow_arg_area_p203, !dbg !1328
  br label %vaarg.end.206, !dbg !1328

vaarg.end.206:                                    ; preds = %vaarg.in_mem.202, %vaarg.in_reg.200
  %vaarg.addr207 = phi i32* [ %146, %vaarg.in_reg.200 ], [ %148, %vaarg.in_mem.202 ], !dbg !1325
  %149 = load i32, i32* %vaarg.addr207, !dbg !1330
  store i32 %149, i32* %i, align 4, !dbg !1322, !tbaa !648
  %150 = load i32, i32* %i, align 4, !dbg !1333, !tbaa !648
  %call208 = call %struct._object* @PyUnicode_FromOrdinal(i32 %150), !dbg !1334
  store %struct._object* %call208, %struct._object** %retval, !dbg !1335
  %151 = bitcast i32* %i to i8*, !dbg !1336
  call void @llvm.lifetime.end(i64 4, i8* %151) #2, !dbg !1336
  br label %return

sw.bb.209:                                        ; preds = %NodeBlock.84, %LeafBlock.72, %LeafBlock.43
  %152 = bitcast %struct._object** %v210 to i8*, !dbg !1337
  call void @llvm.lifetime.start(i64 8, i8* %152) #2, !dbg !1337
  call void @llvm.dbg.declare(metadata %struct._object** %v210, metadata !513, metadata !629), !dbg !1338
  %153 = bitcast i8** %str to i8*, !dbg !1339
  call void @llvm.lifetime.start(i64 8, i8* %153) #2, !dbg !1339
  call void @llvm.dbg.declare(metadata i8** %str, metadata !515, metadata !629), !dbg !1340
  %154 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1341, !tbaa !625
  %arraydecay211 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %154, i32 0, i32 0, !dbg !1342
  %gp_offset_p212 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 0, !dbg !1343
  %gp_offset213 = load i32, i32* %gp_offset_p212, !dbg !1343
  %fits_in_gp214 = icmp ule i32 %gp_offset213, 40, !dbg !1343
  br i1 %fits_in_gp214, label %vaarg.in_reg.215, label %vaarg.in_mem.217, !dbg !1343

vaarg.in_reg.215:                                 ; preds = %sw.bb.209
  %155 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 3, !dbg !1344
  %reg_save_area216 = load i8*, i8** %155, !dbg !1344
  %156 = getelementptr i8, i8* %reg_save_area216, i32 %gp_offset213, !dbg !1344
  %157 = bitcast i8* %156 to i8**, !dbg !1344
  %158 = add i32 %gp_offset213, 8, !dbg !1344
  store i32 %158, i32* %gp_offset_p212, !dbg !1344
  br label %vaarg.end.221, !dbg !1344

vaarg.in_mem.217:                                 ; preds = %sw.bb.209
  %overflow_arg_area_p218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 2, !dbg !1346
  %overflow_arg_area219 = load i8*, i8** %overflow_arg_area_p218, !dbg !1346
  %159 = bitcast i8* %overflow_arg_area219 to i8**, !dbg !1346
  %overflow_arg_area.next220 = getelementptr i8, i8* %overflow_arg_area219, i32 8, !dbg !1346
  store i8* %overflow_arg_area.next220, i8** %overflow_arg_area_p218, !dbg !1346
  br label %vaarg.end.221, !dbg !1346

vaarg.end.221:                                    ; preds = %vaarg.in_mem.217, %vaarg.in_reg.215
  %vaarg.addr222 = phi i8** [ %157, %vaarg.in_reg.215 ], [ %159, %vaarg.in_mem.217 ], !dbg !1343
  %160 = load i8*, i8** %vaarg.addr222, !dbg !1348
  store i8* %160, i8** %str, align 8, !dbg !1340, !tbaa !625
  %161 = bitcast i64* %n223 to i8*, !dbg !1351
  call void @llvm.lifetime.start(i64 8, i8* %161) #2, !dbg !1351
  call void @llvm.dbg.declare(metadata i64* %n223, metadata !516, metadata !629), !dbg !1352
  %162 = load i8**, i8*** %p_format.addr, align 8, !dbg !1353, !tbaa !625
  %163 = load i8*, i8** %162, align 8, !dbg !1355, !tbaa !625
  %164 = load i8, i8* %163, align 1, !dbg !1356, !tbaa !1064
  %conv224 = sext i8 %164 to i32, !dbg !1356
  %cmp225 = icmp eq i32 %conv224, 35, !dbg !1357
  br i1 %cmp225, label %if.then.227, label %if.else.259, !dbg !1358

if.then.227:                                      ; preds = %vaarg.end.221
  %165 = load i8**, i8*** %p_format.addr, align 8, !dbg !1359, !tbaa !625
  %166 = load i8*, i8** %165, align 8, !dbg !1361, !tbaa !625
  %incdec.ptr228 = getelementptr i8, i8* %166, i32 1, !dbg !1361
  store i8* %incdec.ptr228, i8** %165, align 8, !dbg !1361, !tbaa !625
  %167 = load i32, i32* %flags.addr, align 4, !dbg !1362, !tbaa !648
  %and229 = and i32 %167, 1, !dbg !1364
  %tobool230 = icmp ne i32 %and229, 0, !dbg !1364
  br i1 %tobool230, label %if.then.231, label %if.else.244, !dbg !1365

if.then.231:                                      ; preds = %if.then.227
  %168 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1366, !tbaa !625
  %arraydecay232 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %168, i32 0, i32 0, !dbg !1367
  %gp_offset_p233 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 0, !dbg !1368
  %gp_offset234 = load i32, i32* %gp_offset_p233, !dbg !1368
  %fits_in_gp235 = icmp ule i32 %gp_offset234, 40, !dbg !1368
  br i1 %fits_in_gp235, label %vaarg.in_reg.236, label %vaarg.in_mem.238, !dbg !1368

vaarg.in_reg.236:                                 ; preds = %if.then.231
  %169 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 3, !dbg !1369
  %reg_save_area237 = load i8*, i8** %169, !dbg !1369
  %170 = getelementptr i8, i8* %reg_save_area237, i32 %gp_offset234, !dbg !1369
  %171 = bitcast i8* %170 to i64*, !dbg !1369
  %172 = add i32 %gp_offset234, 8, !dbg !1369
  store i32 %172, i32* %gp_offset_p233, !dbg !1369
  br label %vaarg.end.242, !dbg !1369

vaarg.in_mem.238:                                 ; preds = %if.then.231
  %overflow_arg_area_p239 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 2, !dbg !1371
  %overflow_arg_area240 = load i8*, i8** %overflow_arg_area_p239, !dbg !1371
  %173 = bitcast i8* %overflow_arg_area240 to i64*, !dbg !1371
  %overflow_arg_area.next241 = getelementptr i8, i8* %overflow_arg_area240, i32 8, !dbg !1371
  store i8* %overflow_arg_area.next241, i8** %overflow_arg_area_p239, !dbg !1371
  br label %vaarg.end.242, !dbg !1371

vaarg.end.242:                                    ; preds = %vaarg.in_mem.238, %vaarg.in_reg.236
  %vaarg.addr243 = phi i64* [ %171, %vaarg.in_reg.236 ], [ %173, %vaarg.in_mem.238 ], !dbg !1368
  %174 = load i64, i64* %vaarg.addr243, !dbg !1373
  store i64 %174, i64* %n223, align 8, !dbg !1376, !tbaa !960
  br label %if.end.258, !dbg !1377

if.else.244:                                      ; preds = %if.then.227
  %175 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1378, !tbaa !625
  %arraydecay245 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %175, i32 0, i32 0, !dbg !1379
  %gp_offset_p246 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 0, !dbg !1380
  %gp_offset247 = load i32, i32* %gp_offset_p246, !dbg !1380
  %fits_in_gp248 = icmp ule i32 %gp_offset247, 40, !dbg !1380
  br i1 %fits_in_gp248, label %vaarg.in_reg.249, label %vaarg.in_mem.251, !dbg !1380

vaarg.in_reg.249:                                 ; preds = %if.else.244
  %176 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 3, !dbg !1381
  %reg_save_area250 = load i8*, i8** %176, !dbg !1381
  %177 = getelementptr i8, i8* %reg_save_area250, i32 %gp_offset247, !dbg !1381
  %178 = bitcast i8* %177 to i32*, !dbg !1381
  %179 = add i32 %gp_offset247, 8, !dbg !1381
  store i32 %179, i32* %gp_offset_p246, !dbg !1381
  br label %vaarg.end.255, !dbg !1381

vaarg.in_mem.251:                                 ; preds = %if.else.244
  %overflow_arg_area_p252 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 2, !dbg !1382
  %overflow_arg_area253 = load i8*, i8** %overflow_arg_area_p252, !dbg !1382
  %180 = bitcast i8* %overflow_arg_area253 to i32*, !dbg !1382
  %overflow_arg_area.next254 = getelementptr i8, i8* %overflow_arg_area253, i32 8, !dbg !1382
  store i8* %overflow_arg_area.next254, i8** %overflow_arg_area_p252, !dbg !1382
  br label %vaarg.end.255, !dbg !1382

vaarg.end.255:                                    ; preds = %vaarg.in_mem.251, %vaarg.in_reg.249
  %vaarg.addr256 = phi i32* [ %178, %vaarg.in_reg.249 ], [ %180, %vaarg.in_mem.251 ], !dbg !1380
  %181 = load i32, i32* %vaarg.addr256, !dbg !1383
  %conv257 = sext i32 %181 to i64, !dbg !1383
  store i64 %conv257, i64* %n223, align 8, !dbg !1384, !tbaa !960
  br label %if.end.258

if.end.258:                                       ; preds = %vaarg.end.255, %vaarg.end.242
  br label %if.end.260, !dbg !1385

if.else.259:                                      ; preds = %vaarg.end.221
  store i64 -1, i64* %n223, align 8, !dbg !1386, !tbaa !960
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.259, %if.end.258
  %182 = load i8*, i8** %str, align 8, !dbg !1387, !tbaa !625
  %cmp261 = icmp eq i8* %182, null, !dbg !1388
  br i1 %cmp261, label %if.then.263, label %if.else.266, !dbg !1389

if.then.263:                                      ; preds = %if.end.260
  store %struct._object* @_Py_NoneStruct, %struct._object** %v210, align 8, !dbg !1390, !tbaa !625
  %183 = load %struct._object*, %struct._object** %v210, align 8, !dbg !1392, !tbaa !625
  %ob_refcnt264 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 0, !dbg !1393
  %184 = load i64, i64* %ob_refcnt264, align 8, !dbg !1394, !tbaa !673
  %inc265 = add i64 %184, 1, !dbg !1394
  store i64 %inc265, i64* %ob_refcnt264, align 8, !dbg !1394, !tbaa !673
  br label %if.end.277, !dbg !1395

if.else.266:                                      ; preds = %if.end.260
  %185 = load i64, i64* %n223, align 8, !dbg !1396, !tbaa !960
  %cmp267 = icmp slt i64 %185, 0, !dbg !1397
  br i1 %cmp267, label %if.then.269, label %if.end.275, !dbg !1398

if.then.269:                                      ; preds = %if.else.266
  %186 = bitcast i64* %m to i8*, !dbg !1399
  call void @llvm.lifetime.start(i64 8, i8* %186) #2, !dbg !1399
  call void @llvm.dbg.declare(metadata i64* %m, metadata !517, metadata !629), !dbg !1400
  %187 = load i8*, i8** %str, align 8, !dbg !1401, !tbaa !625
  %call270 = call i64 @strlen(i8* %187) #5, !dbg !1402
  store i64 %call270, i64* %m, align 8, !dbg !1400, !tbaa !960
  %188 = load i64, i64* %m, align 8, !dbg !1403, !tbaa !960
  %cmp271 = icmp ugt i64 %188, 9223372036854775807, !dbg !1405
  br i1 %cmp271, label %if.then.273, label %if.end.274, !dbg !1406

if.then.273:                                      ; preds = %if.then.269
  %189 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1407, !tbaa !625
  call void @PyErr_SetString(%struct._object* %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)), !dbg !1409
  store %struct._object* null, %struct._object** %retval, !dbg !1410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1410

if.end.274:                                       ; preds = %if.then.269
  %190 = load i64, i64* %m, align 8, !dbg !1411, !tbaa !960
  store i64 %190, i64* %n223, align 8, !dbg !1412, !tbaa !960
  store i32 0, i32* %cleanup.dest.slot, !dbg !1413
  br label %cleanup, !dbg !1413

cleanup:                                          ; preds = %if.end.274, %if.then.273
  %191 = bitcast i64* %m to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %191) #2, !dbg !1414
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.95

LeafBlock.95:                                     ; preds = %cleanup
  %SwitchLeaf96 = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf96, label %cleanup.cont, label %NewDefault.94

cleanup.cont:                                     ; preds = %LeafBlock.95
  br label %if.end.275, !dbg !1416

if.end.275:                                       ; preds = %cleanup.cont, %if.else.266
  %192 = load i8*, i8** %str, align 8, !dbg !1417, !tbaa !625
  %193 = load i64, i64* %n223, align 8, !dbg !1418, !tbaa !960
  %call276 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %192, i64 %193), !dbg !1419
  store %struct._object* %call276, %struct._object** %v210, align 8, !dbg !1420, !tbaa !625
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.275, %if.then.263
  %194 = load %struct._object*, %struct._object** %v210, align 8, !dbg !1421, !tbaa !625
  store %struct._object* %194, %struct._object** %retval, !dbg !1422
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.278, !dbg !1422

NewDefault.94:                                    ; preds = %LeafBlock.95
  br label %cleanup.278

cleanup.278:                                      ; preds = %NewDefault.94, %if.end.277
  %195 = bitcast i64* %n223 to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !1423
  %196 = bitcast i8** %str to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %196) #2, !dbg !1423
  %197 = bitcast %struct._object** %v210 to i8*, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %197) #2, !dbg !1423
  br label %return

sw.bb.281:                                        ; preds = %NodeBlock.80
  %198 = bitcast %struct._object** %v282 to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %198) #2, !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._object** %v282, metadata !522, metadata !629), !dbg !1425
  %199 = bitcast i8** %str283 to i8*, !dbg !1426
  call void @llvm.lifetime.start(i64 8, i8* %199) #2, !dbg !1426
  call void @llvm.dbg.declare(metadata i8** %str283, metadata !524, metadata !629), !dbg !1427
  %200 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1428, !tbaa !625
  %arraydecay284 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %200, i32 0, i32 0, !dbg !1429
  %gp_offset_p285 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay284, i32 0, i32 0, !dbg !1430
  %gp_offset286 = load i32, i32* %gp_offset_p285, !dbg !1430
  %fits_in_gp287 = icmp ule i32 %gp_offset286, 40, !dbg !1430
  br i1 %fits_in_gp287, label %vaarg.in_reg.288, label %vaarg.in_mem.290, !dbg !1430

vaarg.in_reg.288:                                 ; preds = %sw.bb.281
  %201 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay284, i32 0, i32 3, !dbg !1431
  %reg_save_area289 = load i8*, i8** %201, !dbg !1431
  %202 = getelementptr i8, i8* %reg_save_area289, i32 %gp_offset286, !dbg !1431
  %203 = bitcast i8* %202 to i8**, !dbg !1431
  %204 = add i32 %gp_offset286, 8, !dbg !1431
  store i32 %204, i32* %gp_offset_p285, !dbg !1431
  br label %vaarg.end.294, !dbg !1431

vaarg.in_mem.290:                                 ; preds = %sw.bb.281
  %overflow_arg_area_p291 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay284, i32 0, i32 2, !dbg !1433
  %overflow_arg_area292 = load i8*, i8** %overflow_arg_area_p291, !dbg !1433
  %205 = bitcast i8* %overflow_arg_area292 to i8**, !dbg !1433
  %overflow_arg_area.next293 = getelementptr i8, i8* %overflow_arg_area292, i32 8, !dbg !1433
  store i8* %overflow_arg_area.next293, i8** %overflow_arg_area_p291, !dbg !1433
  br label %vaarg.end.294, !dbg !1433

vaarg.end.294:                                    ; preds = %vaarg.in_mem.290, %vaarg.in_reg.288
  %vaarg.addr295 = phi i8** [ %203, %vaarg.in_reg.288 ], [ %205, %vaarg.in_mem.290 ], !dbg !1430
  %206 = load i8*, i8** %vaarg.addr295, !dbg !1435
  store i8* %206, i8** %str283, align 8, !dbg !1427, !tbaa !625
  %207 = bitcast i64* %n296 to i8*, !dbg !1438
  call void @llvm.lifetime.start(i64 8, i8* %207) #2, !dbg !1438
  call void @llvm.dbg.declare(metadata i64* %n296, metadata !525, metadata !629), !dbg !1439
  %208 = load i8**, i8*** %p_format.addr, align 8, !dbg !1440, !tbaa !625
  %209 = load i8*, i8** %208, align 8, !dbg !1442, !tbaa !625
  %210 = load i8, i8* %209, align 1, !dbg !1443, !tbaa !1064
  %conv297 = sext i8 %210 to i32, !dbg !1443
  %cmp298 = icmp eq i32 %conv297, 35, !dbg !1444
  br i1 %cmp298, label %if.then.300, label %if.else.332, !dbg !1445

if.then.300:                                      ; preds = %vaarg.end.294
  %211 = load i8**, i8*** %p_format.addr, align 8, !dbg !1446, !tbaa !625
  %212 = load i8*, i8** %211, align 8, !dbg !1448, !tbaa !625
  %incdec.ptr301 = getelementptr i8, i8* %212, i32 1, !dbg !1448
  store i8* %incdec.ptr301, i8** %211, align 8, !dbg !1448, !tbaa !625
  %213 = load i32, i32* %flags.addr, align 4, !dbg !1449, !tbaa !648
  %and302 = and i32 %213, 1, !dbg !1451
  %tobool303 = icmp ne i32 %and302, 0, !dbg !1451
  br i1 %tobool303, label %if.then.304, label %if.else.317, !dbg !1452

if.then.304:                                      ; preds = %if.then.300
  %214 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1453, !tbaa !625
  %arraydecay305 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %214, i32 0, i32 0, !dbg !1454
  %gp_offset_p306 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay305, i32 0, i32 0, !dbg !1455
  %gp_offset307 = load i32, i32* %gp_offset_p306, !dbg !1455
  %fits_in_gp308 = icmp ule i32 %gp_offset307, 40, !dbg !1455
  br i1 %fits_in_gp308, label %vaarg.in_reg.309, label %vaarg.in_mem.311, !dbg !1455

vaarg.in_reg.309:                                 ; preds = %if.then.304
  %215 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay305, i32 0, i32 3, !dbg !1456
  %reg_save_area310 = load i8*, i8** %215, !dbg !1456
  %216 = getelementptr i8, i8* %reg_save_area310, i32 %gp_offset307, !dbg !1456
  %217 = bitcast i8* %216 to i64*, !dbg !1456
  %218 = add i32 %gp_offset307, 8, !dbg !1456
  store i32 %218, i32* %gp_offset_p306, !dbg !1456
  br label %vaarg.end.315, !dbg !1456

vaarg.in_mem.311:                                 ; preds = %if.then.304
  %overflow_arg_area_p312 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay305, i32 0, i32 2, !dbg !1458
  %overflow_arg_area313 = load i8*, i8** %overflow_arg_area_p312, !dbg !1458
  %219 = bitcast i8* %overflow_arg_area313 to i64*, !dbg !1458
  %overflow_arg_area.next314 = getelementptr i8, i8* %overflow_arg_area313, i32 8, !dbg !1458
  store i8* %overflow_arg_area.next314, i8** %overflow_arg_area_p312, !dbg !1458
  br label %vaarg.end.315, !dbg !1458

vaarg.end.315:                                    ; preds = %vaarg.in_mem.311, %vaarg.in_reg.309
  %vaarg.addr316 = phi i64* [ %217, %vaarg.in_reg.309 ], [ %219, %vaarg.in_mem.311 ], !dbg !1455
  %220 = load i64, i64* %vaarg.addr316, !dbg !1460
  store i64 %220, i64* %n296, align 8, !dbg !1463, !tbaa !960
  br label %if.end.331, !dbg !1464

if.else.317:                                      ; preds = %if.then.300
  %221 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1465, !tbaa !625
  %arraydecay318 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %221, i32 0, i32 0, !dbg !1466
  %gp_offset_p319 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay318, i32 0, i32 0, !dbg !1467
  %gp_offset320 = load i32, i32* %gp_offset_p319, !dbg !1467
  %fits_in_gp321 = icmp ule i32 %gp_offset320, 40, !dbg !1467
  br i1 %fits_in_gp321, label %vaarg.in_reg.322, label %vaarg.in_mem.324, !dbg !1467

vaarg.in_reg.322:                                 ; preds = %if.else.317
  %222 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay318, i32 0, i32 3, !dbg !1468
  %reg_save_area323 = load i8*, i8** %222, !dbg !1468
  %223 = getelementptr i8, i8* %reg_save_area323, i32 %gp_offset320, !dbg !1468
  %224 = bitcast i8* %223 to i32*, !dbg !1468
  %225 = add i32 %gp_offset320, 8, !dbg !1468
  store i32 %225, i32* %gp_offset_p319, !dbg !1468
  br label %vaarg.end.328, !dbg !1468

vaarg.in_mem.324:                                 ; preds = %if.else.317
  %overflow_arg_area_p325 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay318, i32 0, i32 2, !dbg !1469
  %overflow_arg_area326 = load i8*, i8** %overflow_arg_area_p325, !dbg !1469
  %226 = bitcast i8* %overflow_arg_area326 to i32*, !dbg !1469
  %overflow_arg_area.next327 = getelementptr i8, i8* %overflow_arg_area326, i32 8, !dbg !1469
  store i8* %overflow_arg_area.next327, i8** %overflow_arg_area_p325, !dbg !1469
  br label %vaarg.end.328, !dbg !1469

vaarg.end.328:                                    ; preds = %vaarg.in_mem.324, %vaarg.in_reg.322
  %vaarg.addr329 = phi i32* [ %224, %vaarg.in_reg.322 ], [ %226, %vaarg.in_mem.324 ], !dbg !1467
  %227 = load i32, i32* %vaarg.addr329, !dbg !1470
  %conv330 = sext i32 %227 to i64, !dbg !1470
  store i64 %conv330, i64* %n296, align 8, !dbg !1471, !tbaa !960
  br label %if.end.331

if.end.331:                                       ; preds = %vaarg.end.328, %vaarg.end.315
  br label %if.end.333, !dbg !1472

if.else.332:                                      ; preds = %vaarg.end.294
  store i64 -1, i64* %n296, align 8, !dbg !1473, !tbaa !960
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.end.331
  %228 = load i8*, i8** %str283, align 8, !dbg !1474, !tbaa !625
  %cmp334 = icmp eq i8* %228, null, !dbg !1475
  br i1 %cmp334, label %if.then.336, label %if.else.339, !dbg !1476

if.then.336:                                      ; preds = %if.end.333
  store %struct._object* @_Py_NoneStruct, %struct._object** %v282, align 8, !dbg !1477, !tbaa !625
  %229 = load %struct._object*, %struct._object** %v282, align 8, !dbg !1479, !tbaa !625
  %ob_refcnt337 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 0, !dbg !1480
  %230 = load i64, i64* %ob_refcnt337, align 8, !dbg !1481, !tbaa !673
  %inc338 = add i64 %230, 1, !dbg !1481
  store i64 %inc338, i64* %ob_refcnt337, align 8, !dbg !1481, !tbaa !673
  br label %if.end.354, !dbg !1482

if.else.339:                                      ; preds = %if.end.333
  %231 = load i64, i64* %n296, align 8, !dbg !1483, !tbaa !960
  %cmp340 = icmp slt i64 %231, 0, !dbg !1484
  br i1 %cmp340, label %if.then.342, label %if.end.352, !dbg !1485

if.then.342:                                      ; preds = %if.else.339
  %232 = bitcast i64* %m343 to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 8, i8* %232) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata i64* %m343, metadata !526, metadata !629), !dbg !1487
  %233 = load i8*, i8** %str283, align 8, !dbg !1488, !tbaa !625
  %call344 = call i64 @strlen(i8* %233) #5, !dbg !1489
  store i64 %call344, i64* %m343, align 8, !dbg !1487, !tbaa !960
  %234 = load i64, i64* %m343, align 8, !dbg !1490, !tbaa !960
  %cmp345 = icmp ugt i64 %234, 9223372036854775807, !dbg !1492
  br i1 %cmp345, label %if.then.347, label %if.end.348, !dbg !1493

if.then.347:                                      ; preds = %if.then.342
  %235 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1494, !tbaa !625
  call void @PyErr_SetString(%struct._object* %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0)), !dbg !1496
  store %struct._object* null, %struct._object** %retval, !dbg !1497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.349, !dbg !1497

if.end.348:                                       ; preds = %if.then.342
  %236 = load i64, i64* %m343, align 8, !dbg !1498, !tbaa !960
  store i64 %236, i64* %n296, align 8, !dbg !1499, !tbaa !960
  store i32 0, i32* %cleanup.dest.slot, !dbg !1500
  br label %cleanup.349, !dbg !1500

cleanup.349:                                      ; preds = %if.end.348, %if.then.347
  %237 = bitcast i64* %m343 to i8*, !dbg !1501
  call void @llvm.lifetime.end(i64 8, i8* %237) #2, !dbg !1501
  %cleanup.dest.350 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.98

LeafBlock.98:                                     ; preds = %cleanup.349
  %SwitchLeaf99 = icmp eq i32 %cleanup.dest.350, 0
  br i1 %SwitchLeaf99, label %cleanup.cont.351, label %NewDefault.97

cleanup.cont.351:                                 ; preds = %LeafBlock.98
  br label %if.end.352, !dbg !1503

if.end.352:                                       ; preds = %cleanup.cont.351, %if.else.339
  %238 = load i8*, i8** %str283, align 8, !dbg !1504, !tbaa !625
  %239 = load i64, i64* %n296, align 8, !dbg !1505, !tbaa !960
  %call353 = call %struct._object* @PyBytes_FromStringAndSize(i8* %238, i64 %239), !dbg !1506
  store %struct._object* %call353, %struct._object** %v282, align 8, !dbg !1507, !tbaa !625
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.352, %if.then.336
  %240 = load %struct._object*, %struct._object** %v282, align 8, !dbg !1508, !tbaa !625
  store %struct._object* %240, %struct._object** %retval, !dbg !1509
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.355, !dbg !1509

NewDefault.97:                                    ; preds = %LeafBlock.98
  br label %cleanup.355

cleanup.355:                                      ; preds = %NewDefault.97, %if.end.354
  %241 = bitcast i64* %n296 to i8*, !dbg !1510
  call void @llvm.lifetime.end(i64 8, i8* %241) #2, !dbg !1510
  %242 = bitcast i8** %str283 to i8*, !dbg !1510
  call void @llvm.lifetime.end(i64 8, i8* %242) #2, !dbg !1510
  %243 = bitcast %struct._object** %v282 to i8*, !dbg !1510
  call void @llvm.lifetime.end(i64 8, i8* %243) #2, !dbg !1510
  br label %return

sw.bb.358:                                        ; preds = %LeafBlock.33, %LeafBlock.31
  %244 = load i8**, i8*** %p_format.addr, align 8, !dbg !1511, !tbaa !625
  %245 = load i8*, i8** %244, align 8, !dbg !1512, !tbaa !625
  %246 = load i8, i8* %245, align 1, !dbg !1513, !tbaa !1064
  %conv359 = sext i8 %246 to i32, !dbg !1513
  %cmp360 = icmp eq i32 %conv359, 38, !dbg !1514
  br i1 %cmp360, label %if.then.362, label %if.else.391, !dbg !1515

if.then.362:                                      ; preds = %sw.bb.358
  %247 = bitcast %struct._object* (i8*)** %func to i8*, !dbg !1516
  call void @llvm.lifetime.start(i64 8, i8* %247) #2, !dbg !1516
  call void @llvm.dbg.declare(metadata %struct._object* (i8*)** %func, metadata !531, metadata !629), !dbg !1517
  %248 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1518, !tbaa !625
  %arraydecay363 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %248, i32 0, i32 0, !dbg !1519
  %gp_offset_p364 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay363, i32 0, i32 0, !dbg !1520
  %gp_offset365 = load i32, i32* %gp_offset_p364, !dbg !1520
  %fits_in_gp366 = icmp ule i32 %gp_offset365, 40, !dbg !1520
  br i1 %fits_in_gp366, label %vaarg.in_reg.367, label %vaarg.in_mem.369, !dbg !1520

vaarg.in_reg.367:                                 ; preds = %if.then.362
  %249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay363, i32 0, i32 3, !dbg !1521
  %reg_save_area368 = load i8*, i8** %249, !dbg !1521
  %250 = getelementptr i8, i8* %reg_save_area368, i32 %gp_offset365, !dbg !1521
  %251 = bitcast i8* %250 to %struct._object* (i8*)**, !dbg !1521
  %252 = add i32 %gp_offset365, 8, !dbg !1521
  store i32 %252, i32* %gp_offset_p364, !dbg !1521
  br label %vaarg.end.373, !dbg !1521

vaarg.in_mem.369:                                 ; preds = %if.then.362
  %overflow_arg_area_p370 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay363, i32 0, i32 2, !dbg !1523
  %overflow_arg_area371 = load i8*, i8** %overflow_arg_area_p370, !dbg !1523
  %253 = bitcast i8* %overflow_arg_area371 to %struct._object* (i8*)**, !dbg !1523
  %overflow_arg_area.next372 = getelementptr i8, i8* %overflow_arg_area371, i32 8, !dbg !1523
  store i8* %overflow_arg_area.next372, i8** %overflow_arg_area_p370, !dbg !1523
  br label %vaarg.end.373, !dbg !1523

vaarg.end.373:                                    ; preds = %vaarg.in_mem.369, %vaarg.in_reg.367
  %vaarg.addr374 = phi %struct._object* (i8*)** [ %251, %vaarg.in_reg.367 ], [ %253, %vaarg.in_mem.369 ], !dbg !1520
  %254 = load %struct._object* (i8*)*, %struct._object* (i8*)** %vaarg.addr374, !dbg !1525
  store %struct._object* (i8*)* %254, %struct._object* (i8*)** %func, align 8, !dbg !1517, !tbaa !625
  %255 = bitcast i8** %arg to i8*, !dbg !1528
  call void @llvm.lifetime.start(i64 8, i8* %255) #2, !dbg !1528
  call void @llvm.dbg.declare(metadata i8** %arg, metadata !538, metadata !629), !dbg !1529
  %256 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1530, !tbaa !625
  %arraydecay375 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %256, i32 0, i32 0, !dbg !1531
  %gp_offset_p376 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay375, i32 0, i32 0, !dbg !1532
  %gp_offset377 = load i32, i32* %gp_offset_p376, !dbg !1532
  %fits_in_gp378 = icmp ule i32 %gp_offset377, 40, !dbg !1532
  br i1 %fits_in_gp378, label %vaarg.in_reg.379, label %vaarg.in_mem.381, !dbg !1532

vaarg.in_reg.379:                                 ; preds = %vaarg.end.373
  %257 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay375, i32 0, i32 3, !dbg !1533
  %reg_save_area380 = load i8*, i8** %257, !dbg !1533
  %258 = getelementptr i8, i8* %reg_save_area380, i32 %gp_offset377, !dbg !1533
  %259 = bitcast i8* %258 to i8**, !dbg !1533
  %260 = add i32 %gp_offset377, 8, !dbg !1533
  store i32 %260, i32* %gp_offset_p376, !dbg !1533
  br label %vaarg.end.385, !dbg !1533

vaarg.in_mem.381:                                 ; preds = %vaarg.end.373
  %overflow_arg_area_p382 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay375, i32 0, i32 2, !dbg !1534
  %overflow_arg_area383 = load i8*, i8** %overflow_arg_area_p382, !dbg !1534
  %261 = bitcast i8* %overflow_arg_area383 to i8**, !dbg !1534
  %overflow_arg_area.next384 = getelementptr i8, i8* %overflow_arg_area383, i32 8, !dbg !1534
  store i8* %overflow_arg_area.next384, i8** %overflow_arg_area_p382, !dbg !1534
  br label %vaarg.end.385, !dbg !1534

vaarg.end.385:                                    ; preds = %vaarg.in_mem.381, %vaarg.in_reg.379
  %vaarg.addr386 = phi i8** [ %259, %vaarg.in_reg.379 ], [ %261, %vaarg.in_mem.381 ], !dbg !1532
  %262 = load i8*, i8** %vaarg.addr386, !dbg !1535
  store i8* %262, i8** %arg, align 8, !dbg !1529, !tbaa !625
  %263 = load i8**, i8*** %p_format.addr, align 8, !dbg !1536, !tbaa !625
  %264 = load i8*, i8** %263, align 8, !dbg !1537, !tbaa !625
  %incdec.ptr387 = getelementptr i8, i8* %264, i32 1, !dbg !1537
  store i8* %incdec.ptr387, i8** %263, align 8, !dbg !1537, !tbaa !625
  %265 = load %struct._object* (i8*)*, %struct._object* (i8*)** %func, align 8, !dbg !1538, !tbaa !625
  %266 = load i8*, i8** %arg, align 8, !dbg !1539, !tbaa !625
  %call388 = call %struct._object* %265(i8* %266), !dbg !1540
  store %struct._object* %call388, %struct._object** %retval, !dbg !1541
  store i32 1, i32* %cleanup.dest.slot
  %267 = bitcast i8** %arg to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 8, i8* %267) #2, !dbg !1542
  %268 = bitcast %struct._object* (i8*)** %func to i8*, !dbg !1542
  call void @llvm.lifetime.end(i64 8, i8* %268) #2, !dbg !1542
  br label %return

if.else.391:                                      ; preds = %sw.bb.358
  %269 = bitcast %struct._object** %v392 to i8*, !dbg !1543
  call void @llvm.lifetime.start(i64 8, i8* %269) #2, !dbg !1543
  call void @llvm.dbg.declare(metadata %struct._object** %v392, metadata !539, metadata !629), !dbg !1544
  %270 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1545, !tbaa !625
  %arraydecay393 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %270, i32 0, i32 0, !dbg !1546
  %gp_offset_p394 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay393, i32 0, i32 0, !dbg !1547
  %gp_offset395 = load i32, i32* %gp_offset_p394, !dbg !1547
  %fits_in_gp396 = icmp ule i32 %gp_offset395, 40, !dbg !1547
  br i1 %fits_in_gp396, label %vaarg.in_reg.397, label %vaarg.in_mem.399, !dbg !1547

vaarg.in_reg.397:                                 ; preds = %if.else.391
  %271 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay393, i32 0, i32 3, !dbg !1548
  %reg_save_area398 = load i8*, i8** %271, !dbg !1548
  %272 = getelementptr i8, i8* %reg_save_area398, i32 %gp_offset395, !dbg !1548
  %273 = bitcast i8* %272 to %struct._object**, !dbg !1548
  %274 = add i32 %gp_offset395, 8, !dbg !1548
  store i32 %274, i32* %gp_offset_p394, !dbg !1548
  br label %vaarg.end.403, !dbg !1548

vaarg.in_mem.399:                                 ; preds = %if.else.391
  %overflow_arg_area_p400 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay393, i32 0, i32 2, !dbg !1550
  %overflow_arg_area401 = load i8*, i8** %overflow_arg_area_p400, !dbg !1550
  %275 = bitcast i8* %overflow_arg_area401 to %struct._object**, !dbg !1550
  %overflow_arg_area.next402 = getelementptr i8, i8* %overflow_arg_area401, i32 8, !dbg !1550
  store i8* %overflow_arg_area.next402, i8** %overflow_arg_area_p400, !dbg !1550
  br label %vaarg.end.403, !dbg !1550

vaarg.end.403:                                    ; preds = %vaarg.in_mem.399, %vaarg.in_reg.397
  %vaarg.addr404 = phi %struct._object** [ %273, %vaarg.in_reg.397 ], [ %275, %vaarg.in_mem.399 ], !dbg !1547
  %276 = load %struct._object*, %struct._object** %vaarg.addr404, !dbg !1552
  store %struct._object* %276, %struct._object** %v392, align 8, !dbg !1555, !tbaa !625
  %277 = load %struct._object*, %struct._object** %v392, align 8, !dbg !1556, !tbaa !625
  %cmp405 = icmp ne %struct._object* %277, null, !dbg !1558
  br i1 %cmp405, label %if.then.407, label %if.else.415, !dbg !1559

if.then.407:                                      ; preds = %vaarg.end.403
  %278 = load i8**, i8*** %p_format.addr, align 8, !dbg !1560, !tbaa !625
  %279 = load i8*, i8** %278, align 8, !dbg !1563, !tbaa !625
  %add.ptr = getelementptr i8, i8* %279, i64 -1, !dbg !1564
  %280 = load i8, i8* %add.ptr, align 1, !dbg !1565, !tbaa !1064
  %conv408 = sext i8 %280 to i32, !dbg !1565
  %cmp409 = icmp ne i32 %conv408, 78, !dbg !1566
  br i1 %cmp409, label %if.then.411, label %if.end.414, !dbg !1567

if.then.411:                                      ; preds = %if.then.407
  %281 = load %struct._object*, %struct._object** %v392, align 8, !dbg !1568, !tbaa !625
  %ob_refcnt412 = getelementptr inbounds %struct._object, %struct._object* %281, i32 0, i32 0, !dbg !1569
  %282 = load i64, i64* %ob_refcnt412, align 8, !dbg !1570, !tbaa !673
  %inc413 = add i64 %282, 1, !dbg !1570
  store i64 %inc413, i64* %ob_refcnt412, align 8, !dbg !1570, !tbaa !673
  br label %if.end.414, !dbg !1571

if.end.414:                                       ; preds = %if.then.411, %if.then.407
  br label %if.end.420, !dbg !1572

if.else.415:                                      ; preds = %vaarg.end.403
  %call416 = call %struct._object* @PyErr_Occurred(), !dbg !1573
  %tobool417 = icmp ne %struct._object* %call416, null, !dbg !1573
  br i1 %tobool417, label %if.end.419, label %if.then.418, !dbg !1575

if.then.418:                                      ; preds = %if.else.415
  %283 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1576, !tbaa !625
  call void @PyErr_SetString(%struct._object* %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)), !dbg !1577
  br label %if.end.419, !dbg !1577

if.end.419:                                       ; preds = %if.then.418, %if.else.415
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.end.414
  %284 = load %struct._object*, %struct._object** %v392, align 8, !dbg !1578, !tbaa !625
  store %struct._object* %284, %struct._object** %retval, !dbg !1579
  store i32 1, i32* %cleanup.dest.slot
  %285 = bitcast %struct._object** %v392 to i8*, !dbg !1580
  call void @llvm.lifetime.end(i64 8, i8* %285) #2, !dbg !1580
  br label %return

sw.bb.422:                                        ; preds = %LeafBlock.9, %LeafBlock.7, %LeafBlock.1, %LeafBlock
  br label %sw.epilog, !dbg !1581

NewDefault:                                       ; preds = %LeafBlock.82, %LeafBlock.78, %LeafBlock.72, %LeafBlock.70, %LeafBlock.66, %LeafBlock.57, %LeafBlock.55, %LeafBlock.51, %LeafBlock.45, %LeafBlock.43, %LeafBlock.33, %LeafBlock.31, %LeafBlock.27, %LeafBlock.21, %LeafBlock.19, %LeafBlock.9, %LeafBlock.7, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %286 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1582, !tbaa !625
  call void @PyErr_SetString(%struct._object* %286, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)), !dbg !1583
  store %struct._object* null, %struct._object** %retval, !dbg !1584
  br label %return, !dbg !1584

sw.epilog:                                        ; preds = %sw.bb.422
  br label %for.cond, !dbg !1585

return:                                           ; preds = %sw.default, %if.end.420, %vaarg.end.385, %cleanup.355, %cleanup.278, %vaarg.end.206, %vaarg.end.190, %vaarg.end.176, %vaarg.end.162, %if.end.153, %vaarg.end.95, %vaarg.end.81, %vaarg.end.67, %vaarg.end.52, %vaarg.end.37, %vaarg.end.22, %vaarg.end, %sw.bb.5, %sw.bb.2, %sw.bb
  %287 = load %struct._object*, %struct._object** %retval, !dbg !1586
  ret %struct._object* %287, !dbg !1586
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mktuple(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %w = alloca %struct._object*, align 8
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !595, metadata !629), !dbg !1587
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !596, metadata !629), !dbg !1588
  store i32 %endchar, i32* %endchar.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %endchar.addr, metadata !597, metadata !629), !dbg !1589
  store i32 %n, i32* %n.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !598, metadata !629), !dbg !1590
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !599, metadata !629), !dbg !1591
  %0 = bitcast %struct._object** %v to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1592
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !600, metadata !629), !dbg !1593
  %1 = bitcast i32* %i to i8*, !dbg !1594
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1594
  call void @llvm.dbg.declare(metadata i32* %i, metadata !601, metadata !629), !dbg !1595
  %2 = bitcast i32* %itemfailed to i8*, !dbg !1596
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1596
  call void @llvm.dbg.declare(metadata i32* %itemfailed, metadata !602, metadata !629), !dbg !1597
  store i32 0, i32* %itemfailed, align 4, !dbg !1597, !tbaa !648
  %3 = load i32, i32* %n.addr, align 4, !dbg !1598, !tbaa !648
  %cmp = icmp slt i32 %3, 0, !dbg !1600
  br i1 %cmp, label %if.then, label %if.end, !dbg !1601

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1602

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !dbg !1603, !tbaa !648
  %conv = sext i32 %4 to i64, !dbg !1603
  %call = call %struct._object* @PyTuple_New(i64 %conv), !dbg !1605
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !1606, !tbaa !625
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1607
  br i1 %cmp1, label %if.then.3, label %if.end.4, !dbg !1608

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1609

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1610, !tbaa !648
  br label %for.cond, !dbg !1611

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load i32, i32* %i, align 4, !dbg !1612, !tbaa !648
  %6 = load i32, i32* %n.addr, align 4, !dbg !1615, !tbaa !648
  %cmp5 = icmp slt i32 %5, %6, !dbg !1616
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1617

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct._object** %w to i8*, !dbg !1618
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1618
  call void @llvm.dbg.declare(metadata %struct._object** %w, metadata !603, metadata !629), !dbg !1619
  %8 = load i32, i32* %itemfailed, align 4, !dbg !1620, !tbaa !648
  %tobool = icmp ne i32 %8, 0, !dbg !1620
  br i1 %tobool, label %if.then.7, label %if.else, !dbg !1621

if.then.7:                                        ; preds = %for.body
  %9 = bitcast %struct._object** %exception to i8*, !dbg !1622
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1622
  call void @llvm.dbg.declare(metadata %struct._object** %exception, metadata !607, metadata !629), !dbg !1623
  %10 = bitcast %struct._object** %value to i8*, !dbg !1622
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1622
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !610, metadata !629), !dbg !1624
  %11 = bitcast %struct._object** %tb to i8*, !dbg !1622
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1622
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !611, metadata !629), !dbg !1625
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb), !dbg !1626
  %12 = load i8**, i8*** %p_format.addr, align 8, !dbg !1627, !tbaa !625
  %13 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1628, !tbaa !625
  %14 = load i32, i32* %flags.addr, align 4, !dbg !1629, !tbaa !648
  %call8 = call %struct._object* @do_mkvalue(i8** %12, [1 x %struct.__va_list_tag]* %13, i32 %14), !dbg !1630
  store %struct._object* %call8, %struct._object** %w, align 8, !dbg !1631, !tbaa !625
  %15 = load %struct._object*, %struct._object** %exception, align 8, !dbg !1632, !tbaa !625
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !1633, !tbaa !625
  %17 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1634, !tbaa !625
  call void @PyErr_Restore(%struct._object* %15, %struct._object* %16, %struct._object* %17), !dbg !1635
  %18 = bitcast %struct._object** %tb to i8*, !dbg !1636
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1636
  %19 = bitcast %struct._object** %value to i8*, !dbg !1636
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1636
  %20 = bitcast %struct._object** %exception to i8*, !dbg !1636
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1636
  br label %if.end.10, !dbg !1637

if.else:                                          ; preds = %for.body
  %21 = load i8**, i8*** %p_format.addr, align 8, !dbg !1638, !tbaa !625
  %22 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1640, !tbaa !625
  %23 = load i32, i32* %flags.addr, align 4, !dbg !1641, !tbaa !648
  %call9 = call %struct._object* @do_mkvalue(i8** %21, [1 x %struct.__va_list_tag]* %22, i32 %23), !dbg !1642
  store %struct._object* %call9, %struct._object** %w, align 8, !dbg !1643, !tbaa !625
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %24 = load %struct._object*, %struct._object** %w, align 8, !dbg !1644, !tbaa !625
  %cmp11 = icmp eq %struct._object* %24, null, !dbg !1646
  br i1 %cmp11, label %if.then.13, label %if.end.14, !dbg !1647

if.then.13:                                       ; preds = %if.end.10
  store i32 1, i32* %itemfailed, align 4, !dbg !1648, !tbaa !648
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1650, !tbaa !673
  %inc = add i64 %25, 1, !dbg !1650
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1650, !tbaa !673
  store %struct._object* @_Py_NoneStruct, %struct._object** %w, align 8, !dbg !1651, !tbaa !625
  br label %if.end.14, !dbg !1652

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %26 = load %struct._object*, %struct._object** %w, align 8, !dbg !1653, !tbaa !625
  %27 = load i32, i32* %i, align 4, !dbg !1654, !tbaa !648
  %idxprom = sext i32 %27 to i64, !dbg !1655
  %28 = load %struct._object*, %struct._object** %v, align 8, !dbg !1656, !tbaa !625
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !1657
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !1658
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1655
  store %struct._object* %26, %struct._object** %arrayidx, align 8, !dbg !1659, !tbaa !625
  %30 = bitcast %struct._object** %w to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1660
  br label %for.inc, !dbg !1661

for.inc:                                          ; preds = %if.end.14
  %31 = load i32, i32* %i, align 4, !dbg !1662, !tbaa !648
  %inc15 = add i32 %31, 1, !dbg !1662
  store i32 %inc15, i32* %i, align 4, !dbg !1662, !tbaa !648
  br label %for.cond, !dbg !1663

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %itemfailed, align 4, !dbg !1664, !tbaa !648
  %tobool16 = icmp ne i32 %32, 0, !dbg !1664
  br i1 %tobool16, label %if.then.17, label %if.end.23, !dbg !1665

if.then.17:                                       ; preds = %for.end
  br label %do.body, !dbg !1666

do.body:                                          ; preds = %if.then.17
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1667
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !1667
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !612, metadata !629), !dbg !1669
  %34 = load %struct._object*, %struct._object** %v, align 8, !dbg !1670, !tbaa !625
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8, !dbg !1669, !tbaa !625
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1671, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1673
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1674, !tbaa !673
  %dec = add i64 %36, -1, !dbg !1674
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1674, !tbaa !673
  %cmp18 = icmp ne i64 %dec, 0, !dbg !1675
  br i1 %cmp18, label %if.then.20, label %if.else.21, !dbg !1676

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !1677

if.else.21:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1679, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1681
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1681, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1682
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1682, !tbaa !760
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1683, !tbaa !625
  call void %39(%struct._object* %40), !dbg !1684
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1685
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1685
  br label %do.cond, !dbg !1687

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !1688

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1690

if.end.23:                                        ; preds = %for.end
  %42 = load i8**, i8*** %p_format.addr, align 8, !dbg !1691, !tbaa !625
  %43 = load i8*, i8** %42, align 8, !dbg !1692, !tbaa !625
  %44 = load i8, i8* %43, align 1, !dbg !1693, !tbaa !1064
  %conv24 = sext i8 %44 to i32, !dbg !1693
  %45 = load i32, i32* %endchar.addr, align 4, !dbg !1694, !tbaa !648
  %cmp25 = icmp ne i32 %conv24, %45, !dbg !1695
  br i1 %cmp25, label %if.then.27, label %if.end.41, !dbg !1696

if.then.27:                                       ; preds = %if.end.23
  br label %do.body.28, !dbg !1697

do.body.28:                                       ; preds = %if.then.27
  %46 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !1698
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !1698
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp29, metadata !616, metadata !629), !dbg !1700
  %47 = load %struct._object*, %struct._object** %v, align 8, !dbg !1701, !tbaa !625
  store %struct._object* %47, %struct._object** %_py_decref_tmp29, align 8, !dbg !1700, !tbaa !625
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1702, !tbaa !625
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !1704
  %49 = load i64, i64* %ob_refcnt30, align 8, !dbg !1705, !tbaa !673
  %dec31 = add i64 %49, -1, !dbg !1705
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !1705, !tbaa !673
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !1706
  br i1 %cmp32, label %if.then.34, label %if.else.35, !dbg !1707

if.then.34:                                       ; preds = %do.body.28
  br label %if.end.38, !dbg !1708

if.else.35:                                       ; preds = %do.body.28
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1710, !tbaa !625
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !1712
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !1712, !tbaa !758
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !1713
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !1713, !tbaa !760
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8, !dbg !1714, !tbaa !625
  call void %52(%struct._object* %53), !dbg !1715
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %54 = bitcast %struct._object** %_py_decref_tmp29 to i8*, !dbg !1716
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !1716
  br label %do.cond.39, !dbg !1718

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !1719

do.end.40:                                        ; preds = %do.cond.39
  %55 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1721, !tbaa !625
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)), !dbg !1722
  store %struct._object* null, %struct._object** %retval, !dbg !1723
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1723

if.end.41:                                        ; preds = %if.end.23
  %56 = load i32, i32* %endchar.addr, align 4, !dbg !1724, !tbaa !648
  %tobool42 = icmp ne i32 %56, 0, !dbg !1724
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !1726

if.then.43:                                       ; preds = %if.end.41
  %57 = load i8**, i8*** %p_format.addr, align 8, !dbg !1727, !tbaa !625
  %58 = load i8*, i8** %57, align 8, !dbg !1728, !tbaa !625
  %incdec.ptr = getelementptr i8, i8* %58, i32 1, !dbg !1728
  store i8* %incdec.ptr, i8** %57, align 8, !dbg !1728, !tbaa !625
  br label %if.end.44, !dbg !1728

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %59 = load %struct._object*, %struct._object** %v, align 8, !dbg !1729, !tbaa !625
  store %struct._object* %59, %struct._object** %retval, !dbg !1730
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1730

cleanup:                                          ; preds = %if.end.44, %do.end.40, %do.end, %if.then.3, %if.then
  %60 = bitcast i32* %itemfailed to i8*, !dbg !1731
  call void @llvm.lifetime.end(i64 4, i8* %60) #2, !dbg !1731
  %61 = bitcast i32* %i to i8*, !dbg !1731
  call void @llvm.lifetime.end(i64 4, i8* %61) #2, !dbg !1731
  %62 = bitcast %struct._object** %v to i8*, !dbg !1731
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1731
  %63 = load %struct._object*, %struct._object** %retval, !dbg !1731
  ret %struct._object* %63, !dbg !1731
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mklist(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %w = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !545, metadata !629), !dbg !1732
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !546, metadata !629), !dbg !1733
  store i32 %endchar, i32* %endchar.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %endchar.addr, metadata !547, metadata !629), !dbg !1734
  store i32 %n, i32* %n.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !548, metadata !629), !dbg !1735
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !549, metadata !629), !dbg !1736
  %0 = bitcast %struct._object** %v to i8*, !dbg !1737
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1737
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !550, metadata !629), !dbg !1738
  %1 = bitcast i32* %i to i8*, !dbg !1739
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %i, metadata !551, metadata !629), !dbg !1740
  %2 = bitcast i32* %itemfailed to i8*, !dbg !1741
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %itemfailed, metadata !552, metadata !629), !dbg !1742
  store i32 0, i32* %itemfailed, align 4, !dbg !1742, !tbaa !648
  %3 = load i32, i32* %n.addr, align 4, !dbg !1743, !tbaa !648
  %cmp = icmp slt i32 %3, 0, !dbg !1745
  br i1 %cmp, label %if.then, label %if.end, !dbg !1746

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1747
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1747

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !dbg !1748, !tbaa !648
  %conv = sext i32 %4 to i64, !dbg !1748
  %call = call %struct._object* @PyList_New(i64 %conv), !dbg !1749
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !1750, !tbaa !625
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !1751, !tbaa !625
  %cmp1 = icmp eq %struct._object* %5, null, !dbg !1753
  br i1 %cmp1, label %if.then.3, label %if.end.4, !dbg !1754

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1755
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1755

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1756, !tbaa !648
  br label %for.cond, !dbg !1757

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load i32, i32* %i, align 4, !dbg !1758, !tbaa !648
  %7 = load i32, i32* %n.addr, align 4, !dbg !1761, !tbaa !648
  %cmp5 = icmp slt i32 %6, %7, !dbg !1762
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1763

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct._object** %w to i8*, !dbg !1764
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1764
  call void @llvm.dbg.declare(metadata %struct._object** %w, metadata !553, metadata !629), !dbg !1765
  %9 = load i8**, i8*** %p_format.addr, align 8, !dbg !1766, !tbaa !625
  %10 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1767, !tbaa !625
  %11 = load i32, i32* %flags.addr, align 4, !dbg !1768, !tbaa !648
  %call7 = call %struct._object* @do_mkvalue(i8** %9, [1 x %struct.__va_list_tag]* %10, i32 %11), !dbg !1769
  store %struct._object* %call7, %struct._object** %w, align 8, !dbg !1765, !tbaa !625
  %12 = load %struct._object*, %struct._object** %w, align 8, !dbg !1770, !tbaa !625
  %cmp8 = icmp eq %struct._object* %12, null, !dbg !1772
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !1773

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %itemfailed, align 4, !dbg !1774, !tbaa !648
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1776, !tbaa !673
  %inc = add i64 %13, 1, !dbg !1776
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1776, !tbaa !673
  store %struct._object* @_Py_NoneStruct, %struct._object** %w, align 8, !dbg !1777, !tbaa !625
  br label %if.end.11, !dbg !1778

if.end.11:                                        ; preds = %if.then.10, %for.body
  %14 = load %struct._object*, %struct._object** %w, align 8, !dbg !1779, !tbaa !625
  %15 = load i32, i32* %i, align 4, !dbg !1780, !tbaa !648
  %idxprom = sext i32 %15 to i64, !dbg !1781
  %16 = load %struct._object*, %struct._object** %v, align 8, !dbg !1782, !tbaa !625
  %17 = bitcast %struct._object* %16 to %struct.PyListObject*, !dbg !1783
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1, !dbg !1784
  %18 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !1784, !tbaa !1785
  %arrayidx = getelementptr %struct._object*, %struct._object** %18, i64 %idxprom, !dbg !1781
  store %struct._object* %14, %struct._object** %arrayidx, align 8, !dbg !1787, !tbaa !625
  %19 = bitcast %struct._object** %w to i8*, !dbg !1788
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1788
  br label %for.inc, !dbg !1789

for.inc:                                          ; preds = %if.end.11
  %20 = load i32, i32* %i, align 4, !dbg !1790, !tbaa !648
  %inc12 = add i32 %20, 1, !dbg !1790
  store i32 %inc12, i32* %i, align 4, !dbg !1790, !tbaa !648
  br label %for.cond, !dbg !1791

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %itemfailed, align 4, !dbg !1792, !tbaa !648
  %tobool = icmp ne i32 %21, 0, !dbg !1792
  br i1 %tobool, label %if.then.13, label %if.end.18, !dbg !1793

if.then.13:                                       ; preds = %for.end
  br label %do.body, !dbg !1794

do.body:                                          ; preds = %if.then.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1795
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1795
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !557, metadata !629), !dbg !1797
  %23 = load %struct._object*, %struct._object** %v, align 8, !dbg !1798, !tbaa !625
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1797, !tbaa !625
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1799, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1801
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1802, !tbaa !673
  %dec = add i64 %25, -1, !dbg !1802
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1802, !tbaa !673
  %cmp14 = icmp ne i64 %dec, 0, !dbg !1803
  br i1 %cmp14, label %if.then.16, label %if.else, !dbg !1804

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !1805

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1807, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1809
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1809, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1810
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1810, !tbaa !760
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1811, !tbaa !625
  call void %28(%struct._object* %29), !dbg !1812
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1813
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1813
  br label %do.cond, !dbg !1815

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1816

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1818

if.end.18:                                        ; preds = %for.end
  %31 = load i8**, i8*** %p_format.addr, align 8, !dbg !1819, !tbaa !625
  %32 = load i8*, i8** %31, align 8, !dbg !1820, !tbaa !625
  %33 = load i8, i8* %32, align 1, !dbg !1821, !tbaa !1064
  %conv19 = sext i8 %33 to i32, !dbg !1821
  %34 = load i32, i32* %endchar.addr, align 4, !dbg !1822, !tbaa !648
  %cmp20 = icmp ne i32 %conv19, %34, !dbg !1823
  br i1 %cmp20, label %if.then.22, label %if.end.36, !dbg !1824

if.then.22:                                       ; preds = %if.end.18
  br label %do.body.23, !dbg !1825

do.body.23:                                       ; preds = %if.then.22
  %35 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !1826
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !1826
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !561, metadata !629), !dbg !1828
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !1829, !tbaa !625
  store %struct._object* %36, %struct._object** %_py_decref_tmp24, align 8, !dbg !1828, !tbaa !625
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1830, !tbaa !625
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1832
  %38 = load i64, i64* %ob_refcnt25, align 8, !dbg !1833, !tbaa !673
  %dec26 = add i64 %38, -1, !dbg !1833
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !1833, !tbaa !673
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !1834
  br i1 %cmp27, label %if.then.29, label %if.else.30, !dbg !1835

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33, !dbg !1836

if.else.30:                                       ; preds = %do.body.23
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1838, !tbaa !625
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1840
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !1840, !tbaa !758
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1841
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !1841, !tbaa !760
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !1842, !tbaa !625
  call void %41(%struct._object* %42), !dbg !1843
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %43 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !1844
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1844
  br label %do.cond.34, !dbg !1846

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1847

do.end.35:                                        ; preds = %do.cond.34
  %44 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1849, !tbaa !625
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)), !dbg !1850
  store %struct._object* null, %struct._object** %retval, !dbg !1851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1851

if.end.36:                                        ; preds = %if.end.18
  %45 = load i32, i32* %endchar.addr, align 4, !dbg !1852, !tbaa !648
  %tobool37 = icmp ne i32 %45, 0, !dbg !1852
  br i1 %tobool37, label %if.then.38, label %if.end.39, !dbg !1854

if.then.38:                                       ; preds = %if.end.36
  %46 = load i8**, i8*** %p_format.addr, align 8, !dbg !1855, !tbaa !625
  %47 = load i8*, i8** %46, align 8, !dbg !1856, !tbaa !625
  %incdec.ptr = getelementptr i8, i8* %47, i32 1, !dbg !1856
  store i8* %incdec.ptr, i8** %46, align 8, !dbg !1856, !tbaa !625
  br label %if.end.39, !dbg !1856

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !1857, !tbaa !625
  store %struct._object* %48, %struct._object** %retval, !dbg !1858
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1858

cleanup:                                          ; preds = %if.end.39, %do.end.35, %do.end, %if.then.3, %if.then
  %49 = bitcast i32* %itemfailed to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 4, i8* %49) #2, !dbg !1859
  %50 = bitcast i32* %i to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 4, i8* %50) #2, !dbg !1859
  %51 = bitcast %struct._object** %v to i8*, !dbg !1859
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1859
  %52 = load %struct._object*, %struct._object** %retval, !dbg !1859
  ret %struct._object* %52, !dbg !1859
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mkdict(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %d = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %k = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata i8*** %p_format.addr, metadata !567, metadata !629), !dbg !1860
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !tbaa !625
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]** %p_va.addr, metadata !568, metadata !629), !dbg !1861
  store i32 %endchar, i32* %endchar.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %endchar.addr, metadata !569, metadata !629), !dbg !1862
  store i32 %n, i32* %n.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !570, metadata !629), !dbg !1863
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !571, metadata !629), !dbg !1864
  %0 = bitcast %struct._object** %d to i8*, !dbg !1865
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1865
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !572, metadata !629), !dbg !1866
  %1 = bitcast i32* %i to i8*, !dbg !1867
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1867
  call void @llvm.dbg.declare(metadata i32* %i, metadata !573, metadata !629), !dbg !1868
  %2 = bitcast i32* %itemfailed to i8*, !dbg !1869
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1869
  call void @llvm.dbg.declare(metadata i32* %itemfailed, metadata !574, metadata !629), !dbg !1870
  store i32 0, i32* %itemfailed, align 4, !dbg !1870, !tbaa !648
  %3 = load i32, i32* %n.addr, align 4, !dbg !1871, !tbaa !648
  %cmp = icmp slt i32 %3, 0, !dbg !1873
  br i1 %cmp, label %if.then, label %if.end, !dbg !1874

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1875
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69, !dbg !1875

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !1876
  store %struct._object* %call, %struct._object** %d, align 8, !dbg !1878, !tbaa !625
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1879
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1880

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1881
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69, !dbg !1881

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1882, !tbaa !648
  br label %for.cond, !dbg !1883

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %i, align 4, !dbg !1884, !tbaa !648
  %5 = load i32, i32* %n.addr, align 4, !dbg !1887, !tbaa !648
  %cmp4 = icmp slt i32 %4, %5, !dbg !1888
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1889

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct._object** %k to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct._object** %k, metadata !575, metadata !629), !dbg !1891
  %7 = bitcast %struct._object** %v to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !579, metadata !629), !dbg !1892
  %8 = bitcast i32* %err to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1893
  call void @llvm.dbg.declare(metadata i32* %err, metadata !580, metadata !629), !dbg !1894
  %9 = load i8**, i8*** %p_format.addr, align 8, !dbg !1895, !tbaa !625
  %10 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1896, !tbaa !625
  %11 = load i32, i32* %flags.addr, align 4, !dbg !1897, !tbaa !648
  %call5 = call %struct._object* @do_mkvalue(i8** %9, [1 x %struct.__va_list_tag]* %10, i32 %11), !dbg !1898
  store %struct._object* %call5, %struct._object** %k, align 8, !dbg !1899, !tbaa !625
  %12 = load %struct._object*, %struct._object** %k, align 8, !dbg !1900, !tbaa !625
  %cmp6 = icmp eq %struct._object* %12, null, !dbg !1902
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1903

if.then.7:                                        ; preds = %for.body
  store i32 1, i32* %itemfailed, align 4, !dbg !1904, !tbaa !648
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1906, !tbaa !673
  %inc = add i64 %13, 1, !dbg !1906
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1906, !tbaa !673
  store %struct._object* @_Py_NoneStruct, %struct._object** %k, align 8, !dbg !1907, !tbaa !625
  br label %if.end.8, !dbg !1908

if.end.8:                                         ; preds = %if.then.7, %for.body
  %14 = load i8**, i8*** %p_format.addr, align 8, !dbg !1909, !tbaa !625
  %15 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8, !dbg !1910, !tbaa !625
  %16 = load i32, i32* %flags.addr, align 4, !dbg !1911, !tbaa !648
  %call9 = call %struct._object* @do_mkvalue(i8** %14, [1 x %struct.__va_list_tag]* %15, i32 %16), !dbg !1912
  store %struct._object* %call9, %struct._object** %v, align 8, !dbg !1913, !tbaa !625
  %17 = load %struct._object*, %struct._object** %v, align 8, !dbg !1914, !tbaa !625
  %cmp10 = icmp eq %struct._object* %17, null, !dbg !1916
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !1917

if.then.11:                                       ; preds = %if.end.8
  store i32 1, i32* %itemfailed, align 4, !dbg !1918, !tbaa !648
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1920, !tbaa !673
  %inc12 = add i64 %18, 1, !dbg !1920
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1920, !tbaa !673
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8, !dbg !1921, !tbaa !625
  br label %if.end.13, !dbg !1922

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %19 = load %struct._object*, %struct._object** %d, align 8, !dbg !1923, !tbaa !625
  %20 = load %struct._object*, %struct._object** %k, align 8, !dbg !1924, !tbaa !625
  %21 = load %struct._object*, %struct._object** %v, align 8, !dbg !1925, !tbaa !625
  %call14 = call i32 @PyDict_SetItem(%struct._object* %19, %struct._object* %20, %struct._object* %21), !dbg !1926
  store i32 %call14, i32* %err, align 4, !dbg !1927, !tbaa !648
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %if.end.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !581, metadata !629), !dbg !1931
  %23 = load %struct._object*, %struct._object** %k, align 8, !dbg !1932, !tbaa !625
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1931, !tbaa !625
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1933, !tbaa !625
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1935
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1936, !tbaa !673
  %dec = add i64 %25, -1, !dbg !1936
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1936, !tbaa !673
  %cmp15 = icmp ne i64 %dec, 0, !dbg !1937
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !1938

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !1939

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1941, !tbaa !625
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1943
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1943, !tbaa !758
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1944
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1944, !tbaa !760
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1945, !tbaa !625
  call void %28(%struct._object* %29), !dbg !1946
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1947
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1947
  br label %do.cond, !dbg !1949

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1950

do.end:                                           ; preds = %do.cond
  br label %do.body.18, !dbg !1952

do.body.18:                                       ; preds = %do.end
  %31 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1953
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !583, metadata !629), !dbg !1955
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !1956, !tbaa !625
  store %struct._object* %32, %struct._object** %_py_decref_tmp19, align 8, !dbg !1955, !tbaa !625
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1957, !tbaa !625
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1959
  %34 = load i64, i64* %ob_refcnt20, align 8, !dbg !1960, !tbaa !673
  %dec21 = add i64 %34, -1, !dbg !1960
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1960, !tbaa !673
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1961
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1962

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1963

if.else.24:                                       ; preds = %do.body.18
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1965, !tbaa !625
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !1967
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1967, !tbaa !758
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !1968
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1968, !tbaa !760
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1969, !tbaa !625
  call void %37(%struct._object* %38), !dbg !1970
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %39 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1971
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1971
  br label %do.cond.28, !dbg !1972

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1973

do.end.29:                                        ; preds = %do.cond.28
  %40 = load i32, i32* %err, align 4, !dbg !1975, !tbaa !648
  %cmp30 = icmp slt i32 %40, 0, !dbg !1976
  br i1 %cmp30, label %if.then.31, label %lor.lhs.false, !dbg !1977

lor.lhs.false:                                    ; preds = %do.end.29
  %41 = load i32, i32* %itemfailed, align 4, !dbg !1978, !tbaa !648
  %tobool = icmp ne i32 %41, 0, !dbg !1978
  br i1 %tobool, label %if.then.31, label %if.end.44, !dbg !1980

if.then.31:                                       ; preds = %lor.lhs.false, %do.end.29
  br label %do.body.32, !dbg !1981

do.body.32:                                       ; preds = %if.then.31
  %42 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !1982
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !1982
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !585, metadata !629), !dbg !1984
  %43 = load %struct._object*, %struct._object** %d, align 8, !dbg !1985, !tbaa !625
  store %struct._object* %43, %struct._object** %_py_decref_tmp33, align 8, !dbg !1984, !tbaa !625
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1986, !tbaa !625
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !1988
  %45 = load i64, i64* %ob_refcnt34, align 8, !dbg !1989, !tbaa !673
  %dec35 = add i64 %45, -1, !dbg !1989
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1989, !tbaa !673
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !1990
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !1991

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !1992

if.else.38:                                       ; preds = %do.body.32
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1994, !tbaa !625
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !1996
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1996, !tbaa !758
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !1997
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1997, !tbaa !760
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1998, !tbaa !625
  call void %48(%struct._object* %49), !dbg !1999
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %50 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !2000
  br label %do.cond.42, !dbg !2002

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !2003

do.end.43:                                        ; preds = %do.cond.42
  store %struct._object* null, %struct._object** %retval, !dbg !2005
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2005

if.end.44:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot, !dbg !2006
  br label %cleanup, !dbg !2006

cleanup:                                          ; preds = %if.end.44, %do.end.43
  %51 = bitcast i32* %err to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 4, i8* %51) #2, !dbg !2007
  %52 = bitcast %struct._object** %v to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !2007
  %53 = bitcast %struct._object** %k to i8*, !dbg !2007
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2007
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2008

for.inc:                                          ; preds = %cleanup.cont
  %54 = load i32, i32* %i, align 4, !dbg !2009, !tbaa !648
  %add = add i32 %54, 2, !dbg !2009
  store i32 %add, i32* %i, align 4, !dbg !2009, !tbaa !648
  br label %for.cond, !dbg !2010

for.end:                                          ; preds = %for.cond
  %55 = load %struct._object*, %struct._object** %d, align 8, !dbg !2011, !tbaa !625
  %cmp47 = icmp ne %struct._object* %55, null, !dbg !2012
  br i1 %cmp47, label %land.lhs.true, label %if.else.64, !dbg !2013

land.lhs.true:                                    ; preds = %for.end
  %56 = load i8**, i8*** %p_format.addr, align 8, !dbg !2014, !tbaa !625
  %57 = load i8*, i8** %56, align 8, !dbg !2016, !tbaa !625
  %58 = load i8, i8* %57, align 1, !dbg !2017, !tbaa !1064
  %conv = sext i8 %58 to i32, !dbg !2017
  %59 = load i32, i32* %endchar.addr, align 4, !dbg !2018, !tbaa !648
  %cmp48 = icmp ne i32 %conv, %59, !dbg !2019
  br i1 %cmp48, label %if.then.50, label %if.else.64, !dbg !2020

if.then.50:                                       ; preds = %land.lhs.true
  br label %do.body.51, !dbg !2021

do.body.51:                                       ; preds = %if.then.50
  %60 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !2022
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !2022
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp52, metadata !589, metadata !629), !dbg !2024
  %61 = load %struct._object*, %struct._object** %d, align 8, !dbg !2025, !tbaa !625
  store %struct._object* %61, %struct._object** %_py_decref_tmp52, align 8, !dbg !2024, !tbaa !625
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !2026, !tbaa !625
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !2028
  %63 = load i64, i64* %ob_refcnt53, align 8, !dbg !2029, !tbaa !673
  %dec54 = add i64 %63, -1, !dbg !2029
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !2029, !tbaa !673
  %cmp55 = icmp ne i64 %dec54, 0, !dbg !2030
  br i1 %cmp55, label %if.then.57, label %if.else.58, !dbg !2031

if.then.57:                                       ; preds = %do.body.51
  br label %if.end.61, !dbg !2032

if.else.58:                                       ; preds = %do.body.51
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !2034, !tbaa !625
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !2036
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !2036, !tbaa !758
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !2037
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !2037, !tbaa !760
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !2038, !tbaa !625
  call void %66(%struct._object* %67), !dbg !2039
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  %68 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !2040
  br label %do.cond.62, !dbg !2042

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !2043

do.end.63:                                        ; preds = %do.cond.62
  store %struct._object* null, %struct._object** %d, align 8, !dbg !2045, !tbaa !625
  %69 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2046, !tbaa !625
  call void @PyErr_SetString(%struct._object* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)), !dbg !2047
  br label %if.end.68, !dbg !2048

if.else.64:                                       ; preds = %land.lhs.true, %for.end
  %70 = load i32, i32* %endchar.addr, align 4, !dbg !2049, !tbaa !648
  %tobool65 = icmp ne i32 %70, 0, !dbg !2049
  br i1 %tobool65, label %if.then.66, label %if.end.67, !dbg !2051

if.then.66:                                       ; preds = %if.else.64
  %71 = load i8**, i8*** %p_format.addr, align 8, !dbg !2052, !tbaa !625
  %72 = load i8*, i8** %71, align 8, !dbg !2053, !tbaa !625
  %incdec.ptr = getelementptr i8, i8* %72, i32 1, !dbg !2053
  store i8* %incdec.ptr, i8** %71, align 8, !dbg !2053, !tbaa !625
  br label %if.end.67, !dbg !2053

if.end.67:                                        ; preds = %if.then.66, %if.else.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %do.end.63
  %73 = load %struct._object*, %struct._object** %d, align 8, !dbg !2054, !tbaa !625
  store %struct._object* %73, %struct._object** %retval, !dbg !2055
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69, !dbg !2055

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.69

cleanup.69:                                       ; preds = %NewDefault, %if.end.68, %if.then.2, %if.then
  %74 = bitcast i32* %itemfailed to i8*, !dbg !2056
  call void @llvm.lifetime.end(i64 4, i8* %74) #2, !dbg !2056
  %75 = bitcast i32* %i to i8*, !dbg !2056
  call void @llvm.lifetime.end(i64 4, i8* %75) #2, !dbg !2056
  %76 = bitcast %struct._object** %d to i8*, !dbg !2056
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !2056
  %77 = load %struct._object*, %struct._object** %retval, !dbg !2056
  ret %struct._object* %77, !dbg !2056
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

declare %struct._object* @PyLong_FromLongLong(i64) #3

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #3

declare i64 @Py_UNICODE_strlen(i32*) #3

declare %struct._object* @PyUnicode_FromUnicode(i32*, i64) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare %struct._object* @PyComplex_FromCComplex(double, double) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyUnicode_FromOrdinal(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyList_New(i64) #3

declare %struct._object* @PyDict_New() #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!622, !623}
!llvm.ident = !{!624}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !369, globals: !620)
!1 = !DIFile(filename: "modsupport.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !17, !343, !344, !345, !31, !11, !94, !352, !361}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!344 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_complex", file: !347, line: 13, baseType: !348)
!347 = !DIFile(filename: "Include/complexobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!348 = !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 10, size: 128, align: 64, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !348, file: !347, line: 11, baseType: !344, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !348, file: !347, line: 12, baseType: !344, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !354, line: 40, baseType: !355)
!354 = !DIFile(filename: "Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!355 = !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 23, size: 320, align: 64, elements: !356)
!356 = !{!357, !358, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !355, file: !354, line: 24, baseType: !23, size: 192, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !355, file: !354, line: 26, baseType: !359, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !355, file: !354, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !363, line: 33, baseType: !364)
!363 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!364 = !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 25, size: 256, align: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !364, file: !363, line: 26, baseType: !23, size: 192, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !364, file: !363, line: 27, baseType: !368, size: 64, align: 64, offset: 192)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!369 = !{!370, !390, !395, !402, !406, !417, !436, !446, !456, !466, !476, !484, !541, !565, !593}
!370 = !DISubprogram(name: "Py_BuildValue", scope: !371, file: !371, line: 415, type: !372, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, ...)* @Py_BuildValue, variables: !374)
!371 = !DIFile(filename: "Python/modsupport.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!372 = !DISubroutineType(types: !373)
!373 = !{!5, !29, null}
!374 = !{!375, !376, !389}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !370, file: !371, line: 415, type: !29)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !370, file: !371, line: 417, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !14, line: 79, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !379, line: 50, baseType: !380)
!379 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 417, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, align: 64, elements: !82)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 417, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 417, size: 192, align: 64, elements: !384)
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !383, file: !1, line: 417, baseType: !341, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !383, file: !1, line: 417, baseType: !341, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !383, file: !1, line: 417, baseType: !4, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !383, file: !1, line: 417, baseType: !4, size: 64, align: 64, offset: 128)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !370, file: !371, line: 418, type: !5)
!390 = !DISubprogram(name: "_Py_BuildValue_SizeT", scope: !371, file: !371, line: 426, type: !372, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, ...)* @_Py_BuildValue_SizeT, variables: !391)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !390, file: !371, line: 426, type: !29)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !390, file: !371, line: 428, type: !377)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !390, file: !371, line: 429, type: !5)
!395 = !DISubprogram(name: "Py_VaBuildValue", scope: !371, file: !371, line: 437, type: !396, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct.__va_list_tag*)* @Py_VaBuildValue, variables: !399)
!396 = !DISubroutineType(types: !397)
!397 = !{!5, !29, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!399 = !{!400, !401}
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !395, file: !371, line: 437, type: !29)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 2, scope: !395, file: !371, line: 437, type: !398)
!402 = !DISubprogram(name: "_Py_VaBuildValue_SizeT", scope: !371, file: !371, line: 443, type: !396, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct.__va_list_tag*)* @_Py_VaBuildValue_SizeT, variables: !403)
!403 = !{!404, !405}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !402, file: !371, line: 443, type: !29)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 2, scope: !402, file: !371, line: 443, type: !398)
!406 = !DISubprogram(name: "PyEval_CallFunction", scope: !371, file: !371, line: 470, type: !407, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, ...)* @PyEval_CallFunction, variables: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!5, !5, !29, null}
!409 = !{!410, !411, !412, !413, !414, !415}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !406, file: !371, line: 470, type: !5)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !406, file: !371, line: 470, type: !29)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !406, file: !371, line: 472, type: !377)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !406, file: !371, line: 473, type: !5)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !406, file: !371, line: 474, type: !5)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !371, line: 485, type: !5)
!416 = distinct !DILexicalBlock(scope: !406, file: !371, line: 485, column: 8)
!417 = !DISubprogram(name: "PyEval_CallMethod", scope: !371, file: !371, line: 492, type: !418, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, i8*, ...)* @PyEval_CallMethod, variables: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!5, !5, !29, !29, null}
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !432, !434}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !417, file: !371, line: 492, type: !5)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "methodname", arg: 2, scope: !417, file: !371, line: 492, type: !29)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !417, file: !371, line: 492, type: !29)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !417, file: !371, line: 494, type: !377)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "meth", scope: !417, file: !371, line: 495, type: !5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !417, file: !371, line: 496, type: !5)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !417, file: !371, line: 497, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !429, file: !371, line: 509, type: !5)
!429 = distinct !DILexicalBlock(scope: !430, file: !371, line: 509, column: 12)
!430 = distinct !DILexicalBlock(scope: !431, file: !371, line: 508, column: 29)
!431 = distinct !DILexicalBlock(scope: !417, file: !371, line: 508, column: 9)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !371, line: 514, type: !5)
!433 = distinct !DILexicalBlock(scope: !417, file: !371, line: 514, column: 8)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !371, line: 515, type: !5)
!435 = distinct !DILexicalBlock(scope: !417, file: !371, line: 515, column: 8)
!436 = !DISubprogram(name: "PyModule_AddObject", scope: !371, file: !371, line: 521, type: !437, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, %struct._object*)* @PyModule_AddObject, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!44, !5, !29, !5}
!439 = !{!440, !441, !442, !443, !444}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !436, file: !371, line: 521, type: !5)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !436, file: !371, line: 521, type: !29)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 3, scope: !436, file: !371, line: 521, type: !5)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !436, file: !371, line: 523, type: !5)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !371, line: 545, type: !5)
!445 = distinct !DILexicalBlock(scope: !436, file: !371, line: 545, column: 8)
!446 = !DISubprogram(name: "PyModule_AddIntConstant", scope: !371, file: !371, line: 550, type: !447, isLocal: false, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i64)* @PyModule_AddIntConstant, variables: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!44, !5, !29, !17}
!449 = !{!450, !451, !452, !453, !454}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !446, file: !371, line: 550, type: !5)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !446, file: !371, line: 550, type: !29)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !446, file: !371, line: 550, type: !17)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !446, file: !371, line: 552, type: !5)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !371, line: 557, type: !5)
!455 = distinct !DILexicalBlock(scope: !446, file: !371, line: 557, column: 8)
!456 = !DISubprogram(name: "PyModule_AddStringConstant", scope: !371, file: !371, line: 562, type: !457, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*, i8*)* @PyModule_AddStringConstant, variables: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!44, !5, !29, !29}
!459 = !{!460, !461, !462, !463, !464}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !456, file: !371, line: 562, type: !5)
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !456, file: !371, line: 562, type: !29)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !456, file: !371, line: 562, type: !29)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !456, file: !371, line: 564, type: !5)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !465, file: !371, line: 569, type: !5)
!465 = distinct !DILexicalBlock(scope: !456, file: !371, line: 569, column: 8)
!466 = !DISubprogram(name: "va_build_value", scope: !371, file: !371, line: 449, type: !467, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct.__va_list_tag*, i32)* @va_build_value, variables: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!5, !29, !398, !44}
!469 = !{!470, !471, !472, !473, !474, !475}
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !466, file: !371, line: 449, type: !29)
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 2, scope: !466, file: !371, line: 449, type: !398)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !466, file: !371, line: 449, type: !44)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !466, file: !371, line: 451, type: !29)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !466, file: !371, line: 452, type: !44)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lva", scope: !466, file: !371, line: 453, type: !377)
!476 = !DISubprogram(name: "countformat", scope: !371, file: !371, line: 17, type: !477, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @countformat, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!44, !29, !44}
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !476, file: !371, line: 17, type: !29)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endchar", arg: 2, scope: !476, file: !371, line: 17, type: !44)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !476, file: !371, line: 19, type: !44)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !476, file: !371, line: 20, type: !44)
!484 = !DISubprogram(name: "do_mkvalue", scope: !371, file: !371, line: 199, type: !485, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8**, [1 x %struct.__va_list_tag]*, i32)* @do_mkvalue, variables: !489)
!485 = !DISubroutineType(types: !486)
!486 = !{!5, !487, !488, !44}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!489 = !{!490, !491, !492, !493, !499, !501, !503, !508, !509, !511, !513, !515, !516, !517, !522, !524, !525, !526, !531, !538, !539}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !484, file: !371, line: 199, type: !487)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !484, file: !371, line: 199, type: !488)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !484, file: !371, line: 199, type: !44)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !494, file: !371, line: 226, type: !341)
!494 = distinct !DILexicalBlock(scope: !495, file: !371, line: 225, column: 9)
!495 = distinct !DILexicalBlock(scope: !496, file: !371, line: 202, column: 33)
!496 = distinct !DILexicalBlock(scope: !497, file: !371, line: 201, column: 14)
!497 = distinct !DILexicalBlock(scope: !498, file: !371, line: 201, column: 5)
!498 = distinct !DILexicalBlock(scope: !484, file: !371, line: 201, column: 5)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !500, file: !371, line: 241, type: !96)
!500 = distinct !DILexicalBlock(scope: !495, file: !371, line: 240, column: 9)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !502, file: !371, line: 255, type: !5)
!502 = distinct !DILexicalBlock(scope: !495, file: !371, line: 254, column: 9)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !502, file: !371, line: 256, type: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !506, line: 93, baseType: !507)
!506 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !44)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !502, file: !371, line: 257, type: !11)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !510, file: !371, line: 289, type: !81)
!510 = distinct !DILexicalBlock(scope: !495, file: !371, line: 288, column: 9)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !512, file: !371, line: 295, type: !44)
!512 = distinct !DILexicalBlock(scope: !495, file: !371, line: 294, column: 9)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !514, file: !371, line: 303, type: !5)
!514 = distinct !DILexicalBlock(scope: !495, file: !371, line: 302, column: 9)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !514, file: !371, line: 304, type: !52)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !514, file: !371, line: 305, type: !11)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !518, file: !371, line: 321, type: !94)
!518 = distinct !DILexicalBlock(scope: !519, file: !371, line: 320, column: 28)
!519 = distinct !DILexicalBlock(scope: !520, file: !371, line: 320, column: 21)
!520 = distinct !DILexicalBlock(scope: !521, file: !371, line: 319, column: 18)
!521 = distinct !DILexicalBlock(scope: !514, file: !371, line: 315, column: 17)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !523, file: !371, line: 336, type: !5)
!523 = distinct !DILexicalBlock(scope: !495, file: !371, line: 335, column: 9)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !523, file: !371, line: 337, type: !52)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !523, file: !371, line: 338, type: !11)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !527, file: !371, line: 354, type: !94)
!527 = distinct !DILexicalBlock(scope: !528, file: !371, line: 353, column: 28)
!528 = distinct !DILexicalBlock(scope: !529, file: !371, line: 353, column: 21)
!529 = distinct !DILexicalBlock(scope: !530, file: !371, line: 352, column: 18)
!530 = distinct !DILexicalBlock(scope: !523, file: !371, line: 348, column: 17)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !532, file: !371, line: 372, type: !534)
!532 = distinct !DILexicalBlock(scope: !533, file: !371, line: 370, column: 32)
!533 = distinct !DILexicalBlock(scope: !495, file: !371, line: 370, column: 13)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "converter", scope: !484, file: !371, line: 371, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!5, !4}
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !532, file: !371, line: 373, type: !4)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !540, file: !371, line: 378, type: !5)
!540 = distinct !DILexicalBlock(scope: !533, file: !371, line: 377, column: 14)
!541 = !DISubprogram(name: "do_mklist", scope: !371, file: !371, line: 113, type: !542, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8**, [1 x %struct.__va_list_tag]*, i32, i32, i32)* @do_mklist, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!5, !487, !488, !44, !44, !44}
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !557, !561}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !541, file: !371, line: 113, type: !487)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !541, file: !371, line: 113, type: !488)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endchar", arg: 3, scope: !541, file: !371, line: 113, type: !44)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 4, scope: !541, file: !371, line: 113, type: !44)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !541, file: !371, line: 113, type: !44)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !541, file: !371, line: 115, type: !5)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !541, file: !371, line: 116, type: !44)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemfailed", scope: !541, file: !371, line: 117, type: !44)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !554, file: !371, line: 126, type: !5)
!554 = distinct !DILexicalBlock(scope: !555, file: !371, line: 125, column: 29)
!555 = distinct !DILexicalBlock(scope: !556, file: !371, line: 125, column: 5)
!556 = distinct !DILexicalBlock(scope: !541, file: !371, line: 125, column: 5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !371, line: 137, type: !5)
!558 = distinct !DILexicalBlock(scope: !559, file: !371, line: 137, column: 12)
!559 = distinct !DILexicalBlock(scope: !560, file: !371, line: 135, column: 21)
!560 = distinct !DILexicalBlock(scope: !541, file: !371, line: 135, column: 9)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !562, file: !371, line: 141, type: !5)
!562 = distinct !DILexicalBlock(scope: !563, file: !371, line: 141, column: 12)
!563 = distinct !DILexicalBlock(scope: !564, file: !371, line: 140, column: 32)
!564 = distinct !DILexicalBlock(scope: !541, file: !371, line: 140, column: 9)
!565 = !DISubprogram(name: "do_mkdict", scope: !371, file: !371, line: 67, type: !542, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8**, [1 x %struct.__va_list_tag]*, i32, i32, i32)* @do_mkdict, variables: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !579, !580, !581, !583, !585, !589}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !565, file: !371, line: 67, type: !487)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !565, file: !371, line: 67, type: !488)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endchar", arg: 3, scope: !565, file: !371, line: 67, type: !44)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 4, scope: !565, file: !371, line: 67, type: !44)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !565, file: !371, line: 67, type: !44)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !565, file: !371, line: 69, type: !5)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !565, file: !371, line: 70, type: !44)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemfailed", scope: !565, file: !371, line: 71, type: !44)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !576, file: !371, line: 79, type: !5)
!576 = distinct !DILexicalBlock(scope: !577, file: !371, line: 78, column: 31)
!577 = distinct !DILexicalBlock(scope: !578, file: !371, line: 78, column: 5)
!578 = distinct !DILexicalBlock(scope: !565, file: !371, line: 78, column: 5)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !576, file: !371, line: 79, type: !5)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !576, file: !371, line: 80, type: !44)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !371, line: 94, type: !5)
!582 = distinct !DILexicalBlock(scope: !576, file: !371, line: 94, column: 12)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !371, line: 95, type: !5)
!584 = distinct !DILexicalBlock(scope: !576, file: !371, line: 95, column: 12)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !371, line: 97, type: !5)
!586 = distinct !DILexicalBlock(scope: !587, file: !371, line: 97, column: 16)
!587 = distinct !DILexicalBlock(scope: !588, file: !371, line: 96, column: 36)
!588 = distinct !DILexicalBlock(scope: !576, file: !371, line: 96, column: 13)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !371, line: 102, type: !5)
!590 = distinct !DILexicalBlock(scope: !591, file: !371, line: 102, column: 12)
!591 = distinct !DILexicalBlock(scope: !592, file: !371, line: 101, column: 51)
!592 = distinct !DILexicalBlock(scope: !565, file: !371, line: 101, column: 9)
!593 = !DISubprogram(name: "do_mktuple", scope: !371, file: !371, line: 152, type: !542, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8**, [1 x %struct.__va_list_tag]*, i32, i32, i32)* @do_mktuple, variables: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !607, !610, !611, !612, !616}
!595 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_format", arg: 1, scope: !593, file: !371, line: 152, type: !487)
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_va", arg: 2, scope: !593, file: !371, line: 152, type: !488)
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endchar", arg: 3, scope: !593, file: !371, line: 152, type: !44)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 4, scope: !593, file: !371, line: 152, type: !44)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !593, file: !371, line: 152, type: !44)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !593, file: !371, line: 154, type: !5)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !593, file: !371, line: 155, type: !44)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemfailed", scope: !593, file: !371, line: 156, type: !44)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !604, file: !371, line: 164, type: !5)
!604 = distinct !DILexicalBlock(scope: !605, file: !371, line: 163, column: 29)
!605 = distinct !DILexicalBlock(scope: !606, file: !371, line: 163, column: 5)
!606 = distinct !DILexicalBlock(scope: !593, file: !371, line: 163, column: 5)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !608, file: !371, line: 167, type: !5)
!608 = distinct !DILexicalBlock(scope: !609, file: !371, line: 166, column: 25)
!609 = distinct !DILexicalBlock(scope: !604, file: !371, line: 166, column: 13)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !608, file: !371, line: 167, type: !5)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !608, file: !371, line: 167, type: !5)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !613, file: !371, line: 184, type: !5)
!613 = distinct !DILexicalBlock(scope: !614, file: !371, line: 184, column: 12)
!614 = distinct !DILexicalBlock(scope: !615, file: !371, line: 182, column: 21)
!615 = distinct !DILexicalBlock(scope: !593, file: !371, line: 182, column: 9)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !371, line: 188, type: !5)
!617 = distinct !DILexicalBlock(scope: !618, file: !371, line: 188, column: 12)
!618 = distinct !DILexicalBlock(scope: !619, file: !371, line: 187, column: 32)
!619 = distinct !DILexicalBlock(scope: !593, file: !371, line: 187, column: 9)
!620 = !{!621}
!621 = !DIGlobalVariable(name: "_Py_PackageContext", scope: !0, file: !371, line: 12, type: !52, isLocal: false, isDefinition: true, variable: i8** @_Py_PackageContext)
!622 = !{i32 2, !"Dwarf Version", i32 4}
!623 = !{i32 2, !"Debug Info Version", i32 3}
!624 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!625 = !{!626, !626, i64 0}
!626 = !{!"any pointer", !627, i64 0}
!627 = !{!"omnipotent char", !628, i64 0}
!628 = !{!"Simple C/C++ TBAA"}
!629 = !DIExpression()
!630 = !DILocation(line: 415, column: 27, scope: !370)
!631 = !DILocation(line: 417, column: 5, scope: !370)
!632 = !DILocation(line: 417, column: 13, scope: !370)
!633 = !DILocation(line: 418, column: 5, scope: !370)
!634 = !DILocation(line: 418, column: 15, scope: !370)
!635 = !DILocation(line: 419, column: 24, scope: !370)
!636 = !DILocation(line: 419, column: 5, scope: !370)
!637 = !DILocation(line: 420, column: 29, scope: !370)
!638 = !DILocation(line: 420, column: 37, scope: !370)
!639 = !DILocation(line: 420, column: 14, scope: !370)
!640 = !DILocation(line: 420, column: 12, scope: !370)
!641 = !DILocation(line: 421, column: 22, scope: !370)
!642 = !DILocation(line: 421, column: 5, scope: !370)
!643 = !DILocation(line: 422, column: 12, scope: !370)
!644 = !DILocation(line: 423, column: 1, scope: !370)
!645 = !DILocation(line: 422, column: 5, scope: !370)
!646 = !DILocation(line: 449, column: 28, scope: !466)
!647 = !DILocation(line: 449, column: 44, scope: !466)
!648 = !{!649, !649, i64 0}
!649 = !{!"int", !627, i64 0}
!650 = !DILocation(line: 449, column: 52, scope: !466)
!651 = !DILocation(line: 451, column: 5, scope: !466)
!652 = !DILocation(line: 451, column: 17, scope: !466)
!653 = !DILocation(line: 451, column: 21, scope: !466)
!654 = !DILocation(line: 452, column: 5, scope: !466)
!655 = !DILocation(line: 452, column: 9, scope: !466)
!656 = !DILocation(line: 452, column: 25, scope: !466)
!657 = !DILocation(line: 452, column: 13, scope: !466)
!658 = !DILocation(line: 453, column: 5, scope: !466)
!659 = !DILocation(line: 453, column: 13, scope: !466)
!660 = !DILocation(line: 455, column: 9, scope: !466)
!661 = !DILocation(line: 455, column: 24, scope: !466)
!662 = !DILocation(line: 457, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !466, file: !371, line: 457, column: 9)
!664 = !DILocation(line: 457, column: 11, scope: !663)
!665 = !DILocation(line: 457, column: 9, scope: !466)
!666 = !DILocation(line: 458, column: 9, scope: !663)
!667 = !DILocation(line: 459, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !466, file: !371, line: 459, column: 9)
!669 = !DILocation(line: 459, column: 11, scope: !668)
!670 = !DILocation(line: 459, column: 9, scope: !466)
!671 = !DILocation(line: 460, column: 55, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !371, line: 459, column: 17)
!673 = !{!674, !675, i64 0}
!674 = !{!"_object", !675, i64 0, !626, i64 8}
!675 = !{!"long", !627, i64 0}
!676 = !DILocation(line: 461, column: 9, scope: !672)
!677 = !DILocation(line: 463, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !466, file: !371, line: 463, column: 9)
!679 = !DILocation(line: 463, column: 11, scope: !678)
!680 = !DILocation(line: 463, column: 9, scope: !466)
!681 = !DILocation(line: 464, column: 37, scope: !678)
!682 = !DILocation(line: 464, column: 16, scope: !678)
!683 = !DILocation(line: 464, column: 9, scope: !678)
!684 = !DILocation(line: 465, column: 39, scope: !466)
!685 = !DILocation(line: 465, column: 42, scope: !466)
!686 = !DILocation(line: 465, column: 12, scope: !466)
!687 = !DILocation(line: 465, column: 5, scope: !466)
!688 = !DILocation(line: 466, column: 1, scope: !466)
!689 = !DILocation(line: 426, column: 34, scope: !390)
!690 = !DILocation(line: 428, column: 5, scope: !390)
!691 = !DILocation(line: 428, column: 13, scope: !390)
!692 = !DILocation(line: 429, column: 5, scope: !390)
!693 = !DILocation(line: 429, column: 15, scope: !390)
!694 = !DILocation(line: 430, column: 24, scope: !390)
!695 = !DILocation(line: 430, column: 5, scope: !390)
!696 = !DILocation(line: 431, column: 29, scope: !390)
!697 = !DILocation(line: 431, column: 37, scope: !390)
!698 = !DILocation(line: 431, column: 14, scope: !390)
!699 = !DILocation(line: 431, column: 12, scope: !390)
!700 = !DILocation(line: 432, column: 22, scope: !390)
!701 = !DILocation(line: 432, column: 5, scope: !390)
!702 = !DILocation(line: 433, column: 12, scope: !390)
!703 = !DILocation(line: 434, column: 1, scope: !390)
!704 = !DILocation(line: 433, column: 5, scope: !390)
!705 = !DILocation(line: 437, column: 29, scope: !395)
!706 = !DILocation(line: 437, column: 45, scope: !395)
!707 = !DILocation(line: 439, column: 27, scope: !395)
!708 = !DILocation(line: 439, column: 35, scope: !395)
!709 = !DILocation(line: 439, column: 12, scope: !395)
!710 = !DILocation(line: 439, column: 5, scope: !395)
!711 = !DILocation(line: 443, column: 36, scope: !402)
!712 = !DILocation(line: 443, column: 52, scope: !402)
!713 = !DILocation(line: 445, column: 27, scope: !402)
!714 = !DILocation(line: 445, column: 35, scope: !402)
!715 = !DILocation(line: 445, column: 12, scope: !402)
!716 = !DILocation(line: 445, column: 5, scope: !402)
!717 = !DILocation(line: 470, column: 31, scope: !406)
!718 = !DILocation(line: 470, column: 48, scope: !406)
!719 = !DILocation(line: 472, column: 5, scope: !406)
!720 = !DILocation(line: 472, column: 13, scope: !406)
!721 = !DILocation(line: 473, column: 5, scope: !406)
!722 = !DILocation(line: 473, column: 15, scope: !406)
!723 = !DILocation(line: 474, column: 5, scope: !406)
!724 = !DILocation(line: 474, column: 15, scope: !406)
!725 = !DILocation(line: 476, column: 24, scope: !406)
!726 = !DILocation(line: 476, column: 5, scope: !406)
!727 = !DILocation(line: 478, column: 28, scope: !406)
!728 = !DILocation(line: 478, column: 36, scope: !406)
!729 = !DILocation(line: 478, column: 12, scope: !406)
!730 = !DILocation(line: 478, column: 10, scope: !406)
!731 = !DILocation(line: 479, column: 22, scope: !406)
!732 = !DILocation(line: 479, column: 5, scope: !406)
!733 = !DILocation(line: 481, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !406, file: !371, line: 481, column: 9)
!735 = !DILocation(line: 481, column: 14, scope: !734)
!736 = !DILocation(line: 481, column: 9, scope: !406)
!737 = !DILocation(line: 482, column: 9, scope: !734)
!738 = !DILocation(line: 484, column: 41, scope: !406)
!739 = !DILocation(line: 484, column: 46, scope: !406)
!740 = !DILocation(line: 484, column: 11, scope: !406)
!741 = !DILocation(line: 484, column: 9, scope: !406)
!742 = !DILocation(line: 485, column: 5, scope: !406)
!743 = !DILocation(line: 485, column: 10, scope: !744)
!744 = !DILexicalBlockFile(scope: !416, file: !371, discriminator: 1)
!745 = !DILocation(line: 485, column: 20, scope: !416)
!746 = !DILocation(line: 485, column: 50, scope: !416)
!747 = !DILocation(line: 485, column: 65, scope: !748)
!748 = distinct !DILexicalBlock(scope: !416, file: !371, line: 485, column: 62)
!749 = !DILocation(line: 485, column: 82, scope: !748)
!750 = !DILocation(line: 485, column: 62, scope: !748)
!751 = !DILocation(line: 485, column: 92, scope: !748)
!752 = !DILocation(line: 485, column: 62, scope: !416)
!753 = !DILocation(line: 485, column: 62, scope: !754)
!754 = !DILexicalBlockFile(scope: !416, file: !371, discriminator: 2)
!755 = !DILocation(line: 485, column: 123, scope: !756)
!756 = !DILexicalBlockFile(scope: !748, file: !371, discriminator: 3)
!757 = !DILocation(line: 485, column: 141, scope: !748)
!758 = !{!674, !626, i64 8}
!759 = !DILocation(line: 485, column: 151, scope: !748)
!760 = !{!761, !626, i64 48}
!761 = !{!"_typeobject", !762, i64 0, !626, i64 24, !675, i64 32, !675, i64 40, !626, i64 48, !626, i64 56, !626, i64 64, !626, i64 72, !626, i64 80, !626, i64 88, !626, i64 96, !626, i64 104, !626, i64 112, !626, i64 120, !626, i64 128, !626, i64 136, !626, i64 144, !626, i64 152, !626, i64 160, !675, i64 168, !626, i64 176, !626, i64 184, !626, i64 192, !626, i64 200, !675, i64 208, !626, i64 216, !626, i64 224, !626, i64 232, !626, i64 240, !626, i64 248, !626, i64 256, !626, i64 264, !626, i64 272, !626, i64 280, !675, i64 288, !626, i64 296, !626, i64 304, !626, i64 312, !626, i64 320, !626, i64 328, !626, i64 336, !626, i64 344, !626, i64 352, !626, i64 360, !626, i64 368, !626, i64 376, !649, i64 384, !626, i64 392}
!762 = !{!"", !674, i64 0, !675, i64 16}
!763 = !DILocation(line: 485, column: 176, scope: !748)
!764 = !DILocation(line: 485, column: 107, scope: !748)
!765 = !DILocation(line: 485, column: 195, scope: !766)
!766 = !DILexicalBlockFile(scope: !406, file: !371, discriminator: 4)
!767 = !DILocation(line: 485, column: 195, scope: !416)
!768 = !DILocation(line: 485, column: 195, scope: !769)
!769 = !DILexicalBlockFile(scope: !416, file: !371, discriminator: 5)
!770 = !DILocation(line: 487, column: 12, scope: !406)
!771 = !DILocation(line: 487, column: 5, scope: !406)
!772 = !DILocation(line: 488, column: 1, scope: !406)
!773 = !DILocation(line: 492, column: 29, scope: !417)
!774 = !DILocation(line: 492, column: 46, scope: !417)
!775 = !DILocation(line: 492, column: 70, scope: !417)
!776 = !DILocation(line: 494, column: 5, scope: !417)
!777 = !DILocation(line: 494, column: 13, scope: !417)
!778 = !DILocation(line: 495, column: 5, scope: !417)
!779 = !DILocation(line: 495, column: 15, scope: !417)
!780 = !DILocation(line: 496, column: 5, scope: !417)
!781 = !DILocation(line: 496, column: 15, scope: !417)
!782 = !DILocation(line: 497, column: 5, scope: !417)
!783 = !DILocation(line: 497, column: 15, scope: !417)
!784 = !DILocation(line: 499, column: 35, scope: !417)
!785 = !DILocation(line: 499, column: 40, scope: !417)
!786 = !DILocation(line: 499, column: 12, scope: !417)
!787 = !DILocation(line: 499, column: 10, scope: !417)
!788 = !DILocation(line: 500, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !417, file: !371, line: 500, column: 9)
!790 = !DILocation(line: 500, column: 14, scope: !789)
!791 = !DILocation(line: 500, column: 9, scope: !417)
!792 = !DILocation(line: 501, column: 9, scope: !789)
!793 = !DILocation(line: 503, column: 24, scope: !417)
!794 = !DILocation(line: 503, column: 5, scope: !417)
!795 = !DILocation(line: 505, column: 28, scope: !417)
!796 = !DILocation(line: 505, column: 36, scope: !417)
!797 = !DILocation(line: 505, column: 12, scope: !417)
!798 = !DILocation(line: 505, column: 10, scope: !417)
!799 = !DILocation(line: 506, column: 22, scope: !417)
!800 = !DILocation(line: 506, column: 5, scope: !417)
!801 = !DILocation(line: 508, column: 9, scope: !431)
!802 = !DILocation(line: 508, column: 14, scope: !431)
!803 = !DILocation(line: 508, column: 9, scope: !417)
!804 = !DILocation(line: 509, column: 9, scope: !430)
!805 = !DILocation(line: 509, column: 14, scope: !806)
!806 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 1)
!807 = !DILocation(line: 509, column: 24, scope: !429)
!808 = !DILocation(line: 509, column: 54, scope: !429)
!809 = !DILocation(line: 509, column: 69, scope: !810)
!810 = distinct !DILexicalBlock(scope: !429, file: !371, line: 509, column: 66)
!811 = !DILocation(line: 509, column: 86, scope: !810)
!812 = !DILocation(line: 509, column: 66, scope: !810)
!813 = !DILocation(line: 509, column: 96, scope: !810)
!814 = !DILocation(line: 509, column: 66, scope: !429)
!815 = !DILocation(line: 509, column: 66, scope: !816)
!816 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 2)
!817 = !DILocation(line: 509, column: 127, scope: !818)
!818 = !DILexicalBlockFile(scope: !810, file: !371, discriminator: 3)
!819 = !DILocation(line: 509, column: 145, scope: !810)
!820 = !DILocation(line: 509, column: 155, scope: !810)
!821 = !DILocation(line: 509, column: 180, scope: !810)
!822 = !DILocation(line: 509, column: 111, scope: !810)
!823 = !DILocation(line: 509, column: 199, scope: !824)
!824 = !DILexicalBlockFile(scope: !430, file: !371, discriminator: 4)
!825 = !DILocation(line: 509, column: 199, scope: !429)
!826 = !DILocation(line: 509, column: 199, scope: !827)
!827 = !DILexicalBlockFile(scope: !429, file: !371, discriminator: 5)
!828 = !DILocation(line: 510, column: 9, scope: !430)
!829 = !DILocation(line: 513, column: 41, scope: !417)
!830 = !DILocation(line: 513, column: 47, scope: !417)
!831 = !DILocation(line: 513, column: 11, scope: !417)
!832 = !DILocation(line: 513, column: 9, scope: !417)
!833 = !DILocation(line: 514, column: 5, scope: !417)
!834 = !DILocation(line: 514, column: 10, scope: !835)
!835 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 1)
!836 = !DILocation(line: 514, column: 20, scope: !433)
!837 = !DILocation(line: 514, column: 50, scope: !433)
!838 = !DILocation(line: 514, column: 65, scope: !839)
!839 = distinct !DILexicalBlock(scope: !433, file: !371, line: 514, column: 62)
!840 = !DILocation(line: 514, column: 82, scope: !839)
!841 = !DILocation(line: 514, column: 62, scope: !839)
!842 = !DILocation(line: 514, column: 92, scope: !839)
!843 = !DILocation(line: 514, column: 62, scope: !433)
!844 = !DILocation(line: 514, column: 62, scope: !845)
!845 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 2)
!846 = !DILocation(line: 514, column: 123, scope: !847)
!847 = !DILexicalBlockFile(scope: !839, file: !371, discriminator: 3)
!848 = !DILocation(line: 514, column: 141, scope: !839)
!849 = !DILocation(line: 514, column: 151, scope: !839)
!850 = !DILocation(line: 514, column: 176, scope: !839)
!851 = !DILocation(line: 514, column: 107, scope: !839)
!852 = !DILocation(line: 514, column: 195, scope: !853)
!853 = !DILexicalBlockFile(scope: !417, file: !371, discriminator: 4)
!854 = !DILocation(line: 514, column: 195, scope: !433)
!855 = !DILocation(line: 514, column: 195, scope: !856)
!856 = !DILexicalBlockFile(scope: !433, file: !371, discriminator: 5)
!857 = !DILocation(line: 515, column: 5, scope: !417)
!858 = !DILocation(line: 515, column: 10, scope: !859)
!859 = !DILexicalBlockFile(scope: !435, file: !371, discriminator: 1)
!860 = !DILocation(line: 515, column: 20, scope: !435)
!861 = !DILocation(line: 515, column: 50, scope: !435)
!862 = !DILocation(line: 515, column: 65, scope: !863)
!863 = distinct !DILexicalBlock(scope: !435, file: !371, line: 515, column: 62)
!864 = !DILocation(line: 515, column: 82, scope: !863)
!865 = !DILocation(line: 515, column: 62, scope: !863)
!866 = !DILocation(line: 515, column: 92, scope: !863)
!867 = !DILocation(line: 515, column: 62, scope: !435)
!868 = !DILocation(line: 515, column: 62, scope: !869)
!869 = !DILexicalBlockFile(scope: !435, file: !371, discriminator: 2)
!870 = !DILocation(line: 515, column: 123, scope: !871)
!871 = !DILexicalBlockFile(scope: !863, file: !371, discriminator: 3)
!872 = !DILocation(line: 515, column: 141, scope: !863)
!873 = !DILocation(line: 515, column: 151, scope: !863)
!874 = !DILocation(line: 515, column: 176, scope: !863)
!875 = !DILocation(line: 515, column: 107, scope: !863)
!876 = !DILocation(line: 515, column: 195, scope: !853)
!877 = !DILocation(line: 515, column: 195, scope: !435)
!878 = !DILocation(line: 515, column: 195, scope: !879)
!879 = !DILexicalBlockFile(scope: !435, file: !371, discriminator: 5)
!880 = !DILocation(line: 517, column: 12, scope: !417)
!881 = !DILocation(line: 517, column: 5, scope: !417)
!882 = !DILocation(line: 518, column: 1, scope: !417)
!883 = !DILocation(line: 521, column: 30, scope: !436)
!884 = !DILocation(line: 521, column: 45, scope: !436)
!885 = !DILocation(line: 521, column: 61, scope: !436)
!886 = !DILocation(line: 523, column: 5, scope: !436)
!887 = !DILocation(line: 523, column: 15, scope: !436)
!888 = !DILocation(line: 524, column: 25, scope: !889)
!889 = distinct !DILexicalBlock(scope: !436, file: !371, line: 524, column: 9)
!890 = !DILocation(line: 524, column: 30, scope: !889)
!891 = !DILocation(line: 524, column: 39, scope: !889)
!892 = !DILocation(line: 524, column: 59, scope: !889)
!893 = !DILocation(line: 524, column: 93, scope: !894)
!894 = !DILexicalBlockFile(scope: !889, file: !371, discriminator: 1)
!895 = !DILocation(line: 524, column: 98, scope: !889)
!896 = !DILocation(line: 524, column: 62, scope: !889)
!897 = !DILocation(line: 524, column: 9, scope: !436)
!898 = !DILocation(line: 525, column: 25, scope: !899)
!899 = distinct !DILexicalBlock(scope: !889, file: !371, line: 524, column: 128)
!900 = !DILocation(line: 525, column: 9, scope: !899)
!901 = !DILocation(line: 527, column: 9, scope: !899)
!902 = !DILocation(line: 529, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !436, file: !371, line: 529, column: 9)
!904 = !DILocation(line: 529, column: 9, scope: !436)
!905 = !DILocation(line: 530, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !371, line: 530, column: 13)
!907 = distinct !DILexicalBlock(scope: !903, file: !371, line: 529, column: 13)
!908 = !DILocation(line: 530, column: 13, scope: !907)
!909 = !DILocation(line: 531, column: 29, scope: !906)
!910 = !DILocation(line: 531, column: 13, scope: !906)
!911 = !DILocation(line: 533, column: 9, scope: !907)
!912 = !DILocation(line: 536, column: 29, scope: !436)
!913 = !DILocation(line: 536, column: 12, scope: !436)
!914 = !DILocation(line: 536, column: 10, scope: !436)
!915 = !DILocation(line: 537, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !436, file: !371, line: 537, column: 9)
!917 = !DILocation(line: 537, column: 14, scope: !916)
!918 = !DILocation(line: 537, column: 9, scope: !436)
!919 = !DILocation(line: 539, column: 22, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !371, line: 537, column: 29)
!921 = !DILocation(line: 540, column: 39, scope: !920)
!922 = !DILocation(line: 540, column: 22, scope: !920)
!923 = !DILocation(line: 539, column: 9, scope: !920)
!924 = !DILocation(line: 541, column: 9, scope: !920)
!925 = !DILocation(line: 543, column: 30, scope: !926)
!926 = distinct !DILexicalBlock(scope: !436, file: !371, line: 543, column: 9)
!927 = !DILocation(line: 543, column: 36, scope: !926)
!928 = !DILocation(line: 543, column: 42, scope: !926)
!929 = !DILocation(line: 543, column: 9, scope: !926)
!930 = !DILocation(line: 543, column: 9, scope: !436)
!931 = !DILocation(line: 544, column: 9, scope: !926)
!932 = !DILocation(line: 545, column: 5, scope: !436)
!933 = !DILocation(line: 545, column: 10, scope: !934)
!934 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 1)
!935 = !DILocation(line: 545, column: 20, scope: !445)
!936 = !DILocation(line: 545, column: 50, scope: !445)
!937 = !DILocation(line: 545, column: 62, scope: !938)
!938 = distinct !DILexicalBlock(scope: !445, file: !371, line: 545, column: 59)
!939 = !DILocation(line: 545, column: 79, scope: !938)
!940 = !DILocation(line: 545, column: 59, scope: !938)
!941 = !DILocation(line: 545, column: 89, scope: !938)
!942 = !DILocation(line: 545, column: 59, scope: !445)
!943 = !DILocation(line: 545, column: 59, scope: !944)
!944 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 2)
!945 = !DILocation(line: 545, column: 120, scope: !946)
!946 = !DILexicalBlockFile(scope: !938, file: !371, discriminator: 3)
!947 = !DILocation(line: 545, column: 138, scope: !938)
!948 = !DILocation(line: 545, column: 148, scope: !938)
!949 = !DILocation(line: 545, column: 173, scope: !938)
!950 = !DILocation(line: 545, column: 104, scope: !938)
!951 = !DILocation(line: 545, column: 192, scope: !952)
!952 = !DILexicalBlockFile(scope: !436, file: !371, discriminator: 4)
!953 = !DILocation(line: 545, column: 192, scope: !445)
!954 = !DILocation(line: 545, column: 192, scope: !955)
!955 = !DILexicalBlockFile(scope: !445, file: !371, discriminator: 5)
!956 = !DILocation(line: 546, column: 5, scope: !436)
!957 = !DILocation(line: 547, column: 1, scope: !436)
!958 = !DILocation(line: 550, column: 35, scope: !446)
!959 = !DILocation(line: 550, column: 50, scope: !446)
!960 = !{!675, !675, i64 0}
!961 = !DILocation(line: 550, column: 61, scope: !446)
!962 = !DILocation(line: 552, column: 5, scope: !446)
!963 = !DILocation(line: 552, column: 15, scope: !446)
!964 = !DILocation(line: 552, column: 35, scope: !446)
!965 = !DILocation(line: 552, column: 19, scope: !446)
!966 = !DILocation(line: 553, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !446, file: !371, line: 553, column: 9)
!968 = !DILocation(line: 553, column: 9, scope: !446)
!969 = !DILocation(line: 554, column: 9, scope: !967)
!970 = !DILocation(line: 555, column: 28, scope: !971)
!971 = distinct !DILexicalBlock(scope: !446, file: !371, line: 555, column: 9)
!972 = !DILocation(line: 555, column: 31, scope: !971)
!973 = !DILocation(line: 555, column: 37, scope: !971)
!974 = !DILocation(line: 555, column: 9, scope: !971)
!975 = !DILocation(line: 555, column: 40, scope: !971)
!976 = !DILocation(line: 555, column: 9, scope: !446)
!977 = !DILocation(line: 556, column: 9, scope: !971)
!978 = !DILocation(line: 557, column: 5, scope: !446)
!979 = !DILocation(line: 557, column: 10, scope: !980)
!980 = !DILexicalBlockFile(scope: !455, file: !371, discriminator: 1)
!981 = !DILocation(line: 557, column: 20, scope: !455)
!982 = !DILocation(line: 557, column: 50, scope: !455)
!983 = !DILocation(line: 557, column: 62, scope: !984)
!984 = distinct !DILexicalBlock(scope: !455, file: !371, line: 557, column: 59)
!985 = !DILocation(line: 557, column: 79, scope: !984)
!986 = !DILocation(line: 557, column: 59, scope: !984)
!987 = !DILocation(line: 557, column: 89, scope: !984)
!988 = !DILocation(line: 557, column: 59, scope: !455)
!989 = !DILocation(line: 557, column: 59, scope: !990)
!990 = !DILexicalBlockFile(scope: !455, file: !371, discriminator: 2)
!991 = !DILocation(line: 557, column: 120, scope: !992)
!992 = !DILexicalBlockFile(scope: !984, file: !371, discriminator: 3)
!993 = !DILocation(line: 557, column: 138, scope: !984)
!994 = !DILocation(line: 557, column: 148, scope: !984)
!995 = !DILocation(line: 557, column: 173, scope: !984)
!996 = !DILocation(line: 557, column: 104, scope: !984)
!997 = !DILocation(line: 557, column: 192, scope: !998)
!998 = !DILexicalBlockFile(scope: !446, file: !371, discriminator: 4)
!999 = !DILocation(line: 557, column: 192, scope: !455)
!1000 = !DILocation(line: 557, column: 192, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !455, file: !371, discriminator: 5)
!1002 = !DILocation(line: 558, column: 5, scope: !446)
!1003 = !DILocation(line: 559, column: 1, scope: !446)
!1004 = !DILocation(line: 562, column: 38, scope: !456)
!1005 = !DILocation(line: 562, column: 53, scope: !456)
!1006 = !DILocation(line: 562, column: 71, scope: !456)
!1007 = !DILocation(line: 564, column: 5, scope: !456)
!1008 = !DILocation(line: 564, column: 15, scope: !456)
!1009 = !DILocation(line: 564, column: 40, scope: !456)
!1010 = !DILocation(line: 564, column: 19, scope: !456)
!1011 = !DILocation(line: 565, column: 10, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !456, file: !371, line: 565, column: 9)
!1013 = !DILocation(line: 565, column: 9, scope: !456)
!1014 = !DILocation(line: 566, column: 9, scope: !1012)
!1015 = !DILocation(line: 567, column: 28, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !456, file: !371, line: 567, column: 9)
!1017 = !DILocation(line: 567, column: 31, scope: !1016)
!1018 = !DILocation(line: 567, column: 37, scope: !1016)
!1019 = !DILocation(line: 567, column: 9, scope: !1016)
!1020 = !DILocation(line: 567, column: 40, scope: !1016)
!1021 = !DILocation(line: 567, column: 9, scope: !456)
!1022 = !DILocation(line: 568, column: 9, scope: !1016)
!1023 = !DILocation(line: 569, column: 5, scope: !456)
!1024 = !DILocation(line: 569, column: 10, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 1)
!1026 = !DILocation(line: 569, column: 20, scope: !465)
!1027 = !DILocation(line: 569, column: 50, scope: !465)
!1028 = !DILocation(line: 569, column: 62, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !465, file: !371, line: 569, column: 59)
!1030 = !DILocation(line: 569, column: 79, scope: !1029)
!1031 = !DILocation(line: 569, column: 59, scope: !1029)
!1032 = !DILocation(line: 569, column: 89, scope: !1029)
!1033 = !DILocation(line: 569, column: 59, scope: !465)
!1034 = !DILocation(line: 569, column: 59, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 2)
!1036 = !DILocation(line: 569, column: 120, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1029, file: !371, discriminator: 3)
!1038 = !DILocation(line: 569, column: 138, scope: !1029)
!1039 = !DILocation(line: 569, column: 148, scope: !1029)
!1040 = !DILocation(line: 569, column: 173, scope: !1029)
!1041 = !DILocation(line: 569, column: 104, scope: !1029)
!1042 = !DILocation(line: 569, column: 192, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !456, file: !371, discriminator: 4)
!1044 = !DILocation(line: 569, column: 192, scope: !465)
!1045 = !DILocation(line: 569, column: 192, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !465, file: !371, discriminator: 5)
!1047 = !DILocation(line: 570, column: 5, scope: !456)
!1048 = !DILocation(line: 571, column: 1, scope: !456)
!1049 = !DILocation(line: 17, column: 25, scope: !476)
!1050 = !DILocation(line: 17, column: 37, scope: !476)
!1051 = !DILocation(line: 19, column: 5, scope: !476)
!1052 = !DILocation(line: 19, column: 9, scope: !476)
!1053 = !DILocation(line: 20, column: 5, scope: !476)
!1054 = !DILocation(line: 20, column: 9, scope: !476)
!1055 = !DILocation(line: 21, column: 5, scope: !476)
!1056 = !DILocation(line: 21, column: 12, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !371, discriminator: 5)
!1058 = !DILexicalBlockFile(scope: !476, file: !371, discriminator: 1)
!1059 = !DILocation(line: 21, column: 18, scope: !476)
!1060 = !DILocation(line: 21, column: 22, scope: !476)
!1061 = !DILocation(line: 21, column: 26, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !476, file: !371, discriminator: 3)
!1063 = !DILocation(line: 21, column: 25, scope: !476)
!1064 = !{!627, !627, i64 0}
!1065 = !DILocation(line: 21, column: 36, scope: !476)
!1066 = !DILocation(line: 21, column: 33, scope: !476)
!1067 = !DILocation(line: 21, column: 5, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !371, discriminator: 4)
!1069 = !DILexicalBlockFile(scope: !476, file: !371, discriminator: 2)
!1070 = !DILocation(line: 22, column: 18, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !476, file: !371, line: 21, column: 45)
!1072 = !DILocation(line: 22, column: 17, scope: !1071)
!1073 = !DILocation(line: 25, column: 29, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !371, line: 22, column: 26)
!1075 = !DILocation(line: 25, column: 13, scope: !1074)
!1076 = !DILocation(line: 27, column: 13, scope: !1074)
!1077 = !DILocation(line: 31, column: 17, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !371, line: 31, column: 17)
!1079 = !DILocation(line: 31, column: 23, scope: !1078)
!1080 = !DILocation(line: 31, column: 17, scope: !1074)
!1081 = !DILocation(line: 32, column: 22, scope: !1078)
!1082 = !DILocation(line: 32, column: 17, scope: !1078)
!1083 = !DILocation(line: 33, column: 18, scope: !1074)
!1084 = !DILocation(line: 34, column: 13, scope: !1074)
!1085 = !DILocation(line: 38, column: 18, scope: !1074)
!1086 = !DILocation(line: 39, column: 13, scope: !1074)
!1087 = !DILocation(line: 46, column: 13, scope: !1074)
!1088 = !DILocation(line: 48, column: 17, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1074, file: !371, line: 48, column: 17)
!1090 = !DILocation(line: 48, column: 23, scope: !1089)
!1091 = !DILocation(line: 48, column: 17, scope: !1074)
!1092 = !DILocation(line: 49, column: 22, scope: !1089)
!1093 = !DILocation(line: 49, column: 17, scope: !1089)
!1094 = !DILocation(line: 50, column: 9, scope: !1074)
!1095 = !DILocation(line: 51, column: 15, scope: !1071)
!1096 = !DILocation(line: 53, column: 12, scope: !476)
!1097 = !DILocation(line: 53, column: 5, scope: !476)
!1098 = !DILocation(line: 54, column: 1, scope: !476)
!1099 = !DILocation(line: 199, column: 25, scope: !484)
!1100 = !DILocation(line: 199, column: 44, scope: !484)
!1101 = !DILocation(line: 199, column: 54, scope: !484)
!1102 = !DILocation(line: 201, column: 5, scope: !484)
!1103 = !DILocation(line: 202, column: 20, scope: !496)
!1104 = !DILocation(line: 202, column: 29, scope: !496)
!1105 = !DILocation(line: 202, column: 17, scope: !496)
!1106 = !DILocation(line: 204, column: 31, scope: !495)
!1107 = !DILocation(line: 204, column: 41, scope: !495)
!1108 = !DILocation(line: 205, column: 44, scope: !495)
!1109 = !DILocation(line: 205, column: 43, scope: !495)
!1110 = !DILocation(line: 205, column: 31, scope: !495)
!1111 = !DILocation(line: 205, column: 60, scope: !495)
!1112 = !DILocation(line: 204, column: 20, scope: !495)
!1113 = !DILocation(line: 204, column: 13, scope: !495)
!1114 = !DILocation(line: 208, column: 30, scope: !495)
!1115 = !DILocation(line: 208, column: 40, scope: !495)
!1116 = !DILocation(line: 209, column: 43, scope: !495)
!1117 = !DILocation(line: 209, column: 42, scope: !495)
!1118 = !DILocation(line: 209, column: 30, scope: !495)
!1119 = !DILocation(line: 209, column: 59, scope: !495)
!1120 = !DILocation(line: 208, column: 20, scope: !495)
!1121 = !DILocation(line: 208, column: 13, scope: !495)
!1122 = !DILocation(line: 212, column: 30, scope: !495)
!1123 = !DILocation(line: 212, column: 40, scope: !495)
!1124 = !DILocation(line: 213, column: 43, scope: !495)
!1125 = !DILocation(line: 213, column: 42, scope: !495)
!1126 = !DILocation(line: 213, column: 30, scope: !495)
!1127 = !DILocation(line: 213, column: 59, scope: !495)
!1128 = !DILocation(line: 212, column: 20, scope: !495)
!1129 = !DILocation(line: 212, column: 13, scope: !495)
!1130 = !DILocation(line: 219, column: 60, scope: !495)
!1131 = !DILocation(line: 219, column: 59, scope: !495)
!1132 = !DILocation(line: 219, column: 42, scope: !495)
!1133 = !DILocation(line: 219, column: 42, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !495, file: !371, discriminator: 1)
!1135 = !DILocation(line: 219, column: 42, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !495, file: !371, discriminator: 2)
!1137 = !DILocation(line: 219, column: 42, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !371, discriminator: 4)
!1139 = !DILexicalBlockFile(scope: !495, file: !371, discriminator: 3)
!1140 = !DILocation(line: 219, column: 36, scope: !495)
!1141 = !DILocation(line: 219, column: 20, scope: !495)
!1142 = !DILocation(line: 219, column: 13, scope: !495)
!1143 = !DILocation(line: 222, column: 60, scope: !495)
!1144 = !DILocation(line: 222, column: 59, scope: !495)
!1145 = !DILocation(line: 222, column: 42, scope: !495)
!1146 = !DILocation(line: 222, column: 42, scope: !1134)
!1147 = !DILocation(line: 222, column: 42, scope: !1136)
!1148 = !DILocation(line: 222, column: 42, scope: !1138)
!1149 = !DILocation(line: 222, column: 36, scope: !495)
!1150 = !DILocation(line: 222, column: 20, scope: !495)
!1151 = !DILocation(line: 222, column: 13, scope: !495)
!1152 = !DILocation(line: 226, column: 13, scope: !494)
!1153 = !DILocation(line: 226, column: 26, scope: !494)
!1154 = !DILocation(line: 227, column: 35, scope: !494)
!1155 = !DILocation(line: 227, column: 34, scope: !494)
!1156 = !DILocation(line: 227, column: 17, scope: !494)
!1157 = !DILocation(line: 227, column: 17, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !494, file: !371, discriminator: 1)
!1159 = !DILocation(line: 227, column: 17, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !494, file: !371, discriminator: 2)
!1161 = !DILocation(line: 227, column: 17, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1163, file: !371, discriminator: 4)
!1163 = !DILexicalBlockFile(scope: !494, file: !371, discriminator: 3)
!1164 = !DILocation(line: 227, column: 15, scope: !494)
!1165 = !DILocation(line: 228, column: 44, scope: !494)
!1166 = !DILocation(line: 228, column: 20, scope: !494)
!1167 = !DILocation(line: 228, column: 13, scope: !494)
!1168 = !DILocation(line: 229, column: 9, scope: !495)
!1169 = !DILocation(line: 237, column: 54, scope: !495)
!1170 = !DILocation(line: 237, column: 53, scope: !495)
!1171 = !DILocation(line: 237, column: 36, scope: !495)
!1172 = !DILocation(line: 237, column: 36, scope: !1134)
!1173 = !DILocation(line: 237, column: 36, scope: !1136)
!1174 = !DILocation(line: 237, column: 36, scope: !1138)
!1175 = !DILocation(line: 237, column: 20, scope: !495)
!1176 = !DILocation(line: 237, column: 13, scope: !495)
!1177 = !DILocation(line: 241, column: 13, scope: !500)
!1178 = !DILocation(line: 241, column: 27, scope: !500)
!1179 = !DILocation(line: 242, column: 35, scope: !500)
!1180 = !DILocation(line: 242, column: 34, scope: !500)
!1181 = !DILocation(line: 242, column: 17, scope: !500)
!1182 = !DILocation(line: 242, column: 17, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !500, file: !371, discriminator: 1)
!1184 = !DILocation(line: 242, column: 17, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !500, file: !371, discriminator: 2)
!1186 = !DILocation(line: 242, column: 17, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !371, discriminator: 4)
!1188 = !DILexicalBlockFile(scope: !500, file: !371, discriminator: 3)
!1189 = !DILocation(line: 242, column: 15, scope: !500)
!1190 = !DILocation(line: 243, column: 44, scope: !500)
!1191 = !DILocation(line: 243, column: 20, scope: !500)
!1192 = !DILocation(line: 243, column: 13, scope: !500)
!1193 = !DILocation(line: 244, column: 9, scope: !495)
!1194 = !DILocation(line: 248, column: 69, scope: !495)
!1195 = !DILocation(line: 248, column: 68, scope: !495)
!1196 = !DILocation(line: 248, column: 51, scope: !495)
!1197 = !DILocation(line: 248, column: 51, scope: !1134)
!1198 = !DILocation(line: 248, column: 51, scope: !1136)
!1199 = !DILocation(line: 248, column: 51, scope: !1138)
!1200 = !DILocation(line: 248, column: 20, scope: !495)
!1201 = !DILocation(line: 248, column: 13, scope: !495)
!1202 = !DILocation(line: 251, column: 77, scope: !495)
!1203 = !DILocation(line: 251, column: 76, scope: !495)
!1204 = !DILocation(line: 251, column: 59, scope: !495)
!1205 = !DILocation(line: 251, column: 59, scope: !1134)
!1206 = !DILocation(line: 251, column: 59, scope: !1136)
!1207 = !DILocation(line: 251, column: 59, scope: !1138)
!1208 = !DILocation(line: 251, column: 20, scope: !495)
!1209 = !DILocation(line: 251, column: 13, scope: !495)
!1210 = !DILocation(line: 255, column: 13, scope: !502)
!1211 = !DILocation(line: 255, column: 23, scope: !502)
!1212 = !DILocation(line: 256, column: 13, scope: !502)
!1213 = !DILocation(line: 256, column: 25, scope: !502)
!1214 = !DILocation(line: 256, column: 47, scope: !502)
!1215 = !DILocation(line: 256, column: 46, scope: !502)
!1216 = !DILocation(line: 256, column: 29, scope: !502)
!1217 = !DILocation(line: 256, column: 29, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !502, file: !371, discriminator: 1)
!1219 = !DILocation(line: 256, column: 29, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !502, file: !371, discriminator: 2)
!1221 = !DILocation(line: 256, column: 29, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !371, discriminator: 4)
!1223 = !DILexicalBlockFile(scope: !502, file: !371, discriminator: 3)
!1224 = !DILocation(line: 257, column: 13, scope: !502)
!1225 = !DILocation(line: 257, column: 24, scope: !502)
!1226 = !DILocation(line: 258, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !502, file: !371, line: 258, column: 17)
!1228 = !DILocation(line: 258, column: 18, scope: !1227)
!1229 = !DILocation(line: 258, column: 17, scope: !1227)
!1230 = !DILocation(line: 258, column: 28, scope: !1227)
!1231 = !DILocation(line: 258, column: 17, scope: !502)
!1232 = !DILocation(line: 259, column: 20, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1227, file: !371, line: 258, column: 36)
!1234 = !DILocation(line: 259, column: 17, scope: !1233)
!1235 = !DILocation(line: 260, column: 21, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !371, line: 260, column: 21)
!1237 = !DILocation(line: 260, column: 27, scope: !1236)
!1238 = !DILocation(line: 260, column: 21, scope: !1233)
!1239 = !DILocation(line: 261, column: 43, scope: !1236)
!1240 = !DILocation(line: 261, column: 42, scope: !1236)
!1241 = !DILocation(line: 261, column: 25, scope: !1236)
!1242 = !DILocation(line: 261, column: 25, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1236, file: !371, discriminator: 1)
!1244 = !DILocation(line: 261, column: 25, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1236, file: !371, discriminator: 2)
!1246 = !DILocation(line: 261, column: 25, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !371, discriminator: 4)
!1248 = !DILexicalBlockFile(scope: !1236, file: !371, discriminator: 3)
!1249 = !DILocation(line: 261, column: 23, scope: !1236)
!1250 = !DILocation(line: 261, column: 21, scope: !1236)
!1251 = !DILocation(line: 263, column: 43, scope: !1236)
!1252 = !DILocation(line: 263, column: 42, scope: !1236)
!1253 = !DILocation(line: 263, column: 25, scope: !1236)
!1254 = !DILocation(line: 263, column: 25, scope: !1243)
!1255 = !DILocation(line: 263, column: 25, scope: !1245)
!1256 = !DILocation(line: 263, column: 25, scope: !1247)
!1257 = !DILocation(line: 263, column: 23, scope: !1236)
!1258 = !DILocation(line: 264, column: 13, scope: !1233)
!1259 = !DILocation(line: 266, column: 19, scope: !1227)
!1260 = !DILocation(line: 267, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !502, file: !371, line: 267, column: 17)
!1262 = !DILocation(line: 267, column: 19, scope: !1261)
!1263 = !DILocation(line: 267, column: 17, scope: !502)
!1264 = !DILocation(line: 268, column: 19, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !371, line: 267, column: 34)
!1266 = !DILocation(line: 269, column: 33, scope: !1265)
!1267 = !DILocation(line: 269, column: 38, scope: !1265)
!1268 = !DILocation(line: 269, column: 47, scope: !1265)
!1269 = !DILocation(line: 270, column: 13, scope: !1265)
!1270 = !DILocation(line: 272, column: 21, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !371, line: 272, column: 21)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !371, line: 271, column: 18)
!1273 = !DILocation(line: 272, column: 23, scope: !1271)
!1274 = !DILocation(line: 272, column: 21, scope: !1272)
!1275 = !DILocation(line: 273, column: 43, scope: !1271)
!1276 = !DILocation(line: 273, column: 25, scope: !1271)
!1277 = !DILocation(line: 273, column: 23, scope: !1271)
!1278 = !DILocation(line: 273, column: 21, scope: !1271)
!1279 = !DILocation(line: 274, column: 43, scope: !1272)
!1280 = !DILocation(line: 274, column: 46, scope: !1272)
!1281 = !DILocation(line: 274, column: 21, scope: !1272)
!1282 = !DILocation(line: 274, column: 19, scope: !1272)
!1283 = !DILocation(line: 276, column: 20, scope: !502)
!1284 = !DILocation(line: 276, column: 13, scope: !502)
!1285 = !DILocation(line: 277, column: 9, scope: !495)
!1286 = !DILocation(line: 281, column: 43, scope: !495)
!1287 = !DILocation(line: 281, column: 42, scope: !495)
!1288 = !DILocation(line: 281, column: 25, scope: !495)
!1289 = !DILocation(line: 281, column: 25, scope: !1134)
!1290 = !DILocation(line: 281, column: 25, scope: !1136)
!1291 = !DILocation(line: 281, column: 25, scope: !1138)
!1292 = !DILocation(line: 280, column: 20, scope: !495)
!1293 = !DILocation(line: 280, column: 13, scope: !495)
!1294 = !DILocation(line: 285, column: 51, scope: !495)
!1295 = !DILocation(line: 285, column: 50, scope: !495)
!1296 = !DILocation(line: 285, column: 33, scope: !495)
!1297 = !DILocation(line: 285, column: 33, scope: !1134)
!1298 = !DILocation(line: 285, column: 33, scope: !1136)
!1299 = !DILocation(line: 285, column: 33, scope: !1138)
!1300 = !DILocation(line: 284, column: 20, scope: !495)
!1301 = !DILocation(line: 284, column: 13, scope: !495)
!1302 = !DILocation(line: 289, column: 13, scope: !510)
!1303 = !DILocation(line: 289, column: 18, scope: !510)
!1304 = !DILocation(line: 290, column: 44, scope: !510)
!1305 = !DILocation(line: 290, column: 43, scope: !510)
!1306 = !DILocation(line: 290, column: 26, scope: !510)
!1307 = !DILocation(line: 290, column: 26, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !510, file: !371, discriminator: 1)
!1309 = !DILocation(line: 290, column: 26, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !510, file: !371, discriminator: 2)
!1311 = !DILocation(line: 290, column: 26, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !371, discriminator: 4)
!1313 = !DILexicalBlockFile(scope: !510, file: !371, discriminator: 3)
!1314 = !DILocation(line: 290, column: 20, scope: !510)
!1315 = !DILocation(line: 290, column: 13, scope: !510)
!1316 = !DILocation(line: 290, column: 18, scope: !510)
!1317 = !DILocation(line: 291, column: 46, scope: !510)
!1318 = !DILocation(line: 291, column: 20, scope: !510)
!1319 = !DILocation(line: 291, column: 13, scope: !510)
!1320 = !DILocation(line: 292, column: 9, scope: !495)
!1321 = !DILocation(line: 295, column: 13, scope: !512)
!1322 = !DILocation(line: 295, column: 17, scope: !512)
!1323 = !DILocation(line: 295, column: 39, scope: !512)
!1324 = !DILocation(line: 295, column: 38, scope: !512)
!1325 = !DILocation(line: 295, column: 21, scope: !512)
!1326 = !DILocation(line: 295, column: 21, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !512, file: !371, discriminator: 1)
!1328 = !DILocation(line: 295, column: 21, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !512, file: !371, discriminator: 2)
!1330 = !DILocation(line: 295, column: 21, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !371, discriminator: 4)
!1332 = !DILexicalBlockFile(scope: !512, file: !371, discriminator: 3)
!1333 = !DILocation(line: 296, column: 42, scope: !512)
!1334 = !DILocation(line: 296, column: 20, scope: !512)
!1335 = !DILocation(line: 296, column: 13, scope: !512)
!1336 = !DILocation(line: 297, column: 9, scope: !495)
!1337 = !DILocation(line: 303, column: 13, scope: !514)
!1338 = !DILocation(line: 303, column: 23, scope: !514)
!1339 = !DILocation(line: 304, column: 13, scope: !514)
!1340 = !DILocation(line: 304, column: 19, scope: !514)
!1341 = !DILocation(line: 304, column: 43, scope: !514)
!1342 = !DILocation(line: 304, column: 42, scope: !514)
!1343 = !DILocation(line: 304, column: 25, scope: !514)
!1344 = !DILocation(line: 304, column: 25, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !514, file: !371, discriminator: 1)
!1346 = !DILocation(line: 304, column: 25, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !514, file: !371, discriminator: 2)
!1348 = !DILocation(line: 304, column: 25, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !371, discriminator: 4)
!1350 = !DILexicalBlockFile(scope: !514, file: !371, discriminator: 3)
!1351 = !DILocation(line: 305, column: 13, scope: !514)
!1352 = !DILocation(line: 305, column: 24, scope: !514)
!1353 = !DILocation(line: 306, column: 19, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !514, file: !371, line: 306, column: 17)
!1355 = !DILocation(line: 306, column: 18, scope: !1354)
!1356 = !DILocation(line: 306, column: 17, scope: !1354)
!1357 = !DILocation(line: 306, column: 28, scope: !1354)
!1358 = !DILocation(line: 306, column: 17, scope: !514)
!1359 = !DILocation(line: 307, column: 20, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !371, line: 306, column: 36)
!1361 = !DILocation(line: 307, column: 17, scope: !1360)
!1362 = !DILocation(line: 308, column: 21, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !371, line: 308, column: 21)
!1364 = !DILocation(line: 308, column: 27, scope: !1363)
!1365 = !DILocation(line: 308, column: 21, scope: !1360)
!1366 = !DILocation(line: 309, column: 43, scope: !1363)
!1367 = !DILocation(line: 309, column: 42, scope: !1363)
!1368 = !DILocation(line: 309, column: 25, scope: !1363)
!1369 = !DILocation(line: 309, column: 25, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1363, file: !371, discriminator: 1)
!1371 = !DILocation(line: 309, column: 25, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1363, file: !371, discriminator: 2)
!1373 = !DILocation(line: 309, column: 25, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !371, discriminator: 4)
!1375 = !DILexicalBlockFile(scope: !1363, file: !371, discriminator: 3)
!1376 = !DILocation(line: 309, column: 23, scope: !1363)
!1377 = !DILocation(line: 309, column: 21, scope: !1363)
!1378 = !DILocation(line: 311, column: 43, scope: !1363)
!1379 = !DILocation(line: 311, column: 42, scope: !1363)
!1380 = !DILocation(line: 311, column: 25, scope: !1363)
!1381 = !DILocation(line: 311, column: 25, scope: !1370)
!1382 = !DILocation(line: 311, column: 25, scope: !1372)
!1383 = !DILocation(line: 311, column: 25, scope: !1374)
!1384 = !DILocation(line: 311, column: 23, scope: !1363)
!1385 = !DILocation(line: 312, column: 13, scope: !1360)
!1386 = !DILocation(line: 314, column: 19, scope: !1354)
!1387 = !DILocation(line: 315, column: 17, scope: !521)
!1388 = !DILocation(line: 315, column: 21, scope: !521)
!1389 = !DILocation(line: 315, column: 17, scope: !514)
!1390 = !DILocation(line: 316, column: 19, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !521, file: !371, line: 315, column: 36)
!1392 = !DILocation(line: 317, column: 33, scope: !1391)
!1393 = !DILocation(line: 317, column: 38, scope: !1391)
!1394 = !DILocation(line: 317, column: 47, scope: !1391)
!1395 = !DILocation(line: 318, column: 13, scope: !1391)
!1396 = !DILocation(line: 320, column: 21, scope: !519)
!1397 = !DILocation(line: 320, column: 23, scope: !519)
!1398 = !DILocation(line: 320, column: 21, scope: !520)
!1399 = !DILocation(line: 321, column: 21, scope: !518)
!1400 = !DILocation(line: 321, column: 28, scope: !518)
!1401 = !DILocation(line: 321, column: 39, scope: !518)
!1402 = !DILocation(line: 321, column: 32, scope: !518)
!1403 = !DILocation(line: 322, column: 25, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !518, file: !371, line: 322, column: 25)
!1405 = !DILocation(line: 322, column: 27, scope: !1404)
!1406 = !DILocation(line: 322, column: 25, scope: !518)
!1407 = !DILocation(line: 323, column: 41, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !371, line: 322, column: 62)
!1409 = !DILocation(line: 323, column: 25, scope: !1408)
!1410 = !DILocation(line: 325, column: 25, scope: !1408)
!1411 = !DILocation(line: 327, column: 37, scope: !518)
!1412 = !DILocation(line: 327, column: 23, scope: !518)
!1413 = !DILocation(line: 328, column: 17, scope: !519)
!1414 = !DILocation(line: 328, column: 17, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !519, file: !371, discriminator: 1)
!1416 = !DILocation(line: 328, column: 17, scope: !518)
!1417 = !DILocation(line: 329, column: 49, scope: !520)
!1418 = !DILocation(line: 329, column: 54, scope: !520)
!1419 = !DILocation(line: 329, column: 21, scope: !520)
!1420 = !DILocation(line: 329, column: 19, scope: !520)
!1421 = !DILocation(line: 331, column: 20, scope: !514)
!1422 = !DILocation(line: 331, column: 13, scope: !514)
!1423 = !DILocation(line: 332, column: 9, scope: !495)
!1424 = !DILocation(line: 336, column: 13, scope: !523)
!1425 = !DILocation(line: 336, column: 23, scope: !523)
!1426 = !DILocation(line: 337, column: 13, scope: !523)
!1427 = !DILocation(line: 337, column: 19, scope: !523)
!1428 = !DILocation(line: 337, column: 43, scope: !523)
!1429 = !DILocation(line: 337, column: 42, scope: !523)
!1430 = !DILocation(line: 337, column: 25, scope: !523)
!1431 = !DILocation(line: 337, column: 25, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !523, file: !371, discriminator: 1)
!1433 = !DILocation(line: 337, column: 25, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !523, file: !371, discriminator: 2)
!1435 = !DILocation(line: 337, column: 25, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1437, file: !371, discriminator: 4)
!1437 = !DILexicalBlockFile(scope: !523, file: !371, discriminator: 3)
!1438 = !DILocation(line: 338, column: 13, scope: !523)
!1439 = !DILocation(line: 338, column: 24, scope: !523)
!1440 = !DILocation(line: 339, column: 19, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !523, file: !371, line: 339, column: 17)
!1442 = !DILocation(line: 339, column: 18, scope: !1441)
!1443 = !DILocation(line: 339, column: 17, scope: !1441)
!1444 = !DILocation(line: 339, column: 28, scope: !1441)
!1445 = !DILocation(line: 339, column: 17, scope: !523)
!1446 = !DILocation(line: 340, column: 20, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !371, line: 339, column: 36)
!1448 = !DILocation(line: 340, column: 17, scope: !1447)
!1449 = !DILocation(line: 341, column: 21, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !371, line: 341, column: 21)
!1451 = !DILocation(line: 341, column: 27, scope: !1450)
!1452 = !DILocation(line: 341, column: 21, scope: !1447)
!1453 = !DILocation(line: 342, column: 43, scope: !1450)
!1454 = !DILocation(line: 342, column: 42, scope: !1450)
!1455 = !DILocation(line: 342, column: 25, scope: !1450)
!1456 = !DILocation(line: 342, column: 25, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1450, file: !371, discriminator: 1)
!1458 = !DILocation(line: 342, column: 25, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1450, file: !371, discriminator: 2)
!1460 = !DILocation(line: 342, column: 25, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !371, discriminator: 4)
!1462 = !DILexicalBlockFile(scope: !1450, file: !371, discriminator: 3)
!1463 = !DILocation(line: 342, column: 23, scope: !1450)
!1464 = !DILocation(line: 342, column: 21, scope: !1450)
!1465 = !DILocation(line: 344, column: 43, scope: !1450)
!1466 = !DILocation(line: 344, column: 42, scope: !1450)
!1467 = !DILocation(line: 344, column: 25, scope: !1450)
!1468 = !DILocation(line: 344, column: 25, scope: !1457)
!1469 = !DILocation(line: 344, column: 25, scope: !1459)
!1470 = !DILocation(line: 344, column: 25, scope: !1461)
!1471 = !DILocation(line: 344, column: 23, scope: !1450)
!1472 = !DILocation(line: 345, column: 13, scope: !1447)
!1473 = !DILocation(line: 347, column: 19, scope: !1441)
!1474 = !DILocation(line: 348, column: 17, scope: !530)
!1475 = !DILocation(line: 348, column: 21, scope: !530)
!1476 = !DILocation(line: 348, column: 17, scope: !523)
!1477 = !DILocation(line: 349, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !530, file: !371, line: 348, column: 36)
!1479 = !DILocation(line: 350, column: 33, scope: !1478)
!1480 = !DILocation(line: 350, column: 38, scope: !1478)
!1481 = !DILocation(line: 350, column: 47, scope: !1478)
!1482 = !DILocation(line: 351, column: 13, scope: !1478)
!1483 = !DILocation(line: 353, column: 21, scope: !528)
!1484 = !DILocation(line: 353, column: 23, scope: !528)
!1485 = !DILocation(line: 353, column: 21, scope: !529)
!1486 = !DILocation(line: 354, column: 21, scope: !527)
!1487 = !DILocation(line: 354, column: 28, scope: !527)
!1488 = !DILocation(line: 354, column: 39, scope: !527)
!1489 = !DILocation(line: 354, column: 32, scope: !527)
!1490 = !DILocation(line: 355, column: 25, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !527, file: !371, line: 355, column: 25)
!1492 = !DILocation(line: 355, column: 27, scope: !1491)
!1493 = !DILocation(line: 355, column: 25, scope: !527)
!1494 = !DILocation(line: 356, column: 41, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !371, line: 355, column: 62)
!1496 = !DILocation(line: 356, column: 25, scope: !1495)
!1497 = !DILocation(line: 358, column: 25, scope: !1495)
!1498 = !DILocation(line: 360, column: 37, scope: !527)
!1499 = !DILocation(line: 360, column: 23, scope: !527)
!1500 = !DILocation(line: 361, column: 17, scope: !528)
!1501 = !DILocation(line: 361, column: 17, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !528, file: !371, discriminator: 1)
!1503 = !DILocation(line: 361, column: 17, scope: !527)
!1504 = !DILocation(line: 362, column: 47, scope: !529)
!1505 = !DILocation(line: 362, column: 52, scope: !529)
!1506 = !DILocation(line: 362, column: 21, scope: !529)
!1507 = !DILocation(line: 362, column: 19, scope: !529)
!1508 = !DILocation(line: 364, column: 20, scope: !523)
!1509 = !DILocation(line: 364, column: 13, scope: !523)
!1510 = !DILocation(line: 365, column: 9, scope: !495)
!1511 = !DILocation(line: 370, column: 15, scope: !533)
!1512 = !DILocation(line: 370, column: 14, scope: !533)
!1513 = !DILocation(line: 370, column: 13, scope: !533)
!1514 = !DILocation(line: 370, column: 24, scope: !533)
!1515 = !DILocation(line: 370, column: 13, scope: !495)
!1516 = !DILocation(line: 372, column: 13, scope: !532)
!1517 = !DILocation(line: 372, column: 23, scope: !532)
!1518 = !DILocation(line: 372, column: 48, scope: !532)
!1519 = !DILocation(line: 372, column: 47, scope: !532)
!1520 = !DILocation(line: 372, column: 30, scope: !532)
!1521 = !DILocation(line: 372, column: 30, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !532, file: !371, discriminator: 1)
!1523 = !DILocation(line: 372, column: 30, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !532, file: !371, discriminator: 2)
!1525 = !DILocation(line: 372, column: 30, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !371, discriminator: 4)
!1527 = !DILexicalBlockFile(scope: !532, file: !371, discriminator: 3)
!1528 = !DILocation(line: 373, column: 13, scope: !532)
!1529 = !DILocation(line: 373, column: 19, scope: !532)
!1530 = !DILocation(line: 373, column: 43, scope: !532)
!1531 = !DILocation(line: 373, column: 42, scope: !532)
!1532 = !DILocation(line: 373, column: 25, scope: !532)
!1533 = !DILocation(line: 373, column: 25, scope: !1522)
!1534 = !DILocation(line: 373, column: 25, scope: !1524)
!1535 = !DILocation(line: 373, column: 25, scope: !1526)
!1536 = !DILocation(line: 374, column: 16, scope: !532)
!1537 = !DILocation(line: 374, column: 13, scope: !532)
!1538 = !DILocation(line: 375, column: 22, scope: !532)
!1539 = !DILocation(line: 375, column: 28, scope: !532)
!1540 = !DILocation(line: 375, column: 20, scope: !532)
!1541 = !DILocation(line: 375, column: 13, scope: !532)
!1542 = !DILocation(line: 376, column: 9, scope: !533)
!1543 = !DILocation(line: 378, column: 13, scope: !540)
!1544 = !DILocation(line: 378, column: 23, scope: !540)
!1545 = !DILocation(line: 379, column: 35, scope: !540)
!1546 = !DILocation(line: 379, column: 34, scope: !540)
!1547 = !DILocation(line: 379, column: 17, scope: !540)
!1548 = !DILocation(line: 379, column: 17, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !540, file: !371, discriminator: 1)
!1550 = !DILocation(line: 379, column: 17, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !540, file: !371, discriminator: 2)
!1552 = !DILocation(line: 379, column: 17, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1554, file: !371, discriminator: 4)
!1554 = !DILexicalBlockFile(scope: !540, file: !371, discriminator: 3)
!1555 = !DILocation(line: 379, column: 15, scope: !540)
!1556 = !DILocation(line: 380, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !540, file: !371, line: 380, column: 17)
!1558 = !DILocation(line: 380, column: 19, scope: !1557)
!1559 = !DILocation(line: 380, column: 17, scope: !540)
!1560 = !DILocation(line: 381, column: 24, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !371, line: 381, column: 21)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !371, line: 380, column: 34)
!1563 = !DILocation(line: 381, column: 23, scope: !1561)
!1564 = !DILocation(line: 381, column: 33, scope: !1561)
!1565 = !DILocation(line: 381, column: 21, scope: !1561)
!1566 = !DILocation(line: 381, column: 38, scope: !1561)
!1567 = !DILocation(line: 381, column: 21, scope: !1562)
!1568 = !DILocation(line: 382, column: 37, scope: !1561)
!1569 = !DILocation(line: 382, column: 42, scope: !1561)
!1570 = !DILocation(line: 382, column: 51, scope: !1561)
!1571 = !DILocation(line: 382, column: 21, scope: !1561)
!1572 = !DILocation(line: 383, column: 13, scope: !1562)
!1573 = !DILocation(line: 384, column: 23, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1557, file: !371, line: 384, column: 22)
!1575 = !DILocation(line: 384, column: 22, scope: !1557)
!1576 = !DILocation(line: 393, column: 33, scope: !1574)
!1577 = !DILocation(line: 393, column: 17, scope: !1574)
!1578 = !DILocation(line: 395, column: 20, scope: !540)
!1579 = !DILocation(line: 395, column: 13, scope: !540)
!1580 = !DILocation(line: 396, column: 9, scope: !533)
!1581 = !DILocation(line: 402, column: 13, scope: !495)
!1582 = !DILocation(line: 405, column: 29, scope: !495)
!1583 = !DILocation(line: 405, column: 13, scope: !495)
!1584 = !DILocation(line: 407, column: 13, scope: !495)
!1585 = !DILocation(line: 201, column: 5, scope: !497)
!1586 = !DILocation(line: 411, column: 1, scope: !484)
!1587 = !DILocation(line: 152, column: 25, scope: !593)
!1588 = !DILocation(line: 152, column: 44, scope: !593)
!1589 = !DILocation(line: 152, column: 54, scope: !593)
!1590 = !DILocation(line: 152, column: 67, scope: !593)
!1591 = !DILocation(line: 152, column: 74, scope: !593)
!1592 = !DILocation(line: 154, column: 5, scope: !593)
!1593 = !DILocation(line: 154, column: 15, scope: !593)
!1594 = !DILocation(line: 155, column: 5, scope: !593)
!1595 = !DILocation(line: 155, column: 9, scope: !593)
!1596 = !DILocation(line: 156, column: 5, scope: !593)
!1597 = !DILocation(line: 156, column: 9, scope: !593)
!1598 = !DILocation(line: 157, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !593, file: !371, line: 157, column: 9)
!1600 = !DILocation(line: 157, column: 11, scope: !1599)
!1601 = !DILocation(line: 157, column: 9, scope: !593)
!1602 = !DILocation(line: 158, column: 9, scope: !1599)
!1603 = !DILocation(line: 159, column: 26, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !593, file: !371, line: 159, column: 9)
!1605 = !DILocation(line: 159, column: 14, scope: !1604)
!1606 = !DILocation(line: 159, column: 12, scope: !1604)
!1607 = !DILocation(line: 159, column: 30, scope: !1604)
!1608 = !DILocation(line: 159, column: 9, scope: !593)
!1609 = !DILocation(line: 160, column: 9, scope: !1604)
!1610 = !DILocation(line: 163, column: 12, scope: !606)
!1611 = !DILocation(line: 163, column: 10, scope: !606)
!1612 = !DILocation(line: 163, column: 17, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !371, discriminator: 2)
!1614 = !DILexicalBlockFile(scope: !605, file: !371, discriminator: 1)
!1615 = !DILocation(line: 163, column: 21, scope: !605)
!1616 = !DILocation(line: 163, column: 19, scope: !605)
!1617 = !DILocation(line: 163, column: 5, scope: !606)
!1618 = !DILocation(line: 164, column: 9, scope: !604)
!1619 = !DILocation(line: 164, column: 19, scope: !604)
!1620 = !DILocation(line: 166, column: 13, scope: !609)
!1621 = !DILocation(line: 166, column: 13, scope: !604)
!1622 = !DILocation(line: 167, column: 13, scope: !608)
!1623 = !DILocation(line: 167, column: 23, scope: !608)
!1624 = !DILocation(line: 167, column: 35, scope: !608)
!1625 = !DILocation(line: 167, column: 43, scope: !608)
!1626 = !DILocation(line: 168, column: 13, scope: !608)
!1627 = !DILocation(line: 169, column: 28, scope: !608)
!1628 = !DILocation(line: 169, column: 38, scope: !608)
!1629 = !DILocation(line: 169, column: 44, scope: !608)
!1630 = !DILocation(line: 169, column: 17, scope: !608)
!1631 = !DILocation(line: 169, column: 15, scope: !608)
!1632 = !DILocation(line: 170, column: 27, scope: !608)
!1633 = !DILocation(line: 170, column: 38, scope: !608)
!1634 = !DILocation(line: 170, column: 45, scope: !608)
!1635 = !DILocation(line: 170, column: 13, scope: !608)
!1636 = !DILocation(line: 171, column: 9, scope: !609)
!1637 = !DILocation(line: 171, column: 9, scope: !608)
!1638 = !DILocation(line: 173, column: 28, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !609, file: !371, line: 172, column: 14)
!1640 = !DILocation(line: 173, column: 38, scope: !1639)
!1641 = !DILocation(line: 173, column: 44, scope: !1639)
!1642 = !DILocation(line: 173, column: 17, scope: !1639)
!1643 = !DILocation(line: 173, column: 15, scope: !1639)
!1644 = !DILocation(line: 175, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !604, file: !371, line: 175, column: 13)
!1646 = !DILocation(line: 175, column: 15, scope: !1645)
!1647 = !DILocation(line: 175, column: 13, scope: !604)
!1648 = !DILocation(line: 176, column: 24, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !371, line: 175, column: 30)
!1650 = !DILocation(line: 177, column: 59, scope: !1649)
!1651 = !DILocation(line: 178, column: 15, scope: !1649)
!1652 = !DILocation(line: 179, column: 9, scope: !1649)
!1653 = !DILocation(line: 180, column: 47, scope: !604)
!1654 = !DILocation(line: 180, column: 42, scope: !604)
!1655 = !DILocation(line: 180, column: 10, scope: !604)
!1656 = !DILocation(line: 180, column: 29, scope: !604)
!1657 = !DILocation(line: 180, column: 11, scope: !604)
!1658 = !DILocation(line: 180, column: 34, scope: !604)
!1659 = !DILocation(line: 180, column: 45, scope: !604)
!1660 = !DILocation(line: 181, column: 5, scope: !605)
!1661 = !DILocation(line: 181, column: 5, scope: !604)
!1662 = !DILocation(line: 163, column: 25, scope: !605)
!1663 = !DILocation(line: 163, column: 5, scope: !605)
!1664 = !DILocation(line: 182, column: 9, scope: !615)
!1665 = !DILocation(line: 182, column: 9, scope: !593)
!1666 = !DILocation(line: 184, column: 9, scope: !614)
!1667 = !DILocation(line: 184, column: 14, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !613, file: !371, discriminator: 1)
!1669 = !DILocation(line: 184, column: 24, scope: !613)
!1670 = !DILocation(line: 184, column: 54, scope: !613)
!1671 = !DILocation(line: 184, column: 66, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !613, file: !371, line: 184, column: 63)
!1673 = !DILocation(line: 184, column: 83, scope: !1672)
!1674 = !DILocation(line: 184, column: 63, scope: !1672)
!1675 = !DILocation(line: 184, column: 93, scope: !1672)
!1676 = !DILocation(line: 184, column: 63, scope: !613)
!1677 = !DILocation(line: 184, column: 63, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !613, file: !371, discriminator: 2)
!1679 = !DILocation(line: 184, column: 124, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1672, file: !371, discriminator: 3)
!1681 = !DILocation(line: 184, column: 142, scope: !1672)
!1682 = !DILocation(line: 184, column: 152, scope: !1672)
!1683 = !DILocation(line: 184, column: 177, scope: !1672)
!1684 = !DILocation(line: 184, column: 108, scope: !1672)
!1685 = !DILocation(line: 184, column: 196, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !614, file: !371, discriminator: 4)
!1687 = !DILocation(line: 184, column: 196, scope: !613)
!1688 = !DILocation(line: 184, column: 196, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !613, file: !371, discriminator: 5)
!1690 = !DILocation(line: 185, column: 9, scope: !614)
!1691 = !DILocation(line: 187, column: 11, scope: !619)
!1692 = !DILocation(line: 187, column: 10, scope: !619)
!1693 = !DILocation(line: 187, column: 9, scope: !619)
!1694 = !DILocation(line: 187, column: 23, scope: !619)
!1695 = !DILocation(line: 187, column: 20, scope: !619)
!1696 = !DILocation(line: 187, column: 9, scope: !593)
!1697 = !DILocation(line: 188, column: 9, scope: !618)
!1698 = !DILocation(line: 188, column: 14, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !617, file: !371, discriminator: 1)
!1700 = !DILocation(line: 188, column: 24, scope: !617)
!1701 = !DILocation(line: 188, column: 54, scope: !617)
!1702 = !DILocation(line: 188, column: 66, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !617, file: !371, line: 188, column: 63)
!1704 = !DILocation(line: 188, column: 83, scope: !1703)
!1705 = !DILocation(line: 188, column: 63, scope: !1703)
!1706 = !DILocation(line: 188, column: 93, scope: !1703)
!1707 = !DILocation(line: 188, column: 63, scope: !617)
!1708 = !DILocation(line: 188, column: 63, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !617, file: !371, discriminator: 2)
!1710 = !DILocation(line: 188, column: 124, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1703, file: !371, discriminator: 3)
!1712 = !DILocation(line: 188, column: 142, scope: !1703)
!1713 = !DILocation(line: 188, column: 152, scope: !1703)
!1714 = !DILocation(line: 188, column: 177, scope: !1703)
!1715 = !DILocation(line: 188, column: 108, scope: !1703)
!1716 = !DILocation(line: 188, column: 196, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !618, file: !371, discriminator: 4)
!1718 = !DILocation(line: 188, column: 196, scope: !617)
!1719 = !DILocation(line: 188, column: 196, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !617, file: !371, discriminator: 5)
!1721 = !DILocation(line: 189, column: 25, scope: !618)
!1722 = !DILocation(line: 189, column: 9, scope: !618)
!1723 = !DILocation(line: 191, column: 9, scope: !618)
!1724 = !DILocation(line: 193, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !593, file: !371, line: 193, column: 9)
!1726 = !DILocation(line: 193, column: 9, scope: !593)
!1727 = !DILocation(line: 194, column: 12, scope: !1725)
!1728 = !DILocation(line: 194, column: 9, scope: !1725)
!1729 = !DILocation(line: 195, column: 12, scope: !593)
!1730 = !DILocation(line: 195, column: 5, scope: !593)
!1731 = !DILocation(line: 196, column: 1, scope: !593)
!1732 = !DILocation(line: 113, column: 24, scope: !541)
!1733 = !DILocation(line: 113, column: 43, scope: !541)
!1734 = !DILocation(line: 113, column: 53, scope: !541)
!1735 = !DILocation(line: 113, column: 66, scope: !541)
!1736 = !DILocation(line: 113, column: 73, scope: !541)
!1737 = !DILocation(line: 115, column: 5, scope: !541)
!1738 = !DILocation(line: 115, column: 15, scope: !541)
!1739 = !DILocation(line: 116, column: 5, scope: !541)
!1740 = !DILocation(line: 116, column: 9, scope: !541)
!1741 = !DILocation(line: 117, column: 5, scope: !541)
!1742 = !DILocation(line: 117, column: 9, scope: !541)
!1743 = !DILocation(line: 118, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !541, file: !371, line: 118, column: 9)
!1745 = !DILocation(line: 118, column: 11, scope: !1744)
!1746 = !DILocation(line: 118, column: 9, scope: !541)
!1747 = !DILocation(line: 119, column: 9, scope: !1744)
!1748 = !DILocation(line: 120, column: 20, scope: !541)
!1749 = !DILocation(line: 120, column: 9, scope: !541)
!1750 = !DILocation(line: 120, column: 7, scope: !541)
!1751 = !DILocation(line: 121, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !541, file: !371, line: 121, column: 9)
!1753 = !DILocation(line: 121, column: 11, scope: !1752)
!1754 = !DILocation(line: 121, column: 9, scope: !541)
!1755 = !DILocation(line: 122, column: 9, scope: !1752)
!1756 = !DILocation(line: 125, column: 12, scope: !556)
!1757 = !DILocation(line: 125, column: 10, scope: !556)
!1758 = !DILocation(line: 125, column: 17, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !371, discriminator: 2)
!1760 = !DILexicalBlockFile(scope: !555, file: !371, discriminator: 1)
!1761 = !DILocation(line: 125, column: 21, scope: !555)
!1762 = !DILocation(line: 125, column: 19, scope: !555)
!1763 = !DILocation(line: 125, column: 5, scope: !556)
!1764 = !DILocation(line: 126, column: 9, scope: !554)
!1765 = !DILocation(line: 126, column: 19, scope: !554)
!1766 = !DILocation(line: 126, column: 34, scope: !554)
!1767 = !DILocation(line: 126, column: 44, scope: !554)
!1768 = !DILocation(line: 126, column: 50, scope: !554)
!1769 = !DILocation(line: 126, column: 23, scope: !554)
!1770 = !DILocation(line: 127, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !554, file: !371, line: 127, column: 13)
!1772 = !DILocation(line: 127, column: 15, scope: !1771)
!1773 = !DILocation(line: 127, column: 13, scope: !554)
!1774 = !DILocation(line: 128, column: 24, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !371, line: 127, column: 30)
!1776 = !DILocation(line: 129, column: 59, scope: !1775)
!1777 = !DILocation(line: 130, column: 15, scope: !1775)
!1778 = !DILocation(line: 131, column: 9, scope: !1775)
!1779 = !DILocation(line: 132, column: 47, scope: !554)
!1780 = !DILocation(line: 132, column: 41, scope: !554)
!1781 = !DILocation(line: 132, column: 10, scope: !554)
!1782 = !DILocation(line: 132, column: 28, scope: !554)
!1783 = !DILocation(line: 132, column: 11, scope: !554)
!1784 = !DILocation(line: 132, column: 33, scope: !554)
!1785 = !{!1786, !626, i64 24}
!1786 = !{!"", !762, i64 0, !626, i64 24, !675, i64 32}
!1787 = !DILocation(line: 132, column: 44, scope: !554)
!1788 = !DILocation(line: 133, column: 5, scope: !555)
!1789 = !DILocation(line: 133, column: 5, scope: !554)
!1790 = !DILocation(line: 125, column: 25, scope: !555)
!1791 = !DILocation(line: 125, column: 5, scope: !555)
!1792 = !DILocation(line: 135, column: 9, scope: !560)
!1793 = !DILocation(line: 135, column: 9, scope: !541)
!1794 = !DILocation(line: 137, column: 9, scope: !559)
!1795 = !DILocation(line: 137, column: 14, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !558, file: !371, discriminator: 1)
!1797 = !DILocation(line: 137, column: 24, scope: !558)
!1798 = !DILocation(line: 137, column: 54, scope: !558)
!1799 = !DILocation(line: 137, column: 66, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !558, file: !371, line: 137, column: 63)
!1801 = !DILocation(line: 137, column: 83, scope: !1800)
!1802 = !DILocation(line: 137, column: 63, scope: !1800)
!1803 = !DILocation(line: 137, column: 93, scope: !1800)
!1804 = !DILocation(line: 137, column: 63, scope: !558)
!1805 = !DILocation(line: 137, column: 63, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !558, file: !371, discriminator: 2)
!1807 = !DILocation(line: 137, column: 124, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1800, file: !371, discriminator: 3)
!1809 = !DILocation(line: 137, column: 142, scope: !1800)
!1810 = !DILocation(line: 137, column: 152, scope: !1800)
!1811 = !DILocation(line: 137, column: 177, scope: !1800)
!1812 = !DILocation(line: 137, column: 108, scope: !1800)
!1813 = !DILocation(line: 137, column: 196, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !559, file: !371, discriminator: 4)
!1815 = !DILocation(line: 137, column: 196, scope: !558)
!1816 = !DILocation(line: 137, column: 196, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !558, file: !371, discriminator: 5)
!1818 = !DILocation(line: 138, column: 9, scope: !559)
!1819 = !DILocation(line: 140, column: 11, scope: !564)
!1820 = !DILocation(line: 140, column: 10, scope: !564)
!1821 = !DILocation(line: 140, column: 9, scope: !564)
!1822 = !DILocation(line: 140, column: 23, scope: !564)
!1823 = !DILocation(line: 140, column: 20, scope: !564)
!1824 = !DILocation(line: 140, column: 9, scope: !541)
!1825 = !DILocation(line: 141, column: 9, scope: !563)
!1826 = !DILocation(line: 141, column: 14, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !562, file: !371, discriminator: 1)
!1828 = !DILocation(line: 141, column: 24, scope: !562)
!1829 = !DILocation(line: 141, column: 54, scope: !562)
!1830 = !DILocation(line: 141, column: 66, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !562, file: !371, line: 141, column: 63)
!1832 = !DILocation(line: 141, column: 83, scope: !1831)
!1833 = !DILocation(line: 141, column: 63, scope: !1831)
!1834 = !DILocation(line: 141, column: 93, scope: !1831)
!1835 = !DILocation(line: 141, column: 63, scope: !562)
!1836 = !DILocation(line: 141, column: 63, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !562, file: !371, discriminator: 2)
!1838 = !DILocation(line: 141, column: 124, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1831, file: !371, discriminator: 3)
!1840 = !DILocation(line: 141, column: 142, scope: !1831)
!1841 = !DILocation(line: 141, column: 152, scope: !1831)
!1842 = !DILocation(line: 141, column: 177, scope: !1831)
!1843 = !DILocation(line: 141, column: 108, scope: !1831)
!1844 = !DILocation(line: 141, column: 196, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !563, file: !371, discriminator: 4)
!1846 = !DILocation(line: 141, column: 196, scope: !562)
!1847 = !DILocation(line: 141, column: 196, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !562, file: !371, discriminator: 5)
!1849 = !DILocation(line: 142, column: 25, scope: !563)
!1850 = !DILocation(line: 142, column: 9, scope: !563)
!1851 = !DILocation(line: 144, column: 9, scope: !563)
!1852 = !DILocation(line: 146, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !541, file: !371, line: 146, column: 9)
!1854 = !DILocation(line: 146, column: 9, scope: !541)
!1855 = !DILocation(line: 147, column: 12, scope: !1853)
!1856 = !DILocation(line: 147, column: 9, scope: !1853)
!1857 = !DILocation(line: 148, column: 12, scope: !541)
!1858 = !DILocation(line: 148, column: 5, scope: !541)
!1859 = !DILocation(line: 149, column: 1, scope: !541)
!1860 = !DILocation(line: 67, column: 24, scope: !565)
!1861 = !DILocation(line: 67, column: 43, scope: !565)
!1862 = !DILocation(line: 67, column: 53, scope: !565)
!1863 = !DILocation(line: 67, column: 66, scope: !565)
!1864 = !DILocation(line: 67, column: 73, scope: !565)
!1865 = !DILocation(line: 69, column: 5, scope: !565)
!1866 = !DILocation(line: 69, column: 15, scope: !565)
!1867 = !DILocation(line: 70, column: 5, scope: !565)
!1868 = !DILocation(line: 70, column: 9, scope: !565)
!1869 = !DILocation(line: 71, column: 5, scope: !565)
!1870 = !DILocation(line: 71, column: 9, scope: !565)
!1871 = !DILocation(line: 72, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !565, file: !371, line: 72, column: 9)
!1873 = !DILocation(line: 72, column: 11, scope: !1872)
!1874 = !DILocation(line: 72, column: 9, scope: !565)
!1875 = !DILocation(line: 73, column: 9, scope: !1872)
!1876 = !DILocation(line: 74, column: 14, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !565, file: !371, line: 74, column: 9)
!1878 = !DILocation(line: 74, column: 12, scope: !1877)
!1879 = !DILocation(line: 74, column: 28, scope: !1877)
!1880 = !DILocation(line: 74, column: 9, scope: !565)
!1881 = !DILocation(line: 75, column: 9, scope: !1877)
!1882 = !DILocation(line: 78, column: 12, scope: !578)
!1883 = !DILocation(line: 78, column: 10, scope: !578)
!1884 = !DILocation(line: 78, column: 17, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1886, file: !371, discriminator: 2)
!1886 = !DILexicalBlockFile(scope: !577, file: !371, discriminator: 1)
!1887 = !DILocation(line: 78, column: 21, scope: !577)
!1888 = !DILocation(line: 78, column: 19, scope: !577)
!1889 = !DILocation(line: 78, column: 5, scope: !578)
!1890 = !DILocation(line: 79, column: 9, scope: !576)
!1891 = !DILocation(line: 79, column: 19, scope: !576)
!1892 = !DILocation(line: 79, column: 23, scope: !576)
!1893 = !DILocation(line: 80, column: 9, scope: !576)
!1894 = !DILocation(line: 80, column: 13, scope: !576)
!1895 = !DILocation(line: 81, column: 24, scope: !576)
!1896 = !DILocation(line: 81, column: 34, scope: !576)
!1897 = !DILocation(line: 81, column: 40, scope: !576)
!1898 = !DILocation(line: 81, column: 13, scope: !576)
!1899 = !DILocation(line: 81, column: 11, scope: !576)
!1900 = !DILocation(line: 82, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !576, file: !371, line: 82, column: 13)
!1902 = !DILocation(line: 82, column: 15, scope: !1901)
!1903 = !DILocation(line: 82, column: 13, scope: !576)
!1904 = !DILocation(line: 83, column: 24, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !371, line: 82, column: 30)
!1906 = !DILocation(line: 84, column: 59, scope: !1905)
!1907 = !DILocation(line: 85, column: 15, scope: !1905)
!1908 = !DILocation(line: 86, column: 9, scope: !1905)
!1909 = !DILocation(line: 87, column: 24, scope: !576)
!1910 = !DILocation(line: 87, column: 34, scope: !576)
!1911 = !DILocation(line: 87, column: 40, scope: !576)
!1912 = !DILocation(line: 87, column: 13, scope: !576)
!1913 = !DILocation(line: 87, column: 11, scope: !576)
!1914 = !DILocation(line: 88, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !576, file: !371, line: 88, column: 13)
!1916 = !DILocation(line: 88, column: 15, scope: !1915)
!1917 = !DILocation(line: 88, column: 13, scope: !576)
!1918 = !DILocation(line: 89, column: 24, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !371, line: 88, column: 30)
!1920 = !DILocation(line: 90, column: 59, scope: !1919)
!1921 = !DILocation(line: 91, column: 15, scope: !1919)
!1922 = !DILocation(line: 92, column: 9, scope: !1919)
!1923 = !DILocation(line: 93, column: 30, scope: !576)
!1924 = !DILocation(line: 93, column: 33, scope: !576)
!1925 = !DILocation(line: 93, column: 36, scope: !576)
!1926 = !DILocation(line: 93, column: 15, scope: !576)
!1927 = !DILocation(line: 93, column: 13, scope: !576)
!1928 = !DILocation(line: 94, column: 9, scope: !576)
!1929 = !DILocation(line: 94, column: 14, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !582, file: !371, discriminator: 1)
!1931 = !DILocation(line: 94, column: 24, scope: !582)
!1932 = !DILocation(line: 94, column: 54, scope: !582)
!1933 = !DILocation(line: 94, column: 66, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !582, file: !371, line: 94, column: 63)
!1935 = !DILocation(line: 94, column: 83, scope: !1934)
!1936 = !DILocation(line: 94, column: 63, scope: !1934)
!1937 = !DILocation(line: 94, column: 93, scope: !1934)
!1938 = !DILocation(line: 94, column: 63, scope: !582)
!1939 = !DILocation(line: 94, column: 63, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !582, file: !371, discriminator: 2)
!1941 = !DILocation(line: 94, column: 124, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1934, file: !371, discriminator: 3)
!1943 = !DILocation(line: 94, column: 142, scope: !1934)
!1944 = !DILocation(line: 94, column: 152, scope: !1934)
!1945 = !DILocation(line: 94, column: 177, scope: !1934)
!1946 = !DILocation(line: 94, column: 108, scope: !1934)
!1947 = !DILocation(line: 94, column: 196, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !576, file: !371, discriminator: 4)
!1949 = !DILocation(line: 94, column: 196, scope: !582)
!1950 = !DILocation(line: 94, column: 196, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !582, file: !371, discriminator: 5)
!1952 = !DILocation(line: 95, column: 9, scope: !576)
!1953 = !DILocation(line: 95, column: 14, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !584, file: !371, discriminator: 1)
!1955 = !DILocation(line: 95, column: 24, scope: !584)
!1956 = !DILocation(line: 95, column: 54, scope: !584)
!1957 = !DILocation(line: 95, column: 66, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !584, file: !371, line: 95, column: 63)
!1959 = !DILocation(line: 95, column: 83, scope: !1958)
!1960 = !DILocation(line: 95, column: 63, scope: !1958)
!1961 = !DILocation(line: 95, column: 93, scope: !1958)
!1962 = !DILocation(line: 95, column: 63, scope: !584)
!1963 = !DILocation(line: 95, column: 63, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !584, file: !371, discriminator: 2)
!1965 = !DILocation(line: 95, column: 124, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1958, file: !371, discriminator: 3)
!1967 = !DILocation(line: 95, column: 142, scope: !1958)
!1968 = !DILocation(line: 95, column: 152, scope: !1958)
!1969 = !DILocation(line: 95, column: 177, scope: !1958)
!1970 = !DILocation(line: 95, column: 108, scope: !1958)
!1971 = !DILocation(line: 95, column: 196, scope: !1948)
!1972 = !DILocation(line: 95, column: 196, scope: !584)
!1973 = !DILocation(line: 95, column: 196, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !584, file: !371, discriminator: 5)
!1975 = !DILocation(line: 96, column: 13, scope: !588)
!1976 = !DILocation(line: 96, column: 17, scope: !588)
!1977 = !DILocation(line: 96, column: 21, scope: !588)
!1978 = !DILocation(line: 96, column: 24, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !588, file: !371, discriminator: 1)
!1980 = !DILocation(line: 96, column: 13, scope: !576)
!1981 = !DILocation(line: 97, column: 13, scope: !587)
!1982 = !DILocation(line: 97, column: 18, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 1)
!1984 = !DILocation(line: 97, column: 28, scope: !586)
!1985 = !DILocation(line: 97, column: 58, scope: !586)
!1986 = !DILocation(line: 97, column: 70, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !586, file: !371, line: 97, column: 67)
!1988 = !DILocation(line: 97, column: 87, scope: !1987)
!1989 = !DILocation(line: 97, column: 67, scope: !1987)
!1990 = !DILocation(line: 97, column: 97, scope: !1987)
!1991 = !DILocation(line: 97, column: 67, scope: !586)
!1992 = !DILocation(line: 97, column: 67, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 2)
!1994 = !DILocation(line: 97, column: 128, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1987, file: !371, discriminator: 3)
!1996 = !DILocation(line: 97, column: 146, scope: !1987)
!1997 = !DILocation(line: 97, column: 156, scope: !1987)
!1998 = !DILocation(line: 97, column: 181, scope: !1987)
!1999 = !DILocation(line: 97, column: 112, scope: !1987)
!2000 = !DILocation(line: 97, column: 200, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !587, file: !371, discriminator: 4)
!2002 = !DILocation(line: 97, column: 200, scope: !586)
!2003 = !DILocation(line: 97, column: 200, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !586, file: !371, discriminator: 5)
!2005 = !DILocation(line: 98, column: 13, scope: !587)
!2006 = !DILocation(line: 100, column: 5, scope: !577)
!2007 = !DILocation(line: 100, column: 5, scope: !1886)
!2008 = !DILocation(line: 100, column: 5, scope: !576)
!2009 = !DILocation(line: 78, column: 25, scope: !577)
!2010 = !DILocation(line: 78, column: 5, scope: !577)
!2011 = !DILocation(line: 101, column: 9, scope: !592)
!2012 = !DILocation(line: 101, column: 11, scope: !592)
!2013 = !DILocation(line: 101, column: 25, scope: !592)
!2014 = !DILocation(line: 101, column: 30, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !592, file: !371, discriminator: 1)
!2016 = !DILocation(line: 101, column: 29, scope: !592)
!2017 = !DILocation(line: 101, column: 28, scope: !592)
!2018 = !DILocation(line: 101, column: 42, scope: !592)
!2019 = !DILocation(line: 101, column: 39, scope: !592)
!2020 = !DILocation(line: 101, column: 9, scope: !565)
!2021 = !DILocation(line: 102, column: 9, scope: !591)
!2022 = !DILocation(line: 102, column: 14, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 1)
!2024 = !DILocation(line: 102, column: 24, scope: !590)
!2025 = !DILocation(line: 102, column: 54, scope: !590)
!2026 = !DILocation(line: 102, column: 66, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !590, file: !371, line: 102, column: 63)
!2028 = !DILocation(line: 102, column: 83, scope: !2027)
!2029 = !DILocation(line: 102, column: 63, scope: !2027)
!2030 = !DILocation(line: 102, column: 93, scope: !2027)
!2031 = !DILocation(line: 102, column: 63, scope: !590)
!2032 = !DILocation(line: 102, column: 63, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 2)
!2034 = !DILocation(line: 102, column: 124, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2027, file: !371, discriminator: 3)
!2036 = !DILocation(line: 102, column: 142, scope: !2027)
!2037 = !DILocation(line: 102, column: 152, scope: !2027)
!2038 = !DILocation(line: 102, column: 177, scope: !2027)
!2039 = !DILocation(line: 102, column: 108, scope: !2027)
!2040 = !DILocation(line: 102, column: 196, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !591, file: !371, discriminator: 4)
!2042 = !DILocation(line: 102, column: 196, scope: !590)
!2043 = !DILocation(line: 102, column: 196, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !590, file: !371, discriminator: 5)
!2045 = !DILocation(line: 103, column: 11, scope: !591)
!2046 = !DILocation(line: 104, column: 25, scope: !591)
!2047 = !DILocation(line: 104, column: 9, scope: !591)
!2048 = !DILocation(line: 106, column: 5, scope: !591)
!2049 = !DILocation(line: 107, column: 14, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !592, file: !371, line: 107, column: 14)
!2051 = !DILocation(line: 107, column: 14, scope: !592)
!2052 = !DILocation(line: 108, column: 12, scope: !2050)
!2053 = !DILocation(line: 108, column: 9, scope: !2050)
!2054 = !DILocation(line: 109, column: 12, scope: !565)
!2055 = !DILocation(line: 109, column: 5, scope: !565)
!2056 = !DILocation(line: 110, column: 1, scope: !565)
