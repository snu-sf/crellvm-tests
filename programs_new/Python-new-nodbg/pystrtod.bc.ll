; ModuleID = './pystrtod.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"could not convert string to float: %.200s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"value too large to convert to float: %.200s\00", align 1
@lc_float_strings = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@uc_float_strings = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [18 x i8] c"Python/pystrtod.c\00", align 1
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%+.02d\00", align 1

; Function Attrs: nounwind uwtable
define double @_Py_parse_inf_or_nan(i8* %p, i8** %endptr) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %retval1 = alloca double, align 8
  %s = alloca i8*, align 8
  %negate = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8** %endptr, i8*** %endptr.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %negate, align 4
  %3 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr7 = getelementptr i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %7 = load i8*, i8** %s, align 8
  %call = call i32 @case_insensitive_match(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.end.8
  %8 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 3
  store i8* %add.ptr, i8** %s, align 8
  %9 = load i8*, i8** %s, align 8
  %call10 = call i32 @case_insensitive_match(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  %10 = load i8*, i8** %s, align 8
  %add.ptr13 = getelementptr i8, i8* %10, i64 5
  store i8* %add.ptr13, i8** %s, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  %11 = load i32, i32* %negate, align 4
  %call15 = call double @_Py_dg_infinity(i32 %11)
  store double %call15, double* %retval1, align 8
  br label %if.end.24

if.else.16:                                       ; preds = %if.end.8
  %12 = load i8*, i8** %s, align 8
  %call17 = call i32 @case_insensitive_match(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else.16
  %13 = load i8*, i8** %s, align 8
  %add.ptr20 = getelementptr i8, i8* %13, i64 3
  store i8* %add.ptr20, i8** %s, align 8
  %14 = load i32, i32* %negate, align 4
  %call21 = call double @_Py_dg_stdnan(i32 %14)
  store double %call21, double* %retval1, align 8
  br label %if.end.23

if.else.22:                                       ; preds = %if.else.16
  %15 = load i8*, i8** %p.addr, align 8
  store i8* %15, i8** %s, align 8
  store double -1.000000e+00, double* %retval1, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %16 = load i8*, i8** %s, align 8
  %17 = load i8**, i8*** %endptr.addr, align 8
  store i8* %16, i8** %17, align 8
  %18 = load double, double* %retval1, align 8
  ret double %18
}

; Function Attrs: nounwind uwtable
define internal i32 @case_insensitive_match(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %t.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %and = and i32 %conv1, 255
  %conv2 = trunc i32 %and to i8
  %idxprom = zext i8 %conv2 to i64
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load i8*, i8** %t.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %9 = load i8*, i8** %t.addr, align 8
  %incdec.ptr6 = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %t.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  %cond = select i1 %tobool8, i32 0, i32 1
  ret i32 %cond
}

declare double @_Py_dg_infinity(i32) #1

declare double @_Py_dg_stdnan(i32) #1

; Function Attrs: nounwind uwtable
define double @PyOS_string_to_double(i8* %s, i8** %endptr, %struct._object* %overflow_exception) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %overflow_exception.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %result = alloca double, align 8
  %fail_pos = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %endptr, i8*** %endptr.addr, align 8
  store %struct._object* %overflow_exception, %struct._object** %overflow_exception.addr, align 8
  store double -1.000000e+00, double* %result, align 8
  %call = call i32* @__errno_location() #5
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call1 = call double @_PyOS_ascii_strtod(i8* %0, i8** %fail_pos)
  store double %call1, double* %x, align 8
  %call2 = call i32* @__errno_location() #5
  %1 = load i32, i32* %call2, align 4
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_NoMemory()
  %2 = load i8*, i8** %s.addr, align 8
  store i8* %2, i8** %fail_pos, align 8
  br label %if.end.29

if.else:                                          ; preds = %entry
  %3 = load i8**, i8*** %endptr.addr, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.else.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %4 = load i8*, i8** %fail_pos, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %cmp4 = icmp eq i8* %4, %5
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i8*, i8** %fail_pos, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %9)
  br label %if.end.28

if.else.9:                                        ; preds = %lor.lhs.false, %if.else
  %10 = load i8*, i8** %fail_pos, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %cmp10 = icmp eq i8* %10, %11
  br i1 %cmp10, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.9
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %13)
  br label %if.end.27

if.else.14:                                       ; preds = %if.else.9
  %call15 = call i32* @__errno_location() #5
  %14 = load i32, i32* %call15, align 4
  %cmp16 = icmp eq i32 %14, 34
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.26

land.lhs.true.18:                                 ; preds = %if.else.14
  %15 = load double, double* %x, align 8
  %call19 = call double @fabs(double %15) #5
  %cmp20 = fcmp oge double %call19, 1.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.26

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %16 = load %struct._object*, %struct._object** %overflow_exception.addr, align 8
  %tobool23 = icmp ne %struct._object* %16, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %land.lhs.true.22
  %17 = load %struct._object*, %struct._object** %overflow_exception.addr, align 8
  %18 = load i8*, i8** %s.addr, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %18)
  br label %if.end

if.else.26:                                       ; preds = %land.lhs.true.22, %land.lhs.true.18, %if.else.14
  %19 = load double, double* %x, align 8
  store double %19, double* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.7
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %20 = load i8**, i8*** %endptr.addr, align 8
  %cmp30 = icmp ne i8** %20, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %21 = load i8*, i8** %fail_pos, align 8
  %22 = load i8**, i8*** %endptr.addr, align 8
  store i8* %21, i8** %22, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %23 = load double, double* %result, align 8
  ret double %23
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define internal double @_PyOS_ascii_strtod(i8* %nptr, i8** %endptr) #0 {
entry:
  %nptr.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %result = alloca double, align 8
  %old_387controlword = alloca i16, align 2
  %new_387controlword = alloca i16, align 2
  store i8* %nptr, i8** %nptr.addr, align 8
  store i8** %endptr, i8*** %endptr.addr, align 8
  %call = call i32* @__errno_location() #5
  store i32 0, i32* %call, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call1 = call zeroext i16 @_Py_get_387controlword()
  store i16 %call1, i16* %old_387controlword, align 2
  %0 = load i16, i16* %old_387controlword, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, -3841
  %or = or i32 %and, 512
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %new_387controlword, align 2
  %1 = load i16, i16* %new_387controlword, align 2
  %conv3 = zext i16 %1 to i32
  %2 = load i16, i16* %old_387controlword, align 2
  %conv4 = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv3, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i16, i16* %new_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %nptr.addr, align 8
  %5 = load i8**, i8*** %endptr.addr, align 8
  %call6 = call double @_Py_dg_strtod(i8* %4, i8** %5)
  store double %call6, double* %result, align 8
  %6 = load i16, i16* %new_387controlword, align 2
  %conv7 = zext i16 %6 to i32
  %7 = load i16, i16* %old_387controlword, align 2
  %conv8 = zext i16 %7 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  %8 = load i16, i16* %old_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %8)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.end
  %9 = load i8**, i8*** %endptr.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %nptr.addr, align 8
  %cmp13 = icmp eq i8* %10, %11
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %12 = load i8*, i8** %nptr.addr, align 8
  %13 = load i8**, i8*** %endptr.addr, align 8
  %call16 = call double @_Py_parse_inf_or_nan(i8* %12, i8** %13)
  store double %call16, double* %result, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %14 = load double, double* %result, align 8
  ret double %14
}

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i8* @PyOS_double_to_string(double %val, i8 signext %format_code, i32 %precision, i32 %flags, i32* %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %val.addr = alloca double, align 8
  %format_code.addr = alloca i8, align 1
  %precision.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  %float_strings = alloca i8**, align 8
  %mode = alloca i32, align 4
  store double %val, double* %val.addr, align 8
  store i8 %format_code, i8* %format_code.addr, align 1
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %type, i32** %type.addr, align 8
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8
  %0 = load i8, i8* %format_code.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb.1
    i32 70, label %sw.bb.2
    i32 102, label %sw.bb.3
    i32 71, label %sw.bb.4
    i32 103, label %sw.bb.5
    i32 114, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8
  store i8 101, i8* %format_code.addr, align 1
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  store i32 2, i32* %mode, align 4
  %1 = load i32, i32* %precision.addr, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %precision.addr, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8
  store i8 102, i8* %format_code.addr, align 1
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %sw.bb.2
  store i32 3, i32* %mode, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8
  store i8 103, i8* %format_code.addr, align 1
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb.4
  store i32 2, i32* %mode, align 4
  %2 = load i32, i32* %precision.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  store i32 1, i32* %precision.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 0, i32* %mode, align 4
  %3 = load i32, i32* %precision.addr, align 4
  %cmp8 = icmp ne i32 %3, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.7
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1221)
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1227)
  store i8* null, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.11, %if.end, %sw.bb.3, %sw.bb.1
  %4 = load double, double* %val.addr, align 8
  %5 = load i8, i8* %format_code.addr, align 1
  %6 = load i32, i32* %mode, align 4
  %7 = load i32, i32* %precision.addr, align 4
  %8 = load i32, i32* %flags.addr, align 4
  %and = and i32 %8, 1
  %9 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %9, 2
  %10 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %10, 4
  %11 = load i8**, i8*** %float_strings, align 8
  %12 = load i32*, i32** %type.addr, align 8
  %call = call i8* @format_float_short(double %4, i8 signext %5, i32 %6, i32 %7, i32 %and, i32 %and12, i32 %and13, i8** %11, i32* %12)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.10
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @format_float_short(double %d, i8 signext %format_code, i32 %mode, i32 %precision, i32 %always_add_sign, i32 %add_dot_0_if_integer, i32 %use_alt_formatting, i8** %float_strings, i32* %type) #0 {
entry:
  %d.addr = alloca double, align 8
  %format_code.addr = alloca i8, align 1
  %mode.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %always_add_sign.addr = alloca i32, align 4
  %add_dot_0_if_integer.addr = alloca i32, align 4
  %use_alt_formatting.addr = alloca i32, align 4
  %float_strings.addr = alloca i8**, align 8
  %type.addr = alloca i32*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %bufsize = alloca i64, align 8
  %digits = alloca i8*, align 8
  %digits_end = alloca i8*, align 8
  %decpt_as_int = alloca i32, align 4
  %sign = alloca i32, align 4
  %exp_len = alloca i32, align 4
  %exp = alloca i32, align 4
  %use_exp = alloca i32, align 4
  %decpt = alloca i64, align 8
  %digits_len = alloca i64, align 8
  %vdigits_start = alloca i64, align 8
  %vdigits_end = alloca i64, align 8
  %old_387controlword = alloca i16, align 2
  %new_387controlword = alloca i16, align 2
  store double %d, double* %d.addr, align 8
  store i8 %format_code, i8* %format_code.addr, align 1
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %precision, i32* %precision.addr, align 4
  store i32 %always_add_sign, i32* %always_add_sign.addr, align 4
  store i32 %add_dot_0_if_integer, i32* %add_dot_0_if_integer.addr, align 4
  store i32 %use_alt_formatting, i32* %use_alt_formatting.addr, align 4
  store i8** %float_strings, i8*** %float_strings.addr, align 8
  store i32* %type, i32** %type.addr, align 8
  store i8* null, i8** %buf, align 8
  store i8* null, i8** %p, align 8
  store i64 0, i64* %bufsize, align 8
  store i32 0, i32* %exp, align 4
  store i32 0, i32* %use_exp, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call zeroext i16 @_Py_get_387controlword()
  store i16 %call, i16* %old_387controlword, align 2
  %0 = load i16, i16* %old_387controlword, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, -3841
  %or = or i32 %and, 512
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %new_387controlword, align 2
  %1 = load i16, i16* %new_387controlword, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i16, i16* %old_387controlword, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv2, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i16, i16* %new_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load double, double* %d.addr, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load i32, i32* %precision.addr, align 4
  %call5 = call i8* @_Py_dg_dtoa(double %4, i32 %5, i32 %6, i32* %decpt_as_int, i32* %sign, i8** %digits_end)
  store i8* %call5, i8** %digits, align 8
  %7 = load i16, i16* %new_387controlword, align 2
  %conv6 = zext i16 %7 to i32
  %8 = load i16, i16* %old_387controlword, align 2
  %conv7 = zext i16 %8 to i32
  %cmp8 = icmp ne i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %9 = load i16, i16* %old_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end
  %10 = load i32, i32* %decpt_as_int, align 4
  %conv12 = sext i32 %10 to i64
  store i64 %conv12, i64* %decpt, align 8
  %11 = load i8*, i8** %digits, align 8
  %cmp13 = icmp eq i8* %11, null
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %call16 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.17:                                        ; preds = %if.end.11
  %12 = load i8*, i8** %digits_end, align 8
  %13 = load i8*, i8** %digits, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %digits_len, align 8
  %14 = load i64, i64* %digits_len, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %if.end.17
  %15 = load i8*, i8** %digits, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %16 to i32
  %and19 = and i32 %conv18, 255
  %conv20 = trunc i32 %and19 to i8
  %idxprom = zext i8 %conv20 to i64
  %arrayidx21 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx21, align 4
  %and22 = and i32 %17, 4
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.end.85, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %digits, align 8
  %arrayidx25 = getelementptr i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %19 to i32
  %cmp27 = icmp eq i32 %conv26, 110
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %20 = load i8*, i8** %digits, align 8
  %arrayidx29 = getelementptr i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %21 to i32
  %cmp31 = icmp eq i32 %conv30, 78
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.24
  store i32 0, i32* %sign, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false
  store i64 5, i64* %bufsize, align 8
  %22 = load i64, i64* %bufsize, align 8
  %call35 = call i8* @PyMem_Malloc(i64 %22)
  store i8* %call35, i8** %buf, align 8
  %23 = load i8*, i8** %buf, align 8
  %cmp36 = icmp eq i8* %23, null
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %call39 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.40:                                        ; preds = %if.end.34
  %24 = load i8*, i8** %buf, align 8
  store i8* %24, i8** %p, align 8
  %25 = load i32, i32* %sign, align 4
  %cmp41 = icmp eq i32 %25, 1
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.40
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 45, i8* %26, align 1
  br label %if.end.48

if.else:                                          ; preds = %if.end.40
  %27 = load i32, i32* %always_add_sign.addr, align 4
  %tobool44 = icmp ne i32 %27, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.else
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 43, i8* %28, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.43
  %29 = load i8*, i8** %digits, align 8
  %arrayidx49 = getelementptr i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %30 to i32
  %cmp51 = icmp eq i32 %conv50, 105
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.end.48
  %31 = load i8*, i8** %digits, align 8
  %arrayidx54 = getelementptr i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %32 to i32
  %cmp56 = icmp eq i32 %conv55, 73
  br i1 %cmp56, label %if.then.58, label %if.else.64

if.then.58:                                       ; preds = %lor.lhs.false.53, %if.end.48
  %33 = load i8*, i8** %p, align 8
  %34 = load i8**, i8*** %float_strings.addr, align 8
  %arrayidx59 = getelementptr i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i8* @strncpy(i8* %33, i8* %35, i64 3) #4
  %36 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %36, i64 3
  store i8* %add.ptr, i8** %p, align 8
  %37 = load i32*, i32** %type.addr, align 8
  %tobool61 = icmp ne i32* %37, null
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.58
  %38 = load i32*, i32** %type.addr, align 8
  store i32 1, i32* %38, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.58
  br label %if.end.84

if.else.64:                                       ; preds = %lor.lhs.false.53
  %39 = load i8*, i8** %digits, align 8
  %arrayidx65 = getelementptr i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %40 to i32
  %cmp67 = icmp eq i32 %conv66, 110
  br i1 %cmp67, label %if.then.74, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.else.64
  %41 = load i8*, i8** %digits, align 8
  %arrayidx70 = getelementptr i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %42 to i32
  %cmp72 = icmp eq i32 %conv71, 78
  br i1 %cmp72, label %if.then.74, label %if.else.81

if.then.74:                                       ; preds = %lor.lhs.false.69, %if.else.64
  %43 = load i8*, i8** %p, align 8
  %44 = load i8**, i8*** %float_strings.addr, align 8
  %arrayidx75 = getelementptr i8*, i8** %44, i64 1
  %45 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i8* @strncpy(i8* %43, i8* %45, i64 3) #4
  %46 = load i8*, i8** %p, align 8
  %add.ptr77 = getelementptr i8, i8* %46, i64 3
  store i8* %add.ptr77, i8** %p, align 8
  %47 = load i32*, i32** %type.addr, align 8
  %tobool78 = icmp ne i32* %47, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.74
  %48 = load i32*, i32** %type.addr, align 8
  store i32 2, i32* %48, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.74
  br label %if.end.83

if.else.81:                                       ; preds = %lor.lhs.false.69
  %49 = load i8*, i8** %p, align 8
  %call82 = call i8* @strncpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 3) #4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.end.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.63
  br label %exit

if.end.85:                                        ; preds = %land.lhs.true, %if.end.17
  %50 = load i32*, i32** %type.addr, align 8
  %tobool86 = icmp ne i32* %50, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  %51 = load i32*, i32** %type.addr, align 8
  store i32 0, i32* %51, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  %52 = load i64, i64* %digits_len, align 8
  store i64 %52, i64* %vdigits_end, align 8
  %53 = load i8, i8* %format_code.addr, align 1
  %conv89 = sext i8 %53 to i32
  switch i32 %conv89, label %sw.default [
    i32 101, label %sw.bb
    i32 102, label %sw.bb.91
    i32 103, label %sw.bb.93
    i32 114, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %if.end.88
  store i32 1, i32* %use_exp, align 4
  %54 = load i32, i32* %precision.addr, align 4
  %conv90 = sext i32 %54 to i64
  store i64 %conv90, i64* %vdigits_end, align 8
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.88
  %55 = load i64, i64* %decpt, align 8
  %56 = load i32, i32* %precision.addr, align 4
  %conv92 = sext i32 %56 to i64
  %add = add i64 %55, %conv92
  store i64 %add, i64* %vdigits_end, align 8
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.88
  %57 = load i64, i64* %decpt, align 8
  %cmp94 = icmp sle i64 %57, -4
  br i1 %cmp94, label %if.then.101, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %sw.bb.93
  %58 = load i64, i64* %decpt, align 8
  %59 = load i32, i32* %add_dot_0_if_integer.addr, align 4
  %tobool97 = icmp ne i32 %59, 0
  br i1 %tobool97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.96
  %60 = load i32, i32* %precision.addr, align 4
  %sub = sub i32 %60, 1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.96
  %61 = load i32, i32* %precision.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %61, %cond.false ]
  %conv98 = sext i32 %cond to i64
  %cmp99 = icmp sgt i64 %58, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end, %sw.bb.93
  store i32 1, i32* %use_exp, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %cond.end
  %62 = load i32, i32* %use_alt_formatting.addr, align 4
  %tobool103 = icmp ne i32 %62, 0
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.102
  %63 = load i32, i32* %precision.addr, align 4
  %conv105 = sext i32 %63 to i64
  store i64 %conv105, i64* %vdigits_end, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.102
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.88
  %64 = load i64, i64* %decpt, align 8
  %cmp108 = icmp sle i64 %64, -4
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %sw.bb.107
  %65 = load i64, i64* %decpt, align 8
  %cmp111 = icmp sgt i64 %65, 16
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %lor.lhs.false.110, %sw.bb.107
  store i32 1, i32* %use_exp, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %lor.lhs.false.110
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.88
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1055)
  br label %exit

sw.epilog:                                        ; preds = %if.end.114, %if.end.106, %sw.bb.91, %sw.bb
  %66 = load i32, i32* %use_exp, align 4
  %tobool115 = icmp ne i32 %66, 0
  br i1 %tobool115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %sw.epilog
  %67 = load i64, i64* %decpt, align 8
  %conv117 = trunc i64 %67 to i32
  %sub118 = sub i32 %conv117, 1
  store i32 %sub118, i32* %exp, align 4
  store i64 1, i64* %decpt, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %sw.epilog
  %68 = load i64, i64* %decpt, align 8
  %cmp120 = icmp sle i64 %68, 0
  br i1 %cmp120, label %cond.true.122, label %cond.false.124

cond.true.122:                                    ; preds = %if.end.119
  %69 = load i64, i64* %decpt, align 8
  %sub123 = sub i64 %69, 1
  br label %cond.end.125

cond.false.124:                                   ; preds = %if.end.119
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.122
  %cond126 = phi i64 [ %sub123, %cond.true.122 ], [ 0, %cond.false.124 ]
  store i64 %cond126, i64* %vdigits_start, align 8
  %70 = load i32, i32* %use_exp, align 4
  %tobool127 = icmp ne i32 %70, 0
  br i1 %tobool127, label %if.else.138, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %cond.end.125
  %71 = load i32, i32* %add_dot_0_if_integer.addr, align 4
  %tobool129 = icmp ne i32 %71, 0
  br i1 %tobool129, label %if.then.130, label %if.else.138

if.then.130:                                      ; preds = %land.lhs.true.128
  %72 = load i64, i64* %vdigits_end, align 8
  %73 = load i64, i64* %decpt, align 8
  %cmp131 = icmp sgt i64 %72, %73
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.130
  %74 = load i64, i64* %vdigits_end, align 8
  br label %cond.end.136

cond.false.134:                                   ; preds = %if.then.130
  %75 = load i64, i64* %decpt, align 8
  %add135 = add i64 %75, 1
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.133
  %cond137 = phi i64 [ %74, %cond.true.133 ], [ %add135, %cond.false.134 ]
  store i64 %cond137, i64* %vdigits_end, align 8
  br label %if.end.145

if.else.138:                                      ; preds = %land.lhs.true.128, %cond.end.125
  %76 = load i64, i64* %vdigits_end, align 8
  %77 = load i64, i64* %decpt, align 8
  %cmp139 = icmp sgt i64 %76, %77
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %if.else.138
  %78 = load i64, i64* %vdigits_end, align 8
  br label %cond.end.143

cond.false.142:                                   ; preds = %if.else.138
  %79 = load i64, i64* %decpt, align 8
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi i64 [ %78, %cond.true.141 ], [ %79, %cond.false.142 ]
  store i64 %cond144, i64* %vdigits_end, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.143, %cond.end.136
  %80 = load i64, i64* %vdigits_end, align 8
  %81 = load i64, i64* %vdigits_start, align 8
  %sub146 = sub i64 %80, %81
  %add147 = add i64 3, %sub146
  %82 = load i32, i32* %use_exp, align 4
  %tobool148 = icmp ne i32 %82, 0
  %cond149 = select i1 %tobool148, i32 5, i32 0
  %conv150 = sext i32 %cond149 to i64
  %add151 = add i64 %add147, %conv150
  store i64 %add151, i64* %bufsize, align 8
  %83 = load i64, i64* %bufsize, align 8
  %call152 = call i8* @PyMem_Malloc(i64 %83)
  store i8* %call152, i8** %buf, align 8
  %84 = load i8*, i8** %buf, align 8
  %cmp153 = icmp eq i8* %84, null
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.145
  %call156 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.157:                                       ; preds = %if.end.145
  %85 = load i8*, i8** %buf, align 8
  store i8* %85, i8** %p, align 8
  %86 = load i32, i32* %sign, align 4
  %cmp158 = icmp eq i32 %86, 1
  br i1 %cmp158, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %if.end.157
  %87 = load i8*, i8** %p, align 8
  %incdec.ptr161 = getelementptr i8, i8* %87, i32 1
  store i8* %incdec.ptr161, i8** %p, align 8
  store i8 45, i8* %87, align 1
  br label %if.end.167

if.else.162:                                      ; preds = %if.end.157
  %88 = load i32, i32* %always_add_sign.addr, align 4
  %tobool163 = icmp ne i32 %88, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.else.162
  %89 = load i8*, i8** %p, align 8
  %incdec.ptr165 = getelementptr i8, i8* %89, i32 1
  store i8* %incdec.ptr165, i8** %p, align 8
  store i8 43, i8* %89, align 1
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.else.162
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.160
  %90 = load i64, i64* %decpt, align 8
  %cmp168 = icmp sle i64 %90, 0
  br i1 %cmp168, label %if.then.170, label %if.else.178

if.then.170:                                      ; preds = %if.end.167
  %91 = load i8*, i8** %p, align 8
  %92 = load i64, i64* %decpt, align 8
  %93 = load i64, i64* %vdigits_start, align 8
  %sub171 = sub i64 %92, %93
  call void @llvm.memset.p0i8.i64(i8* %91, i8 48, i64 %sub171, i32 1, i1 false)
  %94 = load i64, i64* %decpt, align 8
  %95 = load i64, i64* %vdigits_start, align 8
  %sub172 = sub i64 %94, %95
  %96 = load i8*, i8** %p, align 8
  %add.ptr173 = getelementptr i8, i8* %96, i64 %sub172
  store i8* %add.ptr173, i8** %p, align 8
  %97 = load i8*, i8** %p, align 8
  %incdec.ptr174 = getelementptr i8, i8* %97, i32 1
  store i8* %incdec.ptr174, i8** %p, align 8
  store i8 46, i8* %97, align 1
  %98 = load i8*, i8** %p, align 8
  %99 = load i64, i64* %decpt, align 8
  %sub175 = sub i64 0, %99
  call void @llvm.memset.p0i8.i64(i8* %98, i8 48, i64 %sub175, i32 1, i1 false)
  %100 = load i64, i64* %decpt, align 8
  %sub176 = sub i64 0, %100
  %101 = load i8*, i8** %p, align 8
  %add.ptr177 = getelementptr i8, i8* %101, i64 %sub176
  store i8* %add.ptr177, i8** %p, align 8
  br label %if.end.182

if.else.178:                                      ; preds = %if.end.167
  %102 = load i8*, i8** %p, align 8
  %103 = load i64, i64* %vdigits_start, align 8
  %sub179 = sub i64 0, %103
  call void @llvm.memset.p0i8.i64(i8* %102, i8 48, i64 %sub179, i32 1, i1 false)
  %104 = load i64, i64* %vdigits_start, align 8
  %sub180 = sub i64 0, %104
  %105 = load i8*, i8** %p, align 8
  %add.ptr181 = getelementptr i8, i8* %105, i64 %sub180
  store i8* %add.ptr181, i8** %p, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.178, %if.then.170
  %106 = load i64, i64* %decpt, align 8
  %cmp183 = icmp slt i64 0, %106
  br i1 %cmp183, label %land.lhs.true.185, label %if.else.199

land.lhs.true.185:                                ; preds = %if.end.182
  %107 = load i64, i64* %decpt, align 8
  %108 = load i64, i64* %digits_len, align 8
  %cmp186 = icmp sle i64 %107, %108
  br i1 %cmp186, label %if.then.188, label %if.else.199

if.then.188:                                      ; preds = %land.lhs.true.185
  %109 = load i8*, i8** %p, align 8
  %110 = load i8*, i8** %digits, align 8
  %111 = load i64, i64* %decpt, align 8
  %sub189 = sub i64 %111, 0
  %call190 = call i8* @strncpy(i8* %109, i8* %110, i64 %sub189) #4
  %112 = load i64, i64* %decpt, align 8
  %sub191 = sub i64 %112, 0
  %113 = load i8*, i8** %p, align 8
  %add.ptr192 = getelementptr i8, i8* %113, i64 %sub191
  store i8* %add.ptr192, i8** %p, align 8
  %114 = load i8*, i8** %p, align 8
  %incdec.ptr193 = getelementptr i8, i8* %114, i32 1
  store i8* %incdec.ptr193, i8** %p, align 8
  store i8 46, i8* %114, align 1
  %115 = load i8*, i8** %p, align 8
  %116 = load i8*, i8** %digits, align 8
  %117 = load i64, i64* %decpt, align 8
  %add.ptr194 = getelementptr i8, i8* %116, i64 %117
  %118 = load i64, i64* %digits_len, align 8
  %119 = load i64, i64* %decpt, align 8
  %sub195 = sub i64 %118, %119
  %call196 = call i8* @strncpy(i8* %115, i8* %add.ptr194, i64 %sub195) #4
  %120 = load i64, i64* %digits_len, align 8
  %121 = load i64, i64* %decpt, align 8
  %sub197 = sub i64 %120, %121
  %122 = load i8*, i8** %p, align 8
  %add.ptr198 = getelementptr i8, i8* %122, i64 %sub197
  store i8* %add.ptr198, i8** %p, align 8
  br label %if.end.202

if.else.199:                                      ; preds = %land.lhs.true.185, %if.end.182
  %123 = load i8*, i8** %p, align 8
  %124 = load i8*, i8** %digits, align 8
  %125 = load i64, i64* %digits_len, align 8
  %call200 = call i8* @strncpy(i8* %123, i8* %124, i64 %125) #4
  %126 = load i64, i64* %digits_len, align 8
  %127 = load i8*, i8** %p, align 8
  %add.ptr201 = getelementptr i8, i8* %127, i64 %126
  store i8* %add.ptr201, i8** %p, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.188
  %128 = load i64, i64* %digits_len, align 8
  %129 = load i64, i64* %decpt, align 8
  %cmp203 = icmp slt i64 %128, %129
  br i1 %cmp203, label %if.then.205, label %if.else.213

if.then.205:                                      ; preds = %if.end.202
  %130 = load i8*, i8** %p, align 8
  %131 = load i64, i64* %decpt, align 8
  %132 = load i64, i64* %digits_len, align 8
  %sub206 = sub i64 %131, %132
  call void @llvm.memset.p0i8.i64(i8* %130, i8 48, i64 %sub206, i32 1, i1 false)
  %133 = load i64, i64* %decpt, align 8
  %134 = load i64, i64* %digits_len, align 8
  %sub207 = sub i64 %133, %134
  %135 = load i8*, i8** %p, align 8
  %add.ptr208 = getelementptr i8, i8* %135, i64 %sub207
  store i8* %add.ptr208, i8** %p, align 8
  %136 = load i8*, i8** %p, align 8
  %incdec.ptr209 = getelementptr i8, i8* %136, i32 1
  store i8* %incdec.ptr209, i8** %p, align 8
  store i8 46, i8* %136, align 1
  %137 = load i8*, i8** %p, align 8
  %138 = load i64, i64* %vdigits_end, align 8
  %139 = load i64, i64* %decpt, align 8
  %sub210 = sub i64 %138, %139
  call void @llvm.memset.p0i8.i64(i8* %137, i8 48, i64 %sub210, i32 1, i1 false)
  %140 = load i64, i64* %vdigits_end, align 8
  %141 = load i64, i64* %decpt, align 8
  %sub211 = sub i64 %140, %141
  %142 = load i8*, i8** %p, align 8
  %add.ptr212 = getelementptr i8, i8* %142, i64 %sub211
  store i8* %add.ptr212, i8** %p, align 8
  br label %if.end.217

if.else.213:                                      ; preds = %if.end.202
  %143 = load i8*, i8** %p, align 8
  %144 = load i64, i64* %vdigits_end, align 8
  %145 = load i64, i64* %digits_len, align 8
  %sub214 = sub i64 %144, %145
  call void @llvm.memset.p0i8.i64(i8* %143, i8 48, i64 %sub214, i32 1, i1 false)
  %146 = load i64, i64* %vdigits_end, align 8
  %147 = load i64, i64* %digits_len, align 8
  %sub215 = sub i64 %146, %147
  %148 = load i8*, i8** %p, align 8
  %add.ptr216 = getelementptr i8, i8* %148, i64 %sub215
  store i8* %add.ptr216, i8** %p, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.213, %if.then.205
  %149 = load i8*, i8** %p, align 8
  %arrayidx218 = getelementptr i8, i8* %149, i64 -1
  %150 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %150 to i32
  %cmp220 = icmp eq i32 %conv219, 46
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.226

land.lhs.true.222:                                ; preds = %if.end.217
  %151 = load i32, i32* %use_alt_formatting.addr, align 4
  %tobool223 = icmp ne i32 %151, 0
  br i1 %tobool223, label %if.end.226, label %if.then.224

if.then.224:                                      ; preds = %land.lhs.true.222
  %152 = load i8*, i8** %p, align 8
  %incdec.ptr225 = getelementptr i8, i8* %152, i32 -1
  store i8* %incdec.ptr225, i8** %p, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %land.lhs.true.222, %if.end.217
  %153 = load i32, i32* %use_exp, align 4
  %tobool227 = icmp ne i32 %153, 0
  br i1 %tobool227, label %if.then.228, label %if.end.234

if.then.228:                                      ; preds = %if.end.226
  %154 = load i8**, i8*** %float_strings.addr, align 8
  %arrayidx229 = getelementptr i8*, i8** %154, i64 2
  %155 = load i8*, i8** %arrayidx229, align 8
  %arrayidx230 = getelementptr i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx230, align 1
  %157 = load i8*, i8** %p, align 8
  %incdec.ptr231 = getelementptr i8, i8* %157, i32 1
  store i8* %incdec.ptr231, i8** %p, align 8
  store i8 %156, i8* %157, align 1
  %158 = load i8*, i8** %p, align 8
  %159 = load i32, i32* %exp, align 4
  %call232 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %159) #4
  store i32 %call232, i32* %exp_len, align 4
  %160 = load i32, i32* %exp_len, align 4
  %161 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %160 to i64
  %add.ptr233 = getelementptr i8, i8* %161, i64 %idx.ext
  store i8* %add.ptr233, i8** %p, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.228, %if.end.226
  br label %exit

exit:                                             ; preds = %if.end.234, %if.then.155, %sw.default, %if.end.84, %if.then.38, %if.then.15
  %162 = load i8*, i8** %buf, align 8
  %tobool235 = icmp ne i8* %162, null
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %exit
  %163 = load i8*, i8** %p, align 8
  store i8 0, i8* %163, align 1
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %exit
  %164 = load i8*, i8** %digits, align 8
  %tobool238 = icmp ne i8* %164, null
  br i1 %tobool238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.237
  %165 = load i8*, i8** %digits, align 8
  call void @_Py_dg_freedtoa(i8* %165)
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.239, %if.end.237
  %166 = load i8*, i8** %buf, align 8
  ret i8* %166
}

declare zeroext i16 @_Py_get_387controlword() #1

declare void @_Py_set_387controlword(i16 zeroext) #1

declare double @_Py_dg_strtod(i8*, i8**) #1

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @_Py_dg_freedtoa(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
