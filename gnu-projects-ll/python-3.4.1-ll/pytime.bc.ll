; ModuleID = './pytime.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, {}*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.timeval = type { i64, i64 }
%struct._Py_clock_info_t = type { i8*, i32, i32, double }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.timezone = type { i32, i32 }

@PyExc_OverflowError = external global %struct._object*, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ftime()\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"timestamp out of range for platform time_t\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyTime_gettimeofday(%struct.timeval* %tp) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8
  call void @pygettimeofday(%struct.timeval* %0, %struct._Py_clock_info_t* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pygettimeofday(%struct.timeval* %tp, %struct._Py_clock_info_t* %info) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  %err = alloca i32, align 4
  %t = alloca %struct.timeb, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %0, %struct.timezone* null) #4
  store i32 %call, i32* %err, align 4
  %1 = load i32, i32* %err, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool = icmp ne %struct._Py_clock_info_t* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8** %implementation, align 8
  %4 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %4, i32 0, i32 3
  store double 1.000000e-06, double* %resolution, align 8
  %5 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %5, i32 0, i32 1
  store i32 0, i32* %monotonic, align 4
  %6 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %6, i32 0, i32 2
  store i32 1, i32* %adjustable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.11

if.end.2:                                         ; preds = %entry
  %call3 = call i32 @ftime(%struct.timeb* %t)
  %time = getelementptr inbounds %struct.timeb, %struct.timeb* %t, i32 0, i32 0
  %7 = load i64, i64* %time, align 8
  %8 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 %7, i64* %tv_sec, align 8
  %millitm = getelementptr inbounds %struct.timeb, %struct.timeb* %t, i32 0, i32 1
  %9 = load i16, i16* %millitm, align 2
  %conv = zext i16 %9 to i32
  %mul = mul i32 %conv, 1000
  %conv4 = sext i32 %mul to i64
  %10 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %conv4, i64* %tv_usec, align 8
  %11 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %tobool5 = icmp ne %struct._Py_clock_info_t* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.2
  %12 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %implementation7 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %implementation7, align 8
  %13 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %resolution8 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %13, i32 0, i32 3
  store double 1.000000e-03, double* %resolution8, align 8
  %14 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %monotonic9 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %14, i32 0, i32 1
  store i32 0, i32* %monotonic9, align 4
  %15 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  %adjustable10 = getelementptr inbounds %struct._Py_clock_info_t, %struct._Py_clock_info_t* %15, i32 0, i32 2
  store i32 1, i32* %adjustable10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.6, %if.end.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyTime_gettimeofday_info(%struct.timeval* %tp, %struct._Py_clock_info_t* %info) #0 {
entry:
  %tp.addr = alloca %struct.timeval*, align 8
  %info.addr = alloca %struct._Py_clock_info_t*, align 8
  store %struct.timeval* %tp, %struct.timeval** %tp.addr, align 8
  store %struct._Py_clock_info_t* %info, %struct._Py_clock_info_t** %info.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %tp.addr, align 8
  %1 = load %struct._Py_clock_info_t*, %struct._Py_clock_info_t** %info.addr, align 8
  call void @pygettimeofday(%struct.timeval* %0, %struct._Py_clock_info_t* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @_PyLong_AsTime_t(%struct._object* %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %val = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i64 @PyLong_AsLongLong(%struct._object* %0)
  store i64 %call, i64* %val, align 8
  %1 = load i64, i64* %val, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call2 = call i32 @PyErr_ExceptionMatches(%struct._object* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @error_time_t_overflow()
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  store i64 -1, i64* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %val, align 8
  store i64 %3, i64* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.end
  %4 = load i64, i64* %retval
  ret i64 %4
}

declare i64 @PyLong_AsLongLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @error_time_t_overflow() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyLong_FromTime_t(i64 %t) #0 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8
  %0 = load i64, i64* %t.addr, align 8
  %call = call %struct._object* @PyLong_FromLongLong(i64 %0)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromLongLong(i64) #1

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTime_t(%struct._object* %obj, i64* %sec, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  %d = alloca double, align 8
  %intpart = alloca double, align 8
  %err = alloca double, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %sec, i64** %sec.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.19

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %4)
  store double %call2, double* %d, align 8
  %5 = load i32, i32* %round.addr, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then
  %6 = load double, double* %d, align 8
  %cmp5 = fcmp oge double %6, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %7 = load double, double* %d, align 8
  %call7 = call double @ceil(double %7) #5
  store double %call7, double* %d, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.4
  %8 = load double, double* %d, align 8
  %call8 = call double @floor(double %8) #5
  store double %call8, double* %d, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %9 = load double, double* %d, align 8
  %call10 = call double @modf(double %9, double* %intpart) #4
  %10 = load double, double* %intpart, align 8
  %conv = fptosi double %10 to i64
  %11 = load i64*, i64** %sec.addr, align 8
  store i64 %conv, i64* %11, align 8
  %12 = load double, double* %intpart, align 8
  %13 = load i64*, i64** %sec.addr, align 8
  %14 = load i64, i64* %13, align 8
  %conv11 = sitofp i64 %14 to double
  %sub = fsub double %12, %conv11
  store double %sub, double* %err, align 8
  %15 = load double, double* %err, align 8
  %cmp12 = fcmp ole double %15, -1.000000e+00
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.9
  %16 = load double, double* %err, align 8
  %cmp15 = fcmp oge double %16, 1.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %if.end.9
  call void @error_time_t_overflow()
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.14
  store i32 0, i32* %retval
  br label %return

if.else.19:                                       ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call20 = call i64 @_PyLong_AsTime_t(%struct._object* %17)
  %18 = load i64*, i64** %sec.addr, align 8
  store i64 %call20, i64* %18, align 8
  %19 = load i64*, i64** %sec.addr, align 8
  %20 = load i64, i64* %19, align 8
  %cmp21 = icmp eq i64 %20, -1
  br i1 %cmp21, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.else.19
  %call23 = call %struct._object* @PyErr_Occurred()
  %tobool24 = icmp ne %struct._object* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %if.else.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.end.18, %if.then.17
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @modf(double, double*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTimespec(%struct._object* %obj, i64* %sec, i64* %nsec, i32 %round) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %nsec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %sec, i64** %sec.addr, align 8
  store i64* %nsec, i64** %nsec.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = load i64*, i64** %sec.addr, align 8
  %2 = load i64*, i64** %nsec.addr, align 8
  %3 = load i32, i32* %round.addr, align 4
  %call = call i32 @_PyTime_ObjectToDenominator(%struct._object* %0, i64* %1, i64* %2, double 1.000000e+09, i32 %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @_PyTime_ObjectToDenominator(%struct._object* %obj, i64* %sec, i64* %numerator, double %denominator, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %numerator.addr = alloca i64*, align 8
  %denominator.addr = alloca double, align 8
  %round.addr = alloca i32, align 4
  %d = alloca double, align 8
  %intpart = alloca double, align 8
  %err = alloca double, align 8
  %floatpart = alloca double, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %sec, i64** %sec.addr, align 8
  store i64* %numerator, i64** %numerator.addr, align 8
  store double %denominator, double* %denominator.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.28

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call2 = call double @PyFloat_AsDouble(%struct._object* %4)
  store double %call2, double* %d, align 8
  %5 = load double, double* %d, align 8
  %call3 = call double @modf(double %5, double* %intpart) #4
  store volatile double %call3, double* %floatpart, align 8
  %6 = load volatile double, double* %floatpart, align 8
  %cmp4 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load volatile double, double* %floatpart, align 8
  %add = fadd double 1.000000e+00, %7
  store volatile double %add, double* %floatpart, align 8
  %8 = load double, double* %intpart, align 8
  %sub = fsub double %8, 1.000000e+00
  store double %sub, double* %intpart, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %9 = load double, double* %denominator.addr, align 8
  %10 = load volatile double, double* %floatpart, align 8
  %mul = fmul double %10, %9
  store volatile double %mul, double* %floatpart, align 8
  %11 = load i32, i32* %round.addr, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %12 = load double, double* %intpart, align 8
  %cmp8 = fcmp oge double %12, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %13 = load volatile double, double* %floatpart, align 8
  %call10 = call double @ceil(double %13) #5
  store volatile double %call10, double* %floatpart, align 8
  %14 = load volatile double, double* %floatpart, align 8
  %15 = load double, double* %denominator.addr, align 8
  %cmp11 = fcmp oge double %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  store volatile double 0.000000e+00, double* %floatpart, align 8
  %16 = load double, double* %intpart, align 8
  %add13 = fadd double %16, 1.000000e+00
  store double %add13, double* %intpart, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  %17 = load volatile double, double* %floatpart, align 8
  %call15 = call double @floor(double %17) #5
  store volatile double %call15, double* %floatpart, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %18 = load double, double* %intpart, align 8
  %conv = fptosi double %18 to i64
  %19 = load i64*, i64** %sec.addr, align 8
  store i64 %conv, i64* %19, align 8
  %20 = load double, double* %intpart, align 8
  %21 = load i64*, i64** %sec.addr, align 8
  %22 = load i64, i64* %21, align 8
  %conv18 = sitofp i64 %22 to double
  %sub19 = fsub double %20, %conv18
  store double %sub19, double* %err, align 8
  %23 = load double, double* %err, align 8
  %cmp20 = fcmp ole double %23, -1.000000e+00
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.end.17
  %24 = load double, double* %err, align 8
  %cmp23 = fcmp oge double %24, 1.000000e+00
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.22, %if.end.17
  call void @error_time_t_overflow()
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.22
  %25 = load volatile double, double* %floatpart, align 8
  %conv27 = fptosi double %25 to i64
  %26 = load i64*, i64** %numerator.addr, align 8
  store i64 %conv27, i64* %26, align 8
  store i32 0, i32* %retval
  br label %return

if.else.28:                                       ; preds = %lor.lhs.false
  %27 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call29 = call i64 @_PyLong_AsTime_t(%struct._object* %27)
  %28 = load i64*, i64** %sec.addr, align 8
  store i64 %call29, i64* %28, align 8
  %29 = load i64*, i64** %sec.addr, align 8
  %30 = load i64, i64* %29, align 8
  %cmp30 = icmp eq i64 %30, -1
  br i1 %cmp30, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.else.28
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool33 = icmp ne %struct._object* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true, %if.else.28
  %31 = load i64*, i64** %numerator.addr, align 8
  store i64 0, i64* %31, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.end.26, %if.then.25
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @_PyTime_ObjectToTimeval(%struct._object* %obj, i64* %sec, i64* %usec, i32 %round) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %sec.addr = alloca i64*, align 8
  %usec.addr = alloca i64*, align 8
  %round.addr = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %sec, i64** %sec.addr, align 8
  store i64* %usec, i64** %usec.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = load i64*, i64** %sec.addr, align 8
  %2 = load i64*, i64** %usec.addr, align 8
  %3 = load i32, i32* %round.addr, align 4
  %call = call i32 @_PyTime_ObjectToDenominator(%struct._object* %0, i64* %1, i64* %2, double 1.000000e+06, i32 %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @_PyTime_Init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare i32 @ftime(%struct.timeb*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
