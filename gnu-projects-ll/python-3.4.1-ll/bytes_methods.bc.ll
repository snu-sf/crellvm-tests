; ModuleID = './bytes_methods.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@_Py_isspace__doc__ = constant [130 x i8] c"B.isspace() -> bool\0A\0AReturn True if all characters in B are whitespace\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_ctype_table = external constant [256 x i32], align 16
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_isalpha__doc__ = constant [130 x i8] c"B.isalpha() -> bool\0A\0AReturn True if all characters in B are alphabetic\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_isalnum__doc__ = constant [132 x i8] c"B.isalnum() -> bool\0A\0AReturn True if all characters in B are alphanumeric\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_isdigit__doc__ = constant [126 x i8] c"B.isdigit() -> bool\0A\0AReturn True if all characters in B are digits\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_islower__doc__ = constant [141 x i8] c"B.islower() -> bool\0A\0AReturn True if all cased characters in B are lowercase and there is\0Aat least one cased character in B, False otherwise.\00", align 16
@_Py_isupper__doc__ = constant [141 x i8] c"B.isupper() -> bool\0A\0AReturn True if all cased characters in B are uppercase and there is\0Aat least one cased character in B, False otherwise.\00", align 16
@_Py_istitle__doc__ = constant [230 x i8] c"B.istitle() -> bool\0A\0AReturn True if B is a titlecased string and there is at least one\0Acharacter in B, i.e. uppercase characters may only follow uncased\0Acharacters and lowercase characters only cased ones. Return False\0Aotherwise.\00", align 16
@_Py_lower__doc__ = constant [93 x i8] c"B.lower() -> copy of B\0A\0AReturn a copy of B with all ASCII characters converted to lowercase.\00", align 16
@_Py_ctype_tolower = external constant [256 x i8], align 16
@_Py_upper__doc__ = constant [93 x i8] c"B.upper() -> copy of B\0A\0AReturn a copy of B with all ASCII characters converted to uppercase.\00", align 16
@_Py_ctype_toupper = external constant [256 x i8], align 16
@_Py_title__doc__ = constant [155 x i8] c"B.title() -> copy of B\0A\0AReturn a titlecased version of B, i.e. ASCII words start with uppercase\0Acharacters, all remaining cased characters have lowercase.\00", align 16
@_Py_capitalize__doc__ = constant [124 x i8] c"B.capitalize() -> copy of B\0A\0AReturn a copy of B with only its first character capitalized (ASCII)\0Aand the rest lower-cased.\00", align 16
@_Py_swapcase__doc__ = constant [123 x i8] c"B.swapcase() -> copy of B\0A\0AReturn a copy of B with uppercase ASCII characters converted\0Ato lowercase ASCII and vice versa.\00", align 16
@_Py_maketrans__doc__ = constant [291 x i8] c"B.maketrans(frm, to) -> translation table\0A\0AReturn a translation table (a bytes object of length 256) suitable\0Afor use in the bytes or bytearray translate method where each byte\0Ain frm is mapped to the byte at the same position in to.\0AThe bytes objects frm and to must be of the same length.\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"OO:maketrans\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"maketrans arguments must have same length\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Type %.100s doesn't support the buffer API\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isspace(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 8
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %14, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %for.body
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc18 = add i64 %15, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc20 = add i64 %17, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalpha(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 3
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %14, 3
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %for.body
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc18 = add i64 %15, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc20 = add i64 %17, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalnum(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 7
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %14, 7
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %for.body
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc18 = add i64 %15, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc20 = add i64 %17, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isdigit(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 4
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %9
  store i8* %add.ptr, i8** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %14, 4
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %for.body
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc18 = add i64 %15, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc20 = add i64 %17, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_islower(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 1
  %conv3 = zext i32 %and2 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %e, align 8
  store i32 0, i32* %cased, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = zext i8 %12 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %13, 2
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc17 = add i64 %14, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %cased, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.end.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = zext i8 %17 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = trunc i32 %and20 to i8
  %idxprom22 = zext i8 %conv21 to i64
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom22
  %18 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %18, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cased, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %cased, align 4
  %conv29 = sext i32 %20 to i64
  %call30 = call %struct._object* @PyBool_FromLong(i64 %conv29)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isupper(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 2
  %conv3 = zext i32 %and2 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %e, align 8
  store i32 0, i32* %cased, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = zext i8 %12 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %13, 1
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc17 = add i64 %14, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %cased, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.end.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = zext i8 %17 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = trunc i32 %and20 to i8
  %idxprom22 = zext i8 %conv21 to i64
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom22
  %18 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %18, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %cased, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %cased, align 4
  %conv29 = sext i32 %20 to i64
  %call30 = call %struct._object* @PyBool_FromLong(i64 %conv29)
  store %struct._object* %call30, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_istitle(i8* %cptr, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %e = alloca i8*, align 8
  %cased = alloca i32, align 4
  %previous_is_cased = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %cptr.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %4, 2
  %conv3 = zext i32 %and2 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %e, align 8
  store i32 0, i32* %cased, align 4
  store i32 0, i32* %previous_is_cased, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %e, align 8
  %cmp8 = icmp ult i8* %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %ch, align 1
  %13 = load i8, i8* %ch, align 1
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %idxprom13 = zext i8 %conv12 to i64
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %and15 = and i32 %14, 2
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body
  %15 = load i32, i32* %previous_is_cased, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.16
  %16 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc19 = add i64 %16, 1
  store i64 %inc19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.then.16
  store i32 1, i32* %previous_is_cased, align 4
  store i32 1, i32* %cased, align 4
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %17 = load i8, i8* %ch, align 1
  %conv21 = zext i8 %17 to i32
  %and22 = and i32 %conv21, 255
  %conv23 = trunc i32 %and22 to i8
  %idxprom24 = zext i8 %conv23 to i64
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom24
  %18 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %18, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %if.else
  %19 = load i32, i32* %previous_is_cased, align 4
  %tobool29 = icmp ne i32 %19, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.then.28
  %20 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc31 = add i64 %20, 1
  store i64 %inc31, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.28
  store i32 1, i32* %previous_is_cased, align 4
  store i32 1, i32* %cased, align 4
  br label %if.end.34

if.else.33:                                       ; preds = %if.else
  store i32 0, i32* %previous_is_cased, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.end.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %cased, align 4
  %conv36 = sext i32 %22 to i64
  %call37 = call %struct._object* @PyBool_FromLong(i64 %conv36)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.30, %if.then.18, %if.then.6, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_lower(i8* %result, i8* %cptr, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** %cptr.addr, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %result.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %7, i64 %6
  store i8 %5, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_upper(i8* %result, i8* %cptr, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %cptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** %cptr.addr, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %result.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %7, i64 %6
  store i8 %5, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_title(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %previous_is_cased = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %previous_is_cased, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  store i32 %conv2, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %and3 = and i32 %4, 255
  %conv4 = trunc i32 %and3 to i8
  %idxprom = zext i8 %conv4 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %and5 = and i32 %5, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %previous_is_cased, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %7 = load i32, i32* %c, align 4
  %and8 = and i32 %7, 255
  %conv9 = trunc i32 %and8 to i8
  %idxprom10 = zext i8 %conv9 to i64
  %arrayidx11 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  store i32 %conv12, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 1, i32* %previous_is_cased, align 4
  br label %if.end.30

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %c, align 4
  %and13 = and i32 %9, 255
  %conv14 = trunc i32 %and13 to i8
  %idxprom15 = zext i8 %conv14 to i64
  %arrayidx16 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom15
  %10 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %10, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.28

if.then.19:                                       ; preds = %if.else
  %11 = load i32, i32* %previous_is_cased, align 4
  %tobool20 = icmp ne i32 %11, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.then.19
  %12 = load i32, i32* %c, align 4
  %and22 = and i32 %12, 255
  %conv23 = trunc i32 %and22 to i8
  %idxprom24 = zext i8 %conv23 to i64
  %arrayidx25 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  store i32 %conv26, i32* %c, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %if.then.19
  store i32 1, i32* %previous_is_cased, align 4
  br label %if.end.29

if.else.28:                                       ; preds = %if.else
  store i32 0, i32* %previous_is_cased, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %14 = load i32, i32* %c, align 4
  %conv31 = trunc i32 %14 to i8
  %15 = load i8*, i8** %result.addr, align 8
  %incdec.ptr32 = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr32, i8** %result.addr, align 8
  store i8 %conv31, i8* %15, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_capitalize(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %c16 = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 0, %0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  store i32 %conv2, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %and3 = and i32 %3, 255
  %conv4 = trunc i32 %and3 to i8
  %idxprom = zext i8 %conv4 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %and5 = and i32 %4, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %5 = load i32, i32* %c, align 4
  %and7 = and i32 %5, 255
  %conv8 = trunc i32 %and7 to i8
  %idxprom9 = zext i8 %conv8 to i64
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom9
  %6 = load i8, i8* %arrayidx10, align 1
  %7 = load i8*, i8** %result.addr, align 8
  store i8 %6, i8* %7, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %c, align 4
  %conv11 = trunc i32 %8 to i8
  %9 = load i8*, i8** %result.addr, align 8
  store i8 %conv11, i8* %9, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %10 = load i8*, i8** %result.addr, align 8
  %incdec.ptr12 = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr12, i8** %result.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %len.addr, align 8
  %cmp14 = icmp slt i64 %11, %12
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr17 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr17, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv18 = sext i8 %14 to i32
  %and19 = and i32 %conv18, 255
  %conv20 = trunc i32 %and19 to i8
  %conv21 = zext i8 %conv20 to i32
  store i32 %conv21, i32* %c16, align 4
  %15 = load i32, i32* %c16, align 4
  %and22 = and i32 %15, 255
  %conv23 = trunc i32 %and22 to i8
  %idxprom24 = zext i8 %conv23 to i64
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom24
  %16 = load i32, i32* %arrayidx25, align 4
  %and26 = and i32 %16, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %for.body
  %17 = load i32, i32* %c16, align 4
  %and29 = and i32 %17, 255
  %conv30 = trunc i32 %and29 to i8
  %idxprom31 = zext i8 %conv30 to i64
  %arrayidx32 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom31
  %18 = load i8, i8* %arrayidx32, align 1
  %19 = load i8*, i8** %result.addr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end.35

if.else.33:                                       ; preds = %for.body
  %20 = load i32, i32* %c16, align 4
  %conv34 = trunc i32 %20 to i8
  %21 = load i8*, i8** %result.addr, align 8
  store i8 %conv34, i8* %21, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.28
  %22 = load i8*, i8** %result.addr, align 8
  %incdec.ptr36 = getelementptr i8, i8* %22, i32 1
  store i8* %incdec.ptr36, i8** %result.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_swapcase(i8* %result, i8* %s, i64 %len) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %result, i8** %result.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  store i32 %conv2, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %and3 = and i32 %4, 255
  %conv4 = trunc i32 %and3 to i8
  %idxprom = zext i8 %conv4 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %and5 = and i32 %5, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %c, align 4
  %and6 = and i32 %6, 255
  %conv7 = trunc i32 %and6 to i8
  %idxprom8 = zext i8 %conv7 to i64
  %arrayidx9 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom8
  %7 = load i8, i8* %arrayidx9, align 1
  %8 = load i8*, i8** %result.addr, align 8
  store i8 %7, i8* %8, align 1
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %c, align 4
  %and10 = and i32 %9, 255
  %conv11 = trunc i32 %and10 to i8
  %idxprom12 = zext i8 %conv11 to i64
  %arrayidx13 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom12
  %10 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %10, 2
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.else
  %11 = load i32, i32* %c, align 4
  %and17 = and i32 %11, 255
  %conv18 = trunc i32 %and17 to i8
  %idxprom19 = zext i8 %conv18 to i64
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %13 = load i8*, i8** %result.addr, align 8
  store i8 %12, i8* %13, align 1
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %14 = load i32, i32* %c, align 4
  %conv22 = trunc i32 %14 to i8
  %15 = load i8*, i8** %result.addr, align 8
  store i8 %conv22, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %16 = load i8*, i8** %result.addr, align 8
  %incdec.ptr24 = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr24, i8** %result.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_maketrans(%struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %frm = alloca %struct._object*, align 8
  %to = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %bfrm = alloca %struct.bufferinfo, align 8
  %bto = alloca %struct.bufferinfo, align 8
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2
  store i64 -1, i64* %len, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2
  store i64 -1, i64* %len1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object** %frm, %struct._object** %to)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %frm, align 8
  %call2 = call i64 @_getbuffer(%struct._object* %1, %struct.bufferinfo* %bfrm)
  %cmp = icmp slt i64 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %to, align 8
  %call5 = call i64 @_getbuffer(%struct._object* %2, %struct.bufferinfo* %bto)
  %cmp6 = icmp slt i64 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %done

if.end.8:                                         ; preds = %if.end.4
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2
  %3 = load i64, i64* %len9, align 8
  %len10 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2
  %4 = load i64, i64* %len10, align 8
  %cmp11 = icmp ne i64 %3, %4
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %done

if.end.14:                                        ; preds = %if.end.8
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 256)
  store %struct._object* %call15, %struct._object** %res, align 8
  %6 = load %struct._object*, %struct._object** %res, align 8
  %tobool16 = icmp ne %struct._object* %6, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  br label %done

if.end.18:                                        ; preds = %if.end.14
  %7 = load %struct._object*, %struct._object** %res, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %9 = load i64, i64* %i, align 8
  %cmp19 = icmp slt i64 %9, 256
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %conv = trunc i64 %10 to i8
  %11 = load i64, i64* %i, align 8
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 %11
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %14 = load i64, i64* %i, align 8
  %len21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2
  %15 = load i64, i64* %len21, align 8
  %cmp22 = icmp slt i64 %14, %15
  br i1 %cmp22, label %for.body.24, label %for.end.31

for.body.24:                                      ; preds = %for.cond.20
  %16 = load i64, i64* %i, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 0
  %17 = load i8*, i8** %buf, align 8
  %arrayidx25 = getelementptr i8, i8* %17, i64 %16
  %18 = load i8, i8* %arrayidx25, align 1
  %19 = load i64, i64* %i, align 8
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 0
  %20 = load i8*, i8** %buf26, align 8
  %arrayidx27 = getelementptr i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx27, align 1
  %idxprom = zext i8 %21 to i64
  %22 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr i8, i8* %22, i64 %idxprom
  store i8 %18, i8* %arrayidx28, align 1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.24
  %23 = load i64, i64* %i, align 8
  %inc30 = add i64 %23, 1
  store i64 %inc30, i64* %i, align 8
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  br label %done

done:                                             ; preds = %for.end.31, %if.then.17, %if.then.12, %if.then.7
  %len32 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i32 0, i32 2
  %24 = load i64, i64* %len32, align 8
  %cmp33 = icmp ne i64 %24, -1
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %bfrm)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %done
  %len37 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i32 0, i32 2
  %25 = load i64, i64* %len37, align 8
  %cmp38 = icmp ne i64 %25, -1
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  call void @PyBuffer_Release(%struct.bufferinfo* %bto)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.36
  %26 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.3, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @_getbuffer(%struct._object* %obj, %struct.bufferinfo* %view) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca %struct._object*, align 8
  %view.addr = alloca %struct.bufferinfo*, align 8
  %buffer = alloca %struct.PyBufferProcs*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct.bufferinfo* %view, %struct.bufferinfo** %view.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 18
  %2 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  store %struct.PyBufferProcs* %2, %struct.PyBufferProcs** %buffer, align 8
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %cmp = icmp eq %struct.PyBufferProcs* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %4, i32 0, i32 0
  %5 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp1 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %9)
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %buffer, align 8
  %bf_getbuffer3 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %10, i32 0, i32 0
  %11 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer3, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %call4 = call i32 %11(%struct._object* %12, %struct.bufferinfo* %13, i32 0)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.bufferinfo*, %struct.bufferinfo** %view.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %14, i32 0, i32 2
  %15 = load i64, i64* %len, align 8
  store i64 %15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
