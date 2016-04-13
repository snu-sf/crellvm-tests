; ModuleID = 'irs-onlybc/parsetok.bc'
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
  store i8* %s, i8** %s.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !435, metadata !673), !dbg !674
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !436, metadata !673), !dbg !675
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !437, metadata !673), !dbg !678
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !438, metadata !673), !dbg !679
  %0 = load i8*, i8** %s.addr, align 8, !dbg !680, !tbaa !669
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !681, !tbaa !669
  %2 = load i32, i32* %start.addr, align 4, !dbg !682, !tbaa !676
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !683, !tbaa !669
  %call = call %struct._node* @PyParser_ParseStringFlagsFilename(i8* %0, i8* null, %struct.grammar* %1, i32 %2, %struct.perrdetail* %3, i32 0), !dbg !684
  ret %struct._node* %call, !dbg !685
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
  store i8* %s, i8** %s.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !452, metadata !673), !dbg !686
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !453, metadata !673), !dbg !687
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !454, metadata !673), !dbg !688
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !455, metadata !673), !dbg !689
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !456, metadata !673), !dbg !690
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !457, metadata !673), !dbg !691
  %0 = bitcast i32* %iflags to i8*, !dbg !692
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !692
  call void @llvm.dbg.declare(metadata i32* %iflags, metadata !458, metadata !673), !dbg !693
  %1 = load i32, i32* %flags.addr, align 4, !dbg !694, !tbaa !676
  store i32 %1, i32* %iflags, align 4, !dbg !693, !tbaa !676
  %2 = load i8*, i8** %s.addr, align 8, !dbg !695, !tbaa !669
  %3 = load i8*, i8** %filename.addr, align 8, !dbg !696, !tbaa !669
  %4 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !697, !tbaa !669
  %5 = load i32, i32* %start.addr, align 4, !dbg !698, !tbaa !676
  %6 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !699, !tbaa !669
  %call = call %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8* %2, i8* %3, %struct.grammar* %4, i32 %5, %struct.perrdetail* %6, i32* %iflags), !dbg !700
  %7 = bitcast i32* %iflags to i8*, !dbg !701
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !701
  ret %struct._node* %call, !dbg !702
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlags(i8* %s, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !443, metadata !673), !dbg !703
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !444, metadata !673), !dbg !704
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !445, metadata !673), !dbg !705
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !446, metadata !673), !dbg !706
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !447, metadata !673), !dbg !707
  %0 = load i8*, i8** %s.addr, align 8, !dbg !708, !tbaa !669
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !709, !tbaa !669
  %2 = load i32, i32* %start.addr, align 4, !dbg !710, !tbaa !676
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !711, !tbaa !669
  %4 = load i32, i32* %flags.addr, align 4, !dbg !712, !tbaa !676
  %call = call %struct._node* @PyParser_ParseStringFlagsFilename(i8* %0, i8* null, %struct.grammar* %1, i32 %2, %struct.perrdetail* %3, i32 %4), !dbg !713
  ret %struct._node* %call, !dbg !714
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !513, metadata !673), !dbg !715
  store i8* %filename_str, i8** %filename_str.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %filename_str.addr, metadata !514, metadata !673), !dbg !716
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !515, metadata !673), !dbg !717
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !516, metadata !673), !dbg !718
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !517, metadata !673), !dbg !719
  store i32* %flags, i32** %flags.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !518, metadata !673), !dbg !720
  %0 = bitcast %struct._node** %n to i8*, !dbg !721
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !721
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !519, metadata !673), !dbg !722
  %1 = bitcast %struct._object** %filename to i8*, !dbg !723
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !723
  call void @llvm.dbg.declare(metadata %struct._object** %filename, metadata !520, metadata !673), !dbg !724
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !724, !tbaa !669
  %2 = load i8*, i8** %filename_str.addr, align 8, !dbg !725, !tbaa !669
  %cmp = icmp ne i8* %2, null, !dbg !727
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !728

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename_str.addr, align 8, !dbg !729, !tbaa !669
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %3), !dbg !731
  store %struct._object* %call, %struct._object** %filename, align 8, !dbg !732, !tbaa !669
  %4 = load %struct._object*, %struct._object** %filename, align 8, !dbg !733, !tbaa !669
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !735
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !736

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !737, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %5, i32 0, i32 0, !dbg !739
  store i32 17, i32* %error, align 4, !dbg !740, !tbaa !741
  store %struct._node* null, %struct._node** %retval, !dbg !743
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !743

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !744

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i8*, i8** %s.addr, align 8, !dbg !745, !tbaa !669
  %7 = load %struct._object*, %struct._object** %filename, align 8, !dbg !746, !tbaa !669
  %8 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !747, !tbaa !669
  %9 = load i32, i32* %start.addr, align 4, !dbg !748, !tbaa !676
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !749, !tbaa !669
  %11 = load i32*, i32** %flags.addr, align 8, !dbg !750, !tbaa !669
  %call4 = call %struct._node* @PyParser_ParseStringObject(i8* %6, %struct._object* %7, %struct.grammar* %8, i32 %9, %struct.perrdetail* %10, i32* %11), !dbg !751
  store %struct._node* %call4, %struct._node** %n, align 8, !dbg !752, !tbaa !669
  br label %do.body, !dbg !753

do.body:                                          ; preds = %if.end.3
  %12 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !754
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !754
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !521, metadata !673), !dbg !756
  %13 = load %struct._object*, %struct._object** %filename, align 8, !dbg !757, !tbaa !669
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !756, !tbaa !669
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !758, !tbaa !669
  %cmp5 = icmp ne %struct._object* %14, null, !dbg !759
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !760

if.then.6:                                        ; preds = %do.body
  br label %do.body.7, !dbg !761

do.body.7:                                        ; preds = %if.then.6
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !763
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !523, metadata !673), !dbg !765
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !766, !tbaa !669
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !765, !tbaa !669
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !767, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !769
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !770, !tbaa !771
  %dec = add i64 %18, -1, !dbg !770
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !770, !tbaa !771
  %cmp8 = icmp ne i64 %dec, 0, !dbg !774
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !775

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10, !dbg !776

if.else:                                          ; preds = %do.body.7
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !778, !tbaa !669
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !780
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !780, !tbaa !781
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !782
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !782, !tbaa !783
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !786, !tbaa !669
  call void %21(%struct._object* %22), !dbg !787
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !788
  br label %do.cond, !dbg !790

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !791

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !793

if.end.11:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !795
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !795
  br label %do.cond.12, !dbg !798

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !799

do.end.13:                                        ; preds = %do.cond.12
  %25 = load %struct._node*, %struct._node** %n, align 8, !dbg !801, !tbaa !669
  store %struct._node* %25, %struct._node** %retval, !dbg !802
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !802

cleanup:                                          ; preds = %do.end.13, %if.then.2
  %26 = bitcast %struct._object** %filename to i8*, !dbg !803
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !803
  %27 = bitcast %struct._node** %n to i8*, !dbg !803
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !803
  %28 = load %struct._node*, %struct._node** %retval, !dbg !803
  ret %struct._node* %28, !dbg !803
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !463, metadata !673), !dbg !804
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !464, metadata !673), !dbg !805
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !465, metadata !673), !dbg !806
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !466, metadata !673), !dbg !807
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !467, metadata !673), !dbg !808
  store i32* %flags, i32** %flags.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !468, metadata !673), !dbg !809
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !810
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !810
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !469, metadata !673), !dbg !811
  %1 = bitcast i32* %exec_input to i8*, !dbg !812
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !812
  call void @llvm.dbg.declare(metadata i32* %exec_input, metadata !508, metadata !673), !dbg !813
  %2 = load i32, i32* %start.addr, align 4, !dbg !814, !tbaa !676
  %cmp = icmp eq i32 %2, 257, !dbg !815
  %conv = zext i1 %cmp to i32, !dbg !815
  store i32 %conv, i32* %exec_input, align 4, !dbg !813, !tbaa !676
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !816, !tbaa !669
  %4 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !818, !tbaa !669
  %call = call i32 @initerr(%struct.perrdetail* %3, %struct._object* %4), !dbg !819
  %cmp1 = icmp slt i32 %call, 0, !dbg !820
  br i1 %cmp1, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval, !dbg !822
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !822

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %flags.addr, align 8, !dbg !823, !tbaa !669
  %6 = load i32, i32* %5, align 4, !dbg !825, !tbaa !676
  %and = and i32 %6, 16, !dbg !826
  %tobool = icmp ne i32 %and, 0, !dbg !826
  br i1 %tobool, label %if.then.3, label %if.else, !dbg !827

if.then.3:                                        ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 8, !dbg !828, !tbaa !669
  %8 = load i32, i32* %exec_input, align 4, !dbg !829, !tbaa !676
  %call4 = call %struct.tok_state* @PyTokenizer_FromUTF8(i8* %7, i32 %8), !dbg !830
  store %struct.tok_state* %call4, %struct.tok_state** %tok, align 8, !dbg !831, !tbaa !669
  br label %if.end.6, !dbg !832

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 8, !dbg !833, !tbaa !669
  %10 = load i32, i32* %exec_input, align 4, !dbg !834, !tbaa !676
  %call5 = call %struct.tok_state* @PyTokenizer_FromString(i8* %9, i32 %10), !dbg !835
  store %struct.tok_state* %call5, %struct.tok_state** %tok, align 8, !dbg !836, !tbaa !669
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !837, !tbaa !669
  %cmp7 = icmp eq %struct.tok_state* %11, null, !dbg !839
  br i1 %cmp7, label %if.then.9, label %if.end.12, !dbg !840

if.then.9:                                        ; preds = %if.end.6
  %call10 = call %struct._object* @PyErr_Occurred(), !dbg !841
  %tobool11 = icmp ne %struct._object* %call10, null, !dbg !841
  %cond = select i1 %tobool11, i32 22, i32 15, !dbg !841
  %12 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !843, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %12, i32 0, i32 0, !dbg !844
  store i32 %cond, i32* %error, align 4, !dbg !845, !tbaa !741
  store %struct._node* null, %struct._node** %retval, !dbg !846
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !846

if.end.12:                                        ; preds = %if.end.6
  %13 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !847, !tbaa !669
  %filename13 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %13, i32 0, i32 1, !dbg !848
  %14 = load %struct._object*, %struct._object** %filename13, align 8, !dbg !848, !tbaa !849
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !850
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !851, !tbaa !771
  %inc = add i64 %15, 1, !dbg !851
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !851, !tbaa !771
  %16 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !852, !tbaa !669
  %filename14 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %16, i32 0, i32 1, !dbg !853
  %17 = load %struct._object*, %struct._object** %filename14, align 8, !dbg !853, !tbaa !849
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !854, !tbaa !669
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 16, !dbg !855
  store %struct._object* %17, %struct._object** %filename15, align 8, !dbg !856, !tbaa !857
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !859, !tbaa !669
  %20 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !860, !tbaa !669
  %21 = load i32, i32* %start.addr, align 4, !dbg !861, !tbaa !676
  %22 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !862, !tbaa !669
  %23 = load i32*, i32** %flags.addr, align 8, !dbg !863, !tbaa !669
  %call16 = call %struct._node* @parsetok(%struct.tok_state* %19, %struct.grammar* %20, i32 %21, %struct.perrdetail* %22, i32* %23), !dbg !864
  store %struct._node* %call16, %struct._node** %retval, !dbg !865
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !865

cleanup:                                          ; preds = %if.end.12, %if.then.9, %if.then
  %24 = bitcast i32* %exec_input to i8*, !dbg !866
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !866
  %25 = bitcast %struct.tok_state** %tok to i8*, !dbg !866
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !866
  %26 = load %struct._node*, %struct._node** %retval, !dbg !866
  ret %struct._node* %26, !dbg !866
}

; Function Attrs: nounwind uwtable
define internal i32 @initerr(%struct.perrdetail* %err_ret, %struct._object* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %err_ret.addr = alloca %struct.perrdetail*, align 8
  %filename.addr = alloca %struct._object*, align 8
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !664, metadata !673), !dbg !867
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !665, metadata !673), !dbg !868
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !869, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %0, i32 0, i32 0, !dbg !870
  store i32 10, i32* %error, align 4, !dbg !871, !tbaa !741
  %1 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !872, !tbaa !669
  %lineno = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %1, i32 0, i32 2, !dbg !873
  store i32 0, i32* %lineno, align 4, !dbg !874, !tbaa !875
  %2 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !876, !tbaa !669
  %offset = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %2, i32 0, i32 3, !dbg !877
  store i32 0, i32* %offset, align 4, !dbg !878, !tbaa !879
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !880, !tbaa !669
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 4, !dbg !881
  store i8* null, i8** %text, align 8, !dbg !882, !tbaa !883
  %4 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !884, !tbaa !669
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %4, i32 0, i32 5, !dbg !885
  store i32 -1, i32* %token, align 4, !dbg !886, !tbaa !887
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !888, !tbaa !669
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %5, i32 0, i32 6, !dbg !889
  store i32 -1, i32* %expected, align 4, !dbg !890, !tbaa !891
  %6 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !892, !tbaa !669
  %tobool = icmp ne %struct._object* %6, null, !dbg !892
  br i1 %tobool, label %if.then, label %if.else, !dbg !894

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !895, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !897
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !898, !tbaa !771
  %inc = add i64 %8, 1, !dbg !898
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !898, !tbaa !771
  %9 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !899, !tbaa !669
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !900, !tbaa !669
  %filename1 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %10, i32 0, i32 1, !dbg !901
  store %struct._object* %9, %struct._object** %filename1, align 8, !dbg !902, !tbaa !849
  br label %if.end.6, !dbg !903

if.else:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)), !dbg !904
  %11 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !906, !tbaa !669
  %filename2 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %11, i32 0, i32 1, !dbg !907
  store %struct._object* %call, %struct._object** %filename2, align 8, !dbg !908, !tbaa !849
  %12 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !909, !tbaa !669
  %filename3 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %12, i32 0, i32 1, !dbg !911
  %13 = load %struct._object*, %struct._object** %filename3, align 8, !dbg !911, !tbaa !849
  %cmp = icmp eq %struct._object* %13, null, !dbg !912
  br i1 %cmp, label %if.then.4, label %if.end, !dbg !913

if.then.4:                                        ; preds = %if.else
  %14 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !914, !tbaa !669
  %error5 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %14, i32 0, i32 0, !dbg !916
  store i32 17, i32* %error5, align 4, !dbg !917, !tbaa !741
  store i32 -1, i32* %retval, !dbg !918
  br label %return, !dbg !918

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %retval, !dbg !919
  br label %return, !dbg !919

return:                                           ; preds = %if.end.6, %if.then.4
  %15 = load i32, i32* %retval, !dbg !920
  ret i32 %15, !dbg !920
}

declare %struct.tok_state* @PyTokenizer_FromUTF8(i8*, i32) #3

declare %struct.tok_state* @PyTokenizer_FromString(i8*, i32) #3

declare %struct._object* @PyErr_Occurred() #3

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
  %cleanup.dest.slot = alloca i32
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %type = alloca i32, align 4
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %col_offset = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp75 = alloca i32, align 4
  %__s1_len86 = alloca i64, align 8
  %__s2_len88 = alloca i64, align 8
  %tmp89 = alloca i32, align 4
  %__s195 = alloca i8*, align 8
  %__result97 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %cur = alloca i8*, align 8
  %c = alloca i8, align 1
  %len237 = alloca i64, align 8
  %r = alloca %struct._node*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !589, metadata !673), !dbg !921
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !590, metadata !673), !dbg !922
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !591, metadata !673), !dbg !923
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !592, metadata !673), !dbg !924
  store i32* %flags, i32** %flags.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !593, metadata !673), !dbg !925
  %0 = bitcast %struct.parser_state** %ps to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.parser_state** %ps, metadata !594, metadata !673), !dbg !927
  %1 = bitcast %struct._node** %n to i8*, !dbg !928
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !928
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !619, metadata !673), !dbg !929
  %2 = bitcast i32* %started to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !930
  call void @llvm.dbg.declare(metadata i32* %started, metadata !620, metadata !673), !dbg !931
  store i32 0, i32* %started, align 4, !dbg !931, !tbaa !676
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !932, !tbaa !669
  %4 = load i32, i32* %start.addr, align 4, !dbg !934, !tbaa !676
  %call = call %struct.parser_state* @PyParser_New(%struct.grammar* %3, i32 %4), !dbg !935
  store %struct.parser_state* %call, %struct.parser_state** %ps, align 8, !dbg !936, !tbaa !669
  %cmp = icmp eq %struct.parser_state* %call, null, !dbg !937
  br i1 %cmp, label %if.then, label %if.end, !dbg !938

if.then:                                          ; preds = %entry
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !939, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %5, i32 0, i32 0, !dbg !941
  store i32 15, i32* %error, align 4, !dbg !942, !tbaa !741
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !943, !tbaa !669
  call void @PyTokenizer_Free(%struct.tok_state* %6), !dbg !944
  store %struct._node* null, %struct._node** %retval, !dbg !945
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.300, !dbg !945

if.end:                                           ; preds = %entry
  %7 = load i32*, i32** %flags.addr, align 8, !dbg !946, !tbaa !669
  %8 = load i32, i32* %7, align 4, !dbg !948, !tbaa !676
  %and = and i32 %8, 32, !dbg !949
  %tobool = icmp ne i32 %and, 0, !dbg !949
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !950

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !951, !tbaa !669
  %p_flags = getelementptr inbounds %struct.parser_state, %struct.parser_state* %9, i32 0, i32 3, !dbg !952
  %10 = load i64, i64* %p_flags, align 8, !dbg !953, !tbaa !954
  %or = or i64 %10, 262144, !dbg !953
  store i64 %or, i64* %p_flags, align 8, !dbg !953, !tbaa !954
  br label %if.end.2, !dbg !951

if.end.2:                                         ; preds = %if.then.1, %if.end
  br label %for.cond, !dbg !957

for.cond:                                         ; preds = %cleanup.cont, %if.end.2
  %11 = bitcast i8** %a to i8*, !dbg !958
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !958
  call void @llvm.dbg.declare(metadata i8** %a, metadata !621, metadata !673), !dbg !959
  %12 = bitcast i8** %b to i8*, !dbg !958
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !958
  call void @llvm.dbg.declare(metadata i8** %b, metadata !625, metadata !673), !dbg !960
  %13 = bitcast i32* %type to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 4, i8* %13) #2, !dbg !961
  call void @llvm.dbg.declare(metadata i32* %type, metadata !626, metadata !673), !dbg !962
  %14 = bitcast i64* %len to i8*, !dbg !963
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !963
  call void @llvm.dbg.declare(metadata i64* %len, metadata !627, metadata !673), !dbg !964
  %15 = bitcast i8** %str to i8*, !dbg !965
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !965
  call void @llvm.dbg.declare(metadata i8** %str, metadata !628, metadata !673), !dbg !966
  %16 = bitcast i32* %col_offset to i8*, !dbg !967
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !967
  call void @llvm.dbg.declare(metadata i32* %col_offset, metadata !629, metadata !673), !dbg !968
  %17 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !969, !tbaa !669
  %call3 = call i32 @PyTokenizer_Get(%struct.tok_state* %17, i8** %a, i8** %b), !dbg !970
  store i32 %call3, i32* %type, align 4, !dbg !971, !tbaa !676
  %18 = load i32, i32* %type, align 4, !dbg !972, !tbaa !676
  %cmp4 = icmp eq i32 %18, 53, !dbg !974
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !975

if.then.5:                                        ; preds = %for.cond
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !976, !tbaa !669
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 5, !dbg !978
  %20 = load i32, i32* %done, align 4, !dbg !978, !tbaa !979
  %21 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !980, !tbaa !669
  %error6 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %21, i32 0, i32 0, !dbg !981
  store i32 %20, i32* %error6, align 4, !dbg !982, !tbaa !741
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !983

if.end.7:                                         ; preds = %for.cond
  %22 = load i32, i32* %type, align 4, !dbg !984, !tbaa !676
  %cmp8 = icmp eq i32 %22, 0, !dbg !986
  br i1 %cmp8, label %land.lhs.true, label %if.else, !dbg !987

land.lhs.true:                                    ; preds = %if.end.7
  %23 = load i32, i32* %started, align 4, !dbg !988, !tbaa !676
  %tobool9 = icmp ne i32 %23, 0, !dbg !988
  br i1 %tobool9, label %if.then.10, label %if.else, !dbg !990

if.then.10:                                       ; preds = %land.lhs.true
  store i32 4, i32* %type, align 4, !dbg !991, !tbaa !676
  store i32 0, i32* %started, align 4, !dbg !993, !tbaa !676
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !994, !tbaa !669
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 8, !dbg !996
  %25 = load i32, i32* %indent, align 4, !dbg !996, !tbaa !997
  %tobool11 = icmp ne i32 %25, 0, !dbg !994
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.18, !dbg !998

land.lhs.true.12:                                 ; preds = %if.then.10
  %26 = load i32*, i32** %flags.addr, align 8, !dbg !999, !tbaa !669
  %27 = load i32, i32* %26, align 4, !dbg !1000, !tbaa !676
  %and13 = and i32 %27, 2, !dbg !1001
  %tobool14 = icmp ne i32 %and13, 0, !dbg !1001
  br i1 %tobool14, label %if.end.18, label %if.then.15, !dbg !1002

if.then.15:                                       ; preds = %land.lhs.true.12
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1003, !tbaa !669
  %indent16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %28, i32 0, i32 8, !dbg !1005
  %29 = load i32, i32* %indent16, align 4, !dbg !1005, !tbaa !997
  %sub = sub i32 0, %29, !dbg !1006
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1007, !tbaa !669
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 11, !dbg !1008
  store i32 %sub, i32* %pendin, align 4, !dbg !1009, !tbaa !1010
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1011, !tbaa !669
  %indent17 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 8, !dbg !1012
  store i32 0, i32* %indent17, align 4, !dbg !1013, !tbaa !997
  br label %if.end.18, !dbg !1014

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true.12, %if.then.10
  br label %if.end.19, !dbg !1015

if.else:                                          ; preds = %land.lhs.true, %if.end.7
  store i32 1, i32* %started, align 4, !dbg !1016, !tbaa !676
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.18
  %32 = load i8*, i8** %b, align 8, !dbg !1017, !tbaa !669
  %33 = load i8*, i8** %a, align 8, !dbg !1018, !tbaa !669
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64, !dbg !1019
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64, !dbg !1019
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1019
  store i64 %sub.ptr.sub, i64* %len, align 8, !dbg !1020, !tbaa !1021
  %34 = load i64, i64* %len, align 8, !dbg !1022, !tbaa !1021
  %add = add i64 %34, 1, !dbg !1023
  %call20 = call i8* @PyObject_Malloc(i64 %add), !dbg !1024
  store i8* %call20, i8** %str, align 8, !dbg !1025, !tbaa !669
  %35 = load i8*, i8** %str, align 8, !dbg !1026, !tbaa !669
  %cmp21 = icmp eq i8* %35, null, !dbg !1028
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !1029

if.then.22:                                       ; preds = %if.end.19
  %36 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1030, !tbaa !669
  %error23 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %36, i32 0, i32 0, !dbg !1032
  store i32 15, i32* %error23, align 4, !dbg !1033, !tbaa !741
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1034

if.end.24:                                        ; preds = %if.end.19
  %37 = load i64, i64* %len, align 8, !dbg !1035, !tbaa !1021
  %cmp25 = icmp ugt i64 %37, 0, !dbg !1037
  br i1 %cmp25, label %if.then.26, label %if.end.28, !dbg !1038

if.then.26:                                       ; preds = %if.end.24
  %38 = load i8*, i8** %str, align 8, !dbg !1039, !tbaa !669
  %39 = load i8*, i8** %a, align 8, !dbg !1040, !tbaa !669
  %40 = load i64, i64* %len, align 8, !dbg !1041, !tbaa !1021
  %call27 = call i8* @strncpy(i8* %38, i8* %39, i64 %40) #2, !dbg !1042
  br label %if.end.28, !dbg !1042

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %41 = load i64, i64* %len, align 8, !dbg !1043, !tbaa !1021
  %42 = load i8*, i8** %str, align 8, !dbg !1044, !tbaa !669
  %arrayidx = getelementptr i8, i8* %42, i64 %41, !dbg !1044
  store i8 0, i8* %arrayidx, align 1, !dbg !1045, !tbaa !1046
  %43 = load i32, i32* %type, align 4, !dbg !1047, !tbaa !676
  %cmp29 = icmp eq i32 %43, 28, !dbg !1048
  br i1 %cmp29, label %if.then.30, label %if.end.145, !dbg !1049

if.then.30:                                       ; preds = %if.end.28
  %44 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1050, !tbaa !669
  %p_flags31 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %44, i32 0, i32 3, !dbg !1051
  %45 = load i64, i64* %p_flags31, align 8, !dbg !1051, !tbaa !954
  %and32 = and i64 %45, 262144, !dbg !1052
  %tobool33 = icmp ne i64 %and32, 0, !dbg !1052
  br i1 %tobool33, label %if.else.80, label %land.lhs.true.34, !dbg !1053

land.lhs.true.34:                                 ; preds = %if.then.30
  %46 = bitcast i64* %__s1_len to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !630, metadata !673), !dbg !1055
  %47 = bitcast i64* %__s2_len to i8*, !dbg !1054
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !635, metadata !673), !dbg !1056
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str to i64)), i64 1), label %land.lhs.true.35, label %cond.false, !dbg !1057

land.lhs.true.35:                                 ; preds = %land.lhs.true.34
  store i64 2, i64* %__s2_len, align 8, !dbg !1058, !tbaa !1021
  %48 = load i64, i64* %__s2_len, align 8, !dbg !1060, !tbaa !1021
  %cmp36 = icmp ult i64 %48, 4, !dbg !1061
  br i1 %cmp36, label %cond.true, label %cond.false, !dbg !1062

cond.true:                                        ; preds = %land.lhs.true.35
  %49 = bitcast i8** %__s1 to i8*, !dbg !1063
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1063
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !636, metadata !673), !dbg !1065
  %50 = load i8*, i8** %str, align 8, !dbg !1066, !tbaa !669
  store i8* %50, i8** %__s1, align 8, !dbg !1065, !tbaa !669
  %51 = bitcast i32* %__result to i8*, !dbg !1067
  call void @llvm.lifetime.start(i64 4, i8* %51) #2, !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !638, metadata !673), !dbg !1068
  %52 = load i8*, i8** %__s1, align 8, !dbg !1069, !tbaa !669
  %arrayidx39 = getelementptr i8, i8* %52, i64 0, !dbg !1069
  %53 = load i8, i8* %arrayidx39, align 1, !dbg !1069, !tbaa !1046
  %conv = zext i8 %53 to i32, !dbg !1069
  %54 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), align 1, !dbg !1070, !tbaa !1046
  %conv40 = zext i8 %54 to i32, !dbg !1070
  %sub41 = sub i32 %conv, %conv40, !dbg !1071
  store i32 %sub41, i32* %__result, align 4, !dbg !1068, !tbaa !676
  %55 = load i64, i64* %__s2_len, align 8, !dbg !1072, !tbaa !1021
  %cmp42 = icmp ugt i64 %55, 0, !dbg !1074
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.74, !dbg !1075

land.lhs.true.44:                                 ; preds = %cond.true
  %56 = load i32, i32* %__result, align 4, !dbg !1076, !tbaa !676
  %cmp45 = icmp eq i32 %56, 0, !dbg !1078
  br i1 %cmp45, label %if.then.47, label %if.end.74, !dbg !1079

if.then.47:                                       ; preds = %land.lhs.true.44
  %57 = load i8*, i8** %__s1, align 8, !dbg !1080, !tbaa !669
  %arrayidx48 = getelementptr i8, i8* %57, i64 1, !dbg !1080
  %58 = load i8, i8* %arrayidx48, align 1, !dbg !1080, !tbaa !1046
  %conv49 = zext i8 %58 to i32, !dbg !1080
  %59 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i64 1), align 1, !dbg !1083, !tbaa !1046
  %conv50 = zext i8 %59 to i32, !dbg !1083
  %sub51 = sub i32 %conv49, %conv50, !dbg !1084
  store i32 %sub51, i32* %__result, align 4, !dbg !1085, !tbaa !676
  %60 = load i64, i64* %__s2_len, align 8, !dbg !1086, !tbaa !1021
  %cmp52 = icmp ugt i64 %60, 1, !dbg !1088
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.73, !dbg !1089

land.lhs.true.54:                                 ; preds = %if.then.47
  %61 = load i32, i32* %__result, align 4, !dbg !1090, !tbaa !676
  %cmp55 = icmp eq i32 %61, 0, !dbg !1092
  br i1 %cmp55, label %if.then.57, label %if.end.73, !dbg !1093

if.then.57:                                       ; preds = %land.lhs.true.54
  %62 = load i8*, i8** %__s1, align 8, !dbg !1094, !tbaa !669
  %arrayidx58 = getelementptr i8, i8* %62, i64 2, !dbg !1094
  %63 = load i8, i8* %arrayidx58, align 1, !dbg !1094, !tbaa !1046
  %conv59 = zext i8 %63 to i32, !dbg !1094
  %64 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i64 2), align 1, !dbg !1097, !tbaa !1046
  %conv60 = zext i8 %64 to i32, !dbg !1097
  %sub61 = sub i32 %conv59, %conv60, !dbg !1098
  store i32 %sub61, i32* %__result, align 4, !dbg !1099, !tbaa !676
  %65 = load i64, i64* %__s2_len, align 8, !dbg !1100, !tbaa !1021
  %cmp62 = icmp ugt i64 %65, 2, !dbg !1102
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.72, !dbg !1103

land.lhs.true.64:                                 ; preds = %if.then.57
  %66 = load i32, i32* %__result, align 4, !dbg !1104, !tbaa !676
  %cmp65 = icmp eq i32 %66, 0, !dbg !1106
  br i1 %cmp65, label %if.then.67, label %if.end.72, !dbg !1107

if.then.67:                                       ; preds = %land.lhs.true.64
  %67 = load i8*, i8** %__s1, align 8, !dbg !1108, !tbaa !669
  %arrayidx68 = getelementptr i8, i8* %67, i64 3, !dbg !1108
  %68 = load i8, i8* %arrayidx68, align 1, !dbg !1108, !tbaa !1046
  %conv69 = zext i8 %68 to i32, !dbg !1108
  %69 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !dbg !1110, !tbaa !1046
  %conv70 = zext i8 %69 to i32, !dbg !1110
  %sub71 = sub i32 %conv69, %conv70, !dbg !1111
  store i32 %sub71, i32* %__result, align 4, !dbg !1112, !tbaa !676
  br label %if.end.72, !dbg !1113

if.end.72:                                        ; preds = %if.then.67, %land.lhs.true.64, %if.then.57
  br label %if.end.73, !dbg !1114

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true.54, %if.then.47
  br label %if.end.74, !dbg !1118

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.44, %cond.true
  %70 = load i32, i32* %__result, align 4, !dbg !1122, !tbaa !676
  store i32 %70, i32* %tmp75, !dbg !1126, !tbaa !676
  %71 = bitcast i32* %__result to i8*, !dbg !1127
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !1127
  %72 = bitcast i8** %__s1 to i8*, !dbg !1127
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1127
  %73 = load i32, i32* %tmp75, !dbg !1128, !tbaa !676
  br label %cond.end, !dbg !1062

cond.false:                                       ; preds = %land.lhs.true.35, %land.lhs.true.34
  %74 = load i8*, i8** %str, align 8, !dbg !1129, !tbaa !669
  %call76 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #2, !dbg !1132
  br label %cond.end, !dbg !1062

cond.end:                                         ; preds = %cond.false, %if.end.74
  %cond = phi i32 [ %73, %if.end.74 ], [ %call76, %cond.false ], !dbg !1062
  store i32 %cond, i32* %tmp, !dbg !1133, !tbaa !676
  %75 = bitcast i64* %__s2_len to i8*, !dbg !1136
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !1136
  %76 = bitcast i64* %__s1_len to i8*, !dbg !1136
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !1136
  %77 = load i32, i32* %tmp, !dbg !1137, !tbaa !676
  %tobool77 = icmp ne i32 %77, 0, !dbg !1138
  br i1 %tobool77, label %if.then.78, label %if.else.80, !dbg !1139

if.then.78:                                       ; preds = %cond.end
  %78 = load i8*, i8** %str, align 8, !dbg !1140, !tbaa !669
  call void @PyObject_Free(i8* %78), !dbg !1142
  %79 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1143, !tbaa !669
  %error79 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %79, i32 0, i32 0, !dbg !1144
  store i32 14, i32* %error79, align 4, !dbg !1145, !tbaa !741
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1146

if.else.80:                                       ; preds = %cond.end, %if.then.30
  %80 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1147, !tbaa !669
  %p_flags81 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %80, i32 0, i32 3, !dbg !1148
  %81 = load i64, i64* %p_flags81, align 8, !dbg !1148, !tbaa !954
  %and82 = and i64 %81, 262144, !dbg !1149
  %tobool83 = icmp ne i64 %and82, 0, !dbg !1149
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.143, !dbg !1150

land.lhs.true.84:                                 ; preds = %if.else.80
  %82 = bitcast i64* %__s1_len86 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !1151
  call void @llvm.dbg.declare(metadata i64* %__s1_len86, metadata !639, metadata !673), !dbg !1152
  %83 = bitcast i64* %__s2_len88 to i8*, !dbg !1151
  call void @llvm.lifetime.start(i64 8, i8* %83) #2, !dbg !1151
  call void @llvm.dbg.declare(metadata i64* %__s2_len88, metadata !642, metadata !673), !dbg !1153
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.90, label %cond.false.136, !dbg !1154

land.lhs.true.90:                                 ; preds = %land.lhs.true.84
  store i64 2, i64* %__s2_len88, align 8, !dbg !1155, !tbaa !1021
  %84 = load i64, i64* %__s2_len88, align 8, !dbg !1157, !tbaa !1021
  %cmp91 = icmp ult i64 %84, 4, !dbg !1158
  br i1 %cmp91, label %cond.true.93, label %cond.false.136, !dbg !1159

cond.true.93:                                     ; preds = %land.lhs.true.90
  %85 = bitcast i8** %__s195 to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 8, i8* %85) #2, !dbg !1160
  call void @llvm.dbg.declare(metadata i8** %__s195, metadata !643, metadata !673), !dbg !1162
  %86 = load i8*, i8** %str, align 8, !dbg !1163, !tbaa !669
  store i8* %86, i8** %__s195, align 8, !dbg !1162, !tbaa !669
  %87 = bitcast i32* %__result97 to i8*, !dbg !1164
  call void @llvm.lifetime.start(i64 4, i8* %87) #2, !dbg !1164
  call void @llvm.dbg.declare(metadata i32* %__result97, metadata !645, metadata !673), !dbg !1165
  %88 = load i8*, i8** %__s195, align 8, !dbg !1166, !tbaa !669
  %arrayidx98 = getelementptr i8, i8* %88, i64 0, !dbg !1166
  %89 = load i8, i8* %arrayidx98, align 1, !dbg !1166, !tbaa !1046
  %conv99 = zext i8 %89 to i32, !dbg !1166
  %90 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), align 1, !dbg !1167, !tbaa !1046
  %conv100 = zext i8 %90 to i32, !dbg !1167
  %sub101 = sub i32 %conv99, %conv100, !dbg !1168
  store i32 %sub101, i32* %__result97, align 4, !dbg !1165, !tbaa !676
  %91 = load i64, i64* %__s2_len88, align 8, !dbg !1169, !tbaa !1021
  %cmp102 = icmp ugt i64 %91, 0, !dbg !1171
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.134, !dbg !1172

land.lhs.true.104:                                ; preds = %cond.true.93
  %92 = load i32, i32* %__result97, align 4, !dbg !1173, !tbaa !676
  %cmp105 = icmp eq i32 %92, 0, !dbg !1175
  br i1 %cmp105, label %if.then.107, label %if.end.134, !dbg !1176

if.then.107:                                      ; preds = %land.lhs.true.104
  %93 = load i8*, i8** %__s195, align 8, !dbg !1177, !tbaa !669
  %arrayidx108 = getelementptr i8, i8* %93, i64 1, !dbg !1177
  %94 = load i8, i8* %arrayidx108, align 1, !dbg !1177, !tbaa !1046
  %conv109 = zext i8 %94 to i32, !dbg !1177
  %95 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 1), align 1, !dbg !1180, !tbaa !1046
  %conv110 = zext i8 %95 to i32, !dbg !1180
  %sub111 = sub i32 %conv109, %conv110, !dbg !1181
  store i32 %sub111, i32* %__result97, align 4, !dbg !1182, !tbaa !676
  %96 = load i64, i64* %__s2_len88, align 8, !dbg !1183, !tbaa !1021
  %cmp112 = icmp ugt i64 %96, 1, !dbg !1185
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.133, !dbg !1186

land.lhs.true.114:                                ; preds = %if.then.107
  %97 = load i32, i32* %__result97, align 4, !dbg !1187, !tbaa !676
  %cmp115 = icmp eq i32 %97, 0, !dbg !1189
  br i1 %cmp115, label %if.then.117, label %if.end.133, !dbg !1190

if.then.117:                                      ; preds = %land.lhs.true.114
  %98 = load i8*, i8** %__s195, align 8, !dbg !1191, !tbaa !669
  %arrayidx118 = getelementptr i8, i8* %98, i64 2, !dbg !1191
  %99 = load i8, i8* %arrayidx118, align 1, !dbg !1191, !tbaa !1046
  %conv119 = zext i8 %99 to i32, !dbg !1191
  %100 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 2), align 1, !dbg !1194, !tbaa !1046
  %conv120 = zext i8 %100 to i32, !dbg !1194
  %sub121 = sub i32 %conv119, %conv120, !dbg !1195
  store i32 %sub121, i32* %__result97, align 4, !dbg !1196, !tbaa !676
  %101 = load i64, i64* %__s2_len88, align 8, !dbg !1197, !tbaa !1021
  %cmp122 = icmp ugt i64 %101, 2, !dbg !1199
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.132, !dbg !1200

land.lhs.true.124:                                ; preds = %if.then.117
  %102 = load i32, i32* %__result97, align 4, !dbg !1201, !tbaa !676
  %cmp125 = icmp eq i32 %102, 0, !dbg !1203
  br i1 %cmp125, label %if.then.127, label %if.end.132, !dbg !1204

if.then.127:                                      ; preds = %land.lhs.true.124
  %103 = load i8*, i8** %__s195, align 8, !dbg !1205, !tbaa !669
  %arrayidx128 = getelementptr i8, i8* %103, i64 3, !dbg !1205
  %104 = load i8, i8* %arrayidx128, align 1, !dbg !1205, !tbaa !1046
  %conv129 = zext i8 %104 to i32, !dbg !1205
  %105 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 3), align 1, !dbg !1207, !tbaa !1046
  %conv130 = zext i8 %105 to i32, !dbg !1207
  %sub131 = sub i32 %conv129, %conv130, !dbg !1208
  store i32 %sub131, i32* %__result97, align 4, !dbg !1209, !tbaa !676
  br label %if.end.132, !dbg !1210

if.end.132:                                       ; preds = %if.then.127, %land.lhs.true.124, %if.then.117
  br label %if.end.133, !dbg !1211

if.end.133:                                       ; preds = %if.end.132, %land.lhs.true.114, %if.then.107
  br label %if.end.134, !dbg !1215

if.end.134:                                       ; preds = %if.end.133, %land.lhs.true.104, %cond.true.93
  %106 = load i32, i32* %__result97, align 4, !dbg !1219, !tbaa !676
  store i32 %106, i32* %tmp135, !dbg !1223, !tbaa !676
  %107 = bitcast i32* %__result97 to i8*, !dbg !1224
  call void @llvm.lifetime.end(i64 4, i8* %107) #2, !dbg !1224
  %108 = bitcast i8** %__s195 to i8*, !dbg !1224
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !1224
  %109 = load i32, i32* %tmp135, !dbg !1225, !tbaa !676
  br label %cond.end.138, !dbg !1159

cond.false.136:                                   ; preds = %land.lhs.true.90, %land.lhs.true.84
  %110 = load i8*, i8** %str, align 8, !dbg !1226, !tbaa !669
  %call137 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #2, !dbg !1229
  br label %cond.end.138, !dbg !1159

cond.end.138:                                     ; preds = %cond.false.136, %if.end.134
  %cond139 = phi i32 [ %109, %if.end.134 ], [ %call137, %cond.false.136 ], !dbg !1159
  store i32 %cond139, i32* %tmp89, !dbg !1230, !tbaa !676
  %111 = bitcast i64* %__s2_len88 to i8*, !dbg !1233
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !1233
  %112 = bitcast i64* %__s1_len86 to i8*, !dbg !1233
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !1233
  %113 = load i32, i32* %tmp89, !dbg !1234, !tbaa !676
  %tobool140 = icmp ne i32 %113, 0, !dbg !1235
  br i1 %tobool140, label %if.then.141, label %if.end.143, !dbg !1236

if.then.141:                                      ; preds = %cond.end.138
  %114 = load i8*, i8** %str, align 8, !dbg !1237, !tbaa !669
  call void @PyObject_Free(i8* %114), !dbg !1239
  %115 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1240, !tbaa !669
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %115, i32 0, i32 4, !dbg !1241
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8** %text, align 8, !dbg !1242, !tbaa !883
  %116 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1243, !tbaa !669
  %error142 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %116, i32 0, i32 0, !dbg !1244
  store i32 14, i32* %error142, align 4, !dbg !1245, !tbaa !741
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1246

if.end.143:                                       ; preds = %cond.end.138, %if.else.80
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143
  br label %if.end.145, !dbg !1247

if.end.145:                                       ; preds = %if.end.144, %if.end.28
  %117 = load i8*, i8** %a, align 8, !dbg !1248, !tbaa !669
  %118 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1250, !tbaa !669
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %118, i32 0, i32 26, !dbg !1251
  %119 = load i8*, i8** %line_start, align 8, !dbg !1251, !tbaa !1252
  %cmp146 = icmp uge i8* %117, %119, !dbg !1253
  br i1 %cmp146, label %if.then.148, label %if.else.154, !dbg !1254

if.then.148:                                      ; preds = %if.end.145
  %120 = load i8*, i8** %a, align 8, !dbg !1255, !tbaa !669
  %121 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1256, !tbaa !669
  %line_start149 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %121, i32 0, i32 26, !dbg !1257
  %122 = load i8*, i8** %line_start149, align 8, !dbg !1257, !tbaa !1252
  %sub.ptr.lhs.cast150 = ptrtoint i8* %120 to i64, !dbg !1258
  %sub.ptr.rhs.cast151 = ptrtoint i8* %122 to i64, !dbg !1258
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151, !dbg !1258
  %conv153 = trunc i64 %sub.ptr.sub152 to i32, !dbg !1259
  store i32 %conv153, i32* %col_offset, align 4, !dbg !1260, !tbaa !676
  br label %if.end.155, !dbg !1261

if.else.154:                                      ; preds = %if.end.145
  store i32 -1, i32* %col_offset, align 4, !dbg !1262, !tbaa !676
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.148
  %123 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1263, !tbaa !669
  %124 = load i32, i32* %type, align 4, !dbg !1265, !tbaa !676
  %125 = load i8*, i8** %str, align 8, !dbg !1266, !tbaa !669
  %126 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1267, !tbaa !669
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %126, i32 0, i32 14, !dbg !1268
  %127 = load i32, i32* %lineno, align 4, !dbg !1268, !tbaa !1269
  %128 = load i32, i32* %col_offset, align 4, !dbg !1270, !tbaa !676
  %129 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1271, !tbaa !669
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %129, i32 0, i32 6, !dbg !1272
  %call156 = call i32 @PyParser_AddToken(%struct.parser_state* %123, i32 %124, i8* %125, i32 %127, i32 %128, i32* %expected), !dbg !1273
  %130 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1274, !tbaa !669
  %error157 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %130, i32 0, i32 0, !dbg !1275
  store i32 %call156, i32* %error157, align 4, !dbg !1276, !tbaa !741
  %cmp158 = icmp ne i32 %call156, 10, !dbg !1277
  br i1 %cmp158, label %if.then.160, label %if.end.166, !dbg !1278

if.then.160:                                      ; preds = %if.end.155
  %131 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1279, !tbaa !669
  %error161 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %131, i32 0, i32 0, !dbg !1282
  %132 = load i32, i32* %error161, align 4, !dbg !1282, !tbaa !741
  %cmp162 = icmp ne i32 %132, 16, !dbg !1283
  br i1 %cmp162, label %if.then.164, label %if.end.165, !dbg !1284

if.then.164:                                      ; preds = %if.then.160
  %133 = load i8*, i8** %str, align 8, !dbg !1285, !tbaa !669
  call void @PyObject_Free(i8* %133), !dbg !1287
  %134 = load i32, i32* %type, align 4, !dbg !1288, !tbaa !676
  %135 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1289, !tbaa !669
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %135, i32 0, i32 5, !dbg !1290
  store i32 %134, i32* %token, align 4, !dbg !1291, !tbaa !887
  br label %if.end.165, !dbg !1292

if.end.165:                                       ; preds = %if.then.164, %if.then.160
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1293

if.end.166:                                       ; preds = %if.end.155
  store i32 0, i32* %cleanup.dest.slot, !dbg !1294
  br label %cleanup, !dbg !1294

cleanup:                                          ; preds = %if.end.166, %if.end.165, %if.then.141, %if.then.78, %if.then.22, %if.then.5
  %136 = bitcast i32* %col_offset to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !1295
  %137 = bitcast i8** %str to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1295
  %138 = bitcast i64* %len to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1295
  %139 = bitcast i32* %type to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 4, i8* %139) #2, !dbg !1295
  %140 = bitcast i8** %b to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %140) #2, !dbg !1295
  %141 = bitcast i8** %a to i8*, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !1295
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !1297

for.end:                                          ; preds = %cleanup
  %142 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1298, !tbaa !669
  %error172 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %142, i32 0, i32 0, !dbg !1299
  %143 = load i32, i32* %error172, align 4, !dbg !1299, !tbaa !741
  %cmp173 = icmp eq i32 %143, 16, !dbg !1300
  br i1 %cmp173, label %if.then.175, label %if.else.218, !dbg !1301

if.then.175:                                      ; preds = %for.end
  %144 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1302, !tbaa !669
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %144, i32 0, i32 2, !dbg !1303
  %145 = load %struct._node*, %struct._node** %p_tree, align 8, !dbg !1303, !tbaa !1304
  store %struct._node* %145, %struct._node** %n, align 8, !dbg !1305, !tbaa !669
  %146 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1306, !tbaa !669
  %p_tree176 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %146, i32 0, i32 2, !dbg !1307
  store %struct._node* null, %struct._node** %p_tree176, align 8, !dbg !1308, !tbaa !1304
  %147 = load i32, i32* %start.addr, align 4, !dbg !1309, !tbaa !676
  %cmp177 = icmp eq i32 %147, 256, !dbg !1310
  br i1 %cmp177, label %if.then.179, label %if.end.217, !dbg !1311

if.then.179:                                      ; preds = %if.then.175
  %148 = bitcast i8** %cur to i8*, !dbg !1312
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !1312
  call void @llvm.dbg.declare(metadata i8** %cur, metadata !646, metadata !673), !dbg !1313
  %149 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1314, !tbaa !669
  %cur181 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %149, i32 0, i32 1, !dbg !1315
  %150 = load i8*, i8** %cur181, align 8, !dbg !1315, !tbaa !1316
  store i8* %150, i8** %cur, align 8, !dbg !1313, !tbaa !669
  call void @llvm.lifetime.start(i64 1, i8* %c) #2, !dbg !1317
  call void @llvm.dbg.declare(metadata i8* %c, metadata !651, metadata !673), !dbg !1318
  %151 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1319, !tbaa !669
  %cur183 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %151, i32 0, i32 1, !dbg !1320
  %152 = load i8*, i8** %cur183, align 8, !dbg !1320, !tbaa !1316
  %153 = load i8, i8* %152, align 1, !dbg !1321, !tbaa !1046
  store i8 %153, i8* %c, align 1, !dbg !1318, !tbaa !1046
  br label %for.cond.184, !dbg !1322

for.cond.184:                                     ; preds = %while.end.215, %if.then.179
  br label %while.cond, !dbg !1323

while.cond:                                       ; preds = %while.body, %for.cond.184
  %154 = load i8, i8* %c, align 1, !dbg !1327, !tbaa !1046
  %conv185 = sext i8 %154 to i32, !dbg !1327
  %cmp186 = icmp eq i32 %conv185, 32, !dbg !1330
  br i1 %cmp186, label %lor.end, label %lor.lhs.false, !dbg !1331

lor.lhs.false:                                    ; preds = %while.cond
  %155 = load i8, i8* %c, align 1, !dbg !1332, !tbaa !1046
  %conv188 = sext i8 %155 to i32, !dbg !1332
  %cmp189 = icmp eq i32 %conv188, 9, !dbg !1334
  br i1 %cmp189, label %lor.end, label %lor.lhs.false.191, !dbg !1335

lor.lhs.false.191:                                ; preds = %lor.lhs.false
  %156 = load i8, i8* %c, align 1, !dbg !1336, !tbaa !1046
  %conv192 = sext i8 %156 to i32, !dbg !1336
  %cmp193 = icmp eq i32 %conv192, 10, !dbg !1338
  br i1 %cmp193, label %lor.end, label %lor.rhs, !dbg !1339

lor.rhs:                                          ; preds = %lor.lhs.false.191
  %157 = load i8, i8* %c, align 1, !dbg !1340, !tbaa !1046
  %conv195 = sext i8 %157 to i32, !dbg !1340
  %cmp196 = icmp eq i32 %conv195, 12, !dbg !1342
  br label %lor.end, !dbg !1339

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.191, %lor.lhs.false, %while.cond
  %158 = phi i1 [ true, %lor.lhs.false.191 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp196, %lor.rhs ]
  br i1 %158, label %while.body, label %while.end, !dbg !1343

while.body:                                       ; preds = %lor.end
  %159 = load i8*, i8** %cur, align 8, !dbg !1348, !tbaa !669
  %incdec.ptr = getelementptr i8, i8* %159, i32 1, !dbg !1348
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !1348, !tbaa !669
  %160 = load i8, i8* %incdec.ptr, align 1, !dbg !1349, !tbaa !1046
  store i8 %160, i8* %c, align 1, !dbg !1350, !tbaa !1046
  br label %while.cond, !dbg !1323

while.end:                                        ; preds = %lor.end
  %161 = load i8, i8* %c, align 1, !dbg !1351, !tbaa !1046
  %tobool198 = icmp ne i8 %161, 0, !dbg !1351
  br i1 %tobool198, label %if.end.200, label %if.then.199, !dbg !1353

if.then.199:                                      ; preds = %while.end
  br label %for.end.216, !dbg !1354

if.end.200:                                       ; preds = %while.end
  %162 = load i8, i8* %c, align 1, !dbg !1355, !tbaa !1046
  %conv201 = sext i8 %162 to i32, !dbg !1355
  %cmp202 = icmp ne i32 %conv201, 35, !dbg !1357
  br i1 %cmp202, label %if.then.204, label %if.end.206, !dbg !1358

if.then.204:                                      ; preds = %if.end.200
  %163 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1359, !tbaa !669
  %error205 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %163, i32 0, i32 0, !dbg !1361
  store i32 27, i32* %error205, align 4, !dbg !1362, !tbaa !741
  %164 = load %struct._node*, %struct._node** %n, align 8, !dbg !1363, !tbaa !669
  call void @PyNode_Free(%struct._node* %164), !dbg !1364
  store %struct._node* null, %struct._node** %n, align 8, !dbg !1365, !tbaa !669
  br label %for.end.216, !dbg !1366

if.end.206:                                       ; preds = %if.end.200
  br label %while.cond.207, !dbg !1367

while.cond.207:                                   ; preds = %while.body.213, %if.end.206
  %165 = load i8, i8* %c, align 1, !dbg !1368, !tbaa !1046
  %conv208 = sext i8 %165 to i32, !dbg !1368
  %tobool209 = icmp ne i32 %conv208, 0, !dbg !1368
  br i1 %tobool209, label %land.rhs, label %land.end, !dbg !1370

land.rhs:                                         ; preds = %while.cond.207
  %166 = load i8, i8* %c, align 1, !dbg !1371, !tbaa !1046
  %conv210 = sext i8 %166 to i32, !dbg !1371
  %cmp211 = icmp ne i32 %conv210, 10, !dbg !1372
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.207
  %167 = phi i1 [ false, %while.cond.207 ], [ %cmp211, %land.rhs ]
  br i1 %167, label %while.body.213, label %while.end.215, !dbg !1373

while.body.213:                                   ; preds = %land.end
  %168 = load i8*, i8** %cur, align 8, !dbg !1374, !tbaa !669
  %incdec.ptr214 = getelementptr i8, i8* %168, i32 1, !dbg !1374
  store i8* %incdec.ptr214, i8** %cur, align 8, !dbg !1374, !tbaa !669
  %169 = load i8, i8* %incdec.ptr214, align 1, !dbg !1375, !tbaa !1046
  store i8 %169, i8* %c, align 1, !dbg !1376, !tbaa !1046
  br label %while.cond.207, !dbg !1367

while.end.215:                                    ; preds = %land.end
  br label %for.cond.184, !dbg !1377

for.end.216:                                      ; preds = %if.then.204, %if.then.199
  call void @llvm.lifetime.end(i64 1, i8* %c) #2, !dbg !1378
  %170 = bitcast i8** %cur to i8*, !dbg !1378
  call void @llvm.lifetime.end(i64 8, i8* %170) #2, !dbg !1378
  br label %if.end.217, !dbg !1379

if.end.217:                                       ; preds = %for.end.216, %if.then.175
  br label %if.end.219, !dbg !1380

if.else.218:                                      ; preds = %for.end
  store %struct._node* null, %struct._node** %n, align 8, !dbg !1381, !tbaa !669
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.218, %if.end.217
  %171 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1382, !tbaa !669
  %p_flags220 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %171, i32 0, i32 3, !dbg !1383
  %172 = load i64, i64* %p_flags220, align 8, !dbg !1383, !tbaa !954
  %conv221 = trunc i64 %172 to i32, !dbg !1382
  %173 = load i32*, i32** %flags.addr, align 8, !dbg !1384, !tbaa !669
  store i32 %conv221, i32* %173, align 4, !dbg !1385, !tbaa !676
  %174 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !1386, !tbaa !669
  call void @PyParser_Delete(%struct.parser_state* %174), !dbg !1387
  %175 = load %struct._node*, %struct._node** %n, align 8, !dbg !1388, !tbaa !669
  %cmp222 = icmp eq %struct._node* %175, null, !dbg !1389
  br i1 %cmp222, label %if.then.224, label %if.else.266, !dbg !1390

if.then.224:                                      ; preds = %if.end.219
  %176 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1391, !tbaa !669
  %done225 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %176, i32 0, i32 5, !dbg !1393
  %177 = load i32, i32* %done225, align 4, !dbg !1393, !tbaa !979
  %cmp226 = icmp eq i32 %177, 11, !dbg !1394
  br i1 %cmp226, label %if.then.228, label %if.end.230, !dbg !1395

if.then.228:                                      ; preds = %if.then.224
  %178 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1396, !tbaa !669
  %error229 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %178, i32 0, i32 0, !dbg !1397
  store i32 11, i32* %error229, align 4, !dbg !1398, !tbaa !741
  br label %if.end.230, !dbg !1396

if.end.230:                                       ; preds = %if.then.228, %if.then.224
  %179 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1399, !tbaa !669
  %lineno231 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %179, i32 0, i32 14, !dbg !1400
  %180 = load i32, i32* %lineno231, align 4, !dbg !1400, !tbaa !1269
  %181 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1401, !tbaa !669
  %lineno232 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %181, i32 0, i32 2, !dbg !1402
  store i32 %180, i32* %lineno232, align 4, !dbg !1403, !tbaa !875
  %182 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1404, !tbaa !669
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %182, i32 0, i32 0, !dbg !1405
  %183 = load i8*, i8** %buf, align 8, !dbg !1405, !tbaa !1406
  %cmp233 = icmp ne i8* %183, null, !dbg !1407
  br i1 %cmp233, label %if.then.235, label %if.end.265, !dbg !1408

if.then.235:                                      ; preds = %if.end.230
  %184 = bitcast i64* %len237 to i8*, !dbg !1409
  call void @llvm.lifetime.start(i64 8, i8* %184) #2, !dbg !1409
  call void @llvm.dbg.declare(metadata i64* %len237, metadata !652, metadata !673), !dbg !1410
  %185 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1411, !tbaa !669
  %cur238 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %185, i32 0, i32 1, !dbg !1412
  %186 = load i8*, i8** %cur238, align 8, !dbg !1412, !tbaa !1316
  %187 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1413, !tbaa !669
  %buf239 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %187, i32 0, i32 0, !dbg !1414
  %188 = load i8*, i8** %buf239, align 8, !dbg !1414, !tbaa !1406
  %sub.ptr.lhs.cast240 = ptrtoint i8* %186 to i64, !dbg !1415
  %sub.ptr.rhs.cast241 = ptrtoint i8* %188 to i64, !dbg !1415
  %sub.ptr.sub242 = sub i64 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241, !dbg !1415
  %conv243 = trunc i64 %sub.ptr.sub242 to i32, !dbg !1416
  %189 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1417, !tbaa !669
  %offset = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %189, i32 0, i32 3, !dbg !1418
  store i32 %conv243, i32* %offset, align 4, !dbg !1419, !tbaa !879
  %190 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1420, !tbaa !669
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %190, i32 0, i32 2, !dbg !1421
  %191 = load i8*, i8** %inp, align 8, !dbg !1421, !tbaa !1422
  %192 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1423, !tbaa !669
  %buf244 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %192, i32 0, i32 0, !dbg !1424
  %193 = load i8*, i8** %buf244, align 8, !dbg !1424, !tbaa !1406
  %sub.ptr.lhs.cast245 = ptrtoint i8* %191 to i64, !dbg !1425
  %sub.ptr.rhs.cast246 = ptrtoint i8* %193 to i64, !dbg !1425
  %sub.ptr.sub247 = sub i64 %sub.ptr.lhs.cast245, %sub.ptr.rhs.cast246, !dbg !1425
  store i64 %sub.ptr.sub247, i64* %len237, align 8, !dbg !1426, !tbaa !1021
  %194 = load i64, i64* %len237, align 8, !dbg !1427, !tbaa !1021
  %add248 = add i64 %194, 1, !dbg !1428
  %call249 = call i8* @PyObject_Malloc(i64 %add248), !dbg !1429
  %195 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1430, !tbaa !669
  %text250 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %195, i32 0, i32 4, !dbg !1431
  store i8* %call249, i8** %text250, align 8, !dbg !1432, !tbaa !883
  %196 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1433, !tbaa !669
  %text251 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %196, i32 0, i32 4, !dbg !1435
  %197 = load i8*, i8** %text251, align 8, !dbg !1435, !tbaa !883
  %cmp252 = icmp ne i8* %197, null, !dbg !1436
  br i1 %cmp252, label %if.then.254, label %if.end.264, !dbg !1437

if.then.254:                                      ; preds = %if.then.235
  %198 = load i64, i64* %len237, align 8, !dbg !1438, !tbaa !1021
  %cmp255 = icmp ugt i64 %198, 0, !dbg !1441
  br i1 %cmp255, label %if.then.257, label %if.end.261, !dbg !1442

if.then.257:                                      ; preds = %if.then.254
  %199 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1443, !tbaa !669
  %text258 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %199, i32 0, i32 4, !dbg !1444
  %200 = load i8*, i8** %text258, align 8, !dbg !1444, !tbaa !883
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1445, !tbaa !669
  %buf259 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %201, i32 0, i32 0, !dbg !1446
  %202 = load i8*, i8** %buf259, align 8, !dbg !1446, !tbaa !1406
  %203 = load i64, i64* %len237, align 8, !dbg !1447, !tbaa !1021
  %call260 = call i8* @strncpy(i8* %200, i8* %202, i64 %203) #2, !dbg !1448
  br label %if.end.261, !dbg !1448

if.end.261:                                       ; preds = %if.then.257, %if.then.254
  %204 = load i64, i64* %len237, align 8, !dbg !1449, !tbaa !1021
  %205 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1450, !tbaa !669
  %text262 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %205, i32 0, i32 4, !dbg !1451
  %206 = load i8*, i8** %text262, align 8, !dbg !1451, !tbaa !883
  %arrayidx263 = getelementptr i8, i8* %206, i64 %204, !dbg !1450
  store i8 0, i8* %arrayidx263, align 1, !dbg !1452, !tbaa !1046
  br label %if.end.264, !dbg !1453

if.end.264:                                       ; preds = %if.end.261, %if.then.235
  %207 = bitcast i64* %len237 to i8*, !dbg !1454
  call void @llvm.lifetime.end(i64 8, i8* %207) #2, !dbg !1454
  br label %if.end.265, !dbg !1455

if.end.265:                                       ; preds = %if.end.264, %if.end.230
  br label %if.end.298, !dbg !1456

if.else.266:                                      ; preds = %if.end.219
  %208 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1457, !tbaa !669
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %208, i32 0, i32 24, !dbg !1458
  %209 = load i8*, i8** %encoding, align 8, !dbg !1458, !tbaa !1459
  %cmp267 = icmp ne i8* %209, null, !dbg !1460
  br i1 %cmp267, label %if.then.269, label %if.end.297, !dbg !1461

if.then.269:                                      ; preds = %if.else.266
  %210 = bitcast %struct._node** %r to i8*, !dbg !1462
  call void @llvm.lifetime.start(i64 8, i8* %210) #2, !dbg !1462
  call void @llvm.dbg.declare(metadata %struct._node** %r, metadata !657, metadata !673), !dbg !1463
  %call271 = call %struct._node* @PyNode_New(i32 335), !dbg !1464
  store %struct._node* %call271, %struct._node** %r, align 8, !dbg !1463, !tbaa !669
  %211 = load %struct._node*, %struct._node** %r, align 8, !dbg !1465, !tbaa !669
  %tobool272 = icmp ne %struct._node* %211, null, !dbg !1465
  br i1 %tobool272, label %if.then.273, label %if.end.278, !dbg !1467

if.then.273:                                      ; preds = %if.then.269
  %212 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1468, !tbaa !669
  %encoding274 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %212, i32 0, i32 24, !dbg !1469
  %213 = load i8*, i8** %encoding274, align 8, !dbg !1469, !tbaa !1459
  %call275 = call i64 @strlen(i8* %213) #6, !dbg !1470
  %add276 = add i64 %call275, 1, !dbg !1471
  %call277 = call i8* @PyObject_Malloc(i64 %add276), !dbg !1472
  %214 = load %struct._node*, %struct._node** %r, align 8, !dbg !1473, !tbaa !669
  %n_str = getelementptr inbounds %struct._node, %struct._node* %214, i32 0, i32 1, !dbg !1474
  store i8* %call277, i8** %n_str, align 8, !dbg !1475, !tbaa !1476
  br label %if.end.278, !dbg !1473

if.end.278:                                       ; preds = %if.then.273, %if.then.269
  %215 = load %struct._node*, %struct._node** %r, align 8, !dbg !1479, !tbaa !669
  %tobool279 = icmp ne %struct._node* %215, null, !dbg !1479
  br i1 %tobool279, label %lor.lhs.false.280, label %if.then.283, !dbg !1481

lor.lhs.false.280:                                ; preds = %if.end.278
  %216 = load %struct._node*, %struct._node** %r, align 8, !dbg !1482, !tbaa !669
  %n_str281 = getelementptr inbounds %struct._node, %struct._node* %216, i32 0, i32 1, !dbg !1484
  %217 = load i8*, i8** %n_str281, align 8, !dbg !1484, !tbaa !1476
  %tobool282 = icmp ne i8* %217, null, !dbg !1485
  br i1 %tobool282, label %if.end.288, label %if.then.283, !dbg !1486

if.then.283:                                      ; preds = %lor.lhs.false.280, %if.end.278
  %218 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1487, !tbaa !669
  %error284 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %218, i32 0, i32 0, !dbg !1489
  store i32 15, i32* %error284, align 4, !dbg !1490, !tbaa !741
  %219 = load %struct._node*, %struct._node** %r, align 8, !dbg !1491, !tbaa !669
  %tobool285 = icmp ne %struct._node* %219, null, !dbg !1491
  br i1 %tobool285, label %if.then.286, label %if.end.287, !dbg !1493

if.then.286:                                      ; preds = %if.then.283
  %220 = load %struct._node*, %struct._node** %r, align 8, !dbg !1494, !tbaa !669
  %221 = bitcast %struct._node* %220 to i8*, !dbg !1494
  call void @PyObject_Free(i8* %221), !dbg !1495
  br label %if.end.287, !dbg !1495

if.end.287:                                       ; preds = %if.then.286, %if.then.283
  store %struct._node* null, %struct._node** %n, align 8, !dbg !1496, !tbaa !669
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.294, !dbg !1497

if.end.288:                                       ; preds = %lor.lhs.false.280
  %222 = load %struct._node*, %struct._node** %r, align 8, !dbg !1498, !tbaa !669
  %n_str289 = getelementptr inbounds %struct._node, %struct._node* %222, i32 0, i32 1, !dbg !1499
  %223 = load i8*, i8** %n_str289, align 8, !dbg !1499, !tbaa !1476
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1500, !tbaa !669
  %encoding290 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %224, i32 0, i32 24, !dbg !1501
  %225 = load i8*, i8** %encoding290, align 8, !dbg !1501, !tbaa !1459
  %call291 = call i8* @strcpy(i8* %223, i8* %225) #2, !dbg !1502
  %226 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1503, !tbaa !669
  %encoding292 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %226, i32 0, i32 24, !dbg !1504
  %227 = load i8*, i8** %encoding292, align 8, !dbg !1504, !tbaa !1459
  call void @PyMem_Free(i8* %227), !dbg !1505
  %228 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1506, !tbaa !669
  %encoding293 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %228, i32 0, i32 24, !dbg !1507
  store i8* null, i8** %encoding293, align 8, !dbg !1508, !tbaa !1459
  %229 = load %struct._node*, %struct._node** %r, align 8, !dbg !1509, !tbaa !669
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %229, i32 0, i32 4, !dbg !1510
  store i32 1, i32* %n_nchildren, align 4, !dbg !1511, !tbaa !1512
  %230 = load %struct._node*, %struct._node** %n, align 8, !dbg !1513, !tbaa !669
  %231 = load %struct._node*, %struct._node** %r, align 8, !dbg !1514, !tbaa !669
  %n_child = getelementptr inbounds %struct._node, %struct._node* %231, i32 0, i32 5, !dbg !1515
  store %struct._node* %230, %struct._node** %n_child, align 8, !dbg !1516, !tbaa !1517
  %232 = load %struct._node*, %struct._node** %r, align 8, !dbg !1518, !tbaa !669
  store %struct._node* %232, %struct._node** %n, align 8, !dbg !1519, !tbaa !669
  store i32 0, i32* %cleanup.dest.slot, !dbg !1520
  br label %cleanup.294, !dbg !1520

cleanup.294:                                      ; preds = %if.end.287, %if.end.288
  %233 = bitcast %struct._node** %r to i8*, !dbg !1521
  call void @llvm.lifetime.end(i64 8, i8* %233) #2, !dbg !1521
  %cleanup.dest.295 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.295, label %cleanup.300 [
    i32 0, label %cleanup.cont.296
    i32 10, label %done.299
  ]

cleanup.cont.296:                                 ; preds = %cleanup.294
  br label %if.end.297, !dbg !1523

if.end.297:                                       ; preds = %cleanup.cont.296, %if.else.266
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end.265
  br label %done.299, !dbg !1524

done.299:                                         ; preds = %if.end.298, %cleanup.294
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1525, !tbaa !669
  call void @PyTokenizer_Free(%struct.tok_state* %234), !dbg !1526
  %235 = load %struct._node*, %struct._node** %n, align 8, !dbg !1527, !tbaa !669
  store %struct._node* %235, %struct._node** %retval, !dbg !1528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.300, !dbg !1528

cleanup.300:                                      ; preds = %done.299, %cleanup.294, %if.then
  %236 = bitcast i32* %started to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 4, i8* %236) #2, !dbg !1529
  %237 = bitcast %struct._node** %n to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %237) #2, !dbg !1529
  %238 = bitcast %struct.parser_state** %ps to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %238) #2, !dbg !1529
  %239 = load %struct._node*, %struct._node** %retval, !dbg !1529
  ret %struct._node* %239, !dbg !1529

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

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
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !530, metadata !673), !dbg !1530
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !531, metadata !673), !dbg !1531
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !532, metadata !673), !dbg !1532
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !533, metadata !673), !dbg !1533
  store i8* %ps1, i8** %ps1.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps1.addr, metadata !534, metadata !673), !dbg !1534
  store i8* %ps2, i8** %ps2.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps2.addr, metadata !535, metadata !673), !dbg !1535
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !536, metadata !673), !dbg !1536
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1537, !tbaa !669
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !1538, !tbaa !669
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !1539, !tbaa !669
  %3 = load i32, i32* %start.addr, align 4, !dbg !1540, !tbaa !676
  %4 = load i8*, i8** %ps1.addr, align 8, !dbg !1541, !tbaa !669
  %5 = load i8*, i8** %ps2.addr, align 8, !dbg !1542, !tbaa !669
  %6 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1543, !tbaa !669
  %call = call %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE* %0, i8* %1, i8* null, %struct.grammar* %2, i32 %3, i8* %4, i8* %5, %struct.perrdetail* %6, i32 0), !dbg !1544
  ret %struct._node* %call, !dbg !1545
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
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !541, metadata !673), !dbg !1546
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !542, metadata !673), !dbg !1547
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !543, metadata !673), !dbg !1548
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !544, metadata !673), !dbg !1549
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !545, metadata !673), !dbg !1550
  store i8* %ps1, i8** %ps1.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps1.addr, metadata !546, metadata !673), !dbg !1551
  store i8* %ps2, i8** %ps2.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps2.addr, metadata !547, metadata !673), !dbg !1552
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !548, metadata !673), !dbg !1553
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !549, metadata !673), !dbg !1554
  %0 = bitcast i32* %iflags to i8*, !dbg !1555
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1555
  call void @llvm.dbg.declare(metadata i32* %iflags, metadata !550, metadata !673), !dbg !1556
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1557, !tbaa !676
  store i32 %1, i32* %iflags, align 4, !dbg !1556, !tbaa !676
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1558, !tbaa !669
  %3 = load i8*, i8** %filename.addr, align 8, !dbg !1559, !tbaa !669
  %4 = load i8*, i8** %enc.addr, align 8, !dbg !1560, !tbaa !669
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !1561, !tbaa !669
  %6 = load i32, i32* %start.addr, align 4, !dbg !1562, !tbaa !676
  %7 = load i8*, i8** %ps1.addr, align 8, !dbg !1563, !tbaa !669
  %8 = load i8*, i8** %ps2.addr, align 8, !dbg !1564, !tbaa !669
  %9 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1565, !tbaa !669
  %call = call %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %2, i8* %3, i8* %4, %struct.grammar* %5, i32 %6, i8* %7, i8* %8, %struct.perrdetail* %9, i32* %iflags), !dbg !1566
  %10 = bitcast i32* %iflags to i8*, !dbg !1567
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !1567
  ret %struct._node* %call, !dbg !1568
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !569, metadata !673), !dbg !1569
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !570, metadata !673), !dbg !1570
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !571, metadata !673), !dbg !1571
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !572, metadata !673), !dbg !1572
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !573, metadata !673), !dbg !1573
  store i8* %ps1, i8** %ps1.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps1.addr, metadata !574, metadata !673), !dbg !1574
  store i8* %ps2, i8** %ps2.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps2.addr, metadata !575, metadata !673), !dbg !1575
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !576, metadata !673), !dbg !1576
  store i32* %flags, i32** %flags.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !577, metadata !673), !dbg !1577
  %0 = bitcast %struct._node** %n to i8*, !dbg !1578
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1578
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !578, metadata !673), !dbg !1579
  %1 = bitcast %struct._object** %fileobj to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._object** %fileobj, metadata !579, metadata !673), !dbg !1581
  store %struct._object* null, %struct._object** %fileobj, align 8, !dbg !1581, !tbaa !669
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !1582, !tbaa !669
  %cmp = icmp ne i8* %2, null, !dbg !1584
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1585

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8, !dbg !1586, !tbaa !669
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %3), !dbg !1588
  store %struct._object* %call, %struct._object** %fileobj, align 8, !dbg !1589, !tbaa !669
  %4 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1590, !tbaa !669
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !1592
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1593

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1594, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %5, i32 0, i32 0, !dbg !1596
  store i32 17, i32* %error, align 4, !dbg !1597, !tbaa !741
  store %struct._node* null, %struct._node** %retval, !dbg !1598
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1598

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !1599

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1600, !tbaa !669
  %7 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1601, !tbaa !669
  %8 = load i8*, i8** %enc.addr, align 8, !dbg !1602, !tbaa !669
  %9 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !1603, !tbaa !669
  %10 = load i32, i32* %start.addr, align 4, !dbg !1604, !tbaa !676
  %11 = load i8*, i8** %ps1.addr, align 8, !dbg !1605, !tbaa !669
  %12 = load i8*, i8** %ps2.addr, align 8, !dbg !1606, !tbaa !669
  %13 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1607, !tbaa !669
  %14 = load i32*, i32** %flags.addr, align 8, !dbg !1608, !tbaa !669
  %call4 = call %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE* %6, %struct._object* %7, i8* %8, %struct.grammar* %9, i32 %10, i8* %11, i8* %12, %struct.perrdetail* %13, i32* %14), !dbg !1609
  store %struct._node* %call4, %struct._node** %n, align 8, !dbg !1610, !tbaa !669
  br label %do.body, !dbg !1611

do.body:                                          ; preds = %if.end.3
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1612
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1612
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !580, metadata !673), !dbg !1614
  %16 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !1615, !tbaa !669
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1614, !tbaa !669
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1616, !tbaa !669
  %cmp5 = icmp ne %struct._object* %17, null, !dbg !1617
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !1618

if.then.6:                                        ; preds = %do.body
  br label %do.body.7, !dbg !1619

do.body.7:                                        ; preds = %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !582, metadata !673), !dbg !1623
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1624, !tbaa !669
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1623, !tbaa !669
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1625, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1627
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1628, !tbaa !771
  %dec = add i64 %21, -1, !dbg !1628
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1628, !tbaa !771
  %cmp8 = icmp ne i64 %dec, 0, !dbg !1629
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1630

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10, !dbg !1631

if.else:                                          ; preds = %do.body.7
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1633, !tbaa !669
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1635
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1635, !tbaa !781
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1636
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1636, !tbaa !783
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1637, !tbaa !669
  call void %24(%struct._object* %25), !dbg !1638
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1639
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1639
  br label %do.cond, !dbg !1641

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1642

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !1644

if.end.11:                                        ; preds = %do.end, %do.body
  %27 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1646
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1646
  br label %do.cond.12, !dbg !1649

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !1650

do.end.13:                                        ; preds = %do.cond.12
  %28 = load %struct._node*, %struct._node** %n, align 8, !dbg !1652, !tbaa !669
  store %struct._node* %28, %struct._node** %retval, !dbg !1653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1653

cleanup:                                          ; preds = %do.end.13, %if.then.2
  %29 = bitcast %struct._object** %fileobj to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1654
  %30 = bitcast %struct._node** %n to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1654
  %31 = load %struct._node*, %struct._node** %retval, !dbg !1654
  ret %struct._node* %31, !dbg !1654
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
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !555, metadata !673), !dbg !1655
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !556, metadata !673), !dbg !1656
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !557, metadata !673), !dbg !1657
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !558, metadata !673), !dbg !1658
  store i32 %start, i32* %start.addr, align 4, !tbaa !676
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !559, metadata !673), !dbg !1659
  store i8* %ps1, i8** %ps1.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps1.addr, metadata !560, metadata !673), !dbg !1660
  store i8* %ps2, i8** %ps2.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %ps2.addr, metadata !561, metadata !673), !dbg !1661
  store %struct.perrdetail* %err_ret, %struct.perrdetail** %err_ret.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct.perrdetail** %err_ret.addr, metadata !562, metadata !673), !dbg !1662
  store i32* %flags, i32** %flags.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !563, metadata !673), !dbg !1663
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !1664
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1664
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !564, metadata !673), !dbg !1665
  %1 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1666, !tbaa !669
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !1668, !tbaa !669
  %call = call i32 @initerr(%struct.perrdetail* %1, %struct._object* %2), !dbg !1669
  %cmp = icmp slt i32 %call, 0, !dbg !1670
  br i1 %cmp, label %if.then, label %if.end, !dbg !1671

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval, !dbg !1672
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1672

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1673, !tbaa !669
  %4 = load i8*, i8** %enc.addr, align 8, !dbg !1675, !tbaa !669
  %5 = load i8*, i8** %ps1.addr, align 8, !dbg !1676, !tbaa !669
  %6 = load i8*, i8** %ps2.addr, align 8, !dbg !1677, !tbaa !669
  %call1 = call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %3, i8* %4, i8* %5, i8* %6), !dbg !1678
  store %struct.tok_state* %call1, %struct.tok_state** %tok, align 8, !dbg !1679, !tbaa !669
  %cmp2 = icmp eq %struct.tok_state* %call1, null, !dbg !1680
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1681

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1682, !tbaa !669
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %7, i32 0, i32 0, !dbg !1684
  store i32 15, i32* %error, align 4, !dbg !1685, !tbaa !741
  store %struct._node* null, %struct._node** %retval, !dbg !1686
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1686

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1687, !tbaa !669
  %filename5 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %8, i32 0, i32 1, !dbg !1688
  %9 = load %struct._object*, %struct._object** %filename5, align 8, !dbg !1688, !tbaa !849
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1689
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1690, !tbaa !771
  %inc = add i64 %10, 1, !dbg !1690
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1690, !tbaa !771
  %11 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1691, !tbaa !669
  %filename6 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %11, i32 0, i32 1, !dbg !1692
  %12 = load %struct._object*, %struct._object** %filename6, align 8, !dbg !1692, !tbaa !849
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1693, !tbaa !669
  %filename7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 16, !dbg !1694
  store %struct._object* %12, %struct._object** %filename7, align 8, !dbg !1695, !tbaa !857
  %14 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1696, !tbaa !669
  %15 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !1697, !tbaa !669
  %16 = load i32, i32* %start.addr, align 4, !dbg !1698, !tbaa !676
  %17 = load %struct.perrdetail*, %struct.perrdetail** %err_ret.addr, align 8, !dbg !1699, !tbaa !669
  %18 = load i32*, i32** %flags.addr, align 8, !dbg !1700, !tbaa !669
  %call8 = call %struct._node* @parsetok(%struct.tok_state* %14, %struct.grammar* %15, i32 %16, %struct.perrdetail* %17, i32* %18), !dbg !1701
  store %struct._node* %call8, %struct._node** %retval, !dbg !1702
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1702

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %19 = bitcast %struct.tok_state** %tok to i8*, !dbg !1703
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1703
  %20 = load %struct._node*, %struct._node** %retval, !dbg !1703
  ret %struct._node* %20, !dbg !1703
}

declare %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE*, i8*, i8*, i8*) #3

declare %struct.parser_state* @PyParser_New(%struct.grammar*, i32) #3

declare void @PyTokenizer_Free(%struct.tok_state*) #3

declare i32 @PyTokenizer_Get(%struct.tok_state*, i8**, i8**) #3

declare i8* @PyObject_Malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare void @PyObject_Free(i8*) #3

declare i32 @PyParser_AddToken(%struct.parser_state*, i32, i8*, i32, i32, i32*) #3

declare void @PyNode_Free(%struct._node*) #3

declare void @PyParser_Delete(%struct.parser_state*) #3

declare %struct._node* @PyNode_New(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!666, !667}
!llvm.ident = !{!668}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !354)
!1 = !DIFile(filename: "parsetok.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "decoding_state", file: !4, line: 15, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Parser/tokenizer.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "STATE_INIT", value: 0)
!7 = !DIEnumerator(name: "STATE_RAW", value: 1)
!8 = !DIEnumerator(name: "STATE_NORMAL", value: 2)
!9 = !{!10, !11, !58, !100, !349, !351, !35, !50}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !14, file: !13, line: 108, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !27)
!27 = !{!28, !34, !38, !39, !40, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !26, file: !13, line: 335, baseType: !29, size: 192, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !13, line: 112, baseType: !12, size: 128, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !30, file: !13, line: 113, baseType: !17, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !26, file: !13, line: 336, baseType: !35, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !26, file: !13, line: 341, baseType: !41, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !11}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !26, file: !13, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !11, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !96, !97, !98, !99, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 253, baseType: !58, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 254, baseType: !58, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 255, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 256, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 257, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 258, baseType: !58, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 259, baseType: !58, size: 64, align: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 261, baseType: !58, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 262, baseType: !58, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 263, baseType: !58, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 265, baseType: !70, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 161, size: 192, align: 64, elements: !72)
!72 = !{!73, !74, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !71, file: !54, line: 162, baseType: !70, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !71, file: !54, line: 163, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !71, file: !54, line: 167, baseType: !50, size: 32, align: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 267, baseType: !75, size: 64, align: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 269, baseType: !50, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 273, baseType: !50, size: 32, align: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 275, baseType: !81, size: 64, align: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 140, baseType: !23)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 141, baseType: !23)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !26, file: !13, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!11, !11, !58}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !26, file: !13, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!50, !11, !58, !11}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !26, file: !13, line: 345, baseType: !10, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !26, file: !13, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!11, !11}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !26, file: !13, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !13, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!11, !11, !11}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !13, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !13, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !13, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !13, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !13, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!11, !11, !11, !11}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !13, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !13, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !13, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !13, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!50, !11}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !13, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !13, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !13, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !13, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !13, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !13, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !13, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !13, line: 258, baseType: !10, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !13, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !13, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !13, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !13, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !13, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !13, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !13, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !13, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !13, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !13, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !13, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !13, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !13, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !13, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !13, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !13, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !26, file: !13, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !13, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!17, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !13, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !13, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!11, !11, !17}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !13, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !13, line: 285, baseType: !10, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !13, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !11, !17, !11}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !13, line: 287, baseType: !10, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !13, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !11, !11}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !13, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !13, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !26, file: !13, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !13, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !13, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !13, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!50, !11, !11, !11}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !26, file: !13, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !11}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !26, file: !13, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !26, file: !13, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !26, file: !13, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !26, file: !13, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !26, file: !13, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !13, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!50, !11, !241, !50}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !13, line: 179, baseType: !10, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !13, line: 180, baseType: !11, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !13, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !13, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !13, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !13, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !13, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !13, line: 190, baseType: !10, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !13, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !11, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !26, file: !13, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !26, file: !13, line: 368, baseType: !35, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !26, file: !13, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!50, !11, !269, !10}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !11, !10}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !26, file: !13, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !26, file: !13, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!11, !11, !11, !50}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !26, file: !13, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !26, file: !13, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !26, file: !13, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !26, file: !13, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !35, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !35, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !26, file: !13, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !26, file: !13, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !58, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!11, !11, !10}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!50, !11, !11, !10}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !10, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !26, file: !13, line: 392, baseType: !25, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !26, file: !13, line: 393, baseType: !11, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !26, file: !13, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !26, file: !13, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !26, file: !13, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !26, file: !13, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !26, file: !13, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !25, !17}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !26, file: !13, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!11, !25, !11, !11}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !26, file: !13, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !10}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !26, file: !13, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !26, file: !13, line: 402, baseType: !11, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !26, file: !13, line: 403, baseType: !11, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !26, file: !13, line: 404, baseType: !11, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !26, file: !13, line: 405, baseType: !11, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !26, file: !13, line: 406, baseType: !11, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !26, file: !13, line: 407, baseType: !41, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !26, file: !13, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !26, file: !13, line: 412, baseType: !41, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!354 = !{!355, !439, !448, !459, !509, !526, !537, !551, !565, !585, !660}
!355 = !DISubprogram(name: "PyParser_ParseString", scope: !356, file: !356, line: 20, type: !357, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct.grammar*, i32, %struct.perrdetail*)* @PyParser_ParseString, variables: !434)
!356 = !DIFile(filename: "Parser/parsetok.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !35, !372, !50, !422}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !361, line: 17, baseType: !362)
!361 = !DIFile(filename: "Include/node.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !361, line: 10, size: 320, align: 64, elements: !363)
!363 = !{!364, !366, !367, !368, !369, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !362, file: !361, line: 11, baseType: !365, size: 16, align: 16)
!365 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !362, file: !361, line: 12, baseType: !58, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !362, file: !361, line: 13, baseType: !50, size: 32, align: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !362, file: !361, line: 14, baseType: !50, size: 32, align: 32, offset: 160)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !362, file: !361, line: 15, baseType: !50, size: 32, align: 32, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !362, file: !361, line: 16, baseType: !371, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !374, line: 67, baseType: !375)
!374 = !DIFile(filename: "Include/grammar.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 61, size: 320, align: 64, elements: !376)
!376 = !{!377, !378, !408, !420, !421}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !375, file: !374, line: 62, baseType: !50, size: 32, align: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !375, file: !374, line: 63, baseType: !379, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !374, line: 57, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 50, size: 320, align: 64, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !405}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !381, file: !374, line: 51, baseType: !50, size: 32, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !381, file: !374, line: 52, baseType: !58, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !381, file: !374, line: 53, baseType: !50, size: 32, align: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !381, file: !374, line: 54, baseType: !50, size: 32, align: 32, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !381, file: !374, line: 55, baseType: !388, size: 64, align: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !374, line: 46, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 37, size: 320, align: 64, elements: !391)
!391 = !{!392, !393, !400, !401, !402, !404}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !390, file: !374, line: 38, baseType: !50, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !390, file: !374, line: 39, baseType: !394, size: 64, align: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !374, line: 33, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 30, size: 32, align: 16, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !396, file: !374, line: 31, baseType: !365, size: 16, align: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !396, file: !374, line: 32, baseType: !365, size: 16, align: 16, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !390, file: !374, line: 42, baseType: !50, size: 32, align: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !390, file: !374, line: 43, baseType: !50, size: 32, align: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !390, file: !374, line: 44, baseType: !403, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !390, file: !374, line: 45, baseType: !50, size: 32, align: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !381, file: !374, line: 56, baseType: !406, size: 64, align: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !407, line: 12, baseType: !58)
!407 = !DIFile(filename: "Include/bitset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !375, file: !374, line: 64, baseType: !409, size: 128, align: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !374, line: 26, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 23, size: 128, align: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !410, file: !374, line: 24, baseType: !50, size: 32, align: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !410, file: !374, line: 25, baseType: !414, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !374, line: 17, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 14, size: 128, align: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !416, file: !374, line: 15, baseType: !50, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !416, file: !374, line: 16, baseType: !58, size: 64, align: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !375, file: !374, line: 65, baseType: !50, size: 32, align: 32, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !375, file: !374, line: 66, baseType: !50, size: 32, align: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "perrdetail", file: !424, line: 21, baseType: !425)
!424 = !DIFile(filename: "Include/parsetok.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!425 = !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 10, size: 320, align: 64, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !425, file: !424, line: 11, baseType: !50, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !425, file: !424, line: 14, baseType: !11, size: 64, align: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !425, file: !424, line: 16, baseType: !50, size: 32, align: 32, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !425, file: !424, line: 17, baseType: !50, size: 32, align: 32, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !425, file: !424, line: 18, baseType: !58, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !425, file: !424, line: 19, baseType: !50, size: 32, align: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !425, file: !424, line: 20, baseType: !50, size: 32, align: 32, offset: 288)
!434 = !{!435, !436, !437, !438}
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !355, file: !356, line: 20, type: !35)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !355, file: !356, line: 20, type: !372)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !355, file: !356, line: 20, type: !50)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !355, file: !356, line: 20, type: !422)
!439 = !DISubprogram(name: "PyParser_ParseStringFlags", scope: !356, file: !356, line: 26, type: !440, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct.grammar*, i32, %struct.perrdetail*, i32)* @PyParser_ParseStringFlags, variables: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!359, !35, !372, !50, !422, !50}
!442 = !{!443, !444, !445, !446, !447}
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !439, file: !356, line: 26, type: !35)
!444 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !439, file: !356, line: 26, type: !372)
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !439, file: !356, line: 26, type: !50)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !439, file: !356, line: 27, type: !422)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !439, file: !356, line: 27, type: !50)
!448 = !DISubprogram(name: "PyParser_ParseStringFlagsFilename", scope: !356, file: !356, line: 34, type: !449, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32)* @PyParser_ParseStringFlagsFilename, variables: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!359, !35, !35, !372, !50, !422, !50}
!451 = !{!452, !453, !454, !455, !456, !457, !458}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !448, file: !356, line: 34, type: !35)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !448, file: !356, line: 34, type: !35)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !448, file: !356, line: 35, type: !372)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !448, file: !356, line: 35, type: !50)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !448, file: !356, line: 36, type: !422)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !448, file: !356, line: 36, type: !50)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflags", scope: !448, file: !356, line: 38, type: !50)
!459 = !DISubprogram(name: "PyParser_ParseStringObject", scope: !356, file: !356, line: 44, type: !460, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct._object*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @PyParser_ParseStringObject, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!359, !35, !11, !372, !50, !422, !403}
!462 = !{!463, !464, !465, !466, !467, !468, !469, !508}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !459, file: !356, line: 44, type: !35)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !459, file: !356, line: 44, type: !11)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !459, file: !356, line: 45, type: !372)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !459, file: !356, line: 45, type: !50)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !459, file: !356, line: 46, type: !422)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !459, file: !356, line: 46, type: !403)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !459, file: !356, line: 48, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "tok_state", file: !4, line: 22, size: 7936, align: 64, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !471, file: !4, line: 25, baseType: !58, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !471, file: !4, line: 26, baseType: !58, size: 64, align: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "inp", scope: !471, file: !4, line: 27, baseType: !58, size: 64, align: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !471, file: !4, line: 28, baseType: !58, size: 64, align: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !471, file: !4, line: 29, baseType: !58, size: 64, align: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !471, file: !4, line: 30, baseType: !50, size: 32, align: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !471, file: !4, line: 32, baseType: !51, size: 64, align: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tabsize", scope: !471, file: !4, line: 33, baseType: !50, size: 32, align: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !471, file: !4, line: 34, baseType: !50, size: 32, align: 32, offset: 480)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "indstack", scope: !471, file: !4, line: 35, baseType: !483, size: 3200, align: 32, offset: 512)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 3200, align: 32, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 100)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "atbol", scope: !471, file: !4, line: 36, baseType: !50, size: 32, align: 32, offset: 3712)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pendin", scope: !471, file: !4, line: 37, baseType: !50, size: 32, align: 32, offset: 3744)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !471, file: !4, line: 38, baseType: !35, size: 64, align: 64, offset: 3776)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nextprompt", scope: !471, file: !4, line: 38, baseType: !35, size: 64, align: 64, offset: 3840)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !471, file: !4, line: 39, baseType: !50, size: 32, align: 32, offset: 3904)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !471, file: !4, line: 40, baseType: !50, size: 32, align: 32, offset: 3936)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !471, file: !4, line: 48, baseType: !11, size: 64, align: 64, offset: 3968)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "altwarning", scope: !471, file: !4, line: 50, baseType: !50, size: 32, align: 32, offset: 4032)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "alterror", scope: !471, file: !4, line: 51, baseType: !50, size: 32, align: 32, offset: 4064)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "alttabsize", scope: !471, file: !4, line: 52, baseType: !50, size: 32, align: 32, offset: 4096)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "altindstack", scope: !471, file: !4, line: 53, baseType: !483, size: 3200, align: 32, offset: 4128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_state", scope: !471, file: !4, line: 55, baseType: !3, size: 32, align: 32, offset: 7328)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_erred", scope: !471, file: !4, line: 56, baseType: !50, size: 32, align: 32, offset: 7360)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "read_coding_spec", scope: !471, file: !4, line: 57, baseType: !50, size: 32, align: 32, offset: 7392)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !471, file: !4, line: 58, baseType: !58, size: 64, align: 64, offset: 7424)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cont_line", scope: !471, file: !4, line: 59, baseType: !50, size: 32, align: 32, offset: 7488)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "line_start", scope: !471, file: !4, line: 60, baseType: !35, size: 64, align: 64, offset: 7552)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_readline", scope: !471, file: !4, line: 62, baseType: !11, size: 64, align: 64, offset: 7616)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_buffer", scope: !471, file: !4, line: 63, baseType: !11, size: 64, align: 64, offset: 7680)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !471, file: !4, line: 65, baseType: !35, size: 64, align: 64, offset: 7744)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !471, file: !4, line: 66, baseType: !35, size: 64, align: 64, offset: 7808)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !471, file: !4, line: 67, baseType: !35, size: 64, align: 64, offset: 7872)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exec_input", scope: !459, file: !356, line: 49, type: !50)
!509 = !DISubprogram(name: "PyParser_ParseStringFlagsFilenameEx", scope: !356, file: !356, line: 71, type: !510, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @PyParser_ParseStringFlagsFilenameEx, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!359, !35, !35, !372, !50, !422, !403}
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !523}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !509, file: !356, line: 71, type: !35)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename_str", arg: 2, scope: !509, file: !356, line: 71, type: !35)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !509, file: !356, line: 72, type: !372)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !509, file: !356, line: 72, type: !50)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !509, file: !356, line: 73, type: !422)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !509, file: !356, line: 73, type: !403)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !509, file: !356, line: 75, type: !359)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !509, file: !356, line: 76, type: !11)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !522, file: !356, line: 88, type: !11)
!522 = distinct !DILexicalBlock(scope: !509, file: !356, line: 88, column: 8)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !356, line: 88, type: !11)
!524 = distinct !DILexicalBlock(scope: !525, file: !356, line: 88, column: 100)
!525 = distinct !DILexicalBlock(scope: !522, file: !356, line: 88, column: 66)
!526 = !DISubprogram(name: "PyParser_ParseFile", scope: !356, file: !356, line: 96, type: !527, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*)* @PyParser_ParseFile, variables: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!359, !51, !35, !372, !50, !35, !35, !422}
!529 = !{!530, !531, !532, !533, !534, !535, !536}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !526, file: !356, line: 96, type: !51)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !526, file: !356, line: 96, type: !35)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !526, file: !356, line: 96, type: !372)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !526, file: !356, line: 96, type: !50)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 5, scope: !526, file: !356, line: 97, type: !35)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 6, scope: !526, file: !356, line: 97, type: !35)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 7, scope: !526, file: !356, line: 98, type: !422)
!537 = !DISubprogram(name: "PyParser_ParseFileFlags", scope: !356, file: !356, line: 105, type: !538, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32)* @PyParser_ParseFileFlags, variables: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!359, !51, !35, !35, !372, !50, !35, !35, !422, !50}
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !537, file: !356, line: 105, type: !51)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !537, file: !356, line: 105, type: !35)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !537, file: !356, line: 105, type: !35)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !537, file: !356, line: 106, type: !372)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !537, file: !356, line: 106, type: !50)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !537, file: !356, line: 107, type: !35)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !537, file: !356, line: 107, type: !35)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !537, file: !356, line: 108, type: !422)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !537, file: !356, line: 108, type: !50)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflags", scope: !537, file: !356, line: 110, type: !50)
!551 = !DISubprogram(name: "PyParser_ParseFileObject", scope: !356, file: !356, line: 116, type: !552, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, %struct._object*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32*)* @PyParser_ParseFileObject, variables: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!359, !51, !11, !35, !372, !50, !35, !35, !422, !403}
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !551, file: !356, line: 116, type: !51)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !551, file: !356, line: 116, type: !11)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !551, file: !356, line: 117, type: !35)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !551, file: !356, line: 117, type: !372)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !551, file: !356, line: 117, type: !50)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !551, file: !356, line: 118, type: !35)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !551, file: !356, line: 118, type: !35)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !551, file: !356, line: 119, type: !422)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !551, file: !356, line: 119, type: !403)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !551, file: !356, line: 121, type: !470)
!565 = !DISubprogram(name: "PyParser_ParseFileFlagsEx", scope: !356, file: !356, line: 138, type: !566, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32*)* @PyParser_ParseFileFlagsEx, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!359, !51, !35, !35, !372, !50, !35, !35, !422, !403}
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !582}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !565, file: !356, line: 138, type: !51)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !565, file: !356, line: 138, type: !35)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !565, file: !356, line: 139, type: !35)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !565, file: !356, line: 139, type: !372)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !565, file: !356, line: 139, type: !50)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !565, file: !356, line: 140, type: !35)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !565, file: !356, line: 140, type: !35)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !565, file: !356, line: 141, type: !422)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !565, file: !356, line: 141, type: !403)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !565, file: !356, line: 143, type: !359)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !565, file: !356, line: 144, type: !11)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !581, file: !356, line: 157, type: !11)
!581 = distinct !DILexicalBlock(scope: !565, file: !356, line: 157, column: 8)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !583, file: !356, line: 157, type: !11)
!583 = distinct !DILexicalBlock(scope: !584, file: !356, line: 157, column: 99)
!584 = distinct !DILexicalBlock(scope: !581, file: !356, line: 157, column: 65)
!585 = !DISubprogram(name: "parsetok", scope: !356, file: !356, line: 184, type: !586, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct.tok_state*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @parsetok, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!359, !470, !372, !50, !422, !403}
!588 = !{!589, !590, !591, !592, !593, !594, !619, !620, !621, !625, !626, !627, !628, !629, !630, !635, !636, !638, !639, !642, !643, !645, !646, !651, !652, !657}
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !585, file: !356, line: 184, type: !470)
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !585, file: !356, line: 184, type: !372)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !585, file: !356, line: 184, type: !50)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !585, file: !356, line: 184, type: !422)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !585, file: !356, line: 185, type: !403)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !585, file: !356, line: 187, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "parser_state", file: !597, line: 31, baseType: !598)
!597 = !DIFile(filename: "Parser/parser.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!598 = !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 24, size: 288256, align: 64, elements: !599)
!599 = !{!600, !616, !617, !618}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "p_stack", scope: !598, file: !597, line: 25, baseType: !601, size: 288064, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack", file: !597, line: 22, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 18, size: 288064, align: 64, elements: !603)
!603 = !{!604, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_top", scope: !602, file: !597, line: 19, baseType: !605, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "stackentry", file: !597, line: 16, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 12, size: 192, align: 64, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !607, file: !597, line: 13, baseType: !50, size: 32, align: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dfa", scope: !607, file: !597, line: 14, baseType: !379, size: 64, align: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_parent", scope: !607, file: !597, line: 15, baseType: !371, size: 64, align: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_base", scope: !602, file: !597, line: 20, baseType: !613, size: 288000, align: 64, offset: 64)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 288000, align: 64, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 1500)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "p_grammar", scope: !598, file: !597, line: 26, baseType: !372, size: 64, align: 64, offset: 288064)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "p_tree", scope: !598, file: !597, line: 27, baseType: !359, size: 64, align: 64, offset: 288128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !598, file: !597, line: 29, baseType: !102, size: 64, align: 64, offset: 288192)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !585, file: !356, line: 188, type: !359)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "started", scope: !585, file: !356, line: 189, type: !50)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !622, file: !356, line: 202, type: !58)
!622 = distinct !DILexicalBlock(scope: !623, file: !356, line: 201, column: 14)
!623 = distinct !DILexicalBlock(scope: !624, file: !356, line: 201, column: 5)
!624 = distinct !DILexicalBlock(scope: !585, file: !356, line: 201, column: 5)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !622, file: !356, line: 202, type: !58)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !622, file: !356, line: 203, type: !50)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !622, file: !356, line: 204, type: !100)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !622, file: !356, line: 205, type: !58)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col_offset", scope: !622, file: !356, line: 206, type: !50)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !631, file: !356, line: 241, type: !100)
!631 = distinct !DILexicalBlock(scope: !632, file: !356, line: 241, column: 44)
!632 = distinct !DILexicalBlock(scope: !633, file: !356, line: 240, column: 17)
!633 = distinct !DILexicalBlock(scope: !634, file: !356, line: 239, column: 25)
!634 = distinct !DILexicalBlock(scope: !622, file: !356, line: 239, column: 13)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !631, file: !356, line: 241, type: !100)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !637, file: !356, line: 241, type: !351)
!637 = distinct !DILexicalBlock(scope: !631, file: !356, line: 241, column: 1527)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !637, file: !356, line: 241, type: !50)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !640, file: !356, line: 247, type: !100)
!640 = distinct !DILexicalBlock(scope: !641, file: !356, line: 247, column: 44)
!641 = distinct !DILexicalBlock(scope: !632, file: !356, line: 246, column: 22)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !640, file: !356, line: 247, type: !100)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !644, file: !356, line: 247, type: !351)
!644 = distinct !DILexicalBlock(scope: !640, file: !356, line: 247, column: 1527)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !644, file: !356, line: 247, type: !50)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !647, file: !356, line: 284, type: !58)
!647 = distinct !DILexicalBlock(scope: !648, file: !356, line: 283, column: 27)
!648 = distinct !DILexicalBlock(scope: !649, file: !356, line: 283, column: 13)
!649 = distinct !DILexicalBlock(scope: !650, file: !356, line: 274, column: 31)
!650 = distinct !DILexicalBlock(scope: !585, file: !356, line: 274, column: 9)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !647, file: !356, line: 285, type: !37)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !653, file: !356, line: 321, type: !100)
!653 = distinct !DILexicalBlock(scope: !654, file: !356, line: 320, column: 37)
!654 = distinct !DILexicalBlock(scope: !655, file: !356, line: 320, column: 13)
!655 = distinct !DILexicalBlock(scope: !656, file: !356, line: 316, column: 26)
!656 = distinct !DILexicalBlock(scope: !585, file: !356, line: 316, column: 9)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !658, file: !356, line: 336, type: !359)
!658 = distinct !DILexicalBlock(scope: !659, file: !356, line: 332, column: 45)
!659 = distinct !DILexicalBlock(scope: !656, file: !356, line: 332, column: 16)
!660 = !DISubprogram(name: "initerr", scope: !356, file: !356, line: 361, type: !661, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.perrdetail*, %struct._object*)* @initerr, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!50, !422, !11}
!663 = !{!664, !665}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 1, scope: !660, file: !356, line: 361, type: !422)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !660, file: !356, line: 361, type: !11)
!666 = !{i32 2, !"Dwarf Version", i32 4}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!669 = !{!670, !670, i64 0}
!670 = !{!"any pointer", !671, i64 0}
!671 = !{!"omnipotent char", !672, i64 0}
!672 = !{!"Simple C/C++ TBAA"}
!673 = !DIExpression()
!674 = !DILocation(line: 20, column: 34, scope: !355)
!675 = !DILocation(line: 20, column: 46, scope: !355)
!676 = !{!677, !677, i64 0}
!677 = !{!"int", !671, i64 0}
!678 = !DILocation(line: 20, column: 53, scope: !355)
!679 = !DILocation(line: 20, column: 72, scope: !355)
!680 = !DILocation(line: 22, column: 46, scope: !355)
!681 = !DILocation(line: 22, column: 61, scope: !355)
!682 = !DILocation(line: 22, column: 64, scope: !355)
!683 = !DILocation(line: 22, column: 71, scope: !355)
!684 = !DILocation(line: 22, column: 12, scope: !355)
!685 = !DILocation(line: 22, column: 5, scope: !355)
!686 = !DILocation(line: 34, column: 47, scope: !448)
!687 = !DILocation(line: 34, column: 62, scope: !448)
!688 = !DILocation(line: 35, column: 36, scope: !448)
!689 = !DILocation(line: 35, column: 43, scope: !448)
!690 = !DILocation(line: 36, column: 39, scope: !448)
!691 = !DILocation(line: 36, column: 52, scope: !448)
!692 = !DILocation(line: 38, column: 5, scope: !448)
!693 = !DILocation(line: 38, column: 9, scope: !448)
!694 = !DILocation(line: 38, column: 18, scope: !448)
!695 = !DILocation(line: 39, column: 48, scope: !448)
!696 = !DILocation(line: 39, column: 51, scope: !448)
!697 = !DILocation(line: 39, column: 61, scope: !448)
!698 = !DILocation(line: 39, column: 64, scope: !448)
!699 = !DILocation(line: 40, column: 48, scope: !448)
!700 = !DILocation(line: 39, column: 12, scope: !448)
!701 = !DILocation(line: 41, column: 1, scope: !448)
!702 = !DILocation(line: 39, column: 5, scope: !448)
!703 = !DILocation(line: 26, column: 39, scope: !439)
!704 = !DILocation(line: 26, column: 51, scope: !439)
!705 = !DILocation(line: 26, column: 58, scope: !439)
!706 = !DILocation(line: 27, column: 39, scope: !439)
!707 = !DILocation(line: 27, column: 52, scope: !439)
!708 = !DILocation(line: 29, column: 46, scope: !439)
!709 = !DILocation(line: 30, column: 46, scope: !439)
!710 = !DILocation(line: 30, column: 49, scope: !439)
!711 = !DILocation(line: 30, column: 56, scope: !439)
!712 = !DILocation(line: 30, column: 65, scope: !439)
!713 = !DILocation(line: 29, column: 12, scope: !439)
!714 = !DILocation(line: 29, column: 5, scope: !439)
!715 = !DILocation(line: 71, column: 49, scope: !509)
!716 = !DILocation(line: 71, column: 64, scope: !509)
!717 = !DILocation(line: 72, column: 36, scope: !509)
!718 = !DILocation(line: 72, column: 43, scope: !509)
!719 = !DILocation(line: 73, column: 39, scope: !509)
!720 = !DILocation(line: 73, column: 53, scope: !509)
!721 = !DILocation(line: 75, column: 5, scope: !509)
!722 = !DILocation(line: 75, column: 11, scope: !509)
!723 = !DILocation(line: 76, column: 5, scope: !509)
!724 = !DILocation(line: 76, column: 15, scope: !509)
!725 = !DILocation(line: 78, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !509, file: !356, line: 78, column: 9)
!727 = !DILocation(line: 78, column: 22, scope: !726)
!728 = !DILocation(line: 78, column: 9, scope: !509)
!729 = !DILocation(line: 79, column: 46, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !356, line: 78, column: 37)
!731 = !DILocation(line: 79, column: 20, scope: !730)
!732 = !DILocation(line: 79, column: 18, scope: !730)
!733 = !DILocation(line: 80, column: 13, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !356, line: 80, column: 13)
!735 = !DILocation(line: 80, column: 22, scope: !734)
!736 = !DILocation(line: 80, column: 13, scope: !730)
!737 = !DILocation(line: 81, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !356, line: 80, column: 37)
!739 = !DILocation(line: 81, column: 22, scope: !738)
!740 = !DILocation(line: 81, column: 28, scope: !738)
!741 = !{!742, !677, i64 0}
!742 = !{!"", !677, i64 0, !670, i64 8, !677, i64 16, !677, i64 20, !670, i64 24, !677, i64 32, !677, i64 36}
!743 = !DILocation(line: 82, column: 13, scope: !738)
!744 = !DILocation(line: 84, column: 5, scope: !730)
!745 = !DILocation(line: 86, column: 36, scope: !509)
!746 = !DILocation(line: 86, column: 39, scope: !509)
!747 = !DILocation(line: 86, column: 49, scope: !509)
!748 = !DILocation(line: 86, column: 52, scope: !509)
!749 = !DILocation(line: 86, column: 59, scope: !509)
!750 = !DILocation(line: 86, column: 68, scope: !509)
!751 = !DILocation(line: 86, column: 9, scope: !509)
!752 = !DILocation(line: 86, column: 7, scope: !509)
!753 = !DILocation(line: 88, column: 5, scope: !509)
!754 = !DILocation(line: 88, column: 10, scope: !755)
!755 = !DILexicalBlockFile(scope: !522, file: !356, discriminator: 1)
!756 = !DILocation(line: 88, column: 20, scope: !522)
!757 = !DILocation(line: 88, column: 51, scope: !522)
!758 = !DILocation(line: 88, column: 66, scope: !525)
!759 = !DILocation(line: 88, column: 82, scope: !525)
!760 = !DILocation(line: 88, column: 66, scope: !522)
!761 = !DILocation(line: 88, column: 97, scope: !762)
!762 = !DILexicalBlockFile(scope: !525, file: !356, discriminator: 2)
!763 = !DILocation(line: 88, column: 102, scope: !764)
!764 = !DILexicalBlockFile(scope: !524, file: !356, discriminator: 4)
!765 = !DILocation(line: 88, column: 112, scope: !524)
!766 = !DILocation(line: 88, column: 142, scope: !524)
!767 = !DILocation(line: 88, column: 168, scope: !768)
!768 = distinct !DILexicalBlock(scope: !524, file: !356, line: 88, column: 165)
!769 = !DILocation(line: 88, column: 185, scope: !768)
!770 = !DILocation(line: 88, column: 165, scope: !768)
!771 = !{!772, !773, i64 0}
!772 = !{!"_object", !773, i64 0, !670, i64 8}
!773 = !{!"long", !671, i64 0}
!774 = !DILocation(line: 88, column: 195, scope: !768)
!775 = !DILocation(line: 88, column: 165, scope: !524)
!776 = !DILocation(line: 88, column: 165, scope: !777)
!777 = !DILexicalBlockFile(scope: !524, file: !356, discriminator: 5)
!778 = !DILocation(line: 88, column: 226, scope: !779)
!779 = !DILexicalBlockFile(scope: !768, file: !356, discriminator: 6)
!780 = !DILocation(line: 88, column: 244, scope: !768)
!781 = !{!772, !670, i64 8}
!782 = !DILocation(line: 88, column: 254, scope: !768)
!783 = !{!784, !670, i64 48}
!784 = !{!"_typeobject", !785, i64 0, !670, i64 24, !773, i64 32, !773, i64 40, !670, i64 48, !670, i64 56, !670, i64 64, !670, i64 72, !670, i64 80, !670, i64 88, !670, i64 96, !670, i64 104, !670, i64 112, !670, i64 120, !670, i64 128, !670, i64 136, !670, i64 144, !670, i64 152, !670, i64 160, !773, i64 168, !670, i64 176, !670, i64 184, !670, i64 192, !670, i64 200, !773, i64 208, !670, i64 216, !670, i64 224, !670, i64 232, !670, i64 240, !670, i64 248, !670, i64 256, !670, i64 264, !670, i64 272, !670, i64 280, !773, i64 288, !670, i64 296, !670, i64 304, !670, i64 312, !670, i64 320, !670, i64 328, !670, i64 336, !670, i64 344, !670, i64 352, !670, i64 360, !670, i64 368, !670, i64 376, !677, i64 384, !670, i64 392}
!785 = !{!"", !772, i64 0, !773, i64 16}
!786 = !DILocation(line: 88, column: 279, scope: !768)
!787 = !DILocation(line: 88, column: 210, scope: !768)
!788 = !DILocation(line: 88, column: 298, scope: !789)
!789 = !DILexicalBlockFile(scope: !525, file: !356, discriminator: 7)
!790 = !DILocation(line: 88, column: 298, scope: !524)
!791 = !DILocation(line: 88, column: 298, scope: !792)
!792 = !DILexicalBlockFile(scope: !524, file: !356, discriminator: 8)
!793 = !DILocation(line: 88, column: 298, scope: !794)
!794 = !DILexicalBlockFile(scope: !524, file: !356, discriminator: 9)
!795 = !DILocation(line: 88, column: 311, scope: !796)
!796 = !DILexicalBlockFile(scope: !797, file: !356, discriminator: 10)
!797 = !DILexicalBlockFile(scope: !509, file: !356, discriminator: 3)
!798 = !DILocation(line: 88, column: 311, scope: !522)
!799 = !DILocation(line: 88, column: 311, scope: !800)
!800 = !DILexicalBlockFile(scope: !522, file: !356, discriminator: 11)
!801 = !DILocation(line: 90, column: 12, scope: !509)
!802 = !DILocation(line: 90, column: 5, scope: !509)
!803 = !DILocation(line: 91, column: 1, scope: !509)
!804 = !DILocation(line: 44, column: 40, scope: !459)
!805 = !DILocation(line: 44, column: 53, scope: !459)
!806 = !DILocation(line: 45, column: 37, scope: !459)
!807 = !DILocation(line: 45, column: 44, scope: !459)
!808 = !DILocation(line: 46, column: 40, scope: !459)
!809 = !DILocation(line: 46, column: 54, scope: !459)
!810 = !DILocation(line: 48, column: 5, scope: !459)
!811 = !DILocation(line: 48, column: 23, scope: !459)
!812 = !DILocation(line: 49, column: 5, scope: !459)
!813 = !DILocation(line: 49, column: 9, scope: !459)
!814 = !DILocation(line: 49, column: 22, scope: !459)
!815 = !DILocation(line: 49, column: 28, scope: !459)
!816 = !DILocation(line: 51, column: 17, scope: !817)
!817 = distinct !DILexicalBlock(scope: !459, file: !356, line: 51, column: 9)
!818 = !DILocation(line: 51, column: 26, scope: !817)
!819 = !DILocation(line: 51, column: 9, scope: !817)
!820 = !DILocation(line: 51, column: 36, scope: !817)
!821 = !DILocation(line: 51, column: 9, scope: !459)
!822 = !DILocation(line: 52, column: 9, scope: !817)
!823 = !DILocation(line: 54, column: 10, scope: !824)
!824 = distinct !DILexicalBlock(scope: !459, file: !356, line: 54, column: 9)
!825 = !DILocation(line: 54, column: 9, scope: !824)
!826 = !DILocation(line: 54, column: 16, scope: !824)
!827 = !DILocation(line: 54, column: 9, scope: !459)
!828 = !DILocation(line: 55, column: 36, scope: !824)
!829 = !DILocation(line: 55, column: 39, scope: !824)
!830 = !DILocation(line: 55, column: 15, scope: !824)
!831 = !DILocation(line: 55, column: 13, scope: !824)
!832 = !DILocation(line: 55, column: 9, scope: !824)
!833 = !DILocation(line: 57, column: 38, scope: !824)
!834 = !DILocation(line: 57, column: 41, scope: !824)
!835 = !DILocation(line: 57, column: 15, scope: !824)
!836 = !DILocation(line: 57, column: 13, scope: !824)
!837 = !DILocation(line: 58, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !459, file: !356, line: 58, column: 9)
!839 = !DILocation(line: 58, column: 13, scope: !838)
!840 = !DILocation(line: 58, column: 9, scope: !459)
!841 = !DILocation(line: 59, column: 26, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !356, line: 58, column: 28)
!843 = !DILocation(line: 59, column: 9, scope: !842)
!844 = !DILocation(line: 59, column: 18, scope: !842)
!845 = !DILocation(line: 59, column: 24, scope: !842)
!846 = !DILocation(line: 60, column: 9, scope: !842)
!847 = !DILocation(line: 64, column: 21, scope: !459)
!848 = !DILocation(line: 64, column: 30, scope: !459)
!849 = !{!742, !670, i64 8}
!850 = !DILocation(line: 64, column: 42, scope: !459)
!851 = !DILocation(line: 64, column: 51, scope: !459)
!852 = !DILocation(line: 65, column: 21, scope: !459)
!853 = !DILocation(line: 65, column: 30, scope: !459)
!854 = !DILocation(line: 65, column: 5, scope: !459)
!855 = !DILocation(line: 65, column: 10, scope: !459)
!856 = !DILocation(line: 65, column: 19, scope: !459)
!857 = !{!858, !670, i64 496}
!858 = !{!"tok_state", !670, i64 0, !670, i64 8, !670, i64 16, !670, i64 24, !670, i64 32, !677, i64 40, !670, i64 48, !677, i64 56, !677, i64 60, !671, i64 64, !677, i64 464, !677, i64 468, !670, i64 472, !670, i64 480, !677, i64 488, !677, i64 492, !670, i64 496, !677, i64 504, !677, i64 508, !677, i64 512, !671, i64 516, !671, i64 916, !677, i64 920, !677, i64 924, !670, i64 928, !677, i64 936, !670, i64 944, !670, i64 952, !670, i64 960, !670, i64 968, !670, i64 976, !670, i64 984}
!859 = !DILocation(line: 67, column: 21, scope: !459)
!860 = !DILocation(line: 67, column: 26, scope: !459)
!861 = !DILocation(line: 67, column: 29, scope: !459)
!862 = !DILocation(line: 67, column: 36, scope: !459)
!863 = !DILocation(line: 67, column: 45, scope: !459)
!864 = !DILocation(line: 67, column: 12, scope: !459)
!865 = !DILocation(line: 67, column: 5, scope: !459)
!866 = !DILocation(line: 68, column: 1, scope: !459)
!867 = !DILocation(line: 361, column: 21, scope: !660)
!868 = !DILocation(line: 361, column: 40, scope: !660)
!869 = !DILocation(line: 363, column: 5, scope: !660)
!870 = !DILocation(line: 363, column: 14, scope: !660)
!871 = !DILocation(line: 363, column: 20, scope: !660)
!872 = !DILocation(line: 364, column: 5, scope: !660)
!873 = !DILocation(line: 364, column: 14, scope: !660)
!874 = !DILocation(line: 364, column: 21, scope: !660)
!875 = !{!742, !677, i64 16}
!876 = !DILocation(line: 365, column: 5, scope: !660)
!877 = !DILocation(line: 365, column: 14, scope: !660)
!878 = !DILocation(line: 365, column: 21, scope: !660)
!879 = !{!742, !677, i64 20}
!880 = !DILocation(line: 366, column: 5, scope: !660)
!881 = !DILocation(line: 366, column: 14, scope: !660)
!882 = !DILocation(line: 366, column: 19, scope: !660)
!883 = !{!742, !670, i64 24}
!884 = !DILocation(line: 367, column: 5, scope: !660)
!885 = !DILocation(line: 367, column: 14, scope: !660)
!886 = !DILocation(line: 367, column: 20, scope: !660)
!887 = !{!742, !677, i64 32}
!888 = !DILocation(line: 368, column: 5, scope: !660)
!889 = !DILocation(line: 368, column: 14, scope: !660)
!890 = !DILocation(line: 368, column: 23, scope: !660)
!891 = !{!742, !677, i64 36}
!892 = !DILocation(line: 370, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !660, file: !356, line: 370, column: 9)
!894 = !DILocation(line: 370, column: 9, scope: !660)
!895 = !DILocation(line: 371, column: 25, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !356, line: 370, column: 19)
!897 = !DILocation(line: 371, column: 37, scope: !896)
!898 = !DILocation(line: 371, column: 46, scope: !896)
!899 = !DILocation(line: 372, column: 29, scope: !896)
!900 = !DILocation(line: 372, column: 9, scope: !896)
!901 = !DILocation(line: 372, column: 18, scope: !896)
!902 = !DILocation(line: 372, column: 27, scope: !896)
!903 = !DILocation(line: 373, column: 5, scope: !896)
!904 = !DILocation(line: 375, column: 29, scope: !905)
!905 = distinct !DILexicalBlock(scope: !893, file: !356, line: 374, column: 10)
!906 = !DILocation(line: 375, column: 9, scope: !905)
!907 = !DILocation(line: 375, column: 18, scope: !905)
!908 = !DILocation(line: 375, column: 27, scope: !905)
!909 = !DILocation(line: 376, column: 13, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !356, line: 376, column: 13)
!911 = !DILocation(line: 376, column: 22, scope: !910)
!912 = !DILocation(line: 376, column: 31, scope: !910)
!913 = !DILocation(line: 376, column: 13, scope: !905)
!914 = !DILocation(line: 377, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !356, line: 376, column: 46)
!916 = !DILocation(line: 377, column: 22, scope: !915)
!917 = !DILocation(line: 377, column: 28, scope: !915)
!918 = !DILocation(line: 378, column: 13, scope: !915)
!919 = !DILocation(line: 382, column: 5, scope: !660)
!920 = !DILocation(line: 383, column: 1, scope: !660)
!921 = !DILocation(line: 184, column: 28, scope: !585)
!922 = !DILocation(line: 184, column: 42, scope: !585)
!923 = !DILocation(line: 184, column: 49, scope: !585)
!924 = !DILocation(line: 184, column: 68, scope: !585)
!925 = !DILocation(line: 185, column: 15, scope: !585)
!926 = !DILocation(line: 187, column: 5, scope: !585)
!927 = !DILocation(line: 187, column: 19, scope: !585)
!928 = !DILocation(line: 188, column: 5, scope: !585)
!929 = !DILocation(line: 188, column: 11, scope: !585)
!930 = !DILocation(line: 189, column: 5, scope: !585)
!931 = !DILocation(line: 189, column: 9, scope: !585)
!932 = !DILocation(line: 191, column: 28, scope: !933)
!933 = distinct !DILexicalBlock(scope: !585, file: !356, line: 191, column: 9)
!934 = !DILocation(line: 191, column: 31, scope: !933)
!935 = !DILocation(line: 191, column: 15, scope: !933)
!936 = !DILocation(line: 191, column: 13, scope: !933)
!937 = !DILocation(line: 191, column: 39, scope: !933)
!938 = !DILocation(line: 191, column: 9, scope: !585)
!939 = !DILocation(line: 192, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !933, file: !356, line: 191, column: 54)
!941 = !DILocation(line: 192, column: 18, scope: !940)
!942 = !DILocation(line: 192, column: 24, scope: !940)
!943 = !DILocation(line: 193, column: 26, scope: !940)
!944 = !DILocation(line: 193, column: 9, scope: !940)
!945 = !DILocation(line: 194, column: 9, scope: !940)
!946 = !DILocation(line: 197, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !585, file: !356, line: 197, column: 9)
!948 = !DILocation(line: 197, column: 9, scope: !947)
!949 = !DILocation(line: 197, column: 16, scope: !947)
!950 = !DILocation(line: 197, column: 9, scope: !585)
!951 = !DILocation(line: 198, column: 9, scope: !947)
!952 = !DILocation(line: 198, column: 13, scope: !947)
!953 = !DILocation(line: 198, column: 21, scope: !947)
!954 = !{!955, !773, i64 36024}
!955 = !{!"", !956, i64 0, !670, i64 36008, !670, i64 36016, !773, i64 36024}
!956 = !{!"", !670, i64 0, !671, i64 8}
!957 = !DILocation(line: 201, column: 5, scope: !585)
!958 = !DILocation(line: 202, column: 9, scope: !622)
!959 = !DILocation(line: 202, column: 15, scope: !622)
!960 = !DILocation(line: 202, column: 19, scope: !622)
!961 = !DILocation(line: 203, column: 9, scope: !622)
!962 = !DILocation(line: 203, column: 13, scope: !622)
!963 = !DILocation(line: 204, column: 9, scope: !622)
!964 = !DILocation(line: 204, column: 16, scope: !622)
!965 = !DILocation(line: 205, column: 9, scope: !622)
!966 = !DILocation(line: 205, column: 15, scope: !622)
!967 = !DILocation(line: 206, column: 9, scope: !622)
!968 = !DILocation(line: 206, column: 13, scope: !622)
!969 = !DILocation(line: 208, column: 32, scope: !622)
!970 = !DILocation(line: 208, column: 16, scope: !622)
!971 = !DILocation(line: 208, column: 14, scope: !622)
!972 = !DILocation(line: 209, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !622, file: !356, line: 209, column: 13)
!974 = !DILocation(line: 209, column: 18, scope: !973)
!975 = !DILocation(line: 209, column: 13, scope: !622)
!976 = !DILocation(line: 210, column: 30, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !356, line: 209, column: 25)
!978 = !DILocation(line: 210, column: 35, scope: !977)
!979 = !{!858, !677, i64 40}
!980 = !DILocation(line: 210, column: 13, scope: !977)
!981 = !DILocation(line: 210, column: 22, scope: !977)
!982 = !DILocation(line: 210, column: 28, scope: !977)
!983 = !DILocation(line: 211, column: 13, scope: !977)
!984 = !DILocation(line: 213, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !622, file: !356, line: 213, column: 13)
!986 = !DILocation(line: 213, column: 18, scope: !985)
!987 = !DILocation(line: 213, column: 23, scope: !985)
!988 = !DILocation(line: 213, column: 26, scope: !989)
!989 = !DILexicalBlockFile(scope: !985, file: !356, discriminator: 1)
!990 = !DILocation(line: 213, column: 13, scope: !622)
!991 = !DILocation(line: 214, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !356, line: 213, column: 35)
!993 = !DILocation(line: 215, column: 21, scope: !992)
!994 = !DILocation(line: 219, column: 17, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !356, line: 219, column: 17)
!996 = !DILocation(line: 219, column: 22, scope: !995)
!997 = !{!858, !677, i64 60}
!998 = !DILocation(line: 219, column: 29, scope: !995)
!999 = !DILocation(line: 220, column: 20, scope: !995)
!1000 = !DILocation(line: 220, column: 19, scope: !995)
!1001 = !DILocation(line: 220, column: 26, scope: !995)
!1002 = !DILocation(line: 219, column: 17, scope: !992)
!1003 = !DILocation(line: 222, column: 32, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !995, file: !356, line: 221, column: 13)
!1005 = !DILocation(line: 222, column: 37, scope: !1004)
!1006 = !DILocation(line: 222, column: 31, scope: !1004)
!1007 = !DILocation(line: 222, column: 17, scope: !1004)
!1008 = !DILocation(line: 222, column: 22, scope: !1004)
!1009 = !DILocation(line: 222, column: 29, scope: !1004)
!1010 = !{!858, !677, i64 468}
!1011 = !DILocation(line: 223, column: 17, scope: !1004)
!1012 = !DILocation(line: 223, column: 22, scope: !1004)
!1013 = !DILocation(line: 223, column: 29, scope: !1004)
!1014 = !DILocation(line: 224, column: 13, scope: !1004)
!1015 = !DILocation(line: 225, column: 9, scope: !992)
!1016 = !DILocation(line: 227, column: 21, scope: !985)
!1017 = !DILocation(line: 228, column: 15, scope: !622)
!1018 = !DILocation(line: 228, column: 19, scope: !622)
!1019 = !DILocation(line: 228, column: 17, scope: !622)
!1020 = !DILocation(line: 228, column: 13, scope: !622)
!1021 = !{!773, !773, i64 0}
!1022 = !DILocation(line: 229, column: 40, scope: !622)
!1023 = !DILocation(line: 229, column: 44, scope: !622)
!1024 = !DILocation(line: 229, column: 24, scope: !622)
!1025 = !DILocation(line: 229, column: 13, scope: !622)
!1026 = !DILocation(line: 230, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !622, file: !356, line: 230, column: 13)
!1028 = !DILocation(line: 230, column: 17, scope: !1027)
!1029 = !DILocation(line: 230, column: 13, scope: !622)
!1030 = !DILocation(line: 231, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !356, line: 230, column: 32)
!1032 = !DILocation(line: 231, column: 22, scope: !1031)
!1033 = !DILocation(line: 231, column: 28, scope: !1031)
!1034 = !DILocation(line: 232, column: 13, scope: !1031)
!1035 = !DILocation(line: 234, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !622, file: !356, line: 234, column: 13)
!1037 = !DILocation(line: 234, column: 17, scope: !1036)
!1038 = !DILocation(line: 234, column: 13, scope: !622)
!1039 = !DILocation(line: 235, column: 32, scope: !1036)
!1040 = !DILocation(line: 235, column: 37, scope: !1036)
!1041 = !DILocation(line: 235, column: 40, scope: !1036)
!1042 = !DILocation(line: 235, column: 13, scope: !1036)
!1043 = !DILocation(line: 236, column: 13, scope: !622)
!1044 = !DILocation(line: 236, column: 9, scope: !622)
!1045 = !DILocation(line: 236, column: 18, scope: !622)
!1046 = !{!671, !671, i64 0}
!1047 = !DILocation(line: 239, column: 13, scope: !634)
!1048 = !DILocation(line: 239, column: 18, scope: !634)
!1049 = !DILocation(line: 239, column: 13, scope: !622)
!1050 = !DILocation(line: 240, column: 19, scope: !632)
!1051 = !DILocation(line: 240, column: 23, scope: !632)
!1052 = !DILocation(line: 240, column: 31, scope: !632)
!1053 = !DILocation(line: 240, column: 42, scope: !632)
!1054 = !DILocation(line: 241, column: 46, scope: !631)
!1055 = !DILocation(line: 241, column: 53, scope: !631)
!1056 = !DILocation(line: 241, column: 63, scope: !631)
!1057 = !DILocation(line: 241, column: 1330, scope: !631)
!1058 = !DILocation(line: 241, column: 1343, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !631, file: !356, discriminator: 1)
!1060 = !DILocation(line: 241, column: 1360, scope: !631)
!1061 = !DILocation(line: 241, column: 1369, scope: !631)
!1062 = !DILocation(line: 241, column: 1226, scope: !631)
!1063 = !DILocation(line: 241, column: 1529, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !637, file: !356, discriminator: 3)
!1065 = !DILocation(line: 241, column: 1550, scope: !637)
!1066 = !DILocation(line: 241, column: 1597, scope: !637)
!1067 = !DILocation(line: 241, column: 1603, scope: !637)
!1068 = !DILocation(line: 241, column: 1616, scope: !637)
!1069 = !DILocation(line: 241, column: 1627, scope: !637)
!1070 = !DILocation(line: 241, column: 1637, scope: !637)
!1071 = !DILocation(line: 241, column: 1635, scope: !637)
!1072 = !DILocation(line: 241, column: 1693, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !637, file: !356, line: 241, column: 1693)
!1074 = !DILocation(line: 241, column: 1702, scope: !1073)
!1075 = !DILocation(line: 241, column: 1706, scope: !1073)
!1076 = !DILocation(line: 241, column: 1709, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1073, file: !356, discriminator: 5)
!1078 = !DILocation(line: 241, column: 1718, scope: !1073)
!1079 = !DILocation(line: 241, column: 1693, scope: !637)
!1080 = !DILocation(line: 241, column: 1738, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !356, discriminator: 7)
!1082 = distinct !DILexicalBlock(scope: !1073, file: !356, line: 241, column: 1724)
!1083 = !DILocation(line: 241, column: 1748, scope: !1082)
!1084 = !DILocation(line: 241, column: 1746, scope: !1082)
!1085 = !DILocation(line: 241, column: 1735, scope: !1082)
!1086 = !DILocation(line: 241, column: 1805, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !356, line: 241, column: 1805)
!1088 = !DILocation(line: 241, column: 1814, scope: !1087)
!1089 = !DILocation(line: 241, column: 1818, scope: !1087)
!1090 = !DILocation(line: 241, column: 1821, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1087, file: !356, discriminator: 9)
!1092 = !DILocation(line: 241, column: 1830, scope: !1087)
!1093 = !DILocation(line: 241, column: 1805, scope: !1082)
!1094 = !DILocation(line: 241, column: 1850, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !356, discriminator: 11)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !356, line: 241, column: 1836)
!1097 = !DILocation(line: 241, column: 1860, scope: !1096)
!1098 = !DILocation(line: 241, column: 1858, scope: !1096)
!1099 = !DILocation(line: 241, column: 1847, scope: !1096)
!1100 = !DILocation(line: 241, column: 1917, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !356, line: 241, column: 1917)
!1102 = !DILocation(line: 241, column: 1926, scope: !1101)
!1103 = !DILocation(line: 241, column: 1930, scope: !1101)
!1104 = !DILocation(line: 241, column: 1933, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1101, file: !356, discriminator: 13)
!1106 = !DILocation(line: 241, column: 1942, scope: !1101)
!1107 = !DILocation(line: 241, column: 1917, scope: !1096)
!1108 = !DILocation(line: 241, column: 1960, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1101, file: !356, discriminator: 15)
!1110 = !DILocation(line: 241, column: 1970, scope: !1101)
!1111 = !DILocation(line: 241, column: 1968, scope: !1101)
!1112 = !DILocation(line: 241, column: 1957, scope: !1101)
!1113 = !DILocation(line: 241, column: 1948, scope: !1101)
!1114 = !DILocation(line: 241, column: 2023, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !356, discriminator: 17)
!1116 = !DILexicalBlockFile(scope: !1117, file: !356, discriminator: 16)
!1117 = !DILexicalBlockFile(scope: !1096, file: !356, discriminator: 14)
!1118 = !DILocation(line: 241, column: 2025, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !356, discriminator: 18)
!1120 = !DILexicalBlockFile(scope: !1121, file: !356, discriminator: 12)
!1121 = !DILexicalBlockFile(scope: !1082, file: !356, discriminator: 10)
!1122 = !DILocation(line: 241, column: 2027, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !356, discriminator: 19)
!1124 = !DILexicalBlockFile(scope: !1125, file: !356, discriminator: 8)
!1125 = !DILexicalBlockFile(scope: !637, file: !356, discriminator: 6)
!1126 = !DILocation(line: 241, column: 1721, scope: !1073)
!1127 = !DILocation(line: 241, column: 2037, scope: !631)
!1128 = !DILocation(line: 241, column: 2037, scope: !637)
!1129 = !DILocation(line: 241, column: 2062, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !356, discriminator: 4)
!1131 = !DILexicalBlockFile(scope: !631, file: !356, discriminator: 2)
!1132 = !DILocation(line: 241, column: 2044, scope: !631)
!1133 = !DILocation(line: 241, column: 46, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !356, discriminator: 21)
!1135 = !DILexicalBlockFile(scope: !631, file: !356, discriminator: 20)
!1136 = !DILocation(line: 241, column: 2077, scope: !632)
!1137 = !DILocation(line: 241, column: 2077, scope: !631)
!1138 = !DILocation(line: 241, column: 43, scope: !632)
!1139 = !DILocation(line: 240, column: 17, scope: !633)
!1140 = !DILocation(line: 242, column: 31, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !632, file: !356, line: 241, column: 2081)
!1142 = !DILocation(line: 242, column: 17, scope: !1141)
!1143 = !DILocation(line: 243, column: 17, scope: !1141)
!1144 = !DILocation(line: 243, column: 26, scope: !1141)
!1145 = !DILocation(line: 243, column: 32, scope: !1141)
!1146 = !DILocation(line: 244, column: 17, scope: !1141)
!1147 = !DILocation(line: 246, column: 23, scope: !641)
!1148 = !DILocation(line: 246, column: 27, scope: !641)
!1149 = !DILocation(line: 246, column: 35, scope: !641)
!1150 = !DILocation(line: 246, column: 46, scope: !641)
!1151 = !DILocation(line: 247, column: 46, scope: !640)
!1152 = !DILocation(line: 247, column: 53, scope: !640)
!1153 = !DILocation(line: 247, column: 63, scope: !640)
!1154 = !DILocation(line: 247, column: 1330, scope: !640)
!1155 = !DILocation(line: 247, column: 1343, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !640, file: !356, discriminator: 1)
!1157 = !DILocation(line: 247, column: 1360, scope: !640)
!1158 = !DILocation(line: 247, column: 1369, scope: !640)
!1159 = !DILocation(line: 247, column: 1226, scope: !640)
!1160 = !DILocation(line: 247, column: 1529, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !644, file: !356, discriminator: 3)
!1162 = !DILocation(line: 247, column: 1550, scope: !644)
!1163 = !DILocation(line: 247, column: 1597, scope: !644)
!1164 = !DILocation(line: 247, column: 1603, scope: !644)
!1165 = !DILocation(line: 247, column: 1616, scope: !644)
!1166 = !DILocation(line: 247, column: 1627, scope: !644)
!1167 = !DILocation(line: 247, column: 1637, scope: !644)
!1168 = !DILocation(line: 247, column: 1635, scope: !644)
!1169 = !DILocation(line: 247, column: 1693, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !644, file: !356, line: 247, column: 1693)
!1171 = !DILocation(line: 247, column: 1702, scope: !1170)
!1172 = !DILocation(line: 247, column: 1706, scope: !1170)
!1173 = !DILocation(line: 247, column: 1709, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1170, file: !356, discriminator: 5)
!1175 = !DILocation(line: 247, column: 1718, scope: !1170)
!1176 = !DILocation(line: 247, column: 1693, scope: !644)
!1177 = !DILocation(line: 247, column: 1738, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !356, discriminator: 7)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !356, line: 247, column: 1724)
!1180 = !DILocation(line: 247, column: 1748, scope: !1179)
!1181 = !DILocation(line: 247, column: 1746, scope: !1179)
!1182 = !DILocation(line: 247, column: 1735, scope: !1179)
!1183 = !DILocation(line: 247, column: 1805, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !356, line: 247, column: 1805)
!1185 = !DILocation(line: 247, column: 1814, scope: !1184)
!1186 = !DILocation(line: 247, column: 1818, scope: !1184)
!1187 = !DILocation(line: 247, column: 1821, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1184, file: !356, discriminator: 9)
!1189 = !DILocation(line: 247, column: 1830, scope: !1184)
!1190 = !DILocation(line: 247, column: 1805, scope: !1179)
!1191 = !DILocation(line: 247, column: 1850, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !356, discriminator: 11)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !356, line: 247, column: 1836)
!1194 = !DILocation(line: 247, column: 1860, scope: !1193)
!1195 = !DILocation(line: 247, column: 1858, scope: !1193)
!1196 = !DILocation(line: 247, column: 1847, scope: !1193)
!1197 = !DILocation(line: 247, column: 1917, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !356, line: 247, column: 1917)
!1199 = !DILocation(line: 247, column: 1926, scope: !1198)
!1200 = !DILocation(line: 247, column: 1930, scope: !1198)
!1201 = !DILocation(line: 247, column: 1933, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1198, file: !356, discriminator: 13)
!1203 = !DILocation(line: 247, column: 1942, scope: !1198)
!1204 = !DILocation(line: 247, column: 1917, scope: !1193)
!1205 = !DILocation(line: 247, column: 1960, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1198, file: !356, discriminator: 15)
!1207 = !DILocation(line: 247, column: 1970, scope: !1198)
!1208 = !DILocation(line: 247, column: 1968, scope: !1198)
!1209 = !DILocation(line: 247, column: 1957, scope: !1198)
!1210 = !DILocation(line: 247, column: 1948, scope: !1198)
!1211 = !DILocation(line: 247, column: 2023, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !356, discriminator: 17)
!1213 = !DILexicalBlockFile(scope: !1214, file: !356, discriminator: 16)
!1214 = !DILexicalBlockFile(scope: !1193, file: !356, discriminator: 14)
!1215 = !DILocation(line: 247, column: 2025, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1217, file: !356, discriminator: 18)
!1217 = !DILexicalBlockFile(scope: !1218, file: !356, discriminator: 12)
!1218 = !DILexicalBlockFile(scope: !1179, file: !356, discriminator: 10)
!1219 = !DILocation(line: 247, column: 2027, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !356, discriminator: 19)
!1221 = !DILexicalBlockFile(scope: !1222, file: !356, discriminator: 8)
!1222 = !DILexicalBlockFile(scope: !644, file: !356, discriminator: 6)
!1223 = !DILocation(line: 247, column: 1721, scope: !1170)
!1224 = !DILocation(line: 247, column: 2037, scope: !640)
!1225 = !DILocation(line: 247, column: 2037, scope: !644)
!1226 = !DILocation(line: 247, column: 2062, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1228, file: !356, discriminator: 4)
!1228 = !DILexicalBlockFile(scope: !640, file: !356, discriminator: 2)
!1229 = !DILocation(line: 247, column: 2044, scope: !640)
!1230 = !DILocation(line: 247, column: 46, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1232, file: !356, discriminator: 21)
!1232 = !DILexicalBlockFile(scope: !640, file: !356, discriminator: 20)
!1233 = !DILocation(line: 247, column: 2077, scope: !641)
!1234 = !DILocation(line: 247, column: 2077, scope: !640)
!1235 = !DILocation(line: 247, column: 43, scope: !641)
!1236 = !DILocation(line: 246, column: 22, scope: !632)
!1237 = !DILocation(line: 248, column: 31, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !641, file: !356, line: 247, column: 2081)
!1239 = !DILocation(line: 248, column: 17, scope: !1238)
!1240 = !DILocation(line: 249, column: 17, scope: !1238)
!1241 = !DILocation(line: 249, column: 26, scope: !1238)
!1242 = !DILocation(line: 249, column: 31, scope: !1238)
!1243 = !DILocation(line: 251, column: 17, scope: !1238)
!1244 = !DILocation(line: 251, column: 26, scope: !1238)
!1245 = !DILocation(line: 251, column: 32, scope: !1238)
!1246 = !DILocation(line: 252, column: 17, scope: !1238)
!1247 = !DILocation(line: 254, column: 9, scope: !633)
!1248 = !DILocation(line: 256, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !622, file: !356, line: 256, column: 13)
!1250 = !DILocation(line: 256, column: 18, scope: !1249)
!1251 = !DILocation(line: 256, column: 23, scope: !1249)
!1252 = !{!858, !670, i64 944}
!1253 = !DILocation(line: 256, column: 15, scope: !1249)
!1254 = !DILocation(line: 256, column: 13, scope: !622)
!1255 = !DILocation(line: 257, column: 32, scope: !1249)
!1256 = !DILocation(line: 257, column: 36, scope: !1249)
!1257 = !DILocation(line: 257, column: 41, scope: !1249)
!1258 = !DILocation(line: 257, column: 34, scope: !1249)
!1259 = !DILocation(line: 257, column: 26, scope: !1249)
!1260 = !DILocation(line: 257, column: 24, scope: !1249)
!1261 = !DILocation(line: 257, column: 13, scope: !1249)
!1262 = !DILocation(line: 260, column: 24, scope: !1249)
!1263 = !DILocation(line: 263, column: 32, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !622, file: !356, line: 262, column: 13)
!1265 = !DILocation(line: 263, column: 41, scope: !1264)
!1266 = !DILocation(line: 263, column: 47, scope: !1264)
!1267 = !DILocation(line: 264, column: 32, scope: !1264)
!1268 = !DILocation(line: 264, column: 37, scope: !1264)
!1269 = !{!858, !677, i64 488}
!1270 = !DILocation(line: 264, column: 45, scope: !1264)
!1271 = !DILocation(line: 265, column: 34, scope: !1264)
!1272 = !DILocation(line: 265, column: 43, scope: !1264)
!1273 = !DILocation(line: 263, column: 14, scope: !1264)
!1274 = !DILocation(line: 262, column: 14, scope: !1264)
!1275 = !DILocation(line: 262, column: 23, scope: !1264)
!1276 = !DILocation(line: 262, column: 29, scope: !1264)
!1277 = !DILocation(line: 265, column: 55, scope: !1264)
!1278 = !DILocation(line: 262, column: 13, scope: !622)
!1279 = !DILocation(line: 266, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !356, line: 266, column: 17)
!1281 = distinct !DILexicalBlock(scope: !1264, file: !356, line: 265, column: 62)
!1282 = !DILocation(line: 266, column: 26, scope: !1280)
!1283 = !DILocation(line: 266, column: 32, scope: !1280)
!1284 = !DILocation(line: 266, column: 17, scope: !1281)
!1285 = !DILocation(line: 267, column: 31, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !356, line: 266, column: 39)
!1287 = !DILocation(line: 267, column: 17, scope: !1286)
!1288 = !DILocation(line: 268, column: 34, scope: !1286)
!1289 = !DILocation(line: 268, column: 17, scope: !1286)
!1290 = !DILocation(line: 268, column: 26, scope: !1286)
!1291 = !DILocation(line: 268, column: 32, scope: !1286)
!1292 = !DILocation(line: 269, column: 13, scope: !1286)
!1293 = !DILocation(line: 270, column: 13, scope: !1281)
!1294 = !DILocation(line: 272, column: 5, scope: !623)
!1295 = !DILocation(line: 272, column: 5, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !623, file: !356, discriminator: 1)
!1297 = !DILocation(line: 201, column: 5, scope: !623)
!1298 = !DILocation(line: 274, column: 9, scope: !650)
!1299 = !DILocation(line: 274, column: 18, scope: !650)
!1300 = !DILocation(line: 274, column: 24, scope: !650)
!1301 = !DILocation(line: 274, column: 9, scope: !585)
!1302 = !DILocation(line: 275, column: 13, scope: !649)
!1303 = !DILocation(line: 275, column: 17, scope: !649)
!1304 = !{!955, !670, i64 36016}
!1305 = !DILocation(line: 275, column: 11, scope: !649)
!1306 = !DILocation(line: 276, column: 9, scope: !649)
!1307 = !DILocation(line: 276, column: 13, scope: !649)
!1308 = !DILocation(line: 276, column: 20, scope: !649)
!1309 = !DILocation(line: 283, column: 13, scope: !648)
!1310 = !DILocation(line: 283, column: 19, scope: !648)
!1311 = !DILocation(line: 283, column: 13, scope: !649)
!1312 = !DILocation(line: 284, column: 13, scope: !647)
!1313 = !DILocation(line: 284, column: 19, scope: !647)
!1314 = !DILocation(line: 284, column: 25, scope: !647)
!1315 = !DILocation(line: 284, column: 30, scope: !647)
!1316 = !{!858, !670, i64 8}
!1317 = !DILocation(line: 285, column: 13, scope: !647)
!1318 = !DILocation(line: 285, column: 18, scope: !647)
!1319 = !DILocation(line: 285, column: 23, scope: !647)
!1320 = !DILocation(line: 285, column: 28, scope: !647)
!1321 = !DILocation(line: 285, column: 22, scope: !647)
!1322 = !DILocation(line: 287, column: 13, scope: !647)
!1323 = !DILocation(line: 288, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !356, line: 287, column: 22)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !356, line: 287, column: 13)
!1326 = distinct !DILexicalBlock(scope: !647, file: !356, line: 287, column: 13)
!1327 = !DILocation(line: 288, column: 24, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !356, discriminator: 9)
!1329 = !DILexicalBlockFile(scope: !1324, file: !356, discriminator: 1)
!1330 = !DILocation(line: 288, column: 26, scope: !1324)
!1331 = !DILocation(line: 288, column: 33, scope: !1324)
!1332 = !DILocation(line: 288, column: 36, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1324, file: !356, discriminator: 3)
!1334 = !DILocation(line: 288, column: 38, scope: !1324)
!1335 = !DILocation(line: 288, column: 46, scope: !1324)
!1336 = !DILocation(line: 288, column: 49, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1324, file: !356, discriminator: 5)
!1338 = !DILocation(line: 288, column: 51, scope: !1324)
!1339 = !DILocation(line: 288, column: 59, scope: !1324)
!1340 = !DILocation(line: 288, column: 62, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1324, file: !356, discriminator: 7)
!1342 = !DILocation(line: 288, column: 64, scope: !1324)
!1343 = !DILocation(line: 288, column: 17, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !356, discriminator: 8)
!1345 = !DILexicalBlockFile(scope: !1346, file: !356, discriminator: 6)
!1346 = !DILexicalBlockFile(scope: !1347, file: !356, discriminator: 4)
!1347 = !DILexicalBlockFile(scope: !1324, file: !356, discriminator: 2)
!1348 = !DILocation(line: 289, column: 26, scope: !1324)
!1349 = !DILocation(line: 289, column: 25, scope: !1324)
!1350 = !DILocation(line: 289, column: 23, scope: !1324)
!1351 = !DILocation(line: 291, column: 22, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1324, file: !356, line: 291, column: 21)
!1353 = !DILocation(line: 291, column: 21, scope: !1324)
!1354 = !DILocation(line: 292, column: 21, scope: !1352)
!1355 = !DILocation(line: 294, column: 21, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1324, file: !356, line: 294, column: 21)
!1357 = !DILocation(line: 294, column: 23, scope: !1356)
!1358 = !DILocation(line: 294, column: 21, scope: !1324)
!1359 = !DILocation(line: 295, column: 21, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !356, line: 294, column: 31)
!1361 = !DILocation(line: 295, column: 30, scope: !1360)
!1362 = !DILocation(line: 295, column: 36, scope: !1360)
!1363 = !DILocation(line: 296, column: 33, scope: !1360)
!1364 = !DILocation(line: 296, column: 21, scope: !1360)
!1365 = !DILocation(line: 297, column: 23, scope: !1360)
!1366 = !DILocation(line: 298, column: 21, scope: !1360)
!1367 = !DILocation(line: 302, column: 17, scope: !1324)
!1368 = !DILocation(line: 302, column: 24, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1329, file: !356, discriminator: 4)
!1370 = !DILocation(line: 302, column: 26, scope: !1324)
!1371 = !DILocation(line: 302, column: 29, scope: !1347)
!1372 = !DILocation(line: 302, column: 31, scope: !1324)
!1373 = !DILocation(line: 302, column: 17, scope: !1333)
!1374 = !DILocation(line: 303, column: 26, scope: !1324)
!1375 = !DILocation(line: 303, column: 25, scope: !1324)
!1376 = !DILocation(line: 303, column: 23, scope: !1324)
!1377 = !DILocation(line: 287, column: 13, scope: !1325)
!1378 = !DILocation(line: 305, column: 9, scope: !648)
!1379 = !DILocation(line: 305, column: 9, scope: !647)
!1380 = !DILocation(line: 307, column: 5, scope: !649)
!1381 = !DILocation(line: 309, column: 11, scope: !650)
!1382 = !DILocation(line: 312, column: 14, scope: !585)
!1383 = !DILocation(line: 312, column: 18, scope: !585)
!1384 = !DILocation(line: 312, column: 6, scope: !585)
!1385 = !DILocation(line: 312, column: 12, scope: !585)
!1386 = !DILocation(line: 314, column: 21, scope: !585)
!1387 = !DILocation(line: 314, column: 5, scope: !585)
!1388 = !DILocation(line: 316, column: 9, scope: !656)
!1389 = !DILocation(line: 316, column: 11, scope: !656)
!1390 = !DILocation(line: 316, column: 9, scope: !585)
!1391 = !DILocation(line: 317, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !655, file: !356, line: 317, column: 13)
!1393 = !DILocation(line: 317, column: 18, scope: !1392)
!1394 = !DILocation(line: 317, column: 23, scope: !1392)
!1395 = !DILocation(line: 317, column: 13, scope: !655)
!1396 = !DILocation(line: 318, column: 13, scope: !1392)
!1397 = !DILocation(line: 318, column: 22, scope: !1392)
!1398 = !DILocation(line: 318, column: 28, scope: !1392)
!1399 = !DILocation(line: 319, column: 27, scope: !655)
!1400 = !DILocation(line: 319, column: 32, scope: !655)
!1401 = !DILocation(line: 319, column: 9, scope: !655)
!1402 = !DILocation(line: 319, column: 18, scope: !655)
!1403 = !DILocation(line: 319, column: 25, scope: !655)
!1404 = !DILocation(line: 320, column: 13, scope: !654)
!1405 = !DILocation(line: 320, column: 18, scope: !654)
!1406 = !{!858, !670, i64 0}
!1407 = !DILocation(line: 320, column: 22, scope: !654)
!1408 = !DILocation(line: 320, column: 13, scope: !655)
!1409 = !DILocation(line: 321, column: 13, scope: !653)
!1410 = !DILocation(line: 321, column: 20, scope: !653)
!1411 = !DILocation(line: 323, column: 37, scope: !653)
!1412 = !DILocation(line: 323, column: 42, scope: !653)
!1413 = !DILocation(line: 323, column: 48, scope: !653)
!1414 = !DILocation(line: 323, column: 53, scope: !653)
!1415 = !DILocation(line: 323, column: 46, scope: !653)
!1416 = !DILocation(line: 323, column: 31, scope: !653)
!1417 = !DILocation(line: 323, column: 13, scope: !653)
!1418 = !DILocation(line: 323, column: 22, scope: !653)
!1419 = !DILocation(line: 323, column: 29, scope: !653)
!1420 = !DILocation(line: 324, column: 19, scope: !653)
!1421 = !DILocation(line: 324, column: 24, scope: !653)
!1422 = !{!858, !670, i64 16}
!1423 = !DILocation(line: 324, column: 30, scope: !653)
!1424 = !DILocation(line: 324, column: 35, scope: !653)
!1425 = !DILocation(line: 324, column: 28, scope: !653)
!1426 = !DILocation(line: 324, column: 17, scope: !653)
!1427 = !DILocation(line: 325, column: 54, scope: !653)
!1428 = !DILocation(line: 325, column: 58, scope: !653)
!1429 = !DILocation(line: 325, column: 38, scope: !653)
!1430 = !DILocation(line: 325, column: 13, scope: !653)
!1431 = !DILocation(line: 325, column: 22, scope: !653)
!1432 = !DILocation(line: 325, column: 27, scope: !653)
!1433 = !DILocation(line: 326, column: 17, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !653, file: !356, line: 326, column: 17)
!1435 = !DILocation(line: 326, column: 26, scope: !1434)
!1436 = !DILocation(line: 326, column: 31, scope: !1434)
!1437 = !DILocation(line: 326, column: 17, scope: !653)
!1438 = !DILocation(line: 327, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !356, line: 327, column: 21)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !356, line: 326, column: 46)
!1441 = !DILocation(line: 327, column: 25, scope: !1439)
!1442 = !DILocation(line: 327, column: 21, scope: !1440)
!1443 = !DILocation(line: 328, column: 40, scope: !1439)
!1444 = !DILocation(line: 328, column: 49, scope: !1439)
!1445 = !DILocation(line: 328, column: 55, scope: !1439)
!1446 = !DILocation(line: 328, column: 60, scope: !1439)
!1447 = !DILocation(line: 328, column: 65, scope: !1439)
!1448 = !DILocation(line: 328, column: 21, scope: !1439)
!1449 = !DILocation(line: 329, column: 31, scope: !1440)
!1450 = !DILocation(line: 329, column: 17, scope: !1440)
!1451 = !DILocation(line: 329, column: 26, scope: !1440)
!1452 = !DILocation(line: 329, column: 36, scope: !1440)
!1453 = !DILocation(line: 330, column: 13, scope: !1440)
!1454 = !DILocation(line: 331, column: 9, scope: !654)
!1455 = !DILocation(line: 331, column: 9, scope: !653)
!1456 = !DILocation(line: 332, column: 5, scope: !655)
!1457 = !DILocation(line: 332, column: 16, scope: !659)
!1458 = !DILocation(line: 332, column: 21, scope: !659)
!1459 = !{!858, !670, i64 928}
!1460 = !DILocation(line: 332, column: 30, scope: !659)
!1461 = !DILocation(line: 332, column: 16, scope: !656)
!1462 = !DILocation(line: 336, column: 9, scope: !658)
!1463 = !DILocation(line: 336, column: 15, scope: !658)
!1464 = !DILocation(line: 336, column: 19, scope: !658)
!1465 = !DILocation(line: 337, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !658, file: !356, line: 337, column: 13)
!1467 = !DILocation(line: 337, column: 13, scope: !658)
!1468 = !DILocation(line: 338, column: 47, scope: !1466)
!1469 = !DILocation(line: 338, column: 52, scope: !1466)
!1470 = !DILocation(line: 338, column: 40, scope: !1466)
!1471 = !DILocation(line: 338, column: 61, scope: !1466)
!1472 = !DILocation(line: 338, column: 24, scope: !1466)
!1473 = !DILocation(line: 338, column: 13, scope: !1466)
!1474 = !DILocation(line: 338, column: 16, scope: !1466)
!1475 = !DILocation(line: 338, column: 22, scope: !1466)
!1476 = !{!1477, !670, i64 8}
!1477 = !{!"_node", !1478, i64 0, !670, i64 8, !677, i64 16, !677, i64 20, !677, i64 24, !670, i64 32}
!1478 = !{!"short", !671, i64 0}
!1479 = !DILocation(line: 339, column: 14, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !658, file: !356, line: 339, column: 13)
!1481 = !DILocation(line: 339, column: 16, scope: !1480)
!1482 = !DILocation(line: 339, column: 20, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1480, file: !356, discriminator: 1)
!1484 = !DILocation(line: 339, column: 23, scope: !1480)
!1485 = !DILocation(line: 339, column: 20, scope: !1480)
!1486 = !DILocation(line: 339, column: 13, scope: !658)
!1487 = !DILocation(line: 340, column: 13, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !356, line: 339, column: 30)
!1489 = !DILocation(line: 340, column: 22, scope: !1488)
!1490 = !DILocation(line: 340, column: 28, scope: !1488)
!1491 = !DILocation(line: 341, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !356, line: 341, column: 17)
!1493 = !DILocation(line: 341, column: 17, scope: !1488)
!1494 = !DILocation(line: 342, column: 31, scope: !1492)
!1495 = !DILocation(line: 342, column: 17, scope: !1492)
!1496 = !DILocation(line: 343, column: 15, scope: !1488)
!1497 = !DILocation(line: 344, column: 13, scope: !1488)
!1498 = !DILocation(line: 346, column: 16, scope: !658)
!1499 = !DILocation(line: 346, column: 19, scope: !658)
!1500 = !DILocation(line: 346, column: 26, scope: !658)
!1501 = !DILocation(line: 346, column: 31, scope: !658)
!1502 = !DILocation(line: 346, column: 9, scope: !658)
!1503 = !DILocation(line: 347, column: 20, scope: !658)
!1504 = !DILocation(line: 347, column: 25, scope: !658)
!1505 = !DILocation(line: 347, column: 9, scope: !658)
!1506 = !DILocation(line: 348, column: 9, scope: !658)
!1507 = !DILocation(line: 348, column: 14, scope: !658)
!1508 = !DILocation(line: 348, column: 23, scope: !658)
!1509 = !DILocation(line: 349, column: 9, scope: !658)
!1510 = !DILocation(line: 349, column: 12, scope: !658)
!1511 = !DILocation(line: 349, column: 24, scope: !658)
!1512 = !{!1477, !677, i64 24}
!1513 = !DILocation(line: 350, column: 22, scope: !658)
!1514 = !DILocation(line: 350, column: 9, scope: !658)
!1515 = !DILocation(line: 350, column: 12, scope: !658)
!1516 = !DILocation(line: 350, column: 20, scope: !658)
!1517 = !{!1477, !670, i64 32}
!1518 = !DILocation(line: 351, column: 13, scope: !658)
!1519 = !DILocation(line: 351, column: 11, scope: !658)
!1520 = !DILocation(line: 352, column: 5, scope: !659)
!1521 = !DILocation(line: 352, column: 5, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !659, file: !356, discriminator: 1)
!1523 = !DILocation(line: 352, column: 5, scope: !658)
!1524 = !DILocation(line: 316, column: 23, scope: !656)
!1525 = !DILocation(line: 355, column: 22, scope: !585)
!1526 = !DILocation(line: 355, column: 5, scope: !585)
!1527 = !DILocation(line: 357, column: 12, scope: !585)
!1528 = !DILocation(line: 357, column: 5, scope: !585)
!1529 = !DILocation(line: 358, column: 1, scope: !585)
!1530 = !DILocation(line: 96, column: 26, scope: !526)
!1531 = !DILocation(line: 96, column: 42, scope: !526)
!1532 = !DILocation(line: 96, column: 61, scope: !526)
!1533 = !DILocation(line: 96, column: 68, scope: !526)
!1534 = !DILocation(line: 97, column: 32, scope: !526)
!1535 = !DILocation(line: 97, column: 49, scope: !526)
!1536 = !DILocation(line: 98, column: 32, scope: !526)
!1537 = !DILocation(line: 100, column: 36, scope: !526)
!1538 = !DILocation(line: 100, column: 40, scope: !526)
!1539 = !DILocation(line: 101, column: 36, scope: !526)
!1540 = !DILocation(line: 101, column: 39, scope: !526)
!1541 = !DILocation(line: 101, column: 46, scope: !526)
!1542 = !DILocation(line: 101, column: 51, scope: !526)
!1543 = !DILocation(line: 101, column: 56, scope: !526)
!1544 = !DILocation(line: 100, column: 12, scope: !526)
!1545 = !DILocation(line: 100, column: 5, scope: !526)
!1546 = !DILocation(line: 105, column: 31, scope: !537)
!1547 = !DILocation(line: 105, column: 47, scope: !537)
!1548 = !DILocation(line: 105, column: 69, scope: !537)
!1549 = !DILocation(line: 106, column: 34, scope: !537)
!1550 = !DILocation(line: 106, column: 41, scope: !537)
!1551 = !DILocation(line: 107, column: 37, scope: !537)
!1552 = !DILocation(line: 107, column: 54, scope: !537)
!1553 = !DILocation(line: 108, column: 37, scope: !537)
!1554 = !DILocation(line: 108, column: 50, scope: !537)
!1555 = !DILocation(line: 110, column: 5, scope: !537)
!1556 = !DILocation(line: 110, column: 9, scope: !537)
!1557 = !DILocation(line: 110, column: 18, scope: !537)
!1558 = !DILocation(line: 111, column: 38, scope: !537)
!1559 = !DILocation(line: 111, column: 42, scope: !537)
!1560 = !DILocation(line: 111, column: 52, scope: !537)
!1561 = !DILocation(line: 111, column: 57, scope: !537)
!1562 = !DILocation(line: 111, column: 60, scope: !537)
!1563 = !DILocation(line: 111, column: 67, scope: !537)
!1564 = !DILocation(line: 112, column: 38, scope: !537)
!1565 = !DILocation(line: 112, column: 43, scope: !537)
!1566 = !DILocation(line: 111, column: 12, scope: !537)
!1567 = !DILocation(line: 113, column: 1, scope: !537)
!1568 = !DILocation(line: 111, column: 5, scope: !537)
!1569 = !DILocation(line: 138, column: 33, scope: !565)
!1570 = !DILocation(line: 138, column: 49, scope: !565)
!1571 = !DILocation(line: 139, column: 39, scope: !565)
!1572 = !DILocation(line: 139, column: 53, scope: !565)
!1573 = !DILocation(line: 139, column: 60, scope: !565)
!1574 = !DILocation(line: 140, column: 39, scope: !565)
!1575 = !DILocation(line: 140, column: 56, scope: !565)
!1576 = !DILocation(line: 141, column: 39, scope: !565)
!1577 = !DILocation(line: 141, column: 53, scope: !565)
!1578 = !DILocation(line: 143, column: 5, scope: !565)
!1579 = !DILocation(line: 143, column: 11, scope: !565)
!1580 = !DILocation(line: 144, column: 5, scope: !565)
!1581 = !DILocation(line: 144, column: 15, scope: !565)
!1582 = !DILocation(line: 146, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !565, file: !356, line: 146, column: 9)
!1584 = !DILocation(line: 146, column: 18, scope: !1583)
!1585 = !DILocation(line: 146, column: 9, scope: !565)
!1586 = !DILocation(line: 147, column: 45, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !356, line: 146, column: 33)
!1588 = !DILocation(line: 147, column: 19, scope: !1587)
!1589 = !DILocation(line: 147, column: 17, scope: !1587)
!1590 = !DILocation(line: 148, column: 13, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !356, line: 148, column: 13)
!1592 = !DILocation(line: 148, column: 21, scope: !1591)
!1593 = !DILocation(line: 148, column: 13, scope: !1587)
!1594 = !DILocation(line: 149, column: 13, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !356, line: 148, column: 36)
!1596 = !DILocation(line: 149, column: 22, scope: !1595)
!1597 = !DILocation(line: 149, column: 28, scope: !1595)
!1598 = !DILocation(line: 150, column: 13, scope: !1595)
!1599 = !DILocation(line: 152, column: 5, scope: !1587)
!1600 = !DILocation(line: 154, column: 34, scope: !565)
!1601 = !DILocation(line: 154, column: 38, scope: !565)
!1602 = !DILocation(line: 154, column: 47, scope: !565)
!1603 = !DILocation(line: 154, column: 52, scope: !565)
!1604 = !DILocation(line: 155, column: 34, scope: !565)
!1605 = !DILocation(line: 155, column: 41, scope: !565)
!1606 = !DILocation(line: 155, column: 46, scope: !565)
!1607 = !DILocation(line: 155, column: 51, scope: !565)
!1608 = !DILocation(line: 155, column: 60, scope: !565)
!1609 = !DILocation(line: 154, column: 9, scope: !565)
!1610 = !DILocation(line: 154, column: 7, scope: !565)
!1611 = !DILocation(line: 157, column: 5, scope: !565)
!1612 = !DILocation(line: 157, column: 10, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !581, file: !356, discriminator: 1)
!1614 = !DILocation(line: 157, column: 20, scope: !581)
!1615 = !DILocation(line: 157, column: 51, scope: !581)
!1616 = !DILocation(line: 157, column: 65, scope: !584)
!1617 = !DILocation(line: 157, column: 81, scope: !584)
!1618 = !DILocation(line: 157, column: 65, scope: !581)
!1619 = !DILocation(line: 157, column: 96, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !584, file: !356, discriminator: 2)
!1621 = !DILocation(line: 157, column: 101, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !583, file: !356, discriminator: 4)
!1623 = !DILocation(line: 157, column: 111, scope: !583)
!1624 = !DILocation(line: 157, column: 141, scope: !583)
!1625 = !DILocation(line: 157, column: 167, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !583, file: !356, line: 157, column: 164)
!1627 = !DILocation(line: 157, column: 184, scope: !1626)
!1628 = !DILocation(line: 157, column: 164, scope: !1626)
!1629 = !DILocation(line: 157, column: 194, scope: !1626)
!1630 = !DILocation(line: 157, column: 164, scope: !583)
!1631 = !DILocation(line: 157, column: 164, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !583, file: !356, discriminator: 5)
!1633 = !DILocation(line: 157, column: 225, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1626, file: !356, discriminator: 6)
!1635 = !DILocation(line: 157, column: 243, scope: !1626)
!1636 = !DILocation(line: 157, column: 253, scope: !1626)
!1637 = !DILocation(line: 157, column: 278, scope: !1626)
!1638 = !DILocation(line: 157, column: 209, scope: !1626)
!1639 = !DILocation(line: 157, column: 297, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !584, file: !356, discriminator: 7)
!1641 = !DILocation(line: 157, column: 297, scope: !583)
!1642 = !DILocation(line: 157, column: 297, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !583, file: !356, discriminator: 8)
!1644 = !DILocation(line: 157, column: 297, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !583, file: !356, discriminator: 9)
!1646 = !DILocation(line: 157, column: 310, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !356, discriminator: 10)
!1648 = !DILexicalBlockFile(scope: !565, file: !356, discriminator: 3)
!1649 = !DILocation(line: 157, column: 310, scope: !581)
!1650 = !DILocation(line: 157, column: 310, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !581, file: !356, discriminator: 11)
!1652 = !DILocation(line: 159, column: 12, scope: !565)
!1653 = !DILocation(line: 159, column: 5, scope: !565)
!1654 = !DILocation(line: 160, column: 1, scope: !565)
!1655 = !DILocation(line: 116, column: 32, scope: !551)
!1656 = !DILocation(line: 116, column: 46, scope: !551)
!1657 = !DILocation(line: 117, column: 38, scope: !551)
!1658 = !DILocation(line: 117, column: 52, scope: !551)
!1659 = !DILocation(line: 117, column: 59, scope: !551)
!1660 = !DILocation(line: 118, column: 38, scope: !551)
!1661 = !DILocation(line: 118, column: 55, scope: !551)
!1662 = !DILocation(line: 119, column: 38, scope: !551)
!1663 = !DILocation(line: 119, column: 52, scope: !551)
!1664 = !DILocation(line: 121, column: 5, scope: !551)
!1665 = !DILocation(line: 121, column: 23, scope: !551)
!1666 = !DILocation(line: 123, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !551, file: !356, line: 123, column: 9)
!1668 = !DILocation(line: 123, column: 26, scope: !1667)
!1669 = !DILocation(line: 123, column: 9, scope: !1667)
!1670 = !DILocation(line: 123, column: 36, scope: !1667)
!1671 = !DILocation(line: 123, column: 9, scope: !551)
!1672 = !DILocation(line: 124, column: 9, scope: !1667)
!1673 = !DILocation(line: 126, column: 37, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !551, file: !356, line: 126, column: 9)
!1675 = !DILocation(line: 126, column: 41, scope: !1674)
!1676 = !DILocation(line: 126, column: 46, scope: !1674)
!1677 = !DILocation(line: 126, column: 51, scope: !1674)
!1678 = !DILocation(line: 126, column: 16, scope: !1674)
!1679 = !DILocation(line: 126, column: 14, scope: !1674)
!1680 = !DILocation(line: 126, column: 57, scope: !1674)
!1681 = !DILocation(line: 126, column: 9, scope: !551)
!1682 = !DILocation(line: 127, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1674, file: !356, line: 126, column: 72)
!1684 = !DILocation(line: 127, column: 18, scope: !1683)
!1685 = !DILocation(line: 127, column: 24, scope: !1683)
!1686 = !DILocation(line: 128, column: 9, scope: !1683)
!1687 = !DILocation(line: 131, column: 21, scope: !551)
!1688 = !DILocation(line: 131, column: 30, scope: !551)
!1689 = !DILocation(line: 131, column: 42, scope: !551)
!1690 = !DILocation(line: 131, column: 51, scope: !551)
!1691 = !DILocation(line: 132, column: 21, scope: !551)
!1692 = !DILocation(line: 132, column: 30, scope: !551)
!1693 = !DILocation(line: 132, column: 5, scope: !551)
!1694 = !DILocation(line: 132, column: 10, scope: !551)
!1695 = !DILocation(line: 132, column: 19, scope: !551)
!1696 = !DILocation(line: 134, column: 21, scope: !551)
!1697 = !DILocation(line: 134, column: 26, scope: !551)
!1698 = !DILocation(line: 134, column: 29, scope: !551)
!1699 = !DILocation(line: 134, column: 36, scope: !551)
!1700 = !DILocation(line: 134, column: 45, scope: !551)
!1701 = !DILocation(line: 134, column: 12, scope: !551)
!1702 = !DILocation(line: 134, column: 5, scope: !551)
!1703 = !DILocation(line: 135, column: 1, scope: !551)
