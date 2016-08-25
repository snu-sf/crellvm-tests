; ModuleID = './_ctypes_test.bc'
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
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 (i32, i32, i32, i32, i32)* %func, i32 (i32, i32, i32, i32, i32)** %func.addr, align 8
  %0 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %func.addr, align 8
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  %mul = mul i32 %1, %2
  %3 = load i32, i32* %b.addr, align 4
  %4 = load i32, i32* %b.addr, align 4
  %mul1 = mul i32 %3, %4
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i32, i32* %c.addr, align 4
  %mul2 = mul i32 %5, %6
  %7 = load i32, i32* %d.addr, align 4
  %8 = load i32, i32* %d.addr, align 4
  %mul3 = mul i32 %7, %8
  %9 = load i32, i32* %e.addr, align 4
  %10 = load i32, i32* %e.addr, align 4
  %mul4 = mul i32 %9, %10
  %call = call i32 %0(i32 %mul, i32 %mul1, i32 %mul2, i32 %mul3, i32 %mul4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define double @_testfunc_cbk_reg_double(double %a, double %b, double %c, double %d, double %e, double (double, double, double, double, double)* %func) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %e.addr = alloca double, align 8
  %func.addr = alloca double (double, double, double, double, double)*, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  store double %d, double* %d.addr, align 8
  store double %e, double* %e.addr, align 8
  store double (double, double, double, double, double)* %func, double (double, double, double, double, double)** %func.addr, align 8
  %0 = load double (double, double, double, double, double)*, double (double, double, double, double, double)** %func.addr, align 8
  %1 = load double, double* %a.addr, align 8
  %2 = load double, double* %a.addr, align 8
  %mul = fmul double %1, %2
  %3 = load double, double* %b.addr, align 8
  %4 = load double, double* %b.addr, align 8
  %mul1 = fmul double %3, %4
  %5 = load double, double* %c.addr, align 8
  %6 = load double, double* %c.addr, align 8
  %mul2 = fmul double %5, %6
  %7 = load double, double* %d.addr, align 8
  %8 = load double, double* %d.addr, align 8
  %mul3 = fmul double %7, %8
  %9 = load double, double* %e.addr, align 8
  %10 = load double, double* %e.addr, align 8
  %mul4 = fmul double %9, %10
  %call = call double %0(double %mul, double %mul1, double %mul2, double %mul3, double %mul4)
  ret double %call
}

; Function Attrs: nounwind uwtable
define void @testfunc_array(i32* %values) #0 {
entry:
  %values.addr = alloca i32*, align 8
  store i32* %values, i32** %values.addr, align 8
  %0 = load i32*, i32** %values.addr, align 8
  %arrayidx = getelementptr i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %values.addr, align 8
  %arrayidx1 = getelementptr i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32*, i32** %values.addr, align 8
  %arrayidx2 = getelementptr i32, i32* %4, i64 2
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %values.addr, align 8
  %arrayidx3 = getelementptr i32, i32* %6, i64 3
  %7 = load i32, i32* %arrayidx3, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define x86_fp80 @testfunc_Ddd(double %a, double %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %result = alloca x86_fp80, align 16
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %b.addr, align 8
  %mul = fmul double %0, %1
  %conv = fpext double %mul to x86_fp80
  store x86_fp80 %conv, x86_fp80* %result, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), double* %a.addr, double* %b.addr)
  %2 = load double, double* %a.addr, align 8
  %3 = load double, double* %b.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), double %2, double %3)
  %4 = load x86_fp80, x86_fp80* %result, align 16
  ret x86_fp80 %4
}

; Function Attrs: nounwind uwtable
define x86_fp80 @testfunc_DDD(x86_fp80 %a, x86_fp80 %b) #0 {
entry:
  %a.addr = alloca x86_fp80, align 16
  %b.addr = alloca x86_fp80, align 16
  %result = alloca x86_fp80, align 16
  store x86_fp80 %a, x86_fp80* %a.addr, align 16
  store x86_fp80 %b, x86_fp80* %b.addr, align 16
  %0 = load x86_fp80, x86_fp80* %a.addr, align 16
  %1 = load x86_fp80, x86_fp80* %b.addr, align 16
  %mul = fmul x86_fp80 %0, %1
  store x86_fp80 %mul, x86_fp80* %result, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), x86_fp80* %a.addr, x86_fp80* %b.addr)
  %2 = load x86_fp80, x86_fp80* %a.addr, align 16
  %3 = load x86_fp80, x86_fp80* %b.addr, align 16
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), x86_fp80 %2, x86_fp80 %3)
  %4 = load x86_fp80, x86_fp80* %result, align 16
  ret x86_fp80 %4
}

; Function Attrs: nounwind uwtable
define i32 @testfunc_iii(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %mul = mul i32 %0, %1
  store i32 %mul, i32* %result, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32* %a.addr, i32* %b.addr)
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @myprintf(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %argptr = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %result, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i32, i32* %result, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @my_strtok(i8* %token, i8* %delim) #0 {
entry:
  %token.addr = alloca i8*, align 8
  %delim.addr = alloca i8*, align 8
  store i8* %token, i8** %token.addr, align 8
  store i8* %delim, i8** %delim.addr, align 8
  %0 = load i8*, i8** %token.addr, align 8
  %1 = load i8*, i8** %delim.addr, align 8
  %call = call i8* @strtok(i8* %0, i8* %1) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @my_strchr(i8* %s, i32 %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %c.addr, align 4
  %call = call i8* @strchr(i8* %0, i32 %1) #5
  ret i8* %call
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define double @my_sqrt(double %a) #0 {
entry:
  %a.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %call = call double @sqrt(double %0) #2
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define void @my_qsort(i8* %base, i64 %num, i64 %width, i32 (i8*, i8*)* %compare) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %num.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  %0 = load i8*, i8** %base.addr, align 8
  %1 = load i64, i64* %num.addr, align 8
  %2 = load i64, i64* %width.addr, align 8
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  call void @qsort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define i32* @_testfunc_ai8(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define void @_testfunc_v(i32 %a, i32 %b, i32* %presult) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %presult.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32* %presult, i32** %presult.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add i32 %0, %1
  %2 = load i32*, i32** %presult.addr, align 8
  store i32 %add, i32* %2, align 4
  ret void
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store double %d, double* %d.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to double
  %5 = load double, double* %d.addr, align 8
  %add8 = fadd double %conv7, %5
  %conv9 = fptosi double %add8 to i32
  ret i32 %conv9
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store double %d, double* %d.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to double
  %5 = load double, double* %d.addr, align 8
  %add8 = fadd double %conv7, %5
  %conv9 = fptrunc double %add8 to float
  ret float %conv9
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store double %d, double* %d.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to double
  %5 = load double, double* %d.addr, align 8
  %add8 = fadd double %conv7, %5
  ret double %add8
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store x86_fp80 %d, x86_fp80* %d.addr, align 16
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to x86_fp80
  %5 = load x86_fp80, x86_fp80* %d.addr, align 16
  %add8 = fadd x86_fp80 %conv7, %5
  ret x86_fp80 %add8
}

; Function Attrs: nounwind uwtable
define i8* @_testfunc_p_p(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @_testfunc_c_p_p(i32* %argcp, i8** %argv) #0 {
entry:
  %argcp.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  store i32* %argcp, i32** %argcp.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32*, i32** %argcp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %sub = sub i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @get_strchr() #0 {
entry:
  ret i8* bitcast (i8* (i8*, i32)* @strchr to i8*)
}

; Function Attrs: nounwind uwtable
define i8* @my_strdup(i8* %src) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #2
  store i8* %call1, i8** %dst, align 8
  %1 = load i8*, i8** %dst, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %dst, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %call2 = call i8* @strcpy(i8* %2, i8* %3) #2
  %4 = load i8*, i8** %dst, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @my_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32* @my_wcsdup(i32* %src) #0 {
entry:
  %retval = alloca i32*, align 8
  %src.addr = alloca i32*, align 8
  %len = alloca i64, align 8
  %ptr = alloca i32*, align 8
  store i32* %src, i32** %src.addr, align 8
  %0 = load i32*, i32** %src.addr, align 8
  %call = call i64 @wcslen(i32* %0) #5
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %mul = mul i64 %add, 4
  %call1 = call noalias i8* @malloc(i64 %mul) #2
  %2 = bitcast i8* %call1 to i32*
  store i32* %2, i32** %ptr, align 8
  %3 = load i32*, i32** %ptr, align 8
  %cmp = icmp eq i32* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %ptr, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32*, i32** %src.addr, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i64, i64* %len, align 8
  %add2 = add i64 %8, 1
  %mul3 = mul i64 %add2, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul3, i32 4, i1 false)
  %9 = load i32*, i32** %ptr, align 8
  store i32* %9, i32** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32*, i32** %retval
  ret i32* %10
}

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i64 @my_wcslen(i32* %src) #0 {
entry:
  %src.addr = alloca i32*, align 8
  store i32* %src, i32** %src.addr, align 8
  %0 = load i32*, i32** %src.addr, align 8
  %call = call i64 @wcslen(i32* %0) #5
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callfuncp(%struct.FUNCS* %fp) #0 {
entry:
  %fp.addr = alloca %struct.FUNCS*, align 8
  store %struct.FUNCS* %fp, %struct.FUNCS** %fp.addr, align 8
  %0 = load %struct.FUNCS*, %struct.FUNCS** %fp.addr, align 8
  %c = getelementptr inbounds %struct.FUNCS, %struct.FUNCS* %0, i32 0, i32 0
  %1 = load i32 (i32, i32)*, i32 (i32, i32)** %c, align 8
  %call = call i32 %1(i32 1, i32 2)
  %2 = load %struct.FUNCS*, %struct.FUNCS** %fp.addr, align 8
  %s = getelementptr inbounds %struct.FUNCS, %struct.FUNCS* %2, i32 0, i32 1
  %3 = load i32 (i32, i32)*, i32 (i32, i32)** %s, align 8
  %call1 = call i32 %3(i32 3, i32 4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_deref_pointer(i32* %pi) #0 {
entry:
  %pi.addr = alloca i32*, align 8
  store i32* %pi, i32** %pi.addr, align 8
  %0 = load i32*, i32** %pi.addr, align 8
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callback_with_pointer(i32 (i32*)* %func) #0 {
entry:
  %func.addr = alloca i32 (i32*)*, align 8
  %table = alloca [10 x i32], align 16
  store i32 (i32*)* %func, i32 (i32*)** %func.addr, align 8
  %0 = bitcast [10 x i32]* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([10 x i32]* @_testfunc_callback_with_pointer.table to i8*), i64 40, i32 16, i1 false)
  %1 = load i32 (i32*)*, i32 (i32*)** %func.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %table, i32 0, i32 0
  %call = call i32 %1(i32* %arraydecay)
  ret i32 %call
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store double %d, double* %d.addr, align 8
  store i64 %q, i64* %q.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to double
  %5 = load double, double* %d.addr, align 8
  %add8 = fadd double %conv7, %5
  %6 = load i64, i64* %q.addr, align 8
  %conv9 = sitofp i64 %6 to double
  %add10 = fadd double %add8, %conv9
  %conv11 = fptosi double %add10 to i64
  ret i64 %conv11
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
  store i8 %b, i8* %b.addr, align 1
  store i16 %h, i16* %h.addr, align 2
  store i32 %i, i32* %i.addr, align 4
  store i64 %l, i64* %l.addr, align 8
  store float %f, float* %f.addr, align 4
  store double %d, double* %d.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i16, i16* %h.addr, align 2
  %conv1 = sext i16 %1 to i32
  %add = add i32 %conv, %conv1
  %2 = load i32, i32* %i.addr, align 4
  %add2 = add i32 %add, %2
  %conv3 = sext i32 %add2 to i64
  %3 = load i64, i64* %l.addr, align 8
  %add4 = add i64 %conv3, %3
  %conv5 = sitofp i64 %add4 to float
  %4 = load float, float* %f.addr, align 4
  %add6 = fadd float %conv5, %4
  %conv7 = fpext float %add6 to double
  %5 = load double, double* %d.addr, align 8
  %add8 = fadd double %conv7, %5
  %conv9 = fptosi double %add8 to i64
  ret i64 %conv9
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_callback_i_if(i32 %value, i32 (i32)* %func) #0 {
entry:
  %value.addr = alloca i32, align 4
  %func.addr = alloca i32 (i32)*, align 8
  %sum = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 (i32)* %func, i32 (i32)** %func.addr, align 8
  store i32 0, i32* %sum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32 (i32)*, i32 (i32)** %func.addr, align 8
  %2 = load i32, i32* %value.addr, align 4
  %call = call i32 %1(i32 %2)
  %3 = load i32, i32* %sum, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %sum, align 4
  %4 = load i32, i32* %value.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, i32* %value.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %sum, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i64 @_testfunc_callback_q_qf(i64 %value, i64 (i64)* %func) #0 {
entry:
  %value.addr = alloca i64, align 8
  %func.addr = alloca i64 (i64)*, align 8
  %sum = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 (i64)* %func, i64 (i64)** %func.addr, align 8
  store i64 0, i64* %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %value.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64 (i64)*, i64 (i64)** %func.addr, align 8
  %2 = load i64, i64* %value.addr, align 8
  %call = call i64 %1(i64 %2)
  %3 = load i64, i64* %sum, align 8
  %add = add i64 %3, %call
  store i64 %add, i64* %sum, align 8
  %4 = load i64, i64* %value.addr, align 8
  %div = sdiv i64 %4, 2
  store i64 %div, i64* %value.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %sum, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i32 @getSPAMANDEGGS(%struct.EGG** %eggs) #0 {
entry:
  %eggs.addr = alloca %struct.EGG**, align 8
  store %struct.EGG** %eggs, %struct.EGG*** %eggs.addr, align 8
  %0 = load %struct.EGG**, %struct.EGG*** %eggs.addr, align 8
  store %struct.EGG* getelementptr inbounds ([1 x %struct.EGG], [1 x %struct.EGG]* @my_eggs, i32 0, i32 0), %struct.EGG** %0, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @_testfunc_byval(i64 %in.coerce, %struct.tagpoint* %pout) #0 {
entry:
  %in = alloca %struct.tagpoint, align 8
  %pout.addr = alloca %struct.tagpoint*, align 8
  %0 = bitcast %struct.tagpoint* %in to i64*
  store i64 %in.coerce, i64* %0, align 8
  store %struct.tagpoint* %pout, %struct.tagpoint** %pout.addr, align 8
  %1 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8
  %tobool = icmp ne %struct.tagpoint* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %3 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8
  %x1 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %3, i32 0, i32 0
  store i32 %2, i32* %x1, align 4
  %y = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %5 = load %struct.tagpoint*, %struct.tagpoint** %pout.addr, align 8
  %y2 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %5, i32 0, i32 1
  store i32 %4, i32* %y2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %x3 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %y4 = getelementptr inbounds %struct.tagpoint, %struct.tagpoint* %in, i32 0, i32 1
  %7 = load i32, i32* %y4, align 4
  %add = add i32 %6, %7
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @get_an_integer() #0 {
entry:
  %0 = load i32, i32* @an_integer, align 4
  ret i32 %0
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
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double (double)* %f, double (double)** %f.addr, align 8
  store i64 %nstep, i64* %nstep.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  %0 = load double, double* %b.addr, align 8
  %1 = load double, double* %a.addr, align 8
  %sub = fsub double %0, %1
  %2 = load i64, i64* %nstep.addr, align 8
  %conv = sitofp i64 %2 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %dx, align 8
  %3 = load double, double* %a.addr, align 8
  %4 = load double, double* %dx, align 8
  %mul = fmul double 5.000000e-01, %4
  %add = fadd double %3, %mul
  store double %add, double* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load double, double* %b.addr, align 8
  %6 = load double, double* %x, align 8
  %sub1 = fsub double %5, %6
  %7 = load double, double* %x, align 8
  %8 = load double, double* %a.addr, align 8
  %sub2 = fsub double %7, %8
  %mul3 = fmul double %sub1, %sub2
  %cmp = fcmp ogt double %mul3, 0.000000e+00
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load double (double)*, double (double)** %f.addr, align 8
  %10 = load double, double* %x, align 8
  %call = call double %9(double %10)
  %11 = load double, double* %sum, align 8
  %add5 = fadd double %11, %call
  store double %add5, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load double, double* %dx, align 8
  %13 = load double, double* %x, align 8
  %add6 = fadd double %13, %12
  store double %add6, double* %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load double, double* %sum, align 8
  %15 = load i64, i64* %nstep.addr, align 8
  %conv7 = sitofp i64 %15 to double
  %div8 = fdiv double %14, %conv7
  ret double %div8
}

; Function Attrs: nounwind uwtable
define internal void @_xxx_init(i8* (i32)* %Xalloc, void (i8*)* %Xfree) #0 {
entry:
  %Xalloc.addr = alloca i8* (i32)*, align 8
  %Xfree.addr = alloca void (i8*)*, align 8
  %ptr = alloca i8*, align 8
  store i8* (i32)* %Xalloc, i8* (i32)** %Xalloc.addr, align 8
  store void (i8*)* %Xfree, void (i8*)** %Xfree.addr, align 8
  %0 = load i8* (i32)*, i8* (i32)** %Xalloc.addr, align 8
  %1 = load void (i8*)*, void (i8*)** %Xfree.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* (i32)* %0, void (i8*)* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %2 = load i8* (i32)*, i8* (i32)** %Xalloc.addr, align 8
  %call2 = call i8* %2(i32 32)
  store i8* %call2, i8** %ptr, align 8
  %3 = load void (i8*)*, void (i8*)** %Xfree.addr, align 8
  %4 = load i8*, i8** %ptr, align 8
  call void %3(i8* %4)
  %5 = load i8*, i8** %ptr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.xxx_library* @library_get() #0 {
entry:
  ret %struct.xxx_library* @_xxx_lib
}

; Function Attrs: nounwind uwtable
define %struct._object* @py_func_si(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %name, i32* %i)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

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

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @_py_func_si(i8* %s, i32 %i) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @py_func(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define void @_py_func() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_bitfields(%struct.BITS* %bits, i8 signext %name, i32 %value) #0 {
entry:
  %bits.addr = alloca %struct.BITS*, align 8
  %name.addr = alloca i8, align 1
  %value.addr = alloca i32, align 4
  store %struct.BITS* %bits, %struct.BITS** %bits.addr, align 8
  store i8 %name, i8* %name.addr, align 1
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8, i8* %name.addr, align 1
  %conv = sext i8 %0 to i32
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
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %2 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %3 = bitcast %struct.BITS* %2 to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.value = and i32 %1, 1
  %bf.clear = and i32 %bf.load, -2
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %3, align 4
  %bf.result.shl = shl i32 %bf.value, 31
  %bf.result.ashr = ashr i32 %bf.result.shl, 31
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load i32, i32* %value.addr, align 4
  %5 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %6 = bitcast %struct.BITS* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 4
  %bf.value3 = and i32 %4, 3
  %bf.shl = shl i32 %bf.value3, 1
  %bf.clear4 = and i32 %bf.load2, -7
  %bf.set5 = or i32 %bf.clear4, %bf.shl
  store i32 %bf.set5, i32* %6, align 4
  %bf.result.shl6 = shl i32 %bf.value3, 30
  %bf.result.ashr7 = ashr i32 %bf.result.shl6, 30
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %7 = load i32, i32* %value.addr, align 4
  %8 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %9 = bitcast %struct.BITS* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 4
  %bf.value10 = and i32 %7, 7
  %bf.shl11 = shl i32 %bf.value10, 3
  %bf.clear12 = and i32 %bf.load9, -57
  %bf.set13 = or i32 %bf.clear12, %bf.shl11
  store i32 %bf.set13, i32* %9, align 4
  %bf.result.shl14 = shl i32 %bf.value10, 29
  %bf.result.ashr15 = ashr i32 %bf.result.shl14, 29
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %10 = load i32, i32* %value.addr, align 4
  %11 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %12 = bitcast %struct.BITS* %11 to i32*
  %bf.load17 = load i32, i32* %12, align 4
  %bf.value18 = and i32 %10, 15
  %bf.shl19 = shl i32 %bf.value18, 6
  %bf.clear20 = and i32 %bf.load17, -961
  %bf.set21 = or i32 %bf.clear20, %bf.shl19
  store i32 %bf.set21, i32* %12, align 4
  %bf.result.shl22 = shl i32 %bf.value18, 28
  %bf.result.ashr23 = ashr i32 %bf.result.shl22, 28
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %13 = load i32, i32* %value.addr, align 4
  %14 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %15 = bitcast %struct.BITS* %14 to i32*
  %bf.load25 = load i32, i32* %15, align 4
  %bf.value26 = and i32 %13, 31
  %bf.shl27 = shl i32 %bf.value26, 10
  %bf.clear28 = and i32 %bf.load25, -31745
  %bf.set29 = or i32 %bf.clear28, %bf.shl27
  store i32 %bf.set29, i32* %15, align 4
  %bf.result.shl30 = shl i32 %bf.value26, 27
  %bf.result.ashr31 = ashr i32 %bf.result.shl30, 27
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %16 = load i32, i32* %value.addr, align 4
  %17 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %18 = bitcast %struct.BITS* %17 to i32*
  %bf.load33 = load i32, i32* %18, align 4
  %bf.value34 = and i32 %16, 63
  %bf.shl35 = shl i32 %bf.value34, 15
  %bf.clear36 = and i32 %bf.load33, -2064385
  %bf.set37 = or i32 %bf.clear36, %bf.shl35
  store i32 %bf.set37, i32* %18, align 4
  %bf.result.shl38 = shl i32 %bf.value34, 26
  %bf.result.ashr39 = ashr i32 %bf.result.shl38, 26
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %19 = load i32, i32* %value.addr, align 4
  %20 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %21 = bitcast %struct.BITS* %20 to i32*
  %bf.load41 = load i32, i32* %21, align 4
  %bf.value42 = and i32 %19, 127
  %bf.shl43 = shl i32 %bf.value42, 21
  %bf.clear44 = and i32 %bf.load41, -266338305
  %bf.set45 = or i32 %bf.clear44, %bf.shl43
  store i32 %bf.set45, i32* %21, align 4
  %bf.result.shl46 = shl i32 %bf.value42, 25
  %bf.result.ashr47 = ashr i32 %bf.result.shl46, 25
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %22 = load i32, i32* %value.addr, align 4
  %23 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %H = getelementptr inbounds %struct.BITS, %struct.BITS* %23, i32 0, i32 1
  %24 = bitcast i48* %H to i64*
  %25 = zext i32 %22 to i64
  %bf.load49 = load i64, i64* %24, align 4
  %bf.value50 = and i64 %25, 255
  %bf.clear51 = and i64 %bf.load49, -256
  %bf.set52 = or i64 %bf.clear51, %bf.value50
  store i64 %bf.set52, i64* %24, align 4
  %bf.result.shl53 = shl i64 %bf.value50, 56
  %bf.result.ashr54 = ashr i64 %bf.result.shl53, 56
  %bf.result.cast = trunc i64 %bf.result.ashr54 to i32
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry
  %26 = load i32, i32* %value.addr, align 4
  %27 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %I = getelementptr inbounds %struct.BITS, %struct.BITS* %27, i32 0, i32 1
  %28 = bitcast i48* %I to i64*
  %29 = zext i32 %26 to i64
  %bf.load56 = load i64, i64* %28, align 4
  %bf.value57 = and i64 %29, 511
  %bf.shl58 = shl i64 %bf.value57, 8
  %bf.clear59 = and i64 %bf.load56, -130817
  %bf.set60 = or i64 %bf.clear59, %bf.shl58
  store i64 %bf.set60, i64* %28, align 4
  %bf.result.shl61 = shl i64 %bf.value57, 55
  %bf.result.ashr62 = ashr i64 %bf.result.shl61, 55
  %bf.result.cast63 = trunc i64 %bf.result.ashr62 to i32
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %30 = load i32, i32* %value.addr, align 4
  %conv65 = trunc i32 %30 to i16
  %31 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %M = getelementptr inbounds %struct.BITS, %struct.BITS* %31, i32 0, i32 1
  %32 = bitcast i48* %M to i64*
  %33 = zext i16 %conv65 to i64
  %bf.load66 = load i64, i64* %32, align 4
  %bf.value67 = and i64 %33, 1
  %bf.shl68 = shl i64 %bf.value67, 17
  %bf.clear69 = and i64 %bf.load66, -131073
  %bf.set70 = or i64 %bf.clear69, %bf.shl68
  store i64 %bf.set70, i64* %32, align 4
  %bf.result.shl71 = shl i64 %bf.value67, 63
  %bf.result.ashr72 = ashr i64 %bf.result.shl71, 63
  %bf.result.cast73 = trunc i64 %bf.result.ashr72 to i16
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %34 = load i32, i32* %value.addr, align 4
  %conv75 = trunc i32 %34 to i16
  %35 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %N = getelementptr inbounds %struct.BITS, %struct.BITS* %35, i32 0, i32 1
  %36 = bitcast i48* %N to i64*
  %37 = zext i16 %conv75 to i64
  %bf.load76 = load i64, i64* %36, align 4
  %bf.value77 = and i64 %37, 3
  %bf.shl78 = shl i64 %bf.value77, 18
  %bf.clear79 = and i64 %bf.load76, -786433
  %bf.set80 = or i64 %bf.clear79, %bf.shl78
  store i64 %bf.set80, i64* %36, align 4
  %bf.result.shl81 = shl i64 %bf.value77, 62
  %bf.result.ashr82 = ashr i64 %bf.result.shl81, 62
  %bf.result.cast83 = trunc i64 %bf.result.ashr82 to i16
  br label %sw.epilog

sw.bb.84:                                         ; preds = %entry
  %38 = load i32, i32* %value.addr, align 4
  %conv85 = trunc i32 %38 to i16
  %39 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %O = getelementptr inbounds %struct.BITS, %struct.BITS* %39, i32 0, i32 1
  %40 = bitcast i48* %O to i64*
  %41 = zext i16 %conv85 to i64
  %bf.load86 = load i64, i64* %40, align 4
  %bf.value87 = and i64 %41, 7
  %bf.shl88 = shl i64 %bf.value87, 20
  %bf.clear89 = and i64 %bf.load86, -7340033
  %bf.set90 = or i64 %bf.clear89, %bf.shl88
  store i64 %bf.set90, i64* %40, align 4
  %bf.result.shl91 = shl i64 %bf.value87, 61
  %bf.result.ashr92 = ashr i64 %bf.result.shl91, 61
  %bf.result.cast93 = trunc i64 %bf.result.ashr92 to i16
  br label %sw.epilog

sw.bb.94:                                         ; preds = %entry
  %42 = load i32, i32* %value.addr, align 4
  %conv95 = trunc i32 %42 to i16
  %43 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %P = getelementptr inbounds %struct.BITS, %struct.BITS* %43, i32 0, i32 1
  %44 = bitcast i48* %P to i64*
  %45 = zext i16 %conv95 to i64
  %bf.load96 = load i64, i64* %44, align 4
  %bf.value97 = and i64 %45, 15
  %bf.shl98 = shl i64 %bf.value97, 23
  %bf.clear99 = and i64 %bf.load96, -125829121
  %bf.set100 = or i64 %bf.clear99, %bf.shl98
  store i64 %bf.set100, i64* %44, align 4
  %bf.result.shl101 = shl i64 %bf.value97, 60
  %bf.result.ashr102 = ashr i64 %bf.result.shl101, 60
  %bf.result.cast103 = trunc i64 %bf.result.ashr102 to i16
  br label %sw.epilog

sw.bb.104:                                        ; preds = %entry
  %46 = load i32, i32* %value.addr, align 4
  %conv105 = trunc i32 %46 to i16
  %47 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %Q = getelementptr inbounds %struct.BITS, %struct.BITS* %47, i32 0, i32 1
  %48 = bitcast i48* %Q to i64*
  %49 = zext i16 %conv105 to i64
  %bf.load106 = load i64, i64* %48, align 4
  %bf.value107 = and i64 %49, 31
  %bf.shl108 = shl i64 %bf.value107, 27
  %bf.clear109 = and i64 %bf.load106, -4160749569
  %bf.set110 = or i64 %bf.clear109, %bf.shl108
  store i64 %bf.set110, i64* %48, align 4
  %bf.result.shl111 = shl i64 %bf.value107, 59
  %bf.result.ashr112 = ashr i64 %bf.result.shl111, 59
  %bf.result.cast113 = trunc i64 %bf.result.ashr112 to i16
  br label %sw.epilog

sw.bb.114:                                        ; preds = %entry
  %50 = load i32, i32* %value.addr, align 4
  %conv115 = trunc i32 %50 to i16
  %51 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %R = getelementptr inbounds %struct.BITS, %struct.BITS* %51, i32 0, i32 1
  %52 = bitcast i48* %R to i64*
  %53 = zext i16 %conv115 to i64
  %bf.load116 = load i64, i64* %52, align 4
  %bf.value117 = and i64 %53, 63
  %bf.shl118 = shl i64 %bf.value117, 32
  %bf.clear119 = and i64 %bf.load116, -270582939649
  %bf.set120 = or i64 %bf.clear119, %bf.shl118
  store i64 %bf.set120, i64* %52, align 4
  %bf.result.shl121 = shl i64 %bf.value117, 58
  %bf.result.ashr122 = ashr i64 %bf.result.shl121, 58
  %bf.result.cast123 = trunc i64 %bf.result.ashr122 to i16
  br label %sw.epilog

sw.bb.124:                                        ; preds = %entry
  %54 = load i32, i32* %value.addr, align 4
  %conv125 = trunc i32 %54 to i16
  %55 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %S = getelementptr inbounds %struct.BITS, %struct.BITS* %55, i32 0, i32 1
  %56 = bitcast i48* %S to i64*
  %57 = zext i16 %conv125 to i64
  %bf.load126 = load i64, i64* %56, align 4
  %bf.value127 = and i64 %57, 127
  %bf.shl128 = shl i64 %bf.value127, 38
  %bf.clear129 = and i64 %bf.load126, -34909494181889
  %bf.set130 = or i64 %bf.clear129, %bf.shl128
  store i64 %bf.set130, i64* %56, align 4
  %bf.result.shl131 = shl i64 %bf.value127, 57
  %bf.result.ashr132 = ashr i64 %bf.result.shl131, 57
  %bf.result.cast133 = trunc i64 %bf.result.ashr132 to i16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.124, %sw.bb.114, %sw.bb.104, %sw.bb.94, %sw.bb.84, %sw.bb.74, %sw.bb.64, %sw.bb.55, %sw.bb.48, %sw.bb.40, %sw.bb.32, %sw.bb.24, %sw.bb.16, %sw.bb.8, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unpack_bitfields(%struct.BITS* %bits, i8 signext %name) #0 {
entry:
  %retval = alloca i32, align 4
  %bits.addr = alloca %struct.BITS*, align 8
  %name.addr = alloca i8, align 1
  store %struct.BITS* %bits, %struct.BITS** %bits.addr, align 8
  store i8 %name, i8* %name.addr, align 1
  %0 = load i8, i8* %name.addr, align 1
  %conv = sext i8 %0 to i32
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
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %2 = bitcast %struct.BITS* %1 to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.shl = shl i32 %bf.load, 31
  %bf.ashr = ashr i32 %bf.shl, 31
  store i32 %bf.ashr, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %4 = bitcast %struct.BITS* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 4
  %bf.shl3 = shl i32 %bf.load2, 29
  %bf.ashr4 = ashr i32 %bf.shl3, 30
  store i32 %bf.ashr4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %6 = bitcast %struct.BITS* %5 to i32*
  %bf.load6 = load i32, i32* %6, align 4
  %bf.shl7 = shl i32 %bf.load6, 26
  %bf.ashr8 = ashr i32 %bf.shl7, 29
  store i32 %bf.ashr8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %8 = bitcast %struct.BITS* %7 to i32*
  %bf.load10 = load i32, i32* %8, align 4
  %bf.shl11 = shl i32 %bf.load10, 22
  %bf.ashr12 = ashr i32 %bf.shl11, 28
  store i32 %bf.ashr12, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %9 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %10 = bitcast %struct.BITS* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 4
  %bf.shl15 = shl i32 %bf.load14, 17
  %bf.ashr16 = ashr i32 %bf.shl15, 27
  store i32 %bf.ashr16, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %11 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %12 = bitcast %struct.BITS* %11 to i32*
  %bf.load18 = load i32, i32* %12, align 4
  %bf.shl19 = shl i32 %bf.load18, 11
  %bf.ashr20 = ashr i32 %bf.shl19, 26
  store i32 %bf.ashr20, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %13 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %14 = bitcast %struct.BITS* %13 to i32*
  %bf.load22 = load i32, i32* %14, align 4
  %bf.shl23 = shl i32 %bf.load22, 4
  %bf.ashr24 = ashr i32 %bf.shl23, 25
  store i32 %bf.ashr24, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %15 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %H = getelementptr inbounds %struct.BITS, %struct.BITS* %15, i32 0, i32 1
  %16 = bitcast i48* %H to i64*
  %bf.load26 = load i64, i64* %16, align 4
  %bf.shl27 = shl i64 %bf.load26, 56
  %bf.ashr28 = ashr i64 %bf.shl27, 56
  %bf.cast = trunc i64 %bf.ashr28 to i32
  store i32 %bf.cast, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %entry
  %17 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %I = getelementptr inbounds %struct.BITS, %struct.BITS* %17, i32 0, i32 1
  %18 = bitcast i48* %I to i64*
  %bf.load30 = load i64, i64* %18, align 4
  %bf.shl31 = shl i64 %bf.load30, 47
  %bf.ashr32 = ashr i64 %bf.shl31, 55
  %bf.cast33 = trunc i64 %bf.ashr32 to i32
  store i32 %bf.cast33, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %19 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %M = getelementptr inbounds %struct.BITS, %struct.BITS* %19, i32 0, i32 1
  %20 = bitcast i48* %M to i64*
  %bf.load35 = load i64, i64* %20, align 4
  %bf.shl36 = shl i64 %bf.load35, 46
  %bf.ashr37 = ashr i64 %bf.shl36, 63
  %bf.cast38 = trunc i64 %bf.ashr37 to i16
  %conv39 = sext i16 %bf.cast38 to i32
  store i32 %conv39, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  %21 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %N = getelementptr inbounds %struct.BITS, %struct.BITS* %21, i32 0, i32 1
  %22 = bitcast i48* %N to i64*
  %bf.load41 = load i64, i64* %22, align 4
  %bf.shl42 = shl i64 %bf.load41, 44
  %bf.ashr43 = ashr i64 %bf.shl42, 62
  %bf.cast44 = trunc i64 %bf.ashr43 to i16
  %conv45 = sext i16 %bf.cast44 to i32
  store i32 %conv45, i32* %retval
  br label %return

sw.bb.46:                                         ; preds = %entry
  %23 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %O = getelementptr inbounds %struct.BITS, %struct.BITS* %23, i32 0, i32 1
  %24 = bitcast i48* %O to i64*
  %bf.load47 = load i64, i64* %24, align 4
  %bf.shl48 = shl i64 %bf.load47, 41
  %bf.ashr49 = ashr i64 %bf.shl48, 61
  %bf.cast50 = trunc i64 %bf.ashr49 to i16
  %conv51 = sext i16 %bf.cast50 to i32
  store i32 %conv51, i32* %retval
  br label %return

sw.bb.52:                                         ; preds = %entry
  %25 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %P = getelementptr inbounds %struct.BITS, %struct.BITS* %25, i32 0, i32 1
  %26 = bitcast i48* %P to i64*
  %bf.load53 = load i64, i64* %26, align 4
  %bf.shl54 = shl i64 %bf.load53, 37
  %bf.ashr55 = ashr i64 %bf.shl54, 60
  %bf.cast56 = trunc i64 %bf.ashr55 to i16
  %conv57 = sext i16 %bf.cast56 to i32
  store i32 %conv57, i32* %retval
  br label %return

sw.bb.58:                                         ; preds = %entry
  %27 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %Q = getelementptr inbounds %struct.BITS, %struct.BITS* %27, i32 0, i32 1
  %28 = bitcast i48* %Q to i64*
  %bf.load59 = load i64, i64* %28, align 4
  %bf.shl60 = shl i64 %bf.load59, 32
  %bf.ashr61 = ashr i64 %bf.shl60, 59
  %bf.cast62 = trunc i64 %bf.ashr61 to i16
  %conv63 = sext i16 %bf.cast62 to i32
  store i32 %conv63, i32* %retval
  br label %return

sw.bb.64:                                         ; preds = %entry
  %29 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %R = getelementptr inbounds %struct.BITS, %struct.BITS* %29, i32 0, i32 1
  %30 = bitcast i48* %R to i64*
  %bf.load65 = load i64, i64* %30, align 4
  %bf.shl66 = shl i64 %bf.load65, 26
  %bf.ashr67 = ashr i64 %bf.shl66, 58
  %bf.cast68 = trunc i64 %bf.ashr67 to i16
  %conv69 = sext i16 %bf.cast68 to i32
  store i32 %conv69, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %entry
  %31 = load %struct.BITS*, %struct.BITS** %bits.addr, align 8
  %S = getelementptr inbounds %struct.BITS, %struct.BITS* %31, i32 0, i32 1
  %32 = bitcast i48* %S to i64*
  %bf.load71 = load i64, i64* %32, align 4
  %bf.shl72 = shl i64 %bf.load71, 19
  %bf.ashr73 = ashr i64 %bf.shl72, 57
  %bf.cast74 = trunc i64 %bf.ashr73 to i16
  %conv75 = sext i16 %bf.cast74 to i32
  store i32 %conv75, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.70, %sw.bb.64, %sw.bb.58, %sw.bb.52, %sw.bb.46, %sw.bb.40, %sw.bb.34, %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb.9, %sw.bb.5, %sw.bb.1, %sw.bb
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define signext i8 @tf_b(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i8 @tf_B(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = zext i8 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define signext i16 @tf_h(i16 signext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %conv = sext i16 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = sext i16 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i16 @tf_H(i16 zeroext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %conv = zext i16 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define i32 @tf_i(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i32, i32* %c.addr, align 4
  %div = sdiv i32 %1, 3
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @tf_I(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i32, i32* %c.addr, align 4
  %div = udiv i32 %1, 3
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_l(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_s, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = sdiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_L(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_u, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = udiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_q(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_s, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = sdiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_Q(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_u, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = udiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define float @tf_f(float %c) #0 {
entry:
  %c.addr = alloca float, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %conv = fptosi float %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load float, float* %c.addr, align 4
  %div = fdiv float %1, 3.000000e+00
  ret float %div
}

; Function Attrs: nounwind uwtable
define double @tf_d(double %c) #0 {
entry:
  %c.addr = alloca double, align 8
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %conv = fptosi double %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load double, double* %c.addr, align 8
  %div = fdiv double %1, 3.000000e+00
  ret double %div
}

; Function Attrs: nounwind uwtable
define x86_fp80 @tf_D(x86_fp80 %c) #0 {
entry:
  %c.addr = alloca x86_fp80, align 16
  store x86_fp80 %c, x86_fp80* %c.addr, align 16
  %0 = load x86_fp80, x86_fp80* %c.addr, align 16
  %conv = fptosi x86_fp80 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load x86_fp80, x86_fp80* %c.addr, align 16
  %div = fdiv x86_fp80 %1, 0xK4000C000000000000000
  ret x86_fp80 %div
}

; Function Attrs: nounwind uwtable
define signext i8 @tf_bb(i8 signext %x, i8 signext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i8 @tf_bB(i8 signext %x, i8 zeroext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = zext i8 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define signext i16 @tf_bh(i8 signext %x, i16 signext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store i8 %x, i8* %x.addr, align 1
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %conv = sext i16 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = sext i16 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i16 @tf_bH(i8 signext %x, i16 zeroext %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store i8 %x, i8* %x.addr, align 1
  store i16 %c, i16* %c.addr, align 2
  %0 = load i16, i16* %c.addr, align 2
  %conv = zext i16 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i16, i16* %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %div = sdiv i32 %conv1, 3
  %conv2 = trunc i32 %div to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define i32 @tf_bi(i8 signext %x, i32 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load i32, i32* %c.addr, align 4
  %div = sdiv i32 %1, 3
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @tf_bI(i8 signext %x, i32 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* @last_tf_arg_u, align 8
  %1 = load i32, i32* %c.addr, align 4
  %div = udiv i32 %1, 3
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_bl(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_s, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = sdiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_bL(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_u, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = udiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_bq(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_s, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = sdiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @tf_bQ(i8 signext %x, i64 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca i64, align 8
  store i8 %x, i8* %x.addr, align 1
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  store i64 %0, i64* @last_tf_arg_u, align 8
  %1 = load i64, i64* %c.addr, align 8
  %div = udiv i64 %1, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define float @tf_bf(i8 signext %x, float %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca float, align 4
  store i8 %x, i8* %x.addr, align 1
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %c.addr, align 4
  %conv = fptosi float %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load float, float* %c.addr, align 4
  %div = fdiv float %1, 3.000000e+00
  ret float %div
}

; Function Attrs: nounwind uwtable
define double @tf_bd(i8 signext %x, double %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca double, align 8
  store i8 %x, i8* %x.addr, align 1
  store double %c, double* %c.addr, align 8
  %0 = load double, double* %c.addr, align 8
  %conv = fptosi double %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load double, double* %c.addr, align 8
  %div = fdiv double %1, 3.000000e+00
  ret double %div
}

; Function Attrs: nounwind uwtable
define x86_fp80 @tf_bD(i8 signext %x, x86_fp80 %c) #0 {
entry:
  %x.addr = alloca i8, align 1
  %c.addr = alloca x86_fp80, align 16
  store i8 %x, i8* %x.addr, align 1
  store x86_fp80 %c, x86_fp80* %c.addr, align 16
  %0 = load x86_fp80, x86_fp80* %c.addr, align 16
  %conv = fptosi x86_fp80 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  %1 = load x86_fp80, x86_fp80* %c.addr, align 16
  %div = fdiv x86_fp80 %1, 0xK4000C000000000000000
  ret x86_fp80 %div
}

; Function Attrs: nounwind uwtable
define void @tv_i(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* @last_tf_arg_s, align 8
  ret void
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
  store %struct.RECT* %prc, %struct.RECT** %prc.addr, align 8
  %x = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 0
  %3 = load i64, i64* %x, align 8
  %4 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8
  %left = getelementptr inbounds %struct.RECT, %struct.RECT* %4, i32 0, i32 0
  %5 = load i64, i64* %left, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %x1 = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 0
  %6 = load i64, i64* %x1, align 8
  %7 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8
  %right = getelementptr inbounds %struct.RECT, %struct.RECT* %7, i32 0, i32 2
  %8 = load i64, i64* %right, align 8
  %cmp2 = icmp sgt i64 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %y = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 1
  %9 = load i64, i64* %y, align 8
  %10 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8
  %top = getelementptr inbounds %struct.RECT, %struct.RECT* %10, i32 0, i32 1
  %11 = load i64, i64* %top, align 8
  %cmp5 = icmp slt i64 %9, %11
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %y8 = getelementptr inbounds %struct.POINT, %struct.POINT* %pt, i32 0, i32 1
  %12 = load i64, i64* %y8, align 8
  %13 = load %struct.RECT*, %struct.RECT** %prc.addr, align 8
  %bottom = getelementptr inbounds %struct.RECT, %struct.RECT* %13, i32 0, i32 3
  %14 = load i64, i64* %bottom, align 8
  %cmp9 = icmp sgt i64 %12, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @ret_2h_func(i32 %inp.coerce) #0 {
entry:
  %retval = alloca %struct.S2H, align 2
  %inp = alloca %struct.S2H, align 4
  %0 = bitcast %struct.S2H* %inp to i32*
  store i32 %inp.coerce, i32* %0, align 4
  %x = getelementptr inbounds %struct.S2H, %struct.S2H* %inp, i32 0, i32 0
  %1 = load i16, i16* %x, align 2
  %conv = sext i16 %1 to i32
  %mul = mul i32 %conv, 2
  %conv1 = trunc i32 %mul to i16
  store i16 %conv1, i16* %x, align 2
  %y = getelementptr inbounds %struct.S2H, %struct.S2H* %inp, i32 0, i32 1
  %2 = load i16, i16* %y, align 2
  %conv2 = sext i16 %2 to i32
  %mul3 = mul i32 %conv2, 3
  %conv4 = trunc i32 %mul3 to i16
  store i16 %conv4, i16* %y, align 2
  %3 = bitcast %struct.S2H* %retval to i8*
  %4 = bitcast %struct.S2H* %inp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 2, i1 false)
  %5 = bitcast %struct.S2H* %retval to i32*
  %6 = load i32, i32* %5, align 2
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @ret_8i_func(%struct.S8I* noalias sret %agg.result, %struct.S8I* byval align 8 %inp) #0 {
entry:
  %a = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 0
  %0 = load i32, i32* %a, align 4
  %mul = mul i32 %0, 2
  store i32 %mul, i32* %a, align 4
  %b = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 1
  %1 = load i32, i32* %b, align 4
  %mul1 = mul i32 %1, 3
  store i32 %mul1, i32* %b, align 4
  %c = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 2
  %2 = load i32, i32* %c, align 4
  %mul2 = mul i32 %2, 4
  store i32 %mul2, i32* %c, align 4
  %d = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 3
  %3 = load i32, i32* %d, align 4
  %mul3 = mul i32 %3, 5
  store i32 %mul3, i32* %d, align 4
  %e = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 4
  %4 = load i32, i32* %e, align 4
  %mul4 = mul i32 %4, 6
  store i32 %mul4, i32* %e, align 4
  %f = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 5
  %5 = load i32, i32* %f, align 4
  %mul5 = mul i32 %5, 7
  store i32 %mul5, i32* %f, align 4
  %g = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 6
  %6 = load i32, i32* %g, align 4
  %mul6 = mul i32 %6, 8
  store i32 %mul6, i32* %g, align 4
  %h = getelementptr inbounds %struct.S8I, %struct.S8I* %inp, i32 0, i32 7
  %7 = load i32, i32* %h, align 4
  %mul7 = mul i32 %7, 9
  store i32 %mul7, i32* %h, align 4
  %8 = bitcast %struct.S8I* %agg.result to i8*
  %9 = bitcast %struct.S8I* %inp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetRectangle(i32 %flag, %struct.RECT* %prect) #0 {
entry:
  %retval = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %prect.addr = alloca %struct.RECT*, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store %struct.RECT* %prect, %struct.RECT** %prect.addr, align 8
  %0 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8
  %left = getelementptr inbounds %struct.RECT, %struct.RECT* %2, i32 0, i32 0
  store i64 %conv, i64* %left, align 8
  %3 = load i32, i32* %flag.addr, align 4
  %add = add i32 %3, 1
  %conv1 = sext i32 %add to i64
  %4 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8
  %top = getelementptr inbounds %struct.RECT, %struct.RECT* %4, i32 0, i32 1
  store i64 %conv1, i64* %top, align 8
  %5 = load i32, i32* %flag.addr, align 4
  %add2 = add i32 %5, 2
  %conv3 = sext i32 %add2 to i64
  %6 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8
  %right = getelementptr inbounds %struct.RECT, %struct.RECT* %6, i32 0, i32 2
  store i64 %conv3, i64* %right, align 8
  %7 = load i32, i32* %flag.addr, align 4
  %add4 = add i32 %7, 3
  %conv5 = sext i32 %add4 to i64
  %8 = load %struct.RECT*, %struct.RECT** %prect.addr, align 8
  %bottom = getelementptr inbounds %struct.RECT, %struct.RECT* %8, i32 0, i32 3
  store i64 %conv5, i64* %bottom, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @TwoOutArgs(i32 %a, i32* %pi, i32 %b, i32* %pj) #0 {
entry:
  %a.addr = alloca i32, align 4
  %pi.addr = alloca i32*, align 8
  %b.addr = alloca i32, align 4
  %pj.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32* %pi, i32** %pi.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32* %pj, i32** %pj.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32*, i32** %pi.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add i32 %2, %0
  store i32 %add, i32* %1, align 4
  %3 = load i32, i32* %b.addr, align 4
  %4 = load i32*, i32** %pj.addr, align 8
  %5 = load i32, i32* %4, align 4
  %add1 = add i32 %5, %3
  store i32 %add1, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__ctypes_test() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_ctypes_testmodule, i32 1013)
  ret %struct._object* %call
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
