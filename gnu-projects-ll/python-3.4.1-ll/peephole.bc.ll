; ModuleID = './peephole.bc'
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [45 x i8] c"unexpected binary operation %d on a constant\00", align 1
@PyExc_KeyboardInterrupt = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"unexpected unary operation %d on a constant\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCode_Optimize(%struct._object* %code, %struct._object* %consts, %struct._object* %names, %struct._object* %lineno_obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %code.addr = alloca %struct._object*, align 8
  %consts.addr = alloca %struct._object*, align 8
  %names.addr = alloca %struct._object*, align 8
  %lineno_obj.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %codelen = alloca i64, align 8
  %nops = alloca i32, align 4
  %h = alloca i32, align 4
  %adj = alloca i32, align 4
  %tgt = alloca i32, align 4
  %tgttgt = alloca i32, align 4
  %opcode = alloca i32, align 4
  %codestr = alloca i8*, align 8
  %lineno = alloca i8*, align 8
  %addrmap = alloca i32*, align 8
  %new_line = alloca i32, align 4
  %cum_orig_line = alloca i32, align 4
  %last_line = alloca i32, align 4
  %tabsiz = alloca i32, align 4
  %const_stack = alloca %struct._object**, align 8
  %load_const_stack = alloca i64*, align 8
  %const_stack_top = alloca i64, align 8
  %const_stack_size = alloca i64, align 8
  %in_consts = alloca i32, align 4
  %blocks = alloca i32*, align 8
  %_x = alloca %struct._object*, align 8
  %_x317 = alloca %struct._object*, align 8
  %_x460 = alloca %struct._object*, align 8
  %_x541 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %code, %struct._object** %code.addr, align 8
  store %struct._object* %consts, %struct._object** %consts.addr, align 8
  store %struct._object* %names, %struct._object** %names.addr, align 8
  store %struct._object* %lineno_obj, %struct._object** %lineno_obj.addr, align 8
  store i8* null, i8** %codestr, align 8
  store i32* null, i32** %addrmap, align 8
  store %struct._object** null, %struct._object*** %const_stack, align 8
  store i64* null, i64** %load_const_stack, align 8
  store i64 -1, i64* %const_stack_top, align 8
  store i64 0, i64* %const_stack_size, align 8
  store i32 0, i32* %in_consts, align 4
  store i32* null, i32** %blocks, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exitError

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %lineno_obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %lineno, align 8
  %2 = load %struct._object*, %struct._object** %lineno_obj.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %tabsiz, align 4
  %5 = load i8*, i8** %lineno, align 8
  %6 = load i32, i32* %tabsiz, align 4
  %conv1 = sext i32 %6 to i64
  %call2 = call i8* @memchr(i8* %5, i32 255, i64 %conv1) #4
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %exitUnchanged

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %code.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size6 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size6, align 8
  store i64 %9, i64* %codelen, align 8
  %10 = load i64, i64* %codelen, align 8
  %cmp7 = icmp sgt i64 %10, 32700
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  br label %exitUnchanged

if.end.10:                                        ; preds = %if.end.5
  %11 = load i64, i64* %codelen, align 8
  %call11 = call i8* @PyMem_Malloc(i64 %11)
  store i8* %call11, i8** %codestr, align 8
  %12 = load i8*, i8** %codestr, align 8
  %cmp12 = icmp eq i8* %12, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %call15 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.16:                                        ; preds = %if.end.10
  %13 = load i8*, i8** %codestr, align 8
  %14 = load %struct._object*, %struct._object** %code.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*
  %ob_sval17 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval17, i32 0, i32 0
  %16 = load i64, i64* %codelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %arraydecay18, i64 %16, i32 1, i1 false)
  store i8* %13, i8** %codestr, align 8
  %17 = load i64, i64* %codelen, align 8
  %sub = sub i64 %17, 1
  %18 = load i8*, i8** %codestr, align 8
  %arrayidx = getelementptr i8, i8* %18, i64 %sub
  %19 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %19 to i32
  %cmp20 = icmp ne i32 %conv19, 83
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  br label %exitUnchanged

if.end.23:                                        ; preds = %if.end.16
  %20 = load i64, i64* %codelen, align 8
  %mul = mul i64 %20, 4
  %call24 = call i8* @PyMem_Malloc(i64 %mul)
  %21 = bitcast i8* %call24 to i32*
  store i32* %21, i32** %addrmap, align 8
  %22 = load i32*, i32** %addrmap, align 8
  %cmp25 = icmp eq i32* %22, null
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %call28 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.29:                                        ; preds = %if.end.23
  %23 = load i8*, i8** %codestr, align 8
  %24 = load i64, i64* %codelen, align 8
  %call30 = call i32* @markblocks(i8* %23, i64 %24)
  store i32* %call30, i32** %blocks, align 8
  %25 = load i32*, i32** %blocks, align 8
  %cmp31 = icmp eq i32* %25, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  br label %exitError

if.end.34:                                        ; preds = %if.end.29
  store i64 256, i64* %const_stack_size, align 8
  %26 = load i64, i64* %const_stack_size, align 8
  %cmp35 = icmp ugt i64 %26, 1152921504606846975
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  %27 = load i64, i64* %const_stack_size, align 8
  %mul37 = mul i64 %27, 8
  %call38 = call i8* @PyMem_Malloc(i64 %mul37)
  %28 = bitcast i8* %call38 to %struct._object**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object** [ null, %cond.true ], [ %28, %cond.false ]
  store %struct._object** %cond, %struct._object*** %const_stack, align 8
  %29 = load i64, i64* %const_stack_size, align 8
  %cmp39 = icmp ugt i64 %29, 1152921504606846975
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.end
  %30 = load i64, i64* %const_stack_size, align 8
  %mul43 = mul i64 %30, 8
  %call44 = call i8* @PyMem_Malloc(i64 %mul43)
  %31 = bitcast i8* %call44 to i64*
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.41
  %cond46 = phi i64* [ null, %cond.true.41 ], [ %31, %cond.false.42 ]
  store i64* %cond46, i64** %load_const_stack, align 8
  %32 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool47 = icmp ne %struct._object** %32, null
  br i1 %tobool47, label %lor.lhs.false, label %if.then.49

lor.lhs.false:                                    ; preds = %cond.end.45
  %33 = load i64*, i64** %load_const_stack, align 8
  %tobool48 = icmp ne i64* %33, null
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false, %cond.end.45
  %call50 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.51:                                        ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %codelen, align 8
  %cmp52 = icmp slt i64 %34, %35
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %reoptimize_current

reoptimize_current:                               ; preds = %if.end.731, %cond.end.708, %if.end.71, %for.body
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** %codestr, align 8
  %arrayidx54 = getelementptr i8, i8* %37, i64 %36
  %38 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %38 to i32
  store i32 %conv55, i32* %opcode, align 4
  %39 = load i32, i32* %in_consts, align 4
  %tobool56 = icmp ne i32 %39, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %reoptimize_current
  br label %do.body

do.body:                                          ; preds = %if.then.57
  store i64 -1, i64* %const_stack_top, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.58

if.end.58:                                        ; preds = %do.end, %reoptimize_current
  store i32 0, i32* %in_consts, align 4
  %40 = load i32, i32* %opcode, align 4
  switch i32 %40, label %sw.epilog [
    i32 12, label %sw.bb
    i32 107, label %sw.bb.91
    i32 100, label %sw.bb.132
    i32 102, label %sw.bb.203
    i32 103, label %sw.bb.203
    i32 104, label %sw.bb.203
    i32 19, label %sw.bb.418
    i32 20, label %sw.bb.418
    i32 27, label %sw.bb.418
    i32 26, label %sw.bb.418
    i32 22, label %sw.bb.418
    i32 23, label %sw.bb.418
    i32 24, label %sw.bb.418
    i32 25, label %sw.bb.418
    i32 62, label %sw.bb.418
    i32 63, label %sw.bb.418
    i32 64, label %sw.bb.418
    i32 65, label %sw.bb.418
    i32 66, label %sw.bb.418
    i32 11, label %sw.bb.504
    i32 15, label %sw.bb.504
    i32 10, label %sw.bb.504
    i32 111, label %sw.bb.585
    i32 112, label %sw.bb.585
    i32 114, label %sw.bb.743
    i32 115, label %sw.bb.743
    i32 93, label %sw.bb.743
    i32 110, label %sw.bb.743
    i32 113, label %sw.bb.743
    i32 119, label %sw.bb.743
    i32 120, label %sw.bb.743
    i32 121, label %sw.bb.743
    i32 122, label %sw.bb.743
    i32 143, label %sw.bb.743
    i32 144, label %sw.bb.910
    i32 83, label %sw.bb.919
  ]

sw.bb:                                            ; preds = %if.end.58
  %41 = load i64, i64* %i, align 8
  %add = add i64 %41, 1
  %42 = load i8*, i8** %codestr, align 8
  %arrayidx59 = getelementptr i8, i8* %42, i64 %add
  %43 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %cmp61 = icmp ne i32 %conv60, 114
  br i1 %cmp61, label %if.then.70, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %sw.bb
  %44 = load i64, i64* %i, align 8
  %45 = load i32*, i32** %blocks, align 8
  %arrayidx64 = getelementptr i32, i32* %45, i64 %44
  %46 = load i32, i32* %arrayidx64, align 4
  %47 = load i64, i64* %i, align 8
  %add65 = add i64 %47, 4
  %sub66 = sub i64 %add65, 1
  %48 = load i32*, i32** %blocks, align 8
  %arrayidx67 = getelementptr i32, i32* %48, i64 %sub66
  %49 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %46, %49
  br i1 %cmp68, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %lor.lhs.false.63, %sw.bb
  br label %for.inc

if.end.71:                                        ; preds = %lor.lhs.false.63
  %50 = load i64, i64* %i, align 8
  %add72 = add i64 %50, 1
  %add73 = add i64 %add72, 2
  %51 = load i8*, i8** %codestr, align 8
  %arrayidx74 = getelementptr i8, i8* %51, i64 %add73
  %52 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %52 to i32
  %shl = shl i32 %conv75, 8
  %53 = load i64, i64* %i, align 8
  %add76 = add i64 %53, 1
  %add77 = add i64 %add76, 1
  %54 = load i8*, i8** %codestr, align 8
  %arrayidx78 = getelementptr i8, i8* %54, i64 %add77
  %55 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %55 to i32
  %add80 = add i32 %shl, %conv79
  %conv81 = sext i32 %add80 to i64
  store i64 %conv81, i64* %j, align 8
  %56 = load i64, i64* %i, align 8
  %57 = load i8*, i8** %codestr, align 8
  %arrayidx82 = getelementptr i8, i8* %57, i64 %56
  store i8 115, i8* %arrayidx82, align 1
  %58 = load i64, i64* %j, align 8
  %shr = ashr i64 %58, 8
  %conv83 = trunc i64 %shr to i8
  %59 = load i64, i64* %i, align 8
  %add84 = add i64 %59, 2
  %60 = load i8*, i8** %codestr, align 8
  %arrayidx85 = getelementptr i8, i8* %60, i64 %add84
  store i8 %conv83, i8* %arrayidx85, align 1
  %61 = load i64, i64* %j, align 8
  %and = and i64 %61, 255
  %conv86 = trunc i64 %and to i8
  %62 = load i64, i64* %i, align 8
  %add87 = add i64 %62, 1
  %63 = load i8*, i8** %codestr, align 8
  %arrayidx88 = getelementptr i8, i8* %63, i64 %add87
  store i8 %conv86, i8* %arrayidx88, align 1
  %64 = load i64, i64* %i, align 8
  %add89 = add i64 %64, 3
  %65 = load i8*, i8** %codestr, align 8
  %arrayidx90 = getelementptr i8, i8* %65, i64 %add89
  store i8 9, i8* %arrayidx90, align 1
  br label %reoptimize_current

sw.bb.91:                                         ; preds = %if.end.58
  %66 = load i64, i64* %i, align 8
  %add92 = add i64 %66, 2
  %67 = load i8*, i8** %codestr, align 8
  %arrayidx93 = getelementptr i8, i8* %67, i64 %add92
  %68 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %68 to i32
  %shl95 = shl i32 %conv94, 8
  %69 = load i64, i64* %i, align 8
  %add96 = add i64 %69, 1
  %70 = load i8*, i8** %codestr, align 8
  %arrayidx97 = getelementptr i8, i8* %70, i64 %add96
  %71 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %71 to i32
  %add99 = add i32 %shl95, %conv98
  %conv100 = sext i32 %add99 to i64
  store i64 %conv100, i64* %j, align 8
  %72 = load i64, i64* %j, align 8
  %cmp101 = icmp slt i64 %72, 6
  br i1 %cmp101, label %if.then.119, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %sw.bb.91
  %73 = load i64, i64* %j, align 8
  %cmp104 = icmp sgt i64 %73, 9
  br i1 %cmp104, label %if.then.119, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.103
  %74 = load i64, i64* %i, align 8
  %add107 = add i64 %74, 3
  %75 = load i8*, i8** %codestr, align 8
  %arrayidx108 = getelementptr i8, i8* %75, i64 %add107
  %76 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %76 to i32
  %cmp110 = icmp ne i32 %conv109, 12
  br i1 %cmp110, label %if.then.119, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.106
  %77 = load i64, i64* %i, align 8
  %78 = load i32*, i32** %blocks, align 8
  %arrayidx113 = getelementptr i32, i32* %78, i64 %77
  %79 = load i32, i32* %arrayidx113, align 4
  %80 = load i64, i64* %i, align 8
  %add114 = add i64 %80, 4
  %sub115 = sub i64 %add114, 1
  %81 = load i32*, i32** %blocks, align 8
  %arrayidx116 = getelementptr i32, i32* %81, i64 %sub115
  %82 = load i32, i32* %arrayidx116, align 4
  %cmp117 = icmp eq i32 %79, %82
  br i1 %cmp117, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %lor.lhs.false.112, %lor.lhs.false.106, %lor.lhs.false.103, %sw.bb.91
  br label %for.inc

if.end.120:                                       ; preds = %lor.lhs.false.112
  %83 = load i64, i64* %j, align 8
  %xor = xor i64 %83, 1
  %shr121 = ashr i64 %xor, 8
  %conv122 = trunc i64 %shr121 to i8
  %84 = load i64, i64* %i, align 8
  %add123 = add i64 %84, 2
  %85 = load i8*, i8** %codestr, align 8
  %arrayidx124 = getelementptr i8, i8* %85, i64 %add123
  store i8 %conv122, i8* %arrayidx124, align 1
  %86 = load i64, i64* %j, align 8
  %xor125 = xor i64 %86, 1
  %and126 = and i64 %xor125, 255
  %conv127 = trunc i64 %and126 to i8
  %87 = load i64, i64* %i, align 8
  %add128 = add i64 %87, 1
  %88 = load i8*, i8** %codestr, align 8
  %arrayidx129 = getelementptr i8, i8* %88, i64 %add128
  store i8 %conv127, i8* %arrayidx129, align 1
  %89 = load i64, i64* %i, align 8
  %add130 = add i64 %89, 3
  %90 = load i8*, i8** %codestr, align 8
  %arrayidx131 = getelementptr i8, i8* %90, i64 %add130
  store i8 9, i8* %arrayidx131, align 1
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.58
  br label %do.body.133

do.body.133:                                      ; preds = %sw.bb.132
  %91 = load i64, i64* %i, align 8
  %add134 = add i64 %91, 2
  %92 = load i8*, i8** %codestr, align 8
  %arrayidx135 = getelementptr i8, i8* %92, i64 %add134
  %93 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %93 to i32
  %shl137 = shl i32 %conv136, 8
  %94 = load i64, i64* %i, align 8
  %add138 = add i64 %94, 1
  %95 = load i8*, i8** %codestr, align 8
  %arrayidx139 = getelementptr i8, i8* %95, i64 %add138
  %96 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %96 to i32
  %add141 = add i32 %shl137, %conv140
  %idxprom = sext i32 %add141 to i64
  %97 = load %struct._object*, %struct._object** %consts.addr, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %98, i32 0, i32 1
  %99 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx142 = getelementptr %struct._object*, %struct._object** %99, i64 %idxprom
  %100 = load %struct._object*, %struct._object** %arrayidx142, align 8
  store %struct._object* %100, %struct._object** %_x, align 8
  %101 = load i64, i64* %const_stack_top, align 8
  %inc = add i64 %101, 1
  store i64 %inc, i64* %const_stack_top, align 8
  %102 = load i64, i64* %const_stack_size, align 8
  %cmp143 = icmp sge i64 %inc, %102
  br i1 %cmp143, label %if.then.145, label %if.end.169

if.then.145:                                      ; preds = %do.body.133
  %103 = load i64, i64* %const_stack_size, align 8
  %mul146 = mul i64 %103, 2
  store i64 %mul146, i64* %const_stack_size, align 8
  %104 = load i64, i64* %const_stack_size, align 8
  %cmp147 = icmp ugt i64 %104, 1152921504606846975
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.then.145
  br label %cond.end.153

cond.false.150:                                   ; preds = %if.then.145
  %105 = load %struct._object**, %struct._object*** %const_stack, align 8
  %106 = bitcast %struct._object** %105 to i8*
  %107 = load i64, i64* %const_stack_size, align 8
  %mul151 = mul i64 %107, 8
  %call152 = call i8* @PyMem_Realloc(i8* %106, i64 %mul151)
  %108 = bitcast i8* %call152 to %struct._object**
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.149
  %cond154 = phi %struct._object** [ null, %cond.true.149 ], [ %108, %cond.false.150 ]
  store %struct._object** %cond154, %struct._object*** %const_stack, align 8
  %109 = load i64, i64* %const_stack_size, align 8
  %cmp155 = icmp ugt i64 %109, 1152921504606846975
  br i1 %cmp155, label %cond.true.157, label %cond.false.158

cond.true.157:                                    ; preds = %cond.end.153
  br label %cond.end.161

cond.false.158:                                   ; preds = %cond.end.153
  %110 = load i64*, i64** %load_const_stack, align 8
  %111 = bitcast i64* %110 to i8*
  %112 = load i64, i64* %const_stack_size, align 8
  %mul159 = mul i64 %112, 8
  %call160 = call i8* @PyMem_Realloc(i8* %111, i64 %mul159)
  %113 = bitcast i8* %call160 to i64*
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.158, %cond.true.157
  %cond162 = phi i64* [ null, %cond.true.157 ], [ %113, %cond.false.158 ]
  store i64* %cond162, i64** %load_const_stack, align 8
  %114 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool163 = icmp ne %struct._object** %114, null
  br i1 %tobool163, label %lor.lhs.false.164, label %if.then.166

lor.lhs.false.164:                                ; preds = %cond.end.161
  %115 = load i64*, i64** %load_const_stack, align 8
  %tobool165 = icmp ne i64* %115, null
  br i1 %tobool165, label %if.end.168, label %if.then.166

if.then.166:                                      ; preds = %lor.lhs.false.164, %cond.end.161
  %call167 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.168:                                       ; preds = %lor.lhs.false.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %do.body.133
  %116 = load i64, i64* %i, align 8
  %117 = load i64, i64* %const_stack_top, align 8
  %118 = load i64*, i64** %load_const_stack, align 8
  %arrayidx170 = getelementptr i64, i64* %118, i64 %117
  store i64 %116, i64* %arrayidx170, align 8
  %119 = load %struct._object*, %struct._object** %_x, align 8
  %120 = load i64, i64* %const_stack_top, align 8
  %121 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx171 = getelementptr %struct._object*, %struct._object** %121, i64 %120
  store %struct._object* %119, %struct._object** %arrayidx171, align 8
  store i32 1, i32* %in_consts, align 4
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.169
  %122 = load i64, i64* %i, align 8
  %add173 = add i64 %122, 2
  %123 = load i8*, i8** %codestr, align 8
  %arrayidx174 = getelementptr i8, i8* %123, i64 %add173
  %124 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %124 to i32
  %shl176 = shl i32 %conv175, 8
  %125 = load i64, i64* %i, align 8
  %add177 = add i64 %125, 1
  %126 = load i8*, i8** %codestr, align 8
  %arrayidx178 = getelementptr i8, i8* %126, i64 %add177
  %127 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %127 to i32
  %add180 = add i32 %shl176, %conv179
  %conv181 = sext i32 %add180 to i64
  store i64 %conv181, i64* %j, align 8
  %128 = load i64, i64* %i, align 8
  %add182 = add i64 %128, 3
  %129 = load i8*, i8** %codestr, align 8
  %arrayidx183 = getelementptr i8, i8* %129, i64 %add182
  %130 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %130 to i32
  %cmp185 = icmp ne i32 %conv184, 114
  br i1 %cmp185, label %if.then.199, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %do.end.172
  %131 = load i64, i64* %i, align 8
  %132 = load i32*, i32** %blocks, align 8
  %arrayidx188 = getelementptr i32, i32* %132, i64 %131
  %133 = load i32, i32* %arrayidx188, align 4
  %134 = load i64, i64* %i, align 8
  %add189 = add i64 %134, 6
  %sub190 = sub i64 %add189, 1
  %135 = load i32*, i32** %blocks, align 8
  %arrayidx191 = getelementptr i32, i32* %135, i64 %sub190
  %136 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp eq i32 %133, %136
  br i1 %cmp192, label %lor.lhs.false.194, label %if.then.199

lor.lhs.false.194:                                ; preds = %lor.lhs.false.187
  %137 = load i64, i64* %j, align 8
  %138 = load %struct._object*, %struct._object** %consts.addr, align 8
  %139 = bitcast %struct._object* %138 to %struct.PyListObject*
  %ob_item195 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %139, i32 0, i32 1
  %140 = load %struct._object**, %struct._object*** %ob_item195, align 8
  %arrayidx196 = getelementptr %struct._object*, %struct._object** %140, i64 %137
  %141 = load %struct._object*, %struct._object** %arrayidx196, align 8
  %call197 = call i32 @PyObject_IsTrue(%struct._object* %141)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %lor.lhs.false.194, %lor.lhs.false.187, %do.end.172
  br label %for.inc

if.end.200:                                       ; preds = %lor.lhs.false.194
  %142 = load i8*, i8** %codestr, align 8
  %143 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %142, i64 %143
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 9, i64 6, i32 1, i1 false)
  br label %do.body.201

do.body.201:                                      ; preds = %if.end.200
  store i64 -1, i64* %const_stack_top, align 8
  br label %do.end.202

do.end.202:                                       ; preds = %do.body.201
  br label %sw.epilog

sw.bb.203:                                        ; preds = %if.end.58, %if.end.58, %if.end.58
  %144 = load i64, i64* %i, align 8
  %add204 = add i64 %144, 2
  %145 = load i8*, i8** %codestr, align 8
  %arrayidx205 = getelementptr i8, i8* %145, i64 %add204
  %146 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %146 to i32
  %shl207 = shl i32 %conv206, 8
  %147 = load i64, i64* %i, align 8
  %add208 = add i64 %147, 1
  %148 = load i8*, i8** %codestr, align 8
  %arrayidx209 = getelementptr i8, i8* %148, i64 %add208
  %149 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %149 to i32
  %add211 = add i32 %shl207, %conv210
  %conv212 = sext i32 %add211 to i64
  store i64 %conv212, i64* %j, align 8
  %150 = load i64, i64* %j, align 8
  %cmp213 = icmp eq i64 %150, 0
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %sw.bb.203
  br label %sw.epilog

if.end.216:                                       ; preds = %sw.bb.203
  %151 = load i64, i64* %const_stack_top, align 8
  %152 = load i64, i64* %j, align 8
  %sub217 = sub i64 %152, 1
  %cmp218 = icmp sge i64 %151, %sub217
  br i1 %cmp218, label %cond.true.220, label %cond.false.224

cond.true.220:                                    ; preds = %if.end.216
  %153 = load i64, i64* %const_stack_top, align 8
  %154 = load i64, i64* %j, align 8
  %sub221 = sub i64 %153, %154
  %add222 = add i64 %sub221, 1
  %155 = load i64*, i64** %load_const_stack, align 8
  %arrayidx223 = getelementptr i64, i64* %155, i64 %add222
  %156 = load i64, i64* %arrayidx223, align 8
  br label %cond.end.225

cond.false.224:                                   ; preds = %if.end.216
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.224, %cond.true.220
  %cond226 = phi i64 [ %156, %cond.true.220 ], [ -1, %cond.false.224 ]
  %conv227 = trunc i64 %cond226 to i32
  store i32 %conv227, i32* %h, align 4
  %157 = load i32, i32* %h, align 4
  %cmp228 = icmp sge i32 %157, 0
  br i1 %cmp228, label %land.lhs.true, label %if.end.360

land.lhs.true:                                    ; preds = %cond.end.225
  %158 = load i64, i64* %j, align 8
  %cmp230 = icmp sgt i64 %158, 0
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.360

land.lhs.true.232:                                ; preds = %land.lhs.true
  %159 = load i64, i64* %j, align 8
  %160 = load i64, i64* %const_stack_top, align 8
  %add233 = add i64 %160, 1
  %cmp234 = icmp sle i64 %159, %add233
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.360

land.lhs.true.236:                                ; preds = %land.lhs.true.232
  %161 = load i32, i32* %opcode, align 4
  %cmp237 = icmp eq i32 %161, 102
  br i1 %cmp237, label %land.lhs.true.239, label %lor.lhs.false.251

land.lhs.true.239:                                ; preds = %land.lhs.true.236
  %162 = load i32, i32* %h, align 4
  %idxprom240 = sext i32 %162 to i64
  %163 = load i32*, i32** %blocks, align 8
  %arrayidx241 = getelementptr i32, i32* %163, i64 %idxprom240
  %164 = load i32, i32* %arrayidx241, align 4
  %165 = load i32, i32* %h, align 4
  %conv242 = sext i32 %165 to i64
  %166 = load i64, i64* %i, align 8
  %add243 = add i64 %conv242, %166
  %167 = load i32, i32* %h, align 4
  %conv244 = sext i32 %167 to i64
  %sub245 = sub i64 %add243, %conv244
  %add246 = add i64 %sub245, 3
  %sub247 = sub i64 %add246, 1
  %168 = load i32*, i32** %blocks, align 8
  %arrayidx248 = getelementptr i32, i32* %168, i64 %sub247
  %169 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp eq i32 %164, %169
  br i1 %cmp249, label %land.lhs.true.301, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %land.lhs.true.239, %land.lhs.true.236
  %170 = load i32, i32* %opcode, align 4
  %cmp252 = icmp eq i32 %170, 103
  br i1 %cmp252, label %land.lhs.true.257, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %lor.lhs.false.251
  %171 = load i32, i32* %opcode, align 4
  %cmp255 = icmp eq i32 %171, 104
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.360

land.lhs.true.257:                                ; preds = %lor.lhs.false.254, %lor.lhs.false.251
  %172 = load i64, i64* %i, align 8
  %add258 = add i64 %172, 3
  %173 = load i8*, i8** %codestr, align 8
  %arrayidx259 = getelementptr i8, i8* %173, i64 %add258
  %174 = load i8, i8* %arrayidx259, align 1
  %conv260 = zext i8 %174 to i32
  %cmp261 = icmp eq i32 %conv260, 107
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.360

land.lhs.true.263:                                ; preds = %land.lhs.true.257
  %175 = load i32, i32* %h, align 4
  %idxprom264 = sext i32 %175 to i64
  %176 = load i32*, i32** %blocks, align 8
  %arrayidx265 = getelementptr i32, i32* %176, i64 %idxprom264
  %177 = load i32, i32* %arrayidx265, align 4
  %178 = load i32, i32* %h, align 4
  %conv266 = sext i32 %178 to i64
  %179 = load i64, i64* %i, align 8
  %add267 = add i64 %conv266, %179
  %180 = load i32, i32* %h, align 4
  %conv268 = sext i32 %180 to i64
  %sub269 = sub i64 %add267, %conv268
  %add270 = add i64 %sub269, 6
  %sub271 = sub i64 %add270, 1
  %181 = load i32*, i32** %blocks, align 8
  %arrayidx272 = getelementptr i32, i32* %181, i64 %sub271
  %182 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp eq i32 %177, %182
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.360

land.lhs.true.275:                                ; preds = %land.lhs.true.263
  %183 = load i64, i64* %i, align 8
  %add276 = add i64 %183, 3
  %add277 = add i64 %add276, 2
  %184 = load i8*, i8** %codestr, align 8
  %arrayidx278 = getelementptr i8, i8* %184, i64 %add277
  %185 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %185 to i32
  %shl280 = shl i32 %conv279, 8
  %186 = load i64, i64* %i, align 8
  %add281 = add i64 %186, 3
  %add282 = add i64 %add281, 1
  %187 = load i8*, i8** %codestr, align 8
  %arrayidx283 = getelementptr i8, i8* %187, i64 %add282
  %188 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %188 to i32
  %add285 = add i32 %shl280, %conv284
  %cmp286 = icmp eq i32 %add285, 6
  br i1 %cmp286, label %land.lhs.true.301, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %land.lhs.true.275
  %189 = load i64, i64* %i, align 8
  %add289 = add i64 %189, 3
  %add290 = add i64 %add289, 2
  %190 = load i8*, i8** %codestr, align 8
  %arrayidx291 = getelementptr i8, i8* %190, i64 %add290
  %191 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %191 to i32
  %shl293 = shl i32 %conv292, 8
  %192 = load i64, i64* %i, align 8
  %add294 = add i64 %192, 3
  %add295 = add i64 %add294, 1
  %193 = load i8*, i8** %codestr, align 8
  %arrayidx296 = getelementptr i8, i8* %193, i64 %add295
  %194 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %194 to i32
  %add298 = add i32 %shl293, %conv297
  %cmp299 = icmp eq i32 %add298, 7
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.360

land.lhs.true.301:                                ; preds = %lor.lhs.false.288, %land.lhs.true.275, %land.lhs.true.239
  %195 = load i64, i64* %i, align 8
  %196 = load i8*, i8** %codestr, align 8
  %arrayidx302 = getelementptr i8, i8* %196, i64 %195
  %197 = load i64, i64* %j, align 8
  %198 = load %struct._object*, %struct._object** %consts.addr, align 8
  %199 = load i64, i64* %const_stack_top, align 8
  %200 = load i64, i64* %j, align 8
  %sub303 = sub i64 %199, %200
  %add304 = add i64 %sub303, 1
  %201 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx305 = getelementptr %struct._object*, %struct._object** %201, i64 %add304
  %call306 = call i32 @tuple_of_constants(i8* %arrayidx302, i64 %197, %struct._object* %198, %struct._object** %arrayidx305)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.360

if.then.308:                                      ; preds = %land.lhs.true.301
  %202 = load i32, i32* %h, align 4
  %idxprom309 = sext i32 %202 to i64
  %203 = load i8*, i8** %codestr, align 8
  %arrayidx310 = getelementptr i8, i8* %203, i64 %idxprom309
  %204 = load i64, i64* %i, align 8
  %205 = load i32, i32* %h, align 4
  %conv311 = sext i32 %205 to i64
  %sub312 = sub i64 %204, %conv311
  call void @llvm.memset.p0i8.i64(i8* %arrayidx310, i8 9, i64 %sub312, i32 1, i1 false)
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.308
  %206 = load i64, i64* %j, align 8
  %207 = load i64, i64* %const_stack_top, align 8
  %sub314 = sub i64 %207, %206
  store i64 %sub314, i64* %const_stack_top, align 8
  br label %do.end.315

do.end.315:                                       ; preds = %do.body.313
  br label %do.body.316

do.body.316:                                      ; preds = %do.end.315
  %208 = load i64, i64* %i, align 8
  %add318 = add i64 %208, 2
  %209 = load i8*, i8** %codestr, align 8
  %arrayidx319 = getelementptr i8, i8* %209, i64 %add318
  %210 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %210 to i32
  %shl321 = shl i32 %conv320, 8
  %211 = load i64, i64* %i, align 8
  %add322 = add i64 %211, 1
  %212 = load i8*, i8** %codestr, align 8
  %arrayidx323 = getelementptr i8, i8* %212, i64 %add322
  %213 = load i8, i8* %arrayidx323, align 1
  %conv324 = zext i8 %213 to i32
  %add325 = add i32 %shl321, %conv324
  %idxprom326 = sext i32 %add325 to i64
  %214 = load %struct._object*, %struct._object** %consts.addr, align 8
  %215 = bitcast %struct._object* %214 to %struct.PyListObject*
  %ob_item327 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %215, i32 0, i32 1
  %216 = load %struct._object**, %struct._object*** %ob_item327, align 8
  %arrayidx328 = getelementptr %struct._object*, %struct._object** %216, i64 %idxprom326
  %217 = load %struct._object*, %struct._object** %arrayidx328, align 8
  store %struct._object* %217, %struct._object** %_x317, align 8
  %218 = load i64, i64* %const_stack_top, align 8
  %inc329 = add i64 %218, 1
  store i64 %inc329, i64* %const_stack_top, align 8
  %219 = load i64, i64* %const_stack_size, align 8
  %cmp330 = icmp sge i64 %inc329, %219
  br i1 %cmp330, label %if.then.332, label %if.end.356

if.then.332:                                      ; preds = %do.body.316
  %220 = load i64, i64* %const_stack_size, align 8
  %mul333 = mul i64 %220, 2
  store i64 %mul333, i64* %const_stack_size, align 8
  %221 = load i64, i64* %const_stack_size, align 8
  %cmp334 = icmp ugt i64 %221, 1152921504606846975
  br i1 %cmp334, label %cond.true.336, label %cond.false.337

cond.true.336:                                    ; preds = %if.then.332
  br label %cond.end.340

cond.false.337:                                   ; preds = %if.then.332
  %222 = load %struct._object**, %struct._object*** %const_stack, align 8
  %223 = bitcast %struct._object** %222 to i8*
  %224 = load i64, i64* %const_stack_size, align 8
  %mul338 = mul i64 %224, 8
  %call339 = call i8* @PyMem_Realloc(i8* %223, i64 %mul338)
  %225 = bitcast i8* %call339 to %struct._object**
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.337, %cond.true.336
  %cond341 = phi %struct._object** [ null, %cond.true.336 ], [ %225, %cond.false.337 ]
  store %struct._object** %cond341, %struct._object*** %const_stack, align 8
  %226 = load i64, i64* %const_stack_size, align 8
  %cmp342 = icmp ugt i64 %226, 1152921504606846975
  br i1 %cmp342, label %cond.true.344, label %cond.false.345

cond.true.344:                                    ; preds = %cond.end.340
  br label %cond.end.348

cond.false.345:                                   ; preds = %cond.end.340
  %227 = load i64*, i64** %load_const_stack, align 8
  %228 = bitcast i64* %227 to i8*
  %229 = load i64, i64* %const_stack_size, align 8
  %mul346 = mul i64 %229, 8
  %call347 = call i8* @PyMem_Realloc(i8* %228, i64 %mul346)
  %230 = bitcast i8* %call347 to i64*
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.345, %cond.true.344
  %cond349 = phi i64* [ null, %cond.true.344 ], [ %230, %cond.false.345 ]
  store i64* %cond349, i64** %load_const_stack, align 8
  %231 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool350 = icmp ne %struct._object** %231, null
  br i1 %tobool350, label %lor.lhs.false.351, label %if.then.353

lor.lhs.false.351:                                ; preds = %cond.end.348
  %232 = load i64*, i64** %load_const_stack, align 8
  %tobool352 = icmp ne i64* %232, null
  br i1 %tobool352, label %if.end.355, label %if.then.353

if.then.353:                                      ; preds = %lor.lhs.false.351, %cond.end.348
  %call354 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.355:                                       ; preds = %lor.lhs.false.351
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %do.body.316
  %233 = load i64, i64* %i, align 8
  %234 = load i64, i64* %const_stack_top, align 8
  %235 = load i64*, i64** %load_const_stack, align 8
  %arrayidx357 = getelementptr i64, i64* %235, i64 %234
  store i64 %233, i64* %arrayidx357, align 8
  %236 = load %struct._object*, %struct._object** %_x317, align 8
  %237 = load i64, i64* %const_stack_top, align 8
  %238 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx358 = getelementptr %struct._object*, %struct._object** %238, i64 %237
  store %struct._object* %236, %struct._object** %arrayidx358, align 8
  store i32 1, i32* %in_consts, align 4
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.356
  br label %sw.epilog

if.end.360:                                       ; preds = %land.lhs.true.301, %lor.lhs.false.288, %land.lhs.true.263, %land.lhs.true.257, %lor.lhs.false.254, %land.lhs.true.232, %land.lhs.true, %cond.end.225
  %239 = load i64, i64* %i, align 8
  %add361 = add i64 %239, 3
  %240 = load i8*, i8** %codestr, align 8
  %arrayidx362 = getelementptr i8, i8* %240, i64 %add361
  %241 = load i8, i8* %arrayidx362, align 1
  %conv363 = zext i8 %241 to i32
  %cmp364 = icmp ne i32 %conv363, 92
  br i1 %cmp364, label %if.then.390, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %if.end.360
  %242 = load i64, i64* %i, align 8
  %243 = load i32*, i32** %blocks, align 8
  %arrayidx367 = getelementptr i32, i32* %243, i64 %242
  %244 = load i32, i32* %arrayidx367, align 4
  %245 = load i64, i64* %i, align 8
  %add368 = add i64 %245, 6
  %sub369 = sub i64 %add368, 1
  %246 = load i32*, i32** %blocks, align 8
  %arrayidx370 = getelementptr i32, i32* %246, i64 %sub369
  %247 = load i32, i32* %arrayidx370, align 4
  %cmp371 = icmp eq i32 %244, %247
  br i1 %cmp371, label %lor.lhs.false.373, label %if.then.390

lor.lhs.false.373:                                ; preds = %lor.lhs.false.366
  %248 = load i64, i64* %j, align 8
  %249 = load i64, i64* %i, align 8
  %add374 = add i64 %249, 3
  %add375 = add i64 %add374, 2
  %250 = load i8*, i8** %codestr, align 8
  %arrayidx376 = getelementptr i8, i8* %250, i64 %add375
  %251 = load i8, i8* %arrayidx376, align 1
  %conv377 = zext i8 %251 to i32
  %shl378 = shl i32 %conv377, 8
  %252 = load i64, i64* %i, align 8
  %add379 = add i64 %252, 3
  %add380 = add i64 %add379, 1
  %253 = load i8*, i8** %codestr, align 8
  %arrayidx381 = getelementptr i8, i8* %253, i64 %add380
  %254 = load i8, i8* %arrayidx381, align 1
  %conv382 = zext i8 %254 to i32
  %add383 = add i32 %shl378, %conv382
  %conv384 = sext i32 %add383 to i64
  %cmp385 = icmp ne i64 %248, %conv384
  br i1 %cmp385, label %if.then.390, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %lor.lhs.false.373
  %255 = load i32, i32* %opcode, align 4
  %cmp388 = icmp eq i32 %255, 104
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %lor.lhs.false.387, %lor.lhs.false.373, %lor.lhs.false.366, %if.end.360
  br label %for.inc

if.end.391:                                       ; preds = %lor.lhs.false.387
  %256 = load i64, i64* %j, align 8
  %cmp392 = icmp eq i64 %256, 1
  br i1 %cmp392, label %if.then.394, label %if.else

if.then.394:                                      ; preds = %if.end.391
  %257 = load i8*, i8** %codestr, align 8
  %258 = load i64, i64* %i, align 8
  %add.ptr395 = getelementptr i8, i8* %257, i64 %258
  call void @llvm.memset.p0i8.i64(i8* %add.ptr395, i8 9, i64 6, i32 1, i1 false)
  br label %if.end.417

if.else:                                          ; preds = %if.end.391
  %259 = load i64, i64* %j, align 8
  %cmp396 = icmp eq i64 %259, 2
  br i1 %cmp396, label %if.then.398, label %if.else.404

if.then.398:                                      ; preds = %if.else
  %260 = load i64, i64* %i, align 8
  %261 = load i8*, i8** %codestr, align 8
  %arrayidx399 = getelementptr i8, i8* %261, i64 %260
  store i8 2, i8* %arrayidx399, align 1
  %262 = load i8*, i8** %codestr, align 8
  %263 = load i64, i64* %i, align 8
  %add.ptr400 = getelementptr i8, i8* %262, i64 %263
  %add.ptr401 = getelementptr i8, i8* %add.ptr400, i64 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr401, i8 9, i64 5, i32 1, i1 false)
  br label %do.body.402

do.body.402:                                      ; preds = %if.then.398
  store i64 -1, i64* %const_stack_top, align 8
  br label %do.end.403

do.end.403:                                       ; preds = %do.body.402
  br label %if.end.416

if.else.404:                                      ; preds = %if.else
  %264 = load i64, i64* %j, align 8
  %cmp405 = icmp eq i64 %264, 3
  br i1 %cmp405, label %if.then.407, label %if.end.415

if.then.407:                                      ; preds = %if.else.404
  %265 = load i64, i64* %i, align 8
  %266 = load i8*, i8** %codestr, align 8
  %arrayidx408 = getelementptr i8, i8* %266, i64 %265
  store i8 3, i8* %arrayidx408, align 1
  %267 = load i64, i64* %i, align 8
  %add409 = add i64 %267, 1
  %268 = load i8*, i8** %codestr, align 8
  %arrayidx410 = getelementptr i8, i8* %268, i64 %add409
  store i8 2, i8* %arrayidx410, align 1
  %269 = load i8*, i8** %codestr, align 8
  %270 = load i64, i64* %i, align 8
  %add.ptr411 = getelementptr i8, i8* %269, i64 %270
  %add.ptr412 = getelementptr i8, i8* %add.ptr411, i64 2
  call void @llvm.memset.p0i8.i64(i8* %add.ptr412, i8 9, i64 4, i32 1, i1 false)
  br label %do.body.413

do.body.413:                                      ; preds = %if.then.407
  store i64 -1, i64* %const_stack_top, align 8
  br label %do.end.414

do.end.414:                                       ; preds = %do.body.413
  br label %if.end.415

if.end.415:                                       ; preds = %do.end.414, %if.else.404
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %do.end.403
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %if.then.394
  br label %sw.epilog

sw.bb.418:                                        ; preds = %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58
  %271 = load i64, i64* %const_stack_top, align 8
  %cmp419 = icmp sge i64 %271, 1
  br i1 %cmp419, label %cond.true.421, label %cond.false.425

cond.true.421:                                    ; preds = %sw.bb.418
  %272 = load i64, i64* %const_stack_top, align 8
  %sub422 = sub i64 %272, 2
  %add423 = add i64 %sub422, 1
  %273 = load i64*, i64** %load_const_stack, align 8
  %arrayidx424 = getelementptr i64, i64* %273, i64 %add423
  %274 = load i64, i64* %arrayidx424, align 8
  br label %cond.end.426

cond.false.425:                                   ; preds = %sw.bb.418
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.425, %cond.true.421
  %cond427 = phi i64 [ %274, %cond.true.421 ], [ -1, %cond.false.425 ]
  %conv428 = trunc i64 %cond427 to i32
  store i32 %conv428, i32* %h, align 4
  %275 = load i32, i32* %h, align 4
  %cmp429 = icmp sge i32 %275, 0
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.503

land.lhs.true.431:                                ; preds = %cond.end.426
  %276 = load i32, i32* %h, align 4
  %idxprom432 = sext i32 %276 to i64
  %277 = load i32*, i32** %blocks, align 8
  %arrayidx433 = getelementptr i32, i32* %277, i64 %idxprom432
  %278 = load i32, i32* %arrayidx433, align 4
  %279 = load i32, i32* %h, align 4
  %conv434 = sext i32 %279 to i64
  %280 = load i64, i64* %i, align 8
  %add435 = add i64 %conv434, %280
  %281 = load i32, i32* %h, align 4
  %conv436 = sext i32 %281 to i64
  %sub437 = sub i64 %add435, %conv436
  %add438 = add i64 %sub437, 1
  %sub439 = sub i64 %add438, 1
  %282 = load i32*, i32** %blocks, align 8
  %arrayidx440 = getelementptr i32, i32* %282, i64 %sub439
  %283 = load i32, i32* %arrayidx440, align 4
  %cmp441 = icmp eq i32 %278, %283
  br i1 %cmp441, label %land.lhs.true.443, label %if.end.503

land.lhs.true.443:                                ; preds = %land.lhs.true.431
  %284 = load i64, i64* %i, align 8
  %285 = load i8*, i8** %codestr, align 8
  %arrayidx444 = getelementptr i8, i8* %285, i64 %284
  %286 = load %struct._object*, %struct._object** %consts.addr, align 8
  %287 = load i64, i64* %const_stack_top, align 8
  %sub445 = sub i64 %287, 2
  %add446 = add i64 %sub445, 1
  %288 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx447 = getelementptr %struct._object*, %struct._object** %288, i64 %add446
  %call448 = call i32 @fold_binops_on_constants(i8* %arrayidx444, %struct._object* %286, %struct._object** %arrayidx447)
  %tobool449 = icmp ne i32 %call448, 0
  br i1 %tobool449, label %if.then.450, label %if.end.503

if.then.450:                                      ; preds = %land.lhs.true.443
  %289 = load i64, i64* %i, align 8
  %sub451 = sub i64 %289, 2
  store i64 %sub451, i64* %i, align 8
  %290 = load i32, i32* %h, align 4
  %idxprom452 = sext i32 %290 to i64
  %291 = load i8*, i8** %codestr, align 8
  %arrayidx453 = getelementptr i8, i8* %291, i64 %idxprom452
  %292 = load i64, i64* %i, align 8
  %293 = load i32, i32* %h, align 4
  %conv454 = sext i32 %293 to i64
  %sub455 = sub i64 %292, %conv454
  call void @llvm.memset.p0i8.i64(i8* %arrayidx453, i8 9, i64 %sub455, i32 1, i1 false)
  br label %do.body.456

do.body.456:                                      ; preds = %if.then.450
  %294 = load i64, i64* %const_stack_top, align 8
  %sub457 = sub i64 %294, 2
  store i64 %sub457, i64* %const_stack_top, align 8
  br label %do.end.458

do.end.458:                                       ; preds = %do.body.456
  br label %do.body.459

do.body.459:                                      ; preds = %do.end.458
  %295 = load i64, i64* %i, align 8
  %add461 = add i64 %295, 2
  %296 = load i8*, i8** %codestr, align 8
  %arrayidx462 = getelementptr i8, i8* %296, i64 %add461
  %297 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %297 to i32
  %shl464 = shl i32 %conv463, 8
  %298 = load i64, i64* %i, align 8
  %add465 = add i64 %298, 1
  %299 = load i8*, i8** %codestr, align 8
  %arrayidx466 = getelementptr i8, i8* %299, i64 %add465
  %300 = load i8, i8* %arrayidx466, align 1
  %conv467 = zext i8 %300 to i32
  %add468 = add i32 %shl464, %conv467
  %idxprom469 = sext i32 %add468 to i64
  %301 = load %struct._object*, %struct._object** %consts.addr, align 8
  %302 = bitcast %struct._object* %301 to %struct.PyListObject*
  %ob_item470 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %302, i32 0, i32 1
  %303 = load %struct._object**, %struct._object*** %ob_item470, align 8
  %arrayidx471 = getelementptr %struct._object*, %struct._object** %303, i64 %idxprom469
  %304 = load %struct._object*, %struct._object** %arrayidx471, align 8
  store %struct._object* %304, %struct._object** %_x460, align 8
  %305 = load i64, i64* %const_stack_top, align 8
  %inc472 = add i64 %305, 1
  store i64 %inc472, i64* %const_stack_top, align 8
  %306 = load i64, i64* %const_stack_size, align 8
  %cmp473 = icmp sge i64 %inc472, %306
  br i1 %cmp473, label %if.then.475, label %if.end.499

if.then.475:                                      ; preds = %do.body.459
  %307 = load i64, i64* %const_stack_size, align 8
  %mul476 = mul i64 %307, 2
  store i64 %mul476, i64* %const_stack_size, align 8
  %308 = load i64, i64* %const_stack_size, align 8
  %cmp477 = icmp ugt i64 %308, 1152921504606846975
  br i1 %cmp477, label %cond.true.479, label %cond.false.480

cond.true.479:                                    ; preds = %if.then.475
  br label %cond.end.483

cond.false.480:                                   ; preds = %if.then.475
  %309 = load %struct._object**, %struct._object*** %const_stack, align 8
  %310 = bitcast %struct._object** %309 to i8*
  %311 = load i64, i64* %const_stack_size, align 8
  %mul481 = mul i64 %311, 8
  %call482 = call i8* @PyMem_Realloc(i8* %310, i64 %mul481)
  %312 = bitcast i8* %call482 to %struct._object**
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.false.480, %cond.true.479
  %cond484 = phi %struct._object** [ null, %cond.true.479 ], [ %312, %cond.false.480 ]
  store %struct._object** %cond484, %struct._object*** %const_stack, align 8
  %313 = load i64, i64* %const_stack_size, align 8
  %cmp485 = icmp ugt i64 %313, 1152921504606846975
  br i1 %cmp485, label %cond.true.487, label %cond.false.488

cond.true.487:                                    ; preds = %cond.end.483
  br label %cond.end.491

cond.false.488:                                   ; preds = %cond.end.483
  %314 = load i64*, i64** %load_const_stack, align 8
  %315 = bitcast i64* %314 to i8*
  %316 = load i64, i64* %const_stack_size, align 8
  %mul489 = mul i64 %316, 8
  %call490 = call i8* @PyMem_Realloc(i8* %315, i64 %mul489)
  %317 = bitcast i8* %call490 to i64*
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.488, %cond.true.487
  %cond492 = phi i64* [ null, %cond.true.487 ], [ %317, %cond.false.488 ]
  store i64* %cond492, i64** %load_const_stack, align 8
  %318 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool493 = icmp ne %struct._object** %318, null
  br i1 %tobool493, label %lor.lhs.false.494, label %if.then.496

lor.lhs.false.494:                                ; preds = %cond.end.491
  %319 = load i64*, i64** %load_const_stack, align 8
  %tobool495 = icmp ne i64* %319, null
  br i1 %tobool495, label %if.end.498, label %if.then.496

if.then.496:                                      ; preds = %lor.lhs.false.494, %cond.end.491
  %call497 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.498:                                       ; preds = %lor.lhs.false.494
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %do.body.459
  %320 = load i64, i64* %i, align 8
  %321 = load i64, i64* %const_stack_top, align 8
  %322 = load i64*, i64** %load_const_stack, align 8
  %arrayidx500 = getelementptr i64, i64* %322, i64 %321
  store i64 %320, i64* %arrayidx500, align 8
  %323 = load %struct._object*, %struct._object** %_x460, align 8
  %324 = load i64, i64* %const_stack_top, align 8
  %325 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx501 = getelementptr %struct._object*, %struct._object** %325, i64 %324
  store %struct._object* %323, %struct._object** %arrayidx501, align 8
  store i32 1, i32* %in_consts, align 4
  br label %do.end.502

do.end.502:                                       ; preds = %if.end.499
  br label %if.end.503

if.end.503:                                       ; preds = %do.end.502, %land.lhs.true.443, %land.lhs.true.431, %cond.end.426
  br label %sw.epilog

sw.bb.504:                                        ; preds = %if.end.58, %if.end.58, %if.end.58
  %326 = load i64, i64* %const_stack_top, align 8
  %cmp505 = icmp sge i64 %326, 0
  br i1 %cmp505, label %cond.true.507, label %cond.false.511

cond.true.507:                                    ; preds = %sw.bb.504
  %327 = load i64, i64* %const_stack_top, align 8
  %sub508 = sub i64 %327, 1
  %add509 = add i64 %sub508, 1
  %328 = load i64*, i64** %load_const_stack, align 8
  %arrayidx510 = getelementptr i64, i64* %328, i64 %add509
  %329 = load i64, i64* %arrayidx510, align 8
  br label %cond.end.512

cond.false.511:                                   ; preds = %sw.bb.504
  br label %cond.end.512

cond.end.512:                                     ; preds = %cond.false.511, %cond.true.507
  %cond513 = phi i64 [ %329, %cond.true.507 ], [ -1, %cond.false.511 ]
  %conv514 = trunc i64 %cond513 to i32
  store i32 %conv514, i32* %h, align 4
  %330 = load i32, i32* %h, align 4
  %cmp515 = icmp sge i32 %330, 0
  br i1 %cmp515, label %land.lhs.true.517, label %if.end.584

land.lhs.true.517:                                ; preds = %cond.end.512
  %331 = load i32, i32* %h, align 4
  %idxprom518 = sext i32 %331 to i64
  %332 = load i32*, i32** %blocks, align 8
  %arrayidx519 = getelementptr i32, i32* %332, i64 %idxprom518
  %333 = load i32, i32* %arrayidx519, align 4
  %334 = load i32, i32* %h, align 4
  %conv520 = sext i32 %334 to i64
  %335 = load i64, i64* %i, align 8
  %add521 = add i64 %conv520, %335
  %336 = load i32, i32* %h, align 4
  %conv522 = sext i32 %336 to i64
  %sub523 = sub i64 %add521, %conv522
  %add524 = add i64 %sub523, 1
  %sub525 = sub i64 %add524, 1
  %337 = load i32*, i32** %blocks, align 8
  %arrayidx526 = getelementptr i32, i32* %337, i64 %sub525
  %338 = load i32, i32* %arrayidx526, align 4
  %cmp527 = icmp eq i32 %333, %338
  br i1 %cmp527, label %land.lhs.true.529, label %if.end.584

land.lhs.true.529:                                ; preds = %land.lhs.true.517
  %339 = load i64, i64* %i, align 8
  %sub530 = sub i64 %339, 3
  %340 = load i8*, i8** %codestr, align 8
  %arrayidx531 = getelementptr i8, i8* %340, i64 %sub530
  %341 = load %struct._object*, %struct._object** %consts.addr, align 8
  %342 = load i64, i64* %const_stack_top, align 8
  %343 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx532 = getelementptr %struct._object*, %struct._object** %343, i64 %342
  %344 = load %struct._object*, %struct._object** %arrayidx532, align 8
  %call533 = call i32 @fold_unaryops_on_constants(i8* %arrayidx531, %struct._object* %341, %struct._object* %344)
  %tobool534 = icmp ne i32 %call533, 0
  br i1 %tobool534, label %if.then.535, label %if.end.584

if.then.535:                                      ; preds = %land.lhs.true.529
  %345 = load i64, i64* %i, align 8
  %sub536 = sub i64 %345, 2
  store i64 %sub536, i64* %i, align 8
  br label %do.body.537

do.body.537:                                      ; preds = %if.then.535
  %346 = load i64, i64* %const_stack_top, align 8
  %sub538 = sub i64 %346, 1
  store i64 %sub538, i64* %const_stack_top, align 8
  br label %do.end.539

do.end.539:                                       ; preds = %do.body.537
  br label %do.body.540

do.body.540:                                      ; preds = %do.end.539
  %347 = load i64, i64* %i, align 8
  %add542 = add i64 %347, 2
  %348 = load i8*, i8** %codestr, align 8
  %arrayidx543 = getelementptr i8, i8* %348, i64 %add542
  %349 = load i8, i8* %arrayidx543, align 1
  %conv544 = zext i8 %349 to i32
  %shl545 = shl i32 %conv544, 8
  %350 = load i64, i64* %i, align 8
  %add546 = add i64 %350, 1
  %351 = load i8*, i8** %codestr, align 8
  %arrayidx547 = getelementptr i8, i8* %351, i64 %add546
  %352 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %352 to i32
  %add549 = add i32 %shl545, %conv548
  %idxprom550 = sext i32 %add549 to i64
  %353 = load %struct._object*, %struct._object** %consts.addr, align 8
  %354 = bitcast %struct._object* %353 to %struct.PyListObject*
  %ob_item551 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %354, i32 0, i32 1
  %355 = load %struct._object**, %struct._object*** %ob_item551, align 8
  %arrayidx552 = getelementptr %struct._object*, %struct._object** %355, i64 %idxprom550
  %356 = load %struct._object*, %struct._object** %arrayidx552, align 8
  store %struct._object* %356, %struct._object** %_x541, align 8
  %357 = load i64, i64* %const_stack_top, align 8
  %inc553 = add i64 %357, 1
  store i64 %inc553, i64* %const_stack_top, align 8
  %358 = load i64, i64* %const_stack_size, align 8
  %cmp554 = icmp sge i64 %inc553, %358
  br i1 %cmp554, label %if.then.556, label %if.end.580

if.then.556:                                      ; preds = %do.body.540
  %359 = load i64, i64* %const_stack_size, align 8
  %mul557 = mul i64 %359, 2
  store i64 %mul557, i64* %const_stack_size, align 8
  %360 = load i64, i64* %const_stack_size, align 8
  %cmp558 = icmp ugt i64 %360, 1152921504606846975
  br i1 %cmp558, label %cond.true.560, label %cond.false.561

cond.true.560:                                    ; preds = %if.then.556
  br label %cond.end.564

cond.false.561:                                   ; preds = %if.then.556
  %361 = load %struct._object**, %struct._object*** %const_stack, align 8
  %362 = bitcast %struct._object** %361 to i8*
  %363 = load i64, i64* %const_stack_size, align 8
  %mul562 = mul i64 %363, 8
  %call563 = call i8* @PyMem_Realloc(i8* %362, i64 %mul562)
  %364 = bitcast i8* %call563 to %struct._object**
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.false.561, %cond.true.560
  %cond565 = phi %struct._object** [ null, %cond.true.560 ], [ %364, %cond.false.561 ]
  store %struct._object** %cond565, %struct._object*** %const_stack, align 8
  %365 = load i64, i64* %const_stack_size, align 8
  %cmp566 = icmp ugt i64 %365, 1152921504606846975
  br i1 %cmp566, label %cond.true.568, label %cond.false.569

cond.true.568:                                    ; preds = %cond.end.564
  br label %cond.end.572

cond.false.569:                                   ; preds = %cond.end.564
  %366 = load i64*, i64** %load_const_stack, align 8
  %367 = bitcast i64* %366 to i8*
  %368 = load i64, i64* %const_stack_size, align 8
  %mul570 = mul i64 %368, 8
  %call571 = call i8* @PyMem_Realloc(i8* %367, i64 %mul570)
  %369 = bitcast i8* %call571 to i64*
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.569, %cond.true.568
  %cond573 = phi i64* [ null, %cond.true.568 ], [ %369, %cond.false.569 ]
  store i64* %cond573, i64** %load_const_stack, align 8
  %370 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool574 = icmp ne %struct._object** %370, null
  br i1 %tobool574, label %lor.lhs.false.575, label %if.then.577

lor.lhs.false.575:                                ; preds = %cond.end.572
  %371 = load i64*, i64** %load_const_stack, align 8
  %tobool576 = icmp ne i64* %371, null
  br i1 %tobool576, label %if.end.579, label %if.then.577

if.then.577:                                      ; preds = %lor.lhs.false.575, %cond.end.572
  %call578 = call %struct._object* @PyErr_NoMemory()
  br label %exitError

if.end.579:                                       ; preds = %lor.lhs.false.575
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %do.body.540
  %372 = load i64, i64* %i, align 8
  %373 = load i64, i64* %const_stack_top, align 8
  %374 = load i64*, i64** %load_const_stack, align 8
  %arrayidx581 = getelementptr i64, i64* %374, i64 %373
  store i64 %372, i64* %arrayidx581, align 8
  %375 = load %struct._object*, %struct._object** %_x541, align 8
  %376 = load i64, i64* %const_stack_top, align 8
  %377 = load %struct._object**, %struct._object*** %const_stack, align 8
  %arrayidx582 = getelementptr %struct._object*, %struct._object** %377, i64 %376
  store %struct._object* %375, %struct._object** %arrayidx582, align 8
  store i32 1, i32* %in_consts, align 4
  br label %do.end.583

do.end.583:                                       ; preds = %if.end.580
  br label %if.end.584

if.end.584:                                       ; preds = %do.end.583, %land.lhs.true.529, %land.lhs.true.517, %cond.end.512
  br label %sw.epilog

sw.bb.585:                                        ; preds = %if.end.58, %if.end.58
  %378 = load i64, i64* %i, align 8
  %add586 = add i64 %378, 2
  %379 = load i8*, i8** %codestr, align 8
  %arrayidx587 = getelementptr i8, i8* %379, i64 %add586
  %380 = load i8, i8* %arrayidx587, align 1
  %conv588 = zext i8 %380 to i32
  %shl589 = shl i32 %conv588, 8
  %381 = load i64, i64* %i, align 8
  %add590 = add i64 %381, 1
  %382 = load i8*, i8** %codestr, align 8
  %arrayidx591 = getelementptr i8, i8* %382, i64 %add590
  %383 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %383 to i32
  %add593 = add i32 %shl589, %conv592
  %conv594 = sext i32 %add593 to i64
  %384 = load i64, i64* %i, align 8
  %385 = load i8*, i8** %codestr, align 8
  %arrayidx595 = getelementptr i8, i8* %385, i64 %384
  %386 = load i8, i8* %arrayidx595, align 1
  %conv596 = zext i8 %386 to i32
  %cmp597 = icmp eq i32 %conv596, 113
  br i1 %cmp597, label %cond.true.624, label %lor.lhs.false.599

lor.lhs.false.599:                                ; preds = %sw.bb.585
  %387 = load i64, i64* %i, align 8
  %388 = load i8*, i8** %codestr, align 8
  %arrayidx600 = getelementptr i8, i8* %388, i64 %387
  %389 = load i8, i8* %arrayidx600, align 1
  %conv601 = zext i8 %389 to i32
  %cmp602 = icmp eq i32 %conv601, 119
  br i1 %cmp602, label %cond.true.624, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %lor.lhs.false.599
  %390 = load i64, i64* %i, align 8
  %391 = load i8*, i8** %codestr, align 8
  %arrayidx605 = getelementptr i8, i8* %391, i64 %390
  %392 = load i8, i8* %arrayidx605, align 1
  %conv606 = zext i8 %392 to i32
  %cmp607 = icmp eq i32 %conv606, 114
  br i1 %cmp607, label %cond.true.624, label %lor.lhs.false.609

lor.lhs.false.609:                                ; preds = %lor.lhs.false.604
  %393 = load i64, i64* %i, align 8
  %394 = load i8*, i8** %codestr, align 8
  %arrayidx610 = getelementptr i8, i8* %394, i64 %393
  %395 = load i8, i8* %arrayidx610, align 1
  %conv611 = zext i8 %395 to i32
  %cmp612 = icmp eq i32 %conv611, 115
  br i1 %cmp612, label %cond.true.624, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %lor.lhs.false.609
  %396 = load i64, i64* %i, align 8
  %397 = load i8*, i8** %codestr, align 8
  %arrayidx615 = getelementptr i8, i8* %397, i64 %396
  %398 = load i8, i8* %arrayidx615, align 1
  %conv616 = zext i8 %398 to i32
  %cmp617 = icmp eq i32 %conv616, 111
  br i1 %cmp617, label %cond.true.624, label %lor.lhs.false.619

lor.lhs.false.619:                                ; preds = %lor.lhs.false.614
  %399 = load i64, i64* %i, align 8
  %400 = load i8*, i8** %codestr, align 8
  %arrayidx620 = getelementptr i8, i8* %400, i64 %399
  %401 = load i8, i8* %arrayidx620, align 1
  %conv621 = zext i8 %401 to i32
  %cmp622 = icmp eq i32 %conv621, 112
  br i1 %cmp622, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %lor.lhs.false.619, %lor.lhs.false.614, %lor.lhs.false.609, %lor.lhs.false.604, %lor.lhs.false.599, %sw.bb.585
  br label %cond.end.627

cond.false.625:                                   ; preds = %lor.lhs.false.619
  %402 = load i64, i64* %i, align 8
  %add626 = add i64 %402, 3
  br label %cond.end.627

cond.end.627:                                     ; preds = %cond.false.625, %cond.true.624
  %cond628 = phi i64 [ 0, %cond.true.624 ], [ %add626, %cond.false.625 ]
  %add629 = add i64 %conv594, %cond628
  %conv630 = trunc i64 %add629 to i32
  store i32 %conv630, i32* %tgt, align 4
  %403 = load i32, i32* %tgt, align 4
  %idxprom631 = sext i32 %403 to i64
  %404 = load i8*, i8** %codestr, align 8
  %arrayidx632 = getelementptr i8, i8* %404, i64 %idxprom631
  %405 = load i8, i8* %arrayidx632, align 1
  %conv633 = zext i8 %405 to i64
  store i64 %conv633, i64* %j, align 8
  %406 = load i64, i64* %j, align 8
  %cmp634 = icmp eq i64 %406, 114
  br i1 %cmp634, label %if.then.645, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %cond.end.627
  %407 = load i64, i64* %j, align 8
  %cmp637 = icmp eq i64 %407, 115
  br i1 %cmp637, label %if.then.645, label %lor.lhs.false.639

lor.lhs.false.639:                                ; preds = %lor.lhs.false.636
  %408 = load i64, i64* %j, align 8
  %cmp640 = icmp eq i64 %408, 111
  br i1 %cmp640, label %if.then.645, label %lor.lhs.false.642

lor.lhs.false.642:                                ; preds = %lor.lhs.false.639
  %409 = load i64, i64* %j, align 8
  %cmp643 = icmp eq i64 %409, 112
  br i1 %cmp643, label %if.then.645, label %if.end.742

if.then.645:                                      ; preds = %lor.lhs.false.642, %lor.lhs.false.639, %lor.lhs.false.636, %cond.end.627
  %410 = load i64, i64* %j, align 8
  %cmp646 = icmp eq i64 %410, 115
  br i1 %cmp646, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.645
  %411 = load i64, i64* %j, align 8
  %cmp648 = icmp eq i64 %411, 112
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.645
  %412 = phi i1 [ true, %if.then.645 ], [ %cmp648, %lor.rhs ]
  %lor.ext = zext i1 %412 to i32
  %413 = load i32, i32* %opcode, align 4
  %cmp650 = icmp eq i32 %413, 115
  br i1 %cmp650, label %lor.end.655, label %lor.rhs.652

lor.rhs.652:                                      ; preds = %lor.end
  %414 = load i32, i32* %opcode, align 4
  %cmp653 = icmp eq i32 %414, 112
  br label %lor.end.655

lor.end.655:                                      ; preds = %lor.rhs.652, %lor.end
  %415 = phi i1 [ true, %lor.end ], [ %cmp653, %lor.rhs.652 ]
  %lor.ext656 = zext i1 %415 to i32
  %cmp657 = icmp eq i32 %lor.ext, %lor.ext656
  br i1 %cmp657, label %if.then.659, label %if.else.721

if.then.659:                                      ; preds = %lor.end.655
  %416 = load i32, i32* %tgt, align 4
  %add660 = add i32 %416, 2
  %idxprom661 = sext i32 %add660 to i64
  %417 = load i8*, i8** %codestr, align 8
  %arrayidx662 = getelementptr i8, i8* %417, i64 %idxprom661
  %418 = load i8, i8* %arrayidx662, align 1
  %conv663 = zext i8 %418 to i32
  %shl664 = shl i32 %conv663, 8
  %419 = load i32, i32* %tgt, align 4
  %add665 = add i32 %419, 1
  %idxprom666 = sext i32 %add665 to i64
  %420 = load i8*, i8** %codestr, align 8
  %arrayidx667 = getelementptr i8, i8* %420, i64 %idxprom666
  %421 = load i8, i8* %arrayidx667, align 1
  %conv668 = zext i8 %421 to i32
  %add669 = add i32 %shl664, %conv668
  %422 = load i32, i32* %tgt, align 4
  %idxprom670 = sext i32 %422 to i64
  %423 = load i8*, i8** %codestr, align 8
  %arrayidx671 = getelementptr i8, i8* %423, i64 %idxprom670
  %424 = load i8, i8* %arrayidx671, align 1
  %conv672 = zext i8 %424 to i32
  %cmp673 = icmp eq i32 %conv672, 113
  br i1 %cmp673, label %cond.true.705, label %lor.lhs.false.675

lor.lhs.false.675:                                ; preds = %if.then.659
  %425 = load i32, i32* %tgt, align 4
  %idxprom676 = sext i32 %425 to i64
  %426 = load i8*, i8** %codestr, align 8
  %arrayidx677 = getelementptr i8, i8* %426, i64 %idxprom676
  %427 = load i8, i8* %arrayidx677, align 1
  %conv678 = zext i8 %427 to i32
  %cmp679 = icmp eq i32 %conv678, 119
  br i1 %cmp679, label %cond.true.705, label %lor.lhs.false.681

lor.lhs.false.681:                                ; preds = %lor.lhs.false.675
  %428 = load i32, i32* %tgt, align 4
  %idxprom682 = sext i32 %428 to i64
  %429 = load i8*, i8** %codestr, align 8
  %arrayidx683 = getelementptr i8, i8* %429, i64 %idxprom682
  %430 = load i8, i8* %arrayidx683, align 1
  %conv684 = zext i8 %430 to i32
  %cmp685 = icmp eq i32 %conv684, 114
  br i1 %cmp685, label %cond.true.705, label %lor.lhs.false.687

lor.lhs.false.687:                                ; preds = %lor.lhs.false.681
  %431 = load i32, i32* %tgt, align 4
  %idxprom688 = sext i32 %431 to i64
  %432 = load i8*, i8** %codestr, align 8
  %arrayidx689 = getelementptr i8, i8* %432, i64 %idxprom688
  %433 = load i8, i8* %arrayidx689, align 1
  %conv690 = zext i8 %433 to i32
  %cmp691 = icmp eq i32 %conv690, 115
  br i1 %cmp691, label %cond.true.705, label %lor.lhs.false.693

lor.lhs.false.693:                                ; preds = %lor.lhs.false.687
  %434 = load i32, i32* %tgt, align 4
  %idxprom694 = sext i32 %434 to i64
  %435 = load i8*, i8** %codestr, align 8
  %arrayidx695 = getelementptr i8, i8* %435, i64 %idxprom694
  %436 = load i8, i8* %arrayidx695, align 1
  %conv696 = zext i8 %436 to i32
  %cmp697 = icmp eq i32 %conv696, 111
  br i1 %cmp697, label %cond.true.705, label %lor.lhs.false.699

lor.lhs.false.699:                                ; preds = %lor.lhs.false.693
  %437 = load i32, i32* %tgt, align 4
  %idxprom700 = sext i32 %437 to i64
  %438 = load i8*, i8** %codestr, align 8
  %arrayidx701 = getelementptr i8, i8* %438, i64 %idxprom700
  %439 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %439 to i32
  %cmp703 = icmp eq i32 %conv702, 112
  br i1 %cmp703, label %cond.true.705, label %cond.false.706

cond.true.705:                                    ; preds = %lor.lhs.false.699, %lor.lhs.false.693, %lor.lhs.false.687, %lor.lhs.false.681, %lor.lhs.false.675, %if.then.659
  br label %cond.end.708

cond.false.706:                                   ; preds = %lor.lhs.false.699
  %440 = load i32, i32* %tgt, align 4
  %add707 = add i32 %440, 3
  br label %cond.end.708

cond.end.708:                                     ; preds = %cond.false.706, %cond.true.705
  %cond709 = phi i32 [ 0, %cond.true.705 ], [ %add707, %cond.false.706 ]
  %add710 = add i32 %add669, %cond709
  store i32 %add710, i32* %tgttgt, align 4
  %441 = load i64, i64* %j, align 8
  %conv711 = trunc i64 %441 to i8
  %442 = load i64, i64* %i, align 8
  %443 = load i8*, i8** %codestr, align 8
  %arrayidx712 = getelementptr i8, i8* %443, i64 %442
  store i8 %conv711, i8* %arrayidx712, align 1
  %444 = load i32, i32* %tgttgt, align 4
  %shr713 = ashr i32 %444, 8
  %conv714 = trunc i32 %shr713 to i8
  %445 = load i64, i64* %i, align 8
  %add715 = add i64 %445, 2
  %446 = load i8*, i8** %codestr, align 8
  %arrayidx716 = getelementptr i8, i8* %446, i64 %add715
  store i8 %conv714, i8* %arrayidx716, align 1
  %447 = load i32, i32* %tgttgt, align 4
  %and717 = and i32 %447, 255
  %conv718 = trunc i32 %and717 to i8
  %448 = load i64, i64* %i, align 8
  %add719 = add i64 %448, 1
  %449 = load i8*, i8** %codestr, align 8
  %arrayidx720 = getelementptr i8, i8* %449, i64 %add719
  store i8 %conv718, i8* %arrayidx720, align 1
  br label %reoptimize_current

if.else.721:                                      ; preds = %lor.end.655
  %450 = load i32, i32* %opcode, align 4
  %cmp722 = icmp eq i32 %450, 115
  br i1 %cmp722, label %if.then.727, label %lor.lhs.false.724

lor.lhs.false.724:                                ; preds = %if.else.721
  %451 = load i32, i32* %opcode, align 4
  %cmp725 = icmp eq i32 %451, 112
  br i1 %cmp725, label %if.then.727, label %if.else.729

if.then.727:                                      ; preds = %lor.lhs.false.724, %if.else.721
  %452 = load i64, i64* %i, align 8
  %453 = load i8*, i8** %codestr, align 8
  %arrayidx728 = getelementptr i8, i8* %453, i64 %452
  store i8 115, i8* %arrayidx728, align 1
  br label %if.end.731

if.else.729:                                      ; preds = %lor.lhs.false.724
  %454 = load i64, i64* %i, align 8
  %455 = load i8*, i8** %codestr, align 8
  %arrayidx730 = getelementptr i8, i8* %455, i64 %454
  store i8 114, i8* %arrayidx730, align 1
  br label %if.end.731

if.end.731:                                       ; preds = %if.else.729, %if.then.727
  %456 = load i32, i32* %tgt, align 4
  %add732 = add i32 %456, 3
  %shr733 = ashr i32 %add732, 8
  %conv734 = trunc i32 %shr733 to i8
  %457 = load i64, i64* %i, align 8
  %add735 = add i64 %457, 2
  %458 = load i8*, i8** %codestr, align 8
  %arrayidx736 = getelementptr i8, i8* %458, i64 %add735
  store i8 %conv734, i8* %arrayidx736, align 1
  %459 = load i32, i32* %tgt, align 4
  %add737 = add i32 %459, 3
  %and738 = and i32 %add737, 255
  %conv739 = trunc i32 %and738 to i8
  %460 = load i64, i64* %i, align 8
  %add740 = add i64 %460, 1
  %461 = load i8*, i8** %codestr, align 8
  %arrayidx741 = getelementptr i8, i8* %461, i64 %add740
  store i8 %conv739, i8* %arrayidx741, align 1
  br label %reoptimize_current

if.end.742:                                       ; preds = %lor.lhs.false.642
  br label %sw.bb.743

sw.bb.743:                                        ; preds = %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.58, %if.end.742
  %462 = load i64, i64* %i, align 8
  %add744 = add i64 %462, 2
  %463 = load i8*, i8** %codestr, align 8
  %arrayidx745 = getelementptr i8, i8* %463, i64 %add744
  %464 = load i8, i8* %arrayidx745, align 1
  %conv746 = zext i8 %464 to i32
  %shl747 = shl i32 %conv746, 8
  %465 = load i64, i64* %i, align 8
  %add748 = add i64 %465, 1
  %466 = load i8*, i8** %codestr, align 8
  %arrayidx749 = getelementptr i8, i8* %466, i64 %add748
  %467 = load i8, i8* %arrayidx749, align 1
  %conv750 = zext i8 %467 to i32
  %add751 = add i32 %shl747, %conv750
  %conv752 = sext i32 %add751 to i64
  %468 = load i64, i64* %i, align 8
  %469 = load i8*, i8** %codestr, align 8
  %arrayidx753 = getelementptr i8, i8* %469, i64 %468
  %470 = load i8, i8* %arrayidx753, align 1
  %conv754 = zext i8 %470 to i32
  %cmp755 = icmp eq i32 %conv754, 113
  br i1 %cmp755, label %cond.true.782, label %lor.lhs.false.757

lor.lhs.false.757:                                ; preds = %sw.bb.743
  %471 = load i64, i64* %i, align 8
  %472 = load i8*, i8** %codestr, align 8
  %arrayidx758 = getelementptr i8, i8* %472, i64 %471
  %473 = load i8, i8* %arrayidx758, align 1
  %conv759 = zext i8 %473 to i32
  %cmp760 = icmp eq i32 %conv759, 119
  br i1 %cmp760, label %cond.true.782, label %lor.lhs.false.762

lor.lhs.false.762:                                ; preds = %lor.lhs.false.757
  %474 = load i64, i64* %i, align 8
  %475 = load i8*, i8** %codestr, align 8
  %arrayidx763 = getelementptr i8, i8* %475, i64 %474
  %476 = load i8, i8* %arrayidx763, align 1
  %conv764 = zext i8 %476 to i32
  %cmp765 = icmp eq i32 %conv764, 114
  br i1 %cmp765, label %cond.true.782, label %lor.lhs.false.767

lor.lhs.false.767:                                ; preds = %lor.lhs.false.762
  %477 = load i64, i64* %i, align 8
  %478 = load i8*, i8** %codestr, align 8
  %arrayidx768 = getelementptr i8, i8* %478, i64 %477
  %479 = load i8, i8* %arrayidx768, align 1
  %conv769 = zext i8 %479 to i32
  %cmp770 = icmp eq i32 %conv769, 115
  br i1 %cmp770, label %cond.true.782, label %lor.lhs.false.772

lor.lhs.false.772:                                ; preds = %lor.lhs.false.767
  %480 = load i64, i64* %i, align 8
  %481 = load i8*, i8** %codestr, align 8
  %arrayidx773 = getelementptr i8, i8* %481, i64 %480
  %482 = load i8, i8* %arrayidx773, align 1
  %conv774 = zext i8 %482 to i32
  %cmp775 = icmp eq i32 %conv774, 111
  br i1 %cmp775, label %cond.true.782, label %lor.lhs.false.777

lor.lhs.false.777:                                ; preds = %lor.lhs.false.772
  %483 = load i64, i64* %i, align 8
  %484 = load i8*, i8** %codestr, align 8
  %arrayidx778 = getelementptr i8, i8* %484, i64 %483
  %485 = load i8, i8* %arrayidx778, align 1
  %conv779 = zext i8 %485 to i32
  %cmp780 = icmp eq i32 %conv779, 112
  br i1 %cmp780, label %cond.true.782, label %cond.false.783

cond.true.782:                                    ; preds = %lor.lhs.false.777, %lor.lhs.false.772, %lor.lhs.false.767, %lor.lhs.false.762, %lor.lhs.false.757, %sw.bb.743
  br label %cond.end.785

cond.false.783:                                   ; preds = %lor.lhs.false.777
  %486 = load i64, i64* %i, align 8
  %add784 = add i64 %486, 3
  br label %cond.end.785

cond.end.785:                                     ; preds = %cond.false.783, %cond.true.782
  %cond786 = phi i64 [ 0, %cond.true.782 ], [ %add784, %cond.false.783 ]
  %add787 = add i64 %conv752, %cond786
  %conv788 = trunc i64 %add787 to i32
  store i32 %conv788, i32* %tgt, align 4
  %487 = load i32, i32* %opcode, align 4
  %cmp789 = icmp eq i32 %487, 113
  br i1 %cmp789, label %land.lhs.true.794, label %lor.lhs.false.791

lor.lhs.false.791:                                ; preds = %cond.end.785
  %488 = load i32, i32* %opcode, align 4
  %cmp792 = icmp eq i32 %488, 110
  br i1 %cmp792, label %land.lhs.true.794, label %if.end.804

land.lhs.true.794:                                ; preds = %lor.lhs.false.791, %cond.end.785
  %489 = load i32, i32* %tgt, align 4
  %idxprom795 = sext i32 %489 to i64
  %490 = load i8*, i8** %codestr, align 8
  %arrayidx796 = getelementptr i8, i8* %490, i64 %idxprom795
  %491 = load i8, i8* %arrayidx796, align 1
  %conv797 = zext i8 %491 to i32
  %cmp798 = icmp eq i32 %conv797, 83
  br i1 %cmp798, label %if.then.800, label %if.end.804

if.then.800:                                      ; preds = %land.lhs.true.794
  %492 = load i64, i64* %i, align 8
  %493 = load i8*, i8** %codestr, align 8
  %arrayidx801 = getelementptr i8, i8* %493, i64 %492
  store i8 83, i8* %arrayidx801, align 1
  %494 = load i8*, i8** %codestr, align 8
  %495 = load i64, i64* %i, align 8
  %add.ptr802 = getelementptr i8, i8* %494, i64 %495
  %add.ptr803 = getelementptr i8, i8* %add.ptr802, i64 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr803, i8 9, i64 2, i32 1, i1 false)
  br label %for.inc

if.end.804:                                       ; preds = %land.lhs.true.794, %lor.lhs.false.791
  %496 = load i32, i32* %tgt, align 4
  %idxprom805 = sext i32 %496 to i64
  %497 = load i8*, i8** %codestr, align 8
  %arrayidx806 = getelementptr i8, i8* %497, i64 %idxprom805
  %498 = load i8, i8* %arrayidx806, align 1
  %conv807 = zext i8 %498 to i32
  %cmp808 = icmp eq i32 %conv807, 113
  br i1 %cmp808, label %if.end.817, label %lor.lhs.false.810

lor.lhs.false.810:                                ; preds = %if.end.804
  %499 = load i32, i32* %tgt, align 4
  %idxprom811 = sext i32 %499 to i64
  %500 = load i8*, i8** %codestr, align 8
  %arrayidx812 = getelementptr i8, i8* %500, i64 %idxprom811
  %501 = load i8, i8* %arrayidx812, align 1
  %conv813 = zext i8 %501 to i32
  %cmp814 = icmp eq i32 %conv813, 110
  br i1 %cmp814, label %if.end.817, label %if.then.816

if.then.816:                                      ; preds = %lor.lhs.false.810
  br label %for.inc

if.end.817:                                       ; preds = %lor.lhs.false.810, %if.end.804
  %502 = load i32, i32* %tgt, align 4
  %add818 = add i32 %502, 2
  %idxprom819 = sext i32 %add818 to i64
  %503 = load i8*, i8** %codestr, align 8
  %arrayidx820 = getelementptr i8, i8* %503, i64 %idxprom819
  %504 = load i8, i8* %arrayidx820, align 1
  %conv821 = zext i8 %504 to i32
  %shl822 = shl i32 %conv821, 8
  %505 = load i32, i32* %tgt, align 4
  %add823 = add i32 %505, 1
  %idxprom824 = sext i32 %add823 to i64
  %506 = load i8*, i8** %codestr, align 8
  %arrayidx825 = getelementptr i8, i8* %506, i64 %idxprom824
  %507 = load i8, i8* %arrayidx825, align 1
  %conv826 = zext i8 %507 to i32
  %add827 = add i32 %shl822, %conv826
  %508 = load i32, i32* %tgt, align 4
  %idxprom828 = sext i32 %508 to i64
  %509 = load i8*, i8** %codestr, align 8
  %arrayidx829 = getelementptr i8, i8* %509, i64 %idxprom828
  %510 = load i8, i8* %arrayidx829, align 1
  %conv830 = zext i8 %510 to i32
  %cmp831 = icmp eq i32 %conv830, 113
  br i1 %cmp831, label %cond.true.863, label %lor.lhs.false.833

lor.lhs.false.833:                                ; preds = %if.end.817
  %511 = load i32, i32* %tgt, align 4
  %idxprom834 = sext i32 %511 to i64
  %512 = load i8*, i8** %codestr, align 8
  %arrayidx835 = getelementptr i8, i8* %512, i64 %idxprom834
  %513 = load i8, i8* %arrayidx835, align 1
  %conv836 = zext i8 %513 to i32
  %cmp837 = icmp eq i32 %conv836, 119
  br i1 %cmp837, label %cond.true.863, label %lor.lhs.false.839

lor.lhs.false.839:                                ; preds = %lor.lhs.false.833
  %514 = load i32, i32* %tgt, align 4
  %idxprom840 = sext i32 %514 to i64
  %515 = load i8*, i8** %codestr, align 8
  %arrayidx841 = getelementptr i8, i8* %515, i64 %idxprom840
  %516 = load i8, i8* %arrayidx841, align 1
  %conv842 = zext i8 %516 to i32
  %cmp843 = icmp eq i32 %conv842, 114
  br i1 %cmp843, label %cond.true.863, label %lor.lhs.false.845

lor.lhs.false.845:                                ; preds = %lor.lhs.false.839
  %517 = load i32, i32* %tgt, align 4
  %idxprom846 = sext i32 %517 to i64
  %518 = load i8*, i8** %codestr, align 8
  %arrayidx847 = getelementptr i8, i8* %518, i64 %idxprom846
  %519 = load i8, i8* %arrayidx847, align 1
  %conv848 = zext i8 %519 to i32
  %cmp849 = icmp eq i32 %conv848, 115
  br i1 %cmp849, label %cond.true.863, label %lor.lhs.false.851

lor.lhs.false.851:                                ; preds = %lor.lhs.false.845
  %520 = load i32, i32* %tgt, align 4
  %idxprom852 = sext i32 %520 to i64
  %521 = load i8*, i8** %codestr, align 8
  %arrayidx853 = getelementptr i8, i8* %521, i64 %idxprom852
  %522 = load i8, i8* %arrayidx853, align 1
  %conv854 = zext i8 %522 to i32
  %cmp855 = icmp eq i32 %conv854, 111
  br i1 %cmp855, label %cond.true.863, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %lor.lhs.false.851
  %523 = load i32, i32* %tgt, align 4
  %idxprom858 = sext i32 %523 to i64
  %524 = load i8*, i8** %codestr, align 8
  %arrayidx859 = getelementptr i8, i8* %524, i64 %idxprom858
  %525 = load i8, i8* %arrayidx859, align 1
  %conv860 = zext i8 %525 to i32
  %cmp861 = icmp eq i32 %conv860, 112
  br i1 %cmp861, label %cond.true.863, label %cond.false.864

cond.true.863:                                    ; preds = %lor.lhs.false.857, %lor.lhs.false.851, %lor.lhs.false.845, %lor.lhs.false.839, %lor.lhs.false.833, %if.end.817
  br label %cond.end.866

cond.false.864:                                   ; preds = %lor.lhs.false.857
  %526 = load i32, i32* %tgt, align 4
  %add865 = add i32 %526, 3
  br label %cond.end.866

cond.end.866:                                     ; preds = %cond.false.864, %cond.true.863
  %cond867 = phi i32 [ 0, %cond.true.863 ], [ %add865, %cond.false.864 ]
  %add868 = add i32 %add827, %cond867
  store i32 %add868, i32* %tgttgt, align 4
  %527 = load i32, i32* %opcode, align 4
  %cmp869 = icmp eq i32 %527, 110
  br i1 %cmp869, label %if.then.871, label %if.end.872

if.then.871:                                      ; preds = %cond.end.866
  store i32 113, i32* %opcode, align 4
  br label %if.end.872

if.end.872:                                       ; preds = %if.then.871, %cond.end.866
  %528 = load i32, i32* %opcode, align 4
  %cmp873 = icmp eq i32 %528, 113
  br i1 %cmp873, label %if.end.895, label %lor.lhs.false.875

lor.lhs.false.875:                                ; preds = %if.end.872
  %529 = load i32, i32* %opcode, align 4
  %cmp876 = icmp eq i32 %529, 119
  br i1 %cmp876, label %if.end.895, label %lor.lhs.false.878

lor.lhs.false.878:                                ; preds = %lor.lhs.false.875
  %530 = load i32, i32* %opcode, align 4
  %cmp879 = icmp eq i32 %530, 114
  br i1 %cmp879, label %if.end.895, label %lor.lhs.false.881

lor.lhs.false.881:                                ; preds = %lor.lhs.false.878
  %531 = load i32, i32* %opcode, align 4
  %cmp882 = icmp eq i32 %531, 115
  br i1 %cmp882, label %if.end.895, label %lor.lhs.false.884

lor.lhs.false.884:                                ; preds = %lor.lhs.false.881
  %532 = load i32, i32* %opcode, align 4
  %cmp885 = icmp eq i32 %532, 111
  br i1 %cmp885, label %if.end.895, label %lor.lhs.false.887

lor.lhs.false.887:                                ; preds = %lor.lhs.false.884
  %533 = load i32, i32* %opcode, align 4
  %cmp888 = icmp eq i32 %533, 112
  br i1 %cmp888, label %if.end.895, label %if.then.890

if.then.890:                                      ; preds = %lor.lhs.false.887
  %534 = load i64, i64* %i, align 8
  %add891 = add i64 %534, 3
  %535 = load i32, i32* %tgttgt, align 4
  %conv892 = sext i32 %535 to i64
  %sub893 = sub i64 %conv892, %add891
  %conv894 = trunc i64 %sub893 to i32
  store i32 %conv894, i32* %tgttgt, align 4
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.890, %lor.lhs.false.887, %lor.lhs.false.884, %lor.lhs.false.881, %lor.lhs.false.878, %lor.lhs.false.875, %if.end.872
  %536 = load i32, i32* %tgttgt, align 4
  %cmp896 = icmp slt i32 %536, 0
  br i1 %cmp896, label %if.then.898, label %if.end.899

if.then.898:                                      ; preds = %if.end.895
  br label %for.inc

if.end.899:                                       ; preds = %if.end.895
  %537 = load i32, i32* %opcode, align 4
  %conv900 = trunc i32 %537 to i8
  %538 = load i64, i64* %i, align 8
  %539 = load i8*, i8** %codestr, align 8
  %arrayidx901 = getelementptr i8, i8* %539, i64 %538
  store i8 %conv900, i8* %arrayidx901, align 1
  %540 = load i32, i32* %tgttgt, align 4
  %shr902 = ashr i32 %540, 8
  %conv903 = trunc i32 %shr902 to i8
  %541 = load i64, i64* %i, align 8
  %add904 = add i64 %541, 2
  %542 = load i8*, i8** %codestr, align 8
  %arrayidx905 = getelementptr i8, i8* %542, i64 %add904
  store i8 %conv903, i8* %arrayidx905, align 1
  %543 = load i32, i32* %tgttgt, align 4
  %and906 = and i32 %543, 255
  %conv907 = trunc i32 %and906 to i8
  %544 = load i64, i64* %i, align 8
  %add908 = add i64 %544, 1
  %545 = load i8*, i8** %codestr, align 8
  %arrayidx909 = getelementptr i8, i8* %545, i64 %add908
  store i8 %conv907, i8* %arrayidx909, align 1
  br label %sw.epilog

sw.bb.910:                                        ; preds = %if.end.58
  %546 = load i64, i64* %i, align 8
  %add911 = add i64 %546, 3
  %547 = load i8*, i8** %codestr, align 8
  %arrayidx912 = getelementptr i8, i8* %547, i64 %add911
  %548 = load i8, i8* %arrayidx912, align 1
  %conv913 = zext i8 %548 to i32
  %cmp914 = icmp ne i32 %conv913, 132
  br i1 %cmp914, label %if.then.916, label %if.end.917

if.then.916:                                      ; preds = %sw.bb.910
  br label %exitUnchanged

if.end.917:                                       ; preds = %sw.bb.910
  %549 = load i64, i64* %i, align 8
  %add918 = add i64 %549, 3
  store i64 %add918, i64* %i, align 8
  br label %sw.epilog

sw.bb.919:                                        ; preds = %if.end.58
  %550 = load i64, i64* %i, align 8
  %add920 = add i64 %550, 4
  %551 = load i64, i64* %codelen, align 8
  %cmp921 = icmp sge i64 %add920, %551
  br i1 %cmp921, label %if.then.923, label %if.end.924

if.then.923:                                      ; preds = %sw.bb.919
  br label %for.inc

if.end.924:                                       ; preds = %sw.bb.919
  %552 = load i64, i64* %i, align 8
  %add925 = add i64 %552, 4
  %553 = load i8*, i8** %codestr, align 8
  %arrayidx926 = getelementptr i8, i8* %553, i64 %add925
  %554 = load i8, i8* %arrayidx926, align 1
  %conv927 = zext i8 %554 to i32
  %cmp928 = icmp eq i32 %conv927, 83
  br i1 %cmp928, label %land.lhs.true.930, label %if.else.940

land.lhs.true.930:                                ; preds = %if.end.924
  %555 = load i64, i64* %i, align 8
  %556 = load i32*, i32** %blocks, align 8
  %arrayidx931 = getelementptr i32, i32* %556, i64 %555
  %557 = load i32, i32* %arrayidx931, align 4
  %558 = load i64, i64* %i, align 8
  %add932 = add i64 %558, 5
  %sub933 = sub i64 %add932, 1
  %559 = load i32*, i32** %blocks, align 8
  %arrayidx934 = getelementptr i32, i32* %559, i64 %sub933
  %560 = load i32, i32* %arrayidx934, align 4
  %cmp935 = icmp eq i32 %557, %560
  br i1 %cmp935, label %if.then.937, label %if.else.940

if.then.937:                                      ; preds = %land.lhs.true.930
  %561 = load i8*, i8** %codestr, align 8
  %562 = load i64, i64* %i, align 8
  %add.ptr938 = getelementptr i8, i8* %561, i64 %562
  %add.ptr939 = getelementptr i8, i8* %add.ptr938, i64 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr939, i8 9, i64 4, i32 1, i1 false)
  br label %if.end.963

if.else.940:                                      ; preds = %land.lhs.true.930, %if.end.924
  %563 = load i64, i64* %i, align 8
  %add941 = add i64 %563, 1
  %564 = load i8*, i8** %codestr, align 8
  %arrayidx942 = getelementptr i8, i8* %564, i64 %add941
  %565 = load i8, i8* %arrayidx942, align 1
  %conv943 = zext i8 %565 to i32
  %cmp944 = icmp eq i32 %conv943, 113
  br i1 %cmp944, label %land.lhs.true.952, label %lor.lhs.false.946

lor.lhs.false.946:                                ; preds = %if.else.940
  %566 = load i64, i64* %i, align 8
  %add947 = add i64 %566, 1
  %567 = load i8*, i8** %codestr, align 8
  %arrayidx948 = getelementptr i8, i8* %567, i64 %add947
  %568 = load i8, i8* %arrayidx948, align 1
  %conv949 = zext i8 %568 to i32
  %cmp950 = icmp eq i32 %conv949, 110
  br i1 %cmp950, label %land.lhs.true.952, label %if.end.962

land.lhs.true.952:                                ; preds = %lor.lhs.false.946, %if.else.940
  %569 = load i64, i64* %i, align 8
  %570 = load i32*, i32** %blocks, align 8
  %arrayidx953 = getelementptr i32, i32* %570, i64 %569
  %571 = load i32, i32* %arrayidx953, align 4
  %572 = load i64, i64* %i, align 8
  %add954 = add i64 %572, 4
  %sub955 = sub i64 %add954, 1
  %573 = load i32*, i32** %blocks, align 8
  %arrayidx956 = getelementptr i32, i32* %573, i64 %sub955
  %574 = load i32, i32* %arrayidx956, align 4
  %cmp957 = icmp eq i32 %571, %574
  br i1 %cmp957, label %if.then.959, label %if.end.962

if.then.959:                                      ; preds = %land.lhs.true.952
  %575 = load i8*, i8** %codestr, align 8
  %576 = load i64, i64* %i, align 8
  %add.ptr960 = getelementptr i8, i8* %575, i64 %576
  %add.ptr961 = getelementptr i8, i8* %add.ptr960, i64 1
  call void @llvm.memset.p0i8.i64(i8* %add.ptr961, i8 9, i64 3, i32 1, i1 false)
  br label %if.end.962

if.end.962:                                       ; preds = %if.then.959, %land.lhs.true.952, %lor.lhs.false.946
  br label %if.end.963

if.end.963:                                       ; preds = %if.end.962, %if.then.937
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.58, %if.end.963, %if.end.917, %if.end.899, %if.end.584, %if.end.503, %if.end.417, %do.end.359, %if.then.215, %do.end.202, %if.end.120
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.923, %if.then.898, %if.then.816, %if.then.800, %if.then.390, %if.then.199, %if.then.119, %if.then.70
  %577 = load i64, i64* %i, align 8
  %578 = load i8*, i8** %codestr, align 8
  %arrayidx964 = getelementptr i8, i8* %578, i64 %577
  %579 = load i8, i8* %arrayidx964, align 1
  %conv965 = zext i8 %579 to i32
  %cmp966 = icmp sge i32 %conv965, 90
  %cond968 = select i1 %cmp966, i32 3, i32 1
  %conv969 = sext i32 %cond968 to i64
  %580 = load i64, i64* %i, align 8
  %add970 = add i64 %580, %conv969
  store i64 %add970, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  store i32 0, i32* %nops, align 4
  br label %for.cond.971

for.cond.971:                                     ; preds = %for.inc.986, %for.end
  %581 = load i64, i64* %i, align 8
  %582 = load i64, i64* %codelen, align 8
  %cmp972 = icmp slt i64 %581, %582
  br i1 %cmp972, label %for.body.974, label %for.end.994

for.body.974:                                     ; preds = %for.cond.971
  %583 = load i64, i64* %i, align 8
  %584 = load i32, i32* %nops, align 4
  %conv975 = sext i32 %584 to i64
  %sub976 = sub i64 %583, %conv975
  %conv977 = trunc i64 %sub976 to i32
  %585 = load i64, i64* %i, align 8
  %586 = load i32*, i32** %addrmap, align 8
  %arrayidx978 = getelementptr i32, i32* %586, i64 %585
  store i32 %conv977, i32* %arrayidx978, align 4
  %587 = load i64, i64* %i, align 8
  %588 = load i8*, i8** %codestr, align 8
  %arrayidx979 = getelementptr i8, i8* %588, i64 %587
  %589 = load i8, i8* %arrayidx979, align 1
  %conv980 = zext i8 %589 to i32
  %cmp981 = icmp eq i32 %conv980, 9
  br i1 %cmp981, label %if.then.983, label %if.end.985

if.then.983:                                      ; preds = %for.body.974
  %590 = load i32, i32* %nops, align 4
  %inc984 = add i32 %590, 1
  store i32 %inc984, i32* %nops, align 4
  br label %if.end.985

if.end.985:                                       ; preds = %if.then.983, %for.body.974
  br label %for.inc.986

for.inc.986:                                      ; preds = %if.end.985
  %591 = load i64, i64* %i, align 8
  %592 = load i8*, i8** %codestr, align 8
  %arrayidx987 = getelementptr i8, i8* %592, i64 %591
  %593 = load i8, i8* %arrayidx987, align 1
  %conv988 = zext i8 %593 to i32
  %cmp989 = icmp sge i32 %conv988, 90
  %cond991 = select i1 %cmp989, i32 3, i32 1
  %conv992 = sext i32 %cond991 to i64
  %594 = load i64, i64* %i, align 8
  %add993 = add i64 %594, %conv992
  store i64 %add993, i64* %i, align 8
  br label %for.cond.971

for.end.994:                                      ; preds = %for.cond.971
  store i32 0, i32* %cum_orig_line, align 4
  store i32 0, i32* %last_line, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond.995

for.cond.995:                                     ; preds = %for.inc.1008, %for.end.994
  %595 = load i64, i64* %i, align 8
  %596 = load i32, i32* %tabsiz, align 4
  %conv996 = sext i32 %596 to i64
  %cmp997 = icmp slt i64 %595, %conv996
  br i1 %cmp997, label %for.body.999, label %for.end.1010

for.body.999:                                     ; preds = %for.cond.995
  %597 = load i64, i64* %i, align 8
  %598 = load i8*, i8** %lineno, align 8
  %arrayidx1000 = getelementptr i8, i8* %598, i64 %597
  %599 = load i8, i8* %arrayidx1000, align 1
  %conv1001 = zext i8 %599 to i32
  %600 = load i32, i32* %cum_orig_line, align 4
  %add1002 = add i32 %600, %conv1001
  store i32 %add1002, i32* %cum_orig_line, align 4
  %601 = load i32, i32* %cum_orig_line, align 4
  %idxprom1003 = sext i32 %601 to i64
  %602 = load i32*, i32** %addrmap, align 8
  %arrayidx1004 = getelementptr i32, i32* %602, i64 %idxprom1003
  %603 = load i32, i32* %arrayidx1004, align 4
  store i32 %603, i32* %new_line, align 4
  %604 = load i32, i32* %new_line, align 4
  %605 = load i32, i32* %last_line, align 4
  %sub1005 = sub i32 %604, %605
  %conv1006 = trunc i32 %sub1005 to i8
  %606 = load i64, i64* %i, align 8
  %607 = load i8*, i8** %lineno, align 8
  %arrayidx1007 = getelementptr i8, i8* %607, i64 %606
  store i8 %conv1006, i8* %arrayidx1007, align 1
  %608 = load i32, i32* %new_line, align 4
  store i32 %608, i32* %last_line, align 4
  br label %for.inc.1008

for.inc.1008:                                     ; preds = %for.body.999
  %609 = load i64, i64* %i, align 8
  %add1009 = add i64 %609, 2
  store i64 %add1009, i64* %i, align 8
  br label %for.cond.995

for.end.1010:                                     ; preds = %for.cond.995
  store i64 0, i64* %i, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond.1011

for.cond.1011:                                    ; preds = %while.end, %sw.bb.1017, %for.end.1010
  %610 = load i64, i64* %i, align 8
  %611 = load i64, i64* %codelen, align 8
  %cmp1012 = icmp slt i64 %610, %611
  br i1 %cmp1012, label %for.body.1014, label %for.end.1074

for.body.1014:                                    ; preds = %for.cond.1011
  %612 = load i64, i64* %i, align 8
  %613 = load i8*, i8** %codestr, align 8
  %arrayidx1015 = getelementptr i8, i8* %613, i64 %612
  %614 = load i8, i8* %arrayidx1015, align 1
  %conv1016 = zext i8 %614 to i32
  store i32 %conv1016, i32* %opcode, align 4
  %615 = load i32, i32* %opcode, align 4
  switch i32 %615, label %sw.epilog.1064 [
    i32 9, label %sw.bb.1017
    i32 113, label %sw.bb.1019
    i32 119, label %sw.bb.1019
    i32 114, label %sw.bb.1019
    i32 115, label %sw.bb.1019
    i32 111, label %sw.bb.1019
    i32 112, label %sw.bb.1019
    i32 93, label %sw.bb.1039
    i32 110, label %sw.bb.1039
    i32 120, label %sw.bb.1039
    i32 121, label %sw.bb.1039
    i32 122, label %sw.bb.1039
    i32 143, label %sw.bb.1039
  ]

sw.bb.1017:                                       ; preds = %for.body.1014
  %616 = load i64, i64* %i, align 8
  %inc1018 = add i64 %616, 1
  store i64 %inc1018, i64* %i, align 8
  br label %for.cond.1011

sw.bb.1019:                                       ; preds = %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014
  %617 = load i64, i64* %i, align 8
  %add1020 = add i64 %617, 2
  %618 = load i8*, i8** %codestr, align 8
  %arrayidx1021 = getelementptr i8, i8* %618, i64 %add1020
  %619 = load i8, i8* %arrayidx1021, align 1
  %conv1022 = zext i8 %619 to i32
  %shl1023 = shl i32 %conv1022, 8
  %620 = load i64, i64* %i, align 8
  %add1024 = add i64 %620, 1
  %621 = load i8*, i8** %codestr, align 8
  %arrayidx1025 = getelementptr i8, i8* %621, i64 %add1024
  %622 = load i8, i8* %arrayidx1025, align 1
  %conv1026 = zext i8 %622 to i32
  %add1027 = add i32 %shl1023, %conv1026
  %idxprom1028 = sext i32 %add1027 to i64
  %623 = load i32*, i32** %addrmap, align 8
  %arrayidx1029 = getelementptr i32, i32* %623, i64 %idxprom1028
  %624 = load i32, i32* %arrayidx1029, align 4
  %conv1030 = sext i32 %624 to i64
  store i64 %conv1030, i64* %j, align 8
  %625 = load i64, i64* %j, align 8
  %shr1031 = ashr i64 %625, 8
  %conv1032 = trunc i64 %shr1031 to i8
  %626 = load i64, i64* %i, align 8
  %add1033 = add i64 %626, 2
  %627 = load i8*, i8** %codestr, align 8
  %arrayidx1034 = getelementptr i8, i8* %627, i64 %add1033
  store i8 %conv1032, i8* %arrayidx1034, align 1
  %628 = load i64, i64* %j, align 8
  %and1035 = and i64 %628, 255
  %conv1036 = trunc i64 %and1035 to i8
  %629 = load i64, i64* %i, align 8
  %add1037 = add i64 %629, 1
  %630 = load i8*, i8** %codestr, align 8
  %arrayidx1038 = getelementptr i8, i8* %630, i64 %add1037
  store i8 %conv1036, i8* %arrayidx1038, align 1
  br label %sw.epilog.1064

sw.bb.1039:                                       ; preds = %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014, %for.body.1014
  %631 = load i64, i64* %i, align 8
  %add1040 = add i64 %631, 2
  %632 = load i8*, i8** %codestr, align 8
  %arrayidx1041 = getelementptr i8, i8* %632, i64 %add1040
  %633 = load i8, i8* %arrayidx1041, align 1
  %conv1042 = zext i8 %633 to i32
  %shl1043 = shl i32 %conv1042, 8
  %634 = load i64, i64* %i, align 8
  %add1044 = add i64 %634, 1
  %635 = load i8*, i8** %codestr, align 8
  %arrayidx1045 = getelementptr i8, i8* %635, i64 %add1044
  %636 = load i8, i8* %arrayidx1045, align 1
  %conv1046 = zext i8 %636 to i32
  %add1047 = add i32 %shl1043, %conv1046
  %conv1048 = sext i32 %add1047 to i64
  %637 = load i64, i64* %i, align 8
  %add1049 = add i64 %conv1048, %637
  %add1050 = add i64 %add1049, 3
  %638 = load i32*, i32** %addrmap, align 8
  %arrayidx1051 = getelementptr i32, i32* %638, i64 %add1050
  %639 = load i32, i32* %arrayidx1051, align 4
  %640 = load i64, i64* %i, align 8
  %641 = load i32*, i32** %addrmap, align 8
  %arrayidx1052 = getelementptr i32, i32* %641, i64 %640
  %642 = load i32, i32* %arrayidx1052, align 4
  %sub1053 = sub i32 %639, %642
  %sub1054 = sub i32 %sub1053, 3
  %conv1055 = sext i32 %sub1054 to i64
  store i64 %conv1055, i64* %j, align 8
  %643 = load i64, i64* %j, align 8
  %shr1056 = ashr i64 %643, 8
  %conv1057 = trunc i64 %shr1056 to i8
  %644 = load i64, i64* %i, align 8
  %add1058 = add i64 %644, 2
  %645 = load i8*, i8** %codestr, align 8
  %arrayidx1059 = getelementptr i8, i8* %645, i64 %add1058
  store i8 %conv1057, i8* %arrayidx1059, align 1
  %646 = load i64, i64* %j, align 8
  %and1060 = and i64 %646, 255
  %conv1061 = trunc i64 %and1060 to i8
  %647 = load i64, i64* %i, align 8
  %add1062 = add i64 %647, 1
  %648 = load i8*, i8** %codestr, align 8
  %arrayidx1063 = getelementptr i8, i8* %648, i64 %add1062
  store i8 %conv1061, i8* %arrayidx1063, align 1
  br label %sw.epilog.1064

sw.epilog.1064:                                   ; preds = %for.body.1014, %sw.bb.1039, %sw.bb.1019
  %649 = load i32, i32* %opcode, align 4
  %cmp1065 = icmp sge i32 %649, 90
  %cond1067 = select i1 %cmp1065, i32 3, i32 1
  store i32 %cond1067, i32* %adj, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.1064
  %650 = load i32, i32* %adj, align 4
  %dec = add i32 %650, -1
  store i32 %dec, i32* %adj, align 4
  %tobool1068 = icmp ne i32 %650, 0
  br i1 %tobool1068, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %651 = load i64, i64* %i, align 8
  %inc1069 = add i64 %651, 1
  store i64 %inc1069, i64* %i, align 8
  %652 = load i8*, i8** %codestr, align 8
  %arrayidx1070 = getelementptr i8, i8* %652, i64 %651
  %653 = load i8, i8* %arrayidx1070, align 1
  %654 = load i32, i32* %h, align 4
  %inc1071 = add i32 %654, 1
  store i32 %inc1071, i32* %h, align 4
  %idxprom1072 = sext i32 %654 to i64
  %655 = load i8*, i8** %codestr, align 8
  %arrayidx1073 = getelementptr i8, i8* %655, i64 %idxprom1072
  store i8 %653, i8* %arrayidx1073, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond.1011

for.end.1074:                                     ; preds = %for.cond.1011
  %656 = load i8*, i8** %codestr, align 8
  %657 = load i32, i32* %h, align 4
  %conv1075 = sext i32 %657 to i64
  %call1076 = call %struct._object* @PyBytes_FromStringAndSize(i8* %656, i64 %conv1075)
  store %struct._object* %call1076, %struct._object** %code.addr, align 8
  br label %do.body.1077

do.body.1077:                                     ; preds = %for.end.1074
  %658 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool1078 = icmp ne %struct._object** %658, null
  br i1 %tobool1078, label %if.then.1079, label %if.end.1080

if.then.1079:                                     ; preds = %do.body.1077
  %659 = load %struct._object**, %struct._object*** %const_stack, align 8
  %660 = bitcast %struct._object** %659 to i8*
  call void @PyMem_Free(i8* %660)
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.then.1079, %do.body.1077
  %661 = load i64*, i64** %load_const_stack, align 8
  %tobool1081 = icmp ne i64* %661, null
  br i1 %tobool1081, label %if.then.1082, label %if.end.1083

if.then.1082:                                     ; preds = %if.end.1080
  %662 = load i64*, i64** %load_const_stack, align 8
  %663 = bitcast i64* %662 to i8*
  call void @PyMem_Free(i8* %663)
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1082, %if.end.1080
  br label %do.end.1084

do.end.1084:                                      ; preds = %if.end.1083
  %664 = load i32*, i32** %addrmap, align 8
  %665 = bitcast i32* %664 to i8*
  call void @PyMem_Free(i8* %665)
  %666 = load i8*, i8** %codestr, align 8
  call void @PyMem_Free(i8* %666)
  %667 = load i32*, i32** %blocks, align 8
  %668 = bitcast i32* %667 to i8*
  call void @PyMem_Free(i8* %668)
  %669 = load %struct._object*, %struct._object** %code.addr, align 8
  store %struct._object* %669, %struct._object** %retval
  br label %return

exitError:                                        ; preds = %if.then.577, %if.then.496, %if.then.353, %if.then.166, %if.then.49, %if.then.33, %if.then.27, %if.then.14, %if.then
  store %struct._object* null, %struct._object** %code.addr, align 8
  br label %exitUnchanged

exitUnchanged:                                    ; preds = %exitError, %if.then.916, %if.then.22, %if.then.9, %if.then.4
  br label %do.body.1085

do.body.1085:                                     ; preds = %exitUnchanged
  %670 = load %struct._object**, %struct._object*** %const_stack, align 8
  %tobool1086 = icmp ne %struct._object** %670, null
  br i1 %tobool1086, label %if.then.1087, label %if.end.1088

if.then.1087:                                     ; preds = %do.body.1085
  %671 = load %struct._object**, %struct._object*** %const_stack, align 8
  %672 = bitcast %struct._object** %671 to i8*
  call void @PyMem_Free(i8* %672)
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.then.1087, %do.body.1085
  %673 = load i64*, i64** %load_const_stack, align 8
  %tobool1089 = icmp ne i64* %673, null
  br i1 %tobool1089, label %if.then.1090, label %if.end.1091

if.then.1090:                                     ; preds = %if.end.1088
  %674 = load i64*, i64** %load_const_stack, align 8
  %675 = bitcast i64* %674 to i8*
  call void @PyMem_Free(i8* %675)
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1090, %if.end.1088
  br label %do.end.1092

do.end.1092:                                      ; preds = %if.end.1091
  %676 = load i32*, i32** %blocks, align 8
  %cmp1093 = icmp ne i32* %676, null
  br i1 %cmp1093, label %if.then.1095, label %if.end.1096

if.then.1095:                                     ; preds = %do.end.1092
  %677 = load i32*, i32** %blocks, align 8
  %678 = bitcast i32* %677 to i8*
  call void @PyMem_Free(i8* %678)
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.then.1095, %do.end.1092
  %679 = load i32*, i32** %addrmap, align 8
  %cmp1097 = icmp ne i32* %679, null
  br i1 %cmp1097, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %if.end.1096
  %680 = load i32*, i32** %addrmap, align 8
  %681 = bitcast i32* %680 to i8*
  call void @PyMem_Free(i8* %681)
  br label %if.end.1100

if.end.1100:                                      ; preds = %if.then.1099, %if.end.1096
  %682 = load i8*, i8** %codestr, align 8
  %cmp1101 = icmp ne i8* %682, null
  br i1 %cmp1101, label %if.then.1103, label %if.end.1104

if.then.1103:                                     ; preds = %if.end.1100
  %683 = load i8*, i8** %codestr, align 8
  call void @PyMem_Free(i8* %683)
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.then.1103, %if.end.1100
  br label %do.body.1105

do.body.1105:                                     ; preds = %if.end.1104
  %684 = load %struct._object*, %struct._object** %code.addr, align 8
  store %struct._object* %684, %struct._object** %_py_xincref_tmp, align 8
  %685 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1106 = icmp ne %struct._object* %685, null
  br i1 %cmp1106, label %if.then.1108, label %if.end.1110

if.then.1108:                                     ; preds = %do.body.1105
  %686 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %686, i32 0, i32 0
  %687 = load i64, i64* %ob_refcnt, align 8
  %inc1109 = add i64 %687, 1
  store i64 %inc1109, i64* %ob_refcnt, align 8
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.then.1108, %do.body.1105
  br label %do.end.1111

do.end.1111:                                      ; preds = %if.end.1110
  %688 = load %struct._object*, %struct._object** %code.addr, align 8
  store %struct._object* %688, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.1111, %do.end.1084
  %689 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %689
}

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32* @markblocks(i8* %code, i64 %len) #0 {
entry:
  %retval = alloca i32*, align 8
  %code.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %blocks = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %opcode = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  store i8* %code, i8** %code.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %mul = mul i64 %0, 4
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %blocks, align 8
  store i32 0, i32* %blockcnt, align 4
  %2 = load i32*, i32** %blocks, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %blocks, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i64, i64* %len.addr, align 8
  %mul2 = mul i64 %5, 4
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul2, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp slt i64 %conv, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %code.addr, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  store i32 %conv5, i32* %opcode, align 4
  %11 = load i32, i32* %opcode, align 4
  switch i32 %11, label %sw.epilog [
    i32 93, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 113, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 143, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %12 = load i32, i32* %i, align 4
  %add = add i32 %12, 2
  %idxprom6 = sext i32 %add to i64
  %13 = load i8*, i8** %code.addr, align 8
  %arrayidx7 = getelementptr i8, i8* %13, i64 %idxprom6
  %14 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %shl = shl i32 %conv8, 8
  %15 = load i32, i32* %i, align 4
  %add9 = add i32 %15, 1
  %idxprom10 = sext i32 %add9 to i64
  %16 = load i8*, i8** %code.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %16, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %17 to i32
  %add13 = add i32 %shl, %conv12
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i8*, i8** %code.addr, align 8
  %arrayidx15 = getelementptr i8, i8* %19, i64 %idxprom14
  %20 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv16, 113
  br i1 %cmp17, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i8*, i8** %code.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %22, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 119
  br i1 %cmp22, label %cond.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i8*, i8** %code.addr, align 8
  %arrayidx26 = getelementptr i8, i8* %25, i64 %idxprom25
  %26 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv27, 114
  br i1 %cmp28, label %cond.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.24
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i8*, i8** %code.addr, align 8
  %arrayidx32 = getelementptr i8, i8* %28, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 115
  br i1 %cmp34, label %cond.true, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.30
  %30 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i8*, i8** %code.addr, align 8
  %arrayidx38 = getelementptr i8, i8* %31, i64 %idxprom37
  %32 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %32 to i32
  %cmp40 = icmp eq i32 %conv39, 111
  br i1 %cmp40, label %cond.true, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.36
  %33 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load i8*, i8** %code.addr, align 8
  %arrayidx44 = getelementptr i8, i8* %34, i64 %idxprom43
  %35 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %35 to i32
  %cmp46 = icmp eq i32 %conv45, 112
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.42, %lor.lhs.false.36, %lor.lhs.false.30, %lor.lhs.false.24, %lor.lhs.false, %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.42
  %36 = load i32, i32* %i, align 4
  %add48 = add i32 %36, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add48, %cond.false ]
  %add49 = add i32 %add13, %cond
  store i32 %add49, i32* %j, align 4
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32*, i32** %blocks, align 8
  %arrayidx51 = getelementptr i32, i32* %38, i64 %idxprom50
  store i32 1, i32* %arrayidx51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %39 = load i32, i32* %opcode, align 4
  %cmp52 = icmp sge i32 %39, 90
  %cond54 = select i1 %cmp52, i32 3, i32 1
  %40 = load i32, i32* %i, align 4
  %add55 = add i32 %40, %cond54
  store i32 %add55, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.66, %for.end
  %41 = load i32, i32* %i, align 4
  %conv57 = sext i32 %41 to i64
  %42 = load i64, i64* %len.addr, align 8
  %cmp58 = icmp slt i64 %conv57, %42
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.56
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load i32*, i32** %blocks, align 8
  %arrayidx62 = getelementptr i32, i32* %44, i64 %idxprom61
  %45 = load i32, i32* %arrayidx62, align 4
  %46 = load i32, i32* %blockcnt, align 4
  %add63 = add i32 %46, %45
  store i32 %add63, i32* %blockcnt, align 4
  %47 = load i32, i32* %blockcnt, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %48 to i64
  %49 = load i32*, i32** %blocks, align 8
  %arrayidx65 = getelementptr i32, i32* %49, i64 %idxprom64
  store i32 %47, i32* %arrayidx65, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.60
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.56

for.end.67:                                       ; preds = %for.cond.56
  %51 = load i32*, i32** %blocks, align 8
  store i32* %51, i32** %retval
  br label %return

return:                                           ; preds = %for.end.67, %if.then
  %52 = load i32*, i32** %retval
  ret i32* %52
}

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @tuple_of_constants(i8* %codestr, i64 %n, %struct._object* %consts, %struct._object** %objs) #0 {
entry:
  %retval = alloca i32, align 4
  %codestr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %consts.addr = alloca %struct._object*, align 8
  %objs.addr = alloca %struct._object**, align 8
  %newconst = alloca %struct._object*, align 8
  %constant = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %len_consts = alloca i64, align 8
  %tuple = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store i8* %codestr, i8** %codestr.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct._object* %consts, %struct._object** %consts.addr, align 8
  store %struct._object** %objs, %struct._object*** %objs.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 %0)
  store %struct._object* %call, %struct._object** %newconst, align 8
  %1 = load %struct._object*, %struct._object** %newconst, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %consts.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %len_consts, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp slt i64 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct._object**, %struct._object*** %objs.addr, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %8, i64 %7
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %9, %struct._object** %constant, align 8
  %10 = load %struct._object*, %struct._object** %constant, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %constant, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %newconst, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx2 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %13
  store %struct._object* %12, %struct._object** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc3 = add i64 %16, 1
  store i64 %inc3, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %codestr.addr, align 8
  %arrayidx4 = getelementptr i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %18 to i32
  %cmp5 = icmp eq i32 %conv, 104
  br i1 %cmp5, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %for.end
  %19 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %19, %struct._object** %tuple, align 8
  %20 = load %struct._object*, %struct._object** %tuple, align 8
  %call8 = call %struct._object* @PyFrozenSet_New(%struct._object* %20)
  store %struct._object* %call8, %struct._object** %newconst, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %21 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %newconst, align 8
  %cmp14 = icmp eq %struct._object* %28, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.end
  %29 = load %struct._object*, %struct._object** %consts.addr, align 8
  %30 = load %struct._object*, %struct._object** %newconst, align 8
  %call19 = call i32 @PyList_Append(%struct._object* %29, %struct._object* %30)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.18
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %31 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp22, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %33, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %36(%struct._object* %37)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.18
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %38 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp35, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %40, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %43(%struct._object* %44)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %45 = load i8*, i8** %codestr.addr, align 8
  %arrayidx46 = getelementptr i8, i8* %45, i64 0
  store i8 100, i8* %arrayidx46, align 1
  %46 = load i64, i64* %len_consts, align 8
  %shr = ashr i64 %46, 8
  %conv47 = trunc i64 %shr to i8
  %47 = load i8*, i8** %codestr.addr, align 8
  %arrayidx48 = getelementptr i8, i8* %47, i64 2
  store i8 %conv47, i8* %arrayidx48, align 1
  %48 = load i64, i64* %len_consts, align 8
  %and = and i64 %48, 255
  %conv49 = trunc i64 %and to i8
  %49 = load i8*, i8** %codestr.addr, align 8
  %arrayidx50 = getelementptr i8, i8* %49, i64 1
  store i8 %conv49, i8* %arrayidx50, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.45, %do.end.32, %if.then.16, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @fold_binops_on_constants(i8* %codestr, %struct._object* %consts, %struct._object** %objs) #0 {
entry:
  %retval = alloca i32, align 4
  %codestr.addr = alloca i8*, align 8
  %consts.addr = alloca %struct._object*, align 8
  %objs.addr = alloca %struct._object**, align 8
  %newconst = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %len_consts = alloca i64, align 8
  %size = alloca i64, align 8
  %opcode = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store i8* %codestr, i8** %codestr.addr, align 8
  store %struct._object* %consts, %struct._object** %consts.addr, align 8
  store %struct._object** %objs, %struct._object*** %objs.addr, align 8
  %0 = load %struct._object**, %struct._object*** %objs.addr, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %0, i64 0
  %1 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %1, %struct._object** %v, align 8
  %2 = load %struct._object**, %struct._object*** %objs.addr, align 8
  %arrayidx1 = getelementptr %struct._object*, %struct._object** %2, i64 1
  %3 = load %struct._object*, %struct._object** %arrayidx1, align 8
  store %struct._object* %3, %struct._object** %w, align 8
  %4 = load i8*, i8** %codestr.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %opcode, align 4
  %6 = load i32, i32* %opcode, align 4
  switch i32 %6, label %sw.default [
    i32 19, label %sw.bb
    i32 20, label %sw.bb.3
    i32 27, label %sw.bb.5
    i32 26, label %sw.bb.7
    i32 22, label %sw.bb.9
    i32 23, label %sw.bb.11
    i32 24, label %sw.bb.13
    i32 25, label %sw.bb.15
    i32 62, label %sw.bb.17
    i32 63, label %sw.bb.19
    i32 64, label %sw.bb.21
    i32 65, label %sw.bb.23
    i32 66, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._object*, %struct._object** %v, align 8
  %8 = load %struct._object*, %struct._object** %w, align 8
  %call = call %struct._object* @PyNumber_Power(%struct._object* %7, %struct._object* %8, %struct._object* @_Py_NoneStruct)
  store %struct._object* %call, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** %v, align 8
  %10 = load %struct._object*, %struct._object** %w, align 8
  %call4 = call %struct._object* @PyNumber_Multiply(%struct._object* %9, %struct._object* %10)
  store %struct._object* %call4, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %v, align 8
  %12 = load %struct._object*, %struct._object** %w, align 8
  %call6 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %11, %struct._object* %12)
  store %struct._object* %call6, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct._object*, %struct._object** %v, align 8
  %14 = load %struct._object*, %struct._object** %w, align 8
  %call8 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %13, %struct._object* %14)
  store %struct._object* %call8, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._object*, %struct._object** %v, align 8
  %16 = load %struct._object*, %struct._object** %w, align 8
  %call10 = call %struct._object* @PyNumber_Remainder(%struct._object* %15, %struct._object* %16)
  store %struct._object* %call10, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %17 = load %struct._object*, %struct._object** %v, align 8
  %18 = load %struct._object*, %struct._object** %w, align 8
  %call12 = call %struct._object* @PyNumber_Add(%struct._object* %17, %struct._object* %18)
  store %struct._object* %call12, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %19 = load %struct._object*, %struct._object** %v, align 8
  %20 = load %struct._object*, %struct._object** %w, align 8
  %call14 = call %struct._object* @PyNumber_Subtract(%struct._object* %19, %struct._object* %20)
  store %struct._object* %call14, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %21 = load %struct._object*, %struct._object** %v, align 8
  %22 = load %struct._object*, %struct._object** %w, align 8
  %call16 = call %struct._object* @PyObject_GetItem(%struct._object* %21, %struct._object* %22)
  store %struct._object* %call16, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %23 = load %struct._object*, %struct._object** %v, align 8
  %24 = load %struct._object*, %struct._object** %w, align 8
  %call18 = call %struct._object* @PyNumber_Lshift(%struct._object* %23, %struct._object* %24)
  store %struct._object* %call18, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %25 = load %struct._object*, %struct._object** %v, align 8
  %26 = load %struct._object*, %struct._object** %w, align 8
  %call20 = call %struct._object* @PyNumber_Rshift(%struct._object* %25, %struct._object* %26)
  store %struct._object* %call20, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %27 = load %struct._object*, %struct._object** %v, align 8
  %28 = load %struct._object*, %struct._object** %w, align 8
  %call22 = call %struct._object* @PyNumber_And(%struct._object* %27, %struct._object* %28)
  store %struct._object* %call22, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %29 = load %struct._object*, %struct._object** %v, align 8
  %30 = load %struct._object*, %struct._object** %w, align 8
  %call24 = call %struct._object* @PyNumber_Xor(%struct._object* %29, %struct._object* %30)
  store %struct._object* %call24, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %31 = load %struct._object*, %struct._object** %v, align 8
  %32 = load %struct._object*, %struct._object** %w, align 8
  %call26 = call %struct._object* @PyNumber_Or(%struct._object* %31, %struct._object* %32)
  store %struct._object* %call26, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %33 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %34 = load i32, i32* %opcode, align 4
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 %34)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  %35 = load %struct._object*, %struct._object** %newconst, align 8
  %cmp = icmp eq %struct._object* %35, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %sw.epilog
  %36 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  %call29 = call i32 @PyErr_ExceptionMatches(%struct._object* %36)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %sw.epilog
  %37 = load %struct._object*, %struct._object** %newconst, align 8
  %call32 = call i64 @PyObject_Size(%struct._object* %37)
  store i64 %call32, i64* %size, align 8
  %38 = load i64, i64* %size, align 8
  %cmp33 = icmp eq i64 %38, -1
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.31
  %39 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  %call36 = call i32 @PyErr_ExceptionMatches(%struct._object* %39)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.35
  call void @PyErr_Clear()
  br label %if.end.49

if.else:                                          ; preds = %if.end.31
  %40 = load i64, i64* %size, align 8
  %cmp40 = icmp sgt i64 %40, 20
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.42
  %41 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %43, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp43 = icmp ne i64 %dec, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body
  br label %if.end.47

if.else.46:                                       ; preds = %do.body
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %46(%struct._object* %47)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.47
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.39
  %48 = load %struct._object*, %struct._object** %consts.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size, align 8
  store i64 %50, i64* %len_consts, align 8
  %51 = load %struct._object*, %struct._object** %consts.addr, align 8
  %52 = load %struct._object*, %struct._object** %newconst, align 8
  %call50 = call i32 @PyList_Append(%struct._object* %51, %struct._object* %52)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %if.end.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %53 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp54, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %55, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.53
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.53
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %58(%struct._object* %59)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.49
  br label %do.body.66

do.body.66:                                       ; preds = %if.end.65
  %60 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp67, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %62, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.66
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.66
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %65(%struct._object* %66)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %67 = load i8*, i8** %codestr.addr, align 8
  %arrayidx78 = getelementptr i8, i8* %67, i64 -2
  store i8 100, i8* %arrayidx78, align 1
  %68 = load i64, i64* %len_consts, align 8
  %shr = ashr i64 %68, 8
  %conv79 = trunc i64 %shr to i8
  %69 = load i8*, i8** %codestr.addr, align 8
  %arrayidx80 = getelementptr i8, i8* %69, i64 0
  store i8 %conv79, i8* %arrayidx80, align 1
  %70 = load i64, i64* %len_consts, align 8
  %and = and i64 %70, 255
  %conv81 = trunc i64 %and to i8
  %71 = load i8*, i8** %codestr.addr, align 8
  %arrayidx82 = getelementptr i8, i8* %71, i64 -1
  store i8 %conv81, i8* %arrayidx82, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.77, %do.end.64, %do.end, %if.then.38, %if.end, %sw.default
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @fold_unaryops_on_constants(i8* %codestr, %struct._object* %consts, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %codestr.addr = alloca i8*, align 8
  %consts.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %newconst = alloca %struct._object*, align 8
  %len_consts = alloca i64, align 8
  %opcode = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store i8* %codestr, i8** %codestr.addr, align 8
  store %struct._object* %consts, %struct._object** %consts.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load i8*, i8** %codestr.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 3
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %opcode, align 4
  %2 = load i32, i32* %opcode, align 4
  switch i32 %2, label %sw.default [
    i32 11, label %sw.bb
    i32 15, label %sw.bb.1
    i32 10, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_Negative(%struct._object* %3)
  store %struct._object* %call, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %call2 = call %struct._object* @PyNumber_Invert(%struct._object* %4)
  store %struct._object* %call2, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %call4 = call %struct._object* @PyNumber_Positive(%struct._object* %5)
  store %struct._object* %call4, %struct._object** %newconst, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %7 = load i32, i32* %opcode, align 4
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.1, %sw.bb
  %8 = load %struct._object*, %struct._object** %newconst, align 8
  %cmp = icmp eq %struct._object* %8, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %sw.epilog
  %9 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  %call7 = call i32 @PyErr_ExceptionMatches(%struct._object* %9)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.epilog
  %10 = load %struct._object*, %struct._object** %consts.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size, align 8
  store i64 %12, i64* %len_consts, align 8
  %13 = load %struct._object*, %struct._object** %consts.addr, align 8
  %14 = load %struct._object*, %struct._object** %newconst, align 8
  %call10 = call i32 @PyList_Append(%struct._object* %13, %struct._object* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %15 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %newconst, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp19, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %24, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.18
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.18
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %27(%struct._object* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %29 = load i8*, i8** %codestr.addr, align 8
  %arrayidx30 = getelementptr i8, i8* %29, i64 0
  store i8 9, i8* %arrayidx30, align 1
  %30 = load i8*, i8** %codestr.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %30, i64 1
  store i8 100, i8* %arrayidx31, align 1
  %31 = load i64, i64* %len_consts, align 8
  %shr = ashr i64 %31, 8
  %conv32 = trunc i64 %shr to i8
  %32 = load i8*, i8** %codestr.addr, align 8
  %arrayidx33 = getelementptr i8, i8* %32, i64 3
  store i8 %conv32, i8* %arrayidx33, align 1
  %33 = load i64, i64* %len_consts, align 8
  %and = and i64 %33, 255
  %conv34 = trunc i64 %and to i8
  %34 = load i8*, i8** %codestr.addr, align 8
  %arrayidx35 = getelementptr i8, i8* %34, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.29, %do.end, %if.end, %sw.default
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyFrozenSet_New(%struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_Invert(%struct._object*) #1

declare %struct._object* @PyNumber_Positive(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
