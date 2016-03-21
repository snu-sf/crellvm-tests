; ModuleID = 'irs-onlybc/_ctypes_test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPAM = type { i8*, i8* }
%struct.EGG = type { i8*, i32, %struct.SPAM* }
%struct.xxx_library = type { void (i8* (i32)*, void (i8*)*)* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, {}*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, {}*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, {}*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.FUNCS = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.tagpoint = type { i32, i32 }
%struct.BITS = type <{ i32, i48 }>
%struct.RECT = type { i64, i64, i64, i64 }
%struct.POINT = type { i64, i64 }
%struct.S2H = type { i16, i16 }
%struct.S8I = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"testfunc_array %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"testfunc_Ddd(%p, %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"testfunc_Ddd(%g, %g)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"testfunc_DDD(%p, %p)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"testfunc_DDD(%Lg, %Lg)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"testfunc_iii(%p, %p)\0A\00", align 1
@_testfunc_callback_with_pointer.table = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"name1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"value1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"value2\00", align 1
@my_spams = global [2 x %struct.SPAM] [%struct.SPAM { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.SPAM { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"first egg\00", align 1
@my_eggs = global [1 x %struct.EGG] [%struct.EGG { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.SPAM* getelementptr inbounds ([2 x %struct.SPAM], [2 x %struct.SPAM]* @my_spams, i32 0, i32 0) }], align 16
@an_integer = global i32 42, align 4
@_xxx_lib = global %struct.xxx_library { void (i8* (i32)*, void (i8*)*)* @_xxx_init }, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@last_tf_arg_s = common global i64 0, align 8
@last_tf_arg_u = common global i64 0, align 8
@_ctypes_testmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* bitcast (<{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @module_methods to [3 x %struct.PyMethodDef]*), i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"_xxx_init got %p %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"calling\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"calls done, ptr was %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"_ctypes_test\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"func_si\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@module_methods = internal global <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }> <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_func_si, i32 1, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_func, i32 4, i8* null }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } zeroinitializer }>, align 16

; Function Attrs: nounwind uwtable
define i32 @_testfunc_cbk_reg_int(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 (i32, i32, i32, i32, i32)* %func) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %func.addr = alloca i32 (i32, i32, i32, i32, i32)*, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !359, metadata !987), !dbg !988
  store i32 %b, i32* %b.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !360, metadata !987), !dbg !989
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !361, metadata !987), !dbg !990
  store i32 %d, i32* %d.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %d.addr, metadata !362, metadata !987), !dbg !991
  store i32 %e, i32* %e.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %e.addr, metadata !363, metadata !987), !dbg !992
  store i32 (i32, i32, i32, i32, i32)* %func, i32 (i32, i32, i32, i32, i32)** %func.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32 (i32, i32, i32, i32, i32)** %func.addr, metadata !364, metadata !987), !dbg !995
  %0 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %func.addr, align 8, !dbg !996, !tbaa !993
  %1 = load i32, i32* %a.addr, align 4, !dbg !997, !tbaa !983
  %2 = load i32, i32* %a.addr, align 4, !dbg !998, !tbaa !983
  %mul = mul i32 %1, %2, !dbg !999
  %3 = load i32, i32* %b.addr, align 4, !dbg !1000, !tbaa !983
  %4 = load i32, i32* %b.addr, align 4, !dbg !1001, !tbaa !983
  %mul1 = mul i32 %3, %4, !dbg !1002
  %5 = load i32, i32* %c.addr, align 4, !dbg !1003, !tbaa !983
  %6 = load i32, i32* %c.addr, align 4, !dbg !1004, !tbaa !983
  %mul2 = mul i32 %5, %6, !dbg !1005
  %7 = load i32, i32* %d.addr, align 4, !dbg !1006, !tbaa !983
  %8 = load i32, i32* %d.addr, align 4, !dbg !1007, !tbaa !983
  %mul3 = mul i32 %7, %8, !dbg !1008
  %9 = load i32, i32* %e.addr, align 4, !dbg !1009, !tbaa !983
  %10 = load i32, i32* %e.addr, align 4, !dbg !1010, !tbaa !983
  %mul4 = mul i32 %9, %10, !dbg !1011
  %call = call i32 %0(i32 %mul, i32 %mul1, i32 %mul2, i32 %mul3, i32 %mul4), !dbg !996
  ret i32 %call, !dbg !1012
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define double @_testfunc_cbk_reg_double(double %a, double %b, double %c, double %d, double %e, double (double, double, double, double, double)* %func) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %e.addr = alloca double, align 8
  %func.addr = alloca double (double, double, double, double, double)*, align 8
  store double %a, double* %a.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %a.addr, metadata !372, metadata !987), !dbg !1015
  store double %b, double* %b.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %b.addr, metadata !373, metadata !987), !dbg !1016
  store double %c, double* %c.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %c.addr, metadata !374, metadata !987), !dbg !1017
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !375, metadata !987), !dbg !1018
  store double %e, double* %e.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %e.addr, metadata !376, metadata !987), !dbg !1019
  store double (double, double, double, double, double)* %func, double (double, double, double, double, double)** %func.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata double (double, double, double, double, double)** %func.addr, metadata !377, metadata !987), !dbg !1020
  %0 = load double (double, double, double, double, double)*, double (double, double, double, double, double)** %func.addr, align 8, !dbg !1021, !tbaa !993
  %1 = load double, double* %a.addr, align 8, !dbg !1022, !tbaa !1013
  %2 = load double, double* %a.addr, align 8, !dbg !1023, !tbaa !1013
  %mul = fmul double %1, %2, !dbg !1024
  %3 = load double, double* %b.addr, align 8, !dbg !1025, !tbaa !1013
  %4 = load double, double* %b.addr, align 8, !dbg !1026, !tbaa !1013
  %mul1 = fmul double %3, %4, !dbg !1027
  %5 = load double, double* %c.addr, align 8, !dbg !1028, !tbaa !1013
  %6 = load double, double* %c.addr, align 8, !dbg !1029, !tbaa !1013
  %mul2 = fmul double %5, %6, !dbg !1030
  %7 = load double, double* %d.addr, align 8, !dbg !1031, !tbaa !1013
  %8 = load double, double* %d.addr, align 8, !dbg !1032, !tbaa !1013
  %mul3 = fmul double %7, %8, !dbg !1033
  %9 = load double, double* %e.addr, align 8, !dbg !1034, !tbaa !1013
  %10 = load double, double* %e.addr, align 8, !dbg !1035, !tbaa !1013
  %mul4 = fmul double %9, %10, !dbg !1036
  %call = call double %0(double %mul, double %mul1, double %mul2, double %mul3, double %mul4), !dbg !1021
  ret double %call, !dbg !1037
}

; Function Attrs: nounwind uwtable
define void @testfunc_array(i32* %values) #0 {
entry:
  %values.addr = alloca i32*, align 8
  store i32* %values, i32** %values.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %values.addr, metadata !383, metadata !987), !dbg !1038
  %0 = load i32*, i32** %values.addr, align 8, !dbg !1039, !tbaa !993
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !1039
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1039, !tbaa !983
  %2 = load i32*, i32** %values.addr, align 8, !dbg !1040, !tbaa !993
  %arrayidx1 = getelementptr i32, i32* %2, i64 1, !dbg !1040
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !1040, !tbaa !983
  %4 = load i32*, i32** %values.addr, align 8, !dbg !1041, !tbaa !993
  %arrayidx2 = getelementptr i32, i32* %4, i64 2, !dbg !1041
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !1041, !tbaa !983
  %6 = load i32*, i32** %values.addr, align 8, !dbg !1042, !tbaa !993
  %arrayidx3 = getelementptr i32, i32* %6, i64 3, !dbg !1042
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !1042, !tbaa !983
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7), !dbg !1043
  ret void, !dbg !1044
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define x86_fp80 @testfunc_Ddd(double %a, double %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %result = alloca x86_fp80, align 16
  store double %a, double* %a.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %a.addr, metadata !388, metadata !987), !dbg !1045
  store double %b, double* %b.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %b.addr, metadata !389, metadata !987), !dbg !1046
  %0 = bitcast x86_fp80* %result to i8*, !dbg !1047
  call void @llvm.lifetime.start(i64 16, i8* %0) #3, !dbg !1047
  call void @llvm.dbg.declare(metadata x86_fp80* %result, metadata !390, metadata !987), !dbg !1048
  %1 = load double, double* %a.addr, align 8, !dbg !1049, !tbaa !1013
  %2 = load double, double* %b.addr, align 8, !dbg !1050, !tbaa !1013
  %mul = fmul double %1, %2, !dbg !1051
  %conv = fpext double %mul to x86_fp80, !dbg !1052
  store x86_fp80 %conv, x86_fp80* %result, align 16, !dbg !1048, !tbaa !1053
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), double* %a.addr, double* %b.addr), !dbg !1055
  %3 = load double, double* %a.addr, align 8, !dbg !1056, !tbaa !1013
  %4 = load double, double* %b.addr, align 8, !dbg !1057, !tbaa !1013
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), double %3, double %4), !dbg !1058
  %5 = load x86_fp80, x86_fp80* %result, align 16, !dbg !1059, !tbaa !1053
  %6 = bitcast x86_fp80* %result to i8*, !dbg !1060
  call void @llvm.lifetime.end(i64 16, i8* %6) #3, !dbg !1060
  ret x86_fp80 %5, !dbg !1061
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define x86_fp80 @testfunc_DDD(x86_fp80 %a, x86_fp80 %b) #0 {
entry:
  %a.addr = alloca x86_fp80, align 16
  %b.addr = alloca x86_fp80, align 16
  %result = alloca x86_fp80, align 16
  store x86_fp80 %a, x86_fp80* %a.addr, align 16, !tbaa !1053
  call void @llvm.dbg.declare(metadata x86_fp80* %a.addr, metadata !395, metadata !987), !dbg !1062
  store x86_fp80 %b, x86_fp80* %b.addr, align 16, !tbaa !1053
  call void @llvm.dbg.declare(metadata x86_fp80* %b.addr, metadata !396, metadata !987), !dbg !1063
  %0 = bitcast x86_fp80* %result to i8*, !dbg !1064
  call void @llvm.lifetime.start(i64 16, i8* %0) #3, !dbg !1064
  call void @llvm.dbg.declare(metadata x86_fp80* %result, metadata !397, metadata !987), !dbg !1065
  %1 = load x86_fp80, x86_fp80* %a.addr, align 16, !dbg !1066, !tbaa !1053
  %2 = load x86_fp80, x86_fp80* %b.addr, align 16, !dbg !1067, !tbaa !1053
  %mul = fmul x86_fp80 %1, %2, !dbg !1068
  store x86_fp80 %mul, x86_fp80* %result, align 16, !dbg !1065, !tbaa !1053
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), x86_fp80* %a.addr, x86_fp80* %b.addr), !dbg !1069
  %3 = load x86_fp80, x86_fp80* %a.addr, align 16, !dbg !1070, !tbaa !1053
  %4 = load x86_fp80, x86_fp80* %b.addr, align 16, !dbg !1071, !tbaa !1053
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), x86_fp80 %3, x86_fp80 %4), !dbg !1072
  %5 = load x86_fp80, x86_fp80* %result, align 16, !dbg !1073, !tbaa !1053
  %6 = bitcast x86_fp80* %result to i8*, !dbg !1074
  call void @llvm.lifetime.end(i64 16, i8* %6) #3, !dbg !1074
  ret x86_fp80 %5, !dbg !1075
}

; Function Attrs: nounwind uwtable
define i32 @testfunc_iii(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !402, metadata !987), !dbg !1076
  store i32 %b, i32* %b.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !403, metadata !987), !dbg !1077
  %0 = bitcast i32* %result to i8*, !dbg !1078
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %result, metadata !404, metadata !987), !dbg !1079
  %1 = load i32, i32* %a.addr, align 4, !dbg !1080, !tbaa !983
  %2 = load i32, i32* %b.addr, align 4, !dbg !1081, !tbaa !983
  %mul = mul i32 %1, %2, !dbg !1082
  store i32 %mul, i32* %result, align 4, !dbg !1079, !tbaa !983
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32* %a.addr, i32* %b.addr), !dbg !1083
  %3 = load i32, i32* %result, align 4, !dbg !1084, !tbaa !983
  %4 = bitcast i32* %result to i8*, !dbg !1085
  call void @llvm.lifetime.end(i64 4, i8* %4) #3, !dbg !1085
  ret i32 %3, !dbg !1086
}

; Function Attrs: nounwind uwtable
define i32 @myprintf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %argptr = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !409, metadata !987), !dbg !1087
  %0 = bitcast i32* %result to i8*, !dbg !1088
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1088
  call void @llvm.dbg.declare(metadata i32* %result, metadata !410, metadata !987), !dbg !1089
  %1 = bitcast [1 x %struct.__va_list_tag]* %argptr to i8*, !dbg !1090
  call void @llvm.lifetime.start(i64 24, i8* %1) #3, !dbg !1090
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %argptr, metadata !411, metadata !987), !dbg !1091
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0, !dbg !1092
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1093
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1093
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !1094, !tbaa !993
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0, !dbg !1095
  %call = call i32 @vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2), !dbg !1096
  store i32 %call, i32* %result, align 4, !dbg !1097, !tbaa !983
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0, !dbg !1098
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1099
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1099
  %3 = load i32, i32* %result, align 4, !dbg !1100, !tbaa !983
  %4 = bitcast [1 x %struct.__va_list_tag]* %argptr to i8*, !dbg !1101
  call void @llvm.lifetime.end(i64 24, i8* %4) #3, !dbg !1101
  %5 = bitcast i32* %result to i8*, !dbg !1101
  call void @llvm.lifetime.end(i64 4, i8* %5) #3, !dbg !1101
  ret i32 %3, !dbg !1102
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) #4 {
entry:
  %__fmt.addr = alloca i8*, align 8
  %__arg.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %__fmt, i8** %__fmt.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %__fmt.addr, metadata !934, metadata !987), !dbg !1103
  store %struct.__va_list_tag* %__arg, %struct.__va_list_tag** %__arg.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %__arg.addr, metadata !935, metadata !987), !dbg !1104
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105, !tbaa !993
  %1 = load i8*, i8** %__fmt.addr, align 8, !dbg !1106, !tbaa !993
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %__arg.addr, align 8, !dbg !1107, !tbaa !993
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %2), !dbg !1108
  ret i32 %call, !dbg !1109
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @my_strtok(i8* %token, i8* %delim) #0 {
entry:
  %token.addr = alloca i8*, align 8
  %delim.addr = alloca i8*, align 8
  store i8* %token, i8** %token.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !428, metadata !987), !dbg !1110
  store i8* %delim, i8** %delim.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %delim.addr, metadata !429, metadata !987), !dbg !1111
  %0 = load i8*, i8** %token.addr, align 8, !dbg !1112, !tbaa !993
  %1 = load i8*, i8** %delim.addr, align 8, !dbg !1113, !tbaa !993
  %call = call i8* @strtok(i8* %0, i8* %1) #3, !dbg !1114
  ret i8* %call, !dbg !1115
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i8* @my_strchr(i8* %s, i32 %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !434, metadata !987), !dbg !1116
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !435, metadata !987), !dbg !1117
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1118, !tbaa !993
  %1 = load i32, i32* %c.addr, align 4, !dbg !1119, !tbaa !983
  %call = call i8* @strchr(i8* %0, i32 %1) #3, !dbg !1120
  ret i8* %call, !dbg !1121
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define double @my_sqrt(double %a) #0 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %a.addr, metadata !440, metadata !987), !dbg !1122
  %0 = load double, double* %a.addr, align 8, !dbg !1123, !tbaa !1013
  %call = call double @sqrt(double %0) #3, !dbg !1124
  ret double %call, !dbg !1125
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define void @my_qsort(i8* %base, i64 %num, i64 %width, i32 (i8*, i8*)* %compare) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %num.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  store i8* %base, i8** %base.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !450, metadata !987), !dbg !1126
  store i64 %num, i64* %num.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %num.addr, metadata !451, metadata !987), !dbg !1129
  store i64 %width, i64* %width.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %width.addr, metadata !452, metadata !987), !dbg !1130
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %compare.addr, metadata !453, metadata !987), !dbg !1131
  %0 = load i8*, i8** %base.addr, align 8, !dbg !1132, !tbaa !993
  %1 = load i64, i64* %num.addr, align 8, !dbg !1133, !tbaa !1127
  %2 = load i64, i64* %width.addr, align 8, !dbg !1134, !tbaa !1127
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8, !dbg !1135, !tbaa !993
  call void @qsort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3), !dbg !1136
  ret void, !dbg !1137
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define i32* @_testfunc_ai8(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !458, metadata !987), !dbg !1138
  %0 = load i32*, i32** %a.addr, align 8, !dbg !1139, !tbaa !993
  ret i32* %0, !dbg !1140
}

; Function Attrs: nounwind uwtable
define void @_testfunc_v(i32 %a, i32 %b, i32* %presult) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %presult.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !463, metadata !987), !dbg !1141
  store i32 %b, i32* %b.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !464, metadata !987), !dbg !1142
  store i32* %presult, i32** %presult.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %presult.addr, metadata !465, metadata !987), !dbg !1143
  %0 = load i32, i32* %a.addr, align 4, !dbg !1144, !tbaa !983
  %1 = load i32, i32* %b.addr, align 4, !dbg !1145, !tbaa !983
  %add = add i32 %0, %1, !dbg !1146
  %2 = load i32*, i32** %presult.addr, align 8, !dbg !1147, !tbaa !993
  store i32 %add, i32* %2, align 4, !dbg !1148, !tbaa !983
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_i_bhilfd(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, double %d) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca double, align 8
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !471, metadata !987), !dbg !1151
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !472, metadata !987), !dbg !1154
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !473, metadata !987), !dbg !1155
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !474, metadata !987), !dbg !1156
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !475, metadata !987), !dbg !1159
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !476, metadata !987), !dbg !1160
  %0 = load i8, i8* %b.addr, align 1, !dbg !1161, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1161
  %1 = load i16, i16* %h.addr, align 2, !dbg !1162, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1162
  %add = add i32 %conv, %conv1, !dbg !1163
  %2 = load i32, i32* %i.addr, align 4, !dbg !1164, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1165
  %conv3 = sext i32 %add2 to i64, !dbg !1161
  %3 = load i64, i64* %l.addr, align 8, !dbg !1166, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1167
  %conv5 = sitofp i64 %add4 to float, !dbg !1161
  %4 = load float, float* %f.addr, align 4, !dbg !1168, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1169
  %conv7 = fpext float %add6 to double, !dbg !1161
  %5 = load double, double* %d.addr, align 8, !dbg !1170, !tbaa !1013
  %add8 = fadd double %conv7, %5, !dbg !1171
  %conv9 = fptosi double %add8 to i32, !dbg !1172
  ret i32 %conv9, !dbg !1173
}

; Function Attrs: nounwind uwtable
define float @_testfunc_f_bhilfd(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, double %d) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca double, align 8
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !481, metadata !987), !dbg !1174
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !482, metadata !987), !dbg !1175
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !483, metadata !987), !dbg !1176
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !484, metadata !987), !dbg !1177
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !485, metadata !987), !dbg !1178
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !486, metadata !987), !dbg !1179
  %0 = load i8, i8* %b.addr, align 1, !dbg !1180, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1180
  %1 = load i16, i16* %h.addr, align 2, !dbg !1181, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1181
  %add = add i32 %conv, %conv1, !dbg !1182
  %2 = load i32, i32* %i.addr, align 4, !dbg !1183, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1184
  %conv3 = sext i32 %add2 to i64, !dbg !1180
  %3 = load i64, i64* %l.addr, align 8, !dbg !1185, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1186
  %conv5 = sitofp i64 %add4 to float, !dbg !1180
  %4 = load float, float* %f.addr, align 4, !dbg !1187, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1188
  %conv7 = fpext float %add6 to double, !dbg !1180
  %5 = load double, double* %d.addr, align 8, !dbg !1189, !tbaa !1013
  %add8 = fadd double %conv7, %5, !dbg !1190
  %conv9 = fptrunc double %add8 to float, !dbg !1191
  ret float %conv9, !dbg !1192
}

; Function Attrs: nounwind uwtable
define double @_testfunc_d_bhilfd(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, double %d) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca double, align 8
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !491, metadata !987), !dbg !1193
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !492, metadata !987), !dbg !1194
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !493, metadata !987), !dbg !1195
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !494, metadata !987), !dbg !1196
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !495, metadata !987), !dbg !1197
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !496, metadata !987), !dbg !1198
  %0 = load i8, i8* %b.addr, align 1, !dbg !1199, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1199
  %1 = load i16, i16* %h.addr, align 2, !dbg !1200, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1200
  %add = add i32 %conv, %conv1, !dbg !1201
  %2 = load i32, i32* %i.addr, align 4, !dbg !1202, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1203
  %conv3 = sext i32 %add2 to i64, !dbg !1199
  %3 = load i64, i64* %l.addr, align 8, !dbg !1204, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1205
  %conv5 = sitofp i64 %add4 to float, !dbg !1199
  %4 = load float, float* %f.addr, align 4, !dbg !1206, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1207
  %conv7 = fpext float %add6 to double, !dbg !1199
  %5 = load double, double* %d.addr, align 8, !dbg !1208, !tbaa !1013
  %add8 = fadd double %conv7, %5, !dbg !1209
  ret double %add8, !dbg !1210
}

; Function Attrs: nounwind uwtable
define x86_fp80 @_testfunc_D_bhilfD(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, x86_fp80 %d) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca x86_fp80, align 16
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !501, metadata !987), !dbg !1211
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !502, metadata !987), !dbg !1212
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !503, metadata !987), !dbg !1213
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !504, metadata !987), !dbg !1214
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !505, metadata !987), !dbg !1215
  store x86_fp80 %d, x86_fp80* %d.addr, align 16, !tbaa !1053
  call void @llvm.dbg.declare(metadata x86_fp80* %d.addr, metadata !506, metadata !987), !dbg !1216
  %0 = load i8, i8* %b.addr, align 1, !dbg !1217, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1217
  %1 = load i16, i16* %h.addr, align 2, !dbg !1218, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1218
  %add = add i32 %conv, %conv1, !dbg !1219
  %2 = load i32, i32* %i.addr, align 4, !dbg !1220, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1221
  %conv3 = sext i32 %add2 to i64, !dbg !1217
  %3 = load i64, i64* %l.addr, align 8, !dbg !1222, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1223
  %conv5 = sitofp i64 %add4 to float, !dbg !1217
  %4 = load float, float* %f.addr, align 4, !dbg !1224, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1225
  %conv7 = fpext float %add6 to x86_fp80, !dbg !1217
  %5 = load x86_fp80, x86_fp80* %d.addr, align 16, !dbg !1226, !tbaa !1053
  %add8 = fadd x86_fp80 %conv7, %5, !dbg !1227
  ret x86_fp80 %add8, !dbg !1228
}

; Function Attrs: nounwind uwtable
define i8* @_testfunc_p_p(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !511, metadata !987), !dbg !1229
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1230, !tbaa !993
  ret i8* %0, !dbg !1231
}

; Function Attrs: nounwind uwtable
define i8* @_testfunc_c_p_p(i32* %argcp, i8** %argv) #0 {
entry:
  %argcp.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  store i32* %argcp, i32** %argcp.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %argcp.addr, metadata !517, metadata !987), !dbg !1232
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !518, metadata !987), !dbg !1233
  %0 = load i32*, i32** %argcp.addr, align 8, !dbg !1234, !tbaa !993
  %1 = load i32, i32* %0, align 4, !dbg !1235, !tbaa !983
  %sub = sub i32 %1, 1, !dbg !1236
  %idxprom = sext i32 %sub to i64, !dbg !1237
  %2 = load i8**, i8*** %argv.addr, align 8, !dbg !1237, !tbaa !993
  %arrayidx = getelementptr i8*, i8** %2, i64 %idxprom, !dbg !1237
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !1237, !tbaa !993
  ret i8* %3, !dbg !1238
}

; Function Attrs: nounwind uwtable
define i8* @get_strchr() #0 {
entry:
  ret i8* bitcast (i8* (i8*, i32)* @strchr to i8*), !dbg !1239
}

; Function Attrs: nounwind uwtable
define i8* @my_strdup(i8* %src) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %src, i8** %src.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !526, metadata !987), !dbg !1240
  %0 = bitcast i8** %dst to i8*, !dbg !1241
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1241
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !527, metadata !987), !dbg !1242
  %1 = load i8*, i8** %src.addr, align 8, !dbg !1243, !tbaa !993
  %call = call i64 @strlen(i8* %1) #7, !dbg !1244
  %add = add i64 %call, 1, !dbg !1245
  %call1 = call noalias i8* @malloc(i64 %add) #3, !dbg !1246
  store i8* %call1, i8** %dst, align 8, !dbg !1242, !tbaa !993
  %2 = load i8*, i8** %dst, align 8, !dbg !1247, !tbaa !993
  %tobool = icmp ne i8* %2, null, !dbg !1247
  br i1 %tobool, label %if.end, label %if.then, !dbg !1249

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1250
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1250

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dst, align 8, !dbg !1251, !tbaa !993
  %4 = load i8*, i8** %src.addr, align 8, !dbg !1252, !tbaa !993
  %call2 = call i8* @strcpy(i8* %3, i8* %4) #3, !dbg !1253
  %5 = load i8*, i8** %dst, align 8, !dbg !1254, !tbaa !993
  store i8* %5, i8** %retval, !dbg !1255
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1255

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i8** %dst to i8*, !dbg !1256
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !1256
  %7 = load i8*, i8** %retval, !dbg !1256
  ret i8* %7, !dbg !1256
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @my_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !530, metadata !987), !dbg !1257
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1258, !tbaa !993
  call void @free(i8* %0) #3, !dbg !1259
  ret void, !dbg !1260
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i32* @my_wcsdup(i32* %src) #0 {
entry:
  %retval = alloca i32*, align 8
  %src.addr = alloca i32*, align 8
  %len = alloca i64, align 8
  %ptr = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %src, i32** %src.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !535, metadata !987), !dbg !1261
  %0 = bitcast i64* %len to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1262
  call void @llvm.dbg.declare(metadata i64* %len, metadata !536, metadata !987), !dbg !1263
  %1 = load i32*, i32** %src.addr, align 8, !dbg !1264, !tbaa !993
  %call = call i64 @wcslen(i32* %1) #7, !dbg !1265
  store i64 %call, i64* %len, align 8, !dbg !1263, !tbaa !1127
  %2 = bitcast i32** %ptr to i8*, !dbg !1266
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1266
  call void @llvm.dbg.declare(metadata i32** %ptr, metadata !537, metadata !987), !dbg !1267
  %3 = load i64, i64* %len, align 8, !dbg !1268, !tbaa !1127
  %add = add i64 %3, 1, !dbg !1269
  %mul = mul i64 %add, 4, !dbg !1270
  %call1 = call noalias i8* @malloc(i64 %mul) #3, !dbg !1271
  %4 = bitcast i8* %call1 to i32*, !dbg !1272
  store i32* %4, i32** %ptr, align 8, !dbg !1267, !tbaa !993
  %5 = load i32*, i32** %ptr, align 8, !dbg !1273, !tbaa !993
  %cmp = icmp eq i32* %5, null, !dbg !1275
  br i1 %cmp, label %if.then, label %if.end, !dbg !1276

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, !dbg !1277
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1277

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %ptr, align 8, !dbg !1278, !tbaa !993
  %7 = bitcast i32* %6 to i8*, !dbg !1279
  %8 = load i32*, i32** %src.addr, align 8, !dbg !1280, !tbaa !993
  %9 = bitcast i32* %8 to i8*, !dbg !1279
  %10 = load i64, i64* %len, align 8, !dbg !1281, !tbaa !1127
  %add2 = add i64 %10, 1, !dbg !1282
  %mul3 = mul i64 %add2, 4, !dbg !1283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 %mul3, i32 4, i1 false), !dbg !1279
  %11 = load i32*, i32** %ptr, align 8, !dbg !1284, !tbaa !993
  store i32* %11, i32** %retval, !dbg !1285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1285

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32** %ptr to i8*, !dbg !1286
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !1286
  %13 = bitcast i64* %len to i8*, !dbg !1286
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1286
  %14 = load i32*, i32** %retval, !dbg !1286
  ret i32* %14, !dbg !1286
}

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @my_wcslen(i32* %src) #0 {
entry:
  %src.addr = alloca i32*, align 8
  store i32* %src, i32** %src.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !542, metadata !987), !dbg !1287
  %0 = load i32*, i32** %src.addr, align 8, !dbg !1288, !tbaa !993
  %call = call i64 @wcslen(i32* %0) #7, !dbg !1289
  ret i64 %call, !dbg !1290
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callfuncp(%struct.FUNCS* %fp) #0 {
entry:
  %fp.addr = alloca %struct.FUNCS*, align 8
  store %struct.FUNCS* %fp, %struct.FUNCS** %fp.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.FUNCS** %fp.addr, metadata !554, metadata !987), !dbg !1291
  %0 = load %struct.FUNCS*, %struct.FUNCS** %fp.addr, align 8, !dbg !1292, !tbaa !993
  %c = getelementptr inbounds %struct.FUNCS, %struct.FUNCS* %0, i32 0, i32 0, !dbg !1293
  %1 = load i32 (i32, i32)*, i32 (i32, i32)** %c, align 8, !dbg !1293, !tbaa !1294
  %call = call i32 %1(i32 1, i32 2), !dbg !1292
  %2 = load %struct.FUNCS*, %struct.FUNCS** %fp.addr, align 8, !dbg !1296, !tbaa !993
  %s = getelementptr inbounds %struct.FUNCS, %struct.FUNCS* %2, i32 0, i32 1, !dbg !1297
  %3 = load i32 (i32, i32)*, i32 (i32, i32)** %s, align 8, !dbg !1297, !tbaa !1298
  %call1 = call i32 %3(i32 3, i32 4), !dbg !1296
  ret i32 0, !dbg !1299
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_deref_pointer(i32* %pi) #0 {
entry:
  %pi.addr = alloca i32*, align 8
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %pi.addr, metadata !559, metadata !987), !dbg !1300
  %0 = load i32*, i32** %pi.addr, align 8, !dbg !1301, !tbaa !993
  %1 = load i32, i32* %0, align 4, !dbg !1302, !tbaa !983
  ret i32 %1, !dbg !1303
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callback_with_pointer(i32 (i32*)* %func) #0 {
entry:
  %func.addr = alloca i32 (i32*)*, align 8
  %table = alloca [10 x i32], align 16
  store i32 (i32*)* %func, i32 (i32*)** %func.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32 (i32*)** %func.addr, metadata !565, metadata !987), !dbg !1304
  %0 = bitcast [10 x i32]* %table to i8*, !dbg !1305
  call void @llvm.lifetime.start(i64 40, i8* %0) #3, !dbg !1305
  call void @llvm.dbg.declare(metadata [10 x i32]* %table, metadata !566, metadata !987), !dbg !1306
  %1 = bitcast [10 x i32]* %table to i8*, !dbg !1306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([10 x i32]* @_testfunc_callback_with_pointer.table to i8*), i64 40, i32 16, i1 false), !dbg !1306
  %2 = load i32 (i32*)*, i32 (i32*)** %func.addr, align 8, !dbg !1307, !tbaa !993
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %table, i32 0, i32 0, !dbg !1308
  %call = call i32 %2(i32* %arraydecay), !dbg !1309
  %3 = bitcast [10 x i32]* %table to i8*, !dbg !1310
  call void @llvm.lifetime.end(i64 40, i8* %3) #3, !dbg !1310
  ret i32 %call, !dbg !1311
}

; Function Attrs: nounwind uwtable
define i64 @_testfunc_q_bhilfdq(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, double %d, i64 %q) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca double, align 8
  %q.addr = alloca i64, align 8
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !574, metadata !987), !dbg !1312
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !575, metadata !987), !dbg !1313
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !576, metadata !987), !dbg !1314
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !577, metadata !987), !dbg !1315
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !578, metadata !987), !dbg !1316
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !579, metadata !987), !dbg !1317
  store i64 %q, i64* %q.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %q.addr, metadata !580, metadata !987), !dbg !1320
  %0 = load i8, i8* %b.addr, align 1, !dbg !1321, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1321
  %1 = load i16, i16* %h.addr, align 2, !dbg !1322, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1322
  %add = add i32 %conv, %conv1, !dbg !1323
  %2 = load i32, i32* %i.addr, align 4, !dbg !1324, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1325
  %conv3 = sext i32 %add2 to i64, !dbg !1321
  %3 = load i64, i64* %l.addr, align 8, !dbg !1326, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1327
  %conv5 = sitofp i64 %add4 to float, !dbg !1321
  %4 = load float, float* %f.addr, align 4, !dbg !1328, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1329
  %conv7 = fpext float %add6 to double, !dbg !1321
  %5 = load double, double* %d.addr, align 8, !dbg !1330, !tbaa !1013
  %add8 = fadd double %conv7, %5, !dbg !1331
  %6 = load i64, i64* %q.addr, align 8, !dbg !1332, !tbaa !1318
  %conv9 = sitofp i64 %6 to double, !dbg !1332
  %add10 = fadd double %add8, %conv9, !dbg !1333
  %conv11 = fptosi double %add10 to i64, !dbg !1334
  ret i64 %conv11, !dbg !1335
}

; Function Attrs: nounwind uwtable
define i64 @_testfunc_q_bhilfd(i8 signext %b, i16 signext %h, i32 %i, i64 %l, float %f, double %d) #0 {
entry:
  %b.addr = alloca i8, align 1
  %h.addr = alloca i16, align 2
  %i.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %f.addr = alloca float, align 4
  %d.addr = alloca double, align 8
  store i8 %b, i8* %b.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %b.addr, metadata !585, metadata !987), !dbg !1336
  store i16 %h, i16* %h.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %h.addr, metadata !586, metadata !987), !dbg !1337
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !587, metadata !987), !dbg !1338
  store i64 %l, i64* %l.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !588, metadata !987), !dbg !1339
  store float %f, float* %f.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %f.addr, metadata !589, metadata !987), !dbg !1340
  store double %d, double* %d.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !590, metadata !987), !dbg !1341
  %0 = load i8, i8* %b.addr, align 1, !dbg !1342, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1342
  %1 = load i16, i16* %h.addr, align 2, !dbg !1343, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1343
  %add = add i32 %conv, %conv1, !dbg !1344
  %2 = load i32, i32* %i.addr, align 4, !dbg !1345, !tbaa !983
  %add2 = add i32 %add, %2, !dbg !1346
  %conv3 = sext i32 %add2 to i64, !dbg !1342
  %3 = load i64, i64* %l.addr, align 8, !dbg !1347, !tbaa !1127
  %add4 = add i64 %conv3, %3, !dbg !1348
  %conv5 = sitofp i64 %add4 to float, !dbg !1342
  %4 = load float, float* %f.addr, align 4, !dbg !1349, !tbaa !1157
  %add6 = fadd float %conv5, %4, !dbg !1350
  %conv7 = fpext float %add6 to double, !dbg !1342
  %5 = load double, double* %d.addr, align 8, !dbg !1351, !tbaa !1013
  %add8 = fadd double %conv7, %5, !dbg !1352
  %conv9 = fptosi double %add8 to i64, !dbg !1353
  ret i64 %conv9, !dbg !1354
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callback_i_if(i32 %value, i32 (i32)* %func) #0 {
entry:
  %value.addr = alloca i32, align 4
  %func.addr = alloca i32 (i32)*, align 8
  %sum = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !598, metadata !987), !dbg !1355
  store i32 (i32)* %func, i32 (i32)** %func.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32 (i32)** %func.addr, metadata !599, metadata !987), !dbg !1356
  %0 = bitcast i32* %sum to i8*, !dbg !1357
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !600, metadata !987), !dbg !1358
  store i32 0, i32* %sum, align 4, !dbg !1358, !tbaa !983
  br label %while.cond, !dbg !1359

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %value.addr, align 4, !dbg !1360, !tbaa !983
  %cmp = icmp ne i32 %1, 0, !dbg !1363
  br i1 %cmp, label %while.body, label %while.end, !dbg !1359

while.body:                                       ; preds = %while.cond
  %2 = load i32 (i32)*, i32 (i32)** %func.addr, align 8, !dbg !1364, !tbaa !993
  %3 = load i32, i32* %value.addr, align 4, !dbg !1366, !tbaa !983
  %call = call i32 %2(i32 %3), !dbg !1364
  %4 = load i32, i32* %sum, align 4, !dbg !1367, !tbaa !983
  %add = add i32 %4, %call, !dbg !1367
  store i32 %add, i32* %sum, align 4, !dbg !1367, !tbaa !983
  %5 = load i32, i32* %value.addr, align 4, !dbg !1368, !tbaa !983
  %div = sdiv i32 %5, 2, !dbg !1368
  store i32 %div, i32* %value.addr, align 4, !dbg !1368, !tbaa !983
  br label %while.cond, !dbg !1359

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %sum, align 4, !dbg !1369, !tbaa !983
  %7 = bitcast i32* %sum to i8*, !dbg !1370
  call void @llvm.lifetime.end(i64 4, i8* %7) #3, !dbg !1370
  ret i32 %6, !dbg !1371
}

; Function Attrs: nounwind uwtable
define i64 @_testfunc_callback_q_qf(i64 %value, i64 (i64)* %func) #0 {
entry:
  %value.addr = alloca i64, align 8
  %func.addr = alloca i64 (i64)*, align 8
  %sum = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !608, metadata !987), !dbg !1372
  store i64 (i64)* %func, i64 (i64)** %func.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i64 (i64)** %func.addr, metadata !609, metadata !987), !dbg !1373
  %0 = bitcast i64* %sum to i8*, !dbg !1374
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1374
  call void @llvm.dbg.declare(metadata i64* %sum, metadata !610, metadata !987), !dbg !1375
  store i64 0, i64* %sum, align 8, !dbg !1375, !tbaa !1318
  br label %while.cond, !dbg !1376

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %value.addr, align 8, !dbg !1377, !tbaa !1318
  %cmp = icmp ne i64 %1, 0, !dbg !1380
  br i1 %cmp, label %while.body, label %while.end, !dbg !1376

while.body:                                       ; preds = %while.cond
  %2 = load i64 (i64)*, i64 (i64)** %func.addr, align 8, !dbg !1381, !tbaa !993
  %3 = load i64, i64* %value.addr, align 8, !dbg !1383, !tbaa !1318
  %call = call i64 %2(i64 %3), !dbg !1381
  %4 = load i64, i64* %sum, align 8, !dbg !1384, !tbaa !1318
  %add = add i64 %4, %call, !dbg !1384
  store i64 %add, i64* %sum, align 8, !dbg !1384, !tbaa !1318
  %5 = load i64, i64* %value.addr, align 8, !dbg !1385, !tbaa !1318
  %div = sdiv i64 %5, 2, !dbg !1385
  store i64 %div, i64* %value.addr, align 8, !dbg !1385, !tbaa !1318
  br label %while.cond, !dbg !1376

while.end:                                        ; preds = %while.cond
  %6 = load i64, i64* %sum, align 8, !dbg !1386, !tbaa !1318
  %7 = bitcast i64* %sum to i8*, !dbg !1387
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !1387
  ret i64 %6, !dbg !1388
}

; Function Attrs: nounwind uwtable
define i32 @getSPAMANDEGGS(%struct.EGG** %eggs) #0 {
entry:
  %eggs.addr = alloca %struct.EGG**, align 8
  store %struct.EGG** %eggs, %struct.EGG*** %eggs.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.EGG*** %eggs.addr, metadata !629, metadata !987), !dbg !1389
  %0 = load %struct.EGG**, %struct.EGG*** %eggs.addr, align 8, !dbg !1390, !tbaa !993
  store %struct.EGG* getelementptr inbounds ([1 x %struct.EGG], [1 x %struct.EGG]* @my_eggs, i32 0, i32 0), %struct.EGG** %0, align 8, !dbg !1391, !tbaa !993
  ret i32 1, !dbg !1392
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_byval(i64 %in.coerce, %struct.tagpoint* %pout) #0 {
entry:
  %in = alloca %struct.tagpoint, align 8
  %pout.addr = alloca %struct.tagpoint*, align 8
  %0 = bitcast %struct.tagpoint* %in to i64*
  store i64 %in.coerce, i64* %0, align 8
  call void @llvm.dbg.declare(metadata %struct.tagpoint* %in, metadata !640, metadata !987), !dbg !1393
  store %struct.tagpoint* %pout, %struct.tagpoint** %pout.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.tagpoint** %pout.addr, metadata !641, metadata !987), !dbg !1394
  %1 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8, !dbg !1395, !tbaa !993
  %tobool = icmp ne %struct.tagpoint* %1, null, !dbg !1395
  br i1 %tobool, label %if.then, label %if.end, !dbg !1397

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 0, !dbg !1398
  %2 = load i32, i32* %x, align 4, !dbg !1398, !tbaa !1400
  %3 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8, !dbg !1402, !tbaa !993
  %x1 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %3, i32 0, i32 0, !dbg !1403
  store i32 %2, i32* %x1, align 4, !dbg !1404, !tbaa !1400
  %y = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 1, !dbg !1405
  %4 = load i32, i32* %y, align 4, !dbg !1405, !tbaa !1406
  %5 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8, !dbg !1407, !tbaa !993
  %y2 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %5, i32 0, i32 1, !dbg !1408
  store i32 %4, i32* %y2, align 4, !dbg !1409, !tbaa !1406
  br label %if.end, !dbg !1410

if.end:                                           ; preds = %if.then, %entry
  %x3 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 0, !dbg !1411
  %6 = load i32, i32* %x3, align 4, !dbg !1411, !tbaa !1400
  %y4 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 1, !dbg !1412
  %7 = load i32, i32* %y4, align 4, !dbg !1412, !tbaa !1406
  %add = add i32 %6, %7, !dbg !1413
  ret i32 %add, !dbg !1414
}

; Function Attrs: nounwind uwtable
define i32 @get_an_integer() #0 {
entry:
  %0 = load i32, i32* @an_integer, align 4, !dbg !1415, !tbaa !983
  ret i32 %0, !dbg !1416
}

; Function Attrs: nounwind uwtable
define double @integrate(double %a, double %b, double (double)* %f, i64 %nstep) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %f.addr = alloca double (double)*, align 8
  %nstep.addr = alloca i64, align 8
  %x = alloca double, align 8
  %sum = alloca double, align 8
  %dx = alloca double, align 8
  store double %a, double* %a.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %a.addr, metadata !650, metadata !987), !dbg !1417
  store double %b, double* %b.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %b.addr, metadata !651, metadata !987), !dbg !1418
  store double (double)* %f, double (double)** %f.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata double (double)** %f.addr, metadata !652, metadata !987), !dbg !1419
  store i64 %nstep, i64* %nstep.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %nstep.addr, metadata !653, metadata !987), !dbg !1420
  %0 = bitcast double* %x to i8*, !dbg !1421
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1421
  call void @llvm.dbg.declare(metadata double* %x, metadata !654, metadata !987), !dbg !1422
  %1 = bitcast double* %sum to i8*, !dbg !1421
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1421
  call void @llvm.dbg.declare(metadata double* %sum, metadata !655, metadata !987), !dbg !1423
  store double 0.000000e+00, double* %sum, align 8, !dbg !1423, !tbaa !1013
  %2 = bitcast double* %dx to i8*, !dbg !1421
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1421
  call void @llvm.dbg.declare(metadata double* %dx, metadata !656, metadata !987), !dbg !1424
  %3 = load double, double* %b.addr, align 8, !dbg !1425, !tbaa !1013
  %4 = load double, double* %a.addr, align 8, !dbg !1426, !tbaa !1013
  %sub = fsub double %3, %4, !dbg !1427
  %5 = load i64, i64* %nstep.addr, align 8, !dbg !1428, !tbaa !1127
  %conv = sitofp i64 %5 to double, !dbg !1429
  %div = fdiv double %sub, %conv, !dbg !1430
  store double %div, double* %dx, align 8, !dbg !1424, !tbaa !1013
  %6 = load double, double* %a.addr, align 8, !dbg !1431, !tbaa !1013
  %7 = load double, double* %dx, align 8, !dbg !1433, !tbaa !1013
  %mul = fmul double 5.000000e-01, %7, !dbg !1434
  %add = fadd double %6, %mul, !dbg !1435
  store double %add, double* %x, align 8, !dbg !1436, !tbaa !1013
  br label %for.cond, !dbg !1437

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load double, double* %b.addr, align 8, !dbg !1438, !tbaa !1013
  %9 = load double, double* %x, align 8, !dbg !1442, !tbaa !1013
  %sub1 = fsub double %8, %9, !dbg !1443
  %10 = load double, double* %x, align 8, !dbg !1444, !tbaa !1013
  %11 = load double, double* %a.addr, align 8, !dbg !1445, !tbaa !1013
  %sub2 = fsub double %10, %11, !dbg !1446
  %mul3 = fmul double %sub1, %sub2, !dbg !1447
  %cmp = fcmp ogt double %mul3, 0.000000e+00, !dbg !1448
  br i1 %cmp, label %for.body, label %for.end, !dbg !1449

for.body:                                         ; preds = %for.cond
  %12 = load double (double)*, double (double)** %f.addr, align 8, !dbg !1450, !tbaa !993
  %13 = load double, double* %x, align 8, !dbg !1451, !tbaa !1013
  %call = call double %12(double %13), !dbg !1450
  %14 = load double, double* %sum, align 8, !dbg !1452, !tbaa !1013
  %add5 = fadd double %14, %call, !dbg !1452
  store double %add5, double* %sum, align 8, !dbg !1452, !tbaa !1013
  br label %for.inc, !dbg !1453

for.inc:                                          ; preds = %for.body
  %15 = load double, double* %dx, align 8, !dbg !1454, !tbaa !1013
  %16 = load double, double* %x, align 8, !dbg !1455, !tbaa !1013
  %add6 = fadd double %16, %15, !dbg !1455
  store double %add6, double* %x, align 8, !dbg !1455, !tbaa !1013
  br label %for.cond, !dbg !1456

for.end:                                          ; preds = %for.cond
  %17 = load double, double* %sum, align 8, !dbg !1457, !tbaa !1013
  %18 = load i64, i64* %nstep.addr, align 8, !dbg !1458, !tbaa !1127
  %conv7 = sitofp i64 %18 to double, !dbg !1459
  %div8 = fdiv double %17, %conv7, !dbg !1460
  %19 = bitcast double* %dx to i8*, !dbg !1461
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1461
  %20 = bitcast double* %sum to i8*, !dbg !1461
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !1461
  %21 = bitcast double* %x to i8*, !dbg !1461
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1461
  ret double %div8, !dbg !1462
}

; Function Attrs: nounwind uwtable
define internal void @_xxx_init(i8* (i32)* %Xalloc, void (i8*)* %Xfree) #0 {
entry:
  %Xalloc.addr = alloca i8* (i32)*, align 8
  %Xfree.addr = alloca void (i8*)*, align 8
  %ptr = alloca i8*, align 8
  store i8* (i32)* %Xalloc, i8* (i32)** %Xalloc.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8* (i32)** %Xalloc.addr, metadata !938, metadata !987), !dbg !1463
  store void (i8*)* %Xfree, void (i8*)** %Xfree.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata void (i8*)** %Xfree.addr, metadata !939, metadata !987), !dbg !1464
  %0 = bitcast i8** %ptr to i8*, !dbg !1465
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1465
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !940, metadata !987), !dbg !1466
  %1 = load i8* (i32)*, i8* (i32)** %Xalloc.addr, align 8, !dbg !1467, !tbaa !993
  %2 = load void (i8*)*, void (i8*)** %Xfree.addr, align 8, !dbg !1468, !tbaa !993
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* (i32)* %1, void (i8*)* %2), !dbg !1469
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)), !dbg !1470
  %3 = load i8* (i32)*, i8* (i32)** %Xalloc.addr, align 8, !dbg !1471, !tbaa !993
  %call2 = call i8* %3(i32 32), !dbg !1471
  store i8* %call2, i8** %ptr, align 8, !dbg !1472, !tbaa !993
  %4 = load void (i8*)*, void (i8*)** %Xfree.addr, align 8, !dbg !1473, !tbaa !993
  %5 = load i8*, i8** %ptr, align 8, !dbg !1474, !tbaa !993
  call void %4(i8* %5), !dbg !1473
  %6 = load i8*, i8** %ptr, align 8, !dbg !1475, !tbaa !993
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %6), !dbg !1476
  %7 = bitcast i8** %ptr to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !1477
  ret void, !dbg !1477
}

; Function Attrs: nounwind uwtable
define %struct.xxx_library* @library_get() #0 {
entry:
  ret %struct.xxx_library* @_xxx_lib, !dbg !1478
}

; Function Attrs: nounwind uwtable
define %struct._object* @py_func_si(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !673, metadata !987), !dbg !1479
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !674, metadata !987), !dbg !1480
  %0 = bitcast i8** %name to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1481
  call void @llvm.dbg.declare(metadata i8** %name, metadata !675, metadata !987), !dbg !1482
  %1 = bitcast i32* %i to i8*, !dbg !1483
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %i, metadata !676, metadata !987), !dbg !1484
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1485, !tbaa !993
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %name, i32* %i), !dbg !1487
  %tobool = icmp ne i32 %call, 0, !dbg !1487
  br i1 %tobool, label %if.end, label %if.then, !dbg !1488

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1489

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1490, !tbaa !1491
  %inc = add i64 %3, 1, !dbg !1490
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1490, !tbaa !1491
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1493

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %i to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 4, i8* %4) #3, !dbg !1494
  %5 = bitcast i8** %name to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !1494
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1494
  ret %struct._object* %6, !dbg !1494
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @_py_func_si(i8* %s, i32 %i) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !681, metadata !987), !dbg !1495
  store i32 %i, i32* %i.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !682, metadata !987), !dbg !1496
  ret void, !dbg !1497
}

; Function Attrs: nounwind uwtable
define %struct._object* @py_func(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !685, metadata !987), !dbg !1498
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !686, metadata !987), !dbg !1499
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1500, !tbaa !1491
  %inc = add i64 %0, 1, !dbg !1500
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1500, !tbaa !1491
  ret %struct._object* @_Py_NoneStruct, !dbg !1501
}

; Function Attrs: nounwind uwtable
define void @_py_func() #0 {
entry:
  ret void, !dbg !1502
}

; Function Attrs: nounwind uwtable
define void @set_bitfields(%struct.BITS* %bits, i8 signext %name, i32 %value) #0 {
entry:
  %bits.addr = alloca %struct.BITS*, align 8
  %name.addr = alloca i8, align 1
  %value.addr = alloca i32, align 4
  store %struct.BITS* %bits, %struct.BITS** %bits.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.BITS** %bits.addr, metadata !713, metadata !987), !dbg !1503
  store i8 %name, i8* %name.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %name.addr, metadata !714, metadata !987), !dbg !1504
  store i32 %value, i32* %value.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !715, metadata !987), !dbg !1505
  %0 = load i8, i8* %name.addr, align 1, !dbg !1506, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1506
  switch i32 %conv, label %sw.epilog [
    i32 65, label %sw.bb
    i32 66, label %sw.bb.1
    i32 67, label %sw.bb.8
    i32 68, label %sw.bb.16
    i32 69, label %sw.bb.24
    i32 70, label %sw.bb.32
    i32 71, label %sw.bb.40
    i32 72, label %sw.bb.48
    i32 73, label %sw.bb.55
    i32 77, label %sw.bb.64
    i32 78, label %sw.bb.74
    i32 79, label %sw.bb.84
    i32 80, label %sw.bb.94
    i32 81, label %sw.bb.104
    i32 82, label %sw.bb.114
    i32 83, label %sw.bb.124
  ], !dbg !1507

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4, !dbg !1508, !tbaa !983
  %2 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1510, !tbaa !993
  %3 = bitcast %struct.BITS* %2 to i32*, !dbg !1511
  %bf.load = load i32, i32* %3, align 4, !dbg !1512
  %bf.value = and i32 %1, 1, !dbg !1512
  %bf.clear = and i32 %bf.load, -2, !dbg !1512
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !1512
  store i32 %bf.set, i32* %3, align 4, !dbg !1512
  %bf.result.shl = shl i32 %bf.value, 31, !dbg !1512
  %bf.result.ashr = ashr i32 %bf.result.shl, 31, !dbg !1512
  br label %sw.epilog, !dbg !1513

sw.bb.1:                                          ; preds = %entry
  %4 = load i32, i32* %value.addr, align 4, !dbg !1514, !tbaa !983
  %5 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1515, !tbaa !993
  %6 = bitcast %struct.BITS* %5 to i32*, !dbg !1516
  %bf.load2 = load i32, i32* %6, align 4, !dbg !1517
  %bf.value3 = and i32 %4, 3, !dbg !1517
  %bf.shl = shl i32 %bf.value3, 1, !dbg !1517
  %bf.clear4 = and i32 %bf.load2, -7, !dbg !1517
  %bf.set5 = or i32 %bf.clear4, %bf.shl, !dbg !1517
  store i32 %bf.set5, i32* %6, align 4, !dbg !1517
  %bf.result.shl6 = shl i32 %bf.value3, 30, !dbg !1517
  %bf.result.ashr7 = ashr i32 %bf.result.shl6, 30, !dbg !1517
  br label %sw.epilog, !dbg !1518

sw.bb.8:                                          ; preds = %entry
  %7 = load i32, i32* %value.addr, align 4, !dbg !1519, !tbaa !983
  %8 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1520, !tbaa !993
  %9 = bitcast %struct.BITS* %8 to i32*, !dbg !1521
  %bf.load9 = load i32, i32* %9, align 4, !dbg !1522
  %bf.value10 = and i32 %7, 7, !dbg !1522
  %bf.shl11 = shl i32 %bf.value10, 3, !dbg !1522
  %bf.clear12 = and i32 %bf.load9, -57, !dbg !1522
  %bf.set13 = or i32 %bf.clear12, %bf.shl11, !dbg !1522
  store i32 %bf.set13, i32* %9, align 4, !dbg !1522
  %bf.result.shl14 = shl i32 %bf.value10, 29, !dbg !1522
  %bf.result.ashr15 = ashr i32 %bf.result.shl14, 29, !dbg !1522
  br label %sw.epilog, !dbg !1523

sw.bb.16:                                         ; preds = %entry
  %10 = load i32, i32* %value.addr, align 4, !dbg !1524, !tbaa !983
  %11 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1525, !tbaa !993
  %12 = bitcast %struct.BITS* %11 to i32*, !dbg !1526
  %bf.load17 = load i32, i32* %12, align 4, !dbg !1527
  %bf.value18 = and i32 %10, 15, !dbg !1527
  %bf.shl19 = shl i32 %bf.value18, 6, !dbg !1527
  %bf.clear20 = and i32 %bf.load17, -961, !dbg !1527
  %bf.set21 = or i32 %bf.clear20, %bf.shl19, !dbg !1527
  store i32 %bf.set21, i32* %12, align 4, !dbg !1527
  %bf.result.shl22 = shl i32 %bf.value18, 28, !dbg !1527
  %bf.result.ashr23 = ashr i32 %bf.result.shl22, 28, !dbg !1527
  br label %sw.epilog, !dbg !1528

sw.bb.24:                                         ; preds = %entry
  %13 = load i32, i32* %value.addr, align 4, !dbg !1529, !tbaa !983
  %14 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1530, !tbaa !993
  %15 = bitcast %struct.BITS* %14 to i32*, !dbg !1531
  %bf.load25 = load i32, i32* %15, align 4, !dbg !1532
  %bf.value26 = and i32 %13, 31, !dbg !1532
  %bf.shl27 = shl i32 %bf.value26, 10, !dbg !1532
  %bf.clear28 = and i32 %bf.load25, -31745, !dbg !1532
  %bf.set29 = or i32 %bf.clear28, %bf.shl27, !dbg !1532
  store i32 %bf.set29, i32* %15, align 4, !dbg !1532
  %bf.result.shl30 = shl i32 %bf.value26, 27, !dbg !1532
  %bf.result.ashr31 = ashr i32 %bf.result.shl30, 27, !dbg !1532
  br label %sw.epilog, !dbg !1533

sw.bb.32:                                         ; preds = %entry
  %16 = load i32, i32* %value.addr, align 4, !dbg !1534, !tbaa !983
  %17 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1535, !tbaa !993
  %18 = bitcast %struct.BITS* %17 to i32*, !dbg !1536
  %bf.load33 = load i32, i32* %18, align 4, !dbg !1537
  %bf.value34 = and i32 %16, 63, !dbg !1537
  %bf.shl35 = shl i32 %bf.value34, 15, !dbg !1537
  %bf.clear36 = and i32 %bf.load33, -2064385, !dbg !1537
  %bf.set37 = or i32 %bf.clear36, %bf.shl35, !dbg !1537
  store i32 %bf.set37, i32* %18, align 4, !dbg !1537
  %bf.result.shl38 = shl i32 %bf.value34, 26, !dbg !1537
  %bf.result.ashr39 = ashr i32 %bf.result.shl38, 26, !dbg !1537
  br label %sw.epilog, !dbg !1538

sw.bb.40:                                         ; preds = %entry
  %19 = load i32, i32* %value.addr, align 4, !dbg !1539, !tbaa !983
  %20 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1540, !tbaa !993
  %21 = bitcast %struct.BITS* %20 to i32*, !dbg !1541
  %bf.load41 = load i32, i32* %21, align 4, !dbg !1542
  %bf.value42 = and i32 %19, 127, !dbg !1542
  %bf.shl43 = shl i32 %bf.value42, 21, !dbg !1542
  %bf.clear44 = and i32 %bf.load41, -266338305, !dbg !1542
  %bf.set45 = or i32 %bf.clear44, %bf.shl43, !dbg !1542
  store i32 %bf.set45, i32* %21, align 4, !dbg !1542
  %bf.result.shl46 = shl i32 %bf.value42, 25, !dbg !1542
  %bf.result.ashr47 = ashr i32 %bf.result.shl46, 25, !dbg !1542
  br label %sw.epilog, !dbg !1543

sw.bb.48:                                         ; preds = %entry
  %22 = load i32, i32* %value.addr, align 4, !dbg !1544, !tbaa !983
  %23 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1545, !tbaa !993
  %H = getelementptr inbounds %struct.BITS, %struct.BITS* %23, i32 0, i32 1, !dbg !1546
  %24 = bitcast i48* %H to i64*, !dbg !1546
  %25 = zext i32 %22 to i64, !dbg !1547
  %bf.load49 = load i64, i64* %24, align 4, !dbg !1547
  %bf.value50 = and i64 %25, 255, !dbg !1547
  %bf.clear51 = and i64 %bf.load49, -256, !dbg !1547
  %bf.set52 = or i64 %bf.clear51, %bf.value50, !dbg !1547
  store i64 %bf.set52, i64* %24, align 4, !dbg !1547
  %bf.result.shl53 = shl i64 %bf.value50, 56, !dbg !1547
  %bf.result.ashr54 = ashr i64 %bf.result.shl53, 56, !dbg !1547
  %bf.result.cast = trunc i64 %bf.result.ashr54 to i32, !dbg !1547
  br label %sw.epilog, !dbg !1548

sw.bb.55:                                         ; preds = %entry
  %26 = load i32, i32* %value.addr, align 4, !dbg !1549, !tbaa !983
  %27 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1550, !tbaa !993
  %I = getelementptr inbounds %struct.BITS, %struct.BITS* %27, i32 0, i32 1, !dbg !1551
  %28 = bitcast i48* %I to i64*, !dbg !1551
  %29 = zext i32 %26 to i64, !dbg !1552
  %bf.load56 = load i64, i64* %28, align 4, !dbg !1552
  %bf.value57 = and i64 %29, 511, !dbg !1552
  %bf.shl58 = shl i64 %bf.value57, 8, !dbg !1552
  %bf.clear59 = and i64 %bf.load56, -130817, !dbg !1552
  %bf.set60 = or i64 %bf.clear59, %bf.shl58, !dbg !1552
  store i64 %bf.set60, i64* %28, align 4, !dbg !1552
  %bf.result.shl61 = shl i64 %bf.value57, 55, !dbg !1552
  %bf.result.ashr62 = ashr i64 %bf.result.shl61, 55, !dbg !1552
  %bf.result.cast63 = trunc i64 %bf.result.ashr62 to i32, !dbg !1552
  br label %sw.epilog, !dbg !1553

sw.bb.64:                                         ; preds = %entry
  %30 = load i32, i32* %value.addr, align 4, !dbg !1554, !tbaa !983
  %conv65 = trunc i32 %30 to i16, !dbg !1554
  %31 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1555, !tbaa !993
  %M = getelementptr inbounds %struct.BITS, %struct.BITS* %31, i32 0, i32 1, !dbg !1556
  %32 = bitcast i48* %M to i64*, !dbg !1556
  %33 = zext i16 %conv65 to i64, !dbg !1557
  %bf.load66 = load i64, i64* %32, align 4, !dbg !1557
  %bf.value67 = and i64 %33, 1, !dbg !1557
  %bf.shl68 = shl i64 %bf.value67, 17, !dbg !1557
  %bf.clear69 = and i64 %bf.load66, -131073, !dbg !1557
  %bf.set70 = or i64 %bf.clear69, %bf.shl68, !dbg !1557
  store i64 %bf.set70, i64* %32, align 4, !dbg !1557
  %bf.result.shl71 = shl i64 %bf.value67, 63, !dbg !1557
  %bf.result.ashr72 = ashr i64 %bf.result.shl71, 63, !dbg !1557
  %bf.result.cast73 = trunc i64 %bf.result.ashr72 to i16, !dbg !1557
  br label %sw.epilog, !dbg !1558

sw.bb.74:                                         ; preds = %entry
  %34 = load i32, i32* %value.addr, align 4, !dbg !1559, !tbaa !983
  %conv75 = trunc i32 %34 to i16, !dbg !1559
  %35 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1560, !tbaa !993
  %N = getelementptr inbounds %struct.BITS, %struct.BITS* %35, i32 0, i32 1, !dbg !1561
  %36 = bitcast i48* %N to i64*, !dbg !1561
  %37 = zext i16 %conv75 to i64, !dbg !1562
  %bf.load76 = load i64, i64* %36, align 4, !dbg !1562
  %bf.value77 = and i64 %37, 3, !dbg !1562
  %bf.shl78 = shl i64 %bf.value77, 18, !dbg !1562
  %bf.clear79 = and i64 %bf.load76, -786433, !dbg !1562
  %bf.set80 = or i64 %bf.clear79, %bf.shl78, !dbg !1562
  store i64 %bf.set80, i64* %36, align 4, !dbg !1562
  %bf.result.shl81 = shl i64 %bf.value77, 62, !dbg !1562
  %bf.result.ashr82 = ashr i64 %bf.result.shl81, 62, !dbg !1562
  %bf.result.cast83 = trunc i64 %bf.result.ashr82 to i16, !dbg !1562
  br label %sw.epilog, !dbg !1563

sw.bb.84:                                         ; preds = %entry
  %38 = load i32, i32* %value.addr, align 4, !dbg !1564, !tbaa !983
  %conv85 = trunc i32 %38 to i16, !dbg !1564
  %39 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1565, !tbaa !993
  %O = getelementptr inbounds %struct.BITS, %struct.BITS* %39, i32 0, i32 1, !dbg !1566
  %40 = bitcast i48* %O to i64*, !dbg !1566
  %41 = zext i16 %conv85 to i64, !dbg !1567
  %bf.load86 = load i64, i64* %40, align 4, !dbg !1567
  %bf.value87 = and i64 %41, 7, !dbg !1567
  %bf.shl88 = shl i64 %bf.value87, 20, !dbg !1567
  %bf.clear89 = and i64 %bf.load86, -7340033, !dbg !1567
  %bf.set90 = or i64 %bf.clear89, %bf.shl88, !dbg !1567
  store i64 %bf.set90, i64* %40, align 4, !dbg !1567
  %bf.result.shl91 = shl i64 %bf.value87, 61, !dbg !1567
  %bf.result.ashr92 = ashr i64 %bf.result.shl91, 61, !dbg !1567
  %bf.result.cast93 = trunc i64 %bf.result.ashr92 to i16, !dbg !1567
  br label %sw.epilog, !dbg !1568

sw.bb.94:                                         ; preds = %entry
  %42 = load i32, i32* %value.addr, align 4, !dbg !1569, !tbaa !983
  %conv95 = trunc i32 %42 to i16, !dbg !1569
  %43 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1570, !tbaa !993
  %P = getelementptr inbounds %struct.BITS, %struct.BITS* %43, i32 0, i32 1, !dbg !1571
  %44 = bitcast i48* %P to i64*, !dbg !1571
  %45 = zext i16 %conv95 to i64, !dbg !1572
  %bf.load96 = load i64, i64* %44, align 4, !dbg !1572
  %bf.value97 = and i64 %45, 15, !dbg !1572
  %bf.shl98 = shl i64 %bf.value97, 23, !dbg !1572
  %bf.clear99 = and i64 %bf.load96, -125829121, !dbg !1572
  %bf.set100 = or i64 %bf.clear99, %bf.shl98, !dbg !1572
  store i64 %bf.set100, i64* %44, align 4, !dbg !1572
  %bf.result.shl101 = shl i64 %bf.value97, 60, !dbg !1572
  %bf.result.ashr102 = ashr i64 %bf.result.shl101, 60, !dbg !1572
  %bf.result.cast103 = trunc i64 %bf.result.ashr102 to i16, !dbg !1572
  br label %sw.epilog, !dbg !1573

sw.bb.104:                                        ; preds = %entry
  %46 = load i32, i32* %value.addr, align 4, !dbg !1574, !tbaa !983
  %conv105 = trunc i32 %46 to i16, !dbg !1574
  %47 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1575, !tbaa !993
  %Q = getelementptr inbounds %struct.BITS, %struct.BITS* %47, i32 0, i32 1, !dbg !1576
  %48 = bitcast i48* %Q to i64*, !dbg !1576
  %49 = zext i16 %conv105 to i64, !dbg !1577
  %bf.load106 = load i64, i64* %48, align 4, !dbg !1577
  %bf.value107 = and i64 %49, 31, !dbg !1577
  %bf.shl108 = shl i64 %bf.value107, 27, !dbg !1577
  %bf.clear109 = and i64 %bf.load106, -4160749569, !dbg !1577
  %bf.set110 = or i64 %bf.clear109, %bf.shl108, !dbg !1577
  store i64 %bf.set110, i64* %48, align 4, !dbg !1577
  %bf.result.shl111 = shl i64 %bf.value107, 59, !dbg !1577
  %bf.result.ashr112 = ashr i64 %bf.result.shl111, 59, !dbg !1577
  %bf.result.cast113 = trunc i64 %bf.result.ashr112 to i16, !dbg !1577
  br label %sw.epilog, !dbg !1578

sw.bb.114:                                        ; preds = %entry
  %50 = load i32, i32* %value.addr, align 4, !dbg !1579, !tbaa !983
  %conv115 = trunc i32 %50 to i16, !dbg !1579
  %51 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1580, !tbaa !993
  %R = getelementptr inbounds %struct.BITS, %struct.BITS* %51, i32 0, i32 1, !dbg !1581
  %52 = bitcast i48* %R to i64*, !dbg !1581
  %53 = zext i16 %conv115 to i64, !dbg !1582
  %bf.load116 = load i64, i64* %52, align 4, !dbg !1582
  %bf.value117 = and i64 %53, 63, !dbg !1582
  %bf.shl118 = shl i64 %bf.value117, 32, !dbg !1582
  %bf.clear119 = and i64 %bf.load116, -270582939649, !dbg !1582
  %bf.set120 = or i64 %bf.clear119, %bf.shl118, !dbg !1582
  store i64 %bf.set120, i64* %52, align 4, !dbg !1582
  %bf.result.shl121 = shl i64 %bf.value117, 58, !dbg !1582
  %bf.result.ashr122 = ashr i64 %bf.result.shl121, 58, !dbg !1582
  %bf.result.cast123 = trunc i64 %bf.result.ashr122 to i16, !dbg !1582
  br label %sw.epilog, !dbg !1583

sw.bb.124:                                        ; preds = %entry
  %54 = load i32, i32* %value.addr, align 4, !dbg !1584, !tbaa !983
  %conv125 = trunc i32 %54 to i16, !dbg !1584
  %55 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1585, !tbaa !993
  %S = getelementptr inbounds %struct.BITS, %struct.BITS* %55, i32 0, i32 1, !dbg !1586
  %56 = bitcast i48* %S to i64*, !dbg !1586
  %57 = zext i16 %conv125 to i64, !dbg !1587
  %bf.load126 = load i64, i64* %56, align 4, !dbg !1587
  %bf.value127 = and i64 %57, 127, !dbg !1587
  %bf.shl128 = shl i64 %bf.value127, 38, !dbg !1587
  %bf.clear129 = and i64 %bf.load126, -34909494181889, !dbg !1587
  %bf.set130 = or i64 %bf.clear129, %bf.shl128, !dbg !1587
  store i64 %bf.set130, i64* %56, align 4, !dbg !1587
  %bf.result.shl131 = shl i64 %bf.value127, 57, !dbg !1587
  %bf.result.ashr132 = ashr i64 %bf.result.shl131, 57, !dbg !1587
  %bf.result.cast133 = trunc i64 %bf.result.ashr132 to i16, !dbg !1587
  br label %sw.epilog, !dbg !1588

sw.epilog:                                        ; preds = %entry, %sw.bb.124, %sw.bb.114, %sw.bb.104, %sw.bb.94, %sw.bb.84, %sw.bb.74, %sw.bb.64, %sw.bb.55, %sw.bb.48, %sw.bb.40, %sw.bb.32, %sw.bb.24, %sw.bb.16, %sw.bb.8, %sw.bb.1, %sw.bb
  ret void, !dbg !1589
}

; Function Attrs: nounwind uwtable
define i32 @unpack_bitfields(%struct.BITS* %bits, i8 signext %name) #0 {
entry:
  %retval = alloca i32, align 4
  %bits.addr = alloca %struct.BITS*, align 8
  %name.addr = alloca i8, align 1
  store %struct.BITS* %bits, %struct.BITS** %bits.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.BITS** %bits.addr, metadata !720, metadata !987), !dbg !1590
  store i8 %name, i8* %name.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %name.addr, metadata !721, metadata !987), !dbg !1591
  %0 = load i8, i8* %name.addr, align 1, !dbg !1592, !tbaa !1150
  %conv = sext i8 %0 to i32, !dbg !1592
  switch i32 %conv, label %sw.epilog [
    i32 65, label %sw.bb
    i32 66, label %sw.bb.1
    i32 67, label %sw.bb.5
    i32 68, label %sw.bb.9
    i32 69, label %sw.bb.13
    i32 70, label %sw.bb.17
    i32 71, label %sw.bb.21
    i32 72, label %sw.bb.25
    i32 73, label %sw.bb.29
    i32 77, label %sw.bb.34
    i32 78, label %sw.bb.40
    i32 79, label %sw.bb.46
    i32 80, label %sw.bb.52
    i32 81, label %sw.bb.58
    i32 82, label %sw.bb.64
    i32 83, label %sw.bb.70
  ], !dbg !1593

sw.bb:                                            ; preds = %entry
  %1 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1594, !tbaa !993
  %2 = bitcast %struct.BITS* %1 to i32*, !dbg !1596
  %bf.load = load i32, i32* %2, align 4, !dbg !1596
  %bf.shl = shl i32 %bf.load, 31, !dbg !1596
  %bf.ashr = ashr i32 %bf.shl, 31, !dbg !1596
  store i32 %bf.ashr, i32* %retval, !dbg !1597
  br label %return, !dbg !1597

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1598, !tbaa !993
  %4 = bitcast %struct.BITS* %3 to i32*, !dbg !1599
  %bf.load2 = load i32, i32* %4, align 4, !dbg !1599
  %bf.shl3 = shl i32 %bf.load2, 29, !dbg !1599
  %bf.ashr4 = ashr i32 %bf.shl3, 30, !dbg !1599
  store i32 %bf.ashr4, i32* %retval, !dbg !1600
  br label %return, !dbg !1600

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1601, !tbaa !993
  %6 = bitcast %struct.BITS* %5 to i32*, !dbg !1602
  %bf.load6 = load i32, i32* %6, align 4, !dbg !1602
  %bf.shl7 = shl i32 %bf.load6, 26, !dbg !1602
  %bf.ashr8 = ashr i32 %bf.shl7, 29, !dbg !1602
  store i32 %bf.ashr8, i32* %retval, !dbg !1603
  br label %return, !dbg !1603

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1604, !tbaa !993
  %8 = bitcast %struct.BITS* %7 to i32*, !dbg !1605
  %bf.load10 = load i32, i32* %8, align 4, !dbg !1605
  %bf.shl11 = shl i32 %bf.load10, 22, !dbg !1605
  %bf.ashr12 = ashr i32 %bf.shl11, 28, !dbg !1605
  store i32 %bf.ashr12, i32* %retval, !dbg !1606
  br label %return, !dbg !1606

sw.bb.13:                                         ; preds = %entry
  %9 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1607, !tbaa !993
  %10 = bitcast %struct.BITS* %9 to i32*, !dbg !1608
  %bf.load14 = load i32, i32* %10, align 4, !dbg !1608
  %bf.shl15 = shl i32 %bf.load14, 17, !dbg !1608
  %bf.ashr16 = ashr i32 %bf.shl15, 27, !dbg !1608
  store i32 %bf.ashr16, i32* %retval, !dbg !1609
  br label %return, !dbg !1609

sw.bb.17:                                         ; preds = %entry
  %11 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1610, !tbaa !993
  %12 = bitcast %struct.BITS* %11 to i32*, !dbg !1611
  %bf.load18 = load i32, i32* %12, align 4, !dbg !1611
  %bf.shl19 = shl i32 %bf.load18, 11, !dbg !1611
  %bf.ashr20 = ashr i32 %bf.shl19, 26, !dbg !1611
  store i32 %bf.ashr20, i32* %retval, !dbg !1612
  br label %return, !dbg !1612

sw.bb.21:                                         ; preds = %entry
  %13 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1613, !tbaa !993
  %14 = bitcast %struct.BITS* %13 to i32*, !dbg !1614
  %bf.load22 = load i32, i32* %14, align 4, !dbg !1614
  %bf.shl23 = shl i32 %bf.load22, 4, !dbg !1614
  %bf.ashr24 = ashr i32 %bf.shl23, 25, !dbg !1614
  store i32 %bf.ashr24, i32* %retval, !dbg !1615
  br label %return, !dbg !1615

sw.bb.25:                                         ; preds = %entry
  %15 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1616, !tbaa !993
  %H = getelementptr inbounds %struct.BITS, %struct.BITS* %15, i32 0, i32 1, !dbg !1617
  %16 = bitcast i48* %H to i64*, !dbg !1617
  %bf.load26 = load i64, i64* %16, align 4, !dbg !1617
  %bf.shl27 = shl i64 %bf.load26, 56, !dbg !1617
  %bf.ashr28 = ashr i64 %bf.shl27, 56, !dbg !1617
  %bf.cast = trunc i64 %bf.ashr28 to i32, !dbg !1617
  store i32 %bf.cast, i32* %retval, !dbg !1618
  br label %return, !dbg !1618

sw.bb.29:                                         ; preds = %entry
  %17 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1619, !tbaa !993
  %I = getelementptr inbounds %struct.BITS, %struct.BITS* %17, i32 0, i32 1, !dbg !1620
  %18 = bitcast i48* %I to i64*, !dbg !1620
  %bf.load30 = load i64, i64* %18, align 4, !dbg !1620
  %bf.shl31 = shl i64 %bf.load30, 47, !dbg !1620
  %bf.ashr32 = ashr i64 %bf.shl31, 55, !dbg !1620
  %bf.cast33 = trunc i64 %bf.ashr32 to i32, !dbg !1620
  store i32 %bf.cast33, i32* %retval, !dbg !1621
  br label %return, !dbg !1621

sw.bb.34:                                         ; preds = %entry
  %19 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1622, !tbaa !993
  %M = getelementptr inbounds %struct.BITS, %struct.BITS* %19, i32 0, i32 1, !dbg !1623
  %20 = bitcast i48* %M to i64*, !dbg !1623
  %bf.load35 = load i64, i64* %20, align 4, !dbg !1623
  %bf.shl36 = shl i64 %bf.load35, 46, !dbg !1623
  %bf.ashr37 = ashr i64 %bf.shl36, 63, !dbg !1623
  %bf.cast38 = trunc i64 %bf.ashr37 to i16, !dbg !1623
  %conv39 = sext i16 %bf.cast38 to i32, !dbg !1622
  store i32 %conv39, i32* %retval, !dbg !1624
  br label %return, !dbg !1624

sw.bb.40:                                         ; preds = %entry
  %21 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1625, !tbaa !993
  %N = getelementptr inbounds %struct.BITS, %struct.BITS* %21, i32 0, i32 1, !dbg !1626
  %22 = bitcast i48* %N to i64*, !dbg !1626
  %bf.load41 = load i64, i64* %22, align 4, !dbg !1626
  %bf.shl42 = shl i64 %bf.load41, 44, !dbg !1626
  %bf.ashr43 = ashr i64 %bf.shl42, 62, !dbg !1626
  %bf.cast44 = trunc i64 %bf.ashr43 to i16, !dbg !1626
  %conv45 = sext i16 %bf.cast44 to i32, !dbg !1625
  store i32 %conv45, i32* %retval, !dbg !1627
  br label %return, !dbg !1627

sw.bb.46:                                         ; preds = %entry
  %23 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1628, !tbaa !993
  %O = getelementptr inbounds %struct.BITS, %struct.BITS* %23, i32 0, i32 1, !dbg !1629
  %24 = bitcast i48* %O to i64*, !dbg !1629
  %bf.load47 = load i64, i64* %24, align 4, !dbg !1629
  %bf.shl48 = shl i64 %bf.load47, 41, !dbg !1629
  %bf.ashr49 = ashr i64 %bf.shl48, 61, !dbg !1629
  %bf.cast50 = trunc i64 %bf.ashr49 to i16, !dbg !1629
  %conv51 = sext i16 %bf.cast50 to i32, !dbg !1628
  store i32 %conv51, i32* %retval, !dbg !1630
  br label %return, !dbg !1630

sw.bb.52:                                         ; preds = %entry
  %25 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1631, !tbaa !993
  %P = getelementptr inbounds %struct.BITS, %struct.BITS* %25, i32 0, i32 1, !dbg !1632
  %26 = bitcast i48* %P to i64*, !dbg !1632
  %bf.load53 = load i64, i64* %26, align 4, !dbg !1632
  %bf.shl54 = shl i64 %bf.load53, 37, !dbg !1632
  %bf.ashr55 = ashr i64 %bf.shl54, 60, !dbg !1632
  %bf.cast56 = trunc i64 %bf.ashr55 to i16, !dbg !1632
  %conv57 = sext i16 %bf.cast56 to i32, !dbg !1631
  store i32 %conv57, i32* %retval, !dbg !1633
  br label %return, !dbg !1633

sw.bb.58:                                         ; preds = %entry
  %27 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1634, !tbaa !993
  %Q = getelementptr inbounds %struct.BITS, %struct.BITS* %27, i32 0, i32 1, !dbg !1635
  %28 = bitcast i48* %Q to i64*, !dbg !1635
  %bf.load59 = load i64, i64* %28, align 4, !dbg !1635
  %bf.shl60 = shl i64 %bf.load59, 32, !dbg !1635
  %bf.ashr61 = ashr i64 %bf.shl60, 59, !dbg !1635
  %bf.cast62 = trunc i64 %bf.ashr61 to i16, !dbg !1635
  %conv63 = sext i16 %bf.cast62 to i32, !dbg !1634
  store i32 %conv63, i32* %retval, !dbg !1636
  br label %return, !dbg !1636

sw.bb.64:                                         ; preds = %entry
  %29 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1637, !tbaa !993
  %R = getelementptr inbounds %struct.BITS, %struct.BITS* %29, i32 0, i32 1, !dbg !1638
  %30 = bitcast i48* %R to i64*, !dbg !1638
  %bf.load65 = load i64, i64* %30, align 4, !dbg !1638
  %bf.shl66 = shl i64 %bf.load65, 26, !dbg !1638
  %bf.ashr67 = ashr i64 %bf.shl66, 58, !dbg !1638
  %bf.cast68 = trunc i64 %bf.ashr67 to i16, !dbg !1638
  %conv69 = sext i16 %bf.cast68 to i32, !dbg !1637
  store i32 %conv69, i32* %retval, !dbg !1639
  br label %return, !dbg !1639

sw.bb.70:                                         ; preds = %entry
  %31 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8, !dbg !1640, !tbaa !993
  %S = getelementptr inbounds %struct.BITS, %struct.BITS* %31, i32 0, i32 1, !dbg !1641
  %32 = bitcast i48* %S to i64*, !dbg !1641
  %bf.load71 = load i64, i64* %32, align 4, !dbg !1641
  %bf.shl72 = shl i64 %bf.load71, 19, !dbg !1641
  %bf.ashr73 = ashr i64 %bf.shl72, 57, !dbg !1641
  %bf.cast74 = trunc i64 %bf.ashr73 to i16, !dbg !1641
  %conv75 = sext i16 %bf.cast74 to i32, !dbg !1640
  store i32 %conv75, i32* %retval, !dbg !1642
  br label %return, !dbg !1642

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval, !dbg !1643
  br label %return, !dbg !1643

return:                                           ; preds = %sw.epilog, %sw.bb.70, %sw.bb.64, %sw.bb.58, %sw.bb.52, %sw.bb.46, %sw.bb.40, %sw.bb.34, %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb.9, %sw.bb.5, %sw.bb.1, %sw.bb
  %33 = load i32, i32* %retval, !dbg !1644
  ret i32 %33, !dbg !1644
}

; Function Attrs: nounwind uwtable
define signext i8 @tf_b(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !726, metadata !987), !dbg !1645
  %0 = load i8, i8* %c.addr, align 1, !dbg !1646, !tbaa !1150
  %conv = sext i8 %0 to i64, !dbg !1647
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1648, !tbaa !1318
  %1 = load i8, i8* %c.addr, align 1, !dbg !1649, !tbaa !1150
  %conv1 = sext i8 %1 to i32, !dbg !1649
  %div = sdiv i32 %conv1, 3, !dbg !1650
  %conv2 = trunc i32 %div to i8, !dbg !1649
  ret i8 %conv2, !dbg !1651
}

; Function Attrs: nounwind uwtable
define zeroext i8 @tf_B(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !732, metadata !987), !dbg !1652
  %0 = load i8, i8* %c.addr, align 1, !dbg !1653, !tbaa !1150
  %conv = zext i8 %0 to i64, !dbg !1654
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1655, !tbaa !1318
  %1 = load i8, i8* %c.addr, align 1, !dbg !1656, !tbaa !1150
  %conv1 = zext i8 %1 to i32, !dbg !1656
  %div = sdiv i32 %conv1, 3, !dbg !1657
  %conv2 = trunc i32 %div to i8, !dbg !1656
  ret i8 %conv2, !dbg !1658
}

; Function Attrs: nounwind uwtable
define signext i16 @tf_h(i16 signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !737, metadata !987), !dbg !1659
  %0 = load i16, i16* %c.addr, align 2, !dbg !1660, !tbaa !1152
  %conv = sext i16 %0 to i64, !dbg !1661
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1662, !tbaa !1318
  %1 = load i16, i16* %c.addr, align 2, !dbg !1663, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1663
  %div = sdiv i32 %conv1, 3, !dbg !1664
  %conv2 = trunc i32 %div to i16, !dbg !1663
  ret i16 %conv2, !dbg !1665
}

; Function Attrs: nounwind uwtable
define zeroext i16 @tf_H(i16 zeroext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !742, metadata !987), !dbg !1666
  %0 = load i16, i16* %c.addr, align 2, !dbg !1667, !tbaa !1152
  %conv = zext i16 %0 to i64, !dbg !1668
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1669, !tbaa !1318
  %1 = load i16, i16* %c.addr, align 2, !dbg !1670, !tbaa !1152
  %conv1 = zext i16 %1 to i32, !dbg !1670
  %div = sdiv i32 %conv1, 3, !dbg !1671
  %conv2 = trunc i32 %div to i16, !dbg !1670
  ret i16 %conv2, !dbg !1672
}

; Function Attrs: nounwind uwtable
define i32 @tf_i(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !745, metadata !987), !dbg !1673
  %0 = load i32, i32* %c.addr, align 4, !dbg !1674, !tbaa !983
  %conv = sext i32 %0 to i64, !dbg !1675
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1676, !tbaa !1318
  %1 = load i32, i32* %c.addr, align 4, !dbg !1677, !tbaa !983
  %div = sdiv i32 %1, 3, !dbg !1678
  ret i32 %div, !dbg !1679
}

; Function Attrs: nounwind uwtable
define i32 @tf_I(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !750, metadata !987), !dbg !1680
  %0 = load i32, i32* %c.addr, align 4, !dbg !1681, !tbaa !983
  %conv = zext i32 %0 to i64, !dbg !1682
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1683, !tbaa !1318
  %1 = load i32, i32* %c.addr, align 4, !dbg !1684, !tbaa !983
  %div = udiv i32 %1, 3, !dbg !1685
  ret i32 %div, !dbg !1686
}

; Function Attrs: nounwind uwtable
define i64 @tf_l(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !755, metadata !987), !dbg !1687
  %0 = load i64, i64* %c.addr, align 8, !dbg !1688, !tbaa !1127
  store i64 %0, i64* @last_tf_arg_s, align 8, !dbg !1689, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1690, !tbaa !1127
  %div = sdiv i64 %1, 3, !dbg !1691
  ret i64 %div, !dbg !1692
}

; Function Attrs: nounwind uwtable
define i64 @tf_L(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !760, metadata !987), !dbg !1693
  %0 = load i64, i64* %c.addr, align 8, !dbg !1694, !tbaa !1127
  store i64 %0, i64* @last_tf_arg_u, align 8, !dbg !1695, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1696, !tbaa !1127
  %div = udiv i64 %1, 3, !dbg !1697
  ret i64 %div, !dbg !1698
}

; Function Attrs: nounwind uwtable
define i64 @tf_q(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !763, metadata !987), !dbg !1699
  %0 = load i64, i64* %c.addr, align 8, !dbg !1700, !tbaa !1318
  store i64 %0, i64* @last_tf_arg_s, align 8, !dbg !1701, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1702, !tbaa !1318
  %div = sdiv i64 %1, 3, !dbg !1703
  ret i64 %div, !dbg !1704
}

; Function Attrs: nounwind uwtable
define i64 @tf_Q(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !768, metadata !987), !dbg !1705
  %0 = load i64, i64* %c.addr, align 8, !dbg !1706, !tbaa !1318
  store i64 %0, i64* @last_tf_arg_u, align 8, !dbg !1707, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1708, !tbaa !1318
  %div = udiv i64 %1, 3, !dbg !1709
  ret i64 %div, !dbg !1710
}

; Function Attrs: nounwind uwtable
define float @tf_f(float %c) #0 {
entry:
  %c.addr = alloca float, align 4
  store float %c, float* %c.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %c.addr, metadata !773, metadata !987), !dbg !1711
  %0 = load float, float* %c.addr, align 4, !dbg !1712, !tbaa !1157
  %conv = fptosi float %0 to i64, !dbg !1713
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1714, !tbaa !1318
  %1 = load float, float* %c.addr, align 4, !dbg !1715, !tbaa !1157
  %div = fdiv float %1, 3.000000e+00, !dbg !1716
  ret float %div, !dbg !1717
}

; Function Attrs: nounwind uwtable
define double @tf_d(double %c) #0 {
entry:
  %c.addr = alloca double, align 8
  store double %c, double* %c.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %c.addr, metadata !776, metadata !987), !dbg !1718
  %0 = load double, double* %c.addr, align 8, !dbg !1719, !tbaa !1013
  %conv = fptosi double %0 to i64, !dbg !1720
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1721, !tbaa !1318
  %1 = load double, double* %c.addr, align 8, !dbg !1722, !tbaa !1013
  %div = fdiv double %1, 3.000000e+00, !dbg !1723
  ret double %div, !dbg !1724
}

; Function Attrs: nounwind uwtable
define x86_fp80 @tf_D(x86_fp80 %c) #0 {
entry:
  %c.addr = alloca x86_fp80, align 16
  store x86_fp80 %c, x86_fp80* %c.addr, align 16, !tbaa !1053
  call void @llvm.dbg.declare(metadata x86_fp80* %c.addr, metadata !781, metadata !987), !dbg !1725
  %0 = load x86_fp80, x86_fp80* %c.addr, align 16, !dbg !1726, !tbaa !1053
  %conv = fptosi x86_fp80 %0 to i64, !dbg !1727
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1728, !tbaa !1318
  %1 = load x86_fp80, x86_fp80* %c.addr, align 16, !dbg !1729, !tbaa !1053
  %div = fdiv x86_fp80 %1, 0xK4000C000000000000000, !dbg !1730
  ret x86_fp80 %div, !dbg !1731
}

; Function Attrs: nounwind uwtable
define signext i8 @tf_bb(i8 signext %x, i8 signext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !786, metadata !987), !dbg !1732
  store i8 %c, i8* %c.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !787, metadata !987), !dbg !1733
  %0 = load i8, i8* %c.addr, align 1, !dbg !1734, !tbaa !1150
  %conv = sext i8 %0 to i64, !dbg !1735
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1736, !tbaa !1318
  %1 = load i8, i8* %c.addr, align 1, !dbg !1737, !tbaa !1150
  %conv1 = sext i8 %1 to i32, !dbg !1737
  %div = sdiv i32 %conv1, 3, !dbg !1738
  %conv2 = trunc i32 %div to i8, !dbg !1737
  ret i8 %conv2, !dbg !1739
}

; Function Attrs: nounwind uwtable
define zeroext i8 @tf_bB(i8 signext %x, i8 zeroext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !792, metadata !987), !dbg !1740
  store i8 %c, i8* %c.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !793, metadata !987), !dbg !1741
  %0 = load i8, i8* %c.addr, align 1, !dbg !1742, !tbaa !1150
  %conv = zext i8 %0 to i64, !dbg !1743
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1744, !tbaa !1318
  %1 = load i8, i8* %c.addr, align 1, !dbg !1745, !tbaa !1150
  %conv1 = zext i8 %1 to i32, !dbg !1745
  %div = sdiv i32 %conv1, 3, !dbg !1746
  %conv2 = trunc i32 %div to i8, !dbg !1745
  ret i8 %conv2, !dbg !1747
}

; Function Attrs: nounwind uwtable
define signext i16 @tf_bh(i8 signext %x, i16 signext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !798, metadata !987), !dbg !1748
  store i16 %c, i16* %c.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !799, metadata !987), !dbg !1749
  %0 = load i16, i16* %c.addr, align 2, !dbg !1750, !tbaa !1152
  %conv = sext i16 %0 to i64, !dbg !1751
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1752, !tbaa !1318
  %1 = load i16, i16* %c.addr, align 2, !dbg !1753, !tbaa !1152
  %conv1 = sext i16 %1 to i32, !dbg !1753
  %div = sdiv i32 %conv1, 3, !dbg !1754
  %conv2 = trunc i32 %div to i16, !dbg !1753
  ret i16 %conv2, !dbg !1755
}

; Function Attrs: nounwind uwtable
define zeroext i16 @tf_bH(i8 signext %x, i16 zeroext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !804, metadata !987), !dbg !1756
  store i16 %c, i16* %c.addr, align 2, !tbaa !1152
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !805, metadata !987), !dbg !1757
  %0 = load i16, i16* %c.addr, align 2, !dbg !1758, !tbaa !1152
  %conv = zext i16 %0 to i64, !dbg !1759
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1760, !tbaa !1318
  %1 = load i16, i16* %c.addr, align 2, !dbg !1761, !tbaa !1152
  %conv1 = zext i16 %1 to i32, !dbg !1761
  %div = sdiv i32 %conv1, 3, !dbg !1762
  %conv2 = trunc i32 %div to i16, !dbg !1761
  ret i16 %conv2, !dbg !1763
}

; Function Attrs: nounwind uwtable
define i32 @tf_bi(i8 signext %x, i32 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !810, metadata !987), !dbg !1764
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !811, metadata !987), !dbg !1765
  %0 = load i32, i32* %c.addr, align 4, !dbg !1766, !tbaa !983
  %conv = sext i32 %0 to i64, !dbg !1767
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1768, !tbaa !1318
  %1 = load i32, i32* %c.addr, align 4, !dbg !1769, !tbaa !983
  %div = sdiv i32 %1, 3, !dbg !1770
  ret i32 %div, !dbg !1771
}

; Function Attrs: nounwind uwtable
define i32 @tf_bI(i8 signext %x, i32 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !816, metadata !987), !dbg !1772
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !817, metadata !987), !dbg !1773
  %0 = load i32, i32* %c.addr, align 4, !dbg !1774, !tbaa !983
  %conv = zext i32 %0 to i64, !dbg !1775
  store i64 %conv, i64* @last_tf_arg_u, align 8, !dbg !1776, !tbaa !1318
  %1 = load i32, i32* %c.addr, align 4, !dbg !1777, !tbaa !983
  %div = udiv i32 %1, 3, !dbg !1778
  ret i32 %div, !dbg !1779
}

; Function Attrs: nounwind uwtable
define i64 @tf_bl(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !822, metadata !987), !dbg !1780
  store i64 %c, i64* %c.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !823, metadata !987), !dbg !1781
  %0 = load i64, i64* %c.addr, align 8, !dbg !1782, !tbaa !1127
  store i64 %0, i64* @last_tf_arg_s, align 8, !dbg !1783, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1784, !tbaa !1127
  %div = sdiv i64 %1, 3, !dbg !1785
  ret i64 %div, !dbg !1786
}

; Function Attrs: nounwind uwtable
define i64 @tf_bL(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !828, metadata !987), !dbg !1787
  store i64 %c, i64* %c.addr, align 8, !tbaa !1127
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !829, metadata !987), !dbg !1788
  %0 = load i64, i64* %c.addr, align 8, !dbg !1789, !tbaa !1127
  store i64 %0, i64* @last_tf_arg_u, align 8, !dbg !1790, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1791, !tbaa !1127
  %div = udiv i64 %1, 3, !dbg !1792
  ret i64 %div, !dbg !1793
}

; Function Attrs: nounwind uwtable
define i64 @tf_bq(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !834, metadata !987), !dbg !1794
  store i64 %c, i64* %c.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !835, metadata !987), !dbg !1795
  %0 = load i64, i64* %c.addr, align 8, !dbg !1796, !tbaa !1318
  store i64 %0, i64* @last_tf_arg_s, align 8, !dbg !1797, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1798, !tbaa !1318
  %div = sdiv i64 %1, 3, !dbg !1799
  ret i64 %div, !dbg !1800
}

; Function Attrs: nounwind uwtable
define i64 @tf_bQ(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !840, metadata !987), !dbg !1801
  store i64 %c, i64* %c.addr, align 8, !tbaa !1318
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !841, metadata !987), !dbg !1802
  %0 = load i64, i64* %c.addr, align 8, !dbg !1803, !tbaa !1318
  store i64 %0, i64* @last_tf_arg_u, align 8, !dbg !1804, !tbaa !1318
  %1 = load i64, i64* %c.addr, align 8, !dbg !1805, !tbaa !1318
  %div = udiv i64 %1, 3, !dbg !1806
  ret i64 %div, !dbg !1807
}

; Function Attrs: nounwind uwtable
define float @tf_bf(i8 signext %x, float %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca float, align 4
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !846, metadata !987), !dbg !1808
  store float %c, float* %c.addr, align 4, !tbaa !1157
  call void @llvm.dbg.declare(metadata float* %c.addr, metadata !847, metadata !987), !dbg !1809
  %0 = load float, float* %c.addr, align 4, !dbg !1810, !tbaa !1157
  %conv = fptosi float %0 to i64, !dbg !1811
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1812, !tbaa !1318
  %1 = load float, float* %c.addr, align 4, !dbg !1813, !tbaa !1157
  %div = fdiv float %1, 3.000000e+00, !dbg !1814
  ret float %div, !dbg !1815
}

; Function Attrs: nounwind uwtable
define double @tf_bd(i8 signext %x, double %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca double, align 8
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !852, metadata !987), !dbg !1816
  store double %c, double* %c.addr, align 8, !tbaa !1013
  call void @llvm.dbg.declare(metadata double* %c.addr, metadata !853, metadata !987), !dbg !1817
  %0 = load double, double* %c.addr, align 8, !dbg !1818, !tbaa !1013
  %conv = fptosi double %0 to i64, !dbg !1819
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1820, !tbaa !1318
  %1 = load double, double* %c.addr, align 8, !dbg !1821, !tbaa !1013
  %div = fdiv double %1, 3.000000e+00, !dbg !1822
  ret double %div, !dbg !1823
}

; Function Attrs: nounwind uwtable
define x86_fp80 @tf_bD(i8 signext %x, x86_fp80 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca x86_fp80, align 16
  store i8 %x, i8* %x.addr, align 1, !tbaa !1150
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !858, metadata !987), !dbg !1824
  store x86_fp80 %c, x86_fp80* %c.addr, align 16, !tbaa !1053
  call void @llvm.dbg.declare(metadata x86_fp80* %c.addr, metadata !859, metadata !987), !dbg !1825
  %0 = load x86_fp80, x86_fp80* %c.addr, align 16, !dbg !1826, !tbaa !1053
  %conv = fptosi x86_fp80 %0 to i64, !dbg !1827
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1828, !tbaa !1318
  %1 = load x86_fp80, x86_fp80* %c.addr, align 16, !dbg !1829, !tbaa !1053
  %div = fdiv x86_fp80 %1, 0xK4000C000000000000000, !dbg !1830
  ret x86_fp80 %div, !dbg !1831
}

; Function Attrs: nounwind uwtable
define void @tv_i(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !864, metadata !987), !dbg !1832
  %0 = load i32, i32* %c.addr, align 4, !dbg !1833, !tbaa !983
  %conv = sext i32 %0 to i64, !dbg !1834
  store i64 %conv, i64* @last_tf_arg_s, align 8, !dbg !1835, !tbaa !1318
  ret void, !dbg !1836
}

; Function Attrs: nounwind uwtable
define i32 @PointInRect(%struct.RECT* %prc, i64 %pt.coerce0, i64 %pt.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %pt = alloca %struct.POINT, align 8
  %prc.addr = alloca %struct.RECT*, align 8
  %0 = bitcast %struct.POINT* %pt to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %pt.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %pt.coerce1, i64* %2
  store %struct.RECT* %prc, %struct.RECT** %prc.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.RECT** %prc.addr, metadata !882, metadata !987), !dbg !1837
  call void @llvm.dbg.declare(metadata %struct.POINT* %pt, metadata !883, metadata !987), !dbg !1838
  %x = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 0, !dbg !1839
  %3 = load i64, i64* %x, align 8, !dbg !1839, !tbaa !1841
  %4 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8, !dbg !1843, !tbaa !993
  %left = getelementptr inbounds %struct.RECT, %struct.RECT* %4, i32 0, i32 0, !dbg !1844
  %5 = load i64, i64* %left, align 8, !dbg !1844, !tbaa !1845
  %cmp = icmp slt i64 %3, %5, !dbg !1847
  br i1 %cmp, label %if.then, label %if.end, !dbg !1848

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1849
  br label %return, !dbg !1849

if.end:                                           ; preds = %entry
  %x1 = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 0, !dbg !1850
  %6 = load i64, i64* %x1, align 8, !dbg !1850, !tbaa !1841
  %7 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8, !dbg !1852, !tbaa !993
  %right = getelementptr inbounds %struct.RECT, %struct.RECT* %7, i32 0, i32 2, !dbg !1853
  %8 = load i64, i64* %right, align 8, !dbg !1853, !tbaa !1854
  %cmp2 = icmp sgt i64 %6, %8, !dbg !1855
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1856

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !1857
  br label %return, !dbg !1857

if.end.4:                                         ; preds = %if.end
  %y = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 1, !dbg !1858
  %9 = load i64, i64* %y, align 8, !dbg !1858, !tbaa !1860
  %10 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8, !dbg !1861, !tbaa !993
  %top = getelementptr inbounds %struct.RECT, %struct.RECT* %10, i32 0, i32 1, !dbg !1862
  %11 = load i64, i64* %top, align 8, !dbg !1862, !tbaa !1863
  %cmp5 = icmp slt i64 %9, %11, !dbg !1864
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1865

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1866
  br label %return, !dbg !1866

if.end.7:                                         ; preds = %if.end.4
  %y8 = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 1, !dbg !1867
  %12 = load i64, i64* %y8, align 8, !dbg !1867, !tbaa !1860
  %13 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8, !dbg !1869, !tbaa !993
  %bottom = getelementptr inbounds %struct.RECT, %struct.RECT* %13, i32 0, i32 3, !dbg !1870
  %14 = load i64, i64* %bottom, align 8, !dbg !1870, !tbaa !1871
  %cmp9 = icmp sgt i64 %12, %14, !dbg !1872
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1873

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval, !dbg !1874
  br label %return, !dbg !1874

if.end.11:                                        ; preds = %if.end.7
  store i32 1, i32* %retval, !dbg !1875
  br label %return, !dbg !1875

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.3, %if.then
  %15 = load i32, i32* %retval, !dbg !1876
  ret i32 %15, !dbg !1876
}

; Function Attrs: nounwind uwtable
define i32 @ret_2h_func(i32 %inp.coerce) #0 {
entry:
  %retval = alloca %struct.S2H, align 2
  %inp = alloca %struct.S2H, align 4
  %0 = bitcast %struct.S2H* %inp to i32*
  store i32 %inp.coerce, i32* %0, align 4
  call void @llvm.dbg.declare(metadata %struct.S2H* %inp, metadata !893, metadata !987), !dbg !1877
  %x = getelementptr inbounds %struct.S2H, %struct.S2H* %inp, i32 0, i32 0, !dbg !1878
  %1 = load i16, i16* %x, align 2, !dbg !1879, !tbaa !1880
  %conv = sext i16 %1 to i32, !dbg !1879
  %mul = mul i32 %conv, 2, !dbg !1879
  %conv1 = trunc i32 %mul to i16, !dbg !1879
  store i16 %conv1, i16* %x, align 2, !dbg !1879, !tbaa !1880
  %y = getelementptr inbounds %struct.S2H, %struct.S2H* %inp, i32 0, i32 1, !dbg !1882
  %2 = load i16, i16* %y, align 2, !dbg !1883, !tbaa !1884
  %conv2 = sext i16 %2 to i32, !dbg !1883
  %mul3 = mul i32 %conv2, 3, !dbg !1883
  %conv4 = trunc i32 %mul3 to i16, !dbg !1883
  store i16 %conv4, i16* %y, align 2, !dbg !1883, !tbaa !1884
  %3 = bitcast %struct.S2H* %retval to i8*, !dbg !1885
  %4 = bitcast %struct.S2H* %inp to i8*, !dbg !1885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 2, i1 false), !dbg !1885, !tbaa.struct !1886
  %5 = bitcast %struct.S2H* %retval to i32*, !dbg !1887
  %6 = load i32, i32* %5, align 2, !dbg !1887
  ret i32 %6, !dbg !1887
}

; Function Attrs: nounwind uwtable
define void @ret_8i_func(%struct.S8I* noalias sret %agg.result, %struct.S8I* byval align 8 %inp) #0 {
entry:
  call void @llvm.dbg.declare(metadata %struct.S8I* %inp, metadata !909, metadata !987), !dbg !1888
  %a = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 0, !dbg !1889
  %0 = load i32, i32* %a, align 4, !dbg !1890, !tbaa !1891
  %mul = mul i32 %0, 2, !dbg !1890
  store i32 %mul, i32* %a, align 4, !dbg !1890, !tbaa !1891
  %b = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 1, !dbg !1893
  %1 = load i32, i32* %b, align 4, !dbg !1894, !tbaa !1895
  %mul1 = mul i32 %1, 3, !dbg !1894
  store i32 %mul1, i32* %b, align 4, !dbg !1894, !tbaa !1895
  %c = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 2, !dbg !1896
  %2 = load i32, i32* %c, align 4, !dbg !1897, !tbaa !1898
  %mul2 = mul i32 %2, 4, !dbg !1897
  store i32 %mul2, i32* %c, align 4, !dbg !1897, !tbaa !1898
  %d = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 3, !dbg !1899
  %3 = load i32, i32* %d, align 4, !dbg !1900, !tbaa !1901
  %mul3 = mul i32 %3, 5, !dbg !1900
  store i32 %mul3, i32* %d, align 4, !dbg !1900, !tbaa !1901
  %e = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 4, !dbg !1902
  %4 = load i32, i32* %e, align 4, !dbg !1903, !tbaa !1904
  %mul4 = mul i32 %4, 6, !dbg !1903
  store i32 %mul4, i32* %e, align 4, !dbg !1903, !tbaa !1904
  %f = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 5, !dbg !1905
  %5 = load i32, i32* %f, align 4, !dbg !1906, !tbaa !1907
  %mul5 = mul i32 %5, 7, !dbg !1906
  store i32 %mul5, i32* %f, align 4, !dbg !1906, !tbaa !1907
  %g = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 6, !dbg !1908
  %6 = load i32, i32* %g, align 4, !dbg !1909, !tbaa !1910
  %mul6 = mul i32 %6, 8, !dbg !1909
  store i32 %mul6, i32* %g, align 4, !dbg !1909, !tbaa !1910
  %h = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 7, !dbg !1911
  %7 = load i32, i32* %h, align 4, !dbg !1912, !tbaa !1913
  %mul7 = mul i32 %7, 9, !dbg !1912
  store i32 %mul7, i32* %h, align 4, !dbg !1912, !tbaa !1913
  %8 = bitcast %struct.S8I* %agg.result to i8*, !dbg !1914
  %9 = bitcast %struct.S8I* %inp to i8*, !dbg !1914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 4, i1 false), !dbg !1914, !tbaa.struct !1915
  ret void, !dbg !1916
}

; Function Attrs: nounwind uwtable
define i32 @GetRectangle(i32 %flag, %struct.RECT* %prect) #0 {
entry:
  %retval = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %prect.addr = alloca %struct.RECT*, align 8
  store i32 %flag, i32* %flag.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !914, metadata !987), !dbg !1917
  store %struct.RECT* %prect, %struct.RECT** %prect.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata %struct.RECT** %prect.addr, metadata !915, metadata !987), !dbg !1918
  %0 = load i32, i32* %flag.addr, align 4, !dbg !1919, !tbaa !983
  %cmp = icmp eq i32 %0, 0, !dbg !1921
  br i1 %cmp, label %if.then, label %if.end, !dbg !1922

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1923
  br label %return, !dbg !1923

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4, !dbg !1924, !tbaa !983
  %conv = sext i32 %1 to i64, !dbg !1925
  %2 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8, !dbg !1926, !tbaa !993
  %left = getelementptr inbounds %struct.RECT, %struct.RECT* %2, i32 0, i32 0, !dbg !1927
  store i64 %conv, i64* %left, align 8, !dbg !1928, !tbaa !1845
  %3 = load i32, i32* %flag.addr, align 4, !dbg !1929, !tbaa !983
  %add = add i32 %3, 1, !dbg !1930
  %conv1 = sext i32 %add to i64, !dbg !1931
  %4 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8, !dbg !1932, !tbaa !993
  %top = getelementptr inbounds %struct.RECT, %struct.RECT* %4, i32 0, i32 1, !dbg !1933
  store i64 %conv1, i64* %top, align 8, !dbg !1934, !tbaa !1863
  %5 = load i32, i32* %flag.addr, align 4, !dbg !1935, !tbaa !983
  %add2 = add i32 %5, 2, !dbg !1936
  %conv3 = sext i32 %add2 to i64, !dbg !1937
  %6 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8, !dbg !1938, !tbaa !993
  %right = getelementptr inbounds %struct.RECT, %struct.RECT* %6, i32 0, i32 2, !dbg !1939
  store i64 %conv3, i64* %right, align 8, !dbg !1940, !tbaa !1854
  %7 = load i32, i32* %flag.addr, align 4, !dbg !1941, !tbaa !983
  %add4 = add i32 %7, 3, !dbg !1942
  %conv5 = sext i32 %add4 to i64, !dbg !1943
  %8 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8, !dbg !1944, !tbaa !993
  %bottom = getelementptr inbounds %struct.RECT, %struct.RECT* %8, i32 0, i32 3, !dbg !1945
  store i64 %conv5, i64* %bottom, align 8, !dbg !1946, !tbaa !1871
  store i32 1, i32* %retval, !dbg !1947
  br label %return, !dbg !1947

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, !dbg !1948
  ret i32 %9, !dbg !1948
}

; Function Attrs: nounwind uwtable
define void @TwoOutArgs(i32 %a, i32* %pi, i32 %b, i32* %pj) #0 {
entry:
  %a.addr = alloca i32, align 4
  %pi.addr = alloca i32*, align 8
  %b.addr = alloca i32, align 4
  %pj.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !920, metadata !987), !dbg !1949
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %pi.addr, metadata !921, metadata !987), !dbg !1950
  store i32 %b, i32* %b.addr, align 4, !tbaa !983
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !922, metadata !987), !dbg !1951
  store i32* %pj, i32** %pj.addr, align 8, !tbaa !993
  call void @llvm.dbg.declare(metadata i32** %pj.addr, metadata !923, metadata !987), !dbg !1952
  %0 = load i32, i32* %a.addr, align 4, !dbg !1953, !tbaa !983
  %1 = load i32*, i32** %pi.addr, align 8, !dbg !1954, !tbaa !993
  %2 = load i32, i32* %1, align 4, !dbg !1955, !tbaa !983
  %add = add i32 %2, %0, !dbg !1955
  store i32 %add, i32* %1, align 4, !dbg !1955, !tbaa !983
  %3 = load i32, i32* %b.addr, align 4, !dbg !1956, !tbaa !983
  %4 = load i32*, i32** %pj.addr, align 8, !dbg !1957, !tbaa !993
  %5 = load i32, i32* %4, align 4, !dbg !1958, !tbaa !983
  %add1 = add i32 %5, %3, !dbg !1958
  store i32 %add1, i32* %4, align 4, !dbg !1958, !tbaa !983
  ret void, !dbg !1959
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__ctypes_test() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_ctypes_testmodule, i32 1013), !dbg !1960
  ret %struct._object* %call, !dbg !1961
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!979, !980, !981}
!llvm.ident = !{!982}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !350, globals: !941)
!1 = !DIFile(filename: "_ctypes_test.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !6, !7, !8, !10, !11, !14, !15, !349}
!4 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 90, baseType: !5)
!13 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !17, line: 109, baseType: !18)
!17 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !17, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !17, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !26, line: 181, baseType: !27)
!26 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !17, line: 108, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !17, line: 334, size: 3200, align: 64, elements: !31)
!31 = !{!32, !38, !41, !42, !43, !48, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !17, line: 335, baseType: !33, size: 192, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !17, line: 114, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 111, size: 192, align: 64, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !34, file: !17, line: 112, baseType: !16, size: 128, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !34, file: !17, line: 113, baseType: !21, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !30, file: !17, line: 336, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !30, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !30, file: !17, line: 337, baseType: !21, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !30, file: !17, line: 341, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !17, line: 308, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !15}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !30, file: !17, line: 342, baseType: !49, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !17, line: 314, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!5, !15, !53, !5}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 48, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 246, size: 1728, align: 64, elements: !57)
!56 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !83, !85, !87, !91, !94, !96, !97, !98, !99, !100, !103, !104}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 247, baseType: !5, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 252, baseType: !8, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 253, baseType: !8, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 254, baseType: !8, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 255, baseType: !8, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 256, baseType: !8, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 257, baseType: !8, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 258, baseType: !8, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 259, baseType: !8, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 261, baseType: !8, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 262, baseType: !8, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 263, baseType: !8, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 265, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 161, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !56, line: 162, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !56, line: 163, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !56, line: 167, baseType: !5, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 267, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 269, baseType: !5, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 273, baseType: !5, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 275, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !26, line: 140, baseType: !27)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 279, baseType: !84, size: 16, align: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 280, baseType: !86, size: 8, align: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 281, baseType: !88, size: 8, align: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 285, baseType: !92, size: 64, align: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 155, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 294, baseType: !95, size: 64, align: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !26, line: 141, baseType: !27)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !55, file: !56, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !55, file: !56, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !55, file: !56, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !55, file: !56, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 62, baseType: !102)
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 309, baseType: !5, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !30, file: !17, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !17, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!15, !15, !8}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !30, file: !17, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !17, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !15, !8, !15}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !30, file: !17, line: 345, baseType: !10, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !30, file: !17, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !17, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!15, !15}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !30, file: !17, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !17, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !17, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !17, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!15, !15, !15}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !17, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !17, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !17, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !17, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !17, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !17, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!15, !15, !15, !15}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !17, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !17, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !17, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !17, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !17, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !17, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!5, !15}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !17, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !17, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !17, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !17, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !17, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !17, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !17, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !17, line: 258, baseType: !10, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !17, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !17, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !17, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !17, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !17, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !17, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !17, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !17, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !17, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !17, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !17, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !17, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !17, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !17, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !17, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !17, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !30, file: !17, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !17, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !17, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !17, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!21, !15}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !17, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !17, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !17, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!15, !15, !21}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !17, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !17, line: 285, baseType: !10, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !17, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !17, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!5, !15, !21, !15}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !17, line: 287, baseType: !10, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !17, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !17, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!5, !15, !15}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !17, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !17, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !30, file: !17, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !17, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !17, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !17, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !17, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !17, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!5, !15, !15, !15}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !30, file: !17, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !17, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !15}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !22, line: 186, baseType: !21)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !30, file: !17, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !30, file: !17, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !30, file: !17, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !17, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !30, file: !17, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !17, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !30, file: !17, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !17, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !17, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !17, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!5, !15, !241, !5}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !17, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !17, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !17, line: 179, baseType: !10, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !17, line: 180, baseType: !15, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !17, line: 181, baseType: !21, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !17, line: 182, baseType: !21, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !17, line: 184, baseType: !5, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !17, line: 185, baseType: !5, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !17, line: 186, baseType: !8, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !17, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !17, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !17, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !17, line: 190, baseType: !10, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !17, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !17, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !15, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !30, file: !17, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !30, file: !17, line: 368, baseType: !39, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !30, file: !17, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !17, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!5, !15, !269, !10}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !17, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !15, !10}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !30, file: !17, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !30, file: !17, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !17, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!15, !15, !15, !5}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !30, file: !17, line: 382, baseType: !21, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !30, file: !17, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !17, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !30, file: !17, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !17, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !30, file: !17, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !39, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !5, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !39, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !17, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !17, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !17, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !8, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!15, !15, !10}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!5, !15, !15, !10}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !8, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !10, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !30, file: !17, line: 392, baseType: !29, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !30, file: !17, line: 393, baseType: !15, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !30, file: !17, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !17, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !30, file: !17, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !17, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !30, file: !17, line: 396, baseType: !21, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !30, file: !17, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !17, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !30, file: !17, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !17, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!15, !29, !21}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !30, file: !17, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !17, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!15, !29, !15, !15}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !30, file: !17, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !17, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !10}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !30, file: !17, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !30, file: !17, line: 402, baseType: !15, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !30, file: !17, line: 403, baseType: !15, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !30, file: !17, line: 404, baseType: !15, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !30, file: !17, line: 405, baseType: !15, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !30, file: !17, line: 406, baseType: !15, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !30, file: !17, line: 407, baseType: !44, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !30, file: !17, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !30, file: !17, line: 412, baseType: !44, size: 64, align: 64, offset: 3136)
!349 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!350 = !{!351, !365, !378, !384, !391, !398, !405, !424, !430, !436, !441, !454, !459, !466, !477, !487, !497, !507, !512, !519, !522, !528, !531, !538, !543, !555, !560, !570, !581, !591, !601, !611, !630, !642, !645, !657, !671, !677, !683, !687, !690, !716, !722, !727, !733, !738, !743, !746, !751, !756, !761, !764, !769, !774, !777, !782, !788, !794, !800, !806, !812, !818, !824, !830, !836, !842, !848, !854, !860, !865, !884, !894, !910, !916, !924, !927, !936}
!351 = !DISubprogram(name: "_testfunc_cbk_reg_int", scope: !352, file: !352, line: 16, type: !353, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32, i32, i32, i32 (i32, i32, i32, i32, i32)*)* @_testfunc_cbk_reg_int, variables: !358)
!352 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/_ctypes_test.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DISubroutineType(types: !354)
!354 = !{!5, !5, !5, !5, !5, !5, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!5, !5, !5, !5, !5, !5}
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !351, file: !352, line: 16, type: !5)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !351, file: !352, line: 16, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !351, file: !352, line: 16, type: !5)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 4, scope: !351, file: !352, line: 16, type: !5)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 5, scope: !351, file: !352, line: 16, type: !5)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 6, scope: !351, file: !352, line: 17, type: !355)
!365 = !DISubprogram(name: "_testfunc_cbk_reg_double", scope: !352, file: !352, line: 23, type: !366, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double, double, double, double, double (double, double, double, double, double)*)* @_testfunc_cbk_reg_double, variables: !371)
!366 = !DISubroutineType(types: !367)
!367 = !{!7, !7, !7, !7, !7, !7, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!7, !7, !7, !7, !7, !7}
!371 = !{!372, !373, !374, !375, !376, !377}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !365, file: !352, line: 23, type: !7)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !365, file: !352, line: 23, type: !7)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !365, file: !352, line: 23, type: !7)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 4, scope: !365, file: !352, line: 23, type: !7)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 5, scope: !365, file: !352, line: 23, type: !7)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 6, scope: !365, file: !352, line: 24, type: !368)
!378 = !DISubprogram(name: "testfunc_array", scope: !352, file: !352, line: 29, type: !379, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @testfunc_array, variables: !382)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!382 = !{!383}
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "values", arg: 1, scope: !378, file: !352, line: 29, type: !381)
!384 = !DISubprogram(name: "testfunc_Ddd", scope: !352, file: !352, line: 38, type: !385, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (double, double)* @testfunc_Ddd, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!4, !7, !7}
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !384, file: !352, line: 38, type: !7)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !384, file: !352, line: 38, type: !7)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !384, file: !352, line: 40, type: !4)
!391 = !DISubprogram(name: "testfunc_DDD", scope: !352, file: !352, line: 46, type: !392, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (x86_fp80, x86_fp80)* @testfunc_DDD, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!4, !4, !4}
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !391, file: !352, line: 46, type: !4)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !391, file: !352, line: 46, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !391, file: !352, line: 48, type: !4)
!398 = !DISubprogram(name: "testfunc_iii", scope: !352, file: !352, line: 54, type: !399, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @testfunc_iii, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!5, !5, !5}
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !398, file: !352, line: 54, type: !5)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !398, file: !352, line: 54, type: !5)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !398, file: !352, line: 56, type: !5)
!405 = !DISubprogram(name: "myprintf", scope: !352, file: !352, line: 61, type: !406, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, ...)* @myprintf, variables: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!5, !8, null}
!408 = !{!409, !410, !411}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !405, file: !352, line: 61, type: !8)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !405, file: !352, line: 63, type: !5)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argptr", scope: !405, file: !352, line: 64, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !24, line: 79, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !414, line: 50, baseType: !415)
!414 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 64, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, align: 64, elements: !89)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 64, baseType: !418)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 64, size: 192, align: 64, elements: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !418, file: !1, line: 64, baseType: !347, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !418, file: !1, line: 64, baseType: !347, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !418, file: !1, line: 64, baseType: !10, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !418, file: !1, line: 64, baseType: !10, size: 64, align: 64, offset: 128)
!424 = !DISubprogram(name: "my_strtok", scope: !352, file: !352, line: 71, type: !425, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @my_strtok, variables: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!8, !8, !39}
!427 = !{!428, !429}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "token", arg: 1, scope: !424, file: !352, line: 71, type: !8)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delim", arg: 2, scope: !424, file: !352, line: 71, type: !39)
!430 = !DISubprogram(name: "my_strchr", scope: !352, file: !352, line: 76, type: !431, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @my_strchr, variables: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!8, !39, !5}
!433 = !{!434, !435}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !430, file: !352, line: 76, type: !39)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !430, file: !352, line: 76, type: !5)
!436 = !DISubprogram(name: "my_sqrt", scope: !352, file: !352, line: 82, type: !437, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @my_sqrt, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!7, !7}
!439 = !{!440}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !436, file: !352, line: 82, type: !7)
!441 = !DISubprogram(name: "my_qsort", scope: !352, file: !352, line: 87, type: !442, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i64, i64, i32 (i8*, i8*)*)* @my_qsort, variables: !449)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !10, !101, !101, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!5, !447, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!449 = !{!450, !451, !452, !453}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 1, scope: !441, file: !352, line: 87, type: !10)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 2, scope: !441, file: !352, line: 87, type: !101)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 3, scope: !441, file: !352, line: 87, type: !101)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "compare", arg: 4, scope: !441, file: !352, line: 87, type: !444)
!454 = !DISubprogram(name: "_testfunc_ai8", scope: !352, file: !352, line: 92, type: !455, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*)* @_testfunc_ai8, variables: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!381, !381}
!457 = !{!458}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !454, file: !352, line: 92, type: !381)
!459 = !DISubprogram(name: "_testfunc_v", scope: !352, file: !352, line: 97, type: !460, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*)* @_testfunc_v, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !5, !5, !381}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !459, file: !352, line: 97, type: !5)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !459, file: !352, line: 97, type: !5)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "presult", arg: 3, scope: !459, file: !352, line: 97, type: !381)
!466 = !DISubprogram(name: "_testfunc_i_bhilfd", scope: !352, file: !352, line: 102, type: !467, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i16, i32, i64, float, double)* @_testfunc_i_bhilfd, variables: !470)
!467 = !DISubroutineType(types: !468)
!468 = !{!5, !86, !469, !5, !27, !6, !7}
!469 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!470 = !{!471, !472, !473, !474, !475, !476}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !466, file: !352, line: 102, type: !86)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !466, file: !352, line: 102, type: !469)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !466, file: !352, line: 102, type: !5)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !466, file: !352, line: 102, type: !27)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !466, file: !352, line: 102, type: !6)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !466, file: !352, line: 102, type: !7)
!477 = !DISubprogram(name: "_testfunc_f_bhilfd", scope: !352, file: !352, line: 110, type: !478, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: float (i8, i16, i32, i64, float, double)* @_testfunc_f_bhilfd, variables: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!6, !86, !469, !5, !27, !6, !7}
!480 = !{!481, !482, !483, !484, !485, !486}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !477, file: !352, line: 110, type: !86)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !477, file: !352, line: 110, type: !469)
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !477, file: !352, line: 110, type: !5)
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !477, file: !352, line: 110, type: !27)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !477, file: !352, line: 110, type: !6)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !477, file: !352, line: 110, type: !7)
!487 = !DISubprogram(name: "_testfunc_d_bhilfd", scope: !352, file: !352, line: 118, type: !488, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: double (i8, i16, i32, i64, float, double)* @_testfunc_d_bhilfd, variables: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!7, !86, !469, !5, !27, !6, !7}
!490 = !{!491, !492, !493, !494, !495, !496}
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !487, file: !352, line: 118, type: !86)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !487, file: !352, line: 118, type: !469)
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !487, file: !352, line: 118, type: !5)
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !487, file: !352, line: 118, type: !27)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !487, file: !352, line: 118, type: !6)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !487, file: !352, line: 118, type: !7)
!497 = !DISubprogram(name: "_testfunc_D_bhilfD", scope: !352, file: !352, line: 126, type: !498, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (i8, i16, i32, i64, float, x86_fp80)* @_testfunc_D_bhilfD, variables: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!4, !86, !469, !5, !27, !6, !4}
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !497, file: !352, line: 126, type: !86)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !497, file: !352, line: 126, type: !469)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !497, file: !352, line: 126, type: !5)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !497, file: !352, line: 126, type: !27)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !497, file: !352, line: 126, type: !6)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !497, file: !352, line: 126, type: !4)
!507 = !DISubprogram(name: "_testfunc_p_p", scope: !352, file: !352, line: 134, type: !508, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @_testfunc_p_p, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!8, !10}
!510 = !{!511}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !507, file: !352, line: 134, type: !10)
!512 = !DISubprogram(name: "_testfunc_c_p_p", scope: !352, file: !352, line: 139, type: !513, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32*, i8**)* @_testfunc_c_p_p, variables: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{!10, !381, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!516 = !{!517, !518}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argcp", arg: 1, scope: !512, file: !352, line: 139, type: !381)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !512, file: !352, line: 139, type: !515)
!519 = !DISubprogram(name: "get_strchr", scope: !352, file: !352, line: 144, type: !520, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @get_strchr, variables: !2)
!520 = !DISubroutineType(types: !521)
!521 = !{!10}
!522 = !DISubprogram(name: "my_strdup", scope: !352, file: !352, line: 149, type: !523, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @my_strdup, variables: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!8, !8}
!525 = !{!526, !527}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !522, file: !352, line: 149, type: !8)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst", scope: !522, file: !352, line: 151, type: !8)
!528 = !DISubprogram(name: "my_free", scope: !352, file: !352, line: 158, type: !337, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @my_free, variables: !529)
!529 = !{!530}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !528, file: !352, line: 158, type: !10)
!531 = !DISubprogram(name: "my_wcsdup", scope: !352, file: !352, line: 164, type: !532, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*)* @my_wcsdup, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!11, !11}
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !531, file: !352, line: 164, type: !11)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !531, file: !352, line: 166, type: !101)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !531, file: !352, line: 167, type: !11)
!538 = !DISubprogram(name: "my_wcslen", scope: !352, file: !352, line: 174, type: !539, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32*)* @my_wcslen, variables: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!101, !11}
!541 = !{!542}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !538, file: !352, line: 174, type: !11)
!543 = !DISubprogram(name: "_testfunc_callfuncp", scope: !352, file: !352, line: 191, type: !544, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.FUNCS*)* @_testfunc_callfuncp, variables: !553)
!544 = !DISubroutineType(types: !545)
!545 = !{!5, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNCS", file: !352, line: 189, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 186, size: 128, align: 64, elements: !549)
!549 = !{!550, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !548, file: !352, line: 187, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !548, file: !352, line: 188, baseType: !551, size: 64, align: 64, offset: 64)
!553 = !{!554}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !543, file: !352, line: 191, type: !546)
!555 = !DISubprogram(name: "_testfunc_deref_pointer", scope: !352, file: !352, line: 198, type: !556, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @_testfunc_deref_pointer, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!5, !381}
!558 = !{!559}
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pi", arg: 1, scope: !555, file: !352, line: 198, type: !381)
!560 = !DISubprogram(name: "_testfunc_callback_with_pointer", scope: !352, file: !352, line: 211, type: !561, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (i32*)*)* @_testfunc_callback_with_pointer, variables: !564)
!561 = !DISubroutineType(types: !562)
!562 = !{!5, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!564 = !{!565, !566}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !560, file: !352, line: 211, type: !563)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "table", scope: !560, file: !352, line: 213, type: !567)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, align: 32, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 10)
!570 = !DISubprogram(name: "_testfunc_q_bhilfdq", scope: !352, file: !352, line: 219, type: !571, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i16, i32, i64, float, double, i64)* @_testfunc_q_bhilfdq, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!14, !86, !469, !5, !27, !6, !7, !14}
!573 = !{!574, !575, !576, !577, !578, !579, !580}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !570, file: !352, line: 219, type: !86)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !570, file: !352, line: 219, type: !469)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !570, file: !352, line: 219, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !570, file: !352, line: 219, type: !27)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !570, file: !352, line: 219, type: !6)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !570, file: !352, line: 220, type: !7)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "q", arg: 7, scope: !570, file: !352, line: 220, type: !14)
!581 = !DISubprogram(name: "_testfunc_q_bhilfd", scope: !352, file: !352, line: 225, type: !582, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i16, i32, i64, float, double)* @_testfunc_q_bhilfd, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!14, !86, !469, !5, !27, !6, !7}
!584 = !{!585, !586, !587, !588, !589, !590}
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !581, file: !352, line: 225, type: !86)
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h", arg: 2, scope: !581, file: !352, line: 225, type: !469)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !581, file: !352, line: 225, type: !5)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 4, scope: !581, file: !352, line: 225, type: !27)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 5, scope: !581, file: !352, line: 225, type: !6)
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 6, scope: !581, file: !352, line: 225, type: !7)
!591 = !DISubprogram(name: "_testfunc_callback_i_if", scope: !352, file: !352, line: 230, type: !592, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32 (i32)*)* @_testfunc_callback_i_if, variables: !597)
!592 = !DISubroutineType(types: !593)
!593 = !{!5, !5, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!5, !5}
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !591, file: !352, line: 230, type: !5)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !591, file: !352, line: 230, type: !594)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !591, file: !352, line: 232, type: !5)
!601 = !DISubprogram(name: "_testfunc_callback_q_qf", scope: !352, file: !352, line: 240, type: !602, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64, i64 (i64)*)* @_testfunc_callback_q_qf, variables: !607)
!602 = !DISubroutineType(types: !603)
!603 = !{!14, !14, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!14, !14}
!607 = !{!608, !609, !610}
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !601, file: !352, line: 240, type: !14)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !601, file: !352, line: 241, type: !604)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !601, file: !352, line: 243, type: !14)
!611 = !DISubprogram(name: "getSPAMANDEGGS", scope: !352, file: !352, line: 274, type: !612, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.EGG**)* @getSPAMANDEGGS, variables: !628)
!612 = !DISubroutineType(types: !613)
!613 = !{!5, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGG", file: !352, line: 263, baseType: !617)
!617 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 259, size: 192, align: 64, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !352, line: 260, baseType: !8, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "num_spams", scope: !617, file: !352, line: 261, baseType: !5, size: 32, align: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "spams", scope: !617, file: !352, line: 262, baseType: !622, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPAM", file: !352, line: 257, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 254, size: 128, align: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !624, file: !352, line: 255, baseType: !8, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !624, file: !352, line: 256, baseType: !8, size: 64, align: 64, offset: 64)
!628 = !{!629}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eggs", arg: 1, scope: !611, file: !352, line: 274, type: !614)
!630 = !DISubprogram(name: "_testfunc_byval", scope: !352, file: !352, line: 285, type: !631, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64, %struct.tagpoint*)* @_testfunc_byval, variables: !639)
!631 = !DISubroutineType(types: !632)
!632 = !{!5, !633, !638}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "point", file: !352, line: 283, baseType: !634)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagpoint", file: !352, line: 280, size: 64, align: 32, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !634, file: !352, line: 281, baseType: !5, size: 32, align: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !634, file: !352, line: 282, baseType: !5, size: 32, align: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!639 = !{!640, !641}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !630, file: !352, line: 285, type: !633)
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pout", arg: 2, scope: !630, file: !352, line: 285, type: !638)
!642 = !DISubprogram(name: "get_an_integer", scope: !352, file: !352, line: 296, type: !643, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @get_an_integer, variables: !2)
!643 = !DISubroutineType(types: !644)
!644 = !{!5}
!645 = !DISubprogram(name: "integrate", scope: !352, file: !352, line: 302, type: !646, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double, double (double)*, i64)* @integrate, variables: !649)
!646 = !DISubroutineType(types: !647)
!647 = !{!7, !7, !7, !648, !27}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!649 = !{!650, !651, !652, !653, !654, !655, !656}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !645, file: !352, line: 302, type: !7)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !645, file: !352, line: 302, type: !7)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 3, scope: !645, file: !352, line: 302, type: !648)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nstep", arg: 4, scope: !645, file: !352, line: 302, type: !27)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !645, file: !352, line: 304, type: !7)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !645, file: !352, line: 304, type: !7)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !645, file: !352, line: 304, type: !7)
!657 = !DISubprogram(name: "library_get", scope: !352, file: !352, line: 329, type: !658, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: %struct.xxx_library* ()* @library_get, variables: !2)
!658 = !DISubroutineType(types: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "xxx_library", file: !352, line: 312, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 310, size: 64, align: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "initialize", scope: !662, file: !352, line: 311, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64, align: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668, !336}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!10, !5}
!671 = !DISubprogram(name: "py_func_si", scope: !352, file: !352, line: 345, type: !132, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_func_si, variables: !672)
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !671, file: !352, line: 345, type: !15)
!674 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !671, file: !352, line: 345, type: !15)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !671, file: !352, line: 347, type: !8)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !671, file: !352, line: 348, type: !5)
!677 = !DISubprogram(name: "_py_func_si", scope: !352, file: !352, line: 355, type: !678, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_py_func_si, variables: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !8, !5}
!680 = !{!681, !682}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !677, file: !352, line: 355, type: !8)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !677, file: !352, line: 355, type: !5)
!683 = !DISubprogram(name: "py_func", scope: !352, file: !352, line: 359, type: !132, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @py_func, variables: !684)
!684 = !{!685, !686}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !683, file: !352, line: 359, type: !15)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !683, file: !352, line: 359, type: !15)
!687 = !DISubprogram(name: "_py_func", scope: !352, file: !352, line: 365, type: !688, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_py_func, variables: !2)
!688 = !DISubroutineType(types: !689)
!689 = !{null}
!690 = !DISubprogram(name: "set_bitfields", scope: !352, file: !352, line: 377, type: !691, isLocal: false, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.BITS*, i8, i32)* @set_bitfields, variables: !712)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !693, !9, !5}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "BITS", file: !352, line: 372, size: 96, align: 32, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !694, file: !352, line: 373, baseType: !5, size: 1, align: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !694, file: !352, line: 373, baseType: !5, size: 2, align: 32, offset: 1)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !694, file: !352, line: 373, baseType: !5, size: 3, align: 32, offset: 3)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !694, file: !352, line: 373, baseType: !5, size: 4, align: 32, offset: 6)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !694, file: !352, line: 373, baseType: !5, size: 5, align: 32, offset: 10)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !694, file: !352, line: 373, baseType: !5, size: 6, align: 32, offset: 15)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "G", scope: !694, file: !352, line: 373, baseType: !5, size: 7, align: 32, offset: 21)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "H", scope: !694, file: !352, line: 373, baseType: !5, size: 8, align: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !694, file: !352, line: 373, baseType: !5, size: 9, align: 32, offset: 40)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !694, file: !352, line: 374, baseType: !469, size: 1, align: 16, offset: 49)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !694, file: !352, line: 374, baseType: !469, size: 2, align: 16, offset: 50)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !694, file: !352, line: 374, baseType: !469, size: 3, align: 16, offset: 52)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !694, file: !352, line: 374, baseType: !469, size: 4, align: 16, offset: 55)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !694, file: !352, line: 374, baseType: !469, size: 5, align: 16, offset: 59)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !694, file: !352, line: 374, baseType: !469, size: 6, align: 16, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !694, file: !352, line: 374, baseType: !469, size: 7, align: 16, offset: 70)
!712 = !{!713, !714, !715}
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bits", arg: 1, scope: !690, file: !352, line: 377, type: !693)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !690, file: !352, line: 377, type: !9)
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !690, file: !352, line: 377, type: !5)
!716 = !DISubprogram(name: "unpack_bitfields", scope: !352, file: !352, line: 400, type: !717, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.BITS*, i8)* @unpack_bitfields, variables: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!5, !693, !9}
!719 = !{!720, !721}
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bits", arg: 1, scope: !716, file: !352, line: 400, type: !693)
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !716, file: !352, line: 400, type: !9)
!722 = !DISubprogram(name: "tf_b", scope: !352, file: !352, line: 436, type: !723, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i8)* @tf_b, variables: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!86, !86}
!725 = !{!726}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !722, file: !352, line: 436, type: !86)
!727 = !DISubprogram(name: "tf_B", scope: !352, file: !352, line: 437, type: !728, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i8)* @tf_B, variables: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{!730, !730}
!730 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!731 = !{!732}
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !727, file: !352, line: 437, type: !730)
!733 = !DISubprogram(name: "tf_h", scope: !352, file: !352, line: 438, type: !734, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16)* @tf_h, variables: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!469, !469}
!736 = !{!737}
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !733, file: !352, line: 438, type: !469)
!738 = !DISubprogram(name: "tf_H", scope: !352, file: !352, line: 439, type: !739, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16)* @tf_H, variables: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!84, !84}
!741 = !{!742}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !738, file: !352, line: 439, type: !84)
!743 = !DISubprogram(name: "tf_i", scope: !352, file: !352, line: 440, type: !595, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tf_i, variables: !744)
!744 = !{!745}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !743, file: !352, line: 440, type: !5)
!746 = !DISubprogram(name: "tf_I", scope: !352, file: !352, line: 441, type: !747, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tf_I, variables: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!347, !347}
!749 = !{!750}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !746, file: !352, line: 441, type: !347)
!751 = !DISubprogram(name: "tf_l", scope: !352, file: !352, line: 442, type: !752, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @tf_l, variables: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!27, !27}
!754 = !{!755}
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !751, file: !352, line: 442, type: !27)
!756 = !DISubprogram(name: "tf_L", scope: !352, file: !352, line: 443, type: !757, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @tf_L, variables: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!102, !102}
!759 = !{!760}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !756, file: !352, line: 443, type: !102)
!761 = !DISubprogram(name: "tf_q", scope: !352, file: !352, line: 444, type: !605, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @tf_q, variables: !762)
!762 = !{!763}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !761, file: !352, line: 444, type: !14)
!764 = !DISubprogram(name: "tf_Q", scope: !352, file: !352, line: 445, type: !765, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @tf_Q, variables: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!349, !349}
!767 = !{!768}
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !764, file: !352, line: 445, type: !349)
!769 = !DISubprogram(name: "tf_f", scope: !352, file: !352, line: 446, type: !770, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: float (float)* @tf_f, variables: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!6, !6}
!772 = !{!773}
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !769, file: !352, line: 446, type: !6)
!774 = !DISubprogram(name: "tf_d", scope: !352, file: !352, line: 447, type: !437, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @tf_d, variables: !775)
!775 = !{!776}
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !774, file: !352, line: 447, type: !7)
!777 = !DISubprogram(name: "tf_D", scope: !352, file: !352, line: 448, type: !778, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (x86_fp80)* @tf_D, variables: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{!4, !4}
!780 = !{!781}
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !777, file: !352, line: 448, type: !4)
!782 = !DISubprogram(name: "tf_bb", scope: !352, file: !352, line: 467, type: !783, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i8, i8)* @tf_bb, variables: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{!86, !86, !86}
!785 = !{!786, !787}
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !782, file: !352, line: 467, type: !86)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !782, file: !352, line: 467, type: !86)
!788 = !DISubprogram(name: "tf_bB", scope: !352, file: !352, line: 468, type: !789, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i8, i8)* @tf_bB, variables: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!730, !86, !730}
!791 = !{!792, !793}
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !788, file: !352, line: 468, type: !86)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !788, file: !352, line: 468, type: !730)
!794 = !DISubprogram(name: "tf_bh", scope: !352, file: !352, line: 469, type: !795, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i8, i16)* @tf_bh, variables: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!469, !86, !469}
!797 = !{!798, !799}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !794, file: !352, line: 469, type: !86)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !794, file: !352, line: 469, type: !469)
!800 = !DISubprogram(name: "tf_bH", scope: !352, file: !352, line: 470, type: !801, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i8, i16)* @tf_bH, variables: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!84, !86, !84}
!803 = !{!804, !805}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !800, file: !352, line: 470, type: !86)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !800, file: !352, line: 470, type: !84)
!806 = !DISubprogram(name: "tf_bi", scope: !352, file: !352, line: 471, type: !807, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i32)* @tf_bi, variables: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!5, !86, !5}
!809 = !{!810, !811}
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !806, file: !352, line: 471, type: !86)
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !806, file: !352, line: 471, type: !5)
!812 = !DISubprogram(name: "tf_bI", scope: !352, file: !352, line: 472, type: !813, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8, i32)* @tf_bI, variables: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!347, !86, !347}
!815 = !{!816, !817}
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !812, file: !352, line: 472, type: !86)
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !812, file: !352, line: 472, type: !347)
!818 = !DISubprogram(name: "tf_bl", scope: !352, file: !352, line: 473, type: !819, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i64)* @tf_bl, variables: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!27, !86, !27}
!821 = !{!822, !823}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !818, file: !352, line: 473, type: !86)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !818, file: !352, line: 473, type: !27)
!824 = !DISubprogram(name: "tf_bL", scope: !352, file: !352, line: 474, type: !825, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i64)* @tf_bL, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!102, !86, !102}
!827 = !{!828, !829}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !824, file: !352, line: 474, type: !86)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !824, file: !352, line: 474, type: !102)
!830 = !DISubprogram(name: "tf_bq", scope: !352, file: !352, line: 475, type: !831, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i64)* @tf_bq, variables: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!14, !86, !14}
!833 = !{!834, !835}
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !830, file: !352, line: 475, type: !86)
!835 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !830, file: !352, line: 475, type: !14)
!836 = !DISubprogram(name: "tf_bQ", scope: !352, file: !352, line: 476, type: !837, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8, i64)* @tf_bQ, variables: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!349, !86, !349}
!839 = !{!840, !841}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !836, file: !352, line: 476, type: !86)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !836, file: !352, line: 476, type: !349)
!842 = !DISubprogram(name: "tf_bf", scope: !352, file: !352, line: 477, type: !843, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: float (i8, float)* @tf_bf, variables: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!6, !86, !6}
!845 = !{!846, !847}
!846 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !842, file: !352, line: 477, type: !86)
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !842, file: !352, line: 477, type: !6)
!848 = !DISubprogram(name: "tf_bd", scope: !352, file: !352, line: 478, type: !849, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, function: double (i8, double)* @tf_bd, variables: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!7, !86, !7}
!851 = !{!852, !853}
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !848, file: !352, line: 478, type: !86)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !848, file: !352, line: 478, type: !7)
!854 = !DISubprogram(name: "tf_bD", scope: !352, file: !352, line: 479, type: !855, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (i8, x86_fp80)* @tf_bD, variables: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!4, !86, !4}
!857 = !{!858, !859}
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !854, file: !352, line: 479, type: !86)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !854, file: !352, line: 479, type: !4)
!860 = !DISubprogram(name: "tv_i", scope: !352, file: !352, line: 480, type: !861, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @tv_i, variables: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !5}
!863 = !{!864}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !860, file: !352, line: 480, type: !5)
!865 = !DISubprogram(name: "PointInRect", scope: !352, file: !352, line: 517, type: !866, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.RECT*, i64, i64)* @PointInRect, variables: !881)
!866 = !DISubroutineType(types: !867)
!867 = !{!5, !868, !876}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "RECT", file: !352, line: 513, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 508, size: 256, align: 64, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !870, file: !352, line: 509, baseType: !27, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !870, file: !352, line: 510, baseType: !27, size: 64, align: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !870, file: !352, line: 511, baseType: !27, size: 64, align: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !870, file: !352, line: 512, baseType: !27, size: 64, align: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !352, line: 506, baseType: !877)
!877 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 503, size: 128, align: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !877, file: !352, line: 504, baseType: !27, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !877, file: !352, line: 505, baseType: !27, size: 64, align: 64, offset: 64)
!881 = !{!882, !883}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prc", arg: 1, scope: !865, file: !352, line: 517, type: !868)
!883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pt", arg: 2, scope: !865, file: !352, line: 517, type: !876)
!884 = !DISubprogram(name: "ret_2h_func", scope: !352, file: !352, line: 535, type: !885, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @ret_2h_func, variables: !892)
!885 = !DISubroutineType(types: !886)
!886 = !{!887, !887}
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "S2H", file: !352, line: 533, baseType: !888)
!888 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 530, size: 32, align: 16, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !888, file: !352, line: 531, baseType: !469, size: 16, align: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !888, file: !352, line: 532, baseType: !469, size: 16, align: 16, offset: 16)
!892 = !{!893}
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 1, scope: !884, file: !352, line: 535, type: !887)
!894 = !DISubprogram(name: "ret_8i_func", scope: !352, file: !352, line: 546, type: !895, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.S8I*, %struct.S8I*)* @ret_8i_func, variables: !908)
!895 = !DISubroutineType(types: !896)
!896 = !{!897, !897}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "S8I", file: !352, line: 544, baseType: !898)
!898 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 542, size: 256, align: 32, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 160)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !898, file: !352, line: 543, baseType: !5, size: 32, align: 32, offset: 224)
!908 = !{!909}
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 1, scope: !894, file: !352, line: 546, type: !897)
!910 = !DISubprogram(name: "GetRectangle", scope: !352, file: !352, line: 559, type: !911, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.RECT*)* @GetRectangle, variables: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!5, !5, !868}
!913 = !{!914, !915}
!914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 1, scope: !910, file: !352, line: 559, type: !5)
!915 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prect", arg: 2, scope: !910, file: !352, line: 559, type: !868)
!916 = !DISubprogram(name: "TwoOutArgs", scope: !352, file: !352, line: 570, type: !917, isLocal: false, isDefinition: true, scopeLine: 571, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, i32, i32*)* @TwoOutArgs, variables: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !5, !381, !5, !381}
!919 = !{!920, !921, !922, !923}
!920 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !916, file: !352, line: 570, type: !5)
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pi", arg: 2, scope: !916, file: !352, line: 570, type: !381)
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 3, scope: !916, file: !352, line: 570, type: !5)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pj", arg: 4, scope: !916, file: !352, line: 570, type: !381)
!924 = !DISubprogram(name: "PyInit__ctypes_test", scope: !352, file: !352, line: 613, type: !925, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__ctypes_test, variables: !2)
!925 = !DISubroutineType(types: !926)
!926 = !{!15}
!927 = !DISubprogram(name: "vprintf", scope: !928, file: !928, line: 36, type: !929, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.__va_list_tag*)* @vprintf, variables: !933)
!928 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!929 = !DISubroutineType(types: !930)
!930 = !{!5, !931, !932}
!931 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!933 = !{!934, !935}
!934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__fmt", arg: 1, scope: !927, file: !928, line: 36, type: !931)
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__arg", arg: 2, scope: !927, file: !928, line: 36, type: !932)
!936 = !DISubprogram(name: "_xxx_init", scope: !352, file: !352, line: 314, type: !666, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: void (i8* (i32)*, void (i8*)*)* @_xxx_init, variables: !937)
!937 = !{!938, !939, !940}
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Xalloc", arg: 1, scope: !936, file: !352, line: 314, type: !668)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Xfree", arg: 2, scope: !936, file: !352, line: 314, type: !336)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !936, file: !352, line: 316, type: !10)
!941 = !{!942, !946, !948, !949, !950, !951, !952, !975}
!942 = !DIGlobalVariable(name: "my_spams", scope: !0, file: !352, line: 265, type: !943, isLocal: false, isDefinition: true, variable: [2 x %struct.SPAM]* @my_spams)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 256, align: 64, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 2)
!946 = !DIGlobalVariable(name: "my_eggs", scope: !0, file: !352, line: 270, type: !947, isLocal: false, isDefinition: true, variable: [1 x %struct.EGG]* @my_eggs)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 192, align: 64, elements: !89)
!948 = !DIGlobalVariable(name: "an_integer", scope: !0, file: !352, line: 294, type: !5, isLocal: false, isDefinition: true, variable: i32* @an_integer)
!949 = !DIGlobalVariable(name: "_xxx_lib", scope: !0, file: !352, line: 325, type: !661, isLocal: false, isDefinition: true, variable: %struct.xxx_library* @_xxx_lib)
!950 = !DIGlobalVariable(name: "last_tf_arg_s", scope: !0, file: !352, line: 369, type: !14, isLocal: false, isDefinition: true, variable: i64* @last_tf_arg_s)
!951 = !DIGlobalVariable(name: "last_tf_arg_u", scope: !0, file: !352, line: 370, type: !349, isLocal: false, isDefinition: true, variable: i64* @last_tf_arg_u)
!952 = !DIGlobalVariable(name: "_ctypes_testmodule", scope: !0, file: !352, line: 600, type: !953, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_ctypes_testmodule)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !954, line: 47, size: 832, align: 64, elements: !955)
!954 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!955 = !{!956, !965, !966, !967, !968, !971, !972, !973, !974}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !953, file: !954, line: 48, baseType: !957, size: 320, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !954, line: 38, baseType: !958)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !954, line: 33, size: 320, align: 64, elements: !959)
!959 = !{!960, !961, !963, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !958, file: !954, line: 34, baseType: !16, size: 128, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !958, file: !954, line: 35, baseType: !962, size: 64, align: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !958, file: !954, line: 36, baseType: !21, size: 64, align: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !958, file: !954, line: 37, baseType: !15, size: 64, align: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !953, file: !954, line: 49, baseType: !39, size: 64, align: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !953, file: !954, line: 50, baseType: !39, size: 64, align: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !953, file: !954, line: 51, baseType: !21, size: 64, align: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !953, file: !954, line: 52, baseType: !969, size: 64, align: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !953, file: !954, line: 53, baseType: !148, size: 64, align: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !953, file: !954, line: 54, baseType: !265, size: 64, align: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !953, file: !954, line: 55, baseType: !148, size: 64, align: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !953, file: !954, line: 56, baseType: !335, size: 64, align: 64, offset: 768)
!975 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !352, line: 424, type: !976, isLocal: true, isDefinition: true, variable: <{ { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }, { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* } }>* @module_methods)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 768, align: 64, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 3)
!979 = !{i32 2, !"Dwarf Version", i32 4}
!980 = !{i32 2, !"Debug Info Version", i32 3}
!981 = !{i32 1, !"PIC Level", i32 2}
!982 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!983 = !{!984, !984, i64 0}
!984 = !{!"int", !985, i64 0}
!985 = !{!"omnipotent char", !986, i64 0}
!986 = !{!"Simple C/C++ TBAA"}
!987 = !DIExpression()
!988 = !DILocation(line: 16, column: 27, scope: !351)
!989 = !DILocation(line: 16, column: 34, scope: !351)
!990 = !DILocation(line: 16, column: 41, scope: !351)
!991 = !DILocation(line: 16, column: 48, scope: !351)
!992 = !DILocation(line: 16, column: 55, scope: !351)
!993 = !{!994, !994, i64 0}
!994 = !{!"any pointer", !985, i64 0}
!995 = !DILocation(line: 17, column: 29, scope: !351)
!996 = !DILocation(line: 19, column: 12, scope: !351)
!997 = !DILocation(line: 19, column: 17, scope: !351)
!998 = !DILocation(line: 19, column: 19, scope: !351)
!999 = !DILocation(line: 19, column: 18, scope: !351)
!1000 = !DILocation(line: 19, column: 22, scope: !351)
!1001 = !DILocation(line: 19, column: 24, scope: !351)
!1002 = !DILocation(line: 19, column: 23, scope: !351)
!1003 = !DILocation(line: 19, column: 27, scope: !351)
!1004 = !DILocation(line: 19, column: 29, scope: !351)
!1005 = !DILocation(line: 19, column: 28, scope: !351)
!1006 = !DILocation(line: 19, column: 32, scope: !351)
!1007 = !DILocation(line: 19, column: 34, scope: !351)
!1008 = !DILocation(line: 19, column: 33, scope: !351)
!1009 = !DILocation(line: 19, column: 37, scope: !351)
!1010 = !DILocation(line: 19, column: 39, scope: !351)
!1011 = !DILocation(line: 19, column: 38, scope: !351)
!1012 = !DILocation(line: 19, column: 5, scope: !351)
!1013 = !{!1014, !1014, i64 0}
!1014 = !{!"double", !985, i64 0}
!1015 = !DILocation(line: 23, column: 33, scope: !365)
!1016 = !DILocation(line: 23, column: 43, scope: !365)
!1017 = !DILocation(line: 23, column: 53, scope: !365)
!1018 = !DILocation(line: 23, column: 63, scope: !365)
!1019 = !DILocation(line: 23, column: 73, scope: !365)
!1020 = !DILocation(line: 24, column: 35, scope: !365)
!1021 = !DILocation(line: 26, column: 12, scope: !365)
!1022 = !DILocation(line: 26, column: 17, scope: !365)
!1023 = !DILocation(line: 26, column: 19, scope: !365)
!1024 = !DILocation(line: 26, column: 18, scope: !365)
!1025 = !DILocation(line: 26, column: 22, scope: !365)
!1026 = !DILocation(line: 26, column: 24, scope: !365)
!1027 = !DILocation(line: 26, column: 23, scope: !365)
!1028 = !DILocation(line: 26, column: 27, scope: !365)
!1029 = !DILocation(line: 26, column: 29, scope: !365)
!1030 = !DILocation(line: 26, column: 28, scope: !365)
!1031 = !DILocation(line: 26, column: 32, scope: !365)
!1032 = !DILocation(line: 26, column: 34, scope: !365)
!1033 = !DILocation(line: 26, column: 33, scope: !365)
!1034 = !DILocation(line: 26, column: 37, scope: !365)
!1035 = !DILocation(line: 26, column: 39, scope: !365)
!1036 = !DILocation(line: 26, column: 38, scope: !365)
!1037 = !DILocation(line: 26, column: 5, scope: !365)
!1038 = !DILocation(line: 29, column: 25, scope: !378)
!1039 = !DILocation(line: 32, column: 12, scope: !378)
!1040 = !DILocation(line: 33, column: 12, scope: !378)
!1041 = !DILocation(line: 34, column: 12, scope: !378)
!1042 = !DILocation(line: 35, column: 12, scope: !378)
!1043 = !DILocation(line: 31, column: 5, scope: !378)
!1044 = !DILocation(line: 36, column: 1, scope: !378)
!1045 = !DILocation(line: 38, column: 33, scope: !384)
!1046 = !DILocation(line: 38, column: 43, scope: !384)
!1047 = !DILocation(line: 40, column: 5, scope: !384)
!1048 = !DILocation(line: 40, column: 17, scope: !384)
!1049 = !DILocation(line: 40, column: 40, scope: !384)
!1050 = !DILocation(line: 40, column: 44, scope: !384)
!1051 = !DILocation(line: 40, column: 42, scope: !384)
!1052 = !DILocation(line: 40, column: 26, scope: !384)
!1053 = !{!1054, !1054, i64 0}
!1054 = !{!"long double", !985, i64 0}
!1055 = !DILocation(line: 41, column: 5, scope: !384)
!1056 = !DILocation(line: 42, column: 38, scope: !384)
!1057 = !DILocation(line: 42, column: 41, scope: !384)
!1058 = !DILocation(line: 42, column: 5, scope: !384)
!1059 = !DILocation(line: 43, column: 12, scope: !384)
!1060 = !DILocation(line: 44, column: 1, scope: !384)
!1061 = !DILocation(line: 43, column: 5, scope: !384)
!1062 = !DILocation(line: 46, column: 38, scope: !391)
!1063 = !DILocation(line: 46, column: 53, scope: !391)
!1064 = !DILocation(line: 48, column: 5, scope: !391)
!1065 = !DILocation(line: 48, column: 17, scope: !391)
!1066 = !DILocation(line: 48, column: 26, scope: !391)
!1067 = !DILocation(line: 48, column: 30, scope: !391)
!1068 = !DILocation(line: 48, column: 28, scope: !391)
!1069 = !DILocation(line: 49, column: 5, scope: !391)
!1070 = !DILocation(line: 50, column: 40, scope: !391)
!1071 = !DILocation(line: 50, column: 43, scope: !391)
!1072 = !DILocation(line: 50, column: 5, scope: !391)
!1073 = !DILocation(line: 51, column: 12, scope: !391)
!1074 = !DILocation(line: 52, column: 1, scope: !391)
!1075 = !DILocation(line: 51, column: 5, scope: !391)
!1076 = !DILocation(line: 54, column: 22, scope: !398)
!1077 = !DILocation(line: 54, column: 29, scope: !398)
!1078 = !DILocation(line: 56, column: 5, scope: !398)
!1079 = !DILocation(line: 56, column: 9, scope: !398)
!1080 = !DILocation(line: 56, column: 18, scope: !398)
!1081 = !DILocation(line: 56, column: 22, scope: !398)
!1082 = !DILocation(line: 56, column: 20, scope: !398)
!1083 = !DILocation(line: 57, column: 5, scope: !398)
!1084 = !DILocation(line: 58, column: 12, scope: !398)
!1085 = !DILocation(line: 59, column: 1, scope: !398)
!1086 = !DILocation(line: 58, column: 5, scope: !398)
!1087 = !DILocation(line: 61, column: 20, scope: !405)
!1088 = !DILocation(line: 63, column: 5, scope: !405)
!1089 = !DILocation(line: 63, column: 9, scope: !405)
!1090 = !DILocation(line: 64, column: 5, scope: !405)
!1091 = !DILocation(line: 64, column: 13, scope: !405)
!1092 = !DILocation(line: 65, column: 24, scope: !405)
!1093 = !DILocation(line: 65, column: 5, scope: !405)
!1094 = !DILocation(line: 66, column: 22, scope: !405)
!1095 = !DILocation(line: 66, column: 27, scope: !405)
!1096 = !DILocation(line: 66, column: 14, scope: !405)
!1097 = !DILocation(line: 66, column: 12, scope: !405)
!1098 = !DILocation(line: 67, column: 22, scope: !405)
!1099 = !DILocation(line: 67, column: 5, scope: !405)
!1100 = !DILocation(line: 68, column: 12, scope: !405)
!1101 = !DILocation(line: 69, column: 1, scope: !405)
!1102 = !DILocation(line: 68, column: 5, scope: !405)
!1103 = !DILocation(line: 36, column: 33, scope: !927)
!1104 = !DILocation(line: 36, column: 55, scope: !927)
!1105 = !DILocation(line: 38, column: 20, scope: !927)
!1106 = !DILocation(line: 38, column: 28, scope: !927)
!1107 = !DILocation(line: 38, column: 35, scope: !927)
!1108 = !DILocation(line: 38, column: 10, scope: !927)
!1109 = !DILocation(line: 38, column: 3, scope: !927)
!1110 = !DILocation(line: 71, column: 23, scope: !424)
!1111 = !DILocation(line: 71, column: 42, scope: !424)
!1112 = !DILocation(line: 73, column: 19, scope: !424)
!1113 = !DILocation(line: 73, column: 26, scope: !424)
!1114 = !DILocation(line: 73, column: 12, scope: !424)
!1115 = !DILocation(line: 73, column: 5, scope: !424)
!1116 = !DILocation(line: 76, column: 29, scope: !430)
!1117 = !DILocation(line: 76, column: 36, scope: !430)
!1118 = !DILocation(line: 78, column: 147, scope: !430)
!1119 = !DILocation(line: 78, column: 150, scope: !430)
!1120 = !DILocation(line: 78, column: 129, scope: !430)
!1121 = !DILocation(line: 78, column: 5, scope: !430)
!1122 = !DILocation(line: 82, column: 23, scope: !436)
!1123 = !DILocation(line: 84, column: 17, scope: !436)
!1124 = !DILocation(line: 84, column: 12, scope: !436)
!1125 = !DILocation(line: 84, column: 5, scope: !436)
!1126 = !DILocation(line: 87, column: 21, scope: !441)
!1127 = !{!1128, !1128, i64 0}
!1128 = !{!"long", !985, i64 0}
!1129 = !DILocation(line: 87, column: 34, scope: !441)
!1130 = !DILocation(line: 87, column: 46, scope: !441)
!1131 = !DILocation(line: 87, column: 58, scope: !441)
!1132 = !DILocation(line: 89, column: 11, scope: !441)
!1133 = !DILocation(line: 89, column: 17, scope: !441)
!1134 = !DILocation(line: 89, column: 22, scope: !441)
!1135 = !DILocation(line: 89, column: 29, scope: !441)
!1136 = !DILocation(line: 89, column: 5, scope: !441)
!1137 = !DILocation(line: 90, column: 1, scope: !441)
!1138 = !DILocation(line: 92, column: 25, scope: !454)
!1139 = !DILocation(line: 94, column: 12, scope: !454)
!1140 = !DILocation(line: 94, column: 5, scope: !454)
!1141 = !DILocation(line: 97, column: 22, scope: !459)
!1142 = !DILocation(line: 97, column: 29, scope: !459)
!1143 = !DILocation(line: 97, column: 37, scope: !459)
!1144 = !DILocation(line: 99, column: 16, scope: !459)
!1145 = !DILocation(line: 99, column: 20, scope: !459)
!1146 = !DILocation(line: 99, column: 18, scope: !459)
!1147 = !DILocation(line: 99, column: 6, scope: !459)
!1148 = !DILocation(line: 99, column: 14, scope: !459)
!1149 = !DILocation(line: 100, column: 1, scope: !459)
!1150 = !{!985, !985, i64 0}
!1151 = !DILocation(line: 102, column: 36, scope: !466)
!1152 = !{!1153, !1153, i64 0}
!1153 = !{!"short", !985, i64 0}
!1154 = !DILocation(line: 102, column: 45, scope: !466)
!1155 = !DILocation(line: 102, column: 52, scope: !466)
!1156 = !DILocation(line: 102, column: 60, scope: !466)
!1157 = !{!1158, !1158, i64 0}
!1158 = !{!"float", !985, i64 0}
!1159 = !DILocation(line: 102, column: 69, scope: !466)
!1160 = !DILocation(line: 102, column: 79, scope: !466)
!1161 = !DILocation(line: 107, column: 18, scope: !466)
!1162 = !DILocation(line: 107, column: 22, scope: !466)
!1163 = !DILocation(line: 107, column: 20, scope: !466)
!1164 = !DILocation(line: 107, column: 26, scope: !466)
!1165 = !DILocation(line: 107, column: 24, scope: !466)
!1166 = !DILocation(line: 107, column: 30, scope: !466)
!1167 = !DILocation(line: 107, column: 28, scope: !466)
!1168 = !DILocation(line: 107, column: 34, scope: !466)
!1169 = !DILocation(line: 107, column: 32, scope: !466)
!1170 = !DILocation(line: 107, column: 38, scope: !466)
!1171 = !DILocation(line: 107, column: 36, scope: !466)
!1172 = !DILocation(line: 107, column: 12, scope: !466)
!1173 = !DILocation(line: 107, column: 5, scope: !466)
!1174 = !DILocation(line: 110, column: 38, scope: !477)
!1175 = !DILocation(line: 110, column: 47, scope: !477)
!1176 = !DILocation(line: 110, column: 54, scope: !477)
!1177 = !DILocation(line: 110, column: 62, scope: !477)
!1178 = !DILocation(line: 110, column: 71, scope: !477)
!1179 = !DILocation(line: 110, column: 81, scope: !477)
!1180 = !DILocation(line: 115, column: 20, scope: !477)
!1181 = !DILocation(line: 115, column: 24, scope: !477)
!1182 = !DILocation(line: 115, column: 22, scope: !477)
!1183 = !DILocation(line: 115, column: 28, scope: !477)
!1184 = !DILocation(line: 115, column: 26, scope: !477)
!1185 = !DILocation(line: 115, column: 32, scope: !477)
!1186 = !DILocation(line: 115, column: 30, scope: !477)
!1187 = !DILocation(line: 115, column: 36, scope: !477)
!1188 = !DILocation(line: 115, column: 34, scope: !477)
!1189 = !DILocation(line: 115, column: 40, scope: !477)
!1190 = !DILocation(line: 115, column: 38, scope: !477)
!1191 = !DILocation(line: 115, column: 12, scope: !477)
!1192 = !DILocation(line: 115, column: 5, scope: !477)
!1193 = !DILocation(line: 118, column: 39, scope: !487)
!1194 = !DILocation(line: 118, column: 48, scope: !487)
!1195 = !DILocation(line: 118, column: 55, scope: !487)
!1196 = !DILocation(line: 118, column: 63, scope: !487)
!1197 = !DILocation(line: 118, column: 72, scope: !487)
!1198 = !DILocation(line: 118, column: 82, scope: !487)
!1199 = !DILocation(line: 123, column: 21, scope: !487)
!1200 = !DILocation(line: 123, column: 25, scope: !487)
!1201 = !DILocation(line: 123, column: 23, scope: !487)
!1202 = !DILocation(line: 123, column: 29, scope: !487)
!1203 = !DILocation(line: 123, column: 27, scope: !487)
!1204 = !DILocation(line: 123, column: 33, scope: !487)
!1205 = !DILocation(line: 123, column: 31, scope: !487)
!1206 = !DILocation(line: 123, column: 37, scope: !487)
!1207 = !DILocation(line: 123, column: 35, scope: !487)
!1208 = !DILocation(line: 123, column: 41, scope: !487)
!1209 = !DILocation(line: 123, column: 39, scope: !487)
!1210 = !DILocation(line: 123, column: 5, scope: !487)
!1211 = !DILocation(line: 126, column: 44, scope: !497)
!1212 = !DILocation(line: 126, column: 53, scope: !497)
!1213 = !DILocation(line: 126, column: 60, scope: !497)
!1214 = !DILocation(line: 126, column: 68, scope: !497)
!1215 = !DILocation(line: 126, column: 77, scope: !497)
!1216 = !DILocation(line: 126, column: 92, scope: !497)
!1217 = !DILocation(line: 131, column: 26, scope: !497)
!1218 = !DILocation(line: 131, column: 30, scope: !497)
!1219 = !DILocation(line: 131, column: 28, scope: !497)
!1220 = !DILocation(line: 131, column: 34, scope: !497)
!1221 = !DILocation(line: 131, column: 32, scope: !497)
!1222 = !DILocation(line: 131, column: 38, scope: !497)
!1223 = !DILocation(line: 131, column: 36, scope: !497)
!1224 = !DILocation(line: 131, column: 42, scope: !497)
!1225 = !DILocation(line: 131, column: 40, scope: !497)
!1226 = !DILocation(line: 131, column: 46, scope: !497)
!1227 = !DILocation(line: 131, column: 44, scope: !497)
!1228 = !DILocation(line: 131, column: 5, scope: !497)
!1229 = !DILocation(line: 134, column: 28, scope: !507)
!1230 = !DILocation(line: 136, column: 20, scope: !507)
!1231 = !DILocation(line: 136, column: 5, scope: !507)
!1232 = !DILocation(line: 139, column: 29, scope: !512)
!1233 = !DILocation(line: 139, column: 43, scope: !512)
!1234 = !DILocation(line: 141, column: 19, scope: !512)
!1235 = !DILocation(line: 141, column: 18, scope: !512)
!1236 = !DILocation(line: 141, column: 25, scope: !512)
!1237 = !DILocation(line: 141, column: 12, scope: !512)
!1238 = !DILocation(line: 141, column: 5, scope: !512)
!1239 = !DILocation(line: 146, column: 5, scope: !519)
!1240 = !DILocation(line: 149, column: 24, scope: !522)
!1241 = !DILocation(line: 151, column: 5, scope: !522)
!1242 = !DILocation(line: 151, column: 11, scope: !522)
!1243 = !DILocation(line: 151, column: 39, scope: !522)
!1244 = !DILocation(line: 151, column: 32, scope: !522)
!1245 = !DILocation(line: 151, column: 43, scope: !522)
!1246 = !DILocation(line: 151, column: 25, scope: !522)
!1247 = !DILocation(line: 152, column: 10, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !522, file: !352, line: 152, column: 9)
!1249 = !DILocation(line: 152, column: 9, scope: !522)
!1250 = !DILocation(line: 153, column: 9, scope: !1248)
!1251 = !DILocation(line: 154, column: 12, scope: !522)
!1252 = !DILocation(line: 154, column: 17, scope: !522)
!1253 = !DILocation(line: 154, column: 5, scope: !522)
!1254 = !DILocation(line: 155, column: 12, scope: !522)
!1255 = !DILocation(line: 155, column: 5, scope: !522)
!1256 = !DILocation(line: 156, column: 1, scope: !522)
!1257 = !DILocation(line: 158, column: 20, scope: !528)
!1258 = !DILocation(line: 160, column: 10, scope: !528)
!1259 = !DILocation(line: 160, column: 5, scope: !528)
!1260 = !DILocation(line: 161, column: 1, scope: !528)
!1261 = !DILocation(line: 164, column: 30, scope: !531)
!1262 = !DILocation(line: 166, column: 5, scope: !531)
!1263 = !DILocation(line: 166, column: 12, scope: !531)
!1264 = !DILocation(line: 166, column: 25, scope: !531)
!1265 = !DILocation(line: 166, column: 18, scope: !531)
!1266 = !DILocation(line: 167, column: 5, scope: !531)
!1267 = !DILocation(line: 167, column: 14, scope: !531)
!1268 = !DILocation(line: 167, column: 39, scope: !531)
!1269 = !DILocation(line: 167, column: 43, scope: !531)
!1270 = !DILocation(line: 167, column: 48, scope: !531)
!1271 = !DILocation(line: 167, column: 31, scope: !531)
!1272 = !DILocation(line: 167, column: 20, scope: !531)
!1273 = !DILocation(line: 168, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !531, file: !352, line: 168, column: 9)
!1275 = !DILocation(line: 168, column: 13, scope: !1274)
!1276 = !DILocation(line: 168, column: 9, scope: !531)
!1277 = !DILocation(line: 169, column: 9, scope: !1274)
!1278 = !DILocation(line: 170, column: 12, scope: !531)
!1279 = !DILocation(line: 170, column: 5, scope: !531)
!1280 = !DILocation(line: 170, column: 17, scope: !531)
!1281 = !DILocation(line: 170, column: 23, scope: !531)
!1282 = !DILocation(line: 170, column: 26, scope: !531)
!1283 = !DILocation(line: 170, column: 30, scope: !531)
!1284 = !DILocation(line: 171, column: 12, scope: !531)
!1285 = !DILocation(line: 171, column: 5, scope: !531)
!1286 = !DILocation(line: 172, column: 1, scope: !531)
!1287 = !DILocation(line: 174, column: 27, scope: !538)
!1288 = !DILocation(line: 176, column: 19, scope: !538)
!1289 = !DILocation(line: 176, column: 12, scope: !538)
!1290 = !DILocation(line: 176, column: 5, scope: !538)
!1291 = !DILocation(line: 191, column: 32, scope: !543)
!1292 = !DILocation(line: 193, column: 5, scope: !543)
!1293 = !DILocation(line: 193, column: 9, scope: !543)
!1294 = !{!1295, !994, i64 0}
!1295 = !{!"", !994, i64 0, !994, i64 8}
!1296 = !DILocation(line: 194, column: 5, scope: !543)
!1297 = !DILocation(line: 194, column: 9, scope: !543)
!1298 = !{!1295, !994, i64 8}
!1299 = !DILocation(line: 195, column: 5, scope: !543)
!1300 = !DILocation(line: 198, column: 34, scope: !555)
!1301 = !DILocation(line: 200, column: 13, scope: !555)
!1302 = !DILocation(line: 200, column: 12, scope: !555)
!1303 = !DILocation(line: 200, column: 5, scope: !555)
!1304 = !DILocation(line: 211, column: 43, scope: !560)
!1305 = !DILocation(line: 213, column: 5, scope: !560)
!1306 = !DILocation(line: 213, column: 9, scope: !560)
!1307 = !DILocation(line: 215, column: 14, scope: !560)
!1308 = !DILocation(line: 215, column: 20, scope: !560)
!1309 = !DILocation(line: 215, column: 12, scope: !560)
!1310 = !DILocation(line: 216, column: 1, scope: !560)
!1311 = !DILocation(line: 215, column: 5, scope: !560)
!1312 = !DILocation(line: 219, column: 43, scope: !570)
!1313 = !DILocation(line: 219, column: 52, scope: !570)
!1314 = !DILocation(line: 219, column: 59, scope: !570)
!1315 = !DILocation(line: 219, column: 67, scope: !570)
!1316 = !DILocation(line: 219, column: 76, scope: !570)
!1317 = !DILocation(line: 220, column: 45, scope: !570)
!1318 = !{!1319, !1319, i64 0}
!1319 = !{!"long long", !985, i64 0}
!1320 = !DILocation(line: 220, column: 58, scope: !570)
!1321 = !DILocation(line: 222, column: 24, scope: !570)
!1322 = !DILocation(line: 222, column: 28, scope: !570)
!1323 = !DILocation(line: 222, column: 26, scope: !570)
!1324 = !DILocation(line: 222, column: 32, scope: !570)
!1325 = !DILocation(line: 222, column: 30, scope: !570)
!1326 = !DILocation(line: 222, column: 36, scope: !570)
!1327 = !DILocation(line: 222, column: 34, scope: !570)
!1328 = !DILocation(line: 222, column: 40, scope: !570)
!1329 = !DILocation(line: 222, column: 38, scope: !570)
!1330 = !DILocation(line: 222, column: 44, scope: !570)
!1331 = !DILocation(line: 222, column: 42, scope: !570)
!1332 = !DILocation(line: 222, column: 48, scope: !570)
!1333 = !DILocation(line: 222, column: 46, scope: !570)
!1334 = !DILocation(line: 222, column: 12, scope: !570)
!1335 = !DILocation(line: 222, column: 5, scope: !570)
!1336 = !DILocation(line: 225, column: 42, scope: !581)
!1337 = !DILocation(line: 225, column: 51, scope: !581)
!1338 = !DILocation(line: 225, column: 58, scope: !581)
!1339 = !DILocation(line: 225, column: 66, scope: !581)
!1340 = !DILocation(line: 225, column: 75, scope: !581)
!1341 = !DILocation(line: 225, column: 85, scope: !581)
!1342 = !DILocation(line: 227, column: 24, scope: !581)
!1343 = !DILocation(line: 227, column: 28, scope: !581)
!1344 = !DILocation(line: 227, column: 26, scope: !581)
!1345 = !DILocation(line: 227, column: 32, scope: !581)
!1346 = !DILocation(line: 227, column: 30, scope: !581)
!1347 = !DILocation(line: 227, column: 36, scope: !581)
!1348 = !DILocation(line: 227, column: 34, scope: !581)
!1349 = !DILocation(line: 227, column: 40, scope: !581)
!1350 = !DILocation(line: 227, column: 38, scope: !581)
!1351 = !DILocation(line: 227, column: 44, scope: !581)
!1352 = !DILocation(line: 227, column: 42, scope: !581)
!1353 = !DILocation(line: 227, column: 12, scope: !581)
!1354 = !DILocation(line: 227, column: 5, scope: !581)
!1355 = !DILocation(line: 230, column: 33, scope: !591)
!1356 = !DILocation(line: 230, column: 46, scope: !591)
!1357 = !DILocation(line: 232, column: 5, scope: !591)
!1358 = !DILocation(line: 232, column: 9, scope: !591)
!1359 = !DILocation(line: 233, column: 5, scope: !591)
!1360 = !DILocation(line: 233, column: 12, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !352, discriminator: 2)
!1362 = !DILexicalBlockFile(scope: !591, file: !352, discriminator: 1)
!1363 = !DILocation(line: 233, column: 18, scope: !591)
!1364 = !DILocation(line: 234, column: 16, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !591, file: !352, line: 233, column: 24)
!1366 = !DILocation(line: 234, column: 21, scope: !1365)
!1367 = !DILocation(line: 234, column: 13, scope: !1365)
!1368 = !DILocation(line: 235, column: 15, scope: !1365)
!1369 = !DILocation(line: 237, column: 12, scope: !591)
!1370 = !DILocation(line: 238, column: 1, scope: !591)
!1371 = !DILocation(line: 237, column: 5, scope: !591)
!1372 = !DILocation(line: 240, column: 45, scope: !601)
!1373 = !DILocation(line: 241, column: 58, scope: !601)
!1374 = !DILocation(line: 243, column: 5, scope: !601)
!1375 = !DILocation(line: 243, column: 15, scope: !601)
!1376 = !DILocation(line: 245, column: 5, scope: !601)
!1377 = !DILocation(line: 245, column: 12, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1379, file: !352, discriminator: 2)
!1379 = !DILexicalBlockFile(scope: !601, file: !352, discriminator: 1)
!1380 = !DILocation(line: 245, column: 18, scope: !601)
!1381 = !DILocation(line: 246, column: 16, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !601, file: !352, line: 245, column: 24)
!1383 = !DILocation(line: 246, column: 21, scope: !1382)
!1384 = !DILocation(line: 246, column: 13, scope: !1382)
!1385 = !DILocation(line: 247, column: 15, scope: !1382)
!1386 = !DILocation(line: 249, column: 12, scope: !601)
!1387 = !DILocation(line: 250, column: 1, scope: !601)
!1388 = !DILocation(line: 249, column: 5, scope: !601)
!1389 = !DILocation(line: 274, column: 26, scope: !611)
!1390 = !DILocation(line: 276, column: 6, scope: !611)
!1391 = !DILocation(line: 276, column: 11, scope: !611)
!1392 = !DILocation(line: 277, column: 5, scope: !611)
!1393 = !DILocation(line: 285, column: 27, scope: !630)
!1394 = !DILocation(line: 285, column: 38, scope: !630)
!1395 = !DILocation(line: 287, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !630, file: !352, line: 287, column: 9)
!1397 = !DILocation(line: 287, column: 9, scope: !630)
!1398 = !DILocation(line: 288, column: 22, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !352, line: 287, column: 15)
!1400 = !{!1401, !984, i64 0}
!1401 = !{!"tagpoint", !984, i64 0, !984, i64 4}
!1402 = !DILocation(line: 288, column: 9, scope: !1399)
!1403 = !DILocation(line: 288, column: 15, scope: !1399)
!1404 = !DILocation(line: 288, column: 17, scope: !1399)
!1405 = !DILocation(line: 289, column: 22, scope: !1399)
!1406 = !{!1401, !984, i64 4}
!1407 = !DILocation(line: 289, column: 9, scope: !1399)
!1408 = !DILocation(line: 289, column: 15, scope: !1399)
!1409 = !DILocation(line: 289, column: 17, scope: !1399)
!1410 = !DILocation(line: 290, column: 5, scope: !1399)
!1411 = !DILocation(line: 291, column: 15, scope: !630)
!1412 = !DILocation(line: 291, column: 22, scope: !630)
!1413 = !DILocation(line: 291, column: 17, scope: !630)
!1414 = !DILocation(line: 291, column: 5, scope: !630)
!1415 = !DILocation(line: 298, column: 12, scope: !642)
!1416 = !DILocation(line: 298, column: 5, scope: !642)
!1417 = !DILocation(line: 302, column: 18, scope: !645)
!1418 = !DILocation(line: 302, column: 28, scope: !645)
!1419 = !DILocation(line: 302, column: 40, scope: !645)
!1420 = !DILocation(line: 302, column: 57, scope: !645)
!1421 = !DILocation(line: 304, column: 5, scope: !645)
!1422 = !DILocation(line: 304, column: 12, scope: !645)
!1423 = !DILocation(line: 304, column: 15, scope: !645)
!1424 = !DILocation(line: 304, column: 24, scope: !645)
!1425 = !DILocation(line: 304, column: 28, scope: !645)
!1426 = !DILocation(line: 304, column: 30, scope: !645)
!1427 = !DILocation(line: 304, column: 29, scope: !645)
!1428 = !DILocation(line: 304, column: 41, scope: !645)
!1429 = !DILocation(line: 304, column: 33, scope: !645)
!1430 = !DILocation(line: 304, column: 32, scope: !645)
!1431 = !DILocation(line: 305, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !645, file: !352, line: 305, column: 5)
!1433 = !DILocation(line: 305, column: 17, scope: !1432)
!1434 = !DILocation(line: 305, column: 16, scope: !1432)
!1435 = !DILocation(line: 305, column: 12, scope: !1432)
!1436 = !DILocation(line: 305, column: 10, scope: !1432)
!1437 = !DILocation(line: 305, column: 9, scope: !1432)
!1438 = !DILocation(line: 305, column: 22, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1440, file: !352, discriminator: 2)
!1440 = !DILexicalBlockFile(scope: !1441, file: !352, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1432, file: !352, line: 305, column: 5)
!1442 = !DILocation(line: 305, column: 24, scope: !1441)
!1443 = !DILocation(line: 305, column: 23, scope: !1441)
!1444 = !DILocation(line: 305, column: 28, scope: !1441)
!1445 = !DILocation(line: 305, column: 30, scope: !1441)
!1446 = !DILocation(line: 305, column: 29, scope: !1441)
!1447 = !DILocation(line: 305, column: 26, scope: !1441)
!1448 = !DILocation(line: 305, column: 32, scope: !1441)
!1449 = !DILocation(line: 305, column: 5, scope: !1432)
!1450 = !DILocation(line: 306, column: 16, scope: !1441)
!1451 = !DILocation(line: 306, column: 18, scope: !1441)
!1452 = !DILocation(line: 306, column: 13, scope: !1441)
!1453 = !DILocation(line: 306, column: 9, scope: !1441)
!1454 = !DILocation(line: 305, column: 41, scope: !1441)
!1455 = !DILocation(line: 305, column: 39, scope: !1441)
!1456 = !DILocation(line: 305, column: 5, scope: !1441)
!1457 = !DILocation(line: 307, column: 12, scope: !645)
!1458 = !DILocation(line: 307, column: 24, scope: !645)
!1459 = !DILocation(line: 307, column: 16, scope: !645)
!1460 = !DILocation(line: 307, column: 15, scope: !645)
!1461 = !DILocation(line: 308, column: 1, scope: !645)
!1462 = !DILocation(line: 307, column: 5, scope: !645)
!1463 = !DILocation(line: 314, column: 31, scope: !936)
!1464 = !DILocation(line: 314, column: 52, scope: !936)
!1465 = !DILocation(line: 316, column: 5, scope: !936)
!1466 = !DILocation(line: 316, column: 11, scope: !936)
!1467 = !DILocation(line: 318, column: 37, scope: !936)
!1468 = !DILocation(line: 318, column: 45, scope: !936)
!1469 = !DILocation(line: 318, column: 5, scope: !936)
!1470 = !DILocation(line: 319, column: 5, scope: !936)
!1471 = !DILocation(line: 320, column: 11, scope: !936)
!1472 = !DILocation(line: 320, column: 9, scope: !936)
!1473 = !DILocation(line: 321, column: 5, scope: !936)
!1474 = !DILocation(line: 321, column: 11, scope: !936)
!1475 = !DILocation(line: 322, column: 40, scope: !936)
!1476 = !DILocation(line: 322, column: 5, scope: !936)
!1477 = !DILocation(line: 323, column: 1, scope: !936)
!1478 = !DILocation(line: 331, column: 5, scope: !657)
!1479 = !DILocation(line: 345, column: 32, scope: !671)
!1480 = !DILocation(line: 345, column: 48, scope: !671)
!1481 = !DILocation(line: 347, column: 5, scope: !671)
!1482 = !DILocation(line: 347, column: 11, scope: !671)
!1483 = !DILocation(line: 348, column: 5, scope: !671)
!1484 = !DILocation(line: 348, column: 9, scope: !671)
!1485 = !DILocation(line: 349, column: 27, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !671, file: !352, line: 349, column: 9)
!1487 = !DILocation(line: 349, column: 10, scope: !1486)
!1488 = !DILocation(line: 349, column: 9, scope: !671)
!1489 = !DILocation(line: 350, column: 9, scope: !1486)
!1490 = !DILocation(line: 351, column: 51, scope: !671)
!1491 = !{!1492, !1128, i64 0}
!1492 = !{!"_object", !1128, i64 0, !994, i64 8}
!1493 = !DILocation(line: 352, column: 5, scope: !671)
!1494 = !DILocation(line: 353, column: 1, scope: !671)
!1495 = !DILocation(line: 355, column: 24, scope: !677)
!1496 = !DILocation(line: 355, column: 31, scope: !677)
!1497 = !DILocation(line: 357, column: 1, scope: !677)
!1498 = !DILocation(line: 359, column: 29, scope: !683)
!1499 = !DILocation(line: 359, column: 45, scope: !683)
!1500 = !DILocation(line: 361, column: 51, scope: !683)
!1501 = !DILocation(line: 362, column: 5, scope: !683)
!1502 = !DILocation(line: 367, column: 1, scope: !687)
!1503 = !DILocation(line: 377, column: 33, scope: !690)
!1504 = !DILocation(line: 377, column: 44, scope: !690)
!1505 = !DILocation(line: 377, column: 54, scope: !690)
!1506 = !DILocation(line: 379, column: 13, scope: !690)
!1507 = !DILocation(line: 379, column: 5, scope: !690)
!1508 = !DILocation(line: 380, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !690, file: !352, line: 379, column: 19)
!1510 = !DILocation(line: 380, column: 15, scope: !1509)
!1511 = !DILocation(line: 380, column: 21, scope: !1509)
!1512 = !DILocation(line: 380, column: 23, scope: !1509)
!1513 = !DILocation(line: 380, column: 32, scope: !1509)
!1514 = !DILocation(line: 381, column: 25, scope: !1509)
!1515 = !DILocation(line: 381, column: 15, scope: !1509)
!1516 = !DILocation(line: 381, column: 21, scope: !1509)
!1517 = !DILocation(line: 381, column: 23, scope: !1509)
!1518 = !DILocation(line: 381, column: 32, scope: !1509)
!1519 = !DILocation(line: 382, column: 25, scope: !1509)
!1520 = !DILocation(line: 382, column: 15, scope: !1509)
!1521 = !DILocation(line: 382, column: 21, scope: !1509)
!1522 = !DILocation(line: 382, column: 23, scope: !1509)
!1523 = !DILocation(line: 382, column: 32, scope: !1509)
!1524 = !DILocation(line: 383, column: 25, scope: !1509)
!1525 = !DILocation(line: 383, column: 15, scope: !1509)
!1526 = !DILocation(line: 383, column: 21, scope: !1509)
!1527 = !DILocation(line: 383, column: 23, scope: !1509)
!1528 = !DILocation(line: 383, column: 32, scope: !1509)
!1529 = !DILocation(line: 384, column: 25, scope: !1509)
!1530 = !DILocation(line: 384, column: 15, scope: !1509)
!1531 = !DILocation(line: 384, column: 21, scope: !1509)
!1532 = !DILocation(line: 384, column: 23, scope: !1509)
!1533 = !DILocation(line: 384, column: 32, scope: !1509)
!1534 = !DILocation(line: 385, column: 25, scope: !1509)
!1535 = !DILocation(line: 385, column: 15, scope: !1509)
!1536 = !DILocation(line: 385, column: 21, scope: !1509)
!1537 = !DILocation(line: 385, column: 23, scope: !1509)
!1538 = !DILocation(line: 385, column: 32, scope: !1509)
!1539 = !DILocation(line: 386, column: 25, scope: !1509)
!1540 = !DILocation(line: 386, column: 15, scope: !1509)
!1541 = !DILocation(line: 386, column: 21, scope: !1509)
!1542 = !DILocation(line: 386, column: 23, scope: !1509)
!1543 = !DILocation(line: 386, column: 32, scope: !1509)
!1544 = !DILocation(line: 387, column: 25, scope: !1509)
!1545 = !DILocation(line: 387, column: 15, scope: !1509)
!1546 = !DILocation(line: 387, column: 21, scope: !1509)
!1547 = !DILocation(line: 387, column: 23, scope: !1509)
!1548 = !DILocation(line: 387, column: 32, scope: !1509)
!1549 = !DILocation(line: 388, column: 25, scope: !1509)
!1550 = !DILocation(line: 388, column: 15, scope: !1509)
!1551 = !DILocation(line: 388, column: 21, scope: !1509)
!1552 = !DILocation(line: 388, column: 23, scope: !1509)
!1553 = !DILocation(line: 388, column: 32, scope: !1509)
!1554 = !DILocation(line: 390, column: 25, scope: !1509)
!1555 = !DILocation(line: 390, column: 15, scope: !1509)
!1556 = !DILocation(line: 390, column: 21, scope: !1509)
!1557 = !DILocation(line: 390, column: 23, scope: !1509)
!1558 = !DILocation(line: 390, column: 32, scope: !1509)
!1559 = !DILocation(line: 391, column: 25, scope: !1509)
!1560 = !DILocation(line: 391, column: 15, scope: !1509)
!1561 = !DILocation(line: 391, column: 21, scope: !1509)
!1562 = !DILocation(line: 391, column: 23, scope: !1509)
!1563 = !DILocation(line: 391, column: 32, scope: !1509)
!1564 = !DILocation(line: 392, column: 25, scope: !1509)
!1565 = !DILocation(line: 392, column: 15, scope: !1509)
!1566 = !DILocation(line: 392, column: 21, scope: !1509)
!1567 = !DILocation(line: 392, column: 23, scope: !1509)
!1568 = !DILocation(line: 392, column: 32, scope: !1509)
!1569 = !DILocation(line: 393, column: 25, scope: !1509)
!1570 = !DILocation(line: 393, column: 15, scope: !1509)
!1571 = !DILocation(line: 393, column: 21, scope: !1509)
!1572 = !DILocation(line: 393, column: 23, scope: !1509)
!1573 = !DILocation(line: 393, column: 32, scope: !1509)
!1574 = !DILocation(line: 394, column: 25, scope: !1509)
!1575 = !DILocation(line: 394, column: 15, scope: !1509)
!1576 = !DILocation(line: 394, column: 21, scope: !1509)
!1577 = !DILocation(line: 394, column: 23, scope: !1509)
!1578 = !DILocation(line: 394, column: 32, scope: !1509)
!1579 = !DILocation(line: 395, column: 25, scope: !1509)
!1580 = !DILocation(line: 395, column: 15, scope: !1509)
!1581 = !DILocation(line: 395, column: 21, scope: !1509)
!1582 = !DILocation(line: 395, column: 23, scope: !1509)
!1583 = !DILocation(line: 395, column: 32, scope: !1509)
!1584 = !DILocation(line: 396, column: 25, scope: !1509)
!1585 = !DILocation(line: 396, column: 15, scope: !1509)
!1586 = !DILocation(line: 396, column: 21, scope: !1509)
!1587 = !DILocation(line: 396, column: 23, scope: !1509)
!1588 = !DILocation(line: 396, column: 32, scope: !1509)
!1589 = !DILocation(line: 398, column: 1, scope: !690)
!1590 = !DILocation(line: 400, column: 35, scope: !716)
!1591 = !DILocation(line: 400, column: 46, scope: !716)
!1592 = !DILocation(line: 402, column: 13, scope: !716)
!1593 = !DILocation(line: 402, column: 5, scope: !716)
!1594 = !DILocation(line: 403, column: 22, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !716, file: !352, line: 402, column: 19)
!1596 = !DILocation(line: 403, column: 28, scope: !1595)
!1597 = !DILocation(line: 403, column: 15, scope: !1595)
!1598 = !DILocation(line: 404, column: 22, scope: !1595)
!1599 = !DILocation(line: 404, column: 28, scope: !1595)
!1600 = !DILocation(line: 404, column: 15, scope: !1595)
!1601 = !DILocation(line: 405, column: 22, scope: !1595)
!1602 = !DILocation(line: 405, column: 28, scope: !1595)
!1603 = !DILocation(line: 405, column: 15, scope: !1595)
!1604 = !DILocation(line: 406, column: 22, scope: !1595)
!1605 = !DILocation(line: 406, column: 28, scope: !1595)
!1606 = !DILocation(line: 406, column: 15, scope: !1595)
!1607 = !DILocation(line: 407, column: 22, scope: !1595)
!1608 = !DILocation(line: 407, column: 28, scope: !1595)
!1609 = !DILocation(line: 407, column: 15, scope: !1595)
!1610 = !DILocation(line: 408, column: 22, scope: !1595)
!1611 = !DILocation(line: 408, column: 28, scope: !1595)
!1612 = !DILocation(line: 408, column: 15, scope: !1595)
!1613 = !DILocation(line: 409, column: 22, scope: !1595)
!1614 = !DILocation(line: 409, column: 28, scope: !1595)
!1615 = !DILocation(line: 409, column: 15, scope: !1595)
!1616 = !DILocation(line: 410, column: 22, scope: !1595)
!1617 = !DILocation(line: 410, column: 28, scope: !1595)
!1618 = !DILocation(line: 410, column: 15, scope: !1595)
!1619 = !DILocation(line: 411, column: 22, scope: !1595)
!1620 = !DILocation(line: 411, column: 28, scope: !1595)
!1621 = !DILocation(line: 411, column: 15, scope: !1595)
!1622 = !DILocation(line: 413, column: 22, scope: !1595)
!1623 = !DILocation(line: 413, column: 28, scope: !1595)
!1624 = !DILocation(line: 413, column: 15, scope: !1595)
!1625 = !DILocation(line: 414, column: 22, scope: !1595)
!1626 = !DILocation(line: 414, column: 28, scope: !1595)
!1627 = !DILocation(line: 414, column: 15, scope: !1595)
!1628 = !DILocation(line: 415, column: 22, scope: !1595)
!1629 = !DILocation(line: 415, column: 28, scope: !1595)
!1630 = !DILocation(line: 415, column: 15, scope: !1595)
!1631 = !DILocation(line: 416, column: 22, scope: !1595)
!1632 = !DILocation(line: 416, column: 28, scope: !1595)
!1633 = !DILocation(line: 416, column: 15, scope: !1595)
!1634 = !DILocation(line: 417, column: 22, scope: !1595)
!1635 = !DILocation(line: 417, column: 28, scope: !1595)
!1636 = !DILocation(line: 417, column: 15, scope: !1595)
!1637 = !DILocation(line: 418, column: 22, scope: !1595)
!1638 = !DILocation(line: 418, column: 28, scope: !1595)
!1639 = !DILocation(line: 418, column: 15, scope: !1595)
!1640 = !DILocation(line: 419, column: 22, scope: !1595)
!1641 = !DILocation(line: 419, column: 28, scope: !1595)
!1642 = !DILocation(line: 419, column: 15, scope: !1595)
!1643 = !DILocation(line: 421, column: 5, scope: !716)
!1644 = !DILocation(line: 422, column: 1, scope: !716)
!1645 = !DILocation(line: 436, column: 30, scope: !722)
!1646 = !DILocation(line: 436, column: 62, scope: !722)
!1647 = !DILocation(line: 436, column: 51, scope: !722)
!1648 = !DILocation(line: 436, column: 49, scope: !722)
!1649 = !DILocation(line: 436, column: 72, scope: !722)
!1650 = !DILocation(line: 436, column: 73, scope: !722)
!1651 = !DILocation(line: 436, column: 65, scope: !722)
!1652 = !DILocation(line: 437, column: 34, scope: !727)
!1653 = !DILocation(line: 437, column: 75, scope: !727)
!1654 = !DILocation(line: 437, column: 55, scope: !727)
!1655 = !DILocation(line: 437, column: 53, scope: !727)
!1656 = !DILocation(line: 437, column: 85, scope: !727)
!1657 = !DILocation(line: 437, column: 86, scope: !727)
!1658 = !DILocation(line: 437, column: 78, scope: !727)
!1659 = !DILocation(line: 438, column: 18, scope: !733)
!1660 = !DILocation(line: 438, column: 50, scope: !733)
!1661 = !DILocation(line: 438, column: 39, scope: !733)
!1662 = !DILocation(line: 438, column: 37, scope: !733)
!1663 = !DILocation(line: 438, column: 60, scope: !733)
!1664 = !DILocation(line: 438, column: 61, scope: !733)
!1665 = !DILocation(line: 438, column: 53, scope: !733)
!1666 = !DILocation(line: 439, column: 36, scope: !738)
!1667 = !DILocation(line: 439, column: 77, scope: !738)
!1668 = !DILocation(line: 439, column: 57, scope: !738)
!1669 = !DILocation(line: 439, column: 55, scope: !738)
!1670 = !DILocation(line: 439, column: 87, scope: !738)
!1671 = !DILocation(line: 439, column: 88, scope: !738)
!1672 = !DILocation(line: 439, column: 80, scope: !738)
!1673 = !DILocation(line: 440, column: 14, scope: !743)
!1674 = !DILocation(line: 440, column: 46, scope: !743)
!1675 = !DILocation(line: 440, column: 35, scope: !743)
!1676 = !DILocation(line: 440, column: 33, scope: !743)
!1677 = !DILocation(line: 440, column: 56, scope: !743)
!1678 = !DILocation(line: 440, column: 57, scope: !743)
!1679 = !DILocation(line: 440, column: 49, scope: !743)
!1680 = !DILocation(line: 441, column: 32, scope: !746)
!1681 = !DILocation(line: 441, column: 73, scope: !746)
!1682 = !DILocation(line: 441, column: 53, scope: !746)
!1683 = !DILocation(line: 441, column: 51, scope: !746)
!1684 = !DILocation(line: 441, column: 83, scope: !746)
!1685 = !DILocation(line: 441, column: 84, scope: !746)
!1686 = !DILocation(line: 441, column: 76, scope: !746)
!1687 = !DILocation(line: 442, column: 16, scope: !751)
!1688 = !DILocation(line: 442, column: 48, scope: !751)
!1689 = !DILocation(line: 442, column: 35, scope: !751)
!1690 = !DILocation(line: 442, column: 58, scope: !751)
!1691 = !DILocation(line: 442, column: 59, scope: !751)
!1692 = !DILocation(line: 442, column: 51, scope: !751)
!1693 = !DILocation(line: 443, column: 34, scope: !756)
!1694 = !DILocation(line: 443, column: 75, scope: !756)
!1695 = !DILocation(line: 443, column: 53, scope: !756)
!1696 = !DILocation(line: 443, column: 85, scope: !756)
!1697 = !DILocation(line: 443, column: 86, scope: !756)
!1698 = !DILocation(line: 443, column: 78, scope: !756)
!1699 = !DILocation(line: 444, column: 26, scope: !761)
!1700 = !DILocation(line: 444, column: 58, scope: !761)
!1701 = !DILocation(line: 444, column: 45, scope: !761)
!1702 = !DILocation(line: 444, column: 68, scope: !761)
!1703 = !DILocation(line: 444, column: 69, scope: !761)
!1704 = !DILocation(line: 444, column: 61, scope: !761)
!1705 = !DILocation(line: 445, column: 44, scope: !764)
!1706 = !DILocation(line: 445, column: 85, scope: !764)
!1707 = !DILocation(line: 445, column: 63, scope: !764)
!1708 = !DILocation(line: 445, column: 95, scope: !764)
!1709 = !DILocation(line: 445, column: 96, scope: !764)
!1710 = !DILocation(line: 445, column: 88, scope: !764)
!1711 = !DILocation(line: 446, column: 18, scope: !769)
!1712 = !DILocation(line: 446, column: 50, scope: !769)
!1713 = !DILocation(line: 446, column: 39, scope: !769)
!1714 = !DILocation(line: 446, column: 37, scope: !769)
!1715 = !DILocation(line: 446, column: 60, scope: !769)
!1716 = !DILocation(line: 446, column: 61, scope: !769)
!1717 = !DILocation(line: 446, column: 53, scope: !769)
!1718 = !DILocation(line: 447, column: 20, scope: !774)
!1719 = !DILocation(line: 447, column: 52, scope: !774)
!1720 = !DILocation(line: 447, column: 41, scope: !774)
!1721 = !DILocation(line: 447, column: 39, scope: !774)
!1722 = !DILocation(line: 447, column: 62, scope: !774)
!1723 = !DILocation(line: 447, column: 63, scope: !774)
!1724 = !DILocation(line: 447, column: 55, scope: !774)
!1725 = !DILocation(line: 448, column: 30, scope: !777)
!1726 = !DILocation(line: 448, column: 62, scope: !777)
!1727 = !DILocation(line: 448, column: 51, scope: !777)
!1728 = !DILocation(line: 448, column: 49, scope: !777)
!1729 = !DILocation(line: 448, column: 72, scope: !777)
!1730 = !DILocation(line: 448, column: 73, scope: !777)
!1731 = !DILocation(line: 448, column: 65, scope: !777)
!1732 = !DILocation(line: 467, column: 31, scope: !782)
!1733 = !DILocation(line: 467, column: 46, scope: !782)
!1734 = !DILocation(line: 467, column: 78, scope: !782)
!1735 = !DILocation(line: 467, column: 67, scope: !782)
!1736 = !DILocation(line: 467, column: 65, scope: !782)
!1737 = !DILocation(line: 467, column: 88, scope: !782)
!1738 = !DILocation(line: 467, column: 89, scope: !782)
!1739 = !DILocation(line: 467, column: 81, scope: !782)
!1740 = !DILocation(line: 468, column: 33, scope: !788)
!1741 = !DILocation(line: 468, column: 50, scope: !788)
!1742 = !DILocation(line: 468, column: 91, scope: !788)
!1743 = !DILocation(line: 468, column: 71, scope: !788)
!1744 = !DILocation(line: 468, column: 69, scope: !788)
!1745 = !DILocation(line: 468, column: 101, scope: !788)
!1746 = !DILocation(line: 468, column: 102, scope: !788)
!1747 = !DILocation(line: 468, column: 94, scope: !788)
!1748 = !DILocation(line: 469, column: 25, scope: !794)
!1749 = !DILocation(line: 469, column: 34, scope: !794)
!1750 = !DILocation(line: 469, column: 66, scope: !794)
!1751 = !DILocation(line: 469, column: 55, scope: !794)
!1752 = !DILocation(line: 469, column: 53, scope: !794)
!1753 = !DILocation(line: 469, column: 76, scope: !794)
!1754 = !DILocation(line: 469, column: 77, scope: !794)
!1755 = !DILocation(line: 469, column: 69, scope: !794)
!1756 = !DILocation(line: 470, column: 34, scope: !800)
!1757 = !DILocation(line: 470, column: 52, scope: !800)
!1758 = !DILocation(line: 470, column: 93, scope: !800)
!1759 = !DILocation(line: 470, column: 73, scope: !800)
!1760 = !DILocation(line: 470, column: 71, scope: !800)
!1761 = !DILocation(line: 470, column: 103, scope: !800)
!1762 = !DILocation(line: 470, column: 104, scope: !800)
!1763 = !DILocation(line: 470, column: 96, scope: !800)
!1764 = !DILocation(line: 471, column: 23, scope: !806)
!1765 = !DILocation(line: 471, column: 30, scope: !806)
!1766 = !DILocation(line: 471, column: 62, scope: !806)
!1767 = !DILocation(line: 471, column: 51, scope: !806)
!1768 = !DILocation(line: 471, column: 49, scope: !806)
!1769 = !DILocation(line: 471, column: 72, scope: !806)
!1770 = !DILocation(line: 471, column: 73, scope: !806)
!1771 = !DILocation(line: 471, column: 65, scope: !806)
!1772 = !DILocation(line: 472, column: 32, scope: !812)
!1773 = !DILocation(line: 472, column: 48, scope: !812)
!1774 = !DILocation(line: 472, column: 89, scope: !812)
!1775 = !DILocation(line: 472, column: 69, scope: !812)
!1776 = !DILocation(line: 472, column: 67, scope: !812)
!1777 = !DILocation(line: 472, column: 99, scope: !812)
!1778 = !DILocation(line: 472, column: 100, scope: !812)
!1779 = !DILocation(line: 472, column: 92, scope: !812)
!1780 = !DILocation(line: 473, column: 24, scope: !818)
!1781 = !DILocation(line: 473, column: 32, scope: !818)
!1782 = !DILocation(line: 473, column: 64, scope: !818)
!1783 = !DILocation(line: 473, column: 51, scope: !818)
!1784 = !DILocation(line: 473, column: 74, scope: !818)
!1785 = !DILocation(line: 473, column: 75, scope: !818)
!1786 = !DILocation(line: 473, column: 67, scope: !818)
!1787 = !DILocation(line: 474, column: 33, scope: !824)
!1788 = !DILocation(line: 474, column: 50, scope: !824)
!1789 = !DILocation(line: 474, column: 91, scope: !824)
!1790 = !DILocation(line: 474, column: 69, scope: !824)
!1791 = !DILocation(line: 474, column: 101, scope: !824)
!1792 = !DILocation(line: 474, column: 102, scope: !824)
!1793 = !DILocation(line: 474, column: 94, scope: !824)
!1794 = !DILocation(line: 475, column: 29, scope: !830)
!1795 = !DILocation(line: 475, column: 42, scope: !830)
!1796 = !DILocation(line: 475, column: 74, scope: !830)
!1797 = !DILocation(line: 475, column: 61, scope: !830)
!1798 = !DILocation(line: 475, column: 84, scope: !830)
!1799 = !DILocation(line: 475, column: 85, scope: !830)
!1800 = !DILocation(line: 475, column: 77, scope: !830)
!1801 = !DILocation(line: 476, column: 38, scope: !836)
!1802 = !DILocation(line: 476, column: 60, scope: !836)
!1803 = !DILocation(line: 476, column: 101, scope: !836)
!1804 = !DILocation(line: 476, column: 79, scope: !836)
!1805 = !DILocation(line: 476, column: 111, scope: !836)
!1806 = !DILocation(line: 476, column: 112, scope: !836)
!1807 = !DILocation(line: 476, column: 104, scope: !836)
!1808 = !DILocation(line: 477, column: 25, scope: !842)
!1809 = !DILocation(line: 477, column: 34, scope: !842)
!1810 = !DILocation(line: 477, column: 66, scope: !842)
!1811 = !DILocation(line: 477, column: 55, scope: !842)
!1812 = !DILocation(line: 477, column: 53, scope: !842)
!1813 = !DILocation(line: 477, column: 76, scope: !842)
!1814 = !DILocation(line: 477, column: 77, scope: !842)
!1815 = !DILocation(line: 477, column: 69, scope: !842)
!1816 = !DILocation(line: 478, column: 26, scope: !848)
!1817 = !DILocation(line: 478, column: 36, scope: !848)
!1818 = !DILocation(line: 478, column: 68, scope: !848)
!1819 = !DILocation(line: 478, column: 57, scope: !848)
!1820 = !DILocation(line: 478, column: 55, scope: !848)
!1821 = !DILocation(line: 478, column: 78, scope: !848)
!1822 = !DILocation(line: 478, column: 79, scope: !848)
!1823 = !DILocation(line: 478, column: 71, scope: !848)
!1824 = !DILocation(line: 479, column: 31, scope: !854)
!1825 = !DILocation(line: 479, column: 46, scope: !854)
!1826 = !DILocation(line: 479, column: 78, scope: !854)
!1827 = !DILocation(line: 479, column: 67, scope: !854)
!1828 = !DILocation(line: 479, column: 65, scope: !854)
!1829 = !DILocation(line: 479, column: 88, scope: !854)
!1830 = !DILocation(line: 479, column: 89, scope: !854)
!1831 = !DILocation(line: 479, column: 81, scope: !854)
!1832 = !DILocation(line: 480, column: 15, scope: !860)
!1833 = !DILocation(line: 480, column: 47, scope: !860)
!1834 = !DILocation(line: 480, column: 36, scope: !860)
!1835 = !DILocation(line: 480, column: 34, scope: !860)
!1836 = !DILocation(line: 480, column: 50, scope: !860)
!1837 = !DILocation(line: 517, column: 23, scope: !865)
!1838 = !DILocation(line: 517, column: 34, scope: !865)
!1839 = !DILocation(line: 519, column: 12, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !865, file: !352, line: 519, column: 9)
!1841 = !{!1842, !1128, i64 0}
!1842 = !{!"", !1128, i64 0, !1128, i64 8}
!1843 = !DILocation(line: 519, column: 16, scope: !1840)
!1844 = !DILocation(line: 519, column: 21, scope: !1840)
!1845 = !{!1846, !1128, i64 0}
!1846 = !{!"", !1128, i64 0, !1128, i64 8, !1128, i64 16, !1128, i64 24}
!1847 = !DILocation(line: 519, column: 14, scope: !1840)
!1848 = !DILocation(line: 519, column: 9, scope: !865)
!1849 = !DILocation(line: 520, column: 9, scope: !1840)
!1850 = !DILocation(line: 521, column: 12, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !865, file: !352, line: 521, column: 9)
!1852 = !DILocation(line: 521, column: 16, scope: !1851)
!1853 = !DILocation(line: 521, column: 21, scope: !1851)
!1854 = !{!1846, !1128, i64 16}
!1855 = !DILocation(line: 521, column: 14, scope: !1851)
!1856 = !DILocation(line: 521, column: 9, scope: !865)
!1857 = !DILocation(line: 522, column: 9, scope: !1851)
!1858 = !DILocation(line: 523, column: 12, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !865, file: !352, line: 523, column: 9)
!1860 = !{!1842, !1128, i64 8}
!1861 = !DILocation(line: 523, column: 16, scope: !1859)
!1862 = !DILocation(line: 523, column: 21, scope: !1859)
!1863 = !{!1846, !1128, i64 8}
!1864 = !DILocation(line: 523, column: 14, scope: !1859)
!1865 = !DILocation(line: 523, column: 9, scope: !865)
!1866 = !DILocation(line: 524, column: 9, scope: !1859)
!1867 = !DILocation(line: 525, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !865, file: !352, line: 525, column: 9)
!1869 = !DILocation(line: 525, column: 16, scope: !1868)
!1870 = !DILocation(line: 525, column: 21, scope: !1868)
!1871 = !{!1846, !1128, i64 24}
!1872 = !DILocation(line: 525, column: 14, scope: !1868)
!1873 = !DILocation(line: 525, column: 9, scope: !865)
!1874 = !DILocation(line: 526, column: 9, scope: !1868)
!1875 = !DILocation(line: 527, column: 5, scope: !865)
!1876 = !DILocation(line: 528, column: 1, scope: !865)
!1877 = !DILocation(line: 535, column: 21, scope: !884)
!1878 = !DILocation(line: 537, column: 9, scope: !884)
!1879 = !DILocation(line: 537, column: 11, scope: !884)
!1880 = !{!1881, !1153, i64 0}
!1881 = !{!"", !1153, i64 0, !1153, i64 2}
!1882 = !DILocation(line: 538, column: 9, scope: !884)
!1883 = !DILocation(line: 538, column: 11, scope: !884)
!1884 = !{!1881, !1153, i64 2}
!1885 = !DILocation(line: 539, column: 12, scope: !884)
!1886 = !{i64 0, i64 2, !1152, i64 2, i64 2, !1152}
!1887 = !DILocation(line: 539, column: 5, scope: !884)
!1888 = !DILocation(line: 546, column: 21, scope: !894)
!1889 = !DILocation(line: 548, column: 9, scope: !894)
!1890 = !DILocation(line: 548, column: 11, scope: !894)
!1891 = !{!1892, !984, i64 0}
!1892 = !{!"", !984, i64 0, !984, i64 4, !984, i64 8, !984, i64 12, !984, i64 16, !984, i64 20, !984, i64 24, !984, i64 28}
!1893 = !DILocation(line: 549, column: 9, scope: !894)
!1894 = !DILocation(line: 549, column: 11, scope: !894)
!1895 = !{!1892, !984, i64 4}
!1896 = !DILocation(line: 550, column: 9, scope: !894)
!1897 = !DILocation(line: 550, column: 11, scope: !894)
!1898 = !{!1892, !984, i64 8}
!1899 = !DILocation(line: 551, column: 9, scope: !894)
!1900 = !DILocation(line: 551, column: 11, scope: !894)
!1901 = !{!1892, !984, i64 12}
!1902 = !DILocation(line: 552, column: 9, scope: !894)
!1903 = !DILocation(line: 552, column: 11, scope: !894)
!1904 = !{!1892, !984, i64 16}
!1905 = !DILocation(line: 553, column: 9, scope: !894)
!1906 = !DILocation(line: 553, column: 11, scope: !894)
!1907 = !{!1892, !984, i64 20}
!1908 = !DILocation(line: 554, column: 9, scope: !894)
!1909 = !DILocation(line: 554, column: 11, scope: !894)
!1910 = !{!1892, !984, i64 24}
!1911 = !DILocation(line: 555, column: 9, scope: !894)
!1912 = !DILocation(line: 555, column: 11, scope: !894)
!1913 = !{!1892, !984, i64 28}
!1914 = !DILocation(line: 556, column: 12, scope: !894)
!1915 = !{i64 0, i64 4, !983, i64 4, i64 4, !983, i64 8, i64 4, !983, i64 12, i64 4, !983, i64 16, i64 4, !983, i64 20, i64 4, !983, i64 24, i64 4, !983, i64 28, i64 4, !983}
!1916 = !DILocation(line: 556, column: 5, scope: !894)
!1917 = !DILocation(line: 559, column: 22, scope: !910)
!1918 = !DILocation(line: 559, column: 34, scope: !910)
!1919 = !DILocation(line: 561, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !910, file: !352, line: 561, column: 9)
!1921 = !DILocation(line: 561, column: 14, scope: !1920)
!1922 = !DILocation(line: 561, column: 9, scope: !910)
!1923 = !DILocation(line: 562, column: 9, scope: !1920)
!1924 = !DILocation(line: 563, column: 24, scope: !910)
!1925 = !DILocation(line: 563, column: 19, scope: !910)
!1926 = !DILocation(line: 563, column: 5, scope: !910)
!1927 = !DILocation(line: 563, column: 12, scope: !910)
!1928 = !DILocation(line: 563, column: 17, scope: !910)
!1929 = !DILocation(line: 564, column: 23, scope: !910)
!1930 = !DILocation(line: 564, column: 28, scope: !910)
!1931 = !DILocation(line: 564, column: 18, scope: !910)
!1932 = !DILocation(line: 564, column: 5, scope: !910)
!1933 = !DILocation(line: 564, column: 12, scope: !910)
!1934 = !DILocation(line: 564, column: 16, scope: !910)
!1935 = !DILocation(line: 565, column: 25, scope: !910)
!1936 = !DILocation(line: 565, column: 30, scope: !910)
!1937 = !DILocation(line: 565, column: 20, scope: !910)
!1938 = !DILocation(line: 565, column: 5, scope: !910)
!1939 = !DILocation(line: 565, column: 12, scope: !910)
!1940 = !DILocation(line: 565, column: 18, scope: !910)
!1941 = !DILocation(line: 566, column: 26, scope: !910)
!1942 = !DILocation(line: 566, column: 31, scope: !910)
!1943 = !DILocation(line: 566, column: 21, scope: !910)
!1944 = !DILocation(line: 566, column: 5, scope: !910)
!1945 = !DILocation(line: 566, column: 12, scope: !910)
!1946 = !DILocation(line: 566, column: 19, scope: !910)
!1947 = !DILocation(line: 567, column: 5, scope: !910)
!1948 = !DILocation(line: 568, column: 1, scope: !910)
!1949 = !DILocation(line: 570, column: 21, scope: !916)
!1950 = !DILocation(line: 570, column: 29, scope: !916)
!1951 = !DILocation(line: 570, column: 37, scope: !916)
!1952 = !DILocation(line: 570, column: 45, scope: !916)
!1953 = !DILocation(line: 572, column: 12, scope: !916)
!1954 = !DILocation(line: 572, column: 6, scope: !916)
!1955 = !DILocation(line: 572, column: 9, scope: !916)
!1956 = !DILocation(line: 573, column: 12, scope: !916)
!1957 = !DILocation(line: 573, column: 6, scope: !916)
!1958 = !DILocation(line: 573, column: 9, scope: !916)
!1959 = !DILocation(line: 574, column: 1, scope: !916)
!1960 = !DILocation(line: 615, column: 12, scope: !924)
!1961 = !DILocation(line: 615, column: 5, scope: !924)
