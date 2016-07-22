; ModuleID = './parsetok.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }
%struct.perrdetail = type { i32, %struct._object*, i32, i32, i8*, i32, i32 }
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
%struct.tok_state = type { i8*, i8*, i8*, i8*, i8*, i32, %struct._IO_FILE*, i32, i32, [100 x i32], i32, i32, i8*, i8*, i32, i32, %struct._object*, i32, i32, i32, [100 x i32], i32, i32, i32, i8*, i32, i8*, %struct._object*, %struct._object*, i8*, i8*, i8* }
%struct.parser_state = type { %struct.stack, %struct.grammar*, %struct._node*, i64 }
%struct.stack = type { %struct.stackentry*, [1500 x %struct.stackentry] }
%struct.stackentry = type { i32, %struct.dfa*, %struct._node* }

@.str = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"with Barry as BDFL, use '<>' instead of '!='\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseString(i8* %s, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %call = call %struct._node* @PyParser_ParseStringFlagsFilename(i8* %0, i8* null, %struct.grammar* %1, i32 %2, %struct.perrdetail* %3, i32 0)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlagsFilename(i8* %s, i8* %filename, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32, align 4
  %iflags = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  store i32 %0, i32* %iflags, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %call = call %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8* %1, i8* %2, %struct.grammar* %3, i32 %4, %struct.perrdetail* %5, i32* %iflags)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlags(i8* %s, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call = call %struct._node* @PyParser_ParseStringFlagsFilename(i8* %0, i8* null, %struct.grammar* %1, i32 %2, %struct.perrdetail* %3, i32 %4)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8* %s, i8* %filename_str, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %s.addr = alloca i8*, align 8
  %filename_str.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32*, align 8
  %n = alloca %struct._node*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  store %struct._object* %call, %struct._object** %filename, align 8
  %2 = load %struct._object*, %struct._object** %filename, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 0
  store i32 17, i32* %error, align 4
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load %struct._object*, %struct._object** %filename, align 8
  %6 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %7 = load i32, i32* %start.addr, align 4
  %8 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %9 = load i32*, i32** %flags.addr, align 8
  %call4 = call %struct._node* @PyParser_ParseStringObject(i8* %4, %struct._object* %5, %struct.grammar* %6, i32 %7, %struct.perrdetail* %8, i32* %9)
  store %struct._node* %call4, %struct._node** %n, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %19 = load %struct._node*, %struct._node** %n, align 8
  store %struct._node* %19, %struct._node** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.then.2
  %20 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %20
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* %filename, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %s.addr = alloca i8*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32*, align 8
  %tok = alloca %struct.tok_state*, align 8
  %exec_input = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  %0 = load i32, i32* %start.addr, align 4
  %cmp = icmp eq i32 %0, 257
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %exec_input, align 4
  %1 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call i32 @initerr(%struct.perrdetail* %1, %struct._object* %2)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %flags.addr, align 8
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %exec_input, align 4
  %call4 = call %struct.tok_state* @PyTokenizer_FromUTF8(i8* %5, i32 %6)
  store %struct.tok_state* %call4, %struct.tok_state** %tok, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %exec_input, align 4
  %call5 = call %struct.tok_state* @PyTokenizer_FromString(i8* %7, i32 %8)
  store %struct.tok_state* %call5, %struct.tok_state** %tok, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp7 = icmp eq %struct.tok_state* %9, null
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  %cond = select i1 %tobool11, i32 22, i32 15
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %10, i32 0, i32 0
  store i32 %cond, i32* %error, align 4
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %11 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename13 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %filename13, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename14 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %filename14, align 8
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 16
  store %struct._object* %15, %struct._object** %filename15, align 8
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %18 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %19 = load i32, i32* %start.addr, align 4
  %20 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %21 = load i32*, i32** %flags.addr, align 8
  %call16 = call %struct._node* @parsetok(%struct.tok_state* %17, %struct.grammar* %18, i32 %19, %struct.perrdetail* %20, i32* %21)
  store %struct._node* %call16, %struct._node** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.9, %if.then
  %22 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %22
}

; Function Attrs: nounwind uwtable
define internal i32 @initerr(%struct.perrdetail* %err_ret, %struct._object* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %filename.addr = alloca %struct._object*, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %0, i32 0, i32 0
  store i32 10, i32* %error, align 4
  %1 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %lineno = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %1, i32 0, i32 2
  store i32 0, i32* %lineno, align 4
  %2 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %offset = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %2, i32 0, i32 3
  store i32 0, i32* %offset, align 4
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 4
  store i8* null, i8** %text, align 8
  %4 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %4, i32 0, i32 5
  store i32 -1, i32* %token, align 4
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %5, i32 0, i32 6
  store i32 -1, i32* %expected, align 4
  %6 = load %struct._object*, %struct._object** %filename.addr, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct._object*, %struct._object** %filename.addr, align 8
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename1 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %10, i32 0, i32 1
  store %struct._object* %9, %struct._object** %filename1, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %11 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename2 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %11, i32 0, i32 1
  store %struct._object* %call, %struct._object** %filename2, align 8
  %12 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename3 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %filename3, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %14 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error5 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %14, i32 0, i32 0
  store i32 17, i32* %error5, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct.tok_state* @PyTokenizer_FromUTF8(i8*, i32) #1

declare %struct.tok_state* @PyTokenizer_FromString(i8*, i32) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal %struct._node* @parsetok(%struct.tok_state* %tok, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32*, align 8
  %ps = alloca %struct.parser_state*, align 8
  %n = alloca %struct._node*, align 8
  %started = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %type = alloca i32, align 4
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %col_offset = alloca i32, align 4
  %cur = alloca i8*, align 8
  %c = alloca i8, align 1
  %len132 = alloca i64, align 8
  %r = alloca %struct._node*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store i32 0, i32* %started, align 4
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %call = call %struct.parser_state* @PyParser_New(%struct.grammar* %0, i32 %1)
  store %struct.parser_state* %call, %struct.parser_state** %ps, align 8
  %cmp = icmp eq %struct.parser_state* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %2, i32 0, i32 0
  store i32 15, i32* %error, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %3)
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and = and i32 %5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_flags = getelementptr inbounds %struct.parser_state, %struct.parser_state* %6, i32 0, i32 3
  %7 = load i64, i64* %p_flags, align 8
  %or = or i64 %7, 262144
  store i64 %or, i64* %p_flags, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end.69, %if.end.2
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call3 = call i32 @PyTokenizer_Get(%struct.tok_state* %8, i8** %a, i8** %b)
  store i32 %call3, i32* %type, align 4
  %9 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %9, 53
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.cond
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 5
  %11 = load i32, i32* %done, align 4
  %12 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error6 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %12, i32 0, i32 0
  store i32 %11, i32* %error6, align 4
  br label %for.end

if.end.7:                                         ; preds = %for.cond
  %13 = load i32, i32* %type, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.7
  %14 = load i32, i32* %started, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  store i32 4, i32* %type, align 4
  store i32 0, i32* %started, align 4
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 8
  %16 = load i32, i32* %indent, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %if.then.10
  %17 = load i32*, i32** %flags.addr, align 8
  %18 = load i32, i32* %17, align 4
  %and13 = and i32 %18, 2
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 8
  %20 = load i32, i32* %indent16, align 4
  %sub = sub i32 0, %20
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 11
  store i32 %sub, i32* %pendin, align 4
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent17 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 8
  store i32 0, i32* %indent17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true.12, %if.then.10
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.end.7
  store i32 1, i32* %started, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.18
  %23 = load i8*, i8** %b, align 8
  %24 = load i8*, i8** %a, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %add = add i64 %25, 1
  %call20 = call i8* @PyObject_Malloc(i64 %add)
  store i8* %call20, i8** %str, align 8
  %26 = load i8*, i8** %str, align 8
  %cmp21 = icmp eq i8* %26, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %27 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error23 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %27, i32 0, i32 0
  store i32 15, i32* %error23, align 4
  br label %for.end

if.end.24:                                        ; preds = %if.end.19
  %28 = load i64, i64* %len, align 8
  %cmp25 = icmp ugt i64 %28, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %29 = load i8*, i8** %str, align 8
  %30 = load i8*, i8** %a, align 8
  %31 = load i64, i64* %len, align 8
  %call27 = call i8* @strncpy(i8* %29, i8* %30, i64 %31) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %32 = load i64, i64* %len, align 8
  %33 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %33, i64 %32
  store i8 0, i8* %arrayidx, align 1
  %34 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %34, 28
  br i1 %cmp29, label %if.then.30, label %if.end.50

if.then.30:                                       ; preds = %if.end.28
  %35 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_flags31 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %35, i32 0, i32 3
  %36 = load i64, i64* %p_flags31, align 8
  %and32 = and i64 %36, 262144
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %if.else.39, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %if.then.30
  %37 = load i8*, i8** %str, align 8
  %call35 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %land.lhs.true.34
  %38 = load i8*, i8** %str, align 8
  call void @PyObject_Free(i8* %38)
  %39 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error38 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %39, i32 0, i32 0
  store i32 14, i32* %error38, align 4
  br label %for.end

if.else.39:                                       ; preds = %land.lhs.true.34, %if.then.30
  %40 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_flags40 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %40, i32 0, i32 3
  %41 = load i64, i64* %p_flags40, align 8
  %and41 = and i64 %41, 262144
  %tobool42 = icmp ne i64 %and41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.48

land.lhs.true.43:                                 ; preds = %if.else.39
  %42 = load i8*, i8** %str, align 8
  %call44 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true.43
  %43 = load i8*, i8** %str, align 8
  call void @PyObject_Free(i8* %43)
  %44 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %44, i32 0, i32 4
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8** %text, align 8
  %45 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error47 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %45, i32 0, i32 0
  store i32 14, i32* %error47, align 4
  br label %for.end

if.end.48:                                        ; preds = %land.lhs.true.43, %if.else.39
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.28
  %46 = load i8*, i8** %a, align 8
  %47 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %47, i32 0, i32 26
  %48 = load i8*, i8** %line_start, align 8
  %cmp51 = icmp uge i8* %46, %48
  br i1 %cmp51, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %if.end.50
  %49 = load i8*, i8** %a, align 8
  %50 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start53 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %50, i32 0, i32 26
  %51 = load i8*, i8** %line_start53, align 8
  %sub.ptr.lhs.cast54 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %51 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %conv = trunc i64 %sub.ptr.sub56 to i32
  store i32 %conv, i32* %col_offset, align 4
  br label %if.end.58

if.else.57:                                       ; preds = %if.end.50
  store i32 -1, i32* %col_offset, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.52
  %52 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %53 = load i32, i32* %type, align 4
  %54 = load i8*, i8** %str, align 8
  %55 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %55, i32 0, i32 14
  %56 = load i32, i32* %lineno, align 4
  %57 = load i32, i32* %col_offset, align 4
  %58 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %58, i32 0, i32 6
  %call59 = call i32 @PyParser_AddToken(%struct.parser_state* %52, i32 %53, i8* %54, i32 %56, i32 %57, i32* %expected)
  %59 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error60 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %59, i32 0, i32 0
  store i32 %call59, i32* %error60, align 4
  %cmp61 = icmp ne i32 %call59, 10
  br i1 %cmp61, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %if.end.58
  %60 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error64 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %60, i32 0, i32 0
  %61 = load i32, i32* %error64, align 4
  %cmp65 = icmp ne i32 %61, 16
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.63
  %62 = load i8*, i8** %str, align 8
  call void @PyObject_Free(i8* %62)
  %63 = load i32, i32* %type, align 4
  %64 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %64, i32 0, i32 5
  store i32 %63, i32* %token, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.63
  br label %for.end

if.end.69:                                        ; preds = %if.end.58
  br label %for.cond

for.end:                                          ; preds = %if.end.68, %if.then.46, %if.then.37, %if.then.22, %if.then.5
  %65 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error70 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %65, i32 0, i32 0
  %66 = load i32, i32* %error70, align 4
  %cmp71 = icmp eq i32 %66, 16
  br i1 %cmp71, label %if.then.73, label %if.else.114

if.then.73:                                       ; preds = %for.end
  %67 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %67, i32 0, i32 2
  %68 = load %struct._node*, %struct._node** %p_tree, align 8
  store %struct._node* %68, %struct._node** %n, align 8
  %69 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_tree74 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %69, i32 0, i32 2
  store %struct._node* null, %struct._node** %p_tree74, align 8
  %70 = load i32, i32* %start.addr, align 4
  %cmp75 = icmp eq i32 %70, 256
  br i1 %cmp75, label %if.then.77, label %if.end.113

if.then.77:                                       ; preds = %if.then.73
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur78 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %71, i32 0, i32 1
  %72 = load i8*, i8** %cur78, align 8
  store i8* %72, i8** %cur, align 8
  %73 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur79 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %73, i32 0, i32 1
  %74 = load i8*, i8** %cur79, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %c, align 1
  br label %for.cond.80

for.cond.80:                                      ; preds = %while.end.111, %if.then.77
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond.80
  %76 = load i8, i8* %c, align 1
  %conv81 = sext i8 %76 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %77 = load i8, i8* %c, align 1
  %conv84 = sext i8 %77 to i32
  %cmp85 = icmp eq i32 %conv84, 9
  br i1 %cmp85, label %lor.end, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false
  %78 = load i8, i8* %c, align 1
  %conv88 = sext i8 %78 to i32
  %cmp89 = icmp eq i32 %conv88, 10
  br i1 %cmp89, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.87
  %79 = load i8, i8* %c, align 1
  %conv91 = sext i8 %79 to i32
  %cmp92 = icmp eq i32 %conv91, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.87, %lor.lhs.false, %while.cond
  %80 = phi i1 [ true, %lor.lhs.false.87 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp92, %lor.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %81 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr i8, i8* %81, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8
  %82 = load i8, i8* %incdec.ptr, align 1
  store i8 %82, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %83 = load i8, i8* %c, align 1
  %tobool94 = icmp ne i8 %83, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %while.end
  br label %for.end.112

if.end.96:                                        ; preds = %while.end
  %84 = load i8, i8* %c, align 1
  %conv97 = sext i8 %84 to i32
  %cmp98 = icmp ne i32 %conv97, 35
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.96
  %85 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error101 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %85, i32 0, i32 0
  store i32 27, i32* %error101, align 4
  %86 = load %struct._node*, %struct._node** %n, align 8
  call void @PyNode_Free(%struct._node* %86)
  store %struct._node* null, %struct._node** %n, align 8
  br label %for.end.112

if.end.102:                                       ; preds = %if.end.96
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.109, %if.end.102
  %87 = load i8, i8* %c, align 1
  %conv104 = sext i8 %87 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br i1 %tobool105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.103
  %88 = load i8, i8* %c, align 1
  %conv106 = sext i8 %88 to i32
  %cmp107 = icmp ne i32 %conv106, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.103
  %89 = phi i1 [ false, %while.cond.103 ], [ %cmp107, %land.rhs ]
  br i1 %89, label %while.body.109, label %while.end.111

while.body.109:                                   ; preds = %land.end
  %90 = load i8*, i8** %cur, align 8
  %incdec.ptr110 = getelementptr i8, i8* %90, i32 1
  store i8* %incdec.ptr110, i8** %cur, align 8
  %91 = load i8, i8* %incdec.ptr110, align 1
  store i8 %91, i8* %c, align 1
  br label %while.cond.103

while.end.111:                                    ; preds = %land.end
  br label %for.cond.80

for.end.112:                                      ; preds = %if.then.100, %if.then.95
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.112, %if.then.73
  br label %if.end.115

if.else.114:                                      ; preds = %for.end
  store %struct._node* null, %struct._node** %n, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.114, %if.end.113
  %92 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  %p_flags116 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %92, i32 0, i32 3
  %93 = load i64, i64* %p_flags116, align 8
  %conv117 = trunc i64 %93 to i32
  %94 = load i32*, i32** %flags.addr, align 8
  store i32 %conv117, i32* %94, align 4
  %95 = load %struct.parser_state*, %struct.parser_state** %ps, align 8
  call void @PyParser_Delete(%struct.parser_state* %95)
  %96 = load %struct._node*, %struct._node** %n, align 8
  %cmp118 = icmp eq %struct._node* %96, null
  br i1 %cmp118, label %if.then.120, label %if.else.161

if.then.120:                                      ; preds = %if.end.115
  %97 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done121 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %97, i32 0, i32 5
  %98 = load i32, i32* %done121, align 4
  %cmp122 = icmp eq i32 %98, 11
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.then.120
  %99 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error125 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %99, i32 0, i32 0
  store i32 11, i32* %error125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.then.120
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno127 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 14
  %101 = load i32, i32* %lineno127, align 4
  %102 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %lineno128 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %102, i32 0, i32 2
  store i32 %101, i32* %lineno128, align 4
  %103 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %103, i32 0, i32 0
  %104 = load i8*, i8** %buf, align 8
  %cmp129 = icmp ne i8* %104, null
  br i1 %cmp129, label %if.then.131, label %if.end.160

if.then.131:                                      ; preds = %if.end.126
  %105 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur133 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %105, i32 0, i32 1
  %106 = load i8*, i8** %cur133, align 8
  %107 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf134 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %107, i32 0, i32 0
  %108 = load i8*, i8** %buf134, align 8
  %sub.ptr.lhs.cast135 = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast136 = ptrtoint i8* %108 to i64
  %sub.ptr.sub137 = sub i64 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  %conv138 = trunc i64 %sub.ptr.sub137 to i32
  %109 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %offset = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %109, i32 0, i32 3
  store i32 %conv138, i32* %offset, align 4
  %110 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %110, i32 0, i32 2
  %111 = load i8*, i8** %inp, align 8
  %112 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf139 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %112, i32 0, i32 0
  %113 = load i8*, i8** %buf139, align 8
  %sub.ptr.lhs.cast140 = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast141 = ptrtoint i8* %113 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  store i64 %sub.ptr.sub142, i64* %len132, align 8
  %114 = load i64, i64* %len132, align 8
  %add143 = add i64 %114, 1
  %call144 = call i8* @PyObject_Malloc(i64 %add143)
  %115 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text145 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %115, i32 0, i32 4
  store i8* %call144, i8** %text145, align 8
  %116 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text146 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %116, i32 0, i32 4
  %117 = load i8*, i8** %text146, align 8
  %cmp147 = icmp ne i8* %117, null
  br i1 %cmp147, label %if.then.149, label %if.end.159

if.then.149:                                      ; preds = %if.then.131
  %118 = load i64, i64* %len132, align 8
  %cmp150 = icmp ugt i64 %118, 0
  br i1 %cmp150, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %if.then.149
  %119 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text153 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %119, i32 0, i32 4
  %120 = load i8*, i8** %text153, align 8
  %121 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf154 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %121, i32 0, i32 0
  %122 = load i8*, i8** %buf154, align 8
  %123 = load i64, i64* %len132, align 8
  %call155 = call i8* @strncpy(i8* %120, i8* %122, i64 %123) #4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %if.then.149
  %124 = load i64, i64* %len132, align 8
  %125 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %text157 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %125, i32 0, i32 4
  %126 = load i8*, i8** %text157, align 8
  %arrayidx158 = getelementptr i8, i8* %126, i64 %124
  store i8 0, i8* %arrayidx158, align 1
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.156, %if.then.131
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.126
  br label %if.end.189

if.else.161:                                      ; preds = %if.end.115
  %127 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %127, i32 0, i32 24
  %128 = load i8*, i8** %encoding, align 8
  %cmp162 = icmp ne i8* %128, null
  br i1 %cmp162, label %if.then.164, label %if.end.188

if.then.164:                                      ; preds = %if.else.161
  %call165 = call %struct._node* @PyNode_New(i32 335)
  store %struct._node* %call165, %struct._node** %r, align 8
  %129 = load %struct._node*, %struct._node** %r, align 8
  %tobool166 = icmp ne %struct._node* %129, null
  br i1 %tobool166, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %if.then.164
  %130 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding168 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %130, i32 0, i32 24
  %131 = load i8*, i8** %encoding168, align 8
  %call169 = call i64 @strlen(i8* %131) #5
  %add170 = add i64 %call169, 1
  %call171 = call i8* @PyObject_Malloc(i64 %add170)
  %132 = load %struct._node*, %struct._node** %r, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %132, i32 0, i32 1
  store i8* %call171, i8** %n_str, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.167, %if.then.164
  %133 = load %struct._node*, %struct._node** %r, align 8
  %tobool173 = icmp ne %struct._node* %133, null
  br i1 %tobool173, label %lor.lhs.false.174, label %if.then.177

lor.lhs.false.174:                                ; preds = %if.end.172
  %134 = load %struct._node*, %struct._node** %r, align 8
  %n_str175 = getelementptr inbounds %struct._node, %struct._node* %134, i32 0, i32 1
  %135 = load i8*, i8** %n_str175, align 8
  %tobool176 = icmp ne i8* %135, null
  br i1 %tobool176, label %if.end.182, label %if.then.177

if.then.177:                                      ; preds = %lor.lhs.false.174, %if.end.172
  %136 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error178 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %136, i32 0, i32 0
  store i32 15, i32* %error178, align 4
  %137 = load %struct._node*, %struct._node** %r, align 8
  %tobool179 = icmp ne %struct._node* %137, null
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.177
  %138 = load %struct._node*, %struct._node** %r, align 8
  %139 = bitcast %struct._node* %138 to i8*
  call void @PyObject_Free(i8* %139)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %if.then.177
  store %struct._node* null, %struct._node** %n, align 8
  br label %done.190

if.end.182:                                       ; preds = %lor.lhs.false.174
  %140 = load %struct._node*, %struct._node** %r, align 8
  %n_str183 = getelementptr inbounds %struct._node, %struct._node* %140, i32 0, i32 1
  %141 = load i8*, i8** %n_str183, align 8
  %142 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding184 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %142, i32 0, i32 24
  %143 = load i8*, i8** %encoding184, align 8
  %call185 = call i8* @strcpy(i8* %141, i8* %143) #4
  %144 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding186 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %144, i32 0, i32 24
  %145 = load i8*, i8** %encoding186, align 8
  call void @PyMem_Free(i8* %145)
  %146 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding187 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %146, i32 0, i32 24
  store i8* null, i8** %encoding187, align 8
  %147 = load %struct._node*, %struct._node** %r, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %147, i32 0, i32 4
  store i32 1, i32* %n_nchildren, align 4
  %148 = load %struct._node*, %struct._node** %n, align 8
  %149 = load %struct._node*, %struct._node** %r, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %149, i32 0, i32 5
  store %struct._node* %148, %struct._node** %n_child, align 8
  %150 = load %struct._node*, %struct._node** %r, align 8
  store %struct._node* %150, %struct._node** %n, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.182, %if.else.161
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.160
  br label %done.190

done.190:                                         ; preds = %if.end.189, %if.end.181
  %151 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %151)
  %152 = load %struct._node*, %struct._node** %n, align 8
  store %struct._node* %152, %struct._node** %retval
  br label %return

return:                                           ; preds = %done.190, %if.then
  %153 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %153
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFile(%struct._IO_FILE* %fp, i8* %filename, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %4 = load i8*, i8** %ps1.addr, align 8
  %5 = load i8*, i8** %ps2.addr, align 8
  %6 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %call = call %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE* %0, i8* %1, i8* null, %struct.grammar* %2, i32 %3, i8* %4, i8* %5, %struct.perrdetail* %6, i32 0)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE* %fp, i8* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %enc.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32, align 4
  %iflags = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  store i32 %0, i32* %iflags, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8*, i8** %enc.addr, align 8
  %4 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %5 = load i32, i32* %start.addr, align 4
  %6 = load i8*, i8** %ps1.addr, align 8
  %7 = load i8*, i8** %ps2.addr, align 8
  %8 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %call = call %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %1, i8* %2, i8* %3, %struct.grammar* %4, i32 %5, i8* %6, i8* %7, %struct.perrdetail* %8, i32* %iflags)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %fp, i8* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* %flags) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %enc.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32*, align 8
  %n = alloca %struct._node*, align 8
  %fileobj = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store %struct._object* null, %struct._object** %fileobj, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  store %struct._object* %call, %struct._object** %fileobj, align 8
  %2 = load %struct._object*, %struct._object** %fileobj, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 0
  store i32 17, i32* %error, align 4
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct._object*, %struct._object** %fileobj, align 8
  %6 = load i8*, i8** %enc.addr, align 8
  %7 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %8 = load i32, i32* %start.addr, align 4
  %9 = load i8*, i8** %ps1.addr, align 8
  %10 = load i8*, i8** %ps2.addr, align 8
  %11 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %12 = load i32*, i32** %flags.addr, align 8
  %call4 = call %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE* %4, %struct._object* %5, i8* %6, %struct.grammar* %7, i32 %8, i8* %9, i8* %10, %struct.perrdetail* %11, i32* %12)
  store %struct._node* %call4, %struct._node** %n, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %13 = load %struct._object*, %struct._object** %fileobj, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %22 = load %struct._node*, %struct._node** %n, align 8
  store %struct._node* %22, %struct._node** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.then.2
  %23 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %23
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE* %fp, %struct._object* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* %flags) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %enc.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32*, align 8
  %tok = alloca %struct.tok_state*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call i32 @initerr(%struct.perrdetail* %0, %struct._object* %1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %enc.addr, align 8
  %4 = load i8*, i8** %ps1.addr, align 8
  %5 = load i8*, i8** %ps2.addr, align 8
  %call1 = call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %2, i8* %3, i8* %4, i8* %5)
  store %struct.tok_state* %call1, %struct.tok_state** %tok, align 8
  %cmp2 = icmp eq %struct.tok_state* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %6, i32 0, i32 0
  store i32 15, i32* %error, align 4
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename5 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %filename5, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %filename6 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %filename6, align 8
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 16
  store %struct._object* %11, %struct._object** %filename7, align 8
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %14 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %15 = load i32, i32* %start.addr, align 4
  %16 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8
  %17 = load i32*, i32** %flags.addr, align 8
  %call8 = call %struct._node* @parsetok(%struct.tok_state* %13, %struct.grammar* %14, i32 %15, %struct.perrdetail* %16, i32* %17)
  store %struct._node* %call8, %struct._node** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %18 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %18
}

declare %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE*, i8*, i8*, i8*) #1

declare %struct.parser_state* @PyParser_New(%struct.grammar*, i32) #1

declare void @PyTokenizer_Free(%struct.tok_state*) #1

declare i32 @PyTokenizer_Get(%struct.tok_state*, i8**, i8**) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @PyObject_Free(i8*) #1

declare i32 @PyParser_AddToken(%struct.parser_state*, i32, i8*, i32, i32, i32*) #1

declare void @PyNode_Free(%struct._node*) #1

declare void @PyParser_Delete(%struct.parser_state*) #1

declare %struct._node* @PyNode_New(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
