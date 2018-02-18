; ModuleID = './future.bc'
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
%struct.PyFutureFeatures = type { i32, i32 }
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct._stmt = type { i32, %union.anon.33, i32, i32 }
%union.anon.33 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct._object*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct._expr = type { i32, %union.anon.2, i32, i32 }
%union.anon.2 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr* }
%struct.anon.51 = type { %struct._expr* }
%struct.anon.48 = type { %struct._object*, %struct.asdl_seq*, i32 }
%struct._alias = type { %struct._object*, %struct._object* }

@.str = private unnamed_addr constant [11 x i8] c"__future__\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"from __future__ imports must occur at the beginning of the file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"nested_scopes\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"generators\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"division\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"absolute_import\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"with_statement\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"print_function\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"unicode_literals\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"barry_as_FLUFL\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"braces\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"not a chance\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"future feature %.100s is not defined\00", align 1

; Function Attrs: nounwind uwtable
define %struct.PyFutureFeatures* @PyFuture_FromASTObject(%struct._mod* %mod, %struct._object* %filename) #0 {
entry:
  %retval = alloca %struct.PyFutureFeatures*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %ff = alloca %struct.PyFutureFeatures*, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %call = call i8* @PyObject_Malloc(i64 8)
  %0 = bitcast i8* %call to %struct.PyFutureFeatures*
  store %struct.PyFutureFeatures* %0, %struct.PyFutureFeatures** %ff, align 8
  %1 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  %cmp = icmp eq %struct.PyFutureFeatures* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct.PyFutureFeatures* null, %struct.PyFutureFeatures** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  %ff_features = getelementptr inbounds %struct.PyFutureFeatures, %struct.PyFutureFeatures* %2, i32 0, i32 0
  store i32 0, i32* %ff_features, align 4
  %3 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  %ff_lineno = getelementptr inbounds %struct.PyFutureFeatures, %struct.PyFutureFeatures* %3, i32 0, i32 1
  store i32 -1, i32* %ff_lineno, align 4
  %4 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  %5 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %6 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call2 = call i32 @future_parse(%struct.PyFutureFeatures* %4, %struct._mod* %5, %struct._object* %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  %8 = bitcast %struct.PyFutureFeatures* %7 to i8*
  call void @PyObject_Free(i8* %8)
  store %struct.PyFutureFeatures* null, %struct.PyFutureFeatures** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  store %struct.PyFutureFeatures* %9, %struct.PyFutureFeatures** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %10 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %retval
  ret %struct.PyFutureFeatures* %10
}

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define internal i32 @future_parse(%struct.PyFutureFeatures* %ff, %struct._mod* %mod, %struct._object* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.PyFutureFeatures*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %done = alloca i32, align 4
  %prev_line = alloca i32, align 4
  %first = alloca %struct._stmt*, align 8
  %s = alloca %struct._stmt*, align 8
  %modname = alloca %struct._object*, align 8
  store %struct.PyFutureFeatures* %ff, %struct.PyFutureFeatures** %ff.addr, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 0, i32* %done, align 4
  store i32 0, i32* %prev_line, align 4
  %0 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %kind = getelementptr inbounds %struct._mod, %struct._mod* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %kind1 = getelementptr inbounds %struct._mod, %struct._mod* %2, i32 0, i32 0
  %3 = load i32, i32* %kind1, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v = getelementptr inbounds %struct._mod, %struct._mod* %4, i32 0, i32 1
  %Module = bitcast %union.anon* %v to %struct.anon*
  %body = getelementptr inbounds %struct.anon, %struct.anon* %Module, i32 0, i32 0
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  %cmp3 = icmp eq %struct.asdl_seq* %5, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v4 = getelementptr inbounds %struct._mod, %struct._mod* %6, i32 0, i32 1
  %Module5 = bitcast %union.anon* %v4 to %struct.anon*
  %body6 = getelementptr inbounds %struct.anon, %struct.anon* %Module5, i32 0, i32 0
  %7 = load %struct.asdl_seq*, %struct.asdl_seq** %body6, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %7, i32 0, i32 0
  %8 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %8, %cond.false ]
  %cmp7 = icmp eq i64 %cond, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %cond.end
  store i32 0, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v10 = getelementptr inbounds %struct._mod, %struct._mod* %10, i32 0, i32 1
  %Module11 = bitcast %union.anon* %v10 to %struct.anon*
  %body12 = getelementptr inbounds %struct.anon, %struct.anon* %Module11, i32 0, i32 0
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %body12, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = bitcast i8* %12 to %struct._stmt*
  store %struct._stmt* %13, %struct._stmt** %first, align 8
  %14 = load %struct._stmt*, %struct._stmt** %first, align 8
  %kind13 = getelementptr inbounds %struct._stmt, %struct._stmt* %14, i32 0, i32 0
  %15 = load i32, i32* %kind13, align 4
  %cmp14 = icmp eq i32 %15, 18
  br i1 %cmp14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.9
  %16 = load %struct._stmt*, %struct._stmt** %first, align 8
  %v15 = getelementptr inbounds %struct._stmt, %struct._stmt* %16, i32 0, i32 1
  %Expr = bitcast %union.anon.33* %v15 to %struct.anon.51*
  %value = getelementptr inbounds %struct.anon.51, %struct.anon.51* %Expr, i32 0, i32 0
  %17 = load %struct._expr*, %struct._expr** %value, align 8
  %kind16 = getelementptr inbounds %struct._expr, %struct._expr* %17, i32 0, i32 0
  %18 = load i32, i32* %kind16, align 4
  %cmp17 = icmp eq i32 %18, 17
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %21 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v20 = getelementptr inbounds %struct._mod, %struct._mod* %21, i32 0, i32 1
  %Module21 = bitcast %union.anon* %v20 to %struct.anon*
  %body22 = getelementptr inbounds %struct.anon, %struct.anon* %Module21, i32 0, i32 0
  %22 = load %struct.asdl_seq*, %struct.asdl_seq** %body22, align 8
  %cmp23 = icmp eq %struct.asdl_seq* %22, null
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %for.cond
  br label %cond.end.31

cond.false.26:                                    ; preds = %for.cond
  %23 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v27 = getelementptr inbounds %struct._mod, %struct._mod* %23, i32 0, i32 1
  %Module28 = bitcast %union.anon* %v27 to %struct.anon*
  %body29 = getelementptr inbounds %struct.anon, %struct.anon* %Module28, i32 0, i32 0
  %24 = load %struct.asdl_seq*, %struct.asdl_seq** %body29, align 8
  %size30 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %24, i32 0, i32 0
  %25 = load i64, i64* %size30, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.26, %cond.true.25
  %cond32 = phi i64 [ 0, %cond.true.25 ], [ %25, %cond.false.26 ]
  %cmp33 = icmp slt i64 %conv, %cond32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.31
  %26 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v36 = getelementptr inbounds %struct._mod, %struct._mod* %27, i32 0, i32 1
  %Module37 = bitcast %union.anon* %v36 to %struct.anon*
  %body38 = getelementptr inbounds %struct.anon, %struct.anon* %Module37, i32 0, i32 0
  %28 = load %struct.asdl_seq*, %struct.asdl_seq** %body38, align 8
  %elements39 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %28, i32 0, i32 1
  %arrayidx40 = getelementptr [1 x i8*], [1 x i8*]* %elements39, i32 0, i64 %idxprom35
  %29 = load i8*, i8** %arrayidx40, align 8
  %30 = bitcast i8* %29 to %struct._stmt*
  store %struct._stmt* %30, %struct._stmt** %s, align 8
  %31 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %for.body
  %32 = load %struct._stmt*, %struct._stmt** %s, align 8
  %lineno = getelementptr inbounds %struct._stmt, %struct._stmt* %32, i32 0, i32 2
  %33 = load i32, i32* %lineno, align 4
  %34 = load i32, i32* %prev_line, align 4
  %cmp42 = icmp sgt i32 %33, %34
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.41, %for.body
  %35 = load %struct._stmt*, %struct._stmt** %s, align 8
  %lineno46 = getelementptr inbounds %struct._stmt, %struct._stmt* %35, i32 0, i32 2
  %36 = load i32, i32* %lineno46, align 4
  store i32 %36, i32* %prev_line, align 4
  %37 = load %struct._stmt*, %struct._stmt** %s, align 8
  %kind47 = getelementptr inbounds %struct._stmt, %struct._stmt* %37, i32 0, i32 0
  %38 = load i32, i32* %kind47, align 4
  %cmp48 = icmp eq i32 %38, 15
  br i1 %cmp48, label %if.then.50, label %if.else.66

if.then.50:                                       ; preds = %if.end.45
  %39 = load %struct._stmt*, %struct._stmt** %s, align 8
  %v51 = getelementptr inbounds %struct._stmt, %struct._stmt* %39, i32 0, i32 1
  %ImportFrom = bitcast %union.anon.33* %v51 to %struct.anon.48*
  %module = getelementptr inbounds %struct.anon.48, %struct.anon.48* %ImportFrom, i32 0, i32 0
  %40 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %40, %struct._object** %modname, align 8
  %41 = load %struct._object*, %struct._object** %modname, align 8
  %tobool52 = icmp ne %struct._object* %41, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %if.then.50
  %42 = load %struct._object*, %struct._object** %modname, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call, 0
  br i1 %tobool54, label %if.else, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %43 = load i32, i32* %done, align 4
  %tobool56 = icmp ne i32 %43, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.55
  %44 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0))
  %45 = load %struct._object*, %struct._object** %filename.addr, align 8
  %46 = load %struct._stmt*, %struct._stmt** %s, align 8
  %lineno58 = getelementptr inbounds %struct._stmt, %struct._stmt* %46, i32 0, i32 2
  %47 = load i32, i32* %lineno58, align 4
  %48 = load %struct._stmt*, %struct._stmt** %s, align 8
  %col_offset = getelementptr inbounds %struct._stmt, %struct._stmt* %48, i32 0, i32 3
  %49 = load i32, i32* %col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %45, i32 %47, i32 %49)
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.55
  %50 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff.addr, align 8
  %51 = load %struct._stmt*, %struct._stmt** %s, align 8
  %52 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call60 = call i32 @future_check_features(%struct.PyFutureFeatures* %50, %struct._stmt* %51, %struct._object* %52)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.59
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %53 = load %struct._stmt*, %struct._stmt** %s, align 8
  %lineno64 = getelementptr inbounds %struct._stmt, %struct._stmt* %53, i32 0, i32 2
  %54 = load i32, i32* %lineno64, align 4
  %55 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff.addr, align 8
  %ff_lineno = getelementptr inbounds %struct.PyFutureFeatures, %struct.PyFutureFeatures* %55, i32 0, i32 1
  store i32 %54, i32* %ff_lineno, align 4
  br label %if.end.65

if.else:                                          ; preds = %land.lhs.true.53, %if.then.50
  store i32 1, i32* %done, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.end.63
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.45
  store i32 1, i32* %done, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.end.65
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %56 = load i32, i32* %i, align 4
  %inc68 = add i32 %56, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end.31
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.62, %if.then.57, %if.then.44, %if.then.8, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.PyFutureFeatures* @PyFuture_FromAST(%struct._mod* %mod, i8* %filename_str) #0 {
entry:
  %retval = alloca %struct.PyFutureFeatures*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename_str.addr = alloca i8*, align 8
  %ff = alloca %struct.PyFutureFeatures*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.PyFutureFeatures* null, %struct.PyFutureFeatures** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %call1 = call %struct.PyFutureFeatures* @PyFuture_FromASTObject(%struct._mod* %2, %struct._object* %3)
  store %struct.PyFutureFeatures* %call1, %struct.PyFutureFeatures** %ff, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %filename, align 8
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
  %11 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff, align 8
  store %struct.PyFutureFeatures* %11, %struct.PyFutureFeatures** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %retval
  ret %struct.PyFutureFeatures* %12
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyErr_SyntaxLocationObject(%struct._object*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @future_check_features(%struct.PyFutureFeatures* %ff, %struct._stmt* %s, %struct._object* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.PyFutureFeatures*, align 8
  %s.addr = alloca %struct._stmt*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %names = alloca %struct.asdl_seq*, align 8
  %name = alloca %struct._alias*, align 8
  %feature = alloca i8*, align 8
  store %struct.PyFutureFeatures* %ff, %struct.PyFutureFeatures** %ff.addr, align 8
  store %struct._stmt* %s, %struct._stmt** %s.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %0 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v = getelementptr inbounds %struct._stmt, %struct._stmt* %0, i32 0, i32 1
  %ImportFrom = bitcast %union.anon.33* %v to %struct.anon.48*
  %names1 = getelementptr inbounds %struct.anon.48, %struct.anon.48* %ImportFrom, i32 0, i32 1
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %names1, align 8
  store %struct.asdl_seq* %1, %struct.asdl_seq** %names, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %names, align 8
  %cmp = icmp eq %struct.asdl_seq* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %names, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %4, i32 0, i32 0
  %5 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %5, %cond.false ]
  %cmp3 = icmp slt i64 %conv, %cond
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.asdl_seq*, %struct.asdl_seq** %names, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = bitcast i8* %8 to %struct._alias*
  store %struct._alias* %9, %struct._alias** %name, align 8
  %10 = load %struct._alias*, %struct._alias** %name, align 8
  %name5 = getelementptr inbounds %struct._alias, %struct._alias* %10, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %name5, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %11)
  store i8* %call, i8** %feature, align 8
  %12 = load i8*, i8** %feature, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %13 = load i8*, i8** %feature, align 8
  %call6 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #3
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  br label %for.inc

if.else:                                          ; preds = %if.end
  %14 = load i8*, i8** %feature, align 8
  %call10 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #3
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  br label %for.inc

if.else.14:                                       ; preds = %if.else
  %15 = load i8*, i8** %feature, align 8
  %call15 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #3
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.14
  br label %for.inc

if.else.19:                                       ; preds = %if.else.14
  %16 = load i8*, i8** %feature, align 8
  %call20 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #3
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.19
  br label %for.inc

if.else.24:                                       ; preds = %if.else.19
  %17 = load i8*, i8** %feature, align 8
  %call25 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #3
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.else.24
  br label %for.inc

if.else.29:                                       ; preds = %if.else.24
  %18 = load i8*, i8** %feature, align 8
  %call30 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #3
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.29
  br label %for.inc

if.else.34:                                       ; preds = %if.else.29
  %19 = load i8*, i8** %feature, align 8
  %call35 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #3
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.34
  br label %for.inc

if.else.39:                                       ; preds = %if.else.34
  %20 = load i8*, i8** %feature, align 8
  %call40 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)) #3
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.39
  %21 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %ff.addr, align 8
  %ff_features = getelementptr inbounds %struct.PyFutureFeatures, %struct.PyFutureFeatures* %21, i32 0, i32 0
  %22 = load i32, i32* %ff_features, align 4
  %or = or i32 %22, 262144
  store i32 %or, i32* %ff_features, align 4
  br label %if.end.53

if.else.44:                                       ; preds = %if.else.39
  %23 = load i8*, i8** %feature, align 8
  %call45 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #3
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else.44
  %24 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %25 = load %struct._object*, %struct._object** %filename.addr, align 8
  %26 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno = getelementptr inbounds %struct._stmt, %struct._stmt* %26, i32 0, i32 2
  %27 = load i32, i32* %lineno, align 4
  %28 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset = getelementptr inbounds %struct._stmt, %struct._stmt* %28, i32 0, i32 3
  %29 = load i32, i32* %col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %25, i32 %27, i32 %29)
  store i32 0, i32* %retval
  br label %return

if.else.49:                                       ; preds = %if.else.44
  %30 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %31 = load i8*, i8** %feature, align 8
  %call50 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* %31)
  %32 = load %struct._object*, %struct._object** %filename.addr, align 8
  %33 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno51 = getelementptr inbounds %struct._stmt, %struct._stmt* %33, i32 0, i32 2
  %34 = load i32, i32* %lineno51, align 4
  %35 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset52 = getelementptr inbounds %struct._stmt, %struct._stmt* %35, i32 0, i32 3
  %36 = load i32, i32* %col_offset52, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %32, i32 %34, i32 %36)
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.43
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.then.38, %if.then.33, %if.then.28, %if.then.23, %if.then.18, %if.then.13, %if.then.9
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.49, %if.then.48, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
