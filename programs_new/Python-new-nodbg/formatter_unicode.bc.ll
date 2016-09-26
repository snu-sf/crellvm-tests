; ModuleID = './formatter_unicode.bc'
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
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.InternalFormatSpec = type { i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.NumberFieldWidths = type { i64, i64, i64, i64, i8, i64, i64, i64, i64, i64, i64 }
%struct.LocaleInfo = type { %struct._object*, %struct._object*, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@PyUnicode_Type = external global %struct._typeobject, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [35 x i8] c"Format specifier missing precision\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid format specifier\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Too many decimal digits in format string\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot specify ',' with '%c'.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot specify ',' with '\5Cx%x'.\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Sign not allowed in string format specifier\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Alternate form (#) not allowed in string format specifier\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"'=' alignment not allowed in string format specifier\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Unknown format code '%c' for object of type '%.200s'\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Unknown format code '\5Cx%x' for object of type '%.200s'\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Precision not allowed in integer format specifier\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Sign not allowed with integer format specifier 'c'\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"%c arg not in range(0x110000)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@no_grouping = internal global [1 x i8] c"\7F", align 1
@_Py_ctype_toupper = external constant [256 x i8], align 16
@PyExc_SystemError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"non-ascii grouped digit\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"precision too big\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.16 = private unnamed_addr constant [56 x i8] c"Zero padding is not allowed in complex format specifier\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"'=' alignment flag is not allowed in complex format specifier\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_PyUnicode_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format_spec.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyUnicode_Type
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %4, %struct._object* %5)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call3 = call i32 @format_obj(%struct._object* %6, %struct._PyUnicodeWriter* %7)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %9 = load i64, i64* %start.addr, align 8
  %10 = load i64, i64* %end.addr, align 8
  %call4 = call i32 @parse_internal_render_format_spec(%struct._object* %8, i64 %9, i64 %10, %struct.InternalFormatSpec* %format, i8 signext 115, i8 signext 60)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 115, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call7 = call i32 @format_string_internal(%struct._object* %12, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %13)
  store i32 %call7, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.6
  %type8 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %14 = load i32, i32* %type8, align 4
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  call void @unknown_presentation_type(i32 %14, i8* %17)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then.5, %if.else, %if.then.2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @format_obj(%struct._object* %obj, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %str = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyObject_Str(%struct._object* %0)
  store %struct._object* %call, %struct._object** %str, align 8
  %1 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %3 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %2, %struct._object* %3)
  store i32 %call1, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load i32, i32* %err, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* %format, i8 signext %default_type, i8 signext %default_align) #0 {
entry:
  %retval = alloca i32, align 4
  %format_spec.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %default_type.addr = alloca i8, align 1
  %default_align.addr = alloca i8, align 1
  %pos = alloca i64, align 8
  %consumed = alloca i64, align 8
  %align_specified = alloca i32, align 4
  %fill_char_specified = alloca i32, align 4
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store i8 %default_type, i8* %default_type.addr, align 1
  store i8 %default_align, i8* %default_align.addr, align 1
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %pos, align 8
  store i32 0, i32* %align_specified, align 4
  store i32 0, i32* %fill_char_specified, align 4
  %1 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %1, i32 0, i32 0
  store i32 32, i32* %fill_char, align 4
  %2 = load i8, i8* %default_align.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %3, i32 0, i32 1
  store i32 %conv, i32* %align, align 4
  %4 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %4, i32 0, i32 2
  store i32 0, i32* %alternate, align 4
  %5 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %5, i32 0, i32 3
  store i32 0, i32* %sign, align 4
  %6 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %6, i32 0, i32 4
  store i64 -1, i64* %width, align 8
  %7 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %7, i32 0, i32 5
  store i32 0, i32* %thousands_separators, align 4
  %8 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %8, i32 0, i32 6
  store i64 -1, i64* %precision, align 8
  %9 = load i8, i8* %default_type.addr, align 1
  %conv1 = sext i8 %9 to i32
  %10 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %10, i32 0, i32 7
  store i32 %conv1, i32* %type, align 4
  %11 = load i64, i64* %end.addr, align 8
  %12 = load i64, i64* %pos, align 8
  %sub = sub i64 %11, %12
  %cmp = icmp sge i64 %sub, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3
  %15 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %15, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp3 = icmp eq i32 %bf.clear, 1
  br i1 %cmp3, label %cond.true, label %cond.false.21

cond.true:                                        ; preds = %land.lhs.true
  %16 = load i64, i64* %pos, align 8
  %add = add i64 %16, 1
  %17 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3
  %19 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %19, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 5
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.17

cond.true.9:                                      ; preds = %cond.true
  %20 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state10 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state10 to i32*
  %bf.load11 = load i32, i32* %22, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 6
  %bf.clear13 = and i32 %bf.lshr12, 1
  %tobool14 = icmp ne i32 %bf.clear13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true.9
  %23 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i64 1
  %25 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.9
  %26 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyCompactUnicodeObject*
  %add.ptr16 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %27, i64 1
  %28 = bitcast %struct.PyCompactUnicodeObject* %add.ptr16 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i8* [ %25, %cond.true.15 ], [ %28, %cond.false ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.true
  %29 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %30, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %31 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end
  %cond19 = phi i8* [ %cond, %cond.end ], [ %31, %cond.false.17 ]
  %arrayidx = getelementptr i8, i8* %cond19, i64 %add
  %32 = load i8, i8* %arrayidx, align 1
  %conv20 = zext i8 %32 to i32
  br label %cond.end.81

cond.false.21:                                    ; preds = %land.lhs.true
  %33 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %state22 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3
  %35 = bitcast %struct.anon* %state22 to i32*
  %bf.load23 = load i32, i32* %35, align 4
  %bf.lshr24 = lshr i32 %bf.load23, 2
  %bf.clear25 = and i32 %bf.lshr24, 7
  %cmp26 = icmp eq i32 %bf.clear25, 2
  br i1 %cmp26, label %cond.true.28, label %cond.false.54

cond.true.28:                                     ; preds = %cond.false.21
  %36 = load i64, i64* %pos, align 8
  %add29 = add i64 %36, 1
  %37 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %state30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3
  %39 = bitcast %struct.anon* %state30 to i32*
  %bf.load31 = load i32, i32* %39, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 5
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.47

cond.true.35:                                     ; preds = %cond.true.28
  %40 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %state36 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 3
  %42 = bitcast %struct.anon* %state36 to i32*
  %bf.load37 = load i32, i32* %42, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 6
  %bf.clear39 = and i32 %bf.lshr38, 1
  %tobool40 = icmp ne i32 %bf.clear39, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.true.35
  %43 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyASCIIObject*
  %add.ptr42 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %44, i64 1
  %45 = bitcast %struct.PyASCIIObject* %add.ptr42 to i8*
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.true.35
  %46 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyCompactUnicodeObject*
  %add.ptr44 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %47, i64 1
  %48 = bitcast %struct.PyCompactUnicodeObject* %add.ptr44 to i8*
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi i8* [ %45, %cond.true.41 ], [ %48, %cond.false.43 ]
  br label %cond.end.50

cond.false.47:                                    ; preds = %cond.true.28
  %49 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyUnicodeObject*
  %data48 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %50, i32 0, i32 1
  %any49 = bitcast %union.anon* %data48 to i8**
  %51 = load i8*, i8** %any49, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.end.45
  %cond51 = phi i8* [ %cond46, %cond.end.45 ], [ %51, %cond.false.47 ]
  %52 = bitcast i8* %cond51 to i16*
  %arrayidx52 = getelementptr i16, i16* %52, i64 %add29
  %53 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %53 to i32
  br label %cond.end.79

cond.false.54:                                    ; preds = %cond.false.21
  %54 = load i64, i64* %pos, align 8
  %add55 = add i64 %54, 1
  %55 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 3
  %57 = bitcast %struct.anon* %state56 to i32*
  %bf.load57 = load i32, i32* %57, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 5
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.73

cond.true.61:                                     ; preds = %cond.false.54
  %58 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 3
  %60 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %60, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 6
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.true.61
  %61 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %add.ptr68 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i64 1
  %63 = bitcast %struct.PyASCIIObject* %add.ptr68 to i8*
  br label %cond.end.71

cond.false.69:                                    ; preds = %cond.true.61
  %64 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyCompactUnicodeObject*
  %add.ptr70 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %65, i64 1
  %66 = bitcast %struct.PyCompactUnicodeObject* %add.ptr70 to i8*
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.67
  %cond72 = phi i8* [ %63, %cond.true.67 ], [ %66, %cond.false.69 ]
  br label %cond.end.76

cond.false.73:                                    ; preds = %cond.false.54
  %67 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyUnicodeObject*
  %data74 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %68, i32 0, i32 1
  %any75 = bitcast %union.anon* %data74 to i8**
  %69 = load i8*, i8** %any75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.end.71
  %cond77 = phi i8* [ %cond72, %cond.end.71 ], [ %69, %cond.false.73 ]
  %70 = bitcast i8* %cond77 to i32*
  %arrayidx78 = getelementptr i32, i32* %70, i64 %add55
  %71 = load i32, i32* %arrayidx78, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.76, %cond.end.50
  %cond80 = phi i32 [ %conv53, %cond.end.50 ], [ %71, %cond.end.76 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.end.18
  %cond82 = phi i32 [ %conv20, %cond.end.18 ], [ %cond80, %cond.end.79 ]
  %call = call i32 @is_alignment_token(i32 %cond82)
  %tobool83 = icmp ne i32 %call, 0
  br i1 %tobool83, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.81
  %72 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyASCIIObject*
  %state84 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %73, i32 0, i32 3
  %74 = bitcast %struct.anon* %state84 to i32*
  %bf.load85 = load i32, i32* %74, align 4
  %bf.lshr86 = lshr i32 %bf.load85, 2
  %bf.clear87 = and i32 %bf.lshr86, 7
  %cmp88 = icmp eq i32 %bf.clear87, 1
  br i1 %cmp88, label %cond.true.90, label %cond.false.116

cond.true.90:                                     ; preds = %if.then
  %75 = load i64, i64* %pos, align 8
  %add91 = add i64 %75, 1
  %76 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyASCIIObject*
  %state92 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i32 0, i32 3
  %78 = bitcast %struct.anon* %state92 to i32*
  %bf.load93 = load i32, i32* %78, align 4
  %bf.lshr94 = lshr i32 %bf.load93, 5
  %bf.clear95 = and i32 %bf.lshr94, 1
  %tobool96 = icmp ne i32 %bf.clear95, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.109

cond.true.97:                                     ; preds = %cond.true.90
  %79 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyASCIIObject*
  %state98 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %80, i32 0, i32 3
  %81 = bitcast %struct.anon* %state98 to i32*
  %bf.load99 = load i32, i32* %81, align 4
  %bf.lshr100 = lshr i32 %bf.load99, 6
  %bf.clear101 = and i32 %bf.lshr100, 1
  %tobool102 = icmp ne i32 %bf.clear101, 0
  br i1 %tobool102, label %cond.true.103, label %cond.false.105

cond.true.103:                                    ; preds = %cond.true.97
  %82 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %83 = bitcast %struct._object* %82 to %struct.PyASCIIObject*
  %add.ptr104 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %83, i64 1
  %84 = bitcast %struct.PyASCIIObject* %add.ptr104 to i8*
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.true.97
  %85 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyCompactUnicodeObject*
  %add.ptr106 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %86, i64 1
  %87 = bitcast %struct.PyCompactUnicodeObject* %add.ptr106 to i8*
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.103
  %cond108 = phi i8* [ %84, %cond.true.103 ], [ %87, %cond.false.105 ]
  br label %cond.end.112

cond.false.109:                                   ; preds = %cond.true.90
  %88 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %89 = bitcast %struct._object* %88 to %struct.PyUnicodeObject*
  %data110 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %89, i32 0, i32 1
  %any111 = bitcast %union.anon* %data110 to i8**
  %90 = load i8*, i8** %any111, align 8
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.109, %cond.end.107
  %cond113 = phi i8* [ %cond108, %cond.end.107 ], [ %90, %cond.false.109 ]
  %arrayidx114 = getelementptr i8, i8* %cond113, i64 %add91
  %91 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %91 to i32
  br label %cond.end.176

cond.false.116:                                   ; preds = %if.then
  %92 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %93 = bitcast %struct._object* %92 to %struct.PyASCIIObject*
  %state117 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %93, i32 0, i32 3
  %94 = bitcast %struct.anon* %state117 to i32*
  %bf.load118 = load i32, i32* %94, align 4
  %bf.lshr119 = lshr i32 %bf.load118, 2
  %bf.clear120 = and i32 %bf.lshr119, 7
  %cmp121 = icmp eq i32 %bf.clear120, 2
  br i1 %cmp121, label %cond.true.123, label %cond.false.149

cond.true.123:                                    ; preds = %cond.false.116
  %95 = load i64, i64* %pos, align 8
  %add124 = add i64 %95, 1
  %96 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %state125 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i32 0, i32 3
  %98 = bitcast %struct.anon* %state125 to i32*
  %bf.load126 = load i32, i32* %98, align 4
  %bf.lshr127 = lshr i32 %bf.load126, 5
  %bf.clear128 = and i32 %bf.lshr127, 1
  %tobool129 = icmp ne i32 %bf.clear128, 0
  br i1 %tobool129, label %cond.true.130, label %cond.false.142

cond.true.130:                                    ; preds = %cond.true.123
  %99 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %100 = bitcast %struct._object* %99 to %struct.PyASCIIObject*
  %state131 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %100, i32 0, i32 3
  %101 = bitcast %struct.anon* %state131 to i32*
  %bf.load132 = load i32, i32* %101, align 4
  %bf.lshr133 = lshr i32 %bf.load132, 6
  %bf.clear134 = and i32 %bf.lshr133, 1
  %tobool135 = icmp ne i32 %bf.clear134, 0
  br i1 %tobool135, label %cond.true.136, label %cond.false.138

cond.true.136:                                    ; preds = %cond.true.130
  %102 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyASCIIObject*
  %add.ptr137 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %103, i64 1
  %104 = bitcast %struct.PyASCIIObject* %add.ptr137 to i8*
  br label %cond.end.140

cond.false.138:                                   ; preds = %cond.true.130
  %105 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %106 = bitcast %struct._object* %105 to %struct.PyCompactUnicodeObject*
  %add.ptr139 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %106, i64 1
  %107 = bitcast %struct.PyCompactUnicodeObject* %add.ptr139 to i8*
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.136
  %cond141 = phi i8* [ %104, %cond.true.136 ], [ %107, %cond.false.138 ]
  br label %cond.end.145

cond.false.142:                                   ; preds = %cond.true.123
  %108 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyUnicodeObject*
  %data143 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %109, i32 0, i32 1
  %any144 = bitcast %union.anon* %data143 to i8**
  %110 = load i8*, i8** %any144, align 8
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.142, %cond.end.140
  %cond146 = phi i8* [ %cond141, %cond.end.140 ], [ %110, %cond.false.142 ]
  %111 = bitcast i8* %cond146 to i16*
  %arrayidx147 = getelementptr i16, i16* %111, i64 %add124
  %112 = load i16, i16* %arrayidx147, align 2
  %conv148 = zext i16 %112 to i32
  br label %cond.end.174

cond.false.149:                                   ; preds = %cond.false.116
  %113 = load i64, i64* %pos, align 8
  %add150 = add i64 %113, 1
  %114 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyASCIIObject*
  %state151 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %115, i32 0, i32 3
  %116 = bitcast %struct.anon* %state151 to i32*
  %bf.load152 = load i32, i32* %116, align 4
  %bf.lshr153 = lshr i32 %bf.load152, 5
  %bf.clear154 = and i32 %bf.lshr153, 1
  %tobool155 = icmp ne i32 %bf.clear154, 0
  br i1 %tobool155, label %cond.true.156, label %cond.false.168

cond.true.156:                                    ; preds = %cond.false.149
  %117 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyASCIIObject*
  %state157 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %118, i32 0, i32 3
  %119 = bitcast %struct.anon* %state157 to i32*
  %bf.load158 = load i32, i32* %119, align 4
  %bf.lshr159 = lshr i32 %bf.load158, 6
  %bf.clear160 = and i32 %bf.lshr159, 1
  %tobool161 = icmp ne i32 %bf.clear160, 0
  br i1 %tobool161, label %cond.true.162, label %cond.false.164

cond.true.162:                                    ; preds = %cond.true.156
  %120 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyASCIIObject*
  %add.ptr163 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %121, i64 1
  %122 = bitcast %struct.PyASCIIObject* %add.ptr163 to i8*
  br label %cond.end.166

cond.false.164:                                   ; preds = %cond.true.156
  %123 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyCompactUnicodeObject*
  %add.ptr165 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %124, i64 1
  %125 = bitcast %struct.PyCompactUnicodeObject* %add.ptr165 to i8*
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.164, %cond.true.162
  %cond167 = phi i8* [ %122, %cond.true.162 ], [ %125, %cond.false.164 ]
  br label %cond.end.171

cond.false.168:                                   ; preds = %cond.false.149
  %126 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyUnicodeObject*
  %data169 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %127, i32 0, i32 1
  %any170 = bitcast %union.anon* %data169 to i8**
  %128 = load i8*, i8** %any170, align 8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.168, %cond.end.166
  %cond172 = phi i8* [ %cond167, %cond.end.166 ], [ %128, %cond.false.168 ]
  %129 = bitcast i8* %cond172 to i32*
  %arrayidx173 = getelementptr i32, i32* %129, i64 %add150
  %130 = load i32, i32* %arrayidx173, align 4
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.end.171, %cond.end.145
  %cond175 = phi i32 [ %conv148, %cond.end.145 ], [ %130, %cond.end.171 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.end.112
  %cond177 = phi i32 [ %conv115, %cond.end.112 ], [ %cond175, %cond.end.174 ]
  %131 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align178 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %131, i32 0, i32 1
  store i32 %cond177, i32* %align178, align 4
  %132 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %133 = bitcast %struct._object* %132 to %struct.PyASCIIObject*
  %state179 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %133, i32 0, i32 3
  %134 = bitcast %struct.anon* %state179 to i32*
  %bf.load180 = load i32, i32* %134, align 4
  %bf.lshr181 = lshr i32 %bf.load180, 2
  %bf.clear182 = and i32 %bf.lshr181, 7
  %cmp183 = icmp eq i32 %bf.clear182, 1
  br i1 %cmp183, label %cond.true.185, label %cond.false.210

cond.true.185:                                    ; preds = %cond.end.176
  %135 = load i64, i64* %pos, align 8
  %136 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %137 = bitcast %struct._object* %136 to %struct.PyASCIIObject*
  %state186 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %137, i32 0, i32 3
  %138 = bitcast %struct.anon* %state186 to i32*
  %bf.load187 = load i32, i32* %138, align 4
  %bf.lshr188 = lshr i32 %bf.load187, 5
  %bf.clear189 = and i32 %bf.lshr188, 1
  %tobool190 = icmp ne i32 %bf.clear189, 0
  br i1 %tobool190, label %cond.true.191, label %cond.false.203

cond.true.191:                                    ; preds = %cond.true.185
  %139 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %140 = bitcast %struct._object* %139 to %struct.PyASCIIObject*
  %state192 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %140, i32 0, i32 3
  %141 = bitcast %struct.anon* %state192 to i32*
  %bf.load193 = load i32, i32* %141, align 4
  %bf.lshr194 = lshr i32 %bf.load193, 6
  %bf.clear195 = and i32 %bf.lshr194, 1
  %tobool196 = icmp ne i32 %bf.clear195, 0
  br i1 %tobool196, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %cond.true.191
  %142 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %143 = bitcast %struct._object* %142 to %struct.PyASCIIObject*
  %add.ptr198 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %143, i64 1
  %144 = bitcast %struct.PyASCIIObject* %add.ptr198 to i8*
  br label %cond.end.201

cond.false.199:                                   ; preds = %cond.true.191
  %145 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %146 = bitcast %struct._object* %145 to %struct.PyCompactUnicodeObject*
  %add.ptr200 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %146, i64 1
  %147 = bitcast %struct.PyCompactUnicodeObject* %add.ptr200 to i8*
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.197
  %cond202 = phi i8* [ %144, %cond.true.197 ], [ %147, %cond.false.199 ]
  br label %cond.end.206

cond.false.203:                                   ; preds = %cond.true.185
  %148 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %149 = bitcast %struct._object* %148 to %struct.PyUnicodeObject*
  %data204 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %149, i32 0, i32 1
  %any205 = bitcast %union.anon* %data204 to i8**
  %150 = load i8*, i8** %any205, align 8
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.203, %cond.end.201
  %cond207 = phi i8* [ %cond202, %cond.end.201 ], [ %150, %cond.false.203 ]
  %arrayidx208 = getelementptr i8, i8* %cond207, i64 %135
  %151 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %151 to i32
  br label %cond.end.268

cond.false.210:                                   ; preds = %cond.end.176
  %152 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %153 = bitcast %struct._object* %152 to %struct.PyASCIIObject*
  %state211 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %153, i32 0, i32 3
  %154 = bitcast %struct.anon* %state211 to i32*
  %bf.load212 = load i32, i32* %154, align 4
  %bf.lshr213 = lshr i32 %bf.load212, 2
  %bf.clear214 = and i32 %bf.lshr213, 7
  %cmp215 = icmp eq i32 %bf.clear214, 2
  br i1 %cmp215, label %cond.true.217, label %cond.false.242

cond.true.217:                                    ; preds = %cond.false.210
  %155 = load i64, i64* %pos, align 8
  %156 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %157 = bitcast %struct._object* %156 to %struct.PyASCIIObject*
  %state218 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %157, i32 0, i32 3
  %158 = bitcast %struct.anon* %state218 to i32*
  %bf.load219 = load i32, i32* %158, align 4
  %bf.lshr220 = lshr i32 %bf.load219, 5
  %bf.clear221 = and i32 %bf.lshr220, 1
  %tobool222 = icmp ne i32 %bf.clear221, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.235

cond.true.223:                                    ; preds = %cond.true.217
  %159 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %160 = bitcast %struct._object* %159 to %struct.PyASCIIObject*
  %state224 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %160, i32 0, i32 3
  %161 = bitcast %struct.anon* %state224 to i32*
  %bf.load225 = load i32, i32* %161, align 4
  %bf.lshr226 = lshr i32 %bf.load225, 6
  %bf.clear227 = and i32 %bf.lshr226, 1
  %tobool228 = icmp ne i32 %bf.clear227, 0
  br i1 %tobool228, label %cond.true.229, label %cond.false.231

cond.true.229:                                    ; preds = %cond.true.223
  %162 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %163 = bitcast %struct._object* %162 to %struct.PyASCIIObject*
  %add.ptr230 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %163, i64 1
  %164 = bitcast %struct.PyASCIIObject* %add.ptr230 to i8*
  br label %cond.end.233

cond.false.231:                                   ; preds = %cond.true.223
  %165 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %166 = bitcast %struct._object* %165 to %struct.PyCompactUnicodeObject*
  %add.ptr232 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %166, i64 1
  %167 = bitcast %struct.PyCompactUnicodeObject* %add.ptr232 to i8*
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.231, %cond.true.229
  %cond234 = phi i8* [ %164, %cond.true.229 ], [ %167, %cond.false.231 ]
  br label %cond.end.238

cond.false.235:                                   ; preds = %cond.true.217
  %168 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %169 = bitcast %struct._object* %168 to %struct.PyUnicodeObject*
  %data236 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %169, i32 0, i32 1
  %any237 = bitcast %union.anon* %data236 to i8**
  %170 = load i8*, i8** %any237, align 8
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.235, %cond.end.233
  %cond239 = phi i8* [ %cond234, %cond.end.233 ], [ %170, %cond.false.235 ]
  %171 = bitcast i8* %cond239 to i16*
  %arrayidx240 = getelementptr i16, i16* %171, i64 %155
  %172 = load i16, i16* %arrayidx240, align 2
  %conv241 = zext i16 %172 to i32
  br label %cond.end.266

cond.false.242:                                   ; preds = %cond.false.210
  %173 = load i64, i64* %pos, align 8
  %174 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %175 = bitcast %struct._object* %174 to %struct.PyASCIIObject*
  %state243 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %175, i32 0, i32 3
  %176 = bitcast %struct.anon* %state243 to i32*
  %bf.load244 = load i32, i32* %176, align 4
  %bf.lshr245 = lshr i32 %bf.load244, 5
  %bf.clear246 = and i32 %bf.lshr245, 1
  %tobool247 = icmp ne i32 %bf.clear246, 0
  br i1 %tobool247, label %cond.true.248, label %cond.false.260

cond.true.248:                                    ; preds = %cond.false.242
  %177 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %178 = bitcast %struct._object* %177 to %struct.PyASCIIObject*
  %state249 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %178, i32 0, i32 3
  %179 = bitcast %struct.anon* %state249 to i32*
  %bf.load250 = load i32, i32* %179, align 4
  %bf.lshr251 = lshr i32 %bf.load250, 6
  %bf.clear252 = and i32 %bf.lshr251, 1
  %tobool253 = icmp ne i32 %bf.clear252, 0
  br i1 %tobool253, label %cond.true.254, label %cond.false.256

cond.true.254:                                    ; preds = %cond.true.248
  %180 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %181 = bitcast %struct._object* %180 to %struct.PyASCIIObject*
  %add.ptr255 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %181, i64 1
  %182 = bitcast %struct.PyASCIIObject* %add.ptr255 to i8*
  br label %cond.end.258

cond.false.256:                                   ; preds = %cond.true.248
  %183 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %184 = bitcast %struct._object* %183 to %struct.PyCompactUnicodeObject*
  %add.ptr257 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %184, i64 1
  %185 = bitcast %struct.PyCompactUnicodeObject* %add.ptr257 to i8*
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.256, %cond.true.254
  %cond259 = phi i8* [ %182, %cond.true.254 ], [ %185, %cond.false.256 ]
  br label %cond.end.263

cond.false.260:                                   ; preds = %cond.false.242
  %186 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %187 = bitcast %struct._object* %186 to %struct.PyUnicodeObject*
  %data261 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %187, i32 0, i32 1
  %any262 = bitcast %union.anon* %data261 to i8**
  %188 = load i8*, i8** %any262, align 8
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.260, %cond.end.258
  %cond264 = phi i8* [ %cond259, %cond.end.258 ], [ %188, %cond.false.260 ]
  %189 = bitcast i8* %cond264 to i32*
  %arrayidx265 = getelementptr i32, i32* %189, i64 %173
  %190 = load i32, i32* %arrayidx265, align 4
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.end.263, %cond.end.238
  %cond267 = phi i32 [ %conv241, %cond.end.238 ], [ %190, %cond.end.263 ]
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.end.266, %cond.end.206
  %cond269 = phi i32 [ %conv209, %cond.end.206 ], [ %cond267, %cond.end.266 ]
  %191 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char270 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %191, i32 0, i32 0
  store i32 %cond269, i32* %fill_char270, align 4
  store i32 1, i32* %fill_char_specified, align 4
  store i32 1, i32* %align_specified, align 4
  %192 = load i64, i64* %pos, align 8
  %add271 = add i64 %192, 2
  store i64 %add271, i64* %pos, align 8
  br label %if.end.462

if.else:                                          ; preds = %cond.end.81, %entry
  %193 = load i64, i64* %end.addr, align 8
  %194 = load i64, i64* %pos, align 8
  %sub272 = sub i64 %193, %194
  %cmp273 = icmp sge i64 %sub272, 1
  br i1 %cmp273, label %land.lhs.true.275, label %if.end

land.lhs.true.275:                                ; preds = %if.else
  %195 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %196 = bitcast %struct._object* %195 to %struct.PyASCIIObject*
  %state276 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %196, i32 0, i32 3
  %197 = bitcast %struct.anon* %state276 to i32*
  %bf.load277 = load i32, i32* %197, align 4
  %bf.lshr278 = lshr i32 %bf.load277, 2
  %bf.clear279 = and i32 %bf.lshr278, 7
  %cmp280 = icmp eq i32 %bf.clear279, 1
  br i1 %cmp280, label %cond.true.282, label %cond.false.307

cond.true.282:                                    ; preds = %land.lhs.true.275
  %198 = load i64, i64* %pos, align 8
  %199 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %200 = bitcast %struct._object* %199 to %struct.PyASCIIObject*
  %state283 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %200, i32 0, i32 3
  %201 = bitcast %struct.anon* %state283 to i32*
  %bf.load284 = load i32, i32* %201, align 4
  %bf.lshr285 = lshr i32 %bf.load284, 5
  %bf.clear286 = and i32 %bf.lshr285, 1
  %tobool287 = icmp ne i32 %bf.clear286, 0
  br i1 %tobool287, label %cond.true.288, label %cond.false.300

cond.true.288:                                    ; preds = %cond.true.282
  %202 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %203 = bitcast %struct._object* %202 to %struct.PyASCIIObject*
  %state289 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %203, i32 0, i32 3
  %204 = bitcast %struct.anon* %state289 to i32*
  %bf.load290 = load i32, i32* %204, align 4
  %bf.lshr291 = lshr i32 %bf.load290, 6
  %bf.clear292 = and i32 %bf.lshr291, 1
  %tobool293 = icmp ne i32 %bf.clear292, 0
  br i1 %tobool293, label %cond.true.294, label %cond.false.296

cond.true.294:                                    ; preds = %cond.true.288
  %205 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %206 = bitcast %struct._object* %205 to %struct.PyASCIIObject*
  %add.ptr295 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %206, i64 1
  %207 = bitcast %struct.PyASCIIObject* %add.ptr295 to i8*
  br label %cond.end.298

cond.false.296:                                   ; preds = %cond.true.288
  %208 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %209 = bitcast %struct._object* %208 to %struct.PyCompactUnicodeObject*
  %add.ptr297 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %209, i64 1
  %210 = bitcast %struct.PyCompactUnicodeObject* %add.ptr297 to i8*
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.296, %cond.true.294
  %cond299 = phi i8* [ %207, %cond.true.294 ], [ %210, %cond.false.296 ]
  br label %cond.end.303

cond.false.300:                                   ; preds = %cond.true.282
  %211 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %212 = bitcast %struct._object* %211 to %struct.PyUnicodeObject*
  %data301 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %212, i32 0, i32 1
  %any302 = bitcast %union.anon* %data301 to i8**
  %213 = load i8*, i8** %any302, align 8
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.300, %cond.end.298
  %cond304 = phi i8* [ %cond299, %cond.end.298 ], [ %213, %cond.false.300 ]
  %arrayidx305 = getelementptr i8, i8* %cond304, i64 %198
  %214 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %214 to i32
  br label %cond.end.365

cond.false.307:                                   ; preds = %land.lhs.true.275
  %215 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %216 = bitcast %struct._object* %215 to %struct.PyASCIIObject*
  %state308 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %216, i32 0, i32 3
  %217 = bitcast %struct.anon* %state308 to i32*
  %bf.load309 = load i32, i32* %217, align 4
  %bf.lshr310 = lshr i32 %bf.load309, 2
  %bf.clear311 = and i32 %bf.lshr310, 7
  %cmp312 = icmp eq i32 %bf.clear311, 2
  br i1 %cmp312, label %cond.true.314, label %cond.false.339

cond.true.314:                                    ; preds = %cond.false.307
  %218 = load i64, i64* %pos, align 8
  %219 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %220 = bitcast %struct._object* %219 to %struct.PyASCIIObject*
  %state315 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %220, i32 0, i32 3
  %221 = bitcast %struct.anon* %state315 to i32*
  %bf.load316 = load i32, i32* %221, align 4
  %bf.lshr317 = lshr i32 %bf.load316, 5
  %bf.clear318 = and i32 %bf.lshr317, 1
  %tobool319 = icmp ne i32 %bf.clear318, 0
  br i1 %tobool319, label %cond.true.320, label %cond.false.332

cond.true.320:                                    ; preds = %cond.true.314
  %222 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %223 = bitcast %struct._object* %222 to %struct.PyASCIIObject*
  %state321 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %223, i32 0, i32 3
  %224 = bitcast %struct.anon* %state321 to i32*
  %bf.load322 = load i32, i32* %224, align 4
  %bf.lshr323 = lshr i32 %bf.load322, 6
  %bf.clear324 = and i32 %bf.lshr323, 1
  %tobool325 = icmp ne i32 %bf.clear324, 0
  br i1 %tobool325, label %cond.true.326, label %cond.false.328

cond.true.326:                                    ; preds = %cond.true.320
  %225 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %226 = bitcast %struct._object* %225 to %struct.PyASCIIObject*
  %add.ptr327 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %226, i64 1
  %227 = bitcast %struct.PyASCIIObject* %add.ptr327 to i8*
  br label %cond.end.330

cond.false.328:                                   ; preds = %cond.true.320
  %228 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %229 = bitcast %struct._object* %228 to %struct.PyCompactUnicodeObject*
  %add.ptr329 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %229, i64 1
  %230 = bitcast %struct.PyCompactUnicodeObject* %add.ptr329 to i8*
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.328, %cond.true.326
  %cond331 = phi i8* [ %227, %cond.true.326 ], [ %230, %cond.false.328 ]
  br label %cond.end.335

cond.false.332:                                   ; preds = %cond.true.314
  %231 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %232 = bitcast %struct._object* %231 to %struct.PyUnicodeObject*
  %data333 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %232, i32 0, i32 1
  %any334 = bitcast %union.anon* %data333 to i8**
  %233 = load i8*, i8** %any334, align 8
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.332, %cond.end.330
  %cond336 = phi i8* [ %cond331, %cond.end.330 ], [ %233, %cond.false.332 ]
  %234 = bitcast i8* %cond336 to i16*
  %arrayidx337 = getelementptr i16, i16* %234, i64 %218
  %235 = load i16, i16* %arrayidx337, align 2
  %conv338 = zext i16 %235 to i32
  br label %cond.end.363

cond.false.339:                                   ; preds = %cond.false.307
  %236 = load i64, i64* %pos, align 8
  %237 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %238 = bitcast %struct._object* %237 to %struct.PyASCIIObject*
  %state340 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %238, i32 0, i32 3
  %239 = bitcast %struct.anon* %state340 to i32*
  %bf.load341 = load i32, i32* %239, align 4
  %bf.lshr342 = lshr i32 %bf.load341, 5
  %bf.clear343 = and i32 %bf.lshr342, 1
  %tobool344 = icmp ne i32 %bf.clear343, 0
  br i1 %tobool344, label %cond.true.345, label %cond.false.357

cond.true.345:                                    ; preds = %cond.false.339
  %240 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %241 = bitcast %struct._object* %240 to %struct.PyASCIIObject*
  %state346 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %241, i32 0, i32 3
  %242 = bitcast %struct.anon* %state346 to i32*
  %bf.load347 = load i32, i32* %242, align 4
  %bf.lshr348 = lshr i32 %bf.load347, 6
  %bf.clear349 = and i32 %bf.lshr348, 1
  %tobool350 = icmp ne i32 %bf.clear349, 0
  br i1 %tobool350, label %cond.true.351, label %cond.false.353

cond.true.351:                                    ; preds = %cond.true.345
  %243 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %244 = bitcast %struct._object* %243 to %struct.PyASCIIObject*
  %add.ptr352 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %244, i64 1
  %245 = bitcast %struct.PyASCIIObject* %add.ptr352 to i8*
  br label %cond.end.355

cond.false.353:                                   ; preds = %cond.true.345
  %246 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %247 = bitcast %struct._object* %246 to %struct.PyCompactUnicodeObject*
  %add.ptr354 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %247, i64 1
  %248 = bitcast %struct.PyCompactUnicodeObject* %add.ptr354 to i8*
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.353, %cond.true.351
  %cond356 = phi i8* [ %245, %cond.true.351 ], [ %248, %cond.false.353 ]
  br label %cond.end.360

cond.false.357:                                   ; preds = %cond.false.339
  %249 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %250 = bitcast %struct._object* %249 to %struct.PyUnicodeObject*
  %data358 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %250, i32 0, i32 1
  %any359 = bitcast %union.anon* %data358 to i8**
  %251 = load i8*, i8** %any359, align 8
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.357, %cond.end.355
  %cond361 = phi i8* [ %cond356, %cond.end.355 ], [ %251, %cond.false.357 ]
  %252 = bitcast i8* %cond361 to i32*
  %arrayidx362 = getelementptr i32, i32* %252, i64 %236
  %253 = load i32, i32* %arrayidx362, align 4
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.end.360, %cond.end.335
  %cond364 = phi i32 [ %conv338, %cond.end.335 ], [ %253, %cond.end.360 ]
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.end.363, %cond.end.303
  %cond366 = phi i32 [ %conv306, %cond.end.303 ], [ %cond364, %cond.end.363 ]
  %call367 = call i32 @is_alignment_token(i32 %cond366)
  %tobool368 = icmp ne i32 %call367, 0
  br i1 %tobool368, label %if.then.369, label %if.end

if.then.369:                                      ; preds = %cond.end.365
  %254 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %255 = bitcast %struct._object* %254 to %struct.PyASCIIObject*
  %state370 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %255, i32 0, i32 3
  %256 = bitcast %struct.anon* %state370 to i32*
  %bf.load371 = load i32, i32* %256, align 4
  %bf.lshr372 = lshr i32 %bf.load371, 2
  %bf.clear373 = and i32 %bf.lshr372, 7
  %cmp374 = icmp eq i32 %bf.clear373, 1
  br i1 %cmp374, label %cond.true.376, label %cond.false.401

cond.true.376:                                    ; preds = %if.then.369
  %257 = load i64, i64* %pos, align 8
  %258 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %259 = bitcast %struct._object* %258 to %struct.PyASCIIObject*
  %state377 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %259, i32 0, i32 3
  %260 = bitcast %struct.anon* %state377 to i32*
  %bf.load378 = load i32, i32* %260, align 4
  %bf.lshr379 = lshr i32 %bf.load378, 5
  %bf.clear380 = and i32 %bf.lshr379, 1
  %tobool381 = icmp ne i32 %bf.clear380, 0
  br i1 %tobool381, label %cond.true.382, label %cond.false.394

cond.true.382:                                    ; preds = %cond.true.376
  %261 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %262 = bitcast %struct._object* %261 to %struct.PyASCIIObject*
  %state383 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %262, i32 0, i32 3
  %263 = bitcast %struct.anon* %state383 to i32*
  %bf.load384 = load i32, i32* %263, align 4
  %bf.lshr385 = lshr i32 %bf.load384, 6
  %bf.clear386 = and i32 %bf.lshr385, 1
  %tobool387 = icmp ne i32 %bf.clear386, 0
  br i1 %tobool387, label %cond.true.388, label %cond.false.390

cond.true.388:                                    ; preds = %cond.true.382
  %264 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %265 = bitcast %struct._object* %264 to %struct.PyASCIIObject*
  %add.ptr389 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %265, i64 1
  %266 = bitcast %struct.PyASCIIObject* %add.ptr389 to i8*
  br label %cond.end.392

cond.false.390:                                   ; preds = %cond.true.382
  %267 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %268 = bitcast %struct._object* %267 to %struct.PyCompactUnicodeObject*
  %add.ptr391 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %268, i64 1
  %269 = bitcast %struct.PyCompactUnicodeObject* %add.ptr391 to i8*
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.false.390, %cond.true.388
  %cond393 = phi i8* [ %266, %cond.true.388 ], [ %269, %cond.false.390 ]
  br label %cond.end.397

cond.false.394:                                   ; preds = %cond.true.376
  %270 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %271 = bitcast %struct._object* %270 to %struct.PyUnicodeObject*
  %data395 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %271, i32 0, i32 1
  %any396 = bitcast %union.anon* %data395 to i8**
  %272 = load i8*, i8** %any396, align 8
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.394, %cond.end.392
  %cond398 = phi i8* [ %cond393, %cond.end.392 ], [ %272, %cond.false.394 ]
  %arrayidx399 = getelementptr i8, i8* %cond398, i64 %257
  %273 = load i8, i8* %arrayidx399, align 1
  %conv400 = zext i8 %273 to i32
  br label %cond.end.459

cond.false.401:                                   ; preds = %if.then.369
  %274 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %275 = bitcast %struct._object* %274 to %struct.PyASCIIObject*
  %state402 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %275, i32 0, i32 3
  %276 = bitcast %struct.anon* %state402 to i32*
  %bf.load403 = load i32, i32* %276, align 4
  %bf.lshr404 = lshr i32 %bf.load403, 2
  %bf.clear405 = and i32 %bf.lshr404, 7
  %cmp406 = icmp eq i32 %bf.clear405, 2
  br i1 %cmp406, label %cond.true.408, label %cond.false.433

cond.true.408:                                    ; preds = %cond.false.401
  %277 = load i64, i64* %pos, align 8
  %278 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %279 = bitcast %struct._object* %278 to %struct.PyASCIIObject*
  %state409 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %279, i32 0, i32 3
  %280 = bitcast %struct.anon* %state409 to i32*
  %bf.load410 = load i32, i32* %280, align 4
  %bf.lshr411 = lshr i32 %bf.load410, 5
  %bf.clear412 = and i32 %bf.lshr411, 1
  %tobool413 = icmp ne i32 %bf.clear412, 0
  br i1 %tobool413, label %cond.true.414, label %cond.false.426

cond.true.414:                                    ; preds = %cond.true.408
  %281 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %282 = bitcast %struct._object* %281 to %struct.PyASCIIObject*
  %state415 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %282, i32 0, i32 3
  %283 = bitcast %struct.anon* %state415 to i32*
  %bf.load416 = load i32, i32* %283, align 4
  %bf.lshr417 = lshr i32 %bf.load416, 6
  %bf.clear418 = and i32 %bf.lshr417, 1
  %tobool419 = icmp ne i32 %bf.clear418, 0
  br i1 %tobool419, label %cond.true.420, label %cond.false.422

cond.true.420:                                    ; preds = %cond.true.414
  %284 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %285 = bitcast %struct._object* %284 to %struct.PyASCIIObject*
  %add.ptr421 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %285, i64 1
  %286 = bitcast %struct.PyASCIIObject* %add.ptr421 to i8*
  br label %cond.end.424

cond.false.422:                                   ; preds = %cond.true.414
  %287 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %288 = bitcast %struct._object* %287 to %struct.PyCompactUnicodeObject*
  %add.ptr423 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %288, i64 1
  %289 = bitcast %struct.PyCompactUnicodeObject* %add.ptr423 to i8*
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.422, %cond.true.420
  %cond425 = phi i8* [ %286, %cond.true.420 ], [ %289, %cond.false.422 ]
  br label %cond.end.429

cond.false.426:                                   ; preds = %cond.true.408
  %290 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %291 = bitcast %struct._object* %290 to %struct.PyUnicodeObject*
  %data427 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %291, i32 0, i32 1
  %any428 = bitcast %union.anon* %data427 to i8**
  %292 = load i8*, i8** %any428, align 8
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.426, %cond.end.424
  %cond430 = phi i8* [ %cond425, %cond.end.424 ], [ %292, %cond.false.426 ]
  %293 = bitcast i8* %cond430 to i16*
  %arrayidx431 = getelementptr i16, i16* %293, i64 %277
  %294 = load i16, i16* %arrayidx431, align 2
  %conv432 = zext i16 %294 to i32
  br label %cond.end.457

cond.false.433:                                   ; preds = %cond.false.401
  %295 = load i64, i64* %pos, align 8
  %296 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %297 = bitcast %struct._object* %296 to %struct.PyASCIIObject*
  %state434 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %297, i32 0, i32 3
  %298 = bitcast %struct.anon* %state434 to i32*
  %bf.load435 = load i32, i32* %298, align 4
  %bf.lshr436 = lshr i32 %bf.load435, 5
  %bf.clear437 = and i32 %bf.lshr436, 1
  %tobool438 = icmp ne i32 %bf.clear437, 0
  br i1 %tobool438, label %cond.true.439, label %cond.false.451

cond.true.439:                                    ; preds = %cond.false.433
  %299 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %300 = bitcast %struct._object* %299 to %struct.PyASCIIObject*
  %state440 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %300, i32 0, i32 3
  %301 = bitcast %struct.anon* %state440 to i32*
  %bf.load441 = load i32, i32* %301, align 4
  %bf.lshr442 = lshr i32 %bf.load441, 6
  %bf.clear443 = and i32 %bf.lshr442, 1
  %tobool444 = icmp ne i32 %bf.clear443, 0
  br i1 %tobool444, label %cond.true.445, label %cond.false.447

cond.true.445:                                    ; preds = %cond.true.439
  %302 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %303 = bitcast %struct._object* %302 to %struct.PyASCIIObject*
  %add.ptr446 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %303, i64 1
  %304 = bitcast %struct.PyASCIIObject* %add.ptr446 to i8*
  br label %cond.end.449

cond.false.447:                                   ; preds = %cond.true.439
  %305 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %306 = bitcast %struct._object* %305 to %struct.PyCompactUnicodeObject*
  %add.ptr448 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %306, i64 1
  %307 = bitcast %struct.PyCompactUnicodeObject* %add.ptr448 to i8*
  br label %cond.end.449

cond.end.449:                                     ; preds = %cond.false.447, %cond.true.445
  %cond450 = phi i8* [ %304, %cond.true.445 ], [ %307, %cond.false.447 ]
  br label %cond.end.454

cond.false.451:                                   ; preds = %cond.false.433
  %308 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %309 = bitcast %struct._object* %308 to %struct.PyUnicodeObject*
  %data452 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %309, i32 0, i32 1
  %any453 = bitcast %union.anon* %data452 to i8**
  %310 = load i8*, i8** %any453, align 8
  br label %cond.end.454

cond.end.454:                                     ; preds = %cond.false.451, %cond.end.449
  %cond455 = phi i8* [ %cond450, %cond.end.449 ], [ %310, %cond.false.451 ]
  %311 = bitcast i8* %cond455 to i32*
  %arrayidx456 = getelementptr i32, i32* %311, i64 %295
  %312 = load i32, i32* %arrayidx456, align 4
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.end.454, %cond.end.429
  %cond458 = phi i32 [ %conv432, %cond.end.429 ], [ %312, %cond.end.454 ]
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.end.457, %cond.end.397
  %cond460 = phi i32 [ %conv400, %cond.end.397 ], [ %cond458, %cond.end.457 ]
  %313 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align461 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %313, i32 0, i32 1
  store i32 %cond460, i32* %align461, align 4
  store i32 1, i32* %align_specified, align 4
  %314 = load i64, i64* %pos, align 8
  %inc = add i64 %314, 1
  store i64 %inc, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.459, %cond.end.365, %if.else
  br label %if.end.462

if.end.462:                                       ; preds = %if.end, %cond.end.268
  %315 = load i64, i64* %end.addr, align 8
  %316 = load i64, i64* %pos, align 8
  %sub463 = sub i64 %315, %316
  %cmp464 = icmp sge i64 %sub463, 1
  br i1 %cmp464, label %land.lhs.true.466, label %if.end.654

land.lhs.true.466:                                ; preds = %if.end.462
  %317 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %318 = bitcast %struct._object* %317 to %struct.PyASCIIObject*
  %state467 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %318, i32 0, i32 3
  %319 = bitcast %struct.anon* %state467 to i32*
  %bf.load468 = load i32, i32* %319, align 4
  %bf.lshr469 = lshr i32 %bf.load468, 2
  %bf.clear470 = and i32 %bf.lshr469, 7
  %cmp471 = icmp eq i32 %bf.clear470, 1
  br i1 %cmp471, label %cond.true.473, label %cond.false.498

cond.true.473:                                    ; preds = %land.lhs.true.466
  %320 = load i64, i64* %pos, align 8
  %321 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %322 = bitcast %struct._object* %321 to %struct.PyASCIIObject*
  %state474 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %322, i32 0, i32 3
  %323 = bitcast %struct.anon* %state474 to i32*
  %bf.load475 = load i32, i32* %323, align 4
  %bf.lshr476 = lshr i32 %bf.load475, 5
  %bf.clear477 = and i32 %bf.lshr476, 1
  %tobool478 = icmp ne i32 %bf.clear477, 0
  br i1 %tobool478, label %cond.true.479, label %cond.false.491

cond.true.479:                                    ; preds = %cond.true.473
  %324 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %325 = bitcast %struct._object* %324 to %struct.PyASCIIObject*
  %state480 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %325, i32 0, i32 3
  %326 = bitcast %struct.anon* %state480 to i32*
  %bf.load481 = load i32, i32* %326, align 4
  %bf.lshr482 = lshr i32 %bf.load481, 6
  %bf.clear483 = and i32 %bf.lshr482, 1
  %tobool484 = icmp ne i32 %bf.clear483, 0
  br i1 %tobool484, label %cond.true.485, label %cond.false.487

cond.true.485:                                    ; preds = %cond.true.479
  %327 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %328 = bitcast %struct._object* %327 to %struct.PyASCIIObject*
  %add.ptr486 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %328, i64 1
  %329 = bitcast %struct.PyASCIIObject* %add.ptr486 to i8*
  br label %cond.end.489

cond.false.487:                                   ; preds = %cond.true.479
  %330 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %331 = bitcast %struct._object* %330 to %struct.PyCompactUnicodeObject*
  %add.ptr488 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %331, i64 1
  %332 = bitcast %struct.PyCompactUnicodeObject* %add.ptr488 to i8*
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.false.487, %cond.true.485
  %cond490 = phi i8* [ %329, %cond.true.485 ], [ %332, %cond.false.487 ]
  br label %cond.end.494

cond.false.491:                                   ; preds = %cond.true.473
  %333 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %334 = bitcast %struct._object* %333 to %struct.PyUnicodeObject*
  %data492 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %334, i32 0, i32 1
  %any493 = bitcast %union.anon* %data492 to i8**
  %335 = load i8*, i8** %any493, align 8
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.false.491, %cond.end.489
  %cond495 = phi i8* [ %cond490, %cond.end.489 ], [ %335, %cond.false.491 ]
  %arrayidx496 = getelementptr i8, i8* %cond495, i64 %320
  %336 = load i8, i8* %arrayidx496, align 1
  %conv497 = zext i8 %336 to i32
  br label %cond.end.556

cond.false.498:                                   ; preds = %land.lhs.true.466
  %337 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %338 = bitcast %struct._object* %337 to %struct.PyASCIIObject*
  %state499 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %338, i32 0, i32 3
  %339 = bitcast %struct.anon* %state499 to i32*
  %bf.load500 = load i32, i32* %339, align 4
  %bf.lshr501 = lshr i32 %bf.load500, 2
  %bf.clear502 = and i32 %bf.lshr501, 7
  %cmp503 = icmp eq i32 %bf.clear502, 2
  br i1 %cmp503, label %cond.true.505, label %cond.false.530

cond.true.505:                                    ; preds = %cond.false.498
  %340 = load i64, i64* %pos, align 8
  %341 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %342 = bitcast %struct._object* %341 to %struct.PyASCIIObject*
  %state506 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %342, i32 0, i32 3
  %343 = bitcast %struct.anon* %state506 to i32*
  %bf.load507 = load i32, i32* %343, align 4
  %bf.lshr508 = lshr i32 %bf.load507, 5
  %bf.clear509 = and i32 %bf.lshr508, 1
  %tobool510 = icmp ne i32 %bf.clear509, 0
  br i1 %tobool510, label %cond.true.511, label %cond.false.523

cond.true.511:                                    ; preds = %cond.true.505
  %344 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %345 = bitcast %struct._object* %344 to %struct.PyASCIIObject*
  %state512 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %345, i32 0, i32 3
  %346 = bitcast %struct.anon* %state512 to i32*
  %bf.load513 = load i32, i32* %346, align 4
  %bf.lshr514 = lshr i32 %bf.load513, 6
  %bf.clear515 = and i32 %bf.lshr514, 1
  %tobool516 = icmp ne i32 %bf.clear515, 0
  br i1 %tobool516, label %cond.true.517, label %cond.false.519

cond.true.517:                                    ; preds = %cond.true.511
  %347 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %348 = bitcast %struct._object* %347 to %struct.PyASCIIObject*
  %add.ptr518 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %348, i64 1
  %349 = bitcast %struct.PyASCIIObject* %add.ptr518 to i8*
  br label %cond.end.521

cond.false.519:                                   ; preds = %cond.true.511
  %350 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %351 = bitcast %struct._object* %350 to %struct.PyCompactUnicodeObject*
  %add.ptr520 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %351, i64 1
  %352 = bitcast %struct.PyCompactUnicodeObject* %add.ptr520 to i8*
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.519, %cond.true.517
  %cond522 = phi i8* [ %349, %cond.true.517 ], [ %352, %cond.false.519 ]
  br label %cond.end.526

cond.false.523:                                   ; preds = %cond.true.505
  %353 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %354 = bitcast %struct._object* %353 to %struct.PyUnicodeObject*
  %data524 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %354, i32 0, i32 1
  %any525 = bitcast %union.anon* %data524 to i8**
  %355 = load i8*, i8** %any525, align 8
  br label %cond.end.526

cond.end.526:                                     ; preds = %cond.false.523, %cond.end.521
  %cond527 = phi i8* [ %cond522, %cond.end.521 ], [ %355, %cond.false.523 ]
  %356 = bitcast i8* %cond527 to i16*
  %arrayidx528 = getelementptr i16, i16* %356, i64 %340
  %357 = load i16, i16* %arrayidx528, align 2
  %conv529 = zext i16 %357 to i32
  br label %cond.end.554

cond.false.530:                                   ; preds = %cond.false.498
  %358 = load i64, i64* %pos, align 8
  %359 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %360 = bitcast %struct._object* %359 to %struct.PyASCIIObject*
  %state531 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %360, i32 0, i32 3
  %361 = bitcast %struct.anon* %state531 to i32*
  %bf.load532 = load i32, i32* %361, align 4
  %bf.lshr533 = lshr i32 %bf.load532, 5
  %bf.clear534 = and i32 %bf.lshr533, 1
  %tobool535 = icmp ne i32 %bf.clear534, 0
  br i1 %tobool535, label %cond.true.536, label %cond.false.548

cond.true.536:                                    ; preds = %cond.false.530
  %362 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %363 = bitcast %struct._object* %362 to %struct.PyASCIIObject*
  %state537 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %363, i32 0, i32 3
  %364 = bitcast %struct.anon* %state537 to i32*
  %bf.load538 = load i32, i32* %364, align 4
  %bf.lshr539 = lshr i32 %bf.load538, 6
  %bf.clear540 = and i32 %bf.lshr539, 1
  %tobool541 = icmp ne i32 %bf.clear540, 0
  br i1 %tobool541, label %cond.true.542, label %cond.false.544

cond.true.542:                                    ; preds = %cond.true.536
  %365 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %366 = bitcast %struct._object* %365 to %struct.PyASCIIObject*
  %add.ptr543 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %366, i64 1
  %367 = bitcast %struct.PyASCIIObject* %add.ptr543 to i8*
  br label %cond.end.546

cond.false.544:                                   ; preds = %cond.true.536
  %368 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %369 = bitcast %struct._object* %368 to %struct.PyCompactUnicodeObject*
  %add.ptr545 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %369, i64 1
  %370 = bitcast %struct.PyCompactUnicodeObject* %add.ptr545 to i8*
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.false.544, %cond.true.542
  %cond547 = phi i8* [ %367, %cond.true.542 ], [ %370, %cond.false.544 ]
  br label %cond.end.551

cond.false.548:                                   ; preds = %cond.false.530
  %371 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %372 = bitcast %struct._object* %371 to %struct.PyUnicodeObject*
  %data549 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %372, i32 0, i32 1
  %any550 = bitcast %union.anon* %data549 to i8**
  %373 = load i8*, i8** %any550, align 8
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.false.548, %cond.end.546
  %cond552 = phi i8* [ %cond547, %cond.end.546 ], [ %373, %cond.false.548 ]
  %374 = bitcast i8* %cond552 to i32*
  %arrayidx553 = getelementptr i32, i32* %374, i64 %358
  %375 = load i32, i32* %arrayidx553, align 4
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.end.551, %cond.end.526
  %cond555 = phi i32 [ %conv529, %cond.end.526 ], [ %375, %cond.end.551 ]
  br label %cond.end.556

cond.end.556:                                     ; preds = %cond.end.554, %cond.end.494
  %cond557 = phi i32 [ %conv497, %cond.end.494 ], [ %cond555, %cond.end.554 ]
  %call558 = call i32 @is_sign_element(i32 %cond557)
  %tobool559 = icmp ne i32 %call558, 0
  br i1 %tobool559, label %if.then.560, label %if.end.654

if.then.560:                                      ; preds = %cond.end.556
  %376 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %377 = bitcast %struct._object* %376 to %struct.PyASCIIObject*
  %state561 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %377, i32 0, i32 3
  %378 = bitcast %struct.anon* %state561 to i32*
  %bf.load562 = load i32, i32* %378, align 4
  %bf.lshr563 = lshr i32 %bf.load562, 2
  %bf.clear564 = and i32 %bf.lshr563, 7
  %cmp565 = icmp eq i32 %bf.clear564, 1
  br i1 %cmp565, label %cond.true.567, label %cond.false.592

cond.true.567:                                    ; preds = %if.then.560
  %379 = load i64, i64* %pos, align 8
  %380 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %381 = bitcast %struct._object* %380 to %struct.PyASCIIObject*
  %state568 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %381, i32 0, i32 3
  %382 = bitcast %struct.anon* %state568 to i32*
  %bf.load569 = load i32, i32* %382, align 4
  %bf.lshr570 = lshr i32 %bf.load569, 5
  %bf.clear571 = and i32 %bf.lshr570, 1
  %tobool572 = icmp ne i32 %bf.clear571, 0
  br i1 %tobool572, label %cond.true.573, label %cond.false.585

cond.true.573:                                    ; preds = %cond.true.567
  %383 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %384 = bitcast %struct._object* %383 to %struct.PyASCIIObject*
  %state574 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %384, i32 0, i32 3
  %385 = bitcast %struct.anon* %state574 to i32*
  %bf.load575 = load i32, i32* %385, align 4
  %bf.lshr576 = lshr i32 %bf.load575, 6
  %bf.clear577 = and i32 %bf.lshr576, 1
  %tobool578 = icmp ne i32 %bf.clear577, 0
  br i1 %tobool578, label %cond.true.579, label %cond.false.581

cond.true.579:                                    ; preds = %cond.true.573
  %386 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %387 = bitcast %struct._object* %386 to %struct.PyASCIIObject*
  %add.ptr580 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %387, i64 1
  %388 = bitcast %struct.PyASCIIObject* %add.ptr580 to i8*
  br label %cond.end.583

cond.false.581:                                   ; preds = %cond.true.573
  %389 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %390 = bitcast %struct._object* %389 to %struct.PyCompactUnicodeObject*
  %add.ptr582 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %390, i64 1
  %391 = bitcast %struct.PyCompactUnicodeObject* %add.ptr582 to i8*
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.581, %cond.true.579
  %cond584 = phi i8* [ %388, %cond.true.579 ], [ %391, %cond.false.581 ]
  br label %cond.end.588

cond.false.585:                                   ; preds = %cond.true.567
  %392 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %393 = bitcast %struct._object* %392 to %struct.PyUnicodeObject*
  %data586 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %393, i32 0, i32 1
  %any587 = bitcast %union.anon* %data586 to i8**
  %394 = load i8*, i8** %any587, align 8
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.false.585, %cond.end.583
  %cond589 = phi i8* [ %cond584, %cond.end.583 ], [ %394, %cond.false.585 ]
  %arrayidx590 = getelementptr i8, i8* %cond589, i64 %379
  %395 = load i8, i8* %arrayidx590, align 1
  %conv591 = zext i8 %395 to i32
  br label %cond.end.650

cond.false.592:                                   ; preds = %if.then.560
  %396 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %397 = bitcast %struct._object* %396 to %struct.PyASCIIObject*
  %state593 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %397, i32 0, i32 3
  %398 = bitcast %struct.anon* %state593 to i32*
  %bf.load594 = load i32, i32* %398, align 4
  %bf.lshr595 = lshr i32 %bf.load594, 2
  %bf.clear596 = and i32 %bf.lshr595, 7
  %cmp597 = icmp eq i32 %bf.clear596, 2
  br i1 %cmp597, label %cond.true.599, label %cond.false.624

cond.true.599:                                    ; preds = %cond.false.592
  %399 = load i64, i64* %pos, align 8
  %400 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %401 = bitcast %struct._object* %400 to %struct.PyASCIIObject*
  %state600 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %401, i32 0, i32 3
  %402 = bitcast %struct.anon* %state600 to i32*
  %bf.load601 = load i32, i32* %402, align 4
  %bf.lshr602 = lshr i32 %bf.load601, 5
  %bf.clear603 = and i32 %bf.lshr602, 1
  %tobool604 = icmp ne i32 %bf.clear603, 0
  br i1 %tobool604, label %cond.true.605, label %cond.false.617

cond.true.605:                                    ; preds = %cond.true.599
  %403 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %404 = bitcast %struct._object* %403 to %struct.PyASCIIObject*
  %state606 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %404, i32 0, i32 3
  %405 = bitcast %struct.anon* %state606 to i32*
  %bf.load607 = load i32, i32* %405, align 4
  %bf.lshr608 = lshr i32 %bf.load607, 6
  %bf.clear609 = and i32 %bf.lshr608, 1
  %tobool610 = icmp ne i32 %bf.clear609, 0
  br i1 %tobool610, label %cond.true.611, label %cond.false.613

cond.true.611:                                    ; preds = %cond.true.605
  %406 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %407 = bitcast %struct._object* %406 to %struct.PyASCIIObject*
  %add.ptr612 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %407, i64 1
  %408 = bitcast %struct.PyASCIIObject* %add.ptr612 to i8*
  br label %cond.end.615

cond.false.613:                                   ; preds = %cond.true.605
  %409 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %410 = bitcast %struct._object* %409 to %struct.PyCompactUnicodeObject*
  %add.ptr614 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %410, i64 1
  %411 = bitcast %struct.PyCompactUnicodeObject* %add.ptr614 to i8*
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.false.613, %cond.true.611
  %cond616 = phi i8* [ %408, %cond.true.611 ], [ %411, %cond.false.613 ]
  br label %cond.end.620

cond.false.617:                                   ; preds = %cond.true.599
  %412 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %413 = bitcast %struct._object* %412 to %struct.PyUnicodeObject*
  %data618 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %413, i32 0, i32 1
  %any619 = bitcast %union.anon* %data618 to i8**
  %414 = load i8*, i8** %any619, align 8
  br label %cond.end.620

cond.end.620:                                     ; preds = %cond.false.617, %cond.end.615
  %cond621 = phi i8* [ %cond616, %cond.end.615 ], [ %414, %cond.false.617 ]
  %415 = bitcast i8* %cond621 to i16*
  %arrayidx622 = getelementptr i16, i16* %415, i64 %399
  %416 = load i16, i16* %arrayidx622, align 2
  %conv623 = zext i16 %416 to i32
  br label %cond.end.648

cond.false.624:                                   ; preds = %cond.false.592
  %417 = load i64, i64* %pos, align 8
  %418 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %419 = bitcast %struct._object* %418 to %struct.PyASCIIObject*
  %state625 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %419, i32 0, i32 3
  %420 = bitcast %struct.anon* %state625 to i32*
  %bf.load626 = load i32, i32* %420, align 4
  %bf.lshr627 = lshr i32 %bf.load626, 5
  %bf.clear628 = and i32 %bf.lshr627, 1
  %tobool629 = icmp ne i32 %bf.clear628, 0
  br i1 %tobool629, label %cond.true.630, label %cond.false.642

cond.true.630:                                    ; preds = %cond.false.624
  %421 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %422 = bitcast %struct._object* %421 to %struct.PyASCIIObject*
  %state631 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %422, i32 0, i32 3
  %423 = bitcast %struct.anon* %state631 to i32*
  %bf.load632 = load i32, i32* %423, align 4
  %bf.lshr633 = lshr i32 %bf.load632, 6
  %bf.clear634 = and i32 %bf.lshr633, 1
  %tobool635 = icmp ne i32 %bf.clear634, 0
  br i1 %tobool635, label %cond.true.636, label %cond.false.638

cond.true.636:                                    ; preds = %cond.true.630
  %424 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %425 = bitcast %struct._object* %424 to %struct.PyASCIIObject*
  %add.ptr637 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %425, i64 1
  %426 = bitcast %struct.PyASCIIObject* %add.ptr637 to i8*
  br label %cond.end.640

cond.false.638:                                   ; preds = %cond.true.630
  %427 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %428 = bitcast %struct._object* %427 to %struct.PyCompactUnicodeObject*
  %add.ptr639 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %428, i64 1
  %429 = bitcast %struct.PyCompactUnicodeObject* %add.ptr639 to i8*
  br label %cond.end.640

cond.end.640:                                     ; preds = %cond.false.638, %cond.true.636
  %cond641 = phi i8* [ %426, %cond.true.636 ], [ %429, %cond.false.638 ]
  br label %cond.end.645

cond.false.642:                                   ; preds = %cond.false.624
  %430 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %431 = bitcast %struct._object* %430 to %struct.PyUnicodeObject*
  %data643 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %431, i32 0, i32 1
  %any644 = bitcast %union.anon* %data643 to i8**
  %432 = load i8*, i8** %any644, align 8
  br label %cond.end.645

cond.end.645:                                     ; preds = %cond.false.642, %cond.end.640
  %cond646 = phi i8* [ %cond641, %cond.end.640 ], [ %432, %cond.false.642 ]
  %433 = bitcast i8* %cond646 to i32*
  %arrayidx647 = getelementptr i32, i32* %433, i64 %417
  %434 = load i32, i32* %arrayidx647, align 4
  br label %cond.end.648

cond.end.648:                                     ; preds = %cond.end.645, %cond.end.620
  %cond649 = phi i32 [ %conv623, %cond.end.620 ], [ %434, %cond.end.645 ]
  br label %cond.end.650

cond.end.650:                                     ; preds = %cond.end.648, %cond.end.588
  %cond651 = phi i32 [ %conv591, %cond.end.588 ], [ %cond649, %cond.end.648 ]
  %435 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign652 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %435, i32 0, i32 3
  store i32 %cond651, i32* %sign652, align 4
  %436 = load i64, i64* %pos, align 8
  %inc653 = add i64 %436, 1
  store i64 %inc653, i64* %pos, align 8
  br label %if.end.654

if.end.654:                                       ; preds = %cond.end.650, %cond.end.556, %if.end.462
  %437 = load i64, i64* %end.addr, align 8
  %438 = load i64, i64* %pos, align 8
  %sub655 = sub i64 %437, %438
  %cmp656 = icmp sge i64 %sub655, 1
  br i1 %cmp656, label %land.lhs.true.658, label %if.end.755

land.lhs.true.658:                                ; preds = %if.end.654
  %439 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %440 = bitcast %struct._object* %439 to %struct.PyASCIIObject*
  %state659 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %440, i32 0, i32 3
  %441 = bitcast %struct.anon* %state659 to i32*
  %bf.load660 = load i32, i32* %441, align 4
  %bf.lshr661 = lshr i32 %bf.load660, 2
  %bf.clear662 = and i32 %bf.lshr661, 7
  %cmp663 = icmp eq i32 %bf.clear662, 1
  br i1 %cmp663, label %cond.true.665, label %cond.false.690

cond.true.665:                                    ; preds = %land.lhs.true.658
  %442 = load i64, i64* %pos, align 8
  %443 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %444 = bitcast %struct._object* %443 to %struct.PyASCIIObject*
  %state666 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %444, i32 0, i32 3
  %445 = bitcast %struct.anon* %state666 to i32*
  %bf.load667 = load i32, i32* %445, align 4
  %bf.lshr668 = lshr i32 %bf.load667, 5
  %bf.clear669 = and i32 %bf.lshr668, 1
  %tobool670 = icmp ne i32 %bf.clear669, 0
  br i1 %tobool670, label %cond.true.671, label %cond.false.683

cond.true.671:                                    ; preds = %cond.true.665
  %446 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %447 = bitcast %struct._object* %446 to %struct.PyASCIIObject*
  %state672 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %447, i32 0, i32 3
  %448 = bitcast %struct.anon* %state672 to i32*
  %bf.load673 = load i32, i32* %448, align 4
  %bf.lshr674 = lshr i32 %bf.load673, 6
  %bf.clear675 = and i32 %bf.lshr674, 1
  %tobool676 = icmp ne i32 %bf.clear675, 0
  br i1 %tobool676, label %cond.true.677, label %cond.false.679

cond.true.677:                                    ; preds = %cond.true.671
  %449 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %450 = bitcast %struct._object* %449 to %struct.PyASCIIObject*
  %add.ptr678 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %450, i64 1
  %451 = bitcast %struct.PyASCIIObject* %add.ptr678 to i8*
  br label %cond.end.681

cond.false.679:                                   ; preds = %cond.true.671
  %452 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %453 = bitcast %struct._object* %452 to %struct.PyCompactUnicodeObject*
  %add.ptr680 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %453, i64 1
  %454 = bitcast %struct.PyCompactUnicodeObject* %add.ptr680 to i8*
  br label %cond.end.681

cond.end.681:                                     ; preds = %cond.false.679, %cond.true.677
  %cond682 = phi i8* [ %451, %cond.true.677 ], [ %454, %cond.false.679 ]
  br label %cond.end.686

cond.false.683:                                   ; preds = %cond.true.665
  %455 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %456 = bitcast %struct._object* %455 to %struct.PyUnicodeObject*
  %data684 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %456, i32 0, i32 1
  %any685 = bitcast %union.anon* %data684 to i8**
  %457 = load i8*, i8** %any685, align 8
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.683, %cond.end.681
  %cond687 = phi i8* [ %cond682, %cond.end.681 ], [ %457, %cond.false.683 ]
  %arrayidx688 = getelementptr i8, i8* %cond687, i64 %442
  %458 = load i8, i8* %arrayidx688, align 1
  %conv689 = zext i8 %458 to i32
  br label %cond.end.748

cond.false.690:                                   ; preds = %land.lhs.true.658
  %459 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %460 = bitcast %struct._object* %459 to %struct.PyASCIIObject*
  %state691 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %460, i32 0, i32 3
  %461 = bitcast %struct.anon* %state691 to i32*
  %bf.load692 = load i32, i32* %461, align 4
  %bf.lshr693 = lshr i32 %bf.load692, 2
  %bf.clear694 = and i32 %bf.lshr693, 7
  %cmp695 = icmp eq i32 %bf.clear694, 2
  br i1 %cmp695, label %cond.true.697, label %cond.false.722

cond.true.697:                                    ; preds = %cond.false.690
  %462 = load i64, i64* %pos, align 8
  %463 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %464 = bitcast %struct._object* %463 to %struct.PyASCIIObject*
  %state698 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %464, i32 0, i32 3
  %465 = bitcast %struct.anon* %state698 to i32*
  %bf.load699 = load i32, i32* %465, align 4
  %bf.lshr700 = lshr i32 %bf.load699, 5
  %bf.clear701 = and i32 %bf.lshr700, 1
  %tobool702 = icmp ne i32 %bf.clear701, 0
  br i1 %tobool702, label %cond.true.703, label %cond.false.715

cond.true.703:                                    ; preds = %cond.true.697
  %466 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %467 = bitcast %struct._object* %466 to %struct.PyASCIIObject*
  %state704 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %467, i32 0, i32 3
  %468 = bitcast %struct.anon* %state704 to i32*
  %bf.load705 = load i32, i32* %468, align 4
  %bf.lshr706 = lshr i32 %bf.load705, 6
  %bf.clear707 = and i32 %bf.lshr706, 1
  %tobool708 = icmp ne i32 %bf.clear707, 0
  br i1 %tobool708, label %cond.true.709, label %cond.false.711

cond.true.709:                                    ; preds = %cond.true.703
  %469 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %470 = bitcast %struct._object* %469 to %struct.PyASCIIObject*
  %add.ptr710 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %470, i64 1
  %471 = bitcast %struct.PyASCIIObject* %add.ptr710 to i8*
  br label %cond.end.713

cond.false.711:                                   ; preds = %cond.true.703
  %472 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %473 = bitcast %struct._object* %472 to %struct.PyCompactUnicodeObject*
  %add.ptr712 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %473, i64 1
  %474 = bitcast %struct.PyCompactUnicodeObject* %add.ptr712 to i8*
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.711, %cond.true.709
  %cond714 = phi i8* [ %471, %cond.true.709 ], [ %474, %cond.false.711 ]
  br label %cond.end.718

cond.false.715:                                   ; preds = %cond.true.697
  %475 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %476 = bitcast %struct._object* %475 to %struct.PyUnicodeObject*
  %data716 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %476, i32 0, i32 1
  %any717 = bitcast %union.anon* %data716 to i8**
  %477 = load i8*, i8** %any717, align 8
  br label %cond.end.718

cond.end.718:                                     ; preds = %cond.false.715, %cond.end.713
  %cond719 = phi i8* [ %cond714, %cond.end.713 ], [ %477, %cond.false.715 ]
  %478 = bitcast i8* %cond719 to i16*
  %arrayidx720 = getelementptr i16, i16* %478, i64 %462
  %479 = load i16, i16* %arrayidx720, align 2
  %conv721 = zext i16 %479 to i32
  br label %cond.end.746

cond.false.722:                                   ; preds = %cond.false.690
  %480 = load i64, i64* %pos, align 8
  %481 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %482 = bitcast %struct._object* %481 to %struct.PyASCIIObject*
  %state723 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %482, i32 0, i32 3
  %483 = bitcast %struct.anon* %state723 to i32*
  %bf.load724 = load i32, i32* %483, align 4
  %bf.lshr725 = lshr i32 %bf.load724, 5
  %bf.clear726 = and i32 %bf.lshr725, 1
  %tobool727 = icmp ne i32 %bf.clear726, 0
  br i1 %tobool727, label %cond.true.728, label %cond.false.740

cond.true.728:                                    ; preds = %cond.false.722
  %484 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %485 = bitcast %struct._object* %484 to %struct.PyASCIIObject*
  %state729 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %485, i32 0, i32 3
  %486 = bitcast %struct.anon* %state729 to i32*
  %bf.load730 = load i32, i32* %486, align 4
  %bf.lshr731 = lshr i32 %bf.load730, 6
  %bf.clear732 = and i32 %bf.lshr731, 1
  %tobool733 = icmp ne i32 %bf.clear732, 0
  br i1 %tobool733, label %cond.true.734, label %cond.false.736

cond.true.734:                                    ; preds = %cond.true.728
  %487 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %488 = bitcast %struct._object* %487 to %struct.PyASCIIObject*
  %add.ptr735 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %488, i64 1
  %489 = bitcast %struct.PyASCIIObject* %add.ptr735 to i8*
  br label %cond.end.738

cond.false.736:                                   ; preds = %cond.true.728
  %490 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %491 = bitcast %struct._object* %490 to %struct.PyCompactUnicodeObject*
  %add.ptr737 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %491, i64 1
  %492 = bitcast %struct.PyCompactUnicodeObject* %add.ptr737 to i8*
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.736, %cond.true.734
  %cond739 = phi i8* [ %489, %cond.true.734 ], [ %492, %cond.false.736 ]
  br label %cond.end.743

cond.false.740:                                   ; preds = %cond.false.722
  %493 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %494 = bitcast %struct._object* %493 to %struct.PyUnicodeObject*
  %data741 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %494, i32 0, i32 1
  %any742 = bitcast %union.anon* %data741 to i8**
  %495 = load i8*, i8** %any742, align 8
  br label %cond.end.743

cond.end.743:                                     ; preds = %cond.false.740, %cond.end.738
  %cond744 = phi i8* [ %cond739, %cond.end.738 ], [ %495, %cond.false.740 ]
  %496 = bitcast i8* %cond744 to i32*
  %arrayidx745 = getelementptr i32, i32* %496, i64 %480
  %497 = load i32, i32* %arrayidx745, align 4
  br label %cond.end.746

cond.end.746:                                     ; preds = %cond.end.743, %cond.end.718
  %cond747 = phi i32 [ %conv721, %cond.end.718 ], [ %497, %cond.end.743 ]
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.end.746, %cond.end.686
  %cond749 = phi i32 [ %conv689, %cond.end.686 ], [ %cond747, %cond.end.746 ]
  %cmp750 = icmp eq i32 %cond749, 35
  br i1 %cmp750, label %if.then.752, label %if.end.755

if.then.752:                                      ; preds = %cond.end.748
  %498 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate753 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %498, i32 0, i32 2
  store i32 1, i32* %alternate753, align 4
  %499 = load i64, i64* %pos, align 8
  %inc754 = add i64 %499, 1
  store i64 %inc754, i64* %pos, align 8
  br label %if.end.755

if.end.755:                                       ; preds = %if.then.752, %cond.end.748, %if.end.654
  %500 = load i32, i32* %fill_char_specified, align 4
  %tobool756 = icmp ne i32 %500, 0
  br i1 %tobool756, label %if.end.862, label %land.lhs.true.757

land.lhs.true.757:                                ; preds = %if.end.755
  %501 = load i64, i64* %end.addr, align 8
  %502 = load i64, i64* %pos, align 8
  %sub758 = sub i64 %501, %502
  %cmp759 = icmp sge i64 %sub758, 1
  br i1 %cmp759, label %land.lhs.true.761, label %if.end.862

land.lhs.true.761:                                ; preds = %land.lhs.true.757
  %503 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %504 = bitcast %struct._object* %503 to %struct.PyASCIIObject*
  %state762 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %504, i32 0, i32 3
  %505 = bitcast %struct.anon* %state762 to i32*
  %bf.load763 = load i32, i32* %505, align 4
  %bf.lshr764 = lshr i32 %bf.load763, 2
  %bf.clear765 = and i32 %bf.lshr764, 7
  %cmp766 = icmp eq i32 %bf.clear765, 1
  br i1 %cmp766, label %cond.true.768, label %cond.false.793

cond.true.768:                                    ; preds = %land.lhs.true.761
  %506 = load i64, i64* %pos, align 8
  %507 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %508 = bitcast %struct._object* %507 to %struct.PyASCIIObject*
  %state769 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %508, i32 0, i32 3
  %509 = bitcast %struct.anon* %state769 to i32*
  %bf.load770 = load i32, i32* %509, align 4
  %bf.lshr771 = lshr i32 %bf.load770, 5
  %bf.clear772 = and i32 %bf.lshr771, 1
  %tobool773 = icmp ne i32 %bf.clear772, 0
  br i1 %tobool773, label %cond.true.774, label %cond.false.786

cond.true.774:                                    ; preds = %cond.true.768
  %510 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %511 = bitcast %struct._object* %510 to %struct.PyASCIIObject*
  %state775 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %511, i32 0, i32 3
  %512 = bitcast %struct.anon* %state775 to i32*
  %bf.load776 = load i32, i32* %512, align 4
  %bf.lshr777 = lshr i32 %bf.load776, 6
  %bf.clear778 = and i32 %bf.lshr777, 1
  %tobool779 = icmp ne i32 %bf.clear778, 0
  br i1 %tobool779, label %cond.true.780, label %cond.false.782

cond.true.780:                                    ; preds = %cond.true.774
  %513 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %514 = bitcast %struct._object* %513 to %struct.PyASCIIObject*
  %add.ptr781 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %514, i64 1
  %515 = bitcast %struct.PyASCIIObject* %add.ptr781 to i8*
  br label %cond.end.784

cond.false.782:                                   ; preds = %cond.true.774
  %516 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %517 = bitcast %struct._object* %516 to %struct.PyCompactUnicodeObject*
  %add.ptr783 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %517, i64 1
  %518 = bitcast %struct.PyCompactUnicodeObject* %add.ptr783 to i8*
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.false.782, %cond.true.780
  %cond785 = phi i8* [ %515, %cond.true.780 ], [ %518, %cond.false.782 ]
  br label %cond.end.789

cond.false.786:                                   ; preds = %cond.true.768
  %519 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %520 = bitcast %struct._object* %519 to %struct.PyUnicodeObject*
  %data787 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %520, i32 0, i32 1
  %any788 = bitcast %union.anon* %data787 to i8**
  %521 = load i8*, i8** %any788, align 8
  br label %cond.end.789

cond.end.789:                                     ; preds = %cond.false.786, %cond.end.784
  %cond790 = phi i8* [ %cond785, %cond.end.784 ], [ %521, %cond.false.786 ]
  %arrayidx791 = getelementptr i8, i8* %cond790, i64 %506
  %522 = load i8, i8* %arrayidx791, align 1
  %conv792 = zext i8 %522 to i32
  br label %cond.end.851

cond.false.793:                                   ; preds = %land.lhs.true.761
  %523 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %524 = bitcast %struct._object* %523 to %struct.PyASCIIObject*
  %state794 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %524, i32 0, i32 3
  %525 = bitcast %struct.anon* %state794 to i32*
  %bf.load795 = load i32, i32* %525, align 4
  %bf.lshr796 = lshr i32 %bf.load795, 2
  %bf.clear797 = and i32 %bf.lshr796, 7
  %cmp798 = icmp eq i32 %bf.clear797, 2
  br i1 %cmp798, label %cond.true.800, label %cond.false.825

cond.true.800:                                    ; preds = %cond.false.793
  %526 = load i64, i64* %pos, align 8
  %527 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %528 = bitcast %struct._object* %527 to %struct.PyASCIIObject*
  %state801 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %528, i32 0, i32 3
  %529 = bitcast %struct.anon* %state801 to i32*
  %bf.load802 = load i32, i32* %529, align 4
  %bf.lshr803 = lshr i32 %bf.load802, 5
  %bf.clear804 = and i32 %bf.lshr803, 1
  %tobool805 = icmp ne i32 %bf.clear804, 0
  br i1 %tobool805, label %cond.true.806, label %cond.false.818

cond.true.806:                                    ; preds = %cond.true.800
  %530 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %531 = bitcast %struct._object* %530 to %struct.PyASCIIObject*
  %state807 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %531, i32 0, i32 3
  %532 = bitcast %struct.anon* %state807 to i32*
  %bf.load808 = load i32, i32* %532, align 4
  %bf.lshr809 = lshr i32 %bf.load808, 6
  %bf.clear810 = and i32 %bf.lshr809, 1
  %tobool811 = icmp ne i32 %bf.clear810, 0
  br i1 %tobool811, label %cond.true.812, label %cond.false.814

cond.true.812:                                    ; preds = %cond.true.806
  %533 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %534 = bitcast %struct._object* %533 to %struct.PyASCIIObject*
  %add.ptr813 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %534, i64 1
  %535 = bitcast %struct.PyASCIIObject* %add.ptr813 to i8*
  br label %cond.end.816

cond.false.814:                                   ; preds = %cond.true.806
  %536 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %537 = bitcast %struct._object* %536 to %struct.PyCompactUnicodeObject*
  %add.ptr815 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %537, i64 1
  %538 = bitcast %struct.PyCompactUnicodeObject* %add.ptr815 to i8*
  br label %cond.end.816

cond.end.816:                                     ; preds = %cond.false.814, %cond.true.812
  %cond817 = phi i8* [ %535, %cond.true.812 ], [ %538, %cond.false.814 ]
  br label %cond.end.821

cond.false.818:                                   ; preds = %cond.true.800
  %539 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %540 = bitcast %struct._object* %539 to %struct.PyUnicodeObject*
  %data819 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %540, i32 0, i32 1
  %any820 = bitcast %union.anon* %data819 to i8**
  %541 = load i8*, i8** %any820, align 8
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.818, %cond.end.816
  %cond822 = phi i8* [ %cond817, %cond.end.816 ], [ %541, %cond.false.818 ]
  %542 = bitcast i8* %cond822 to i16*
  %arrayidx823 = getelementptr i16, i16* %542, i64 %526
  %543 = load i16, i16* %arrayidx823, align 2
  %conv824 = zext i16 %543 to i32
  br label %cond.end.849

cond.false.825:                                   ; preds = %cond.false.793
  %544 = load i64, i64* %pos, align 8
  %545 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %546 = bitcast %struct._object* %545 to %struct.PyASCIIObject*
  %state826 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %546, i32 0, i32 3
  %547 = bitcast %struct.anon* %state826 to i32*
  %bf.load827 = load i32, i32* %547, align 4
  %bf.lshr828 = lshr i32 %bf.load827, 5
  %bf.clear829 = and i32 %bf.lshr828, 1
  %tobool830 = icmp ne i32 %bf.clear829, 0
  br i1 %tobool830, label %cond.true.831, label %cond.false.843

cond.true.831:                                    ; preds = %cond.false.825
  %548 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %549 = bitcast %struct._object* %548 to %struct.PyASCIIObject*
  %state832 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %549, i32 0, i32 3
  %550 = bitcast %struct.anon* %state832 to i32*
  %bf.load833 = load i32, i32* %550, align 4
  %bf.lshr834 = lshr i32 %bf.load833, 6
  %bf.clear835 = and i32 %bf.lshr834, 1
  %tobool836 = icmp ne i32 %bf.clear835, 0
  br i1 %tobool836, label %cond.true.837, label %cond.false.839

cond.true.837:                                    ; preds = %cond.true.831
  %551 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %552 = bitcast %struct._object* %551 to %struct.PyASCIIObject*
  %add.ptr838 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %552, i64 1
  %553 = bitcast %struct.PyASCIIObject* %add.ptr838 to i8*
  br label %cond.end.841

cond.false.839:                                   ; preds = %cond.true.831
  %554 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %555 = bitcast %struct._object* %554 to %struct.PyCompactUnicodeObject*
  %add.ptr840 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %555, i64 1
  %556 = bitcast %struct.PyCompactUnicodeObject* %add.ptr840 to i8*
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.false.839, %cond.true.837
  %cond842 = phi i8* [ %553, %cond.true.837 ], [ %556, %cond.false.839 ]
  br label %cond.end.846

cond.false.843:                                   ; preds = %cond.false.825
  %557 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %558 = bitcast %struct._object* %557 to %struct.PyUnicodeObject*
  %data844 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %558, i32 0, i32 1
  %any845 = bitcast %union.anon* %data844 to i8**
  %559 = load i8*, i8** %any845, align 8
  br label %cond.end.846

cond.end.846:                                     ; preds = %cond.false.843, %cond.end.841
  %cond847 = phi i8* [ %cond842, %cond.end.841 ], [ %559, %cond.false.843 ]
  %560 = bitcast i8* %cond847 to i32*
  %arrayidx848 = getelementptr i32, i32* %560, i64 %544
  %561 = load i32, i32* %arrayidx848, align 4
  br label %cond.end.849

cond.end.849:                                     ; preds = %cond.end.846, %cond.end.821
  %cond850 = phi i32 [ %conv824, %cond.end.821 ], [ %561, %cond.end.846 ]
  br label %cond.end.851

cond.end.851:                                     ; preds = %cond.end.849, %cond.end.789
  %cond852 = phi i32 [ %conv792, %cond.end.789 ], [ %cond850, %cond.end.849 ]
  %cmp853 = icmp eq i32 %cond852, 48
  br i1 %cmp853, label %if.then.855, label %if.end.862

if.then.855:                                      ; preds = %cond.end.851
  %562 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char856 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %562, i32 0, i32 0
  store i32 48, i32* %fill_char856, align 4
  %563 = load i32, i32* %align_specified, align 4
  %tobool857 = icmp ne i32 %563, 0
  br i1 %tobool857, label %if.end.860, label %if.then.858

if.then.858:                                      ; preds = %if.then.855
  %564 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align859 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %564, i32 0, i32 1
  store i32 61, i32* %align859, align 4
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.858, %if.then.855
  %565 = load i64, i64* %pos, align 8
  %inc861 = add i64 %565, 1
  store i64 %inc861, i64* %pos, align 8
  br label %if.end.862

if.end.862:                                       ; preds = %if.end.860, %cond.end.851, %land.lhs.true.757, %if.end.755
  %566 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %567 = load i64, i64* %end.addr, align 8
  %568 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width863 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %568, i32 0, i32 4
  %call864 = call i32 @get_integer(%struct._object* %566, i64* %pos, i64 %567, i64* %width863)
  %conv865 = sext i32 %call864 to i64
  store i64 %conv865, i64* %consumed, align 8
  %569 = load i64, i64* %consumed, align 8
  %cmp866 = icmp eq i64 %569, -1
  br i1 %cmp866, label %if.then.868, label %if.end.869

if.then.868:                                      ; preds = %if.end.862
  store i32 0, i32* %retval
  br label %return

if.end.869:                                       ; preds = %if.end.862
  %570 = load i64, i64* %consumed, align 8
  %cmp870 = icmp eq i64 %570, 0
  br i1 %cmp870, label %if.then.872, label %if.end.874

if.then.872:                                      ; preds = %if.end.869
  %571 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width873 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %571, i32 0, i32 4
  store i64 -1, i64* %width873, align 8
  br label %if.end.874

if.end.874:                                       ; preds = %if.then.872, %if.end.869
  %572 = load i64, i64* %end.addr, align 8
  %573 = load i64, i64* %pos, align 8
  %sub875 = sub i64 %572, %573
  %tobool876 = icmp ne i64 %sub875, 0
  br i1 %tobool876, label %land.lhs.true.877, label %if.end.974

land.lhs.true.877:                                ; preds = %if.end.874
  %574 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %575 = bitcast %struct._object* %574 to %struct.PyASCIIObject*
  %state878 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %575, i32 0, i32 3
  %576 = bitcast %struct.anon* %state878 to i32*
  %bf.load879 = load i32, i32* %576, align 4
  %bf.lshr880 = lshr i32 %bf.load879, 2
  %bf.clear881 = and i32 %bf.lshr880, 7
  %cmp882 = icmp eq i32 %bf.clear881, 1
  br i1 %cmp882, label %cond.true.884, label %cond.false.909

cond.true.884:                                    ; preds = %land.lhs.true.877
  %577 = load i64, i64* %pos, align 8
  %578 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %579 = bitcast %struct._object* %578 to %struct.PyASCIIObject*
  %state885 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %579, i32 0, i32 3
  %580 = bitcast %struct.anon* %state885 to i32*
  %bf.load886 = load i32, i32* %580, align 4
  %bf.lshr887 = lshr i32 %bf.load886, 5
  %bf.clear888 = and i32 %bf.lshr887, 1
  %tobool889 = icmp ne i32 %bf.clear888, 0
  br i1 %tobool889, label %cond.true.890, label %cond.false.902

cond.true.890:                                    ; preds = %cond.true.884
  %581 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %582 = bitcast %struct._object* %581 to %struct.PyASCIIObject*
  %state891 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %582, i32 0, i32 3
  %583 = bitcast %struct.anon* %state891 to i32*
  %bf.load892 = load i32, i32* %583, align 4
  %bf.lshr893 = lshr i32 %bf.load892, 6
  %bf.clear894 = and i32 %bf.lshr893, 1
  %tobool895 = icmp ne i32 %bf.clear894, 0
  br i1 %tobool895, label %cond.true.896, label %cond.false.898

cond.true.896:                                    ; preds = %cond.true.890
  %584 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %585 = bitcast %struct._object* %584 to %struct.PyASCIIObject*
  %add.ptr897 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %585, i64 1
  %586 = bitcast %struct.PyASCIIObject* %add.ptr897 to i8*
  br label %cond.end.900

cond.false.898:                                   ; preds = %cond.true.890
  %587 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %588 = bitcast %struct._object* %587 to %struct.PyCompactUnicodeObject*
  %add.ptr899 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %588, i64 1
  %589 = bitcast %struct.PyCompactUnicodeObject* %add.ptr899 to i8*
  br label %cond.end.900

cond.end.900:                                     ; preds = %cond.false.898, %cond.true.896
  %cond901 = phi i8* [ %586, %cond.true.896 ], [ %589, %cond.false.898 ]
  br label %cond.end.905

cond.false.902:                                   ; preds = %cond.true.884
  %590 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %591 = bitcast %struct._object* %590 to %struct.PyUnicodeObject*
  %data903 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %591, i32 0, i32 1
  %any904 = bitcast %union.anon* %data903 to i8**
  %592 = load i8*, i8** %any904, align 8
  br label %cond.end.905

cond.end.905:                                     ; preds = %cond.false.902, %cond.end.900
  %cond906 = phi i8* [ %cond901, %cond.end.900 ], [ %592, %cond.false.902 ]
  %arrayidx907 = getelementptr i8, i8* %cond906, i64 %577
  %593 = load i8, i8* %arrayidx907, align 1
  %conv908 = zext i8 %593 to i32
  br label %cond.end.967

cond.false.909:                                   ; preds = %land.lhs.true.877
  %594 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %595 = bitcast %struct._object* %594 to %struct.PyASCIIObject*
  %state910 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %595, i32 0, i32 3
  %596 = bitcast %struct.anon* %state910 to i32*
  %bf.load911 = load i32, i32* %596, align 4
  %bf.lshr912 = lshr i32 %bf.load911, 2
  %bf.clear913 = and i32 %bf.lshr912, 7
  %cmp914 = icmp eq i32 %bf.clear913, 2
  br i1 %cmp914, label %cond.true.916, label %cond.false.941

cond.true.916:                                    ; preds = %cond.false.909
  %597 = load i64, i64* %pos, align 8
  %598 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %599 = bitcast %struct._object* %598 to %struct.PyASCIIObject*
  %state917 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %599, i32 0, i32 3
  %600 = bitcast %struct.anon* %state917 to i32*
  %bf.load918 = load i32, i32* %600, align 4
  %bf.lshr919 = lshr i32 %bf.load918, 5
  %bf.clear920 = and i32 %bf.lshr919, 1
  %tobool921 = icmp ne i32 %bf.clear920, 0
  br i1 %tobool921, label %cond.true.922, label %cond.false.934

cond.true.922:                                    ; preds = %cond.true.916
  %601 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %602 = bitcast %struct._object* %601 to %struct.PyASCIIObject*
  %state923 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %602, i32 0, i32 3
  %603 = bitcast %struct.anon* %state923 to i32*
  %bf.load924 = load i32, i32* %603, align 4
  %bf.lshr925 = lshr i32 %bf.load924, 6
  %bf.clear926 = and i32 %bf.lshr925, 1
  %tobool927 = icmp ne i32 %bf.clear926, 0
  br i1 %tobool927, label %cond.true.928, label %cond.false.930

cond.true.928:                                    ; preds = %cond.true.922
  %604 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %605 = bitcast %struct._object* %604 to %struct.PyASCIIObject*
  %add.ptr929 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %605, i64 1
  %606 = bitcast %struct.PyASCIIObject* %add.ptr929 to i8*
  br label %cond.end.932

cond.false.930:                                   ; preds = %cond.true.922
  %607 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %608 = bitcast %struct._object* %607 to %struct.PyCompactUnicodeObject*
  %add.ptr931 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %608, i64 1
  %609 = bitcast %struct.PyCompactUnicodeObject* %add.ptr931 to i8*
  br label %cond.end.932

cond.end.932:                                     ; preds = %cond.false.930, %cond.true.928
  %cond933 = phi i8* [ %606, %cond.true.928 ], [ %609, %cond.false.930 ]
  br label %cond.end.937

cond.false.934:                                   ; preds = %cond.true.916
  %610 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %611 = bitcast %struct._object* %610 to %struct.PyUnicodeObject*
  %data935 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %611, i32 0, i32 1
  %any936 = bitcast %union.anon* %data935 to i8**
  %612 = load i8*, i8** %any936, align 8
  br label %cond.end.937

cond.end.937:                                     ; preds = %cond.false.934, %cond.end.932
  %cond938 = phi i8* [ %cond933, %cond.end.932 ], [ %612, %cond.false.934 ]
  %613 = bitcast i8* %cond938 to i16*
  %arrayidx939 = getelementptr i16, i16* %613, i64 %597
  %614 = load i16, i16* %arrayidx939, align 2
  %conv940 = zext i16 %614 to i32
  br label %cond.end.965

cond.false.941:                                   ; preds = %cond.false.909
  %615 = load i64, i64* %pos, align 8
  %616 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %617 = bitcast %struct._object* %616 to %struct.PyASCIIObject*
  %state942 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %617, i32 0, i32 3
  %618 = bitcast %struct.anon* %state942 to i32*
  %bf.load943 = load i32, i32* %618, align 4
  %bf.lshr944 = lshr i32 %bf.load943, 5
  %bf.clear945 = and i32 %bf.lshr944, 1
  %tobool946 = icmp ne i32 %bf.clear945, 0
  br i1 %tobool946, label %cond.true.947, label %cond.false.959

cond.true.947:                                    ; preds = %cond.false.941
  %619 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %620 = bitcast %struct._object* %619 to %struct.PyASCIIObject*
  %state948 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %620, i32 0, i32 3
  %621 = bitcast %struct.anon* %state948 to i32*
  %bf.load949 = load i32, i32* %621, align 4
  %bf.lshr950 = lshr i32 %bf.load949, 6
  %bf.clear951 = and i32 %bf.lshr950, 1
  %tobool952 = icmp ne i32 %bf.clear951, 0
  br i1 %tobool952, label %cond.true.953, label %cond.false.955

cond.true.953:                                    ; preds = %cond.true.947
  %622 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %623 = bitcast %struct._object* %622 to %struct.PyASCIIObject*
  %add.ptr954 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %623, i64 1
  %624 = bitcast %struct.PyASCIIObject* %add.ptr954 to i8*
  br label %cond.end.957

cond.false.955:                                   ; preds = %cond.true.947
  %625 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %626 = bitcast %struct._object* %625 to %struct.PyCompactUnicodeObject*
  %add.ptr956 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %626, i64 1
  %627 = bitcast %struct.PyCompactUnicodeObject* %add.ptr956 to i8*
  br label %cond.end.957

cond.end.957:                                     ; preds = %cond.false.955, %cond.true.953
  %cond958 = phi i8* [ %624, %cond.true.953 ], [ %627, %cond.false.955 ]
  br label %cond.end.962

cond.false.959:                                   ; preds = %cond.false.941
  %628 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %629 = bitcast %struct._object* %628 to %struct.PyUnicodeObject*
  %data960 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %629, i32 0, i32 1
  %any961 = bitcast %union.anon* %data960 to i8**
  %630 = load i8*, i8** %any961, align 8
  br label %cond.end.962

cond.end.962:                                     ; preds = %cond.false.959, %cond.end.957
  %cond963 = phi i8* [ %cond958, %cond.end.957 ], [ %630, %cond.false.959 ]
  %631 = bitcast i8* %cond963 to i32*
  %arrayidx964 = getelementptr i32, i32* %631, i64 %615
  %632 = load i32, i32* %arrayidx964, align 4
  br label %cond.end.965

cond.end.965:                                     ; preds = %cond.end.962, %cond.end.937
  %cond966 = phi i32 [ %conv940, %cond.end.937 ], [ %632, %cond.end.962 ]
  br label %cond.end.967

cond.end.967:                                     ; preds = %cond.end.965, %cond.end.905
  %cond968 = phi i32 [ %conv908, %cond.end.905 ], [ %cond966, %cond.end.965 ]
  %cmp969 = icmp eq i32 %cond968, 44
  br i1 %cmp969, label %if.then.971, label %if.end.974

if.then.971:                                      ; preds = %cond.end.967
  %633 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators972 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %633, i32 0, i32 5
  store i32 1, i32* %thousands_separators972, align 4
  %634 = load i64, i64* %pos, align 8
  %inc973 = add i64 %634, 1
  store i64 %inc973, i64* %pos, align 8
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.971, %cond.end.967, %if.end.874
  %635 = load i64, i64* %end.addr, align 8
  %636 = load i64, i64* %pos, align 8
  %sub975 = sub i64 %635, %636
  %tobool976 = icmp ne i64 %sub975, 0
  br i1 %tobool976, label %land.lhs.true.977, label %if.end.1085

land.lhs.true.977:                                ; preds = %if.end.974
  %637 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %638 = bitcast %struct._object* %637 to %struct.PyASCIIObject*
  %state978 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %638, i32 0, i32 3
  %639 = bitcast %struct.anon* %state978 to i32*
  %bf.load979 = load i32, i32* %639, align 4
  %bf.lshr980 = lshr i32 %bf.load979, 2
  %bf.clear981 = and i32 %bf.lshr980, 7
  %cmp982 = icmp eq i32 %bf.clear981, 1
  br i1 %cmp982, label %cond.true.984, label %cond.false.1009

cond.true.984:                                    ; preds = %land.lhs.true.977
  %640 = load i64, i64* %pos, align 8
  %641 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %642 = bitcast %struct._object* %641 to %struct.PyASCIIObject*
  %state985 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %642, i32 0, i32 3
  %643 = bitcast %struct.anon* %state985 to i32*
  %bf.load986 = load i32, i32* %643, align 4
  %bf.lshr987 = lshr i32 %bf.load986, 5
  %bf.clear988 = and i32 %bf.lshr987, 1
  %tobool989 = icmp ne i32 %bf.clear988, 0
  br i1 %tobool989, label %cond.true.990, label %cond.false.1002

cond.true.990:                                    ; preds = %cond.true.984
  %644 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %645 = bitcast %struct._object* %644 to %struct.PyASCIIObject*
  %state991 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %645, i32 0, i32 3
  %646 = bitcast %struct.anon* %state991 to i32*
  %bf.load992 = load i32, i32* %646, align 4
  %bf.lshr993 = lshr i32 %bf.load992, 6
  %bf.clear994 = and i32 %bf.lshr993, 1
  %tobool995 = icmp ne i32 %bf.clear994, 0
  br i1 %tobool995, label %cond.true.996, label %cond.false.998

cond.true.996:                                    ; preds = %cond.true.990
  %647 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %648 = bitcast %struct._object* %647 to %struct.PyASCIIObject*
  %add.ptr997 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %648, i64 1
  %649 = bitcast %struct.PyASCIIObject* %add.ptr997 to i8*
  br label %cond.end.1000

cond.false.998:                                   ; preds = %cond.true.990
  %650 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %651 = bitcast %struct._object* %650 to %struct.PyCompactUnicodeObject*
  %add.ptr999 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %651, i64 1
  %652 = bitcast %struct.PyCompactUnicodeObject* %add.ptr999 to i8*
  br label %cond.end.1000

cond.end.1000:                                    ; preds = %cond.false.998, %cond.true.996
  %cond1001 = phi i8* [ %649, %cond.true.996 ], [ %652, %cond.false.998 ]
  br label %cond.end.1005

cond.false.1002:                                  ; preds = %cond.true.984
  %653 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %654 = bitcast %struct._object* %653 to %struct.PyUnicodeObject*
  %data1003 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %654, i32 0, i32 1
  %any1004 = bitcast %union.anon* %data1003 to i8**
  %655 = load i8*, i8** %any1004, align 8
  br label %cond.end.1005

cond.end.1005:                                    ; preds = %cond.false.1002, %cond.end.1000
  %cond1006 = phi i8* [ %cond1001, %cond.end.1000 ], [ %655, %cond.false.1002 ]
  %arrayidx1007 = getelementptr i8, i8* %cond1006, i64 %640
  %656 = load i8, i8* %arrayidx1007, align 1
  %conv1008 = zext i8 %656 to i32
  br label %cond.end.1067

cond.false.1009:                                  ; preds = %land.lhs.true.977
  %657 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %658 = bitcast %struct._object* %657 to %struct.PyASCIIObject*
  %state1010 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %658, i32 0, i32 3
  %659 = bitcast %struct.anon* %state1010 to i32*
  %bf.load1011 = load i32, i32* %659, align 4
  %bf.lshr1012 = lshr i32 %bf.load1011, 2
  %bf.clear1013 = and i32 %bf.lshr1012, 7
  %cmp1014 = icmp eq i32 %bf.clear1013, 2
  br i1 %cmp1014, label %cond.true.1016, label %cond.false.1041

cond.true.1016:                                   ; preds = %cond.false.1009
  %660 = load i64, i64* %pos, align 8
  %661 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %662 = bitcast %struct._object* %661 to %struct.PyASCIIObject*
  %state1017 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %662, i32 0, i32 3
  %663 = bitcast %struct.anon* %state1017 to i32*
  %bf.load1018 = load i32, i32* %663, align 4
  %bf.lshr1019 = lshr i32 %bf.load1018, 5
  %bf.clear1020 = and i32 %bf.lshr1019, 1
  %tobool1021 = icmp ne i32 %bf.clear1020, 0
  br i1 %tobool1021, label %cond.true.1022, label %cond.false.1034

cond.true.1022:                                   ; preds = %cond.true.1016
  %664 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %665 = bitcast %struct._object* %664 to %struct.PyASCIIObject*
  %state1023 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %665, i32 0, i32 3
  %666 = bitcast %struct.anon* %state1023 to i32*
  %bf.load1024 = load i32, i32* %666, align 4
  %bf.lshr1025 = lshr i32 %bf.load1024, 6
  %bf.clear1026 = and i32 %bf.lshr1025, 1
  %tobool1027 = icmp ne i32 %bf.clear1026, 0
  br i1 %tobool1027, label %cond.true.1028, label %cond.false.1030

cond.true.1028:                                   ; preds = %cond.true.1022
  %667 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %668 = bitcast %struct._object* %667 to %struct.PyASCIIObject*
  %add.ptr1029 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %668, i64 1
  %669 = bitcast %struct.PyASCIIObject* %add.ptr1029 to i8*
  br label %cond.end.1032

cond.false.1030:                                  ; preds = %cond.true.1022
  %670 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %671 = bitcast %struct._object* %670 to %struct.PyCompactUnicodeObject*
  %add.ptr1031 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %671, i64 1
  %672 = bitcast %struct.PyCompactUnicodeObject* %add.ptr1031 to i8*
  br label %cond.end.1032

cond.end.1032:                                    ; preds = %cond.false.1030, %cond.true.1028
  %cond1033 = phi i8* [ %669, %cond.true.1028 ], [ %672, %cond.false.1030 ]
  br label %cond.end.1037

cond.false.1034:                                  ; preds = %cond.true.1016
  %673 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %674 = bitcast %struct._object* %673 to %struct.PyUnicodeObject*
  %data1035 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %674, i32 0, i32 1
  %any1036 = bitcast %union.anon* %data1035 to i8**
  %675 = load i8*, i8** %any1036, align 8
  br label %cond.end.1037

cond.end.1037:                                    ; preds = %cond.false.1034, %cond.end.1032
  %cond1038 = phi i8* [ %cond1033, %cond.end.1032 ], [ %675, %cond.false.1034 ]
  %676 = bitcast i8* %cond1038 to i16*
  %arrayidx1039 = getelementptr i16, i16* %676, i64 %660
  %677 = load i16, i16* %arrayidx1039, align 2
  %conv1040 = zext i16 %677 to i32
  br label %cond.end.1065

cond.false.1041:                                  ; preds = %cond.false.1009
  %678 = load i64, i64* %pos, align 8
  %679 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %680 = bitcast %struct._object* %679 to %struct.PyASCIIObject*
  %state1042 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %680, i32 0, i32 3
  %681 = bitcast %struct.anon* %state1042 to i32*
  %bf.load1043 = load i32, i32* %681, align 4
  %bf.lshr1044 = lshr i32 %bf.load1043, 5
  %bf.clear1045 = and i32 %bf.lshr1044, 1
  %tobool1046 = icmp ne i32 %bf.clear1045, 0
  br i1 %tobool1046, label %cond.true.1047, label %cond.false.1059

cond.true.1047:                                   ; preds = %cond.false.1041
  %682 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %683 = bitcast %struct._object* %682 to %struct.PyASCIIObject*
  %state1048 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %683, i32 0, i32 3
  %684 = bitcast %struct.anon* %state1048 to i32*
  %bf.load1049 = load i32, i32* %684, align 4
  %bf.lshr1050 = lshr i32 %bf.load1049, 6
  %bf.clear1051 = and i32 %bf.lshr1050, 1
  %tobool1052 = icmp ne i32 %bf.clear1051, 0
  br i1 %tobool1052, label %cond.true.1053, label %cond.false.1055

cond.true.1053:                                   ; preds = %cond.true.1047
  %685 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %686 = bitcast %struct._object* %685 to %struct.PyASCIIObject*
  %add.ptr1054 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %686, i64 1
  %687 = bitcast %struct.PyASCIIObject* %add.ptr1054 to i8*
  br label %cond.end.1057

cond.false.1055:                                  ; preds = %cond.true.1047
  %688 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %689 = bitcast %struct._object* %688 to %struct.PyCompactUnicodeObject*
  %add.ptr1056 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %689, i64 1
  %690 = bitcast %struct.PyCompactUnicodeObject* %add.ptr1056 to i8*
  br label %cond.end.1057

cond.end.1057:                                    ; preds = %cond.false.1055, %cond.true.1053
  %cond1058 = phi i8* [ %687, %cond.true.1053 ], [ %690, %cond.false.1055 ]
  br label %cond.end.1062

cond.false.1059:                                  ; preds = %cond.false.1041
  %691 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %692 = bitcast %struct._object* %691 to %struct.PyUnicodeObject*
  %data1060 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %692, i32 0, i32 1
  %any1061 = bitcast %union.anon* %data1060 to i8**
  %693 = load i8*, i8** %any1061, align 8
  br label %cond.end.1062

cond.end.1062:                                    ; preds = %cond.false.1059, %cond.end.1057
  %cond1063 = phi i8* [ %cond1058, %cond.end.1057 ], [ %693, %cond.false.1059 ]
  %694 = bitcast i8* %cond1063 to i32*
  %arrayidx1064 = getelementptr i32, i32* %694, i64 %678
  %695 = load i32, i32* %arrayidx1064, align 4
  br label %cond.end.1065

cond.end.1065:                                    ; preds = %cond.end.1062, %cond.end.1037
  %cond1066 = phi i32 [ %conv1040, %cond.end.1037 ], [ %695, %cond.end.1062 ]
  br label %cond.end.1067

cond.end.1067:                                    ; preds = %cond.end.1065, %cond.end.1005
  %cond1068 = phi i32 [ %conv1008, %cond.end.1005 ], [ %cond1066, %cond.end.1065 ]
  %cmp1069 = icmp eq i32 %cond1068, 46
  br i1 %cmp1069, label %if.then.1071, label %if.end.1085

if.then.1071:                                     ; preds = %cond.end.1067
  %696 = load i64, i64* %pos, align 8
  %inc1072 = add i64 %696, 1
  store i64 %inc1072, i64* %pos, align 8
  %697 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %698 = load i64, i64* %end.addr, align 8
  %699 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision1073 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %699, i32 0, i32 6
  %call1074 = call i32 @get_integer(%struct._object* %697, i64* %pos, i64 %698, i64* %precision1073)
  %conv1075 = sext i32 %call1074 to i64
  store i64 %conv1075, i64* %consumed, align 8
  %700 = load i64, i64* %consumed, align 8
  %cmp1076 = icmp eq i64 %700, -1
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %if.then.1071
  store i32 0, i32* %retval
  br label %return

if.end.1079:                                      ; preds = %if.then.1071
  %701 = load i64, i64* %consumed, align 8
  %cmp1080 = icmp eq i64 %701, 0
  br i1 %cmp1080, label %if.then.1082, label %if.end.1084

if.then.1082:                                     ; preds = %if.end.1079
  %702 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call1083 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %702, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.1084:                                      ; preds = %if.end.1079
  br label %if.end.1085

if.end.1085:                                      ; preds = %if.end.1084, %cond.end.1067, %if.end.974
  %703 = load i64, i64* %end.addr, align 8
  %704 = load i64, i64* %pos, align 8
  %sub1086 = sub i64 %703, %704
  %cmp1087 = icmp sgt i64 %sub1086, 1
  br i1 %cmp1087, label %if.then.1089, label %if.end.1091

if.then.1089:                                     ; preds = %if.end.1085
  %705 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call1090 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %705, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.1091:                                      ; preds = %if.end.1085
  %706 = load i64, i64* %end.addr, align 8
  %707 = load i64, i64* %pos, align 8
  %sub1092 = sub i64 %706, %707
  %cmp1093 = icmp eq i64 %sub1092, 1
  br i1 %cmp1093, label %if.then.1095, label %if.end.1189

if.then.1095:                                     ; preds = %if.end.1091
  %708 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %709 = bitcast %struct._object* %708 to %struct.PyASCIIObject*
  %state1096 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %709, i32 0, i32 3
  %710 = bitcast %struct.anon* %state1096 to i32*
  %bf.load1097 = load i32, i32* %710, align 4
  %bf.lshr1098 = lshr i32 %bf.load1097, 2
  %bf.clear1099 = and i32 %bf.lshr1098, 7
  %cmp1100 = icmp eq i32 %bf.clear1099, 1
  br i1 %cmp1100, label %cond.true.1102, label %cond.false.1127

cond.true.1102:                                   ; preds = %if.then.1095
  %711 = load i64, i64* %pos, align 8
  %712 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %713 = bitcast %struct._object* %712 to %struct.PyASCIIObject*
  %state1103 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %713, i32 0, i32 3
  %714 = bitcast %struct.anon* %state1103 to i32*
  %bf.load1104 = load i32, i32* %714, align 4
  %bf.lshr1105 = lshr i32 %bf.load1104, 5
  %bf.clear1106 = and i32 %bf.lshr1105, 1
  %tobool1107 = icmp ne i32 %bf.clear1106, 0
  br i1 %tobool1107, label %cond.true.1108, label %cond.false.1120

cond.true.1108:                                   ; preds = %cond.true.1102
  %715 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %716 = bitcast %struct._object* %715 to %struct.PyASCIIObject*
  %state1109 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %716, i32 0, i32 3
  %717 = bitcast %struct.anon* %state1109 to i32*
  %bf.load1110 = load i32, i32* %717, align 4
  %bf.lshr1111 = lshr i32 %bf.load1110, 6
  %bf.clear1112 = and i32 %bf.lshr1111, 1
  %tobool1113 = icmp ne i32 %bf.clear1112, 0
  br i1 %tobool1113, label %cond.true.1114, label %cond.false.1116

cond.true.1114:                                   ; preds = %cond.true.1108
  %718 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %719 = bitcast %struct._object* %718 to %struct.PyASCIIObject*
  %add.ptr1115 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %719, i64 1
  %720 = bitcast %struct.PyASCIIObject* %add.ptr1115 to i8*
  br label %cond.end.1118

cond.false.1116:                                  ; preds = %cond.true.1108
  %721 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %722 = bitcast %struct._object* %721 to %struct.PyCompactUnicodeObject*
  %add.ptr1117 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %722, i64 1
  %723 = bitcast %struct.PyCompactUnicodeObject* %add.ptr1117 to i8*
  br label %cond.end.1118

cond.end.1118:                                    ; preds = %cond.false.1116, %cond.true.1114
  %cond1119 = phi i8* [ %720, %cond.true.1114 ], [ %723, %cond.false.1116 ]
  br label %cond.end.1123

cond.false.1120:                                  ; preds = %cond.true.1102
  %724 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %725 = bitcast %struct._object* %724 to %struct.PyUnicodeObject*
  %data1121 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %725, i32 0, i32 1
  %any1122 = bitcast %union.anon* %data1121 to i8**
  %726 = load i8*, i8** %any1122, align 8
  br label %cond.end.1123

cond.end.1123:                                    ; preds = %cond.false.1120, %cond.end.1118
  %cond1124 = phi i8* [ %cond1119, %cond.end.1118 ], [ %726, %cond.false.1120 ]
  %arrayidx1125 = getelementptr i8, i8* %cond1124, i64 %711
  %727 = load i8, i8* %arrayidx1125, align 1
  %conv1126 = zext i8 %727 to i32
  br label %cond.end.1185

cond.false.1127:                                  ; preds = %if.then.1095
  %728 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %729 = bitcast %struct._object* %728 to %struct.PyASCIIObject*
  %state1128 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %729, i32 0, i32 3
  %730 = bitcast %struct.anon* %state1128 to i32*
  %bf.load1129 = load i32, i32* %730, align 4
  %bf.lshr1130 = lshr i32 %bf.load1129, 2
  %bf.clear1131 = and i32 %bf.lshr1130, 7
  %cmp1132 = icmp eq i32 %bf.clear1131, 2
  br i1 %cmp1132, label %cond.true.1134, label %cond.false.1159

cond.true.1134:                                   ; preds = %cond.false.1127
  %731 = load i64, i64* %pos, align 8
  %732 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %733 = bitcast %struct._object* %732 to %struct.PyASCIIObject*
  %state1135 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %733, i32 0, i32 3
  %734 = bitcast %struct.anon* %state1135 to i32*
  %bf.load1136 = load i32, i32* %734, align 4
  %bf.lshr1137 = lshr i32 %bf.load1136, 5
  %bf.clear1138 = and i32 %bf.lshr1137, 1
  %tobool1139 = icmp ne i32 %bf.clear1138, 0
  br i1 %tobool1139, label %cond.true.1140, label %cond.false.1152

cond.true.1140:                                   ; preds = %cond.true.1134
  %735 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %736 = bitcast %struct._object* %735 to %struct.PyASCIIObject*
  %state1141 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %736, i32 0, i32 3
  %737 = bitcast %struct.anon* %state1141 to i32*
  %bf.load1142 = load i32, i32* %737, align 4
  %bf.lshr1143 = lshr i32 %bf.load1142, 6
  %bf.clear1144 = and i32 %bf.lshr1143, 1
  %tobool1145 = icmp ne i32 %bf.clear1144, 0
  br i1 %tobool1145, label %cond.true.1146, label %cond.false.1148

cond.true.1146:                                   ; preds = %cond.true.1140
  %738 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %739 = bitcast %struct._object* %738 to %struct.PyASCIIObject*
  %add.ptr1147 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %739, i64 1
  %740 = bitcast %struct.PyASCIIObject* %add.ptr1147 to i8*
  br label %cond.end.1150

cond.false.1148:                                  ; preds = %cond.true.1140
  %741 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %742 = bitcast %struct._object* %741 to %struct.PyCompactUnicodeObject*
  %add.ptr1149 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %742, i64 1
  %743 = bitcast %struct.PyCompactUnicodeObject* %add.ptr1149 to i8*
  br label %cond.end.1150

cond.end.1150:                                    ; preds = %cond.false.1148, %cond.true.1146
  %cond1151 = phi i8* [ %740, %cond.true.1146 ], [ %743, %cond.false.1148 ]
  br label %cond.end.1155

cond.false.1152:                                  ; preds = %cond.true.1134
  %744 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %745 = bitcast %struct._object* %744 to %struct.PyUnicodeObject*
  %data1153 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %745, i32 0, i32 1
  %any1154 = bitcast %union.anon* %data1153 to i8**
  %746 = load i8*, i8** %any1154, align 8
  br label %cond.end.1155

cond.end.1155:                                    ; preds = %cond.false.1152, %cond.end.1150
  %cond1156 = phi i8* [ %cond1151, %cond.end.1150 ], [ %746, %cond.false.1152 ]
  %747 = bitcast i8* %cond1156 to i16*
  %arrayidx1157 = getelementptr i16, i16* %747, i64 %731
  %748 = load i16, i16* %arrayidx1157, align 2
  %conv1158 = zext i16 %748 to i32
  br label %cond.end.1183

cond.false.1159:                                  ; preds = %cond.false.1127
  %749 = load i64, i64* %pos, align 8
  %750 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %751 = bitcast %struct._object* %750 to %struct.PyASCIIObject*
  %state1160 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %751, i32 0, i32 3
  %752 = bitcast %struct.anon* %state1160 to i32*
  %bf.load1161 = load i32, i32* %752, align 4
  %bf.lshr1162 = lshr i32 %bf.load1161, 5
  %bf.clear1163 = and i32 %bf.lshr1162, 1
  %tobool1164 = icmp ne i32 %bf.clear1163, 0
  br i1 %tobool1164, label %cond.true.1165, label %cond.false.1177

cond.true.1165:                                   ; preds = %cond.false.1159
  %753 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %754 = bitcast %struct._object* %753 to %struct.PyASCIIObject*
  %state1166 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %754, i32 0, i32 3
  %755 = bitcast %struct.anon* %state1166 to i32*
  %bf.load1167 = load i32, i32* %755, align 4
  %bf.lshr1168 = lshr i32 %bf.load1167, 6
  %bf.clear1169 = and i32 %bf.lshr1168, 1
  %tobool1170 = icmp ne i32 %bf.clear1169, 0
  br i1 %tobool1170, label %cond.true.1171, label %cond.false.1173

cond.true.1171:                                   ; preds = %cond.true.1165
  %756 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %757 = bitcast %struct._object* %756 to %struct.PyASCIIObject*
  %add.ptr1172 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %757, i64 1
  %758 = bitcast %struct.PyASCIIObject* %add.ptr1172 to i8*
  br label %cond.end.1175

cond.false.1173:                                  ; preds = %cond.true.1165
  %759 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %760 = bitcast %struct._object* %759 to %struct.PyCompactUnicodeObject*
  %add.ptr1174 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %760, i64 1
  %761 = bitcast %struct.PyCompactUnicodeObject* %add.ptr1174 to i8*
  br label %cond.end.1175

cond.end.1175:                                    ; preds = %cond.false.1173, %cond.true.1171
  %cond1176 = phi i8* [ %758, %cond.true.1171 ], [ %761, %cond.false.1173 ]
  br label %cond.end.1180

cond.false.1177:                                  ; preds = %cond.false.1159
  %762 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %763 = bitcast %struct._object* %762 to %struct.PyUnicodeObject*
  %data1178 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %763, i32 0, i32 1
  %any1179 = bitcast %union.anon* %data1178 to i8**
  %764 = load i8*, i8** %any1179, align 8
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1177, %cond.end.1175
  %cond1181 = phi i8* [ %cond1176, %cond.end.1175 ], [ %764, %cond.false.1177 ]
  %765 = bitcast i8* %cond1181 to i32*
  %arrayidx1182 = getelementptr i32, i32* %765, i64 %749
  %766 = load i32, i32* %arrayidx1182, align 4
  br label %cond.end.1183

cond.end.1183:                                    ; preds = %cond.end.1180, %cond.end.1155
  %cond1184 = phi i32 [ %conv1158, %cond.end.1155 ], [ %766, %cond.end.1180 ]
  br label %cond.end.1185

cond.end.1185:                                    ; preds = %cond.end.1183, %cond.end.1123
  %cond1186 = phi i32 [ %conv1126, %cond.end.1123 ], [ %cond1184, %cond.end.1183 ]
  %767 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type1187 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %767, i32 0, i32 7
  store i32 %cond1186, i32* %type1187, align 4
  %768 = load i64, i64* %pos, align 8
  %inc1188 = add i64 %768, 1
  store i64 %inc1188, i64* %pos, align 8
  br label %if.end.1189

if.end.1189:                                      ; preds = %cond.end.1185, %if.end.1091
  %769 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators1190 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %769, i32 0, i32 5
  %770 = load i32, i32* %thousands_separators1190, align 4
  %tobool1191 = icmp ne i32 %770, 0
  br i1 %tobool1191, label %if.then.1192, label %if.end.1195

if.then.1192:                                     ; preds = %if.end.1189
  %771 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type1193 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %771, i32 0, i32 7
  %772 = load i32, i32* %type1193, align 4
  switch i32 %772, label %sw.default [
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 69, label %sw.bb
    i32 71, label %sw.bb
    i32 37, label %sw.bb
    i32 70, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.1192
  %773 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type1194 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %773, i32 0, i32 7
  %774 = load i32, i32* %type1194, align 4
  call void @invalid_comma_type(i32 %774)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end.1195

if.end.1195:                                      ; preds = %sw.epilog, %if.end.1189
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1195, %sw.default, %if.then.1089, %if.then.1082, %if.then.1078, %if.then.868
  %775 = load i32, i32* %retval
  ret i32 %775
}

; Function Attrs: nounwind uwtable
define internal i32 @format_string_internal(%struct._object* %value, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %lpad = alloca i64, align 8
  %rpad = alloca i64, align 8
  %total = alloca i64, align 8
  %len = alloca i64, align 8
  %result = alloca i32, align 4
  %maxchar = alloca i32, align 4
  %valmaxchar = alloca i32, align 4
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store i32 -1, i32* %result, align 4
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  store i64 %2, i64* %len, align 8
  %3 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %3, i32 0, i32 3
  %4 = load i32, i32* %sign, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  br label %done

if.end:                                           ; preds = %entry
  %6 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %6, i32 0, i32 2
  %7 = load i32, i32* %alternate, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i32 0, i32 0))
  br label %done

if.end.2:                                         ; preds = %if.end
  %9 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %9, i32 0, i32 1
  %10 = load i32, i32* %align, align 4
  %cmp3 = icmp eq i32 %10, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0))
  br label %done

if.end.5:                                         ; preds = %if.end.2
  %12 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %12, i32 0, i32 4
  %13 = load i64, i64* %width, align 8
  %cmp6 = icmp eq i64 %13, -1
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %14 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width7 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %14, i32 0, i32 4
  %15 = load i64, i64* %width7, align 8
  %16 = load i64, i64* %len, align 8
  %cmp8 = icmp sle i64 %15, %16
  br i1 %cmp8, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.5
  %17 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %17, i32 0, i32 6
  %18 = load i64, i64* %precision, align 8
  %cmp9 = icmp eq i64 %18, -1
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true
  %19 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision11 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %19, i32 0, i32 6
  %20 = load i64, i64* %precision11, align 8
  %21 = load i64, i64* %len, align 8
  %cmp12 = icmp sge i64 %20, %21
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.10, %land.lhs.true
  %22 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %23 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %22, %struct._object* %23)
  store i32 %call, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.10, %lor.lhs.false
  %24 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision15 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %24, i32 0, i32 6
  %25 = load i64, i64* %precision15, align 8
  %cmp16 = icmp sge i64 %25, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %if.end.14
  %26 = load i64, i64* %len, align 8
  %27 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision18 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %27, i32 0, i32 6
  %28 = load i64, i64* %precision18, align 8
  %cmp19 = icmp sge i64 %26, %28
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.17
  %29 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision21 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %29, i32 0, i32 6
  %30 = load i64, i64* %precision21, align 8
  store i64 %30, i64* %len, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.17, %if.end.14
  %31 = load i64, i64* %len, align 8
  %32 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width23 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %32, i32 0, i32 4
  %33 = load i64, i64* %width23, align 8
  %34 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align24 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %34, i32 0, i32 1
  %35 = load i32, i32* %align24, align 4
  call void @calc_padding(i64 %31, i64 %33, i32 %35, i64* %lpad, i64* %rpad, i64* %total)
  %36 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar25 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %36, i32 0, i32 3
  %37 = load i32, i32* %maxchar25, align 4
  store i32 %37, i32* %maxchar, align 4
  %38 = load i64, i64* %lpad, align 8
  %cmp26 = icmp ne i64 %38, 0
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.22
  %39 = load i64, i64* %rpad, align 8
  %cmp28 = icmp ne i64 %39, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %lor.lhs.false.27, %if.end.22
  %40 = load i32, i32* %maxchar, align 4
  %41 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %41, i32 0, i32 0
  %42 = load i32, i32* %fill_char, align 4
  %cmp30 = icmp ugt i32 %40, %42
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %43 = load i32, i32* %maxchar, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %44 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char31 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %44, i32 0, i32 0
  %45 = load i32, i32* %fill_char31, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %43, %cond.true ], [ %45, %cond.false ]
  store i32 %cond, i32* %maxchar, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end, %lor.lhs.false.27
  %46 = load %struct._object*, %struct._object** %value.addr, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 3
  %48 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %48, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool33 = icmp ne i32 %bf.clear, 0
  br i1 %tobool33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.end.32
  br label %cond.end.51

cond.false.35:                                    ; preds = %if.end.32
  %49 = load %struct._object*, %struct._object** %value.addr, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*
  %state36 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i32 0, i32 3
  %51 = bitcast %struct.anon* %state36 to i32*
  %bf.load37 = load i32, i32* %51, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 2
  %bf.clear39 = and i32 %bf.lshr38, 7
  %cmp40 = icmp eq i32 %bf.clear39, 1
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.35
  br label %cond.end.49

cond.false.42:                                    ; preds = %cond.false.35
  %52 = load %struct._object*, %struct._object** %value.addr, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyASCIIObject*
  %state43 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %53, i32 0, i32 3
  %54 = bitcast %struct.anon* %state43 to i32*
  %bf.load44 = load i32, i32* %54, align 4
  %bf.lshr45 = lshr i32 %bf.load44, 2
  %bf.clear46 = and i32 %bf.lshr45, 7
  %cmp47 = icmp eq i32 %bf.clear46, 2
  %cond48 = select i1 %cmp47, i32 65535, i32 1114111
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.42, %cond.true.41
  %cond50 = phi i32 [ 255, %cond.true.41 ], [ %cond48, %cond.false.42 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.34
  %cond52 = phi i32 [ 127, %cond.true.34 ], [ %cond50, %cond.end.49 ]
  %55 = load i32, i32* %maxchar, align 4
  %cmp53 = icmp ugt i32 %cond52, %55
  br i1 %cmp53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %cond.end.51
  %56 = load %struct._object*, %struct._object** %value.addr, align 8
  %57 = load i64, i64* %len, align 8
  %call55 = call i32 @_PyUnicode_FindMaxChar(%struct._object* %56, i64 0, i64 %57)
  store i32 %call55, i32* %valmaxchar, align 4
  %58 = load i32, i32* %maxchar, align 4
  %59 = load i32, i32* %valmaxchar, align 4
  %cmp56 = icmp ugt i32 %58, %59
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %if.then.54
  %60 = load i32, i32* %maxchar, align 4
  br label %cond.end.59

cond.false.58:                                    ; preds = %if.then.54
  %61 = load i32, i32* %valmaxchar, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi i32 [ %60, %cond.true.57 ], [ %61, %cond.false.58 ]
  store i32 %cond60, i32* %maxchar, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.59, %cond.end.51
  %62 = load i32, i32* %maxchar, align 4
  %63 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar62 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %63, i32 0, i32 3
  %64 = load i32, i32* %maxchar62, align 4
  %cmp63 = icmp ule i32 %62, %64
  br i1 %cmp63, label %land.lhs.true.64, label %cond.false.67

land.lhs.true.64:                                 ; preds = %if.end.61
  %65 = load i64, i64* %total, align 8
  %66 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %66, i32 0, i32 4
  %67 = load i64, i64* %size, align 8
  %68 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %68, i32 0, i32 5
  %69 = load i64, i64* %pos, align 8
  %sub = sub i64 %67, %69
  %cmp65 = icmp sle i64 %65, %sub
  br i1 %cmp65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %land.lhs.true.64
  br label %cond.end.74

cond.false.67:                                    ; preds = %land.lhs.true.64, %if.end.61
  %70 = load i64, i64* %total, align 8
  %cmp68 = icmp eq i64 %70, 0
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.67
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.false.67
  %71 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %72 = load i64, i64* %total, align 8
  %73 = load i32, i32* %maxchar, align 4
  %call71 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %71, i64 %72, i32 %73)
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.69
  %cond73 = phi i32 [ 0, %cond.true.69 ], [ %call71, %cond.false.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.66
  %cond75 = phi i32 [ 0, %cond.true.66 ], [ %cond73, %cond.end.72 ]
  %cmp76 = icmp eq i32 %cond75, -1
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %cond.end.74
  br label %done

if.end.78:                                        ; preds = %cond.end.74
  %74 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %75 = load i64, i64* %len, align 8
  %76 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char79 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %76, i32 0, i32 0
  %77 = load i32, i32* %fill_char79, align 4
  %78 = load i64, i64* %lpad, align 8
  %79 = load i64, i64* %rpad, align 8
  %call80 = call i32 @fill_padding(%struct._PyUnicodeWriter* %74, i64 %75, i32 %77, i64 %78, i64 %79)
  store i32 %call80, i32* %result, align 4
  %80 = load i32, i32* %result, align 4
  %cmp81 = icmp eq i32 %80, -1
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  br label %done

if.end.83:                                        ; preds = %if.end.78
  %81 = load i64, i64* %len, align 8
  %tobool84 = icmp ne i64 %81, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.83
  %82 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %82, i32 0, i32 0
  %83 = load %struct._object*, %struct._object** %buffer, align 8
  %84 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos86 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %84, i32 0, i32 5
  %85 = load i64, i64* %pos86, align 8
  %86 = load %struct._object*, %struct._object** %value.addr, align 8
  %87 = load i64, i64* %len, align 8
  call void @_PyUnicode_FastCopyCharacters(%struct._object* %83, i64 %85, %struct._object* %86, i64 0, i64 %87)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.83
  %88 = load i64, i64* %len, align 8
  %89 = load i64, i64* %rpad, align 8
  %add = add i64 %88, %89
  %90 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos88 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %90, i32 0, i32 5
  %91 = load i64, i64* %pos88, align 8
  %add89 = add i64 %91, %add
  store i64 %add89, i64* %pos88, align 8
  store i32 0, i32* %result, align 4
  br label %done

done:                                             ; preds = %if.end.87, %if.then.82, %if.then.77, %if.then.4, %if.then.1, %if.then
  %92 = load i32, i32* %result, align 4
  store i32 %92, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.then.13
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal void @unknown_presentation_type(i32 %presentation_type, i8* %type_name) #0 {
entry:
  %presentation_type.addr = alloca i32, align 4
  %type_name.addr = alloca i8*, align 8
  store i32 %presentation_type, i32* %presentation_type.addr, align 4
  store i8* %type_name, i8** %type_name.addr, align 8
  %0 = load i32, i32* %presentation_type.addr, align 4
  %cmp = icmp ugt i32 %0, 32
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %presentation_type.addr, align 4
  %cmp1 = icmp ult i32 %1, 128
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %3 = load i32, i32* %presentation_type.addr, align 4
  %conv = trunc i32 %3 to i8
  %conv2 = sext i8 %conv to i32
  %4 = load i8*, i8** %type_name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i32 %conv2, i8* %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %6 = load i32, i32* %presentation_type.addr, align 4
  %7 = load i8*, i8** %type_name.addr, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i32 %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_PyLong_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format_spec.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %tmp = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  %result = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store %struct._object* null, %struct._object** %tmp, align 8
  store %struct._object* null, %struct._object** %str, align 8
  store i32 -1, i32* %result, align 4
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %3, @PyLong_Type
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %4 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter* %4, %struct._object* %5, i32 10, i32 0)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call6 = call i32 @format_obj(%struct._object* %6, %struct._PyUnicodeWriter* %7)
  store i32 %call6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %9 = load i64, i64* %start.addr, align 8
  %10 = load i64, i64* %end.addr, align 8
  %call7 = call i32 @parse_internal_render_format_spec(%struct._object* %8, i64 %9, i64 %10, %struct.InternalFormatSpec* %format, i8 signext 100, i8 signext 62)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %done

if.end.9:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 111, label %sw.bb
    i32 120, label %sw.bb
    i32 88, label %sw.bb
    i32 110, label %sw.bb
    i32 101, label %sw.bb.11
    i32 69, label %sw.bb.11
    i32 102, label %sw.bb.11
    i32 70, label %sw.bb.11
    i32 103, label %sw.bb.11
    i32 71, label %sw.bb.11
    i32 37, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call10 = call i32 @format_long_internal(%struct._object* %12, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %13)
  store i32 %call10, i32* %result, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call12 = call %struct._object* @PyNumber_Float(%struct._object* %14)
  store %struct._object* %call12, %struct._object** %tmp, align 8
  %15 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp13 = icmp eq %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.11
  br label %done

if.end.15:                                        ; preds = %sw.bb.11
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  %17 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call16 = call i32 @format_float_internal(%struct._object* %16, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %17)
  store i32 %call16, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.9
  %type17 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %18 = load i32, i32* %type17, align 4
  %19 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  call void @unknown_presentation_type(i32 %18, i8* %21)
  br label %done

sw.epilog:                                        ; preds = %if.end.15, %sw.bb
  br label %done

done:                                             ; preds = %sw.epilog, %sw.default, %if.then.14, %if.then.8
  br label %do.body

do.body:                                          ; preds = %done
  %22 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %23, null
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %do.body
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.22
  br label %if.end.28

if.else.26:                                       ; preds = %do.body.22
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %do.body
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %31 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp33, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  %cmp34 = icmp ne %struct._object* %32, null
  br i1 %cmp34, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %do.body.31
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %35, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.36
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.36
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %38(%struct._object* %39)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.31
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %40 = load i32, i32* %result, align 4
  store i32 %40, i32* %retval
  br label %return

return:                                           ; preds = %do.end.49, %if.else, %if.then.5
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter*, %struct._object*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @format_long_internal(%struct._object* %value, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %result = alloca i32, align 4
  %maxchar = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %inumeric_chars = alloca i64, align 8
  %sign_char = alloca i32, align 4
  %n_digits = alloca i64, align 8
  %n_remainder = alloca i64, align 8
  %n_prefix = alloca i64, align 8
  %n_total = alloca i64, align 8
  %prefix = alloca i64, align 8
  %spec = alloca %struct.NumberFieldWidths, align 8
  %x = alloca i64, align 8
  %locale = alloca %struct.LocaleInfo, align 8
  %base = alloca i32, align 4
  %leading_chars_to_skip = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store i32 -1, i32* %result, align 4
  store i32 127, i32* %maxchar, align 4
  store %struct._object* null, %struct._object** %tmp, align 8
  store i32 0, i32* %sign_char, align 4
  store i64 0, i64* %n_remainder, align 8
  store i64 0, i64* %n_prefix, align 8
  store i64 0, i64* %prefix, align 8
  %0 = bitcast %struct.LocaleInfo* %locale to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %1, i32 0, i32 6
  %2 = load i64, i64* %precision, align 8
  %cmp = icmp ne i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0))
  br label %done

if.end:                                           ; preds = %entry
  %4 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %4, i32 0, i32 7
  %5 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %5, 99
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %6 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %6, i32 0, i32 3
  %7 = load i32, i32* %sign, align 4
  %cmp13 = icmp ne i32 %7, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0))
  br label %done

if.end.15:                                        ; preds = %if.then.12
  %9 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %9)
  store i64 %call, i64* %x, align 8
  %10 = load i64, i64* %x, align 8
  %cmp16 = icmp eq i64 %10, -1
  br i1 %cmp16, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.15
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call17, null
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  br label %done

if.end.19:                                        ; preds = %land.lhs.true, %if.end.15
  %11 = load i64, i64* %x, align 8
  %cmp20 = icmp slt i64 %11, 0
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %12 = load i64, i64* %x, align 8
  %cmp21 = icmp sgt i64 %12, 1114111
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.19
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %done

if.end.23:                                        ; preds = %lor.lhs.false
  %14 = load i64, i64* %x, align 8
  %conv = trunc i64 %14 to i32
  %call24 = call %struct._object* @PyUnicode_FromOrdinal(i32 %conv)
  store %struct._object* %call24, %struct._object** %tmp, align 8
  store i64 0, i64* %inumeric_chars, align 8
  store i64 1, i64* %n_digits, align 8
  %15 = load i32, i32* %maxchar, align 4
  %16 = load i64, i64* %x, align 8
  %conv25 = trunc i64 %16 to i32
  %cmp26 = icmp ugt i32 %15, %conv25
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %17 = load i32, i32* %maxchar, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %18 = load i64, i64* %x, align 8
  %conv28 = trunc i64 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %conv28, %cond.false ]
  store i32 %cond, i32* %maxchar, align 4
  store i64 1, i64* %n_remainder, align 8
  br label %if.end.174

if.else:                                          ; preds = %if.end
  store i32 0, i32* %leading_chars_to_skip, align 4
  %19 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type31 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %19, i32 0, i32 7
  %20 = load i32, i32* %type31, align 4
  switch i32 %20, label %sw.default [
    i32 98, label %sw.bb
    i32 111, label %sw.bb.32
    i32 120, label %sw.bb.33
    i32 88, label %sw.bb.33
    i32 100, label %sw.bb.34
    i32 110, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.else
  store i32 2, i32* %base, align 4
  store i32 2, i32* %leading_chars_to_skip, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.else
  store i32 8, i32* %base, align 4
  store i32 2, i32* %leading_chars_to_skip, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.else, %if.else
  store i32 16, i32* %base, align 4
  store i32 2, i32* %leading_chars_to_skip, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %if.else, %if.else, %sw.default
  store i32 10, i32* %base, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb
  %21 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign35 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %21, i32 0, i32 3
  %22 = load i32, i32* %sign35, align 4
  %cmp36 = icmp ne i32 %22, 43
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.60

land.lhs.true.38:                                 ; preds = %sw.epilog
  %23 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign39 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %23, i32 0, i32 3
  %24 = load i32, i32* %sign39, align 4
  %cmp40 = icmp ne i32 %24, 32
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.60

land.lhs.true.42:                                 ; preds = %land.lhs.true.38
  %25 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %25, i32 0, i32 4
  %26 = load i64, i64* %width, align 8
  %cmp43 = icmp eq i64 %26, -1
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.60

land.lhs.true.45:                                 ; preds = %land.lhs.true.42
  %27 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type46 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %27, i32 0, i32 7
  %28 = load i32, i32* %type46, align 4
  %cmp47 = icmp ne i32 %28, 88
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.60

land.lhs.true.49:                                 ; preds = %land.lhs.true.45
  %29 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type50 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %29, i32 0, i32 7
  %30 = load i32, i32* %type50, align 4
  %cmp51 = icmp ne i32 %30, 110
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %31 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %31, i32 0, i32 5
  %32 = load i32, i32* %thousands_separators, align 4
  %tobool54 = icmp ne i32 %32, 0
  br i1 %tobool54, label %if.end.60, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %33 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp56 = icmp eq %struct._typeobject* %34, @PyLong_Type
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %land.lhs.true.55
  %35 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %36 = load %struct._object*, %struct._object** %value.addr, align 8
  %37 = load i32, i32* %base, align 4
  %38 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %38, i32 0, i32 2
  %39 = load i32, i32* %alternate, align 4
  %call59 = call i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter* %35, %struct._object* %36, i32 %37, i32 %39)
  store i32 %call59, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.55, %land.lhs.true.53, %land.lhs.true.49, %land.lhs.true.45, %land.lhs.true.42, %land.lhs.true.38, %sw.epilog
  %40 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate61 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %40, i32 0, i32 2
  %41 = load i32, i32* %alternate61, align 4
  %tobool62 = icmp ne i32 %41, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %42 = load i32, i32* %leading_chars_to_skip, align 4
  %conv64 = sext i32 %42 to i64
  store i64 %conv64, i64* %n_prefix, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  %43 = load %struct._object*, %struct._object** %value.addr, align 8
  %44 = load i32, i32* %base, align 4
  %call66 = call %struct._object* @_PyLong_Format(%struct._object* %43, i32 %44)
  store %struct._object* %call66, %struct._object** %tmp, align 8
  %45 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp67 = icmp eq %struct._object* %45, null
  br i1 %cmp67, label %if.then.78, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.end.65
  %46 = load %struct._object*, %struct._object** %tmp, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %47, i32 0, i32 3
  %48 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %48, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool70 = icmp ne i32 %bf.clear, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %lor.lhs.false.69
  br label %cond.end.74

cond.false.72:                                    ; preds = %lor.lhs.false.69
  %49 = load %struct._object*, %struct._object** %tmp, align 8
  %call73 = call i32 @_PyUnicode_Ready(%struct._object* %49)
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.71
  %cond75 = phi i32 [ 0, %cond.true.71 ], [ %call73, %cond.false.72 ]
  %cmp76 = icmp eq i32 %cond75, -1
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.end.74, %if.end.65
  br label %done

if.end.79:                                        ; preds = %cond.end.74
  store i64 0, i64* %inumeric_chars, align 8
  %50 = load %struct._object*, %struct._object** %tmp, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 1
  %52 = load i64, i64* %length, align 8
  store i64 %52, i64* %n_digits, align 8
  %53 = load i64, i64* %inumeric_chars, align 8
  store i64 %53, i64* %prefix, align 8
  %54 = load %struct._object*, %struct._object** %tmp, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyASCIIObject*
  %state80 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %55, i32 0, i32 3
  %56 = bitcast %struct.anon* %state80 to i32*
  %bf.load81 = load i32, i32* %56, align 4
  %bf.lshr82 = lshr i32 %bf.load81, 2
  %bf.clear83 = and i32 %bf.lshr82, 7
  %cmp84 = icmp eq i32 %bf.clear83, 1
  br i1 %cmp84, label %cond.true.86, label %cond.false.107

cond.true.86:                                     ; preds = %if.end.79
  %57 = load i64, i64* %inumeric_chars, align 8
  %58 = load %struct._object*, %struct._object** %tmp, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %state87 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i32 0, i32 3
  %60 = bitcast %struct.anon* %state87 to i32*
  %bf.load88 = load i32, i32* %60, align 4
  %bf.lshr89 = lshr i32 %bf.load88, 5
  %bf.clear90 = and i32 %bf.lshr89, 1
  %tobool91 = icmp ne i32 %bf.clear90, 0
  br i1 %tobool91, label %cond.true.92, label %cond.false.103

cond.true.92:                                     ; preds = %cond.true.86
  %61 = load %struct._object*, %struct._object** %tmp, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyASCIIObject*
  %state93 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %62, i32 0, i32 3
  %63 = bitcast %struct.anon* %state93 to i32*
  %bf.load94 = load i32, i32* %63, align 4
  %bf.lshr95 = lshr i32 %bf.load94, 6
  %bf.clear96 = and i32 %bf.lshr95, 1
  %tobool97 = icmp ne i32 %bf.clear96, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.true.92
  %64 = load %struct._object*, %struct._object** %tmp, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %65, i64 1
  %66 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.101

cond.false.99:                                    ; preds = %cond.true.92
  %67 = load %struct._object*, %struct._object** %tmp, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyCompactUnicodeObject*
  %add.ptr100 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %68, i64 1
  %69 = bitcast %struct.PyCompactUnicodeObject* %add.ptr100 to i8*
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.98
  %cond102 = phi i8* [ %66, %cond.true.98 ], [ %69, %cond.false.99 ]
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.true.86
  %70 = load %struct._object*, %struct._object** %tmp, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %71, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %72 = load i8*, i8** %any, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.end.101
  %cond105 = phi i8* [ %cond102, %cond.end.101 ], [ %72, %cond.false.103 ]
  %arrayidx = getelementptr i8, i8* %cond105, i64 %57
  %73 = load i8, i8* %arrayidx, align 1
  %conv106 = zext i8 %73 to i32
  br label %cond.end.165

cond.false.107:                                   ; preds = %if.end.79
  %74 = load %struct._object*, %struct._object** %tmp, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyASCIIObject*
  %state108 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %75, i32 0, i32 3
  %76 = bitcast %struct.anon* %state108 to i32*
  %bf.load109 = load i32, i32* %76, align 4
  %bf.lshr110 = lshr i32 %bf.load109, 2
  %bf.clear111 = and i32 %bf.lshr110, 7
  %cmp112 = icmp eq i32 %bf.clear111, 2
  br i1 %cmp112, label %cond.true.114, label %cond.false.139

cond.true.114:                                    ; preds = %cond.false.107
  %77 = load i64, i64* %inumeric_chars, align 8
  %78 = load %struct._object*, %struct._object** %tmp, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyASCIIObject*
  %state115 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %79, i32 0, i32 3
  %80 = bitcast %struct.anon* %state115 to i32*
  %bf.load116 = load i32, i32* %80, align 4
  %bf.lshr117 = lshr i32 %bf.load116, 5
  %bf.clear118 = and i32 %bf.lshr117, 1
  %tobool119 = icmp ne i32 %bf.clear118, 0
  br i1 %tobool119, label %cond.true.120, label %cond.false.132

cond.true.120:                                    ; preds = %cond.true.114
  %81 = load %struct._object*, %struct._object** %tmp, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyASCIIObject*
  %state121 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %82, i32 0, i32 3
  %83 = bitcast %struct.anon* %state121 to i32*
  %bf.load122 = load i32, i32* %83, align 4
  %bf.lshr123 = lshr i32 %bf.load122, 6
  %bf.clear124 = and i32 %bf.lshr123, 1
  %tobool125 = icmp ne i32 %bf.clear124, 0
  br i1 %tobool125, label %cond.true.126, label %cond.false.128

cond.true.126:                                    ; preds = %cond.true.120
  %84 = load %struct._object*, %struct._object** %tmp, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyASCIIObject*
  %add.ptr127 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %85, i64 1
  %86 = bitcast %struct.PyASCIIObject* %add.ptr127 to i8*
  br label %cond.end.130

cond.false.128:                                   ; preds = %cond.true.120
  %87 = load %struct._object*, %struct._object** %tmp, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyCompactUnicodeObject*
  %add.ptr129 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %88, i64 1
  %89 = bitcast %struct.PyCompactUnicodeObject* %add.ptr129 to i8*
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.128, %cond.true.126
  %cond131 = phi i8* [ %86, %cond.true.126 ], [ %89, %cond.false.128 ]
  br label %cond.end.135

cond.false.132:                                   ; preds = %cond.true.114
  %90 = load %struct._object*, %struct._object** %tmp, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyUnicodeObject*
  %data133 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %91, i32 0, i32 1
  %any134 = bitcast %union.anon* %data133 to i8**
  %92 = load i8*, i8** %any134, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.132, %cond.end.130
  %cond136 = phi i8* [ %cond131, %cond.end.130 ], [ %92, %cond.false.132 ]
  %93 = bitcast i8* %cond136 to i16*
  %arrayidx137 = getelementptr i16, i16* %93, i64 %77
  %94 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %94 to i32
  br label %cond.end.163

cond.false.139:                                   ; preds = %cond.false.107
  %95 = load i64, i64* %inumeric_chars, align 8
  %96 = load %struct._object*, %struct._object** %tmp, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyASCIIObject*
  %state140 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %97, i32 0, i32 3
  %98 = bitcast %struct.anon* %state140 to i32*
  %bf.load141 = load i32, i32* %98, align 4
  %bf.lshr142 = lshr i32 %bf.load141, 5
  %bf.clear143 = and i32 %bf.lshr142, 1
  %tobool144 = icmp ne i32 %bf.clear143, 0
  br i1 %tobool144, label %cond.true.145, label %cond.false.157

cond.true.145:                                    ; preds = %cond.false.139
  %99 = load %struct._object*, %struct._object** %tmp, align 8
  %100 = bitcast %struct._object* %99 to %struct.PyASCIIObject*
  %state146 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %100, i32 0, i32 3
  %101 = bitcast %struct.anon* %state146 to i32*
  %bf.load147 = load i32, i32* %101, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 6
  %bf.clear149 = and i32 %bf.lshr148, 1
  %tobool150 = icmp ne i32 %bf.clear149, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.153

cond.true.151:                                    ; preds = %cond.true.145
  %102 = load %struct._object*, %struct._object** %tmp, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyASCIIObject*
  %add.ptr152 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %103, i64 1
  %104 = bitcast %struct.PyASCIIObject* %add.ptr152 to i8*
  br label %cond.end.155

cond.false.153:                                   ; preds = %cond.true.145
  %105 = load %struct._object*, %struct._object** %tmp, align 8
  %106 = bitcast %struct._object* %105 to %struct.PyCompactUnicodeObject*
  %add.ptr154 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %106, i64 1
  %107 = bitcast %struct.PyCompactUnicodeObject* %add.ptr154 to i8*
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.151
  %cond156 = phi i8* [ %104, %cond.true.151 ], [ %107, %cond.false.153 ]
  br label %cond.end.160

cond.false.157:                                   ; preds = %cond.false.139
  %108 = load %struct._object*, %struct._object** %tmp, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyUnicodeObject*
  %data158 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %109, i32 0, i32 1
  %any159 = bitcast %union.anon* %data158 to i8**
  %110 = load i8*, i8** %any159, align 8
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.157, %cond.end.155
  %cond161 = phi i8* [ %cond156, %cond.end.155 ], [ %110, %cond.false.157 ]
  %111 = bitcast i8* %cond161 to i32*
  %arrayidx162 = getelementptr i32, i32* %111, i64 %95
  %112 = load i32, i32* %arrayidx162, align 4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.end.160, %cond.end.135
  %cond164 = phi i32 [ %conv138, %cond.end.135 ], [ %112, %cond.end.160 ]
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.163, %cond.end.104
  %cond166 = phi i32 [ %conv106, %cond.end.104 ], [ %cond164, %cond.end.163 ]
  %cmp167 = icmp eq i32 %cond166, 45
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %cond.end.165
  store i32 45, i32* %sign_char, align 4
  %113 = load i64, i64* %prefix, align 8
  %inc = add i64 %113, 1
  store i64 %inc, i64* %prefix, align 8
  %114 = load i32, i32* %leading_chars_to_skip, align 4
  %inc170 = add i32 %114, 1
  store i32 %inc170, i32* %leading_chars_to_skip, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %cond.end.165
  %115 = load i32, i32* %leading_chars_to_skip, align 4
  %conv172 = sext i32 %115 to i64
  %116 = load i64, i64* %n_digits, align 8
  %sub = sub i64 %116, %conv172
  store i64 %sub, i64* %n_digits, align 8
  %117 = load i32, i32* %leading_chars_to_skip, align 4
  %conv173 = sext i32 %117 to i64
  %118 = load i64, i64* %inumeric_chars, align 8
  %add = add i64 %118, %conv173
  store i64 %add, i64* %inumeric_chars, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.171, %cond.end
  %119 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type175 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %119, i32 0, i32 7
  %120 = load i32, i32* %type175, align 4
  %cmp176 = icmp eq i32 %120, 110
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %if.end.174
  br label %cond.end.183

cond.false.179:                                   ; preds = %if.end.174
  %121 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators180 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %121, i32 0, i32 5
  %122 = load i32, i32* %thousands_separators180, align 4
  %tobool181 = icmp ne i32 %122, 0
  %cond182 = select i1 %tobool181, i32 1, i32 2
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.179, %cond.true.178
  %cond184 = phi i32 [ 0, %cond.true.178 ], [ %cond182, %cond.false.179 ]
  %call185 = call i32 @get_locale_info(i32 %cond184, %struct.LocaleInfo* %locale)
  %cmp186 = icmp eq i32 %call185, -1
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %cond.end.183
  br label %done

if.end.189:                                       ; preds = %cond.end.183
  %123 = load i64, i64* %n_prefix, align 8
  %124 = load i32, i32* %sign_char, align 4
  %125 = load %struct._object*, %struct._object** %tmp, align 8
  %126 = load i64, i64* %inumeric_chars, align 8
  %127 = load i64, i64* %inumeric_chars, align 8
  %128 = load i64, i64* %n_digits, align 8
  %add190 = add i64 %127, %128
  %129 = load i64, i64* %n_remainder, align 8
  %130 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %call191 = call i64 @calc_number_widths(%struct.NumberFieldWidths* %spec, i64 %123, i32 %124, %struct._object* %125, i64 %126, i64 %add190, i64 %129, i32 0, %struct.LocaleInfo* %locale, %struct.InternalFormatSpec* %130, i32* %maxchar)
  store i64 %call191, i64* %n_total, align 8
  %131 = load i32, i32* %maxchar, align 4
  %132 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar192 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %132, i32 0, i32 3
  %133 = load i32, i32* %maxchar192, align 4
  %cmp193 = icmp ule i32 %131, %133
  br i1 %cmp193, label %land.lhs.true.195, label %cond.false.200

land.lhs.true.195:                                ; preds = %if.end.189
  %134 = load i64, i64* %n_total, align 8
  %135 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %135, i32 0, i32 4
  %136 = load i64, i64* %size, align 8
  %137 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %137, i32 0, i32 5
  %138 = load i64, i64* %pos, align 8
  %sub196 = sub i64 %136, %138
  %cmp197 = icmp sle i64 %134, %sub196
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %land.lhs.true.195
  br label %cond.end.208

cond.false.200:                                   ; preds = %land.lhs.true.195, %if.end.189
  %139 = load i64, i64* %n_total, align 8
  %cmp201 = icmp eq i64 %139, 0
  br i1 %cmp201, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %cond.false.200
  br label %cond.end.206

cond.false.204:                                   ; preds = %cond.false.200
  %140 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %141 = load i64, i64* %n_total, align 8
  %142 = load i32, i32* %maxchar, align 4
  %call205 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %140, i64 %141, i32 %142)
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.204, %cond.true.203
  %cond207 = phi i32 [ 0, %cond.true.203 ], [ %call205, %cond.false.204 ]
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.end.206, %cond.true.199
  %cond209 = phi i32 [ 0, %cond.true.199 ], [ %cond207, %cond.end.206 ]
  %cmp210 = icmp eq i32 %cond209, -1
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %cond.end.208
  br label %done

if.end.213:                                       ; preds = %cond.end.208
  %143 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %144 = load %struct._object*, %struct._object** %tmp, align 8
  %145 = load i64, i64* %inumeric_chars, align 8
  %146 = load i64, i64* %inumeric_chars, align 8
  %147 = load i64, i64* %n_digits, align 8
  %add214 = add i64 %146, %147
  %148 = load %struct._object*, %struct._object** %tmp, align 8
  %149 = load i64, i64* %prefix, align 8
  %150 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %150, i32 0, i32 0
  %151 = load i32, i32* %fill_char, align 4
  %152 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type215 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %152, i32 0, i32 7
  %153 = load i32, i32* %type215, align 4
  %cmp216 = icmp eq i32 %153, 88
  %conv217 = zext i1 %cmp216 to i32
  %call218 = call i32 @fill_number(%struct._PyUnicodeWriter* %143, %struct.NumberFieldWidths* %spec, %struct._object* %144, i64 %145, i64 %add214, %struct._object* %148, i64 %149, i32 %151, %struct.LocaleInfo* %locale, i32 %conv217)
  store i32 %call218, i32* %result, align 4
  br label %done

done:                                             ; preds = %if.end.213, %if.then.212, %if.then.188, %if.then.78, %if.then.22, %if.then.18, %if.then.14, %if.then
  br label %do.body

do.body:                                          ; preds = %done
  %154 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %154, %struct._object** %_py_xdecref_tmp, align 8
  %155 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp220 = icmp ne %struct._object* %155, null
  br i1 %cmp220, label %if.then.222, label %if.end.231

if.then.222:                                      ; preds = %do.body
  br label %do.body.223

do.body.223:                                      ; preds = %if.then.222
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %156, %struct._object** %_py_decref_tmp, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0
  %158 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %158, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp225 = icmp ne i64 %dec, 0
  br i1 %cmp225, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %do.body.223
  br label %if.end.230

if.else.228:                                      ; preds = %do.body.223
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type229 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 1
  %160 = load %struct._typeobject*, %struct._typeobject** %ob_type229, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %160, i32 0, i32 4
  %161 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %161(%struct._object* %162)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.228, %if.then.227
  br label %do.end

do.end:                                           ; preds = %if.end.230
  br label %if.end.231

if.end.231:                                       ; preds = %do.end, %do.body
  br label %do.end.232

do.end.232:                                       ; preds = %if.end.231
  call void @free_locale_info(%struct.LocaleInfo* %locale)
  %163 = load i32, i32* %result, align 4
  store i32 %163, i32* %retval
  br label %return

return:                                           ; preds = %do.end.232, %if.then.58
  %164 = load i32, i32* %retval
  ret i32 %164
}

declare %struct._object* @PyNumber_Float(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @format_float_internal(%struct._object* %value, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %buf = alloca i8*, align 8
  %n_digits = alloca i64, align 8
  %n_remainder = alloca i64, align 8
  %n_total = alloca i64, align 8
  %has_decimal = alloca i32, align 4
  %val = alloca double, align 8
  %precision = alloca i32, align 4
  %default_precision = alloca i32, align 4
  %type = alloca i32, align 4
  %add_pct = alloca i32, align 4
  %index = alloca i64, align 8
  %spec = alloca %struct.NumberFieldWidths, align 8
  %flags = alloca i32, align 4
  %result = alloca i32, align 4
  %maxchar = alloca i32, align 4
  %sign_char = alloca i32, align 4
  %float_type = alloca i32, align 4
  %unicode_tmp = alloca %struct._object*, align 8
  %locale = alloca %struct.LocaleInfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store i8* null, i8** %buf, align 8
  store i32 6, i32* %default_precision, align 4
  %0 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type1 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %0, i32 0, i32 7
  %1 = load i32, i32* %type1, align 4
  store i32 %1, i32* %type, align 4
  store i32 0, i32* %add_pct, align 4
  store i32 0, i32* %flags, align 4
  store i32 -1, i32* %result, align 4
  store i32 127, i32* %maxchar, align 4
  store i32 0, i32* %sign_char, align 4
  store %struct._object* null, %struct._object** %unicode_tmp, align 8
  %2 = bitcast %struct.LocaleInfo* %locale to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  %3 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision2 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %3, i32 0, i32 6
  %4 = load i64, i64* %precision2, align 8
  %cmp = icmp sgt i64 %4, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  br label %done

if.end:                                           ; preds = %entry
  %6 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision3 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %6, i32 0, i32 6
  %7 = load i64, i64* %precision3, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %precision, align 4
  %8 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %8, i32 0, i32 2
  %9 = load i32, i32* %alternate, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %flags, align 4
  %or = or i32 %10, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %12 = load i32, i32* %flags, align 4
  %or9 = or i32 %12, 2
  store i32 %or9, i32* %flags, align 4
  store i32 114, i32* %type, align 4
  store i32 0, i32* %default_precision, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %13 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %13, 110
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 103, i32* %type, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %14 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %14)
  store double %call, double* %val, align 8
  %15 = load double, double* %val, align 8
  %cmp15 = fcmp oeq double %15, -1.000000e+00
  br i1 %cmp15, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.14
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool18 = icmp ne %struct._object* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %done

if.end.20:                                        ; preds = %land.lhs.true, %if.end.14
  %16 = load i32, i32* %type, align 4
  %cmp21 = icmp eq i32 %16, 37
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 102, i32* %type, align 4
  %17 = load double, double* %val, align 8
  %mul = fmul double %17, 1.000000e+02
  store double %mul, double* %val, align 8
  store i32 1, i32* %add_pct, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %18 = load i32, i32* %precision, align 4
  %cmp25 = icmp slt i32 %18, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  %19 = load i32, i32* %default_precision, align 4
  store i32 %19, i32* %precision, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.end.24
  %20 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 %20, 114
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  store i32 103, i32* %type, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.27
  %21 = load double, double* %val, align 8
  %22 = load i32, i32* %type, align 4
  %conv33 = trunc i32 %22 to i8
  %23 = load i32, i32* %precision, align 4
  %24 = load i32, i32* %flags, align 4
  %call34 = call i8* @PyOS_double_to_string(double %21, i8 signext %conv33, i32 %23, i32 %24, i32* %float_type)
  store i8* %call34, i8** %buf, align 8
  %25 = load i8*, i8** %buf, align 8
  %cmp35 = icmp eq i8* %25, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  br label %done

if.end.38:                                        ; preds = %if.end.32
  %26 = load i8*, i8** %buf, align 8
  %call39 = call i64 @strlen(i8* %26) #7
  store i64 %call39, i64* %n_digits, align 8
  %27 = load i32, i32* %add_pct, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %28 = load i64, i64* %n_digits, align 8
  %29 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %29, i64 %28
  store i8 37, i8* %arrayidx, align 1
  %30 = load i64, i64* %n_digits, align 8
  %add = add i64 %30, 1
  store i64 %add, i64* %n_digits, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %31 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %31, i32 0, i32 3
  %32 = load i32, i32* %sign, align 4
  %cmp43 = icmp ne i32 %32, 43
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.60

land.lhs.true.45:                                 ; preds = %if.end.42
  %33 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign46 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %33, i32 0, i32 3
  %34 = load i32, i32* %sign46, align 4
  %cmp47 = icmp ne i32 %34, 32
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.60

land.lhs.true.49:                                 ; preds = %land.lhs.true.45
  %35 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %35, i32 0, i32 4
  %36 = load i64, i64* %width, align 8
  %cmp50 = icmp eq i64 %36, -1
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.60

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %37 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type53 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %37, i32 0, i32 7
  %38 = load i32, i32* %type53, align 4
  %cmp54 = icmp ne i32 %38, 110
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.60

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %39 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %39, i32 0, i32 5
  %40 = load i32, i32* %thousands_separators, align 4
  %tobool57 = icmp ne i32 %40, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.56
  %41 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %42 = load i8*, i8** %buf, align 8
  %43 = load i64, i64* %n_digits, align 8
  %call59 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %41, i8* %42, i64 %43)
  store i32 %call59, i32* %result, align 4
  %44 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %44)
  %45 = load i32, i32* %result, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true.49, %land.lhs.true.45, %if.end.42
  %46 = load i8*, i8** %buf, align 8
  %47 = load i64, i64* %n_digits, align 8
  %call61 = call %struct._object* @_PyUnicode_FromASCII(i8* %46, i64 %47)
  store %struct._object* %call61, %struct._object** %unicode_tmp, align 8
  %48 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %48)
  %49 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %cmp62 = icmp eq %struct._object* %49, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.60
  br label %done

if.end.65:                                        ; preds = %if.end.60
  store i64 0, i64* %index, align 8
  %50 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i32 0, i32 3
  %52 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %52, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp66 = icmp eq i32 %bf.clear, 1
  br i1 %cmp66, label %cond.true, label %cond.false.86

cond.true:                                        ; preds = %if.end.65
  %53 = load i64, i64* %index, align 8
  %54 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %55, i32 0, i32 3
  %56 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %56, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 5
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.81

cond.true.73:                                     ; preds = %cond.true
  %57 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyASCIIObject*
  %state74 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %58, i32 0, i32 3
  %59 = bitcast %struct.anon* %state74 to i32*
  %bf.load75 = load i32, i32* %59, align 4
  %bf.lshr76 = lshr i32 %bf.load75, 6
  %bf.clear77 = and i32 %bf.lshr76, 1
  %tobool78 = icmp ne i32 %bf.clear77, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false

cond.true.79:                                     ; preds = %cond.true.73
  %60 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %61, i64 1
  %62 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.73
  %63 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyCompactUnicodeObject*
  %add.ptr80 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %64, i64 1
  %65 = bitcast %struct.PyCompactUnicodeObject* %add.ptr80 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.79
  %cond = phi i8* [ %62, %cond.true.79 ], [ %65, %cond.false ]
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.true
  %66 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %67, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %68 = load i8*, i8** %any, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.end
  %cond83 = phi i8* [ %cond, %cond.end ], [ %68, %cond.false.81 ]
  %arrayidx84 = getelementptr i8, i8* %cond83, i64 %53
  %69 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %69 to i32
  br label %cond.end.144

cond.false.86:                                    ; preds = %if.end.65
  %70 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyASCIIObject*
  %state87 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %71, i32 0, i32 3
  %72 = bitcast %struct.anon* %state87 to i32*
  %bf.load88 = load i32, i32* %72, align 4
  %bf.lshr89 = lshr i32 %bf.load88, 2
  %bf.clear90 = and i32 %bf.lshr89, 7
  %cmp91 = icmp eq i32 %bf.clear90, 2
  br i1 %cmp91, label %cond.true.93, label %cond.false.118

cond.true.93:                                     ; preds = %cond.false.86
  %73 = load i64, i64* %index, align 8
  %74 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyASCIIObject*
  %state94 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %75, i32 0, i32 3
  %76 = bitcast %struct.anon* %state94 to i32*
  %bf.load95 = load i32, i32* %76, align 4
  %bf.lshr96 = lshr i32 %bf.load95, 5
  %bf.clear97 = and i32 %bf.lshr96, 1
  %tobool98 = icmp ne i32 %bf.clear97, 0
  br i1 %tobool98, label %cond.true.99, label %cond.false.111

cond.true.99:                                     ; preds = %cond.true.93
  %77 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyASCIIObject*
  %state100 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %78, i32 0, i32 3
  %79 = bitcast %struct.anon* %state100 to i32*
  %bf.load101 = load i32, i32* %79, align 4
  %bf.lshr102 = lshr i32 %bf.load101, 6
  %bf.clear103 = and i32 %bf.lshr102, 1
  %tobool104 = icmp ne i32 %bf.clear103, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.true.99
  %80 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyASCIIObject*
  %add.ptr106 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %81, i64 1
  %82 = bitcast %struct.PyASCIIObject* %add.ptr106 to i8*
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.true.99
  %83 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyCompactUnicodeObject*
  %add.ptr108 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %84, i64 1
  %85 = bitcast %struct.PyCompactUnicodeObject* %add.ptr108 to i8*
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.105
  %cond110 = phi i8* [ %82, %cond.true.105 ], [ %85, %cond.false.107 ]
  br label %cond.end.114

cond.false.111:                                   ; preds = %cond.true.93
  %86 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyUnicodeObject*
  %data112 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %87, i32 0, i32 1
  %any113 = bitcast %union.anon* %data112 to i8**
  %88 = load i8*, i8** %any113, align 8
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.111, %cond.end.109
  %cond115 = phi i8* [ %cond110, %cond.end.109 ], [ %88, %cond.false.111 ]
  %89 = bitcast i8* %cond115 to i16*
  %arrayidx116 = getelementptr i16, i16* %89, i64 %73
  %90 = load i16, i16* %arrayidx116, align 2
  %conv117 = zext i16 %90 to i32
  br label %cond.end.142

cond.false.118:                                   ; preds = %cond.false.86
  %91 = load i64, i64* %index, align 8
  %92 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %93 = bitcast %struct._object* %92 to %struct.PyASCIIObject*
  %state119 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %93, i32 0, i32 3
  %94 = bitcast %struct.anon* %state119 to i32*
  %bf.load120 = load i32, i32* %94, align 4
  %bf.lshr121 = lshr i32 %bf.load120, 5
  %bf.clear122 = and i32 %bf.lshr121, 1
  %tobool123 = icmp ne i32 %bf.clear122, 0
  br i1 %tobool123, label %cond.true.124, label %cond.false.136

cond.true.124:                                    ; preds = %cond.false.118
  %95 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %96 = bitcast %struct._object* %95 to %struct.PyASCIIObject*
  %state125 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %96, i32 0, i32 3
  %97 = bitcast %struct.anon* %state125 to i32*
  %bf.load126 = load i32, i32* %97, align 4
  %bf.lshr127 = lshr i32 %bf.load126, 6
  %bf.clear128 = and i32 %bf.lshr127, 1
  %tobool129 = icmp ne i32 %bf.clear128, 0
  br i1 %tobool129, label %cond.true.130, label %cond.false.132

cond.true.130:                                    ; preds = %cond.true.124
  %98 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyASCIIObject*
  %add.ptr131 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %99, i64 1
  %100 = bitcast %struct.PyASCIIObject* %add.ptr131 to i8*
  br label %cond.end.134

cond.false.132:                                   ; preds = %cond.true.124
  %101 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %102 = bitcast %struct._object* %101 to %struct.PyCompactUnicodeObject*
  %add.ptr133 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %102, i64 1
  %103 = bitcast %struct.PyCompactUnicodeObject* %add.ptr133 to i8*
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.true.130
  %cond135 = phi i8* [ %100, %cond.true.130 ], [ %103, %cond.false.132 ]
  br label %cond.end.139

cond.false.136:                                   ; preds = %cond.false.118
  %104 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %105 = bitcast %struct._object* %104 to %struct.PyUnicodeObject*
  %data137 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %105, i32 0, i32 1
  %any138 = bitcast %union.anon* %data137 to i8**
  %106 = load i8*, i8** %any138, align 8
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.136, %cond.end.134
  %cond140 = phi i8* [ %cond135, %cond.end.134 ], [ %106, %cond.false.136 ]
  %107 = bitcast i8* %cond140 to i32*
  %arrayidx141 = getelementptr i32, i32* %107, i64 %91
  %108 = load i32, i32* %arrayidx141, align 4
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.139, %cond.end.114
  %cond143 = phi i32 [ %conv117, %cond.end.114 ], [ %108, %cond.end.139 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.end.82
  %cond145 = phi i32 [ %conv85, %cond.end.82 ], [ %cond143, %cond.end.142 ]
  %cmp146 = icmp eq i32 %cond145, 45
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %cond.end.144
  store i32 45, i32* %sign_char, align 4
  %109 = load i64, i64* %index, align 8
  %inc = add i64 %109, 1
  store i64 %inc, i64* %index, align 8
  %110 = load i64, i64* %n_digits, align 8
  %dec = add i64 %110, -1
  store i64 %dec, i64* %n_digits, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %cond.end.144
  %111 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %112 = load i64, i64* %index, align 8
  %113 = load i64, i64* %index, align 8
  %114 = load i64, i64* %n_digits, align 8
  %add150 = add i64 %113, %114
  call void @parse_number(%struct._object* %111, i64 %112, i64 %add150, i64* %n_remainder, i32* %has_decimal)
  %115 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type151 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %115, i32 0, i32 7
  %116 = load i32, i32* %type151, align 4
  %cmp152 = icmp eq i32 %116, 110
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.end.149
  br label %cond.end.159

cond.false.155:                                   ; preds = %if.end.149
  %117 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators156 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %117, i32 0, i32 5
  %118 = load i32, i32* %thousands_separators156, align 4
  %tobool157 = icmp ne i32 %118, 0
  %cond158 = select i1 %tobool157, i32 1, i32 2
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.155, %cond.true.154
  %cond160 = phi i32 [ 0, %cond.true.154 ], [ %cond158, %cond.false.155 ]
  %call161 = call i32 @get_locale_info(i32 %cond160, %struct.LocaleInfo* %locale)
  %cmp162 = icmp eq i32 %call161, -1
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %cond.end.159
  br label %done

if.end.165:                                       ; preds = %cond.end.159
  %119 = load i32, i32* %sign_char, align 4
  %120 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %121 = load i64, i64* %index, align 8
  %122 = load i64, i64* %index, align 8
  %123 = load i64, i64* %n_digits, align 8
  %add166 = add i64 %122, %123
  %124 = load i64, i64* %n_remainder, align 8
  %125 = load i32, i32* %has_decimal, align 4
  %126 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %call167 = call i64 @calc_number_widths(%struct.NumberFieldWidths* %spec, i64 0, i32 %119, %struct._object* %120, i64 %121, i64 %add166, i64 %124, i32 %125, %struct.LocaleInfo* %locale, %struct.InternalFormatSpec* %126, i32* %maxchar)
  store i64 %call167, i64* %n_total, align 8
  %127 = load i32, i32* %maxchar, align 4
  %128 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar168 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %128, i32 0, i32 3
  %129 = load i32, i32* %maxchar168, align 4
  %cmp169 = icmp ule i32 %127, %129
  br i1 %cmp169, label %land.lhs.true.171, label %cond.false.175

land.lhs.true.171:                                ; preds = %if.end.165
  %130 = load i64, i64* %n_total, align 8
  %131 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %131, i32 0, i32 4
  %132 = load i64, i64* %size, align 8
  %133 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %133, i32 0, i32 5
  %134 = load i64, i64* %pos, align 8
  %sub = sub i64 %132, %134
  %cmp172 = icmp sle i64 %130, %sub
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %land.lhs.true.171
  br label %cond.end.183

cond.false.175:                                   ; preds = %land.lhs.true.171, %if.end.165
  %135 = load i64, i64* %n_total, align 8
  %cmp176 = icmp eq i64 %135, 0
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.false.175
  br label %cond.end.181

cond.false.179:                                   ; preds = %cond.false.175
  %136 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %137 = load i64, i64* %n_total, align 8
  %138 = load i32, i32* %maxchar, align 4
  %call180 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %136, i64 %137, i32 %138)
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.178
  %cond182 = phi i32 [ 0, %cond.true.178 ], [ %call180, %cond.false.179 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end.181, %cond.true.174
  %cond184 = phi i32 [ 0, %cond.true.174 ], [ %cond182, %cond.end.181 ]
  %cmp185 = icmp eq i32 %cond184, -1
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %cond.end.183
  br label %done

if.end.188:                                       ; preds = %cond.end.183
  %139 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %140 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  %141 = load i64, i64* %index, align 8
  %142 = load i64, i64* %index, align 8
  %143 = load i64, i64* %n_digits, align 8
  %add189 = add i64 %142, %143
  %144 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %144, i32 0, i32 0
  %145 = load i32, i32* %fill_char, align 4
  %call190 = call i32 @fill_number(%struct._PyUnicodeWriter* %139, %struct.NumberFieldWidths* %spec, %struct._object* %140, i64 %141, i64 %add189, %struct._object* null, i64 0, i32 %145, %struct.LocaleInfo* %locale, i32 0)
  store i32 %call190, i32* %result, align 4
  br label %done

done:                                             ; preds = %if.end.188, %if.then.187, %if.then.164, %if.then.64, %if.then.37, %if.then.19, %if.then
  br label %do.body

do.body:                                          ; preds = %done
  %146 = load %struct._object*, %struct._object** %unicode_tmp, align 8
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp, align 8
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp191 = icmp ne %struct._object* %147, null
  br i1 %cmp191, label %if.then.193, label %if.end.201

if.then.193:                                      ; preds = %do.body
  br label %do.body.194

do.body.194:                                      ; preds = %if.then.193
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt, align 8
  %dec195 = add i64 %150, -1
  store i64 %dec195, i64* %ob_refcnt, align 8
  %cmp196 = icmp ne i64 %dec195, 0
  br i1 %cmp196, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %do.body.194
  br label %if.end.200

if.else.199:                                      ; preds = %do.body.194
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %153(%struct._object* %154)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.199, %if.then.198
  br label %do.end

do.end:                                           ; preds = %if.end.200
  br label %if.end.201

if.end.201:                                       ; preds = %do.end, %do.body
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  call void @free_locale_info(%struct.LocaleInfo* %locale)
  %155 = load i32, i32* %result, align 4
  store i32 %155, i32* %retval
  br label %return

return:                                           ; preds = %do.end.202, %if.then.58
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format_spec.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call = call i32 @format_obj(%struct._object* %2, %struct._PyUnicodeWriter* %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %5 = load i64, i64* %start.addr, align 8
  %6 = load i64, i64* %end.addr, align 8
  %call1 = call i32 @parse_internal_render_format_spec(%struct._object* %4, i64 %5, i64 %6, %struct.InternalFormatSpec* %format, i8 signext 0, i8 signext 62)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 101, label %sw.bb
    i32 69, label %sw.bb
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 103, label %sw.bb
    i32 71, label %sw.bb
    i32 110, label %sw.bb
    i32 37, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call4 = call i32 @format_float_internal(%struct._object* %8, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %9)
  store i32 %call4, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.3
  %type5 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %10 = load i32, i32* %type5, align 4
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  call void @unknown_presentation_type(i32 %10, i8* %13)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format_spec.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %format_spec, %struct._object** %format_spec.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call = call i32 @format_obj(%struct._object* %2, %struct._PyUnicodeWriter* %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %format_spec.addr, align 8
  %5 = load i64, i64* %start.addr, align 8
  %6 = load i64, i64* %end.addr, align 8
  %call1 = call i32 @parse_internal_render_format_spec(%struct._object* %4, i64 %5, i64 %6, %struct.InternalFormatSpec* %format, i8 signext 0, i8 signext 62)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 101, label %sw.bb
    i32 69, label %sw.bb
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 103, label %sw.bb
    i32 71, label %sw.bb
    i32 110, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8
  %9 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call4 = call i32 @format_complex_internal(%struct._object* %8, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %9)
  store i32 %call4, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.3
  %type5 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i32 0, i32 7
  %10 = load i32, i32* %type5, align 4
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  call void @unknown_presentation_type(i32 %10, i8* %13)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @format_complex_internal(%struct._object* %value, %struct.InternalFormatSpec* %format, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %value.addr = alloca %struct._object*, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %re = alloca double, align 8
  %im = alloca double, align 8
  %re_buf = alloca i8*, align 8
  %im_buf = alloca i8*, align 8
  %tmp_format = alloca %struct.InternalFormatSpec, align 8
  %n_re_digits = alloca i64, align 8
  %n_im_digits = alloca i64, align 8
  %n_re_remainder = alloca i64, align 8
  %n_im_remainder = alloca i64, align 8
  %n_re_total = alloca i64, align 8
  %n_im_total = alloca i64, align 8
  %re_has_decimal = alloca i32, align 4
  %im_has_decimal = alloca i32, align 4
  %precision = alloca i32, align 4
  %default_precision = alloca i32, align 4
  %type = alloca i32, align 4
  %i_re = alloca i64, align 8
  %i_im = alloca i64, align 8
  %re_spec = alloca %struct.NumberFieldWidths, align 8
  %im_spec = alloca %struct.NumberFieldWidths, align 8
  %flags = alloca i32, align 4
  %result = alloca i32, align 4
  %maxchar = alloca i32, align 4
  %rkind = alloca i32, align 4
  %rdata = alloca i8*, align 8
  %re_sign_char = alloca i32, align 4
  %im_sign_char = alloca i32, align 4
  %re_float_type = alloca i32, align 4
  %im_float_type = alloca i32, align 4
  %add_parens = alloca i32, align 4
  %skip_re = alloca i32, align 4
  %lpad = alloca i64, align 8
  %rpad = alloca i64, align 8
  %total = alloca i64, align 8
  %re_unicode_tmp = alloca %struct._object*, align 8
  %im_unicode_tmp = alloca %struct._object*, align 8
  %locale = alloca %struct.LocaleInfo, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp410 = alloca %struct._object*, align 8
  %_py_decref_tmp415 = alloca %struct._object*, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store i8* null, i8** %re_buf, align 8
  store i8* null, i8** %im_buf, align 8
  %0 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %1 = bitcast %struct.InternalFormatSpec* %tmp_format to i8*
  %2 = bitcast %struct.InternalFormatSpec* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 48, i32 8, i1 false)
  store i32 6, i32* %default_precision, align 4
  %3 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type1 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %3, i32 0, i32 7
  %4 = load i32, i32* %type1, align 4
  store i32 %4, i32* %type, align 4
  store i32 0, i32* %flags, align 4
  store i32 -1, i32* %result, align 4
  store i32 127, i32* %maxchar, align 4
  store i32 0, i32* %re_sign_char, align 4
  store i32 0, i32* %im_sign_char, align 4
  store i32 0, i32* %add_parens, align 4
  store i32 0, i32* %skip_re, align 4
  store %struct._object* null, %struct._object** %re_unicode_tmp, align 8
  store %struct._object* null, %struct._object** %im_unicode_tmp, align 8
  %5 = bitcast %struct.LocaleInfo* %locale to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false)
  %6 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision2 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %6, i32 0, i32 6
  %7 = load i64, i64* %precision2, align 8
  %cmp = icmp sgt i64 %7, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0))
  br label %done

if.end:                                           ; preds = %entry
  %9 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %precision3 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %9, i32 0, i32 6
  %10 = load i64, i64* %precision3, align 8
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %precision, align 4
  %11 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %11, i32 0, i32 0
  %12 = load i32, i32* %fill_char, align 4
  %cmp4 = icmp eq i32 %12, 48
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0))
  br label %done

if.end.7:                                         ; preds = %if.end
  %14 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %14, i32 0, i32 1
  %15 = load i32, i32* %align, align 4
  %cmp8 = icmp eq i32 %15, 61
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i32 0, i32 0))
  br label %done

if.end.11:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call double @PyComplex_RealAsDouble(%struct._object* %17)
  store double %call, double* %re, align 8
  %18 = load double, double* %re, align 8
  %cmp12 = fcmp oeq double %18, -1.000000e+00
  br i1 %cmp12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.11
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call14, null
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  br label %done

if.end.16:                                        ; preds = %land.lhs.true, %if.end.11
  %19 = load %struct._object*, %struct._object** %value.addr, align 8
  %call17 = call double @PyComplex_ImagAsDouble(%struct._object* %19)
  store double %call17, double* %im, align 8
  %20 = load double, double* %im, align 8
  %cmp18 = fcmp oeq double %20, -1.000000e+00
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.end.16
  %call21 = call %struct._object* @PyErr_Occurred()
  %tobool22 = icmp ne %struct._object* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %done

if.end.24:                                        ; preds = %land.lhs.true.20, %if.end.16
  %21 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %21, i32 0, i32 2
  %22 = load i32, i32* %alternate, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %23 = load i32, i32* %flags, align 4
  %or = or i32 %23, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %24 = load i32, i32* %type, align 4
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.end.27
  store i32 114, i32* %type, align 4
  store i32 0, i32* %default_precision, align 4
  %25 = load double, double* %re, align 8
  %cmp31 = fcmp oeq double %25, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true.33, label %if.else

land.lhs.true.33:                                 ; preds = %if.then.30
  %26 = load double, double* %re, align 8
  %call34 = call double @copysign(double 1.000000e+00, double %26) #8
  %cmp35 = fcmp oeq double %call34, 1.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %skip_re, align 4
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true.33, %if.then.30
  store i32 1, i32* %add_parens, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.37
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.27
  %27 = load i32, i32* %type, align 4
  %cmp40 = icmp eq i32 %27, 110
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 103, i32* %type, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %28 = load i32, i32* %precision, align 4
  %cmp44 = icmp slt i32 %28, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43
  %29 = load i32, i32* %default_precision, align 4
  store i32 %29, i32* %precision, align 4
  br label %if.end.52

if.else.47:                                       ; preds = %if.end.43
  %30 = load i32, i32* %type, align 4
  %cmp48 = icmp eq i32 %30, 114
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.else.47
  store i32 103, i32* %type, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.else.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.46
  %31 = load double, double* %re, align 8
  %32 = load i32, i32* %type, align 4
  %conv53 = trunc i32 %32 to i8
  %33 = load i32, i32* %precision, align 4
  %34 = load i32, i32* %flags, align 4
  %call54 = call i8* @PyOS_double_to_string(double %31, i8 signext %conv53, i32 %33, i32 %34, i32* %re_float_type)
  store i8* %call54, i8** %re_buf, align 8
  %35 = load i8*, i8** %re_buf, align 8
  %cmp55 = icmp eq i8* %35, null
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.52
  br label %done

if.end.58:                                        ; preds = %if.end.52
  %36 = load double, double* %im, align 8
  %37 = load i32, i32* %type, align 4
  %conv59 = trunc i32 %37 to i8
  %38 = load i32, i32* %precision, align 4
  %39 = load i32, i32* %flags, align 4
  %call60 = call i8* @PyOS_double_to_string(double %36, i8 signext %conv59, i32 %38, i32 %39, i32* %im_float_type)
  store i8* %call60, i8** %im_buf, align 8
  %40 = load i8*, i8** %im_buf, align 8
  %cmp61 = icmp eq i8* %40, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  br label %done

if.end.64:                                        ; preds = %if.end.58
  %41 = load i8*, i8** %re_buf, align 8
  %call65 = call i64 @strlen(i8* %41) #7
  store i64 %call65, i64* %n_re_digits, align 8
  %42 = load i8*, i8** %im_buf, align 8
  %call66 = call i64 @strlen(i8* %42) #7
  store i64 %call66, i64* %n_im_digits, align 8
  %43 = load i8*, i8** %re_buf, align 8
  %44 = load i64, i64* %n_re_digits, align 8
  %call67 = call %struct._object* @_PyUnicode_FromASCII(i8* %43, i64 %44)
  store %struct._object* %call67, %struct._object** %re_unicode_tmp, align 8
  %45 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %cmp68 = icmp eq %struct._object* %45, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.64
  br label %done

if.end.71:                                        ; preds = %if.end.64
  store i64 0, i64* %i_re, align 8
  %46 = load i8*, i8** %im_buf, align 8
  %47 = load i64, i64* %n_im_digits, align 8
  %call72 = call %struct._object* @_PyUnicode_FromASCII(i8* %46, i64 %47)
  store %struct._object* %call72, %struct._object** %im_unicode_tmp, align 8
  %48 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %cmp73 = icmp eq %struct._object* %48, null
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  br label %done

if.end.76:                                        ; preds = %if.end.71
  store i64 0, i64* %i_im, align 8
  %49 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i32 0, i32 3
  %51 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %51, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp77 = icmp eq i32 %bf.clear, 1
  br i1 %cmp77, label %cond.true, label %cond.false.96

cond.true:                                        ; preds = %if.end.76
  %52 = load i64, i64* %i_re, align 8
  %53 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*
  %state79 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3
  %55 = bitcast %struct.anon* %state79 to i32*
  %bf.load80 = load i32, i32* %55, align 4
  %bf.lshr81 = lshr i32 %bf.load80, 5
  %bf.clear82 = and i32 %bf.lshr81, 1
  %tobool83 = icmp ne i32 %bf.clear82, 0
  br i1 %tobool83, label %cond.true.84, label %cond.false.92

cond.true.84:                                     ; preds = %cond.true
  %56 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %state85 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3
  %58 = bitcast %struct.anon* %state85 to i32*
  %bf.load86 = load i32, i32* %58, align 4
  %bf.lshr87 = lshr i32 %bf.load86, 6
  %bf.clear88 = and i32 %bf.lshr87, 1
  %tobool89 = icmp ne i32 %bf.clear88, 0
  br i1 %tobool89, label %cond.true.90, label %cond.false

cond.true.90:                                     ; preds = %cond.true.84
  %59 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i64 1
  %61 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.84
  %62 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyCompactUnicodeObject*
  %add.ptr91 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %63, i64 1
  %64 = bitcast %struct.PyCompactUnicodeObject* %add.ptr91 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.90
  %cond = phi i8* [ %61, %cond.true.90 ], [ %64, %cond.false ]
  br label %cond.end.93

cond.false.92:                                    ; preds = %cond.true
  %65 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %66, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %67 = load i8*, i8** %any, align 8
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.92, %cond.end
  %cond94 = phi i8* [ %cond, %cond.end ], [ %67, %cond.false.92 ]
  %arrayidx = getelementptr i8, i8* %cond94, i64 %52
  %68 = load i8, i8* %arrayidx, align 1
  %conv95 = zext i8 %68 to i32
  br label %cond.end.154

cond.false.96:                                    ; preds = %if.end.76
  %69 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %70 = bitcast %struct._object* %69 to %struct.PyASCIIObject*
  %state97 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %70, i32 0, i32 3
  %71 = bitcast %struct.anon* %state97 to i32*
  %bf.load98 = load i32, i32* %71, align 4
  %bf.lshr99 = lshr i32 %bf.load98, 2
  %bf.clear100 = and i32 %bf.lshr99, 7
  %cmp101 = icmp eq i32 %bf.clear100, 2
  br i1 %cmp101, label %cond.true.103, label %cond.false.128

cond.true.103:                                    ; preds = %cond.false.96
  %72 = load i64, i64* %i_re, align 8
  %73 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %state104 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i32 0, i32 3
  %75 = bitcast %struct.anon* %state104 to i32*
  %bf.load105 = load i32, i32* %75, align 4
  %bf.lshr106 = lshr i32 %bf.load105, 5
  %bf.clear107 = and i32 %bf.lshr106, 1
  %tobool108 = icmp ne i32 %bf.clear107, 0
  br i1 %tobool108, label %cond.true.109, label %cond.false.121

cond.true.109:                                    ; preds = %cond.true.103
  %76 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyASCIIObject*
  %state110 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i32 0, i32 3
  %78 = bitcast %struct.anon* %state110 to i32*
  %bf.load111 = load i32, i32* %78, align 4
  %bf.lshr112 = lshr i32 %bf.load111, 6
  %bf.clear113 = and i32 %bf.lshr112, 1
  %tobool114 = icmp ne i32 %bf.clear113, 0
  br i1 %tobool114, label %cond.true.115, label %cond.false.117

cond.true.115:                                    ; preds = %cond.true.109
  %79 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyASCIIObject*
  %add.ptr116 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %80, i64 1
  %81 = bitcast %struct.PyASCIIObject* %add.ptr116 to i8*
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.true.109
  %82 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %83 = bitcast %struct._object* %82 to %struct.PyCompactUnicodeObject*
  %add.ptr118 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %83, i64 1
  %84 = bitcast %struct.PyCompactUnicodeObject* %add.ptr118 to i8*
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.115
  %cond120 = phi i8* [ %81, %cond.true.115 ], [ %84, %cond.false.117 ]
  br label %cond.end.124

cond.false.121:                                   ; preds = %cond.true.103
  %85 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyUnicodeObject*
  %data122 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %86, i32 0, i32 1
  %any123 = bitcast %union.anon* %data122 to i8**
  %87 = load i8*, i8** %any123, align 8
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.121, %cond.end.119
  %cond125 = phi i8* [ %cond120, %cond.end.119 ], [ %87, %cond.false.121 ]
  %88 = bitcast i8* %cond125 to i16*
  %arrayidx126 = getelementptr i16, i16* %88, i64 %72
  %89 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %89 to i32
  br label %cond.end.152

cond.false.128:                                   ; preds = %cond.false.96
  %90 = load i64, i64* %i_re, align 8
  %91 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyASCIIObject*
  %state129 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %92, i32 0, i32 3
  %93 = bitcast %struct.anon* %state129 to i32*
  %bf.load130 = load i32, i32* %93, align 4
  %bf.lshr131 = lshr i32 %bf.load130, 5
  %bf.clear132 = and i32 %bf.lshr131, 1
  %tobool133 = icmp ne i32 %bf.clear132, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.146

cond.true.134:                                    ; preds = %cond.false.128
  %94 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyASCIIObject*
  %state135 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %95, i32 0, i32 3
  %96 = bitcast %struct.anon* %state135 to i32*
  %bf.load136 = load i32, i32* %96, align 4
  %bf.lshr137 = lshr i32 %bf.load136, 6
  %bf.clear138 = and i32 %bf.lshr137, 1
  %tobool139 = icmp ne i32 %bf.clear138, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.true.134
  %97 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyASCIIObject*
  %add.ptr141 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %98, i64 1
  %99 = bitcast %struct.PyASCIIObject* %add.ptr141 to i8*
  br label %cond.end.144

cond.false.142:                                   ; preds = %cond.true.134
  %100 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyCompactUnicodeObject*
  %add.ptr143 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %101, i64 1
  %102 = bitcast %struct.PyCompactUnicodeObject* %add.ptr143 to i8*
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.140
  %cond145 = phi i8* [ %99, %cond.true.140 ], [ %102, %cond.false.142 ]
  br label %cond.end.149

cond.false.146:                                   ; preds = %cond.false.128
  %103 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyUnicodeObject*
  %data147 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %104, i32 0, i32 1
  %any148 = bitcast %union.anon* %data147 to i8**
  %105 = load i8*, i8** %any148, align 8
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.146, %cond.end.144
  %cond150 = phi i8* [ %cond145, %cond.end.144 ], [ %105, %cond.false.146 ]
  %106 = bitcast i8* %cond150 to i32*
  %arrayidx151 = getelementptr i32, i32* %106, i64 %90
  %107 = load i32, i32* %arrayidx151, align 4
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.149, %cond.end.124
  %cond153 = phi i32 [ %conv127, %cond.end.124 ], [ %107, %cond.end.149 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %cond.end.93
  %cond155 = phi i32 [ %conv95, %cond.end.93 ], [ %cond153, %cond.end.152 ]
  %cmp156 = icmp eq i32 %cond155, 45
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %cond.end.154
  store i32 45, i32* %re_sign_char, align 4
  %108 = load i64, i64* %i_re, align 8
  %inc = add i64 %108, 1
  store i64 %inc, i64* %i_re, align 8
  %109 = load i64, i64* %n_re_digits, align 8
  %dec = add i64 %109, -1
  store i64 %dec, i64* %n_re_digits, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %cond.end.154
  %110 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %111 = bitcast %struct._object* %110 to %struct.PyASCIIObject*
  %state160 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %111, i32 0, i32 3
  %112 = bitcast %struct.anon* %state160 to i32*
  %bf.load161 = load i32, i32* %112, align 4
  %bf.lshr162 = lshr i32 %bf.load161, 2
  %bf.clear163 = and i32 %bf.lshr162, 7
  %cmp164 = icmp eq i32 %bf.clear163, 1
  br i1 %cmp164, label %cond.true.166, label %cond.false.191

cond.true.166:                                    ; preds = %if.end.159
  %113 = load i64, i64* %i_im, align 8
  %114 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyASCIIObject*
  %state167 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %115, i32 0, i32 3
  %116 = bitcast %struct.anon* %state167 to i32*
  %bf.load168 = load i32, i32* %116, align 4
  %bf.lshr169 = lshr i32 %bf.load168, 5
  %bf.clear170 = and i32 %bf.lshr169, 1
  %tobool171 = icmp ne i32 %bf.clear170, 0
  br i1 %tobool171, label %cond.true.172, label %cond.false.184

cond.true.172:                                    ; preds = %cond.true.166
  %117 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyASCIIObject*
  %state173 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %118, i32 0, i32 3
  %119 = bitcast %struct.anon* %state173 to i32*
  %bf.load174 = load i32, i32* %119, align 4
  %bf.lshr175 = lshr i32 %bf.load174, 6
  %bf.clear176 = and i32 %bf.lshr175, 1
  %tobool177 = icmp ne i32 %bf.clear176, 0
  br i1 %tobool177, label %cond.true.178, label %cond.false.180

cond.true.178:                                    ; preds = %cond.true.172
  %120 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyASCIIObject*
  %add.ptr179 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %121, i64 1
  %122 = bitcast %struct.PyASCIIObject* %add.ptr179 to i8*
  br label %cond.end.182

cond.false.180:                                   ; preds = %cond.true.172
  %123 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyCompactUnicodeObject*
  %add.ptr181 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %124, i64 1
  %125 = bitcast %struct.PyCompactUnicodeObject* %add.ptr181 to i8*
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.180, %cond.true.178
  %cond183 = phi i8* [ %122, %cond.true.178 ], [ %125, %cond.false.180 ]
  br label %cond.end.187

cond.false.184:                                   ; preds = %cond.true.166
  %126 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyUnicodeObject*
  %data185 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %127, i32 0, i32 1
  %any186 = bitcast %union.anon* %data185 to i8**
  %128 = load i8*, i8** %any186, align 8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.end.182
  %cond188 = phi i8* [ %cond183, %cond.end.182 ], [ %128, %cond.false.184 ]
  %arrayidx189 = getelementptr i8, i8* %cond188, i64 %113
  %129 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %129 to i32
  br label %cond.end.249

cond.false.191:                                   ; preds = %if.end.159
  %130 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %131 = bitcast %struct._object* %130 to %struct.PyASCIIObject*
  %state192 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %131, i32 0, i32 3
  %132 = bitcast %struct.anon* %state192 to i32*
  %bf.load193 = load i32, i32* %132, align 4
  %bf.lshr194 = lshr i32 %bf.load193, 2
  %bf.clear195 = and i32 %bf.lshr194, 7
  %cmp196 = icmp eq i32 %bf.clear195, 2
  br i1 %cmp196, label %cond.true.198, label %cond.false.223

cond.true.198:                                    ; preds = %cond.false.191
  %133 = load i64, i64* %i_im, align 8
  %134 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %135 = bitcast %struct._object* %134 to %struct.PyASCIIObject*
  %state199 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %135, i32 0, i32 3
  %136 = bitcast %struct.anon* %state199 to i32*
  %bf.load200 = load i32, i32* %136, align 4
  %bf.lshr201 = lshr i32 %bf.load200, 5
  %bf.clear202 = and i32 %bf.lshr201, 1
  %tobool203 = icmp ne i32 %bf.clear202, 0
  br i1 %tobool203, label %cond.true.204, label %cond.false.216

cond.true.204:                                    ; preds = %cond.true.198
  %137 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %138 = bitcast %struct._object* %137 to %struct.PyASCIIObject*
  %state205 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %138, i32 0, i32 3
  %139 = bitcast %struct.anon* %state205 to i32*
  %bf.load206 = load i32, i32* %139, align 4
  %bf.lshr207 = lshr i32 %bf.load206, 6
  %bf.clear208 = and i32 %bf.lshr207, 1
  %tobool209 = icmp ne i32 %bf.clear208, 0
  br i1 %tobool209, label %cond.true.210, label %cond.false.212

cond.true.210:                                    ; preds = %cond.true.204
  %140 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %141 = bitcast %struct._object* %140 to %struct.PyASCIIObject*
  %add.ptr211 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %141, i64 1
  %142 = bitcast %struct.PyASCIIObject* %add.ptr211 to i8*
  br label %cond.end.214

cond.false.212:                                   ; preds = %cond.true.204
  %143 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %144 = bitcast %struct._object* %143 to %struct.PyCompactUnicodeObject*
  %add.ptr213 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %144, i64 1
  %145 = bitcast %struct.PyCompactUnicodeObject* %add.ptr213 to i8*
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.210
  %cond215 = phi i8* [ %142, %cond.true.210 ], [ %145, %cond.false.212 ]
  br label %cond.end.219

cond.false.216:                                   ; preds = %cond.true.198
  %146 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %147 = bitcast %struct._object* %146 to %struct.PyUnicodeObject*
  %data217 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %147, i32 0, i32 1
  %any218 = bitcast %union.anon* %data217 to i8**
  %148 = load i8*, i8** %any218, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.216, %cond.end.214
  %cond220 = phi i8* [ %cond215, %cond.end.214 ], [ %148, %cond.false.216 ]
  %149 = bitcast i8* %cond220 to i16*
  %arrayidx221 = getelementptr i16, i16* %149, i64 %133
  %150 = load i16, i16* %arrayidx221, align 2
  %conv222 = zext i16 %150 to i32
  br label %cond.end.247

cond.false.223:                                   ; preds = %cond.false.191
  %151 = load i64, i64* %i_im, align 8
  %152 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %153 = bitcast %struct._object* %152 to %struct.PyASCIIObject*
  %state224 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %153, i32 0, i32 3
  %154 = bitcast %struct.anon* %state224 to i32*
  %bf.load225 = load i32, i32* %154, align 4
  %bf.lshr226 = lshr i32 %bf.load225, 5
  %bf.clear227 = and i32 %bf.lshr226, 1
  %tobool228 = icmp ne i32 %bf.clear227, 0
  br i1 %tobool228, label %cond.true.229, label %cond.false.241

cond.true.229:                                    ; preds = %cond.false.223
  %155 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %156 = bitcast %struct._object* %155 to %struct.PyASCIIObject*
  %state230 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %156, i32 0, i32 3
  %157 = bitcast %struct.anon* %state230 to i32*
  %bf.load231 = load i32, i32* %157, align 4
  %bf.lshr232 = lshr i32 %bf.load231, 6
  %bf.clear233 = and i32 %bf.lshr232, 1
  %tobool234 = icmp ne i32 %bf.clear233, 0
  br i1 %tobool234, label %cond.true.235, label %cond.false.237

cond.true.235:                                    ; preds = %cond.true.229
  %158 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %159 = bitcast %struct._object* %158 to %struct.PyASCIIObject*
  %add.ptr236 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %159, i64 1
  %160 = bitcast %struct.PyASCIIObject* %add.ptr236 to i8*
  br label %cond.end.239

cond.false.237:                                   ; preds = %cond.true.229
  %161 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %162 = bitcast %struct._object* %161 to %struct.PyCompactUnicodeObject*
  %add.ptr238 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %162, i64 1
  %163 = bitcast %struct.PyCompactUnicodeObject* %add.ptr238 to i8*
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.237, %cond.true.235
  %cond240 = phi i8* [ %160, %cond.true.235 ], [ %163, %cond.false.237 ]
  br label %cond.end.244

cond.false.241:                                   ; preds = %cond.false.223
  %164 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %165 = bitcast %struct._object* %164 to %struct.PyUnicodeObject*
  %data242 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %165, i32 0, i32 1
  %any243 = bitcast %union.anon* %data242 to i8**
  %166 = load i8*, i8** %any243, align 8
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.241, %cond.end.239
  %cond245 = phi i8* [ %cond240, %cond.end.239 ], [ %166, %cond.false.241 ]
  %167 = bitcast i8* %cond245 to i32*
  %arrayidx246 = getelementptr i32, i32* %167, i64 %151
  %168 = load i32, i32* %arrayidx246, align 4
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.244, %cond.end.219
  %cond248 = phi i32 [ %conv222, %cond.end.219 ], [ %168, %cond.end.244 ]
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.end.247, %cond.end.187
  %cond250 = phi i32 [ %conv190, %cond.end.187 ], [ %cond248, %cond.end.247 ]
  %cmp251 = icmp eq i32 %cond250, 45
  br i1 %cmp251, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %cond.end.249
  store i32 45, i32* %im_sign_char, align 4
  %169 = load i64, i64* %i_im, align 8
  %inc254 = add i64 %169, 1
  store i64 %inc254, i64* %i_im, align 8
  %170 = load i64, i64* %n_im_digits, align 8
  %dec255 = add i64 %170, -1
  store i64 %dec255, i64* %n_im_digits, align 8
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.253, %cond.end.249
  %171 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %172 = load i64, i64* %i_re, align 8
  %173 = load i64, i64* %i_re, align 8
  %174 = load i64, i64* %n_re_digits, align 8
  %add = add i64 %173, %174
  call void @parse_number(%struct._object* %171, i64 %172, i64 %add, i64* %n_re_remainder, i32* %re_has_decimal)
  %175 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %176 = load i64, i64* %i_im, align 8
  %177 = load i64, i64* %i_im, align 8
  %178 = load i64, i64* %n_im_digits, align 8
  %add257 = add i64 %177, %178
  call void @parse_number(%struct._object* %175, i64 %176, i64 %add257, i64* %n_im_remainder, i32* %im_has_decimal)
  %179 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %type258 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %179, i32 0, i32 7
  %180 = load i32, i32* %type258, align 4
  %cmp259 = icmp eq i32 %180, 110
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %if.end.256
  br label %cond.end.265

cond.false.262:                                   ; preds = %if.end.256
  %181 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %181, i32 0, i32 5
  %182 = load i32, i32* %thousands_separators, align 4
  %tobool263 = icmp ne i32 %182, 0
  %cond264 = select i1 %tobool263, i32 1, i32 2
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.true.261
  %cond266 = phi i32 [ 0, %cond.true.261 ], [ %cond264, %cond.false.262 ]
  %call267 = call i32 @get_locale_info(i32 %cond266, %struct.LocaleInfo* %locale)
  %cmp268 = icmp eq i32 %call267, -1
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %cond.end.265
  br label %done

if.end.271:                                       ; preds = %cond.end.265
  %fill_char272 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format, i32 0, i32 0
  store i32 0, i32* %fill_char272, align 4
  %align273 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format, i32 0, i32 1
  store i32 60, i32* %align273, align 4
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format, i32 0, i32 4
  store i64 -1, i64* %width, align 8
  %183 = load i32, i32* %re_sign_char, align 4
  %184 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %185 = load i64, i64* %i_re, align 8
  %186 = load i64, i64* %i_re, align 8
  %187 = load i64, i64* %n_re_digits, align 8
  %add274 = add i64 %186, %187
  %188 = load i64, i64* %n_re_remainder, align 8
  %189 = load i32, i32* %re_has_decimal, align 4
  %call275 = call i64 @calc_number_widths(%struct.NumberFieldWidths* %re_spec, i64 0, i32 %183, %struct._object* %184, i64 %185, i64 %add274, i64 %188, i32 %189, %struct.LocaleInfo* %locale, %struct.InternalFormatSpec* %tmp_format, i32* %maxchar)
  store i64 %call275, i64* %n_re_total, align 8
  %190 = load i32, i32* %skip_re, align 4
  %tobool276 = icmp ne i32 %190, 0
  br i1 %tobool276, label %if.end.278, label %if.then.277

if.then.277:                                      ; preds = %if.end.271
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format, i32 0, i32 3
  store i32 43, i32* %sign, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.271
  %191 = load i32, i32* %im_sign_char, align 4
  %192 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %193 = load i64, i64* %i_im, align 8
  %194 = load i64, i64* %i_im, align 8
  %195 = load i64, i64* %n_im_digits, align 8
  %add279 = add i64 %194, %195
  %196 = load i64, i64* %n_im_remainder, align 8
  %197 = load i32, i32* %im_has_decimal, align 4
  %call280 = call i64 @calc_number_widths(%struct.NumberFieldWidths* %im_spec, i64 0, i32 %191, %struct._object* %192, i64 %193, i64 %add279, i64 %196, i32 %197, %struct.LocaleInfo* %locale, %struct.InternalFormatSpec* %tmp_format, i32* %maxchar)
  store i64 %call280, i64* %n_im_total, align 8
  %198 = load i32, i32* %skip_re, align 4
  %tobool281 = icmp ne i32 %198, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.end.278
  store i64 0, i64* %n_re_total, align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %if.end.278
  %199 = load i64, i64* %n_re_total, align 8
  %200 = load i64, i64* %n_im_total, align 8
  %add284 = add i64 %199, %200
  %add285 = add i64 %add284, 1
  %201 = load i32, i32* %add_parens, align 4
  %mul = mul i32 %201, 2
  %conv286 = sext i32 %mul to i64
  %add287 = add i64 %add285, %conv286
  %202 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width288 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %202, i32 0, i32 4
  %203 = load i64, i64* %width288, align 8
  %204 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align289 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %204, i32 0, i32 1
  %205 = load i32, i32* %align289, align 4
  call void @calc_padding(i64 %add287, i64 %203, i32 %205, i64* %lpad, i64* %rpad, i64* %total)
  %206 = load i64, i64* %lpad, align 8
  %tobool290 = icmp ne i64 %206, 0
  br i1 %tobool290, label %if.then.292, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.283
  %207 = load i64, i64* %rpad, align 8
  %tobool291 = icmp ne i64 %207, 0
  br i1 %tobool291, label %if.then.292, label %if.end.301

if.then.292:                                      ; preds = %lor.lhs.false, %if.end.283
  %208 = load i32, i32* %maxchar, align 4
  %209 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char293 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %209, i32 0, i32 0
  %210 = load i32, i32* %fill_char293, align 4
  %cmp294 = icmp ugt i32 %208, %210
  br i1 %cmp294, label %cond.true.296, label %cond.false.297

cond.true.296:                                    ; preds = %if.then.292
  %211 = load i32, i32* %maxchar, align 4
  br label %cond.end.299

cond.false.297:                                   ; preds = %if.then.292
  %212 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char298 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %212, i32 0, i32 0
  %213 = load i32, i32* %fill_char298, align 4
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.297, %cond.true.296
  %cond300 = phi i32 [ %211, %cond.true.296 ], [ %213, %cond.false.297 ]
  store i32 %cond300, i32* %maxchar, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %cond.end.299, %lor.lhs.false
  %214 = load i32, i32* %maxchar, align 4
  %215 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar302 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %215, i32 0, i32 3
  %216 = load i32, i32* %maxchar302, align 4
  %cmp303 = icmp ule i32 %214, %216
  br i1 %cmp303, label %land.lhs.true.305, label %cond.false.309

land.lhs.true.305:                                ; preds = %if.end.301
  %217 = load i64, i64* %total, align 8
  %218 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %218, i32 0, i32 4
  %219 = load i64, i64* %size, align 8
  %220 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %220, i32 0, i32 5
  %221 = load i64, i64* %pos, align 8
  %sub = sub i64 %219, %221
  %cmp306 = icmp sle i64 %217, %sub
  br i1 %cmp306, label %cond.true.308, label %cond.false.309

cond.true.308:                                    ; preds = %land.lhs.true.305
  br label %cond.end.317

cond.false.309:                                   ; preds = %land.lhs.true.305, %if.end.301
  %222 = load i64, i64* %total, align 8
  %cmp310 = icmp eq i64 %222, 0
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %cond.false.309
  br label %cond.end.315

cond.false.313:                                   ; preds = %cond.false.309
  %223 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %224 = load i64, i64* %total, align 8
  %225 = load i32, i32* %maxchar, align 4
  %call314 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %223, i64 %224, i32 %225)
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.313, %cond.true.312
  %cond316 = phi i32 [ 0, %cond.true.312 ], [ %call314, %cond.false.313 ]
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.end.315, %cond.true.308
  %cond318 = phi i32 [ 0, %cond.true.308 ], [ %cond316, %cond.end.315 ]
  %cmp319 = icmp eq i32 %cond318, -1
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %cond.end.317
  br label %done

if.end.322:                                       ; preds = %cond.end.317
  %226 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %kind = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %226, i32 0, i32 2
  %227 = load i32, i32* %kind, align 4
  store i32 %227, i32* %rkind, align 4
  %228 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data323 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %228, i32 0, i32 1
  %229 = load i8*, i8** %data323, align 8
  store i8* %229, i8** %rdata, align 8
  %230 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %231 = load i64, i64* %n_re_total, align 8
  %232 = load i64, i64* %n_im_total, align 8
  %add324 = add i64 %231, %232
  %add325 = add i64 %add324, 1
  %233 = load i32, i32* %add_parens, align 4
  %mul326 = mul i32 %233, 2
  %conv327 = sext i32 %mul326 to i64
  %add328 = add i64 %add325, %conv327
  %234 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char329 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %234, i32 0, i32 0
  %235 = load i32, i32* %fill_char329, align 4
  %236 = load i64, i64* %lpad, align 8
  %237 = load i64, i64* %rpad, align 8
  %call330 = call i32 @fill_padding(%struct._PyUnicodeWriter* %230, i64 %add328, i32 %235, i64 %236, i64 %237)
  store i32 %call330, i32* %result, align 4
  %238 = load i32, i32* %result, align 4
  %cmp331 = icmp eq i32 %238, -1
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.322
  br label %done

if.end.334:                                       ; preds = %if.end.322
  %239 = load i32, i32* %add_parens, align 4
  %tobool335 = icmp ne i32 %239, 0
  br i1 %tobool335, label %if.then.336, label %if.end.346

if.then.336:                                      ; preds = %if.end.334
  br label %do.body

do.body:                                          ; preds = %if.then.336
  %240 = load i32, i32* %rkind, align 4
  switch i32 %240, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.339
  ]

sw.bb:                                            ; preds = %do.body
  %241 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos337 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %241, i32 0, i32 5
  %242 = load i64, i64* %pos337, align 8
  %243 = load i8*, i8** %rdata, align 8
  %arrayidx338 = getelementptr i8, i8* %243, i64 %242
  store i8 40, i8* %arrayidx338, align 1
  br label %sw.epilog

sw.bb.339:                                        ; preds = %do.body
  %244 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos340 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %244, i32 0, i32 5
  %245 = load i64, i64* %pos340, align 8
  %246 = load i8*, i8** %rdata, align 8
  %247 = bitcast i8* %246 to i16*
  %arrayidx341 = getelementptr i16, i16* %247, i64 %245
  store i16 40, i16* %arrayidx341, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %248 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos342 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %248, i32 0, i32 5
  %249 = load i64, i64* %pos342, align 8
  %250 = load i8*, i8** %rdata, align 8
  %251 = bitcast i8* %250 to i32*
  %arrayidx343 = getelementptr i32, i32* %251, i64 %249
  store i32 40, i32* %arrayidx343, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.339, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %252 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos344 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %252, i32 0, i32 5
  %253 = load i64, i64* %pos344, align 8
  %inc345 = add i64 %253, 1
  store i64 %inc345, i64* %pos344, align 8
  br label %if.end.346

if.end.346:                                       ; preds = %do.end, %if.end.334
  %254 = load i32, i32* %skip_re, align 4
  %tobool347 = icmp ne i32 %254, 0
  br i1 %tobool347, label %if.end.355, label %if.then.348

if.then.348:                                      ; preds = %if.end.346
  %255 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %256 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  %257 = load i64, i64* %i_re, align 8
  %258 = load i64, i64* %i_re, align 8
  %259 = load i64, i64* %n_re_digits, align 8
  %add349 = add i64 %258, %259
  %call350 = call i32 @fill_number(%struct._PyUnicodeWriter* %255, %struct.NumberFieldWidths* %re_spec, %struct._object* %256, i64 %257, i64 %add349, %struct._object* null, i64 0, i32 0, %struct.LocaleInfo* %locale, i32 0)
  store i32 %call350, i32* %result, align 4
  %260 = load i32, i32* %result, align 4
  %cmp351 = icmp eq i32 %260, -1
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.then.348
  br label %done

if.end.354:                                       ; preds = %if.then.348
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.end.346
  %261 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %262 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  %263 = load i64, i64* %i_im, align 8
  %264 = load i64, i64* %i_im, align 8
  %265 = load i64, i64* %n_im_digits, align 8
  %add356 = add i64 %264, %265
  %call357 = call i32 @fill_number(%struct._PyUnicodeWriter* %261, %struct.NumberFieldWidths* %im_spec, %struct._object* %262, i64 %263, i64 %add356, %struct._object* null, i64 0, i32 0, %struct.LocaleInfo* %locale, i32 0)
  store i32 %call357, i32* %result, align 4
  %266 = load i32, i32* %result, align 4
  %cmp358 = icmp eq i32 %266, -1
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.end.355
  br label %done

if.end.361:                                       ; preds = %if.end.355
  br label %do.body.362

do.body.362:                                      ; preds = %if.end.361
  %267 = load i32, i32* %rkind, align 4
  switch i32 %267, label %sw.default.369 [
    i32 1, label %sw.bb.363
    i32 2, label %sw.bb.366
  ]

sw.bb.363:                                        ; preds = %do.body.362
  %268 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos364 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %268, i32 0, i32 5
  %269 = load i64, i64* %pos364, align 8
  %270 = load i8*, i8** %rdata, align 8
  %arrayidx365 = getelementptr i8, i8* %270, i64 %269
  store i8 106, i8* %arrayidx365, align 1
  br label %sw.epilog.372

sw.bb.366:                                        ; preds = %do.body.362
  %271 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos367 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %271, i32 0, i32 5
  %272 = load i64, i64* %pos367, align 8
  %273 = load i8*, i8** %rdata, align 8
  %274 = bitcast i8* %273 to i16*
  %arrayidx368 = getelementptr i16, i16* %274, i64 %272
  store i16 106, i16* %arrayidx368, align 2
  br label %sw.epilog.372

sw.default.369:                                   ; preds = %do.body.362
  %275 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos370 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %275, i32 0, i32 5
  %276 = load i64, i64* %pos370, align 8
  %277 = load i8*, i8** %rdata, align 8
  %278 = bitcast i8* %277 to i32*
  %arrayidx371 = getelementptr i32, i32* %278, i64 %276
  store i32 106, i32* %arrayidx371, align 4
  br label %sw.epilog.372

sw.epilog.372:                                    ; preds = %sw.default.369, %sw.bb.366, %sw.bb.363
  br label %do.end.373

do.end.373:                                       ; preds = %sw.epilog.372
  %279 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos374 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %279, i32 0, i32 5
  %280 = load i64, i64* %pos374, align 8
  %inc375 = add i64 %280, 1
  store i64 %inc375, i64* %pos374, align 8
  %281 = load i32, i32* %add_parens, align 4
  %tobool376 = icmp ne i32 %281, 0
  br i1 %tobool376, label %if.then.377, label %if.end.392

if.then.377:                                      ; preds = %do.end.373
  br label %do.body.378

do.body.378:                                      ; preds = %if.then.377
  %282 = load i32, i32* %rkind, align 4
  switch i32 %282, label %sw.default.385 [
    i32 1, label %sw.bb.379
    i32 2, label %sw.bb.382
  ]

sw.bb.379:                                        ; preds = %do.body.378
  %283 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos380 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %283, i32 0, i32 5
  %284 = load i64, i64* %pos380, align 8
  %285 = load i8*, i8** %rdata, align 8
  %arrayidx381 = getelementptr i8, i8* %285, i64 %284
  store i8 41, i8* %arrayidx381, align 1
  br label %sw.epilog.388

sw.bb.382:                                        ; preds = %do.body.378
  %286 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos383 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %286, i32 0, i32 5
  %287 = load i64, i64* %pos383, align 8
  %288 = load i8*, i8** %rdata, align 8
  %289 = bitcast i8* %288 to i16*
  %arrayidx384 = getelementptr i16, i16* %289, i64 %287
  store i16 41, i16* %arrayidx384, align 2
  br label %sw.epilog.388

sw.default.385:                                   ; preds = %do.body.378
  %290 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos386 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %290, i32 0, i32 5
  %291 = load i64, i64* %pos386, align 8
  %292 = load i8*, i8** %rdata, align 8
  %293 = bitcast i8* %292 to i32*
  %arrayidx387 = getelementptr i32, i32* %293, i64 %291
  store i32 41, i32* %arrayidx387, align 4
  br label %sw.epilog.388

sw.epilog.388:                                    ; preds = %sw.default.385, %sw.bb.382, %sw.bb.379
  br label %do.end.389

do.end.389:                                       ; preds = %sw.epilog.388
  %294 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos390 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %294, i32 0, i32 5
  %295 = load i64, i64* %pos390, align 8
  %inc391 = add i64 %295, 1
  store i64 %inc391, i64* %pos390, align 8
  br label %if.end.392

if.end.392:                                       ; preds = %do.end.389, %do.end.373
  %296 = load i64, i64* %rpad, align 8
  %297 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos393 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %297, i32 0, i32 5
  %298 = load i64, i64* %pos393, align 8
  %add394 = add i64 %298, %296
  store i64 %add394, i64* %pos393, align 8
  br label %done

done:                                             ; preds = %if.end.392, %if.then.360, %if.then.353, %if.then.333, %if.then.321, %if.then.270, %if.then.75, %if.then.70, %if.then.63, %if.then.57, %if.then.23, %if.then.15, %if.then.10, %if.then.6, %if.then
  %299 = load i8*, i8** %re_buf, align 8
  call void @PyMem_Free(i8* %299)
  %300 = load i8*, i8** %im_buf, align 8
  call void @PyMem_Free(i8* %300)
  br label %do.body.395

do.body.395:                                      ; preds = %done
  %301 = load %struct._object*, %struct._object** %re_unicode_tmp, align 8
  store %struct._object* %301, %struct._object** %_py_xdecref_tmp, align 8
  %302 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp396 = icmp ne %struct._object* %302, null
  br i1 %cmp396, label %if.then.398, label %if.end.407

if.then.398:                                      ; preds = %do.body.395
  br label %do.body.399

do.body.399:                                      ; preds = %if.then.398
  %303 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %303, %struct._object** %_py_decref_tmp, align 8
  %304 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %304, i32 0, i32 0
  %305 = load i64, i64* %ob_refcnt, align 8
  %dec400 = add i64 %305, -1
  store i64 %dec400, i64* %ob_refcnt, align 8
  %cmp401 = icmp ne i64 %dec400, 0
  br i1 %cmp401, label %if.then.403, label %if.else.404

if.then.403:                                      ; preds = %do.body.399
  br label %if.end.405

if.else.404:                                      ; preds = %do.body.399
  %306 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %306, i32 0, i32 1
  %307 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %307, i32 0, i32 4
  %308 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %309 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %308(%struct._object* %309)
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.404, %if.then.403
  br label %do.end.406

do.end.406:                                       ; preds = %if.end.405
  br label %if.end.407

if.end.407:                                       ; preds = %do.end.406, %do.body.395
  br label %do.end.408

do.end.408:                                       ; preds = %if.end.407
  br label %do.body.409

do.body.409:                                      ; preds = %do.end.408
  %310 = load %struct._object*, %struct._object** %im_unicode_tmp, align 8
  store %struct._object* %310, %struct._object** %_py_xdecref_tmp410, align 8
  %311 = load %struct._object*, %struct._object** %_py_xdecref_tmp410, align 8
  %cmp411 = icmp ne %struct._object* %311, null
  br i1 %cmp411, label %if.then.413, label %if.end.426

if.then.413:                                      ; preds = %do.body.409
  br label %do.body.414

do.body.414:                                      ; preds = %if.then.413
  %312 = load %struct._object*, %struct._object** %_py_xdecref_tmp410, align 8
  store %struct._object* %312, %struct._object** %_py_decref_tmp415, align 8
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  %ob_refcnt416 = getelementptr inbounds %struct._object, %struct._object* %313, i32 0, i32 0
  %314 = load i64, i64* %ob_refcnt416, align 8
  %dec417 = add i64 %314, -1
  store i64 %dec417, i64* %ob_refcnt416, align 8
  %cmp418 = icmp ne i64 %dec417, 0
  br i1 %cmp418, label %if.then.420, label %if.else.421

if.then.420:                                      ; preds = %do.body.414
  br label %if.end.424

if.else.421:                                      ; preds = %do.body.414
  %315 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  %ob_type422 = getelementptr inbounds %struct._object, %struct._object* %315, i32 0, i32 1
  %316 = load %struct._typeobject*, %struct._typeobject** %ob_type422, align 8
  %tp_dealloc423 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %316, i32 0, i32 4
  %317 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc423, align 8
  %318 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  call void %317(%struct._object* %318)
  br label %if.end.424

if.end.424:                                       ; preds = %if.else.421, %if.then.420
  br label %do.end.425

do.end.425:                                       ; preds = %if.end.424
  br label %if.end.426

if.end.426:                                       ; preds = %do.end.425, %do.body.409
  br label %do.end.427

do.end.427:                                       ; preds = %if.end.426
  call void @free_locale_info(%struct.LocaleInfo* %locale)
  %319 = load i32, i32* %result, align 4
  ret i32 %319
}

declare %struct._object* @PyObject_Str(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_alignment_token(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  switch i32 %0, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb
    i32 61, label %sw.bb
    i32 94, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_sign_element(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 43, label %sw.bb
    i32 45, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_integer(%struct._object* %str, i64* %pos, i64 %end, i64* %result) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca %struct._object*, align 8
  %pos.addr = alloca i64*, align 8
  %end.addr = alloca i64, align 8
  %result.addr = alloca i64*, align 8
  %accumulator = alloca i64, align 8
  %digitval = alloca i64, align 8
  %numdigits = alloca i32, align 4
  store %struct._object* %str, %struct._object** %str.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64* %result, i64** %result.addr, align 8
  store i32 0, i32* %numdigits, align 4
  store i64 0, i64* %accumulator, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64*, i64** %pos.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %end.addr, align 8
  %cmp = icmp sge i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %str.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp1 = icmp eq i32 %bf.clear, 1
  br i1 %cmp1, label %cond.true, label %cond.false.17

cond.true:                                        ; preds = %if.end
  %6 = load i64*, i64** %pos.addr, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct._object*, %struct._object** %str.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state2 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state2 to i32*
  %bf.load3 = load i32, i32* %10, align 4
  %bf.lshr4 = lshr i32 %bf.load3, 5
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tobool = icmp ne i32 %bf.clear5, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.14

cond.true.6:                                      ; preds = %cond.true
  %11 = load %struct._object*, %struct._object** %str.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %13, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false

cond.true.12:                                     ; preds = %cond.true.6
  %14 = load %struct._object*, %struct._object** %str.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.6
  %17 = load %struct._object*, %struct._object** %str.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr13 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr13 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.12
  %cond = phi i8* [ %16, %cond.true.12 ], [ %19, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.true
  %20 = load %struct._object*, %struct._object** %str.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi i8* [ %cond, %cond.end ], [ %22, %cond.false.14 ]
  %arrayidx = getelementptr i8, i8* %cond16, i64 %7
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i32
  br label %cond.end.75

cond.false.17:                                    ; preds = %if.end
  %24 = load %struct._object*, %struct._object** %str.addr, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %state18 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3
  %26 = bitcast %struct.anon* %state18 to i32*
  %bf.load19 = load i32, i32* %26, align 4
  %bf.lshr20 = lshr i32 %bf.load19, 2
  %bf.clear21 = and i32 %bf.lshr20, 7
  %cmp22 = icmp eq i32 %bf.clear21, 2
  br i1 %cmp22, label %cond.true.24, label %cond.false.49

cond.true.24:                                     ; preds = %cond.false.17
  %27 = load i64*, i64** %pos.addr, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct._object*, %struct._object** %str.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %state25 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3
  %31 = bitcast %struct.anon* %state25 to i32*
  %bf.load26 = load i32, i32* %31, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 5
  %bf.clear28 = and i32 %bf.lshr27, 1
  %tobool29 = icmp ne i32 %bf.clear28, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.42

cond.true.30:                                     ; preds = %cond.true.24
  %32 = load %struct._object*, %struct._object** %str.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyASCIIObject*
  %state31 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i32 0, i32 3
  %34 = bitcast %struct.anon* %state31 to i32*
  %bf.load32 = load i32, i32* %34, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 6
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.true.30
  %35 = load %struct._object*, %struct._object** %str.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyASCIIObject*
  %add.ptr37 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %36, i64 1
  %37 = bitcast %struct.PyASCIIObject* %add.ptr37 to i8*
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.true.30
  %38 = load %struct._object*, %struct._object** %str.addr, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyCompactUnicodeObject*
  %add.ptr39 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %39, i64 1
  %40 = bitcast %struct.PyCompactUnicodeObject* %add.ptr39 to i8*
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i8* [ %37, %cond.true.36 ], [ %40, %cond.false.38 ]
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.true.24
  %41 = load %struct._object*, %struct._object** %str.addr, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyUnicodeObject*
  %data43 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %42, i32 0, i32 1
  %any44 = bitcast %union.anon* %data43 to i8**
  %43 = load i8*, i8** %any44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.end.40
  %cond46 = phi i8* [ %cond41, %cond.end.40 ], [ %43, %cond.false.42 ]
  %44 = bitcast i8* %cond46 to i16*
  %arrayidx47 = getelementptr i16, i16* %44, i64 %28
  %45 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %45 to i32
  br label %cond.end.73

cond.false.49:                                    ; preds = %cond.false.17
  %46 = load i64*, i64** %pos.addr, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct._object*, %struct._object** %str.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyASCIIObject*
  %state50 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %49, i32 0, i32 3
  %50 = bitcast %struct.anon* %state50 to i32*
  %bf.load51 = load i32, i32* %50, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 5
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.67

cond.true.55:                                     ; preds = %cond.false.49
  %51 = load %struct._object*, %struct._object** %str.addr, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %52, i32 0, i32 3
  %53 = bitcast %struct.anon* %state56 to i32*
  %bf.load57 = load i32, i32* %53, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 6
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.true.55
  %54 = load %struct._object*, %struct._object** %str.addr, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyASCIIObject*
  %add.ptr62 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %55, i64 1
  %56 = bitcast %struct.PyASCIIObject* %add.ptr62 to i8*
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.true.55
  %57 = load %struct._object*, %struct._object** %str.addr, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyCompactUnicodeObject*
  %add.ptr64 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %58, i64 1
  %59 = bitcast %struct.PyCompactUnicodeObject* %add.ptr64 to i8*
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i8* [ %56, %cond.true.61 ], [ %59, %cond.false.63 ]
  br label %cond.end.70

cond.false.67:                                    ; preds = %cond.false.49
  %60 = load %struct._object*, %struct._object** %str.addr, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyUnicodeObject*
  %data68 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %61, i32 0, i32 1
  %any69 = bitcast %union.anon* %data68 to i8**
  %62 = load i8*, i8** %any69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.end.65
  %cond71 = phi i8* [ %cond66, %cond.end.65 ], [ %62, %cond.false.67 ]
  %63 = bitcast i8* %cond71 to i32*
  %arrayidx72 = getelementptr i32, i32* %63, i64 %47
  %64 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.70, %cond.end.45
  %cond74 = phi i32 [ %conv48, %cond.end.45 ], [ %64, %cond.end.70 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.end.15
  %cond76 = phi i32 [ %conv, %cond.end.15 ], [ %cond74, %cond.end.73 ]
  %call = call i32 @_PyUnicode_ToDecimalDigit(i32 %cond76)
  %conv77 = sext i32 %call to i64
  store i64 %conv77, i64* %digitval, align 8
  %65 = load i64, i64* %digitval, align 8
  %cmp78 = icmp slt i64 %65, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.75
  br label %for.end

if.end.81:                                        ; preds = %cond.end.75
  %66 = load i64, i64* %accumulator, align 8
  %67 = load i64, i64* %digitval, align 8
  %sub = sub i64 9223372036854775807, %67
  %div = sdiv i64 %sub, 10
  %cmp82 = icmp sgt i64 %66, %div
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.81
  %68 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call85 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.81
  %69 = load i64, i64* %accumulator, align 8
  %mul = mul i64 %69, 10
  %70 = load i64, i64* %digitval, align 8
  %add = add i64 %mul, %70
  store i64 %add, i64* %accumulator, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %71 = load i64*, i64** %pos.addr, align 8
  %72 = load i64, i64* %71, align 8
  %inc = add i64 %72, 1
  store i64 %inc, i64* %71, align 8
  %73 = load i32, i32* %numdigits, align 4
  %inc87 = add i32 %73, 1
  store i32 %inc87, i32* %numdigits, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.80, %if.then
  %74 = load i64, i64* %accumulator, align 8
  %75 = load i64*, i64** %result.addr, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* %numdigits, align 4
  store i32 %76, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.84
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @invalid_comma_type(i32 %presentation_type) #0 {
entry:
  %presentation_type.addr = alloca i32, align 4
  store i32 %presentation_type, i32* %presentation_type.addr, align 4
  %0 = load i32, i32* %presentation_type.addr, align 4
  %cmp = icmp ugt i32 %0, 32
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %presentation_type.addr, align 4
  %cmp1 = icmp ult i32 %1, 128
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %3 = load i32, i32* %presentation_type.addr, align 4
  %conv = trunc i32 %3 to i8
  %conv2 = sext i8 %conv to i32
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %conv2)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %5 = load i32, i32* %presentation_type.addr, align 4
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @_PyUnicode_ToDecimalDigit(i32) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @calc_padding(i64 %nchars, i64 %width, i32 %align, i64* %n_lpadding, i64* %n_rpadding, i64* %n_total) #0 {
entry:
  %nchars.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  %n_lpadding.addr = alloca i64*, align 8
  %n_rpadding.addr = alloca i64*, align 8
  %n_total.addr = alloca i64*, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  store i64* %n_lpadding, i64** %n_lpadding.addr, align 8
  store i64* %n_rpadding, i64** %n_rpadding.addr, align 8
  store i64* %n_total, i64** %n_total.addr, align 8
  %0 = load i64, i64* %width.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %nchars.addr, align 8
  %2 = load i64, i64* %width.addr, align 8
  %cmp1 = icmp sgt i64 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i64, i64* %nchars.addr, align 8
  %4 = load i64*, i64** %n_total.addr, align 8
  store i64 %3, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i64, i64* %width.addr, align 8
  %6 = load i64*, i64** %n_total.addr, align 8
  store i64 %5, i64* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.else.3:                                        ; preds = %entry
  %7 = load i64, i64* %nchars.addr, align 8
  %8 = load i64*, i64** %n_total.addr, align 8
  store i64 %7, i64* %8, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.end
  %9 = load i32, i32* %align.addr, align 4
  %cmp5 = icmp eq i32 %9, 62
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  %10 = load i64*, i64** %n_total.addr, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %nchars.addr, align 8
  %sub = sub i64 %11, %12
  %13 = load i64*, i64** %n_lpadding.addr, align 8
  store i64 %sub, i64* %13, align 8
  br label %if.end.18

if.else.7:                                        ; preds = %if.end.4
  %14 = load i32, i32* %align.addr, align 4
  %cmp8 = icmp eq i32 %14, 94
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %15 = load i64*, i64** %n_total.addr, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %nchars.addr, align 8
  %sub10 = sub i64 %16, %17
  %div = sdiv i64 %sub10, 2
  %18 = load i64*, i64** %n_lpadding.addr, align 8
  store i64 %div, i64* %18, align 8
  br label %if.end.17

if.else.11:                                       ; preds = %if.else.7
  %19 = load i32, i32* %align.addr, align 4
  %cmp12 = icmp eq i32 %19, 60
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.11
  %20 = load i32, i32* %align.addr, align 4
  %cmp13 = icmp eq i32 %20, 61
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.else.11
  %21 = load i64*, i64** %n_lpadding.addr, align 8
  store i64 0, i64* %21, align 8
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  %22 = load i64*, i64** %n_lpadding.addr, align 8
  store i64 0, i64* %22, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.6
  %23 = load i64*, i64** %n_total.addr, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %nchars.addr, align 8
  %sub19 = sub i64 %24, %25
  %26 = load i64*, i64** %n_lpadding.addr, align 8
  %27 = load i64, i64* %26, align 8
  %sub20 = sub i64 %sub19, %27
  %28 = load i64*, i64** %n_rpadding.addr, align 8
  store i64 %sub20, i64* %28, align 8
  ret void
}

declare i32 @_PyUnicode_FindMaxChar(%struct._object*, i64, i64) #1

declare i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @fill_padding(%struct._PyUnicodeWriter* %writer, i64 %nchars, i32 %fill_char, i64 %n_lpadding, i64 %n_rpadding) #0 {
entry:
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %nchars.addr = alloca i64, align 8
  %fill_char.addr = alloca i32, align 4
  %n_lpadding.addr = alloca i64, align 8
  %n_rpadding.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store i64 %nchars, i64* %nchars.addr, align 8
  store i32 %fill_char, i32* %fill_char.addr, align 4
  store i64 %n_lpadding, i64* %n_lpadding.addr, align 8
  store i64 %n_rpadding, i64* %n_rpadding.addr, align 8
  %0 = load i64, i64* %n_lpadding.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos1 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %1, i32 0, i32 5
  %2 = load i64, i64* %pos1, align 8
  store i64 %2, i64* %pos, align 8
  %3 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %buffer, align 8
  %5 = load i64, i64* %pos, align 8
  %6 = load i64, i64* %n_lpadding.addr, align 8
  %7 = load i32, i32* %fill_char.addr, align 4
  call void @_PyUnicode_FastFill(%struct._object* %4, i64 %5, i64 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %n_rpadding.addr, align 8
  %tobool2 = icmp ne i64 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos4 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %9, i32 0, i32 5
  %10 = load i64, i64* %pos4, align 8
  %11 = load i64, i64* %nchars.addr, align 8
  %add = add i64 %10, %11
  %12 = load i64, i64* %n_lpadding.addr, align 8
  %add5 = add i64 %add, %12
  store i64 %add5, i64* %pos, align 8
  %13 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer6 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %buffer6, align 8
  %15 = load i64, i64* %pos, align 8
  %16 = load i64, i64* %n_rpadding.addr, align 8
  %17 = load i32, i32* %fill_char.addr, align 4
  call void @_PyUnicode_FastFill(%struct._object* %14, i64 %15, i64 %16, i32 %17)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %18 = load i64, i64* %n_lpadding.addr, align 8
  %19 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos8 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %19, i32 0, i32 5
  %20 = load i64, i64* %pos8, align 8
  %add9 = add i64 %20, %18
  store i64 %add9, i64* %pos8, align 8
  ret i32 0
}

declare void @_PyUnicode_FastCopyCharacters(%struct._object*, i64, %struct._object*, i64, i64) #1

declare void @_PyUnicode_FastFill(%struct._object*, i64, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_FromOrdinal(i32) #1

declare %struct._object* @_PyLong_Format(%struct._object*, i32) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_locale_info(i32 %type, %struct.LocaleInfo* %locale_info) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %locale_info.addr = alloca %struct.LocaleInfo*, align 8
  %locale_data = alloca %struct.lconv*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_xdecref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_xdecref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.LocaleInfo* %locale_info, %struct.LocaleInfo** %locale_info.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %entry
  %call = call %struct.lconv* @localeconv() #3
  store %struct.lconv* %call, %struct.lconv** %locale_data, align 8
  %1 = load %struct.lconv*, %struct.lconv** %locale_data, align 8
  %decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %1, i32 0, i32 0
  %2 = load i8*, i8** %decimal_point, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeLocale(i8* %2, i8* null)
  %3 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point2 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %3, i32 0, i32 0
  store %struct._object* %call1, %struct._object** %decimal_point2, align 8
  %4 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point3 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %decimal_point3, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load %struct.lconv*, %struct.lconv** %locale_data, align 8
  %thousands_sep = getelementptr inbounds %struct.lconv, %struct.lconv* %6, i32 0, i32 1
  %7 = load i8*, i8** %thousands_sep, align 8
  %call4 = call %struct._object* @PyUnicode_DecodeLocale(i8* %7, i8* null)
  %8 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep5 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %8, i32 0, i32 1
  store %struct._object* %call4, %struct._object** %thousands_sep5, align 8
  %9 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep6 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %thousands_sep6, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %11 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point9 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %11, i32 0, i32 0
  %12 = load %struct._object*, %struct._object** %decimal_point9, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %19 = load %struct.lconv*, %struct.lconv** %locale_data, align 8
  %grouping = getelementptr inbounds %struct.lconv, %struct.lconv* %19, i32 0, i32 2
  %20 = load i8*, i8** %grouping, align 8
  %21 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %grouping14 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %21, i32 0, i32 2
  store i8* %20, i8** %grouping14, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %call16 = call %struct._object* @PyUnicode_FromOrdinal(i32 46)
  %22 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point17 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %22, i32 0, i32 0
  store %struct._object* %call16, %struct._object** %decimal_point17, align 8
  %call18 = call %struct._object* @PyUnicode_FromOrdinal(i32 44)
  %23 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep19 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %23, i32 0, i32 1
  store %struct._object* %call18, %struct._object** %thousands_sep19, align 8
  %24 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point20 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %24, i32 0, i32 0
  %25 = load %struct._object*, %struct._object** %decimal_point20, align 8
  %tobool = icmp ne %struct._object* %25, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %sw.bb.15
  %26 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep21 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %26, i32 0, i32 1
  %27 = load %struct._object*, %struct._object** %thousands_sep21, align 8
  %tobool22 = icmp ne %struct._object* %27, null
  br i1 %tobool22, label %if.end.59, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false, %sw.bb.15
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %28 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point25 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %28, i32 0, i32 0
  %29 = load %struct._object*, %struct._object** %decimal_point25, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp26 = icmp ne %struct._object* %30, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp29, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %33, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %36(%struct._object* %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %38 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep43 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %38, i32 0, i32 1
  %39 = load %struct._object*, %struct._object** %thousands_sep43, align 8
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp42, align 8
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  %cmp44 = icmp ne %struct._object* %40, null
  br i1 %cmp44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %do.body.41
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp47, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %43, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %46(%struct._object* %47)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.body.41
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false
  %48 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %grouping60 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %48, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8** %grouping60, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  %call62 = call %struct._object* @PyUnicode_FromOrdinal(i32 46)
  %49 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point63 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %49, i32 0, i32 0
  store %struct._object* %call62, %struct._object** %decimal_point63, align 8
  %call64 = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  %50 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep65 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %50, i32 0, i32 1
  store %struct._object* %call64, %struct._object** %thousands_sep65, align 8
  %51 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point66 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %51, i32 0, i32 0
  %52 = load %struct._object*, %struct._object** %decimal_point66, align 8
  %tobool67 = icmp ne %struct._object* %52, null
  br i1 %tobool67, label %lor.lhs.false.68, label %if.then.71

lor.lhs.false.68:                                 ; preds = %sw.bb.61
  %53 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep69 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %thousands_sep69, align 8
  %tobool70 = icmp ne %struct._object* %54, null
  br i1 %tobool70, label %if.end.108, label %if.then.71

if.then.71:                                       ; preds = %lor.lhs.false.68, %sw.bb.61
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %55 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point74 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %55, i32 0, i32 0
  %56 = load %struct._object*, %struct._object** %decimal_point74, align 8
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp73, align 8
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp75 = icmp ne %struct._object* %57, null
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %do.body.72
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp78, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %60, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %63(%struct._object* %64)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.72
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %65 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep92 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %65, i32 0, i32 1
  %66 = load %struct._object*, %struct._object** %thousands_sep92, align 8
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp91, align 8
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  %cmp93 = icmp ne %struct._object* %67, null
  br i1 %cmp93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %do.body.90
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp96, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %70, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.95
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %73(%struct._object* %74)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %do.body.90
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %lor.lhs.false.68
  %75 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %grouping109 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %75, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @no_grouping, i32 0, i32 0), i8** %grouping109, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.108, %if.end.59, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.end.107, %do.end.58, %do.end, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i64 @calc_number_widths(%struct.NumberFieldWidths* %spec, i64 %n_prefix, i32 %sign_char, %struct._object* %number, i64 %n_start, i64 %n_end, i64 %n_remainder, i32 %has_decimal, %struct.LocaleInfo* %locale, %struct.InternalFormatSpec* %format, i32* %maxchar) #0 {
entry:
  %spec.addr = alloca %struct.NumberFieldWidths*, align 8
  %n_prefix.addr = alloca i64, align 8
  %sign_char.addr = alloca i32, align 4
  %number.addr = alloca %struct._object*, align 8
  %n_start.addr = alloca i64, align 8
  %n_end.addr = alloca i64, align 8
  %n_remainder.addr = alloca i64, align 8
  %has_decimal.addr = alloca i32, align 4
  %locale.addr = alloca %struct.LocaleInfo*, align 8
  %format.addr = alloca %struct.InternalFormatSpec*, align 8
  %maxchar.addr = alloca i32*, align 8
  %n_non_digit_non_padding = alloca i64, align 8
  %n_padding = alloca i64, align 8
  %grouping_maxchar = alloca i32, align 4
  store %struct.NumberFieldWidths* %spec, %struct.NumberFieldWidths** %spec.addr, align 8
  store i64 %n_prefix, i64* %n_prefix.addr, align 8
  store i32 %sign_char, i32* %sign_char.addr, align 4
  store %struct._object* %number, %struct._object** %number.addr, align 8
  store i64 %n_start, i64* %n_start.addr, align 8
  store i64 %n_end, i64* %n_end.addr, align 8
  store i64 %n_remainder, i64* %n_remainder.addr, align 8
  store i32 %has_decimal, i32* %has_decimal.addr, align 4
  store %struct.LocaleInfo* %locale, %struct.LocaleInfo** %locale.addr, align 8
  store %struct.InternalFormatSpec* %format, %struct.InternalFormatSpec** %format.addr, align 8
  store i32* %maxchar, i32** %maxchar.addr, align 8
  %0 = load i64, i64* %n_end.addr, align 8
  %1 = load i64, i64* %n_start.addr, align 8
  %sub = sub i64 %0, %1
  %2 = load i64, i64* %n_remainder.addr, align 8
  %sub1 = sub i64 %sub, %2
  %3 = load i32, i32* %has_decimal.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %sub2 = sub i64 %sub1, %conv
  %4 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %4, i32 0, i32 9
  store i64 %sub2, i64* %n_digits, align 8
  %5 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %5, i32 0, i32 0
  store i64 0, i64* %n_lpadding, align 8
  %6 = load i64, i64* %n_prefix.addr, align 8
  %7 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix3 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %7, i32 0, i32 1
  store i64 %6, i64* %n_prefix3, align 8
  %8 = load i32, i32* %has_decimal.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %9, i32 0, i32 0
  %10 = load %struct._object*, %struct._object** %decimal_point, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 1
  %12 = load i64, i64* %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %12, %cond.true ], [ 0, %cond.false ]
  %13 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %13, i32 0, i32 7
  store i64 %cond5, i64* %n_decimal, align 8
  %14 = load i64, i64* %n_remainder.addr, align 8
  %15 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder6 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %15, i32 0, i32 8
  store i64 %14, i64* %n_remainder6, align 8
  %16 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %16, i32 0, i32 2
  store i64 0, i64* %n_spadding, align 8
  %17 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %17, i32 0, i32 3
  store i64 0, i64* %n_rpadding, align 8
  %18 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %18, i32 0, i32 4
  store i8 0, i8* %sign, align 1
  %19 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %19, i32 0, i32 5
  store i64 0, i64* %n_sign, align 8
  %20 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %sign7 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %20, i32 0, i32 3
  %21 = load i32, i32* %sign7, align 4
  switch i32 %21, label %sw.default [
    i32 43, label %sw.bb
    i32 32, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %cond.end
  %22 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign8 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %22, i32 0, i32 5
  store i64 1, i64* %n_sign8, align 8
  %23 = load i32, i32* %sign_char.addr, align 4
  %cmp = icmp eq i32 %23, 45
  %cond10 = select i1 %cmp, i32 45, i32 43
  %conv11 = trunc i32 %cond10 to i8
  %24 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign12 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %24, i32 0, i32 4
  store i8 %conv11, i8* %sign12, align 1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end
  %25 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign14 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %25, i32 0, i32 5
  store i64 1, i64* %n_sign14, align 8
  %26 = load i32, i32* %sign_char.addr, align 4
  %cmp15 = icmp eq i32 %26, 45
  %cond17 = select i1 %cmp15, i32 45, i32 32
  %conv18 = trunc i32 %cond17 to i8
  %27 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign19 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %27, i32 0, i32 4
  store i8 %conv18, i8* %sign19, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %28 = load i32, i32* %sign_char.addr, align 4
  %cmp20 = icmp eq i32 %28, 45
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %29 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign22 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %29, i32 0, i32 5
  store i64 1, i64* %n_sign22, align 8
  %30 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign23 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %30, i32 0, i32 4
  store i8 45, i8* %sign23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.13, %sw.bb
  %31 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign24 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %31, i32 0, i32 5
  %32 = load i64, i64* %n_sign24, align 8
  %33 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix25 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %33, i32 0, i32 1
  %34 = load i64, i64* %n_prefix25, align 8
  %add = add i64 %32, %34
  %35 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal26 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %35, i32 0, i32 7
  %36 = load i64, i64* %n_decimal26, align 8
  %add27 = add i64 %add, %36
  %37 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder28 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %37, i32 0, i32 8
  %38 = load i64, i64* %n_remainder28, align 8
  %add29 = add i64 %add27, %38
  store i64 %add29, i64* %n_non_digit_non_padding, align 8
  %39 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %39, i32 0, i32 0
  %40 = load i32, i32* %fill_char, align 4
  %cmp30 = icmp eq i32 %40, 48
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %41 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %41, i32 0, i32 1
  %42 = load i32, i32* %align, align 4
  %cmp32 = icmp eq i32 %42, 61
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true
  %43 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %43, i32 0, i32 4
  %44 = load i64, i64* %width, align 8
  %45 = load i64, i64* %n_non_digit_non_padding, align 8
  %sub35 = sub i64 %44, %45
  %46 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_min_width = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %46, i32 0, i32 10
  store i64 %sub35, i64* %n_min_width, align 8
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %47 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_min_width36 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %47, i32 0, i32 10
  store i64 0, i64* %n_min_width36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %48 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits38 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %48, i32 0, i32 9
  %49 = load i64, i64* %n_digits38, align 8
  %cmp39 = icmp eq i64 %49, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.37
  %50 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %50, i32 0, i32 6
  store i64 0, i64* %n_grouped_digits, align 8
  br label %if.end.52

if.else.42:                                       ; preds = %if.end.37
  %51 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits43 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %51, i32 0, i32 9
  %52 = load i64, i64* %n_digits43, align 8
  %53 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_min_width44 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %53, i32 0, i32 10
  %54 = load i64, i64* %n_min_width44, align 8
  %55 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %grouping = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %55, i32 0, i32 2
  %56 = load i8*, i8** %grouping, align 8
  %57 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %thousands_sep = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %57, i32 0, i32 1
  %58 = load %struct._object*, %struct._object** %thousands_sep, align 8
  %call = call i64 @_PyUnicode_InsertThousandsGrouping(%struct._object* null, i64 0, i64 0, i8* null, i64 %52, i64 %54, i8* %56, %struct._object* %58, i32* %grouping_maxchar)
  %59 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits45 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %59, i32 0, i32 6
  store i64 %call, i64* %n_grouped_digits45, align 8
  %60 = load i32*, i32** %maxchar.addr, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %grouping_maxchar, align 4
  %cmp46 = icmp ugt i32 %61, %62
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.else.42
  %63 = load i32*, i32** %maxchar.addr, align 8
  %64 = load i32, i32* %63, align 4
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.else.42
  %65 = load i32, i32* %grouping_maxchar, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i32 [ %64, %cond.true.48 ], [ %65, %cond.false.49 ]
  %66 = load i32*, i32** %maxchar.addr, align 8
  store i32 %cond51, i32* %66, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.50, %if.then.41
  %67 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %width53 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %67, i32 0, i32 4
  %68 = load i64, i64* %width53, align 8
  %69 = load i64, i64* %n_non_digit_non_padding, align 8
  %70 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits54 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %70, i32 0, i32 6
  %71 = load i64, i64* %n_grouped_digits54, align 8
  %add55 = add i64 %69, %71
  %sub56 = sub i64 %68, %add55
  store i64 %sub56, i64* %n_padding, align 8
  %72 = load i64, i64* %n_padding, align 8
  %cmp57 = icmp sgt i64 %72, 0
  br i1 %cmp57, label %if.then.59, label %if.end.75

if.then.59:                                       ; preds = %if.end.52
  %73 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %align60 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %73, i32 0, i32 1
  %74 = load i32, i32* %align60, align 4
  switch i32 %74, label %sw.default.72 [
    i32 60, label %sw.bb.61
    i32 94, label %sw.bb.63
    i32 61, label %sw.bb.68
    i32 62, label %sw.bb.70
  ]

sw.bb.61:                                         ; preds = %if.then.59
  %75 = load i64, i64* %n_padding, align 8
  %76 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding62 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %76, i32 0, i32 3
  store i64 %75, i64* %n_rpadding62, align 8
  br label %sw.epilog.74

sw.bb.63:                                         ; preds = %if.then.59
  %77 = load i64, i64* %n_padding, align 8
  %div = sdiv i64 %77, 2
  %78 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding64 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %78, i32 0, i32 0
  store i64 %div, i64* %n_lpadding64, align 8
  %79 = load i64, i64* %n_padding, align 8
  %80 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding65 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %80, i32 0, i32 0
  %81 = load i64, i64* %n_lpadding65, align 8
  %sub66 = sub i64 %79, %81
  %82 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding67 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %82, i32 0, i32 3
  store i64 %sub66, i64* %n_rpadding67, align 8
  br label %sw.epilog.74

sw.bb.68:                                         ; preds = %if.then.59
  %83 = load i64, i64* %n_padding, align 8
  %84 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding69 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %84, i32 0, i32 2
  store i64 %83, i64* %n_spadding69, align 8
  br label %sw.epilog.74

sw.bb.70:                                         ; preds = %if.then.59
  %85 = load i64, i64* %n_padding, align 8
  %86 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding71 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %86, i32 0, i32 0
  store i64 %85, i64* %n_lpadding71, align 8
  br label %sw.epilog.74

sw.default.72:                                    ; preds = %if.then.59
  %87 = load i64, i64* %n_padding, align 8
  %88 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding73 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %88, i32 0, i32 0
  store i64 %87, i64* %n_lpadding73, align 8
  br label %sw.epilog.74

sw.epilog.74:                                     ; preds = %sw.default.72, %sw.bb.70, %sw.bb.68, %sw.bb.63, %sw.bb.61
  br label %if.end.75

if.end.75:                                        ; preds = %sw.epilog.74, %if.end.52
  %89 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding76 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %89, i32 0, i32 0
  %90 = load i64, i64* %n_lpadding76, align 8
  %tobool77 = icmp ne i64 %90, 0
  br i1 %tobool77, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.75
  %91 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding78 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %91, i32 0, i32 2
  %92 = load i64, i64* %n_spadding78, align 8
  %tobool79 = icmp ne i64 %92, 0
  br i1 %tobool79, label %if.then.83, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false
  %93 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding81 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %93, i32 0, i32 3
  %94 = load i64, i64* %n_rpadding81, align 8
  %tobool82 = icmp ne i64 %94, 0
  br i1 %tobool82, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false, %if.end.75
  %95 = load i32*, i32** %maxchar.addr, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char84 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %97, i32 0, i32 0
  %98 = load i32, i32* %fill_char84, align 4
  %cmp85 = icmp ugt i32 %96, %98
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %if.then.83
  %99 = load i32*, i32** %maxchar.addr, align 8
  %100 = load i32, i32* %99, align 4
  br label %cond.end.90

cond.false.88:                                    ; preds = %if.then.83
  %101 = load %struct.InternalFormatSpec*, %struct.InternalFormatSpec** %format.addr, align 8
  %fill_char89 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %101, i32 0, i32 0
  %102 = load i32, i32* %fill_char89, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.87
  %cond91 = phi i32 [ %100, %cond.true.87 ], [ %102, %cond.false.88 ]
  %103 = load i32*, i32** %maxchar.addr, align 8
  store i32 %cond91, i32* %103, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end.90, %lor.lhs.false.80
  %104 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal93 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %104, i32 0, i32 7
  %105 = load i64, i64* %n_decimal93, align 8
  %tobool94 = icmp ne i64 %105, 0
  br i1 %tobool94, label %if.then.95, label %if.end.156

if.then.95:                                       ; preds = %if.end.92
  %106 = load i32*, i32** %maxchar.addr, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point96 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %108, i32 0, i32 0
  %109 = load %struct._object*, %struct._object** %decimal_point96, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %110, i32 0, i32 3
  %111 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %111, align 4
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool97 = icmp ne i32 %bf.clear, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.then.95
  br label %cond.end.119

cond.false.99:                                    ; preds = %if.then.95
  %112 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point100 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %112, i32 0, i32 0
  %113 = load %struct._object*, %struct._object** %decimal_point100, align 8
  %114 = bitcast %struct._object* %113 to %struct.PyASCIIObject*
  %state101 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %114, i32 0, i32 3
  %115 = bitcast %struct.anon* %state101 to i32*
  %bf.load102 = load i32, i32* %115, align 4
  %bf.lshr103 = lshr i32 %bf.load102, 2
  %bf.clear104 = and i32 %bf.lshr103, 7
  %cmp105 = icmp eq i32 %bf.clear104, 1
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.false.99
  br label %cond.end.117

cond.false.108:                                   ; preds = %cond.false.99
  %116 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point109 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %116, i32 0, i32 0
  %117 = load %struct._object*, %struct._object** %decimal_point109, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyASCIIObject*
  %state110 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %118, i32 0, i32 3
  %119 = bitcast %struct.anon* %state110 to i32*
  %bf.load111 = load i32, i32* %119, align 4
  %bf.lshr112 = lshr i32 %bf.load111, 2
  %bf.clear113 = and i32 %bf.lshr112, 7
  %cmp114 = icmp eq i32 %bf.clear113, 2
  %cond116 = select i1 %cmp114, i32 65535, i32 1114111
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.108, %cond.true.107
  %cond118 = phi i32 [ 255, %cond.true.107 ], [ %cond116, %cond.false.108 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end.117, %cond.true.98
  %cond120 = phi i32 [ 127, %cond.true.98 ], [ %cond118, %cond.end.117 ]
  %cmp121 = icmp ugt i32 %107, %cond120
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.119
  %120 = load i32*, i32** %maxchar.addr, align 8
  %121 = load i32, i32* %120, align 4
  br label %cond.end.154

cond.false.124:                                   ; preds = %cond.end.119
  %122 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point125 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %122, i32 0, i32 0
  %123 = load %struct._object*, %struct._object** %decimal_point125, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyASCIIObject*
  %state126 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %124, i32 0, i32 3
  %125 = bitcast %struct.anon* %state126 to i32*
  %bf.load127 = load i32, i32* %125, align 4
  %bf.lshr128 = lshr i32 %bf.load127, 6
  %bf.clear129 = and i32 %bf.lshr128, 1
  %tobool130 = icmp ne i32 %bf.clear129, 0
  br i1 %tobool130, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %cond.false.124
  br label %cond.end.152

cond.false.132:                                   ; preds = %cond.false.124
  %126 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point133 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %126, i32 0, i32 0
  %127 = load %struct._object*, %struct._object** %decimal_point133, align 8
  %128 = bitcast %struct._object* %127 to %struct.PyASCIIObject*
  %state134 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %128, i32 0, i32 3
  %129 = bitcast %struct.anon* %state134 to i32*
  %bf.load135 = load i32, i32* %129, align 4
  %bf.lshr136 = lshr i32 %bf.load135, 2
  %bf.clear137 = and i32 %bf.lshr136, 7
  %cmp138 = icmp eq i32 %bf.clear137, 1
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %cond.false.132
  br label %cond.end.150

cond.false.141:                                   ; preds = %cond.false.132
  %130 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point142 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %130, i32 0, i32 0
  %131 = load %struct._object*, %struct._object** %decimal_point142, align 8
  %132 = bitcast %struct._object* %131 to %struct.PyASCIIObject*
  %state143 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %132, i32 0, i32 3
  %133 = bitcast %struct.anon* %state143 to i32*
  %bf.load144 = load i32, i32* %133, align 4
  %bf.lshr145 = lshr i32 %bf.load144, 2
  %bf.clear146 = and i32 %bf.lshr145, 7
  %cmp147 = icmp eq i32 %bf.clear146, 2
  %cond149 = select i1 %cmp147, i32 65535, i32 1114111
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.141, %cond.true.140
  %cond151 = phi i32 [ 255, %cond.true.140 ], [ %cond149, %cond.false.141 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.131
  %cond153 = phi i32 [ 127, %cond.true.131 ], [ %cond151, %cond.end.150 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %cond.true.123
  %cond155 = phi i32 [ %121, %cond.true.123 ], [ %cond153, %cond.end.152 ]
  %134 = load i32*, i32** %maxchar.addr, align 8
  store i32 %cond155, i32* %134, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %cond.end.154, %if.end.92
  %135 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding157 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %135, i32 0, i32 0
  %136 = load i64, i64* %n_lpadding157, align 8
  %137 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign158 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %137, i32 0, i32 5
  %138 = load i64, i64* %n_sign158, align 8
  %add159 = add i64 %136, %138
  %139 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix160 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %139, i32 0, i32 1
  %140 = load i64, i64* %n_prefix160, align 8
  %add161 = add i64 %add159, %140
  %141 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding162 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %141, i32 0, i32 2
  %142 = load i64, i64* %n_spadding162, align 8
  %add163 = add i64 %add161, %142
  %143 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits164 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %143, i32 0, i32 6
  %144 = load i64, i64* %n_grouped_digits164, align 8
  %add165 = add i64 %add163, %144
  %145 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal166 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %145, i32 0, i32 7
  %146 = load i64, i64* %n_decimal166, align 8
  %add167 = add i64 %add165, %146
  %147 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder168 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %147, i32 0, i32 8
  %148 = load i64, i64* %n_remainder168, align 8
  %add169 = add i64 %add167, %148
  %149 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding170 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %149, i32 0, i32 3
  %150 = load i64, i64* %n_rpadding170, align 8
  %add171 = add i64 %add169, %150
  ret i64 %add171
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* %spec, %struct._object* %digits, i64 %d_start, i64 %d_end, %struct._object* %prefix, i64 %p_start, i32 %fill_char, %struct.LocaleInfo* %locale, i32 %toupper) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %spec.addr = alloca %struct.NumberFieldWidths*, align 8
  %digits.addr = alloca %struct._object*, align 8
  %d_start.addr = alloca i64, align 8
  %d_end.addr = alloca i64, align 8
  %prefix.addr = alloca %struct._object*, align 8
  %p_start.addr = alloca i64, align 8
  %fill_char.addr = alloca i32, align 4
  %locale.addr = alloca %struct.LocaleInfo*, align 8
  %toupper.addr = alloca i32, align 4
  %d_pos = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  %c = alloca i32, align 4
  %pdigits = alloca i8*, align 8
  %t149 = alloca i64, align 8
  %c155 = alloca i32, align 4
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct.NumberFieldWidths* %spec, %struct.NumberFieldWidths** %spec.addr, align 8
  store %struct._object* %digits, %struct._object** %digits.addr, align 8
  store i64 %d_start, i64* %d_start.addr, align 8
  store i64 %d_end, i64* %d_end.addr, align 8
  store %struct._object* %prefix, %struct._object** %prefix.addr, align 8
  store i64 %p_start, i64* %p_start.addr, align 8
  store i32 %fill_char, i32* %fill_char.addr, align 4
  store %struct.LocaleInfo* %locale, %struct.LocaleInfo** %locale.addr, align 8
  store i32 %toupper, i32* %toupper.addr, align 4
  %0 = load i64, i64* %d_start.addr, align 8
  store i64 %0, i64* %d_pos, align 8
  %1 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %kind1 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %1, i32 0, i32 2
  %2 = load i32, i32* %kind1, align 4
  store i32 %2, i32* %kind, align 4
  %3 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data2 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %3, i32 0, i32 1
  %4 = load i8*, i8** %data2, align 8
  store i8* %4, i8** %data, align 8
  %5 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %5, i32 0, i32 0
  %6 = load i64, i64* %n_lpadding, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %buffer, align 8
  %9 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %9, i32 0, i32 5
  %10 = load i64, i64* %pos, align 8
  %11 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding3 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %11, i32 0, i32 0
  %12 = load i64, i64* %n_lpadding3, align 8
  %13 = load i32, i32* %fill_char.addr, align 4
  call void @_PyUnicode_FastFill(%struct._object* %8, i64 %10, i64 %12, i32 %13)
  %14 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_lpadding4 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %14, i32 0, i32 0
  %15 = load i64, i64* %n_lpadding4, align 8
  %16 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos5 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %16, i32 0, i32 5
  %17 = load i64, i64* %pos5, align 8
  %add = add i64 %17, %15
  store i64 %add, i64* %pos5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %18, i32 0, i32 5
  %19 = load i64, i64* %n_sign, align 8
  %cmp = icmp eq i64 %19, 1
  br i1 %cmp, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %20 = load i32, i32* %kind, align 4
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %do.body
  %21 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %21, i32 0, i32 4
  %22 = load i8, i8* %sign, align 1
  %23 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos7 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %23, i32 0, i32 5
  %24 = load i64, i64* %pos7, align 8
  %25 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %25, i64 %24
  store i8 %22, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %do.body
  %26 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign9 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %26, i32 0, i32 4
  %27 = load i8, i8* %sign9, align 1
  %conv = sext i8 %27 to i16
  %28 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos10 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %28, i32 0, i32 5
  %29 = load i64, i64* %pos10, align 8
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to i16*
  %arrayidx11 = getelementptr i16, i16* %31, i64 %29
  store i16 %conv, i16* %arrayidx11, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %32 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %sign12 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %32, i32 0, i32 4
  %33 = load i8, i8* %sign12, align 1
  %conv13 = sext i8 %33 to i32
  %34 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos14 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %34, i32 0, i32 5
  %35 = load i64, i64* %pos14, align 8
  %36 = load i8*, i8** %data, align 8
  %37 = bitcast i8* %36 to i32*
  %arrayidx15 = getelementptr i32, i32* %37, i64 %35
  store i32 %conv13, i32* %arrayidx15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %38 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos16 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %38, i32 0, i32 5
  %39 = load i64, i64* %pos16, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %pos16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.end
  %40 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %40, i32 0, i32 1
  %41 = load i64, i64* %n_prefix, align 8
  %tobool18 = icmp ne i64 %41, 0
  br i1 %tobool18, label %if.then.19, label %if.end.72

if.then.19:                                       ; preds = %if.end.17
  %42 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer20 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %42, i32 0, i32 0
  %43 = load %struct._object*, %struct._object** %buffer20, align 8
  %44 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos21 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %44, i32 0, i32 5
  %45 = load i64, i64* %pos21, align 8
  %46 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %47 = load i64, i64* %p_start.addr, align 8
  %48 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix22 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %48, i32 0, i32 1
  %49 = load i64, i64* %n_prefix22, align 8
  call void @_PyUnicode_FastCopyCharacters(%struct._object* %43, i64 %45, %struct._object* %46, i64 %47, i64 %49)
  %50 = load i32, i32* %toupper.addr, align 4
  %tobool23 = icmp ne i32 %50, 0
  br i1 %tobool23, label %if.then.24, label %if.end.68

if.then.24:                                       ; preds = %if.then.19
  store i64 0, i64* %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %51 = load i64, i64* %t, align 8
  %52 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix25 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %52, i32 0, i32 1
  %53 = load i64, i64* %n_prefix25, align 8
  %cmp26 = icmp slt i64 %51, %53
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %kind, align 4
  %cmp28 = icmp eq i32 %54, 1
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %55 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos30 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %55, i32 0, i32 5
  %56 = load i64, i64* %pos30, align 8
  %57 = load i64, i64* %t, align 8
  %add31 = add i64 %56, %57
  %58 = load i8*, i8** %data, align 8
  %arrayidx32 = getelementptr i8, i8* %58, i64 %add31
  %59 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %59 to i32
  br label %cond.end.45

cond.false:                                       ; preds = %for.body
  %60 = load i32, i32* %kind, align 4
  %cmp34 = icmp eq i32 %60, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.41

cond.true.36:                                     ; preds = %cond.false
  %61 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos37 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %61, i32 0, i32 5
  %62 = load i64, i64* %pos37, align 8
  %63 = load i64, i64* %t, align 8
  %add38 = add i64 %62, %63
  %64 = load i8*, i8** %data, align 8
  %65 = bitcast i8* %64 to i16*
  %arrayidx39 = getelementptr i16, i16* %65, i64 %add38
  %66 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %66 to i32
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false
  %67 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos42 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %67, i32 0, i32 5
  %68 = load i64, i64* %pos42, align 8
  %69 = load i64, i64* %t, align 8
  %add43 = add i64 %68, %69
  %70 = load i8*, i8** %data, align 8
  %71 = bitcast i8* %70 to i32*
  %arrayidx44 = getelementptr i32, i32* %71, i64 %add43
  %72 = load i32, i32* %arrayidx44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.36
  %cond = phi i32 [ %conv40, %cond.true.36 ], [ %72, %cond.false.41 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end, %cond.true
  %cond46 = phi i32 [ %conv33, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond46, i32* %c, align 4
  %73 = load i32, i32* %c, align 4
  %and = and i32 %73, 255
  %conv47 = trunc i32 %and to i8
  %idxprom = zext i8 %conv47 to i64
  %arrayidx48 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom
  %74 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %74 to i32
  store i32 %conv49, i32* %c, align 4
  br label %do.body.50

do.body.50:                                       ; preds = %cond.end.45
  %75 = load i32, i32* %kind, align 4
  switch i32 %75, label %sw.default.61 [
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.56
  ]

sw.bb.51:                                         ; preds = %do.body.50
  %76 = load i32, i32* %c, align 4
  %conv52 = trunc i32 %76 to i8
  %77 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos53 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %77, i32 0, i32 5
  %78 = load i64, i64* %pos53, align 8
  %79 = load i64, i64* %t, align 8
  %add54 = add i64 %78, %79
  %80 = load i8*, i8** %data, align 8
  %arrayidx55 = getelementptr i8, i8* %80, i64 %add54
  store i8 %conv52, i8* %arrayidx55, align 1
  br label %sw.epilog.65

sw.bb.56:                                         ; preds = %do.body.50
  %81 = load i32, i32* %c, align 4
  %conv57 = trunc i32 %81 to i16
  %82 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos58 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %82, i32 0, i32 5
  %83 = load i64, i64* %pos58, align 8
  %84 = load i64, i64* %t, align 8
  %add59 = add i64 %83, %84
  %85 = load i8*, i8** %data, align 8
  %86 = bitcast i8* %85 to i16*
  %arrayidx60 = getelementptr i16, i16* %86, i64 %add59
  store i16 %conv57, i16* %arrayidx60, align 2
  br label %sw.epilog.65

sw.default.61:                                    ; preds = %do.body.50
  %87 = load i32, i32* %c, align 4
  %88 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos62 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %88, i32 0, i32 5
  %89 = load i64, i64* %pos62, align 8
  %90 = load i64, i64* %t, align 8
  %add63 = add i64 %89, %90
  %91 = load i8*, i8** %data, align 8
  %92 = bitcast i8* %91 to i32*
  %arrayidx64 = getelementptr i32, i32* %92, i64 %add63
  store i32 %87, i32* %arrayidx64, align 4
  br label %sw.epilog.65

sw.epilog.65:                                     ; preds = %sw.default.61, %sw.bb.56, %sw.bb.51
  br label %do.end.66

do.end.66:                                        ; preds = %sw.epilog.65
  br label %for.inc

for.inc:                                          ; preds = %do.end.66
  %93 = load i64, i64* %t, align 8
  %inc67 = add i64 %93, 1
  store i64 %inc67, i64* %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.then.19
  %94 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_prefix69 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %94, i32 0, i32 1
  %95 = load i64, i64* %n_prefix69, align 8
  %96 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos70 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %96, i32 0, i32 5
  %97 = load i64, i64* %pos70, align 8
  %add71 = add i64 %97, %95
  store i64 %add71, i64* %pos70, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.68, %if.end.17
  %98 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %98, i32 0, i32 2
  %99 = load i64, i64* %n_spadding, align 8
  %tobool73 = icmp ne i64 %99, 0
  br i1 %tobool73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.72
  %100 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer75 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %100, i32 0, i32 0
  %101 = load %struct._object*, %struct._object** %buffer75, align 8
  %102 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos76 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %102, i32 0, i32 5
  %103 = load i64, i64* %pos76, align 8
  %104 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding77 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %104, i32 0, i32 2
  %105 = load i64, i64* %n_spadding77, align 8
  %106 = load i32, i32* %fill_char.addr, align 4
  call void @_PyUnicode_FastFill(%struct._object* %101, i64 %103, i64 %105, i32 %106)
  %107 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_spadding78 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %107, i32 0, i32 2
  %108 = load i64, i64* %n_spadding78, align 8
  %109 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos79 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %109, i32 0, i32 5
  %110 = load i64, i64* %pos79, align 8
  %add80 = add i64 %110, %108
  store i64 %add80, i64* %pos79, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.end.72
  %111 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %111, i32 0, i32 9
  %112 = load i64, i64* %n_digits, align 8
  %cmp82 = icmp ne i64 %112, 0
  br i1 %cmp82, label %if.then.84, label %if.end.146

if.then.84:                                       ; preds = %if.end.81
  %113 = load %struct._object*, %struct._object** %digits.addr, align 8
  %114 = bitcast %struct._object* %113 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %114, i32 0, i32 3
  %115 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %115, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool85 = icmp ne i32 %bf.clear, 0
  br i1 %tobool85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %if.then.84
  br label %cond.end.88

cond.false.87:                                    ; preds = %if.then.84
  %116 = load %struct._object*, %struct._object** %digits.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %116)
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.86
  %cond89 = phi i32 [ 0, %cond.true.86 ], [ %call, %cond.false.87 ]
  %tobool90 = icmp ne i32 %cond89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %cond.end.88
  store i32 -1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %cond.end.88
  %117 = load %struct._object*, %struct._object** %digits.addr, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyASCIIObject*
  %state93 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %118, i32 0, i32 3
  %119 = bitcast %struct.anon* %state93 to i32*
  %bf.load94 = load i32, i32* %119, align 4
  %bf.lshr95 = lshr i32 %bf.load94, 5
  %bf.clear96 = and i32 %bf.lshr95, 1
  %tobool97 = icmp ne i32 %bf.clear96, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.109

cond.true.98:                                     ; preds = %if.end.92
  %120 = load %struct._object*, %struct._object** %digits.addr, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyASCIIObject*
  %state99 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %121, i32 0, i32 3
  %122 = bitcast %struct.anon* %state99 to i32*
  %bf.load100 = load i32, i32* %122, align 4
  %bf.lshr101 = lshr i32 %bf.load100, 6
  %bf.clear102 = and i32 %bf.lshr101, 1
  %tobool103 = icmp ne i32 %bf.clear102, 0
  br i1 %tobool103, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.true.98
  %123 = load %struct._object*, %struct._object** %digits.addr, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %124, i64 1
  %125 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.true.98
  %126 = load %struct._object*, %struct._object** %digits.addr, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyCompactUnicodeObject*
  %add.ptr106 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %127, i64 1
  %128 = bitcast %struct.PyCompactUnicodeObject* %add.ptr106 to i8*
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i8* [ %125, %cond.true.104 ], [ %128, %cond.false.105 ]
  br label %cond.end.111

cond.false.109:                                   ; preds = %if.end.92
  %129 = load %struct._object*, %struct._object** %digits.addr, align 8
  %130 = bitcast %struct._object* %129 to %struct.PyUnicodeObject*
  %data110 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %130, i32 0, i32 1
  %any = bitcast %union.anon* %data110 to i8**
  %131 = load i8*, i8** %any, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.end.107
  %cond112 = phi i8* [ %cond108, %cond.end.107 ], [ %131, %cond.false.109 ]
  store i8* %cond112, i8** %pdigits, align 8
  %132 = load %struct._object*, %struct._object** %digits.addr, align 8
  %133 = bitcast %struct._object* %132 to %struct.PyASCIIObject*
  %state113 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %133, i32 0, i32 3
  %134 = bitcast %struct.anon* %state113 to i32*
  %bf.load114 = load i32, i32* %134, align 4
  %bf.lshr115 = lshr i32 %bf.load114, 2
  %bf.clear116 = and i32 %bf.lshr115, 7
  %135 = load i32, i32* %kind, align 4
  %cmp117 = icmp ult i32 %bf.clear116, %135
  br i1 %cmp117, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %cond.end.111
  %136 = load %struct._object*, %struct._object** %digits.addr, align 8
  %137 = load i32, i32* %kind, align 4
  %call120 = call i8* @_PyUnicode_AsKind(%struct._object* %136, i32 %137)
  store i8* %call120, i8** %pdigits, align 8
  %138 = load i8*, i8** %pdigits, align 8
  %cmp121 = icmp eq i8* %138, null
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.119
  store i32 -1, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.then.119
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %cond.end.111
  %139 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer126 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %139, i32 0, i32 0
  %140 = load %struct._object*, %struct._object** %buffer126, align 8
  %141 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos127 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %141, i32 0, i32 5
  %142 = load i64, i64* %pos127, align 8
  %143 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %143, i32 0, i32 6
  %144 = load i64, i64* %n_grouped_digits, align 8
  %145 = load i8*, i8** %pdigits, align 8
  %146 = load i32, i32* %kind, align 4
  %conv128 = zext i32 %146 to i64
  %147 = load i64, i64* %d_pos, align 8
  %mul = mul i64 %conv128, %147
  %add.ptr129 = getelementptr i8, i8* %145, i64 %mul
  %148 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits130 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %148, i32 0, i32 9
  %149 = load i64, i64* %n_digits130, align 8
  %150 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_min_width = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %150, i32 0, i32 10
  %151 = load i64, i64* %n_min_width, align 8
  %152 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %grouping = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %152, i32 0, i32 2
  %153 = load i8*, i8** %grouping, align 8
  %154 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %thousands_sep = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %154, i32 0, i32 1
  %155 = load %struct._object*, %struct._object** %thousands_sep, align 8
  %call131 = call i64 @_PyUnicode_InsertThousandsGrouping(%struct._object* %140, i64 %142, i64 %144, i8* %add.ptr129, i64 %149, i64 %151, i8* %153, %struct._object* %155, i32* null)
  store i64 %call131, i64* %r, align 8
  %156 = load i64, i64* %r, align 8
  %cmp132 = icmp eq i64 %156, -1
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.125
  store i32 -1, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.end.125
  %157 = load %struct._object*, %struct._object** %digits.addr, align 8
  %158 = bitcast %struct._object* %157 to %struct.PyASCIIObject*
  %state136 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %158, i32 0, i32 3
  %159 = bitcast %struct.anon* %state136 to i32*
  %bf.load137 = load i32, i32* %159, align 4
  %bf.lshr138 = lshr i32 %bf.load137, 2
  %bf.clear139 = and i32 %bf.lshr138, 7
  %160 = load i32, i32* %kind, align 4
  %cmp140 = icmp ult i32 %bf.clear139, %160
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.135
  %161 = load i8*, i8** %pdigits, align 8
  call void @PyMem_Free(i8* %161)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.135
  %162 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_digits144 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %162, i32 0, i32 9
  %163 = load i64, i64* %n_digits144, align 8
  %164 = load i64, i64* %d_pos, align 8
  %add145 = add i64 %164, %163
  store i64 %add145, i64* %d_pos, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.143, %if.end.81
  %165 = load i32, i32* %toupper.addr, align 4
  %tobool147 = icmp ne i32 %165, 0
  br i1 %tobool147, label %if.then.148, label %if.end.208

if.then.148:                                      ; preds = %if.end.146
  store i64 0, i64* %t149, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.205, %if.then.148
  %166 = load i64, i64* %t149, align 8
  %167 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits151 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %167, i32 0, i32 6
  %168 = load i64, i64* %n_grouped_digits151, align 8
  %cmp152 = icmp slt i64 %166, %168
  br i1 %cmp152, label %for.body.154, label %for.end.207

for.body.154:                                     ; preds = %for.cond.150
  %169 = load i32, i32* %kind, align 4
  %cmp156 = icmp eq i32 %169, 1
  br i1 %cmp156, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %for.body.154
  %170 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos159 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %170, i32 0, i32 5
  %171 = load i64, i64* %pos159, align 8
  %172 = load i64, i64* %t149, align 8
  %add160 = add i64 %171, %172
  %173 = load i8*, i8** %data, align 8
  %arrayidx161 = getelementptr i8, i8* %173, i64 %add160
  %174 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %174 to i32
  br label %cond.end.177

cond.false.163:                                   ; preds = %for.body.154
  %175 = load i32, i32* %kind, align 4
  %cmp164 = icmp eq i32 %175, 2
  br i1 %cmp164, label %cond.true.166, label %cond.false.171

cond.true.166:                                    ; preds = %cond.false.163
  %176 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos167 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %176, i32 0, i32 5
  %177 = load i64, i64* %pos167, align 8
  %178 = load i64, i64* %t149, align 8
  %add168 = add i64 %177, %178
  %179 = load i8*, i8** %data, align 8
  %180 = bitcast i8* %179 to i16*
  %arrayidx169 = getelementptr i16, i16* %180, i64 %add168
  %181 = load i16, i16* %arrayidx169, align 2
  %conv170 = zext i16 %181 to i32
  br label %cond.end.175

cond.false.171:                                   ; preds = %cond.false.163
  %182 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos172 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %182, i32 0, i32 5
  %183 = load i64, i64* %pos172, align 8
  %184 = load i64, i64* %t149, align 8
  %add173 = add i64 %183, %184
  %185 = load i8*, i8** %data, align 8
  %186 = bitcast i8* %185 to i32*
  %arrayidx174 = getelementptr i32, i32* %186, i64 %add173
  %187 = load i32, i32* %arrayidx174, align 4
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.171, %cond.true.166
  %cond176 = phi i32 [ %conv170, %cond.true.166 ], [ %187, %cond.false.171 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %cond.true.158
  %cond178 = phi i32 [ %conv162, %cond.true.158 ], [ %cond176, %cond.end.175 ]
  store i32 %cond178, i32* %c155, align 4
  %188 = load i32, i32* %c155, align 4
  %and179 = and i32 %188, 255
  %conv180 = trunc i32 %and179 to i8
  %idxprom181 = zext i8 %conv180 to i64
  %arrayidx182 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i32 0, i64 %idxprom181
  %189 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %189 to i32
  store i32 %conv183, i32* %c155, align 4
  %190 = load i32, i32* %c155, align 4
  %cmp184 = icmp ugt i32 %190, 127
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %cond.end.177
  %191 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.187:                                       ; preds = %cond.end.177
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.187
  %192 = load i32, i32* %kind, align 4
  switch i32 %192, label %sw.default.199 [
    i32 1, label %sw.bb.189
    i32 2, label %sw.bb.194
  ]

sw.bb.189:                                        ; preds = %do.body.188
  %193 = load i32, i32* %c155, align 4
  %conv190 = trunc i32 %193 to i8
  %194 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos191 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %194, i32 0, i32 5
  %195 = load i64, i64* %pos191, align 8
  %196 = load i64, i64* %t149, align 8
  %add192 = add i64 %195, %196
  %197 = load i8*, i8** %data, align 8
  %arrayidx193 = getelementptr i8, i8* %197, i64 %add192
  store i8 %conv190, i8* %arrayidx193, align 1
  br label %sw.epilog.203

sw.bb.194:                                        ; preds = %do.body.188
  %198 = load i32, i32* %c155, align 4
  %conv195 = trunc i32 %198 to i16
  %199 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos196 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %199, i32 0, i32 5
  %200 = load i64, i64* %pos196, align 8
  %201 = load i64, i64* %t149, align 8
  %add197 = add i64 %200, %201
  %202 = load i8*, i8** %data, align 8
  %203 = bitcast i8* %202 to i16*
  %arrayidx198 = getelementptr i16, i16* %203, i64 %add197
  store i16 %conv195, i16* %arrayidx198, align 2
  br label %sw.epilog.203

sw.default.199:                                   ; preds = %do.body.188
  %204 = load i32, i32* %c155, align 4
  %205 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos200 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %205, i32 0, i32 5
  %206 = load i64, i64* %pos200, align 8
  %207 = load i64, i64* %t149, align 8
  %add201 = add i64 %206, %207
  %208 = load i8*, i8** %data, align 8
  %209 = bitcast i8* %208 to i32*
  %arrayidx202 = getelementptr i32, i32* %209, i64 %add201
  store i32 %204, i32* %arrayidx202, align 4
  br label %sw.epilog.203

sw.epilog.203:                                    ; preds = %sw.default.199, %sw.bb.194, %sw.bb.189
  br label %do.end.204

do.end.204:                                       ; preds = %sw.epilog.203
  br label %for.inc.205

for.inc.205:                                      ; preds = %do.end.204
  %210 = load i64, i64* %t149, align 8
  %inc206 = add i64 %210, 1
  store i64 %inc206, i64* %t149, align 8
  br label %for.cond.150

for.end.207:                                      ; preds = %for.cond.150
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %if.end.146
  %211 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_grouped_digits209 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %211, i32 0, i32 6
  %212 = load i64, i64* %n_grouped_digits209, align 8
  %213 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos210 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %213, i32 0, i32 5
  %214 = load i64, i64* %pos210, align 8
  %add211 = add i64 %214, %212
  store i64 %add211, i64* %pos210, align 8
  %215 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %215, i32 0, i32 7
  %216 = load i64, i64* %n_decimal, align 8
  %tobool212 = icmp ne i64 %216, 0
  br i1 %tobool212, label %if.then.213, label %if.end.221

if.then.213:                                      ; preds = %if.end.208
  %217 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer214 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %217, i32 0, i32 0
  %218 = load %struct._object*, %struct._object** %buffer214, align 8
  %219 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos215 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %219, i32 0, i32 5
  %220 = load i64, i64* %pos215, align 8
  %221 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale.addr, align 8
  %decimal_point = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %221, i32 0, i32 0
  %222 = load %struct._object*, %struct._object** %decimal_point, align 8
  %223 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal216 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %223, i32 0, i32 7
  %224 = load i64, i64* %n_decimal216, align 8
  call void @_PyUnicode_FastCopyCharacters(%struct._object* %218, i64 %220, %struct._object* %222, i64 0, i64 %224)
  %225 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_decimal217 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %225, i32 0, i32 7
  %226 = load i64, i64* %n_decimal217, align 8
  %227 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos218 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %227, i32 0, i32 5
  %228 = load i64, i64* %pos218, align 8
  %add219 = add i64 %228, %226
  store i64 %add219, i64* %pos218, align 8
  %229 = load i64, i64* %d_pos, align 8
  %add220 = add i64 %229, 1
  store i64 %add220, i64* %d_pos, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.213, %if.end.208
  %230 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %230, i32 0, i32 8
  %231 = load i64, i64* %n_remainder, align 8
  %tobool222 = icmp ne i64 %231, 0
  br i1 %tobool222, label %if.then.223, label %if.end.230

if.then.223:                                      ; preds = %if.end.221
  %232 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer224 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %232, i32 0, i32 0
  %233 = load %struct._object*, %struct._object** %buffer224, align 8
  %234 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos225 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %234, i32 0, i32 5
  %235 = load i64, i64* %pos225, align 8
  %236 = load %struct._object*, %struct._object** %digits.addr, align 8
  %237 = load i64, i64* %d_pos, align 8
  %238 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder226 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %238, i32 0, i32 8
  %239 = load i64, i64* %n_remainder226, align 8
  call void @_PyUnicode_FastCopyCharacters(%struct._object* %233, i64 %235, %struct._object* %236, i64 %237, i64 %239)
  %240 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_remainder227 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %240, i32 0, i32 8
  %241 = load i64, i64* %n_remainder227, align 8
  %242 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos228 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %242, i32 0, i32 5
  %243 = load i64, i64* %pos228, align 8
  %add229 = add i64 %243, %241
  store i64 %add229, i64* %pos228, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.223, %if.end.221
  %244 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %244, i32 0, i32 3
  %245 = load i64, i64* %n_rpadding, align 8
  %tobool231 = icmp ne i64 %245, 0
  br i1 %tobool231, label %if.then.232, label %if.end.239

if.then.232:                                      ; preds = %if.end.230
  %246 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %buffer233 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %246, i32 0, i32 0
  %247 = load %struct._object*, %struct._object** %buffer233, align 8
  %248 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos234 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %248, i32 0, i32 5
  %249 = load i64, i64* %pos234, align 8
  %250 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding235 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %250, i32 0, i32 3
  %251 = load i64, i64* %n_rpadding235, align 8
  %252 = load i32, i32* %fill_char.addr, align 4
  call void @_PyUnicode_FastFill(%struct._object* %247, i64 %249, i64 %251, i32 %252)
  %253 = load %struct.NumberFieldWidths*, %struct.NumberFieldWidths** %spec.addr, align 8
  %n_rpadding236 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %253, i32 0, i32 3
  %254 = load i64, i64* %n_rpadding236, align 8
  %255 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos237 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %255, i32 0, i32 5
  %256 = load i64, i64* %pos237, align 8
  %add238 = add i64 %256, %254
  store i64 %add238, i64* %pos237, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.232, %if.end.230
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.239, %if.then.186, %if.then.134, %if.then.123, %if.then.91
  %257 = load i32, i32* %retval
  ret i32 %257
}

; Function Attrs: nounwind uwtable
define internal void @free_locale_info(%struct.LocaleInfo* %locale_info) #0 {
entry:
  %locale_info.addr = alloca %struct.LocaleInfo*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.LocaleInfo* %locale_info, %struct.LocaleInfo** %locale_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %decimal_point = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %0, i32 0, i32 0
  %1 = load %struct._object*, %struct._object** %decimal_point, align 8
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
  %10 = load %struct.LocaleInfo*, %struct.LocaleInfo** %locale_info.addr, align 8
  %thousands_sep = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %thousands_sep, align 8
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
  ret void
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #4

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #1

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i64 @_PyUnicode_InsertThousandsGrouping(%struct._object*, i64, i64, i8*, i64, i64, i8*, %struct._object*, i32*) #1

declare i8* @_PyUnicode_AsKind(%struct._object*, i32) #1

declare void @PyMem_Free(i8*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter*, i8*, i64) #1

declare %struct._object* @_PyUnicode_FromASCII(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @parse_number(%struct._object* %s, i64 %pos, i64 %end, i64* %n_remainder, i32* %has_decimal) #0 {
entry:
  %s.addr = alloca %struct._object*, align 8
  %pos.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %n_remainder.addr = alloca i64*, align 8
  %has_decimal.addr = alloca i32*, align 8
  %remainder = alloca i64, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64* %n_remainder, i64** %n_remainder.addr, align 8
  store i32* %has_decimal, i32** %has_decimal.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load i64, i64* %end.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct._object*, %struct._object** %s.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 3
  %4 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %4, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp1 = icmp eq i32 %bf.clear, 1
  br i1 %cmp1, label %cond.true, label %cond.false.17

cond.true:                                        ; preds = %land.rhs
  %5 = load i64, i64* %pos.addr, align 8
  %6 = load %struct._object*, %struct._object** %s.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*
  %state2 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3
  %8 = bitcast %struct.anon* %state2 to i32*
  %bf.load3 = load i32, i32* %8, align 4
  %bf.lshr4 = lshr i32 %bf.load3, 5
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tobool = icmp ne i32 %bf.clear5, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.14

cond.true.6:                                      ; preds = %cond.true
  %9 = load %struct._object*, %struct._object** %s.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3
  %11 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %11, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false

cond.true.12:                                     ; preds = %cond.true.6
  %12 = load %struct._object*, %struct._object** %s.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i64 1
  %14 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.6
  %15 = load %struct._object*, %struct._object** %s.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyCompactUnicodeObject*
  %add.ptr13 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %16, i64 1
  %17 = bitcast %struct.PyCompactUnicodeObject* %add.ptr13 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.12
  %cond = phi i8* [ %14, %cond.true.12 ], [ %17, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.true
  %18 = load %struct._object*, %struct._object** %s.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %19, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %20 = load i8*, i8** %any, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi i8* [ %cond, %cond.end ], [ %20, %cond.false.14 ]
  %arrayidx = getelementptr i8, i8* %cond16, i64 %5
  %21 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %21 to i32
  br label %cond.end.75

cond.false.17:                                    ; preds = %land.rhs
  %22 = load %struct._object*, %struct._object** %s.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %state18 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3
  %24 = bitcast %struct.anon* %state18 to i32*
  %bf.load19 = load i32, i32* %24, align 4
  %bf.lshr20 = lshr i32 %bf.load19, 2
  %bf.clear21 = and i32 %bf.lshr20, 7
  %cmp22 = icmp eq i32 %bf.clear21, 2
  br i1 %cmp22, label %cond.true.24, label %cond.false.49

cond.true.24:                                     ; preds = %cond.false.17
  %25 = load i64, i64* %pos.addr, align 8
  %26 = load %struct._object*, %struct._object** %s.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %state25 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 3
  %28 = bitcast %struct.anon* %state25 to i32*
  %bf.load26 = load i32, i32* %28, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 5
  %bf.clear28 = and i32 %bf.lshr27, 1
  %tobool29 = icmp ne i32 %bf.clear28, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.42

cond.true.30:                                     ; preds = %cond.true.24
  %29 = load %struct._object*, %struct._object** %s.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyASCIIObject*
  %state31 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %30, i32 0, i32 3
  %31 = bitcast %struct.anon* %state31 to i32*
  %bf.load32 = load i32, i32* %31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 6
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.true.30
  %32 = load %struct._object*, %struct._object** %s.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyASCIIObject*
  %add.ptr37 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %33, i64 1
  %34 = bitcast %struct.PyASCIIObject* %add.ptr37 to i8*
  br label %cond.end.40

cond.false.38:                                    ; preds = %cond.true.30
  %35 = load %struct._object*, %struct._object** %s.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyCompactUnicodeObject*
  %add.ptr39 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %36, i64 1
  %37 = bitcast %struct.PyCompactUnicodeObject* %add.ptr39 to i8*
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.36
  %cond41 = phi i8* [ %34, %cond.true.36 ], [ %37, %cond.false.38 ]
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.true.24
  %38 = load %struct._object*, %struct._object** %s.addr, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyUnicodeObject*
  %data43 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %39, i32 0, i32 1
  %any44 = bitcast %union.anon* %data43 to i8**
  %40 = load i8*, i8** %any44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.end.40
  %cond46 = phi i8* [ %cond41, %cond.end.40 ], [ %40, %cond.false.42 ]
  %41 = bitcast i8* %cond46 to i16*
  %arrayidx47 = getelementptr i16, i16* %41, i64 %25
  %42 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %42 to i32
  br label %cond.end.73

cond.false.49:                                    ; preds = %cond.false.17
  %43 = load i64, i64* %pos.addr, align 8
  %44 = load %struct._object*, %struct._object** %s.addr, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state50 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon* %state50 to i32*
  %bf.load51 = load i32, i32* %46, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 5
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.67

cond.true.55:                                     ; preds = %cond.false.49
  %47 = load %struct._object*, %struct._object** %s.addr, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %state56 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3
  %49 = bitcast %struct.anon* %state56 to i32*
  %bf.load57 = load i32, i32* %49, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 6
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.true.55
  %50 = load %struct._object*, %struct._object** %s.addr, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %add.ptr62 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i64 1
  %52 = bitcast %struct.PyASCIIObject* %add.ptr62 to i8*
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.true.55
  %53 = load %struct._object*, %struct._object** %s.addr, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyCompactUnicodeObject*
  %add.ptr64 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %54, i64 1
  %55 = bitcast %struct.PyCompactUnicodeObject* %add.ptr64 to i8*
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi i8* [ %52, %cond.true.61 ], [ %55, %cond.false.63 ]
  br label %cond.end.70

cond.false.67:                                    ; preds = %cond.false.49
  %56 = load %struct._object*, %struct._object** %s.addr, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyUnicodeObject*
  %data68 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %57, i32 0, i32 1
  %any69 = bitcast %union.anon* %data68 to i8**
  %58 = load i8*, i8** %any69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.end.65
  %cond71 = phi i8* [ %cond66, %cond.end.65 ], [ %58, %cond.false.67 ]
  %59 = bitcast i8* %cond71 to i32*
  %arrayidx72 = getelementptr i32, i32* %59, i64 %43
  %60 = load i32, i32* %arrayidx72, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.70, %cond.end.45
  %cond74 = phi i32 [ %conv48, %cond.end.45 ], [ %60, %cond.end.70 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.end.15
  %cond76 = phi i32 [ %conv, %cond.end.15 ], [ %cond74, %cond.end.73 ]
  %and = and i32 %cond76, 255
  %conv77 = trunc i32 %and to i8
  %idxprom = zext i8 %conv77 to i64
  %arrayidx78 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %61 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %61, 4
  %tobool80 = icmp ne i32 %and79, 0
  br label %land.end

land.end:                                         ; preds = %cond.end.75, %while.cond
  %62 = phi i1 [ false, %while.cond ], [ %tobool80, %cond.end.75 ]
  br i1 %62, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %63 = load i64, i64* %pos.addr, align 8
  %inc = add i64 %63, 1
  store i64 %inc, i64* %pos.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %64 = load i64, i64* %pos.addr, align 8
  store i64 %64, i64* %remainder, align 8
  %65 = load i64, i64* %pos.addr, align 8
  %66 = load i64, i64* %end.addr, align 8
  %cmp81 = icmp slt i64 %65, %66
  br i1 %cmp81, label %land.rhs.83, label %land.end.177

land.rhs.83:                                      ; preds = %while.end
  %67 = load %struct._object*, %struct._object** %s.addr, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %state84 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 3
  %69 = bitcast %struct.anon* %state84 to i32*
  %bf.load85 = load i32, i32* %69, align 4
  %bf.lshr86 = lshr i32 %bf.load85, 2
  %bf.clear87 = and i32 %bf.lshr86, 7
  %cmp88 = icmp eq i32 %bf.clear87, 1
  br i1 %cmp88, label %cond.true.90, label %cond.false.115

cond.true.90:                                     ; preds = %land.rhs.83
  %70 = load i64, i64* %remainder, align 8
  %71 = load %struct._object*, %struct._object** %s.addr, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyASCIIObject*
  %state91 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %72, i32 0, i32 3
  %73 = bitcast %struct.anon* %state91 to i32*
  %bf.load92 = load i32, i32* %73, align 4
  %bf.lshr93 = lshr i32 %bf.load92, 5
  %bf.clear94 = and i32 %bf.lshr93, 1
  %tobool95 = icmp ne i32 %bf.clear94, 0
  br i1 %tobool95, label %cond.true.96, label %cond.false.108

cond.true.96:                                     ; preds = %cond.true.90
  %74 = load %struct._object*, %struct._object** %s.addr, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyASCIIObject*
  %state97 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %75, i32 0, i32 3
  %76 = bitcast %struct.anon* %state97 to i32*
  %bf.load98 = load i32, i32* %76, align 4
  %bf.lshr99 = lshr i32 %bf.load98, 6
  %bf.clear100 = and i32 %bf.lshr99, 1
  %tobool101 = icmp ne i32 %bf.clear100, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.104

cond.true.102:                                    ; preds = %cond.true.96
  %77 = load %struct._object*, %struct._object** %s.addr, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyASCIIObject*
  %add.ptr103 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %78, i64 1
  %79 = bitcast %struct.PyASCIIObject* %add.ptr103 to i8*
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.true.96
  %80 = load %struct._object*, %struct._object** %s.addr, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyCompactUnicodeObject*
  %add.ptr105 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %81, i64 1
  %82 = bitcast %struct.PyCompactUnicodeObject* %add.ptr105 to i8*
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.102
  %cond107 = phi i8* [ %79, %cond.true.102 ], [ %82, %cond.false.104 ]
  br label %cond.end.111

cond.false.108:                                   ; preds = %cond.true.90
  %83 = load %struct._object*, %struct._object** %s.addr, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyUnicodeObject*
  %data109 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %84, i32 0, i32 1
  %any110 = bitcast %union.anon* %data109 to i8**
  %85 = load i8*, i8** %any110, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.end.106
  %cond112 = phi i8* [ %cond107, %cond.end.106 ], [ %85, %cond.false.108 ]
  %arrayidx113 = getelementptr i8, i8* %cond112, i64 %70
  %86 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %86 to i32
  br label %cond.end.173

cond.false.115:                                   ; preds = %land.rhs.83
  %87 = load %struct._object*, %struct._object** %s.addr, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyASCIIObject*
  %state116 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %88, i32 0, i32 3
  %89 = bitcast %struct.anon* %state116 to i32*
  %bf.load117 = load i32, i32* %89, align 4
  %bf.lshr118 = lshr i32 %bf.load117, 2
  %bf.clear119 = and i32 %bf.lshr118, 7
  %cmp120 = icmp eq i32 %bf.clear119, 2
  br i1 %cmp120, label %cond.true.122, label %cond.false.147

cond.true.122:                                    ; preds = %cond.false.115
  %90 = load i64, i64* %remainder, align 8
  %91 = load %struct._object*, %struct._object** %s.addr, align 8
  %92 = bitcast %struct._object* %91 to %struct.PyASCIIObject*
  %state123 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %92, i32 0, i32 3
  %93 = bitcast %struct.anon* %state123 to i32*
  %bf.load124 = load i32, i32* %93, align 4
  %bf.lshr125 = lshr i32 %bf.load124, 5
  %bf.clear126 = and i32 %bf.lshr125, 1
  %tobool127 = icmp ne i32 %bf.clear126, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.140

cond.true.128:                                    ; preds = %cond.true.122
  %94 = load %struct._object*, %struct._object** %s.addr, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyASCIIObject*
  %state129 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %95, i32 0, i32 3
  %96 = bitcast %struct.anon* %state129 to i32*
  %bf.load130 = load i32, i32* %96, align 4
  %bf.lshr131 = lshr i32 %bf.load130, 6
  %bf.clear132 = and i32 %bf.lshr131, 1
  %tobool133 = icmp ne i32 %bf.clear132, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.136

cond.true.134:                                    ; preds = %cond.true.128
  %97 = load %struct._object*, %struct._object** %s.addr, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyASCIIObject*
  %add.ptr135 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %98, i64 1
  %99 = bitcast %struct.PyASCIIObject* %add.ptr135 to i8*
  br label %cond.end.138

cond.false.136:                                   ; preds = %cond.true.128
  %100 = load %struct._object*, %struct._object** %s.addr, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyCompactUnicodeObject*
  %add.ptr137 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %101, i64 1
  %102 = bitcast %struct.PyCompactUnicodeObject* %add.ptr137 to i8*
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.134
  %cond139 = phi i8* [ %99, %cond.true.134 ], [ %102, %cond.false.136 ]
  br label %cond.end.143

cond.false.140:                                   ; preds = %cond.true.122
  %103 = load %struct._object*, %struct._object** %s.addr, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyUnicodeObject*
  %data141 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %104, i32 0, i32 1
  %any142 = bitcast %union.anon* %data141 to i8**
  %105 = load i8*, i8** %any142, align 8
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.140, %cond.end.138
  %cond144 = phi i8* [ %cond139, %cond.end.138 ], [ %105, %cond.false.140 ]
  %106 = bitcast i8* %cond144 to i16*
  %arrayidx145 = getelementptr i16, i16* %106, i64 %90
  %107 = load i16, i16* %arrayidx145, align 2
  %conv146 = zext i16 %107 to i32
  br label %cond.end.171

cond.false.147:                                   ; preds = %cond.false.115
  %108 = load i64, i64* %remainder, align 8
  %109 = load %struct._object*, %struct._object** %s.addr, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyASCIIObject*
  %state148 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %110, i32 0, i32 3
  %111 = bitcast %struct.anon* %state148 to i32*
  %bf.load149 = load i32, i32* %111, align 4
  %bf.lshr150 = lshr i32 %bf.load149, 5
  %bf.clear151 = and i32 %bf.lshr150, 1
  %tobool152 = icmp ne i32 %bf.clear151, 0
  br i1 %tobool152, label %cond.true.153, label %cond.false.165

cond.true.153:                                    ; preds = %cond.false.147
  %112 = load %struct._object*, %struct._object** %s.addr, align 8
  %113 = bitcast %struct._object* %112 to %struct.PyASCIIObject*
  %state154 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %113, i32 0, i32 3
  %114 = bitcast %struct.anon* %state154 to i32*
  %bf.load155 = load i32, i32* %114, align 4
  %bf.lshr156 = lshr i32 %bf.load155, 6
  %bf.clear157 = and i32 %bf.lshr156, 1
  %tobool158 = icmp ne i32 %bf.clear157, 0
  br i1 %tobool158, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %cond.true.153
  %115 = load %struct._object*, %struct._object** %s.addr, align 8
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*
  %add.ptr160 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i64 1
  %117 = bitcast %struct.PyASCIIObject* %add.ptr160 to i8*
  br label %cond.end.163

cond.false.161:                                   ; preds = %cond.true.153
  %118 = load %struct._object*, %struct._object** %s.addr, align 8
  %119 = bitcast %struct._object* %118 to %struct.PyCompactUnicodeObject*
  %add.ptr162 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %119, i64 1
  %120 = bitcast %struct.PyCompactUnicodeObject* %add.ptr162 to i8*
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.159
  %cond164 = phi i8* [ %117, %cond.true.159 ], [ %120, %cond.false.161 ]
  br label %cond.end.168

cond.false.165:                                   ; preds = %cond.false.147
  %121 = load %struct._object*, %struct._object** %s.addr, align 8
  %122 = bitcast %struct._object* %121 to %struct.PyUnicodeObject*
  %data166 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %122, i32 0, i32 1
  %any167 = bitcast %union.anon* %data166 to i8**
  %123 = load i8*, i8** %any167, align 8
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.165, %cond.end.163
  %cond169 = phi i8* [ %cond164, %cond.end.163 ], [ %123, %cond.false.165 ]
  %124 = bitcast i8* %cond169 to i32*
  %arrayidx170 = getelementptr i32, i32* %124, i64 %108
  %125 = load i32, i32* %arrayidx170, align 4
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.168, %cond.end.143
  %cond172 = phi i32 [ %conv146, %cond.end.143 ], [ %125, %cond.end.168 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end.171, %cond.end.111
  %cond174 = phi i32 [ %conv114, %cond.end.111 ], [ %cond172, %cond.end.171 ]
  %cmp175 = icmp eq i32 %cond174, 46
  br label %land.end.177

land.end.177:                                     ; preds = %cond.end.173, %while.end
  %126 = phi i1 [ false, %while.end ], [ %cmp175, %cond.end.173 ]
  %land.ext = zext i1 %126 to i32
  %127 = load i32*, i32** %has_decimal.addr, align 8
  store i32 %land.ext, i32* %127, align 4
  %128 = load i32*, i32** %has_decimal.addr, align 8
  %129 = load i32, i32* %128, align 4
  %tobool178 = icmp ne i32 %129, 0
  br i1 %tobool178, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.177
  %130 = load i64, i64* %remainder, align 8
  %inc179 = add i64 %130, 1
  store i64 %inc179, i64* %remainder, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.177
  %131 = load i64, i64* %end.addr, align 8
  %132 = load i64, i64* %remainder, align 8
  %sub = sub i64 %131, %132
  %133 = load i64*, i64** %n_remainder.addr, align 8
  store i64 %sub, i64* %133, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare double @PyComplex_RealAsDouble(%struct._object*) #1

declare double @PyComplex_ImagAsDouble(%struct._object*) #1

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
