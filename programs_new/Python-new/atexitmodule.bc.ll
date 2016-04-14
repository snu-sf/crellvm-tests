; ModuleID = 'programs_new/Python-new/atexitmodule.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.atexitmodule_state = type { %struct.atexit_callback**, i32, i32 }
%struct.atexit_callback = type { %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@atexitmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([160 x i8], [160 x i8]* @atexit__doc__, i32 0, i32 0), i64 16, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @atexit_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @atexit_m_traverse, i32 (%struct._object*)* @atexit_m_clear, void (i8*)* bitcast (void (%struct._object*)* @atexit_free to void (i8*)*) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@atexit__doc__ = internal global [160 x i8] c"allow programmer to define multiple exit functions to be executedupon normal program termination.\0A\0ATwo public functions, register and unregister, are defined.\0A\00", align 16
@atexit_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @atexit_register to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @atexit_register__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_clear, i32 4, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @atexit_clear__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_unregister, i32 8, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @atexit_unregister__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_run_exitfuncs, i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @atexit_run_exitfuncs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_ncallbacks, i32 4, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @atexit_ncallbacks__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@atexit_register__doc__ = internal global [310 x i8] c"register(func, *args, **kwargs) -> func\0A\0ARegister a function to be executed upon normal program termination\0A\0A    func - function to be called at exit\0A    args - optional arguments to pass to func\0A    kwargs - optional keyword arguments to pass to func\0A\0A    func is returned to facilitate usage as a decorator.\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"_clear\00", align 1
@atexit_clear__doc__ = internal global [74 x i8] c"_clear() -> None\0A\0AClear the list of previously registered exit functions.\00", align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"unregister\00", align 1
@atexit_unregister__doc__ = internal global [147 x i8] c"unregister(func) -> None\0A\0AUnregister a exit function which was previously registered using\0Aatexit.register\0A\0A    func - function to be unregistered\00", align 16
@.str.4 = private unnamed_addr constant [15 x i8] c"_run_exitfuncs\00", align 1
@atexit_run_exitfuncs__doc__ = internal global [61 x i8] c"_run_exitfuncs() -> None\0A\0ARun all registered exit functions.\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"_ncallbacks\00", align 1
@atexit_ncallbacks__doc__ = internal global [70 x i8] c"_ncallbacks() -> int\0A\0AReturn the number of registered exit functions.\00", align 16
@PyExc_TypeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"register() takes at least 1 argument (0 given)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"the first argument must be callable\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemExit = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"Error in atexit._run_exitfuncs:\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_atexit() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !554
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !554
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !373, metadata !555), !dbg !556
  %1 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !557
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !557
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !374, metadata !555), !dbg !558
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @atexitmodule, i32 1013), !dbg !559
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !560, !tbaa !561
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !565, !tbaa !561
  %cmp = icmp eq %struct._object* %2, null, !dbg !567
  br i1 %cmp, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !569
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !569

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !570, !tbaa !561
  %call1 = call i8* @PyModule_GetState(%struct._object* %3), !dbg !571
  %4 = bitcast i8* %call1 to %struct.atexitmodule_state*, !dbg !572
  store %struct.atexitmodule_state* %4, %struct.atexitmodule_state** %modstate, align 8, !dbg !573, !tbaa !561
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !574, !tbaa !561
  %callback_len = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 2, !dbg !575
  store i32 32, i32* %callback_len, align 4, !dbg !576, !tbaa !577
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !580, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 1, !dbg !581
  store i32 0, i32* %ncallbacks, align 4, !dbg !582, !tbaa !583
  %7 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !584, !tbaa !561
  %callback_len2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %7, i32 0, i32 2, !dbg !585
  %8 = load i32, i32* %callback_len2, align 4, !dbg !585, !tbaa !577
  %conv = sext i32 %8 to i64, !dbg !586
  %cmp3 = icmp ugt i64 %conv, 1152921504606846975, !dbg !587
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !588

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !589

cond.false:                                       ; preds = %if.end
  %9 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !591, !tbaa !561
  %callback_len5 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %9, i32 0, i32 2, !dbg !593
  %10 = load i32, i32* %callback_len5, align 4, !dbg !593, !tbaa !577
  %conv6 = sext i32 %10 to i64, !dbg !594
  %mul = mul i64 %conv6, 8, !dbg !595
  %call7 = call i8* @PyMem_Malloc(i64 %mul), !dbg !596
  %11 = bitcast i8* %call7 to %struct.atexit_callback**, !dbg !597
  br label %cond.end, !dbg !588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.atexit_callback** [ null, %cond.true ], [ %11, %cond.false ], !dbg !588
  %12 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !598, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %12, i32 0, i32 0, !dbg !601
  store %struct.atexit_callback** %cond, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !602, !tbaa !603
  %13 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !604, !tbaa !561
  %atexit_callbacks8 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %13, i32 0, i32 0, !dbg !606
  %14 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks8, align 8, !dbg !606, !tbaa !603
  %cmp9 = icmp eq %struct.atexit_callback** %14, null, !dbg !607
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !608

if.then.11:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !609

if.end.12:                                        ; preds = %cond.end
  call void @_Py_PyAtExit(void ()* @atexit_callfuncs), !dbg !610
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !611, !tbaa !561
  store %struct._object* %15, %struct._object** %retval, !dbg !612
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !612

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %16 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !613
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !613
  %17 = bitcast %struct._object** %m to i8*, !dbg !613
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !613
  %18 = load %struct._object*, %struct._object** %retval, !dbg !613
  ret %struct._object* %18, !dbg !613
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i8* @PyModule_GetState(%struct._object*) #3

declare i8* @PyMem_Malloc(i64) #3

declare void @_Py_PyAtExit(void ()*) #3

; Function Attrs: nounwind uwtable
define internal void @atexit_callfuncs() #0 {
entry:
  %exc_type = alloca %struct._object*, align 8
  %exc_value = alloca %struct._object*, align 8
  %exc_tb = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %module = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_xdecref_tmp36 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %exc_type to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !614
  call void @llvm.dbg.declare(metadata %struct._object** %exc_type, metadata !467, metadata !555), !dbg !615
  store %struct._object* null, %struct._object** %exc_type, align 8, !dbg !615, !tbaa !561
  %1 = bitcast %struct._object** %exc_value to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !614
  call void @llvm.dbg.declare(metadata %struct._object** %exc_value, metadata !468, metadata !555), !dbg !616
  %2 = bitcast %struct._object** %exc_tb to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !614
  call void @llvm.dbg.declare(metadata %struct._object** %exc_tb, metadata !469, metadata !555), !dbg !617
  %3 = bitcast %struct._object** %r to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !614
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !470, metadata !555), !dbg !618
  %4 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !619
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !619
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %cb, metadata !471, metadata !555), !dbg !620
  %5 = bitcast %struct._object** %module to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !621
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !472, metadata !555), !dbg !622
  %6 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !623
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !623
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !473, metadata !555), !dbg !624
  %7 = bitcast i32* %i to i8*, !dbg !625
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !625
  call void @llvm.dbg.declare(metadata i32* %i, metadata !474, metadata !555), !dbg !626
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @atexitmodule), !dbg !627
  store %struct._object* %call, %struct._object** %module, align 8, !dbg !628, !tbaa !561
  %8 = load %struct._object*, %struct._object** %module, align 8, !dbg !629, !tbaa !561
  %cmp = icmp eq %struct._object* %8, null, !dbg !631
  br i1 %cmp, label %if.then, label %if.end, !dbg !632

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !633

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %module, align 8, !dbg !634, !tbaa !561
  %call1 = call i8* @PyModule_GetState(%struct._object* %9), !dbg !635
  %10 = bitcast i8* %call1 to %struct.atexitmodule_state*, !dbg !636
  store %struct.atexitmodule_state* %10, %struct.atexitmodule_state** %modstate, align 8, !dbg !637, !tbaa !561
  %11 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !638, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %11, i32 0, i32 1, !dbg !640
  %12 = load i32, i32* %ncallbacks, align 4, !dbg !640, !tbaa !583
  %cmp2 = icmp eq i32 %12, 0, !dbg !641
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !642

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !643

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !644, !tbaa !561
  %ncallbacks5 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %13, i32 0, i32 1, !dbg !645
  %14 = load i32, i32* %ncallbacks5, align 4, !dbg !645, !tbaa !583
  %sub = sub i32 %14, 1, !dbg !646
  store i32 %sub, i32* %i, align 4, !dbg !647, !tbaa !648
  br label %for.cond, !dbg !649

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %i, align 4, !dbg !650, !tbaa !648
  %cmp6 = icmp sge i32 %15, 0, !dbg !653
  br i1 %cmp6, label %for.body, label %for.end, !dbg !654

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !655, !tbaa !648
  %idxprom = sext i32 %16 to i64, !dbg !656
  %17 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !656, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %17, i32 0, i32 0, !dbg !657
  %18 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !657, !tbaa !603
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %18, i64 %idxprom, !dbg !656
  %19 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !656, !tbaa !561
  store %struct.atexit_callback* %19, %struct.atexit_callback** %cb, align 8, !dbg !658, !tbaa !561
  %20 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !659, !tbaa !561
  %cmp7 = icmp eq %struct.atexit_callback* %20, null, !dbg !661
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !662

if.then.8:                                        ; preds = %for.body
  br label %for.inc, !dbg !663

if.end.9:                                         ; preds = %for.body
  %21 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !664, !tbaa !561
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %21, i32 0, i32 0, !dbg !665
  %22 = load %struct._object*, %struct._object** %func, align 8, !dbg !665, !tbaa !666
  %23 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !668, !tbaa !561
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %23, i32 0, i32 1, !dbg !669
  %24 = load %struct._object*, %struct._object** %args, align 8, !dbg !669, !tbaa !670
  %25 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !671, !tbaa !561
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %25, i32 0, i32 2, !dbg !672
  %26 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !672, !tbaa !673
  %call10 = call %struct._object* @PyObject_Call(%struct._object* %22, %struct._object* %24, %struct._object* %26), !dbg !674
  store %struct._object* %call10, %struct._object** %r, align 8, !dbg !675, !tbaa !561
  br label %do.body, !dbg !676

do.body:                                          ; preds = %if.end.9
  %27 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !677
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !677
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !475, metadata !555), !dbg !679
  %28 = load %struct._object*, %struct._object** %r, align 8, !dbg !680, !tbaa !561
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp, align 8, !dbg !679, !tbaa !561
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !681, !tbaa !561
  %cmp11 = icmp ne %struct._object* %29, null, !dbg !682
  br i1 %cmp11, label %if.then.12, label %if.end.17, !dbg !683

if.then.12:                                       ; preds = %do.body
  br label %do.body.13, !dbg !684

do.body.13:                                       ; preds = %if.then.12
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !686
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !480, metadata !555), !dbg !688
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !689, !tbaa !561
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8, !dbg !688, !tbaa !561
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !690, !tbaa !561
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !692
  %33 = load i64, i64* %ob_refcnt, align 8, !dbg !693, !tbaa !694
  %dec = add i64 %33, -1, !dbg !693
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !693, !tbaa !694
  %cmp14 = icmp ne i64 %dec, 0, !dbg !697
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !698

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.16, !dbg !699

if.else:                                          ; preds = %do.body.13
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !701, !tbaa !561
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !703
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !703, !tbaa !704
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !705
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !705, !tbaa !706
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !709, !tbaa !561
  call void %36(%struct._object* %37), !dbg !710
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !711
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !711
  br label %do.cond, !dbg !713

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !714

do.end:                                           ; preds = %do.cond
  br label %if.end.17, !dbg !716

if.end.17:                                        ; preds = %do.end, %do.body
  %39 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !718
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !718
  br label %do.cond.18, !dbg !721

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !722

do.end.19:                                        ; preds = %do.cond.18
  %40 = load %struct._object*, %struct._object** %r, align 8, !dbg !724, !tbaa !561
  %cmp20 = icmp eq %struct._object* %40, null, !dbg !725
  br i1 %cmp20, label %if.then.21, label %if.end.78, !dbg !726

if.then.21:                                       ; preds = %do.end.19
  %41 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !727, !tbaa !561
  %tobool = icmp ne %struct._object* %41, null, !dbg !727
  br i1 %tobool, label %if.then.22, label %if.end.73, !dbg !728

if.then.22:                                       ; preds = %if.then.21
  br label %do.body.23, !dbg !729

do.body.23:                                       ; preds = %if.then.22
  %42 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !730
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !730
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !483, metadata !555), !dbg !732
  %43 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !733, !tbaa !561
  store %struct._object* %43, %struct._object** %_py_decref_tmp24, align 8, !dbg !732, !tbaa !561
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !734, !tbaa !561
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !736
  %45 = load i64, i64* %ob_refcnt25, align 8, !dbg !737, !tbaa !694
  %dec26 = add i64 %45, -1, !dbg !737
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !737, !tbaa !694
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !738
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !739

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !740

if.else.29:                                       ; preds = %do.body.23
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !742, !tbaa !561
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !744
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !744, !tbaa !704
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !745
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !745, !tbaa !706
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !746, !tbaa !561
  call void %48(%struct._object* %49), !dbg !747
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %50 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !748
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !748
  br label %do.cond.33, !dbg !750

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !751

do.end.34:                                        ; preds = %do.cond.33
  br label %do.body.35, !dbg !753

do.body.35:                                       ; preds = %do.end.34
  %51 = bitcast %struct._object** %_py_xdecref_tmp36 to i8*, !dbg !754
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !754
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp36, metadata !489, metadata !555), !dbg !756
  %52 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !757, !tbaa !561
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp36, align 8, !dbg !756, !tbaa !561
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp36, align 8, !dbg !758, !tbaa !561
  %cmp37 = icmp ne %struct._object* %53, null, !dbg !759
  br i1 %cmp37, label %if.then.38, label %if.end.51, !dbg !760

if.then.38:                                       ; preds = %do.body.35
  br label %do.body.39, !dbg !761

do.body.39:                                       ; preds = %if.then.38
  %54 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !763
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !491, metadata !555), !dbg !765
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp36, align 8, !dbg !766, !tbaa !561
  store %struct._object* %55, %struct._object** %_py_decref_tmp40, align 8, !dbg !765, !tbaa !561
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !767, !tbaa !561
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !769
  %57 = load i64, i64* %ob_refcnt41, align 8, !dbg !770, !tbaa !694
  %dec42 = add i64 %57, -1, !dbg !770
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !770, !tbaa !694
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !771
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !772

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !773

if.else.45:                                       ; preds = %do.body.39
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !775, !tbaa !561
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !777
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !777, !tbaa !704
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !778
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !778, !tbaa !706
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !779, !tbaa !561
  call void %60(%struct._object* %61), !dbg !780
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %62 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !781
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !781
  br label %do.cond.49, !dbg !783

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !784

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51, !dbg !786

if.end.51:                                        ; preds = %do.end.50, %do.body.35
  %63 = bitcast %struct._object** %_py_xdecref_tmp36 to i8*, !dbg !788
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !788
  br label %do.cond.52, !dbg !791

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !792

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54, !dbg !794

do.body.54:                                       ; preds = %do.end.53
  %64 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !795
  call void @llvm.lifetime.start(i64 8, i8* %64) #1, !dbg !795
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp55, metadata !494, metadata !555), !dbg !797
  %65 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !798, !tbaa !561
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !797, !tbaa !561
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !799, !tbaa !561
  %cmp56 = icmp ne %struct._object* %66, null, !dbg !800
  br i1 %cmp56, label %if.then.57, label %if.end.70, !dbg !801

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58, !dbg !802

do.body.58:                                       ; preds = %if.then.57
  %67 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !804
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !496, metadata !555), !dbg !806
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !807, !tbaa !561
  store %struct._object* %68, %struct._object** %_py_decref_tmp59, align 8, !dbg !806, !tbaa !561
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !808, !tbaa !561
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !810
  %70 = load i64, i64* %ob_refcnt60, align 8, !dbg !811, !tbaa !694
  %dec61 = add i64 %70, -1, !dbg !811
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !811, !tbaa !694
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !812
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !813

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !814

if.else.64:                                       ; preds = %do.body.58
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !816, !tbaa !561
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !818
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !818, !tbaa !704
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !819
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !819, !tbaa !706
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !820, !tbaa !561
  call void %73(%struct._object* %74), !dbg !821
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %75 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !822
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !822
  br label %do.cond.68, !dbg !824

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !825

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !827

if.end.70:                                        ; preds = %do.end.69, %do.body.54
  %76 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !829
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !829
  br label %do.cond.71, !dbg !830

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !831

do.end.72:                                        ; preds = %do.cond.71
  br label %if.end.73, !dbg !833

if.end.73:                                        ; preds = %do.end.72, %if.then.21
  call void @PyErr_Fetch(%struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb), !dbg !834
  %77 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !835, !tbaa !561
  %call74 = call i32 @PyErr_ExceptionMatches(%struct._object* %77), !dbg !837
  %tobool75 = icmp ne i32 %call74, 0, !dbg !837
  br i1 %tobool75, label %if.end.77, label %if.then.76, !dbg !838

if.then.76:                                       ; preds = %if.end.73
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)), !dbg !839
  call void @PyErr_NormalizeException(%struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb), !dbg !841
  %78 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !842, !tbaa !561
  %79 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !843, !tbaa !561
  %80 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !844, !tbaa !561
  call void @PyErr_Display(%struct._object* %78, %struct._object* %79, %struct._object* %80), !dbg !845
  br label %if.end.77, !dbg !846

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  br label %if.end.78, !dbg !847

if.end.78:                                        ; preds = %if.end.77, %do.end.19
  br label %for.inc, !dbg !848

for.inc:                                          ; preds = %if.end.78, %if.then.8
  %81 = load i32, i32* %i, align 4, !dbg !849, !tbaa !648
  %dec79 = add i32 %81, -1, !dbg !849
  store i32 %dec79, i32* %i, align 4, !dbg !849, !tbaa !648
  br label %for.cond, !dbg !850

for.end:                                          ; preds = %for.cond
  %82 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !851, !tbaa !561
  call void @atexit_cleanup(%struct.atexitmodule_state* %82), !dbg !852
  %83 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !853, !tbaa !561
  %tobool80 = icmp ne %struct._object* %83, null, !dbg !853
  br i1 %tobool80, label %if.then.81, label %if.end.82, !dbg !855

if.then.81:                                       ; preds = %for.end
  %84 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !856, !tbaa !561
  %85 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !857, !tbaa !561
  %86 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !858, !tbaa !561
  call void @PyErr_Restore(%struct._object* %84, %struct._object* %85, %struct._object* %86), !dbg !859
  br label %if.end.82, !dbg !859

if.end.82:                                        ; preds = %if.then.81, %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !860
  br label %cleanup, !dbg !860

cleanup:                                          ; preds = %if.end.82, %if.then.3, %if.then
  %87 = bitcast i32* %i to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 4, i8* %87) #1, !dbg !861
  %88 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !861
  %89 = bitcast %struct._object** %module to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !861
  %90 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !861
  %91 = bitcast %struct._object** %r to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !861
  %92 = bitcast %struct._object** %exc_tb to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !861
  %93 = bitcast %struct._object** %exc_value to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !861
  %94 = bitcast %struct._object** %exc_type to i8*, !dbg !861
  call void @llvm.lifetime.end(i64 8, i8* %94) #1, !dbg !861
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup
  ret void, !dbg !860

unreachable:                                      ; No predecessors!
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %cleanup.dest.slot = alloca i32
  %vret = alloca i32, align 4
  %vret12 = alloca i32, align 4
  %vret27 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !434, metadata !555), !dbg !863
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !435, metadata !555), !dbg !864
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !436, metadata !555), !dbg !865
  %0 = bitcast i32* %i to i8*, !dbg !866
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !866
  call void @llvm.dbg.declare(metadata i32* %i, metadata !437, metadata !555), !dbg !867
  %1 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !868
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !438, metadata !555), !dbg !869
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !870, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %2), !dbg !871
  %3 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !872
  store %struct.atexitmodule_state* %3, %struct.atexitmodule_state** %modstate, align 8, !dbg !873, !tbaa !561
  store i32 0, i32* %i, align 4, !dbg !874, !tbaa !648
  br label %for.cond, !dbg !875

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !876, !tbaa !648
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !879, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 1, !dbg !880
  %6 = load i32, i32* %ncallbacks, align 4, !dbg !880, !tbaa !583
  %cmp = icmp slt i32 %4, %6, !dbg !881
  br i1 %cmp, label %for.body, label %for.end, !dbg !882

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !883
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !883
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %cb, metadata !439, metadata !555), !dbg !884
  %8 = load i32, i32* %i, align 4, !dbg !885, !tbaa !648
  %idxprom = sext i32 %8 to i64, !dbg !886
  %9 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !886, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %9, i32 0, i32 0, !dbg !887
  %10 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !887, !tbaa !603
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %10, i64 %idxprom, !dbg !886
  %11 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !886, !tbaa !561
  store %struct.atexit_callback* %11, %struct.atexit_callback** %cb, align 8, !dbg !884, !tbaa !561
  %12 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !888, !tbaa !561
  %cmp1 = icmp eq %struct.atexit_callback* %12, null, !dbg !890
  br i1 %cmp1, label %if.then, label %if.end, !dbg !891

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.39, !dbg !892

if.end:                                           ; preds = %for.body
  br label %do.body, !dbg !893

do.body:                                          ; preds = %if.end
  %13 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !894, !tbaa !561
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %13, i32 0, i32 0, !dbg !896
  %14 = load %struct._object*, %struct._object** %func, align 8, !dbg !896, !tbaa !666
  %tobool = icmp ne %struct._object* %14, null, !dbg !897
  br i1 %tobool, label %if.then.2, label %if.end.8, !dbg !898

if.then.2:                                        ; preds = %do.body
  %15 = bitcast i32* %vret to i8*, !dbg !899
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !899
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !443, metadata !555), !dbg !901
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !902, !tbaa !561
  %17 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !903, !tbaa !561
  %func3 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %17, i32 0, i32 0, !dbg !904
  %18 = load %struct._object*, %struct._object** %func3, align 8, !dbg !904, !tbaa !666
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !905, !tbaa !561
  %call4 = call i32 %16(%struct._object* %18, i8* %19), !dbg !902
  store i32 %call4, i32* %vret, align 4, !dbg !901, !tbaa !648
  %20 = load i32, i32* %vret, align 4, !dbg !906, !tbaa !648
  %tobool5 = icmp ne i32 %20, 0, !dbg !906
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !908

if.then.6:                                        ; preds = %if.then.2
  %21 = load i32, i32* %vret, align 4, !dbg !909, !tbaa !648
  store i32 %21, i32* %retval, !dbg !911
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !911

if.end.7:                                         ; preds = %if.then.2
  store i32 0, i32* %cleanup.dest.slot, !dbg !912
  br label %cleanup, !dbg !912

cleanup:                                          ; preds = %if.end.7, %if.then.6
  %22 = bitcast i32* %vret to i8*, !dbg !914
  call void @llvm.lifetime.end(i64 4, i8* %22) #1, !dbg !914
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.8, !dbg !917

if.end.8:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !918

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !921

do.end:                                           ; preds = %do.cond
  br label %do.body.9, !dbg !923

do.body.9:                                        ; preds = %do.end
  %23 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !924, !tbaa !561
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %23, i32 0, i32 1, !dbg !926
  %24 = load %struct._object*, %struct._object** %args, align 8, !dbg !926, !tbaa !670
  %tobool10 = icmp ne %struct._object* %24, null, !dbg !927
  br i1 %tobool10, label %if.then.11, label %if.end.21, !dbg !928

if.then.11:                                       ; preds = %do.body.9
  %25 = bitcast i32* %vret12 to i8*, !dbg !929
  call void @llvm.lifetime.start(i64 4, i8* %25) #1, !dbg !929
  call void @llvm.dbg.declare(metadata i32* %vret12, metadata !447, metadata !555), !dbg !931
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !932, !tbaa !561
  %27 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !933, !tbaa !561
  %args13 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %27, i32 0, i32 1, !dbg !934
  %28 = load %struct._object*, %struct._object** %args13, align 8, !dbg !934, !tbaa !670
  %29 = load i8*, i8** %arg.addr, align 8, !dbg !935, !tbaa !561
  %call14 = call i32 %26(%struct._object* %28, i8* %29), !dbg !932
  store i32 %call14, i32* %vret12, align 4, !dbg !931, !tbaa !648
  %30 = load i32, i32* %vret12, align 4, !dbg !936, !tbaa !648
  %tobool15 = icmp ne i32 %30, 0, !dbg !936
  br i1 %tobool15, label %if.then.16, label %if.end.17, !dbg !938

if.then.16:                                       ; preds = %if.then.11
  %31 = load i32, i32* %vret12, align 4, !dbg !939, !tbaa !648
  store i32 %31, i32* %retval, !dbg !941
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !941

if.end.17:                                        ; preds = %if.then.11
  store i32 0, i32* %cleanup.dest.slot, !dbg !942
  br label %cleanup.18, !dbg !942

cleanup.18:                                       ; preds = %if.end.17, %if.then.16
  %32 = bitcast i32* %vret12 to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 4, i8* %32) #1, !dbg !944
  %cleanup.dest.19 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.18
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.19, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.20, label %NewDefault.1

cleanup.cont.20:                                  ; preds = %LeafBlock.2
  br label %if.end.21, !dbg !947

if.end.21:                                        ; preds = %cleanup.cont.20, %do.body.9
  br label %do.cond.22, !dbg !948

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !951

do.end.23:                                        ; preds = %do.cond.22
  br label %do.body.24, !dbg !953

do.body.24:                                       ; preds = %do.end.23
  %33 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !954, !tbaa !561
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %33, i32 0, i32 2, !dbg !956
  %34 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !956, !tbaa !673
  %tobool25 = icmp ne %struct._object* %34, null, !dbg !957
  br i1 %tobool25, label %if.then.26, label %if.end.36, !dbg !958

if.then.26:                                       ; preds = %do.body.24
  %35 = bitcast i32* %vret27 to i8*, !dbg !959
  call void @llvm.lifetime.start(i64 4, i8* %35) #1, !dbg !959
  call void @llvm.dbg.declare(metadata i32* %vret27, metadata !451, metadata !555), !dbg !961
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !962, !tbaa !561
  %37 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !963, !tbaa !561
  %kwargs28 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %37, i32 0, i32 2, !dbg !964
  %38 = load %struct._object*, %struct._object** %kwargs28, align 8, !dbg !964, !tbaa !673
  %39 = load i8*, i8** %arg.addr, align 8, !dbg !965, !tbaa !561
  %call29 = call i32 %36(%struct._object* %38, i8* %39), !dbg !962
  store i32 %call29, i32* %vret27, align 4, !dbg !961, !tbaa !648
  %40 = load i32, i32* %vret27, align 4, !dbg !966, !tbaa !648
  %tobool30 = icmp ne i32 %40, 0, !dbg !966
  br i1 %tobool30, label %if.then.31, label %if.end.32, !dbg !968

if.then.31:                                       ; preds = %if.then.26
  %41 = load i32, i32* %vret27, align 4, !dbg !969, !tbaa !648
  store i32 %41, i32* %retval, !dbg !971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33, !dbg !971

if.end.32:                                        ; preds = %if.then.26
  store i32 0, i32* %cleanup.dest.slot, !dbg !972
  br label %cleanup.33, !dbg !972

cleanup.33:                                       ; preds = %if.end.32, %if.then.31
  %42 = bitcast i32* %vret27 to i8*, !dbg !974
  call void @llvm.lifetime.end(i64 4, i8* %42) #1, !dbg !974
  %cleanup.dest.34 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.33
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.34, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.35, label %NewDefault.4

cleanup.cont.35:                                  ; preds = %LeafBlock.5
  br label %if.end.36, !dbg !977

if.end.36:                                        ; preds = %cleanup.cont.35, %do.body.24
  br label %do.cond.37, !dbg !978

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !981

do.end.38:                                        ; preds = %do.cond.37
  store i32 0, i32* %cleanup.dest.slot, !dbg !983
  br label %cleanup.39, !dbg !983

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.39

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.39

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.39

cleanup.39:                                       ; preds = %NewDefault.4, %NewDefault.1, %NewDefault, %do.end.38, %if.then
  %43 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !984
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !984
  %cleanup.dest.40 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.39
  %Pivot = icmp slt i32 %cleanup.dest.40, 4
  br i1 %Pivot, label %LeafBlock.8, label %LeafBlock.10

LeafBlock.10:                                     ; preds = %NodeBlock
  %SwitchLeaf11 = icmp eq i32 %cleanup.dest.40, 4
  br i1 %SwitchLeaf11, label %for.inc, label %NewDefault.7

LeafBlock.8:                                      ; preds = %NodeBlock
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest.40, 0
  br i1 %SwitchLeaf9, label %cleanup.cont.41, label %NewDefault.7

cleanup.cont.41:                                  ; preds = %LeafBlock.8
  br label %for.inc, !dbg !985

for.inc:                                          ; preds = %LeafBlock.10, %cleanup.cont.41
  %44 = load i32, i32* %i, align 4, !dbg !986, !tbaa !648
  %inc = add i32 %44, 1, !dbg !986
  store i32 %inc, i32* %i, align 4, !dbg !986, !tbaa !648
  br label %for.cond, !dbg !987

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !988
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !988

NewDefault.7:                                     ; preds = %LeafBlock.10, %LeafBlock.8
  br label %cleanup.42

cleanup.42:                                       ; preds = %NewDefault.7, %for.end
  %45 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !989
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !989
  %46 = bitcast i32* %i to i8*, !dbg !989
  call void @llvm.lifetime.end(i64 4, i8* %46) #1, !dbg !989
  %47 = load i32, i32* %retval, !dbg !989
  ret i32 %47, !dbg !989
}

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_clear(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !457, metadata !555), !dbg !990
  %0 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !991
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !991
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !458, metadata !555), !dbg !992
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !993, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !994
  %2 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !995
  store %struct.atexitmodule_state* %2, %struct.atexitmodule_state** %modstate, align 8, !dbg !996, !tbaa !561
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !997, !tbaa !561
  call void @atexit_cleanup(%struct.atexitmodule_state* %3), !dbg !998
  %4 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !999
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !999
  ret i32 0, !dbg !1000
}

; Function Attrs: nounwind uwtable
define internal void @atexit_free(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !461, metadata !555), !dbg !1001
  %0 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1002
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !462, metadata !555), !dbg !1003
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !1004, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1005
  %2 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !1006
  store %struct.atexitmodule_state* %2, %struct.atexitmodule_state** %modstate, align 8, !dbg !1007, !tbaa !561
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1008, !tbaa !561
  call void @atexit_cleanup(%struct.atexitmodule_state* %3), !dbg !1009
  %4 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1010, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %4, i32 0, i32 0, !dbg !1011
  %5 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !1011, !tbaa !603
  %6 = bitcast %struct.atexit_callback** %5 to i8*, !dbg !1010
  call void @PyMem_Free(i8* %6), !dbg !1012
  %7 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1013
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_register(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %new_callback = alloca %struct.atexit_callback*, align 8
  %func = alloca %struct._object*, align 8
  %r = alloca %struct.atexit_callback**, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !377, metadata !555), !dbg !1014
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !378, metadata !555), !dbg !1015
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !379, metadata !555), !dbg !1016
  %0 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1017
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1017
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !380, metadata !555), !dbg !1018
  %1 = bitcast %struct.atexit_callback** %new_callback to i8*, !dbg !1019
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1019
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %new_callback, metadata !381, metadata !555), !dbg !1020
  %2 = bitcast %struct._object** %func to i8*, !dbg !1021
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1021
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !382, metadata !555), !dbg !1022
  store %struct._object* null, %struct._object** %func, align 8, !dbg !1022, !tbaa !561
  %3 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1023, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %3), !dbg !1024
  %4 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !1025
  store %struct.atexitmodule_state* %4, %struct.atexitmodule_state** %modstate, align 8, !dbg !1026, !tbaa !561
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1027, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 1, !dbg !1028
  %6 = load i32, i32* %ncallbacks, align 4, !dbg !1028, !tbaa !583
  %7 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1029, !tbaa !561
  %callback_len = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %7, i32 0, i32 2, !dbg !1030
  %8 = load i32, i32* %callback_len, align 4, !dbg !1030, !tbaa !577
  %cmp = icmp sge i32 %6, %8, !dbg !1031
  br i1 %cmp, label %if.then, label %if.end.9, !dbg !1032

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.atexit_callback*** %r to i8*, !dbg !1033
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1033
  call void @llvm.dbg.declare(metadata %struct.atexit_callback*** %r, metadata !383, metadata !555), !dbg !1034
  %10 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1035, !tbaa !561
  %callback_len1 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %10, i32 0, i32 2, !dbg !1036
  %11 = load i32, i32* %callback_len1, align 4, !dbg !1037, !tbaa !577
  %add = add i32 %11, 16, !dbg !1037
  store i32 %add, i32* %callback_len1, align 4, !dbg !1037, !tbaa !577
  %12 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1038, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %12, i32 0, i32 0, !dbg !1039
  %13 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !1039, !tbaa !603
  %14 = bitcast %struct.atexit_callback** %13 to i8*, !dbg !1038
  %15 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1040, !tbaa !561
  %callback_len2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %15, i32 0, i32 2, !dbg !1041
  %16 = load i32, i32* %callback_len2, align 4, !dbg !1041, !tbaa !577
  %conv = sext i32 %16 to i64, !dbg !1040
  %mul = mul i64 8, %conv, !dbg !1042
  %call3 = call i8* @PyMem_Realloc(i8* %14, i64 %mul), !dbg !1043
  %17 = bitcast i8* %call3 to %struct.atexit_callback**, !dbg !1044
  store %struct.atexit_callback** %17, %struct.atexit_callback*** %r, align 8, !dbg !1045, !tbaa !561
  %18 = load %struct.atexit_callback**, %struct.atexit_callback*** %r, align 8, !dbg !1046, !tbaa !561
  %cmp4 = icmp eq %struct.atexit_callback** %18, null, !dbg !1048
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !1049

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct._object* @PyErr_NoMemory(), !dbg !1050
  store %struct._object* %call7, %struct._object** %retval, !dbg !1051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1051

if.end:                                           ; preds = %if.then
  %19 = load %struct.atexit_callback**, %struct.atexit_callback*** %r, align 8, !dbg !1052, !tbaa !561
  %20 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1053, !tbaa !561
  %atexit_callbacks8 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %20, i32 0, i32 0, !dbg !1054
  store %struct.atexit_callback** %19, %struct.atexit_callback*** %atexit_callbacks8, align 8, !dbg !1055, !tbaa !603
  store i32 0, i32* %cleanup.dest.slot, !dbg !1056
  br label %cleanup, !dbg !1056

cleanup:                                          ; preds = %if.end, %if.then.6
  %21 = bitcast %struct.atexit_callback*** %r to i8*, !dbg !1057
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1057
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.9, !dbg !1059

if.end.9:                                         ; preds = %cleanup.cont, %entry
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1060, !tbaa !561
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !1062
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !1063
  %24 = load i64, i64* %ob_size, align 8, !dbg !1063, !tbaa !1064
  %cmp10 = icmp eq i64 %24, 0, !dbg !1065
  br i1 %cmp10, label %if.then.12, label %if.end.13, !dbg !1066

if.then.12:                                       ; preds = %if.end.9
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1067, !tbaa !561
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0)), !dbg !1069
  store %struct._object* null, %struct._object** %retval, !dbg !1070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1070

if.end.13:                                        ; preds = %if.end.9
  %26 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1071, !tbaa !561
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*, !dbg !1072
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1, !dbg !1073
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1074
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1074, !tbaa !561
  store %struct._object* %28, %struct._object** %func, align 8, !dbg !1075, !tbaa !561
  %29 = load %struct._object*, %struct._object** %func, align 8, !dbg !1076, !tbaa !561
  %call14 = call i32 @PyCallable_Check(%struct._object* %29), !dbg !1078
  %tobool = icmp ne i32 %call14, 0, !dbg !1078
  br i1 %tobool, label %if.end.16, label %if.then.15, !dbg !1079

if.then.15:                                       ; preds = %if.end.13
  %30 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1080, !tbaa !561
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0)), !dbg !1082
  store %struct._object* null, %struct._object** %retval, !dbg !1083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1083

if.end.16:                                        ; preds = %if.end.13
  %call17 = call i8* @PyMem_Malloc(i64 24), !dbg !1084
  %31 = bitcast i8* %call17 to %struct.atexit_callback*, !dbg !1084
  store %struct.atexit_callback* %31, %struct.atexit_callback** %new_callback, align 8, !dbg !1085, !tbaa !561
  %32 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1086, !tbaa !561
  %cmp18 = icmp eq %struct.atexit_callback* %32, null, !dbg !1088
  br i1 %cmp18, label %if.then.20, label %if.end.22, !dbg !1089

if.then.20:                                       ; preds = %if.end.16
  %call21 = call %struct._object* @PyErr_NoMemory(), !dbg !1090
  store %struct._object* %call21, %struct._object** %retval, !dbg !1091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1091

if.end.22:                                        ; preds = %if.end.16
  %33 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1092, !tbaa !561
  %34 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1093, !tbaa !561
  %35 = bitcast %struct._object* %34 to %struct.PyVarObject*, !dbg !1094
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %35, i32 0, i32 1, !dbg !1095
  %36 = load i64, i64* %ob_size23, align 8, !dbg !1095, !tbaa !1064
  %call24 = call %struct._object* @PyTuple_GetSlice(%struct._object* %33, i64 1, i64 %36), !dbg !1096
  %37 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1097, !tbaa !561
  %args25 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %37, i32 0, i32 1, !dbg !1098
  store %struct._object* %call24, %struct._object** %args25, align 8, !dbg !1099, !tbaa !670
  %38 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1100, !tbaa !561
  %args26 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %38, i32 0, i32 1, !dbg !1102
  %39 = load %struct._object*, %struct._object** %args26, align 8, !dbg !1102, !tbaa !670
  %cmp27 = icmp eq %struct._object* %39, null, !dbg !1103
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !1104

if.then.29:                                       ; preds = %if.end.22
  %40 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1105, !tbaa !561
  %41 = bitcast %struct.atexit_callback* %40 to i8*, !dbg !1105
  call void @PyMem_Free(i8* %41), !dbg !1107
  store %struct._object* null, %struct._object** %retval, !dbg !1108
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1108

if.end.30:                                        ; preds = %if.end.22
  %42 = load %struct._object*, %struct._object** %func, align 8, !dbg !1109, !tbaa !561
  %43 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1110, !tbaa !561
  %func31 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %43, i32 0, i32 0, !dbg !1111
  store %struct._object* %42, %struct._object** %func31, align 8, !dbg !1112, !tbaa !666
  %44 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1113, !tbaa !561
  %45 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1114, !tbaa !561
  %kwargs32 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %45, i32 0, i32 2, !dbg !1115
  store %struct._object* %44, %struct._object** %kwargs32, align 8, !dbg !1116, !tbaa !673
  %46 = load %struct._object*, %struct._object** %func, align 8, !dbg !1117, !tbaa !561
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !1118
  %47 = load i64, i64* %ob_refcnt, align 8, !dbg !1119, !tbaa !694
  %inc = add i64 %47, 1, !dbg !1119
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1119, !tbaa !694
  br label %do.body, !dbg !1120

do.body:                                          ; preds = %if.end.30
  %48 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1121
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !1121
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !386, metadata !555), !dbg !1123
  %49 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1124, !tbaa !561
  store %struct._object* %49, %struct._object** %_py_xincref_tmp, align 8, !dbg !1123, !tbaa !561
  %50 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1125, !tbaa !561
  %cmp33 = icmp ne %struct._object* %50, null, !dbg !1127
  br i1 %cmp33, label %if.then.35, label %if.end.38, !dbg !1128

if.then.35:                                       ; preds = %do.body
  %51 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1129, !tbaa !561
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !1131
  %52 = load i64, i64* %ob_refcnt36, align 8, !dbg !1132, !tbaa !694
  %inc37 = add i64 %52, 1, !dbg !1132
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !1132, !tbaa !694
  br label %if.end.38, !dbg !1133

if.end.38:                                        ; preds = %if.then.35, %do.body
  %53 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1134
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1134
  br label %do.cond, !dbg !1137

do.cond:                                          ; preds = %if.end.38
  br label %do.end, !dbg !1138

do.end:                                           ; preds = %do.cond
  %54 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8, !dbg !1140, !tbaa !561
  %55 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1141, !tbaa !561
  %ncallbacks39 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %55, i32 0, i32 1, !dbg !1142
  %56 = load i32, i32* %ncallbacks39, align 4, !dbg !1143, !tbaa !583
  %inc40 = add i32 %56, 1, !dbg !1143
  store i32 %inc40, i32* %ncallbacks39, align 4, !dbg !1143, !tbaa !583
  %idxprom = sext i32 %56 to i64, !dbg !1144
  %57 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1144, !tbaa !561
  %atexit_callbacks41 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %57, i32 0, i32 0, !dbg !1145
  %58 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks41, align 8, !dbg !1145, !tbaa !603
  %arrayidx42 = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %58, i64 %idxprom, !dbg !1144
  store %struct.atexit_callback* %54, %struct.atexit_callback** %arrayidx42, align 8, !dbg !1146, !tbaa !561
  %59 = load %struct._object*, %struct._object** %func, align 8, !dbg !1147, !tbaa !561
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0, !dbg !1148
  %60 = load i64, i64* %ob_refcnt43, align 8, !dbg !1149, !tbaa !694
  %inc44 = add i64 %60, 1, !dbg !1149
  store i64 %inc44, i64* %ob_refcnt43, align 8, !dbg !1149, !tbaa !694
  %61 = load %struct._object*, %struct._object** %func, align 8, !dbg !1150, !tbaa !561
  store %struct._object* %61, %struct._object** %retval, !dbg !1151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45, !dbg !1151

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.45

cleanup.45:                                       ; preds = %NewDefault, %do.end, %if.then.29, %if.then.20, %if.then.15, %if.then.12
  %62 = bitcast %struct._object** %func to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !1152
  %63 = bitcast %struct.atexit_callback** %new_callback to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !1152
  %64 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !1152
  %65 = load %struct._object*, %struct._object** %retval, !dbg !1152
  ret %struct._object* %65, !dbg !1152
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_clear(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !390, metadata !555), !dbg !1153
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !391, metadata !555), !dbg !1154
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1155, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %0), !dbg !1156
  %1 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !1157
  call void @atexit_cleanup(%struct.atexitmodule_state* %1), !dbg !1158
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1159, !tbaa !694
  %inc = add i64 %2, 1, !dbg !1159
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1159, !tbaa !694
  ret %struct._object* @_Py_NoneStruct, !dbg !1160
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_unregister(%struct._object* %self, %struct._object* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %i = alloca i32, align 4
  %eq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !417, metadata !555), !dbg !1161
  store %struct._object* %func, %struct._object** %func.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %func.addr, metadata !418, metadata !555), !dbg !1162
  %0 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1163
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !419, metadata !555), !dbg !1164
  %1 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1165
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1165
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %cb, metadata !420, metadata !555), !dbg !1166
  %2 = bitcast i32* %i to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %i, metadata !421, metadata !555), !dbg !1168
  %3 = bitcast i32* %eq to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !422, metadata !555), !dbg !1169
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1170, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %4), !dbg !1171
  %5 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !1172
  store %struct.atexitmodule_state* %5, %struct.atexitmodule_state** %modstate, align 8, !dbg !1173, !tbaa !561
  store i32 0, i32* %i, align 4, !dbg !1174, !tbaa !648
  br label %for.cond, !dbg !1176

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !1177, !tbaa !648
  %7 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1181, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %7, i32 0, i32 1, !dbg !1182
  %8 = load i32, i32* %ncallbacks, align 4, !dbg !1182, !tbaa !583
  %cmp = icmp slt i32 %6, %8, !dbg !1183
  br i1 %cmp, label %for.body, label %for.end, !dbg !1184

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !1185, !tbaa !648
  %idxprom = sext i32 %9 to i64, !dbg !1187
  %10 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1187, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %10, i32 0, i32 0, !dbg !1188
  %11 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !1188, !tbaa !603
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %11, i64 %idxprom, !dbg !1187
  %12 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !1187, !tbaa !561
  store %struct.atexit_callback* %12, %struct.atexit_callback** %cb, align 8, !dbg !1189, !tbaa !561
  %13 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1190, !tbaa !561
  %cmp1 = icmp eq %struct.atexit_callback* %13, null, !dbg !1192
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1193

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1194

if.end:                                           ; preds = %for.body
  %14 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1195, !tbaa !561
  %func2 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %14, i32 0, i32 0, !dbg !1196
  %15 = load %struct._object*, %struct._object** %func2, align 8, !dbg !1196, !tbaa !666
  %16 = load %struct._object*, %struct._object** %func.addr, align 8, !dbg !1197, !tbaa !561
  %call3 = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %16, i32 2), !dbg !1198
  store i32 %call3, i32* %eq, align 4, !dbg !1199, !tbaa !648
  %17 = load i32, i32* %eq, align 4, !dbg !1200, !tbaa !648
  %cmp4 = icmp slt i32 %17, 0, !dbg !1202
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1203

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1204

if.end.6:                                         ; preds = %if.end
  %18 = load i32, i32* %eq, align 4, !dbg !1205, !tbaa !648
  %tobool = icmp ne i32 %18, 0, !dbg !1205
  br i1 %tobool, label %if.then.7, label %if.end.8, !dbg !1207

if.then.7:                                        ; preds = %if.end.6
  %19 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1208, !tbaa !561
  %20 = load i32, i32* %i, align 4, !dbg !1209, !tbaa !648
  call void @atexit_delete_cb(%struct.atexitmodule_state* %19, i32 %20), !dbg !1210
  br label %if.end.8, !dbg !1210

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  br label %for.inc, !dbg !1211

for.inc:                                          ; preds = %if.end.8, %if.then
  %21 = load i32, i32* %i, align 4, !dbg !1212, !tbaa !648
  %inc = add i32 %21, 1, !dbg !1212
  store i32 %inc, i32* %i, align 4, !dbg !1212, !tbaa !648
  br label %for.cond, !dbg !1213

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1214, !tbaa !694
  %inc9 = add i64 %22, 1, !dbg !1214
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1214, !tbaa !694
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1215

cleanup:                                          ; preds = %for.end, %if.then.5
  %23 = bitcast i32* %eq to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !1216
  %24 = bitcast i32* %i to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 4, i8* %24) #1, !dbg !1216
  %25 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1216
  %26 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1216
  %27 = load %struct._object*, %struct._object** %retval, !dbg !1216
  ret %struct._object* %27, !dbg !1216
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_run_exitfuncs(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !425, metadata !555), !dbg !1217
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !426, metadata !555), !dbg !1218
  call void @atexit_callfuncs(), !dbg !1219
  %call = call %struct._object* @PyErr_Occurred(), !dbg !1220
  %tobool = icmp ne %struct._object* %call, null, !dbg !1220
  br i1 %tobool, label %if.then, label %if.end, !dbg !1222

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1223
  br label %return, !dbg !1223

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1224, !tbaa !694
  %inc = add i64 %0, 1, !dbg !1224
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1224, !tbaa !694
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1225
  br label %return, !dbg !1225

return:                                           ; preds = %if.end, %if.then
  %1 = load %struct._object*, %struct._object** %retval, !dbg !1226
  ret %struct._object* %1, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_ncallbacks(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !429, metadata !555), !dbg !1227
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !430, metadata !555), !dbg !1228
  %0 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1229
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1229
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate, metadata !431, metadata !555), !dbg !1230
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1231, !tbaa !561
  %call = call i8* @PyModule_GetState(%struct._object* %1), !dbg !1232
  %2 = bitcast i8* %call to %struct.atexitmodule_state*, !dbg !1233
  store %struct.atexitmodule_state* %2, %struct.atexitmodule_state** %modstate, align 8, !dbg !1234, !tbaa !561
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8, !dbg !1235, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 1, !dbg !1236
  %4 = load i32, i32* %ncallbacks, align 4, !dbg !1236, !tbaa !583
  %conv = sext i32 %4 to i64, !dbg !1235
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %conv), !dbg !1237
  %5 = bitcast %struct.atexitmodule_state** %modstate to i8*, !dbg !1238
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1238
  ret %struct._object* %call1, !dbg !1239
}

declare i8* @PyMem_Realloc(i8*, i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @atexit_cleanup(%struct.atexitmodule_state* %modstate) #0 {
entry:
  %modstate.addr = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %i = alloca i32, align 4
  store %struct.atexitmodule_state* %modstate, %struct.atexitmodule_state** %modstate.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate.addr, metadata !396, metadata !555), !dbg !1240
  %0 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1241
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1241
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %cb, metadata !397, metadata !555), !dbg !1242
  %1 = bitcast i32* %i to i8*, !dbg !1243
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1243
  call void @llvm.dbg.declare(metadata i32* %i, metadata !398, metadata !555), !dbg !1244
  store i32 0, i32* %i, align 4, !dbg !1245, !tbaa !648
  br label %for.cond, !dbg !1247

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1248, !tbaa !648
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1252, !tbaa !561
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 1, !dbg !1253
  %4 = load i32, i32* %ncallbacks, align 4, !dbg !1253, !tbaa !583
  %cmp = icmp slt i32 %2, %4, !dbg !1254
  br i1 %cmp, label %for.body, label %for.end, !dbg !1255

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !1256, !tbaa !648
  %idxprom = sext i32 %5 to i64, !dbg !1258
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1258, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 0, !dbg !1259
  %7 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !1259, !tbaa !603
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %7, i64 %idxprom, !dbg !1258
  %8 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !1258, !tbaa !561
  store %struct.atexit_callback* %8, %struct.atexit_callback** %cb, align 8, !dbg !1260, !tbaa !561
  %9 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1261, !tbaa !561
  %cmp1 = icmp eq %struct.atexit_callback* %9, null, !dbg !1263
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1264

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1265

if.end:                                           ; preds = %for.body
  %10 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1266, !tbaa !561
  %11 = load i32, i32* %i, align 4, !dbg !1267, !tbaa !648
  call void @atexit_delete_cb(%struct.atexitmodule_state* %10, i32 %11), !dbg !1268
  br label %for.inc, !dbg !1269

for.inc:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* %i, align 4, !dbg !1270, !tbaa !648
  %inc = add i32 %12, 1, !dbg !1270
  store i32 %inc, i32* %i, align 4, !dbg !1270, !tbaa !648
  br label %for.cond, !dbg !1271

for.end:                                          ; preds = %for.cond
  %13 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1272, !tbaa !561
  %ncallbacks2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %13, i32 0, i32 1, !dbg !1273
  store i32 0, i32* %ncallbacks2, align 4, !dbg !1274, !tbaa !583
  %14 = bitcast i32* %i to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1275
  %15 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1275
  ret void, !dbg !1275
}

; Function Attrs: nounwind uwtable
define internal void @atexit_delete_cb(%struct.atexitmodule_state* %modstate, i32 %i) #0 {
entry:
  %modstate.addr = alloca %struct.atexitmodule_state*, align 8
  %i.addr = alloca i32, align 4
  %cb = alloca %struct.atexit_callback*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct.atexitmodule_state* %modstate, %struct.atexitmodule_state** %modstate.addr, align 8, !tbaa !561
  call void @llvm.dbg.declare(metadata %struct.atexitmodule_state** %modstate.addr, metadata !403, metadata !555), !dbg !1276
  store i32 %i, i32* %i.addr, align 4, !tbaa !648
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !404, metadata !555), !dbg !1277
  %0 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct.atexit_callback** %cb, metadata !405, metadata !555), !dbg !1279
  %1 = load i32, i32* %i.addr, align 4, !dbg !1280, !tbaa !648
  %idxprom = sext i32 %1 to i64, !dbg !1281
  %2 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1281, !tbaa !561
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %2, i32 0, i32 0, !dbg !1282
  %3 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !1282, !tbaa !603
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %3, i64 %idxprom, !dbg !1281
  %4 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !1281, !tbaa !561
  store %struct.atexit_callback* %4, %struct.atexit_callback** %cb, align 8, !dbg !1283, !tbaa !561
  %5 = load i32, i32* %i.addr, align 4, !dbg !1284, !tbaa !648
  %idxprom1 = sext i32 %5 to i64, !dbg !1285
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8, !dbg !1285, !tbaa !561
  %atexit_callbacks2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 0, !dbg !1286
  %7 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks2, align 8, !dbg !1286, !tbaa !603
  %arrayidx3 = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %7, i64 %idxprom1, !dbg !1285
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx3, align 8, !dbg !1287, !tbaa !561
  br label %do.body, !dbg !1288

do.body:                                          ; preds = %entry
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1289
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1289
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !406, metadata !555), !dbg !1291
  %9 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1292, !tbaa !561
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %9, i32 0, i32 0, !dbg !1293
  %10 = load %struct._object*, %struct._object** %func, align 8, !dbg !1293, !tbaa !666
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !1291, !tbaa !561
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1294, !tbaa !561
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1296
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1297, !tbaa !694
  %dec = add i64 %12, -1, !dbg !1297
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1297, !tbaa !694
  %cmp = icmp ne i64 %dec, 0, !dbg !1298
  br i1 %cmp, label %if.then, label %if.else, !dbg !1299

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1300

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1302, !tbaa !561
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1304
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1304, !tbaa !704
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !1305
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1305, !tbaa !706
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1306, !tbaa !561
  call void %15(%struct._object* %16), !dbg !1307
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1308
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1308
  br label %do.cond, !dbg !1310

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1311

do.end:                                           ; preds = %do.cond
  br label %do.body.4, !dbg !1313

do.body.4:                                        ; preds = %do.end
  %18 = bitcast %struct._object** %_py_decref_tmp5 to i8*, !dbg !1314
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !1314
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp5, metadata !408, metadata !555), !dbg !1316
  %19 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1317, !tbaa !561
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %19, i32 0, i32 1, !dbg !1318
  %20 = load %struct._object*, %struct._object** %args, align 8, !dbg !1318, !tbaa !670
  store %struct._object* %20, %struct._object** %_py_decref_tmp5, align 8, !dbg !1316, !tbaa !561
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1319, !tbaa !561
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1321
  %22 = load i64, i64* %ob_refcnt6, align 8, !dbg !1322, !tbaa !694
  %dec7 = add i64 %22, -1, !dbg !1322
  store i64 %dec7, i64* %ob_refcnt6, align 8, !dbg !1322, !tbaa !694
  %cmp8 = icmp ne i64 %dec7, 0, !dbg !1323
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !1324

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13, !dbg !1325

if.else.10:                                       ; preds = %do.body.4
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1327, !tbaa !561
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1329
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1329, !tbaa !704
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !1330
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8, !dbg !1330, !tbaa !706
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1331, !tbaa !561
  call void %25(%struct._object* %26), !dbg !1332
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  %27 = bitcast %struct._object** %_py_decref_tmp5 to i8*, !dbg !1333
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1333
  br label %do.cond.14, !dbg !1334

do.cond.14:                                       ; preds = %if.end.13
  br label %do.end.15, !dbg !1335

do.end.15:                                        ; preds = %do.cond.14
  br label %do.body.16, !dbg !1337

do.body.16:                                       ; preds = %do.end.15
  %28 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !410, metadata !555), !dbg !1340
  %29 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1341, !tbaa !561
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %29, i32 0, i32 2, !dbg !1342
  %30 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !1342, !tbaa !673
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1340, !tbaa !561
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1343, !tbaa !561
  %cmp17 = icmp ne %struct._object* %31, null, !dbg !1344
  br i1 %cmp17, label %if.then.18, label %if.end.31, !dbg !1345

if.then.18:                                       ; preds = %do.body.16
  br label %do.body.19, !dbg !1346

do.body.19:                                       ; preds = %if.then.18
  %32 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !1348
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !412, metadata !555), !dbg !1350
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1351, !tbaa !561
  store %struct._object* %33, %struct._object** %_py_decref_tmp20, align 8, !dbg !1350, !tbaa !561
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1352, !tbaa !561
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !1354
  %35 = load i64, i64* %ob_refcnt21, align 8, !dbg !1355, !tbaa !694
  %dec22 = add i64 %35, -1, !dbg !1355
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !1355, !tbaa !694
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !1356
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1357

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !1358

if.else.25:                                       ; preds = %do.body.19
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1360, !tbaa !561
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !1362
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1362, !tbaa !704
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !1363
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !1363, !tbaa !706
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1364, !tbaa !561
  call void %38(%struct._object* %39), !dbg !1365
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %40 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1366
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !1366
  br label %do.cond.29, !dbg !1368

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !1369

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31, !dbg !1371

if.end.31:                                        ; preds = %do.end.30, %do.body.16
  %41 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1373
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !1373
  br label %do.cond.32, !dbg !1376

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !1377

do.end.33:                                        ; preds = %do.cond.32
  %42 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8, !dbg !1379, !tbaa !561
  %43 = bitcast %struct.atexit_callback* %42 to i8*, !dbg !1379
  call void @PyMem_Free(i8* %43), !dbg !1380
  %44 = bitcast %struct.atexit_callback** %cb to i8*, !dbg !1381
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1381
  ret void, !dbg !1381
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PySys_WriteStderr(i8*, ...) #3

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #3

declare void @PyErr_Display(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!551, !552}
!llvm.ident = !{!553}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !368, globals: !499)
!1 = !DIFile(filename: "atexitmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !106, !23, !11, !359, !360, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "atexitmodule_state", file: !7, line: 29, baseType: !8)
!7 = !DIFile(filename: "./Modules/atexitmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 25, size: 128, align: 64, elements: !9)
!9 = !{!10, !357, !358}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "atexit_callbacks", scope: !8, file: !7, line: 26, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "atexit_callback", file: !7, line: 23, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 19, size: 192, align: 64, elements: !15)
!15 = !{!16, !355, !356}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !14, file: !7, line: 20, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !19, line: 109, baseType: !20)
!19 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !19, line: 105, size: 128, align: 64, elements: !21)
!21 = !{!22, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !20, file: !19, line: 107, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !24, line: 177, baseType: !25)
!24 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 181, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !20, file: !19, line: 108, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !19, line: 334, size: 3200, align: 64, elements: !33)
!33 = !{!34, !40, !44, !45, !46, !51, !114, !119, !124, !125, !130, !182, !213, !225, !231, !232, !233, !235, !237, !268, !269, !270, !279, !280, !285, !286, !288, !290, !300, !303, !321, !322, !323, !325, !327, !328, !330, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !354}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !32, file: !19, line: 335, baseType: !35, size: 192, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !19, line: 114, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 111, size: 192, align: 64, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !36, file: !19, line: 112, baseType: !18, size: 128, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !36, file: !19, line: 113, baseType: !23, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !32, file: !19, line: 336, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !32, file: !19, line: 341, baseType: !47, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !19, line: 308, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !17}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !32, file: !19, line: 342, baseType: !52, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !19, line: 314, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !17, !57, !56}
!56 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 246, size: 1728, align: 64, elements: !61)
!60 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!61 = !{!62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !83, !84, !85, !86, !88, !90, !92, !96, !99, !101, !102, !103, !104, !105, !109, !110}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 247, baseType: !56, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 252, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 253, baseType: !64, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 254, baseType: !64, size: 64, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 255, baseType: !64, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 256, baseType: !64, size: 64, align: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 257, baseType: !64, size: 64, align: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 258, baseType: !64, size: 64, align: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 259, baseType: !64, size: 64, align: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 261, baseType: !64, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 262, baseType: !64, size: 64, align: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 263, baseType: !64, size: 64, align: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 265, baseType: !76, size: 64, align: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 161, size: 192, align: 64, elements: !78)
!78 = !{!79, !80, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !77, file: !60, line: 162, baseType: !76, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !77, file: !60, line: 163, baseType: !81, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !77, file: !60, line: 167, baseType: !56, size: 32, align: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 267, baseType: !81, size: 64, align: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 269, baseType: !56, size: 32, align: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 273, baseType: !56, size: 32, align: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 275, baseType: !87, size: 64, align: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !29)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 279, baseType: !89, size: 16, align: 16, offset: 1024)
!89 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 280, baseType: !91, size: 8, align: 8, offset: 1040)
!91 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 281, baseType: !93, size: 8, align: 8, offset: 1048)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !59, file: !60, line: 285, baseType: !97, size: 64, align: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !60, line: 155, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !59, file: !60, line: 294, baseType: !100, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !29)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !59, file: !60, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !59, file: !60, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !59, file: !60, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !59, file: !60, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 307, baseType: !106, size: 64, align: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 62, baseType: !108)
!107 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!108 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 309, baseType: !56, size: 32, align: 32, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 311, baseType: !111, size: 160, align: 8, offset: 1568)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 20)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !32, file: !19, line: 343, baseType: !115, size: 64, align: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !19, line: 316, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!17, !17, !64}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !32, file: !19, line: 344, baseType: !120, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !19, line: 318, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!56, !17, !64, !17}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !32, file: !19, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !32, file: !19, line: 346, baseType: !126, size: 64, align: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !19, line: 320, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!17, !17}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !32, file: !19, line: 350, baseType: !131, size: 64, align: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !19, line: 278, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 236, size: 2176, align: 64, elements: !134)
!134 = !{!135, !140, !141, !142, !143, !144, !149, !151, !152, !153, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !133, file: !19, line: 241, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !19, line: 166, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!17, !17, !17}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !133, file: !19, line: 242, baseType: !136, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !133, file: !19, line: 243, baseType: !136, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !133, file: !19, line: 244, baseType: !136, size: 64, align: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !133, file: !19, line: 245, baseType: !136, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !133, file: !19, line: 246, baseType: !145, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !19, line: 167, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!17, !17, !17, !17}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !133, file: !19, line: 247, baseType: !150, size: 64, align: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !19, line: 165, baseType: !127)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !133, file: !19, line: 248, baseType: !150, size: 64, align: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !133, file: !19, line: 249, baseType: !150, size: 64, align: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !133, file: !19, line: 250, baseType: !154, size: 64, align: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !19, line: 168, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!56, !17}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !133, file: !19, line: 251, baseType: !150, size: 64, align: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !133, file: !19, line: 252, baseType: !136, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !133, file: !19, line: 253, baseType: !136, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !133, file: !19, line: 254, baseType: !136, size: 64, align: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !133, file: !19, line: 255, baseType: !136, size: 64, align: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !133, file: !19, line: 256, baseType: !136, size: 64, align: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !133, file: !19, line: 257, baseType: !150, size: 64, align: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !133, file: !19, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !133, file: !19, line: 259, baseType: !150, size: 64, align: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !133, file: !19, line: 261, baseType: !136, size: 64, align: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !133, file: !19, line: 262, baseType: !136, size: 64, align: 64, offset: 1280)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !133, file: !19, line: 263, baseType: !136, size: 64, align: 64, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !133, file: !19, line: 264, baseType: !136, size: 64, align: 64, offset: 1408)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !133, file: !19, line: 265, baseType: !145, size: 64, align: 64, offset: 1472)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !133, file: !19, line: 266, baseType: !136, size: 64, align: 64, offset: 1536)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !133, file: !19, line: 267, baseType: !136, size: 64, align: 64, offset: 1600)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !133, file: !19, line: 268, baseType: !136, size: 64, align: 64, offset: 1664)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !133, file: !19, line: 269, baseType: !136, size: 64, align: 64, offset: 1728)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !133, file: !19, line: 270, baseType: !136, size: 64, align: 64, offset: 1792)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !133, file: !19, line: 272, baseType: !136, size: 64, align: 64, offset: 1856)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !133, file: !19, line: 273, baseType: !136, size: 64, align: 64, offset: 1920)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !133, file: !19, line: 274, baseType: !136, size: 64, align: 64, offset: 1984)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !133, file: !19, line: 275, baseType: !136, size: 64, align: 64, offset: 2048)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !133, file: !19, line: 277, baseType: !150, size: 64, align: 64, offset: 2112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !32, file: !19, line: 351, baseType: !183, size: 64, align: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !19, line: 292, baseType: !185)
!185 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 280, size: 640, align: 64, elements: !186)
!186 = !{!187, !192, !193, !198, !199, !200, !205, !206, !211, !212}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !185, file: !19, line: 281, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !19, line: 169, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!23, !17}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !185, file: !19, line: 282, baseType: !136, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !185, file: !19, line: 283, baseType: !194, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !19, line: 170, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!17, !17, !23}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !185, file: !19, line: 284, baseType: !194, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !185, file: !19, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !185, file: !19, line: 286, baseType: !201, size: 64, align: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !19, line: 172, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!56, !17, !23, !17}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !185, file: !19, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !185, file: !19, line: 288, baseType: !207, size: 64, align: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !19, line: 231, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!56, !17, !17}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !185, file: !19, line: 290, baseType: !136, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !185, file: !19, line: 291, baseType: !194, size: 64, align: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !32, file: !19, line: 352, baseType: !214, size: 64, align: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !19, line: 298, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 294, size: 192, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !216, file: !19, line: 295, baseType: !188, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !216, file: !19, line: 296, baseType: !136, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !216, file: !19, line: 297, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !19, line: 174, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!56, !17, !17, !17}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !32, file: !19, line: 356, baseType: !226, size: 64, align: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !19, line: 321, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !17}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !24, line: 186, baseType: !23)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !32, file: !19, line: 357, baseType: !145, size: 64, align: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !32, file: !19, line: 358, baseType: !126, size: 64, align: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !32, file: !19, line: 359, baseType: !234, size: 64, align: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !19, line: 317, baseType: !137)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !32, file: !19, line: 360, baseType: !236, size: 64, align: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !19, line: 319, baseType: !222)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !32, file: !19, line: 363, baseType: !238, size: 64, align: 64, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !19, line: 304, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 301, size: 128, align: 64, elements: !241)
!241 = !{!242, !263}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !240, file: !19, line: 302, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !19, line: 193, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!56, !17, !247, !56}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !19, line: 191, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !19, line: 178, size: 640, align: 64, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !249, file: !19, line: 179, baseType: !4, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !249, file: !19, line: 180, baseType: !17, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !249, file: !19, line: 181, baseType: !23, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !249, file: !19, line: 182, baseType: !23, size: 64, align: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !249, file: !19, line: 184, baseType: !56, size: 32, align: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !249, file: !19, line: 185, baseType: !56, size: 32, align: 32, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !249, file: !19, line: 186, baseType: !64, size: 64, align: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !249, file: !19, line: 187, baseType: !259, size: 64, align: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !249, file: !19, line: 188, baseType: !259, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !249, file: !19, line: 189, baseType: !259, size: 64, align: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !249, file: !19, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !240, file: !19, line: 303, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !19, line: 194, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !17, !247}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !32, file: !19, line: 366, baseType: !108, size: 64, align: 64, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !32, file: !19, line: 368, baseType: !41, size: 64, align: 64, offset: 1408)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !32, file: !19, line: 372, baseType: !271, size: 64, align: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !19, line: 233, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!56, !17, !275, !4}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !19, line: 232, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!56, !17, !4}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !32, file: !19, line: 375, baseType: !154, size: 64, align: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !32, file: !19, line: 379, baseType: !281, size: 64, align: 64, offset: 1600)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !19, line: 322, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!17, !17, !17, !56}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !32, file: !19, line: 382, baseType: !23, size: 64, align: 64, offset: 1664)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !32, file: !19, line: 385, baseType: !287, size: 64, align: 64, offset: 1728)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !19, line: 323, baseType: !127)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !32, file: !19, line: 386, baseType: !289, size: 64, align: 64, offset: 1792)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !19, line: 324, baseType: !127)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !32, file: !19, line: 389, baseType: !291, size: 64, align: 64, offset: 1856)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !293, line: 40, size: 256, align: 64, elements: !294)
!293 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!294 = !{!295, !296, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !292, file: !293, line: 41, baseType: !41, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !292, file: !293, line: 42, baseType: !297, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !293, line: 18, baseType: !137)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !292, file: !293, line: 43, baseType: !56, size: 32, align: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !292, file: !293, line: 45, baseType: !41, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !32, file: !19, line: 390, baseType: !301, size: 64, align: 64, offset: 1920)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !19, line: 390, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !32, file: !19, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !314, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 12, baseType: !64, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !305, file: !306, line: 13, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !306, line: 8, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!17, !17, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !305, file: !306, line: 14, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !306, line: 9, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!56, !17, !17, !4}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 15, baseType: !64, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !305, file: !306, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !32, file: !19, line: 392, baseType: !31, size: 64, align: 64, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !32, file: !19, line: 393, baseType: !17, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !32, file: !19, line: 394, baseType: !324, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !19, line: 325, baseType: !146)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !32, file: !19, line: 395, baseType: !326, size: 64, align: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !19, line: 326, baseType: !222)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !32, file: !19, line: 396, baseType: !23, size: 64, align: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !32, file: !19, line: 397, baseType: !329, size: 64, align: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !19, line: 327, baseType: !222)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !32, file: !19, line: 398, baseType: !331, size: 64, align: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !19, line: 329, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!17, !31, !23}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !32, file: !19, line: 399, baseType: !336, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !19, line: 328, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!17, !31, !17, !17}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !32, file: !19, line: 400, baseType: !341, size: 64, align: 64, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !19, line: 307, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !4}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !32, file: !19, line: 401, baseType: !154, size: 64, align: 64, offset: 2624)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !32, file: !19, line: 402, baseType: !17, size: 64, align: 64, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !32, file: !19, line: 403, baseType: !17, size: 64, align: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !32, file: !19, line: 404, baseType: !17, size: 64, align: 64, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !32, file: !19, line: 405, baseType: !17, size: 64, align: 64, offset: 2880)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !32, file: !19, line: 406, baseType: !17, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !32, file: !19, line: 407, baseType: !47, size: 64, align: 64, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !32, file: !19, line: 410, baseType: !353, size: 32, align: 32, offset: 3072)
!353 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !32, file: !19, line: 412, baseType: !47, size: 64, align: 64, offset: 3136)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !14, file: !7, line: 21, baseType: !17, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "kwargs", scope: !14, file: !7, line: 22, baseType: !17, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ncallbacks", scope: !8, file: !7, line: 27, baseType: !56, size: 32, align: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "callback_len", scope: !8, file: !7, line: 28, baseType: !56, size: 32, align: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !362, line: 33, baseType: !363)
!362 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 25, size: 256, align: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !362, line: 26, baseType: !35, size: 192, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !363, file: !362, line: 27, baseType: !367, size: 64, align: 64, offset: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, align: 64, elements: !94)
!368 = !{!369, !375, !388, !392, !399, !415, !423, !427, !432, !455, !459, !463}
!369 = !DISubprogram(name: "PyInit_atexit", scope: !7, file: !7, line: 327, type: !370, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_atexit, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!17}
!372 = !{!373, !374}
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !369, file: !7, line: 329, type: !17)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !369, file: !7, line: 330, type: !5)
!375 = !DISubprogram(name: "atexit_register", scope: !7, file: !7, line: 129, type: !147, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @atexit_register, variables: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !386}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !375, file: !7, line: 129, type: !17)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !375, file: !7, line: 129, type: !17)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !375, file: !7, line: 129, type: !17)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !375, file: !7, line: 131, type: !5)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_callback", scope: !375, file: !7, line: 132, type: !12)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !375, file: !7, line: 133, type: !17)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !384, file: !7, line: 138, type: !11)
!384 = distinct !DILexicalBlock(scope: !385, file: !7, line: 137, column: 57)
!385 = distinct !DILexicalBlock(scope: !375, file: !7, line: 137, column: 9)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !387, file: !7, line: 172, type: !17)
!387 = distinct !DILexicalBlock(scope: !375, file: !7, line: 172, column: 8)
!388 = !DISubprogram(name: "atexit_clear", scope: !7, file: !7, line: 200, type: !138, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_clear, variables: !389)
!389 = !{!390, !391}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !388, file: !7, line: 200, type: !17)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !388, file: !7, line: 200, type: !17)
!392 = !DISubprogram(name: "atexit_cleanup", scope: !7, file: !7, line: 49, type: !393, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.atexitmodule_state*)* @atexit_cleanup, variables: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !5}
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modstate", arg: 1, scope: !392, file: !7, line: 49, type: !5)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !392, file: !7, line: 51, type: !12)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !392, file: !7, line: 52, type: !56)
!399 = !DISubprogram(name: "atexit_delete_cb", scope: !7, file: !7, line: 35, type: !400, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.atexitmodule_state*, i32)* @atexit_delete_cb, variables: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !5, !56}
!402 = !{!403, !404, !405, !406, !408, !410, !412}
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modstate", arg: 1, scope: !399, file: !7, line: 35, type: !5)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !399, file: !7, line: 35, type: !56)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !399, file: !7, line: 37, type: !12)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !407, file: !7, line: 41, type: !17)
!407 = distinct !DILexicalBlock(scope: !399, file: !7, line: 41, column: 8)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !409, file: !7, line: 42, type: !17)
!409 = distinct !DILexicalBlock(scope: !399, file: !7, line: 42, column: 8)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !411, file: !7, line: 43, type: !17)
!411 = distinct !DILexicalBlock(scope: !399, file: !7, line: 43, column: 8)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !413, file: !7, line: 43, type: !17)
!413 = distinct !DILexicalBlock(scope: !414, file: !7, line: 43, column: 102)
!414 = distinct !DILexicalBlock(scope: !411, file: !7, line: 43, column: 68)
!415 = !DISubprogram(name: "atexit_unregister", scope: !7, file: !7, line: 266, type: !138, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_unregister, variables: !416)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !415, file: !7, line: 266, type: !17)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !415, file: !7, line: 266, type: !17)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !415, file: !7, line: 268, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !415, file: !7, line: 269, type: !12)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !415, file: !7, line: 270, type: !56)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !415, file: !7, line: 270, type: !56)
!423 = !DISubprogram(name: "atexit_run_exitfuncs", scope: !7, file: !7, line: 186, type: !138, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_run_exitfuncs, variables: !424)
!424 = !{!425, !426}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !423, file: !7, line: 186, type: !17)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !423, file: !7, line: 186, type: !17)
!427 = !DISubprogram(name: "atexit_ncallbacks", scope: !7, file: !7, line: 212, type: !138, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_ncallbacks, variables: !428)
!428 = !{!429, !430, !431}
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !427, file: !7, line: 212, type: !17)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !427, file: !7, line: 212, type: !17)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !427, file: !7, line: 214, type: !5)
!432 = !DISubprogram(name: "atexit_m_traverse", scope: !7, file: !7, line: 222, type: !273, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @atexit_m_traverse, variables: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !443, !447, !451}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !432, file: !7, line: 222, type: !17)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !432, file: !7, line: 222, type: !275)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !432, file: !7, line: 222, type: !4)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !432, file: !7, line: 224, type: !56)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !432, file: !7, line: 225, type: !5)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !440, file: !7, line: 229, type: !12)
!440 = distinct !DILexicalBlock(scope: !441, file: !7, line: 228, column: 48)
!441 = distinct !DILexicalBlock(scope: !442, file: !7, line: 228, column: 5)
!442 = distinct !DILexicalBlock(scope: !432, file: !7, line: 228, column: 5)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !444, file: !7, line: 232, type: !56)
!444 = distinct !DILexicalBlock(scope: !445, file: !7, line: 232, column: 28)
!445 = distinct !DILexicalBlock(scope: !446, file: !7, line: 232, column: 18)
!446 = distinct !DILexicalBlock(scope: !440, file: !7, line: 232, column: 12)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !448, file: !7, line: 233, type: !56)
!448 = distinct !DILexicalBlock(scope: !449, file: !7, line: 233, column: 28)
!449 = distinct !DILexicalBlock(scope: !450, file: !7, line: 233, column: 18)
!450 = distinct !DILexicalBlock(scope: !440, file: !7, line: 233, column: 12)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !452, file: !7, line: 234, type: !56)
!452 = distinct !DILexicalBlock(scope: !453, file: !7, line: 234, column: 30)
!453 = distinct !DILexicalBlock(scope: !454, file: !7, line: 234, column: 18)
!454 = distinct !DILexicalBlock(scope: !440, file: !7, line: 234, column: 12)
!455 = !DISubprogram(name: "atexit_m_clear", scope: !7, file: !7, line: 240, type: !156, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @atexit_m_clear, variables: !456)
!456 = !{!457, !458}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !455, file: !7, line: 240, type: !17)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !455, file: !7, line: 242, type: !5)
!459 = !DISubprogram(name: "atexit_free", scope: !7, file: !7, line: 249, type: !49, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @atexit_free, variables: !460)
!460 = !{!461, !462}
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !459, file: !7, line: 249, type: !17)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !459, file: !7, line: 251, type: !5)
!463 = !DISubprogram(name: "atexit_callfuncs", scope: !7, file: !7, line: 66, type: !464, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @atexit_callfuncs, variables: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null}
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !480, !483, !489, !491, !494, !496}
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_type", scope: !463, file: !7, line: 68, type: !17)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !463, file: !7, line: 68, type: !17)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_tb", scope: !463, file: !7, line: 68, type: !17)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !463, file: !7, line: 68, type: !17)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !463, file: !7, line: 69, type: !12)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !463, file: !7, line: 70, type: !17)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !463, file: !7, line: 71, type: !5)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !463, file: !7, line: 72, type: !56)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !476, file: !7, line: 90, type: !17)
!476 = distinct !DILexicalBlock(scope: !477, file: !7, line: 90, column: 12)
!477 = distinct !DILexicalBlock(scope: !478, file: !7, line: 84, column: 5)
!478 = distinct !DILexicalBlock(scope: !479, file: !7, line: 83, column: 5)
!479 = distinct !DILexicalBlock(scope: !463, file: !7, line: 83, column: 5)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !481, file: !7, line: 90, type: !17)
!481 = distinct !DILexicalBlock(scope: !482, file: !7, line: 90, column: 97)
!482 = distinct !DILexicalBlock(scope: !476, file: !7, line: 90, column: 63)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !484, file: !7, line: 95, type: !17)
!484 = distinct !DILexicalBlock(scope: !485, file: !7, line: 95, column: 20)
!485 = distinct !DILexicalBlock(scope: !486, file: !7, line: 94, column: 27)
!486 = distinct !DILexicalBlock(scope: !487, file: !7, line: 94, column: 17)
!487 = distinct !DILexicalBlock(scope: !488, file: !7, line: 91, column: 30)
!488 = distinct !DILexicalBlock(scope: !477, file: !7, line: 91, column: 13)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !490, file: !7, line: 96, type: !17)
!490 = distinct !DILexicalBlock(scope: !485, file: !7, line: 96, column: 20)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !492, file: !7, line: 96, type: !17)
!492 = distinct !DILexicalBlock(scope: !493, file: !7, line: 96, column: 113)
!493 = distinct !DILexicalBlock(scope: !490, file: !7, line: 96, column: 79)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !495, file: !7, line: 97, type: !17)
!495 = distinct !DILexicalBlock(scope: !485, file: !7, line: 97, column: 20)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !497, file: !7, line: 97, type: !17)
!497 = distinct !DILexicalBlock(scope: !498, file: !7, line: 97, column: 110)
!498 = distinct !DILexicalBlock(scope: !495, file: !7, line: 97, column: 76)
!499 = !{!500, !523, !527, !531, !535, !539, !543, !547}
!500 = !DIGlobalVariable(name: "atexitmodule", scope: !0, file: !7, line: 314, type: !501, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @atexitmodule)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !502, line: 47, size: 832, align: 64, elements: !503)
!502 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!503 = !{!504, !513, !514, !515, !516, !519, !520, !521, !522}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !501, file: !502, line: 48, baseType: !505, size: 320, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !502, line: 38, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !502, line: 33, size: 320, align: 64, elements: !507)
!507 = !{!508, !509, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !506, file: !502, line: 34, baseType: !18, size: 128, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !506, file: !502, line: 35, baseType: !510, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !506, file: !502, line: 36, baseType: !23, size: 64, align: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !506, file: !502, line: 37, baseType: !17, size: 64, align: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !501, file: !502, line: 49, baseType: !41, size: 64, align: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !501, file: !502, line: 50, baseType: !41, size: 64, align: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !501, file: !502, line: 51, baseType: !23, size: 64, align: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !501, file: !502, line: 52, baseType: !517, size: 64, align: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !293, line: 47, baseType: !292)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !501, file: !502, line: 53, baseType: !154, size: 64, align: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !501, file: !502, line: 54, baseType: !271, size: 64, align: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !501, file: !502, line: 55, baseType: !154, size: 64, align: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !501, file: !502, line: 56, baseType: !341, size: 64, align: 64, offset: 768)
!523 = !DIGlobalVariable(name: "atexit__doc__", scope: !0, file: !7, line: 306, type: !524, isLocal: true, isDefinition: true, variable: [160 x i8]* @atexit__doc__)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1280, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 160)
!527 = !DIGlobalVariable(name: "atexit_methods", scope: !0, file: !7, line: 289, type: !528, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @atexit_methods)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 1536, align: 64, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 6)
!531 = !DIGlobalVariable(name: "atexit_register__doc__", scope: !0, file: !7, line: 117, type: !532, isLocal: true, isDefinition: true, variable: [310 x i8]* @atexit_register__doc__)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2480, align: 8, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 310)
!535 = !DIGlobalVariable(name: "atexit_clear__doc__", scope: !0, file: !7, line: 194, type: !536, isLocal: true, isDefinition: true, variable: [74 x i8]* @atexit_clear__doc__)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 592, align: 8, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 74)
!539 = !DIGlobalVariable(name: "atexit_unregister__doc__", scope: !0, file: !7, line: 257, type: !540, isLocal: true, isDefinition: true, variable: [147 x i8]* @atexit_unregister__doc__)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1176, align: 8, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 147)
!543 = !DIGlobalVariable(name: "atexit_run_exitfuncs__doc__", scope: !0, file: !7, line: 180, type: !544, isLocal: true, isDefinition: true, variable: [61 x i8]* @atexit_run_exitfuncs__doc__)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 488, align: 8, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 61)
!547 = !DIGlobalVariable(name: "atexit_ncallbacks__doc__", scope: !0, file: !7, line: 206, type: !548, isLocal: true, isDefinition: true, variable: [70 x i8]* @atexit_ncallbacks__doc__)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 560, align: 8, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 70)
!551 = !{i32 2, !"Dwarf Version", i32 4}
!552 = !{i32 2, !"Debug Info Version", i32 3}
!553 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!554 = !DILocation(line: 329, column: 5, scope: !369)
!555 = !DIExpression()
!556 = !DILocation(line: 329, column: 15, scope: !369)
!557 = !DILocation(line: 330, column: 5, scope: !369)
!558 = !DILocation(line: 330, column: 25, scope: !369)
!559 = !DILocation(line: 332, column: 9, scope: !369)
!560 = !DILocation(line: 332, column: 7, scope: !369)
!561 = !{!562, !562, i64 0}
!562 = !{!"any pointer", !563, i64 0}
!563 = !{!"omnipotent char", !564, i64 0}
!564 = !{!"Simple C/C++ TBAA"}
!565 = !DILocation(line: 333, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !369, file: !7, line: 333, column: 9)
!567 = !DILocation(line: 333, column: 11, scope: !566)
!568 = !DILocation(line: 333, column: 9, scope: !369)
!569 = !DILocation(line: 334, column: 9, scope: !566)
!570 = !DILocation(line: 336, column: 56, scope: !369)
!571 = !DILocation(line: 336, column: 38, scope: !369)
!572 = !DILocation(line: 336, column: 17, scope: !369)
!573 = !DILocation(line: 336, column: 14, scope: !369)
!574 = !DILocation(line: 337, column: 5, scope: !369)
!575 = !DILocation(line: 337, column: 15, scope: !369)
!576 = !DILocation(line: 337, column: 28, scope: !369)
!577 = !{!578, !579, i64 12}
!578 = !{!"", !562, i64 0, !579, i64 8, !579, i64 12}
!579 = !{!"int", !563, i64 0}
!580 = !DILocation(line: 338, column: 5, scope: !369)
!581 = !DILocation(line: 338, column: 15, scope: !369)
!582 = !DILocation(line: 338, column: 26, scope: !369)
!583 = !{!578, !579, i64 8}
!584 = !DILocation(line: 339, column: 46, scope: !369)
!585 = !DILocation(line: 339, column: 56, scope: !369)
!586 = !DILocation(line: 339, column: 37, scope: !369)
!587 = !DILocation(line: 339, column: 70, scope: !369)
!588 = !DILocation(line: 339, column: 36, scope: !369)
!589 = !DILocation(line: 339, column: 36, scope: !590)
!590 = !DILexicalBlockFile(scope: !369, file: !7, discriminator: 1)
!591 = !DILocation(line: 339, column: 184, scope: !592)
!592 = !DILexicalBlockFile(scope: !369, file: !7, discriminator: 2)
!593 = !DILocation(line: 339, column: 194, scope: !369)
!594 = !DILocation(line: 339, column: 183, scope: !369)
!595 = !DILocation(line: 339, column: 208, scope: !369)
!596 = !DILocation(line: 339, column: 170, scope: !369)
!597 = !DILocation(line: 339, column: 149, scope: !369)
!598 = !DILocation(line: 339, column: 5, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !7, discriminator: 4)
!600 = !DILexicalBlockFile(scope: !369, file: !7, discriminator: 3)
!601 = !DILocation(line: 339, column: 15, scope: !369)
!602 = !DILocation(line: 339, column: 32, scope: !369)
!603 = !{!578, !562, i64 0}
!604 = !DILocation(line: 341, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !369, file: !7, line: 341, column: 9)
!606 = !DILocation(line: 341, column: 19, scope: !605)
!607 = !DILocation(line: 341, column: 36, scope: !605)
!608 = !DILocation(line: 341, column: 9, scope: !369)
!609 = !DILocation(line: 342, column: 9, scope: !605)
!610 = !DILocation(line: 344, column: 5, scope: !369)
!611 = !DILocation(line: 345, column: 12, scope: !369)
!612 = !DILocation(line: 345, column: 5, scope: !369)
!613 = !DILocation(line: 346, column: 1, scope: !369)
!614 = !DILocation(line: 68, column: 5, scope: !463)
!615 = !DILocation(line: 68, column: 15, scope: !463)
!616 = !DILocation(line: 68, column: 39, scope: !463)
!617 = !DILocation(line: 68, column: 51, scope: !463)
!618 = !DILocation(line: 68, column: 60, scope: !463)
!619 = !DILocation(line: 69, column: 5, scope: !463)
!620 = !DILocation(line: 69, column: 22, scope: !463)
!621 = !DILocation(line: 70, column: 5, scope: !463)
!622 = !DILocation(line: 70, column: 15, scope: !463)
!623 = !DILocation(line: 71, column: 5, scope: !463)
!624 = !DILocation(line: 71, column: 25, scope: !463)
!625 = !DILocation(line: 72, column: 5, scope: !463)
!626 = !DILocation(line: 72, column: 9, scope: !463)
!627 = !DILocation(line: 74, column: 14, scope: !463)
!628 = !DILocation(line: 74, column: 12, scope: !463)
!629 = !DILocation(line: 75, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !463, file: !7, line: 75, column: 9)
!631 = !DILocation(line: 75, column: 16, scope: !630)
!632 = !DILocation(line: 75, column: 9, scope: !463)
!633 = !DILocation(line: 76, column: 9, scope: !630)
!634 = !DILocation(line: 77, column: 56, scope: !463)
!635 = !DILocation(line: 77, column: 38, scope: !463)
!636 = !DILocation(line: 77, column: 17, scope: !463)
!637 = !DILocation(line: 77, column: 14, scope: !463)
!638 = !DILocation(line: 79, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !463, file: !7, line: 79, column: 9)
!640 = !DILocation(line: 79, column: 19, scope: !639)
!641 = !DILocation(line: 79, column: 30, scope: !639)
!642 = !DILocation(line: 79, column: 9, scope: !463)
!643 = !DILocation(line: 80, column: 9, scope: !639)
!644 = !DILocation(line: 83, column: 14, scope: !479)
!645 = !DILocation(line: 83, column: 24, scope: !479)
!646 = !DILocation(line: 83, column: 35, scope: !479)
!647 = !DILocation(line: 83, column: 12, scope: !479)
!648 = !{!579, !579, i64 0}
!649 = !DILocation(line: 83, column: 10, scope: !479)
!650 = !DILocation(line: 83, column: 40, scope: !651)
!651 = !DILexicalBlockFile(scope: !652, file: !7, discriminator: 2)
!652 = !DILexicalBlockFile(scope: !478, file: !7, discriminator: 1)
!653 = !DILocation(line: 83, column: 42, scope: !478)
!654 = !DILocation(line: 83, column: 5, scope: !479)
!655 = !DILocation(line: 85, column: 41, scope: !477)
!656 = !DILocation(line: 85, column: 14, scope: !477)
!657 = !DILocation(line: 85, column: 24, scope: !477)
!658 = !DILocation(line: 85, column: 12, scope: !477)
!659 = !DILocation(line: 86, column: 13, scope: !660)
!660 = distinct !DILexicalBlock(scope: !477, file: !7, line: 86, column: 13)
!661 = !DILocation(line: 86, column: 16, scope: !660)
!662 = !DILocation(line: 86, column: 13, scope: !477)
!663 = !DILocation(line: 87, column: 13, scope: !660)
!664 = !DILocation(line: 89, column: 27, scope: !477)
!665 = !DILocation(line: 89, column: 31, scope: !477)
!666 = !{!667, !562, i64 0}
!667 = !{!"", !562, i64 0, !562, i64 8, !562, i64 16}
!668 = !DILocation(line: 89, column: 37, scope: !477)
!669 = !DILocation(line: 89, column: 41, scope: !477)
!670 = !{!667, !562, i64 8}
!671 = !DILocation(line: 89, column: 47, scope: !477)
!672 = !DILocation(line: 89, column: 51, scope: !477)
!673 = !{!667, !562, i64 16}
!674 = !DILocation(line: 89, column: 13, scope: !477)
!675 = !DILocation(line: 89, column: 11, scope: !477)
!676 = !DILocation(line: 90, column: 9, scope: !477)
!677 = !DILocation(line: 90, column: 14, scope: !678)
!678 = !DILexicalBlockFile(scope: !476, file: !7, discriminator: 1)
!679 = !DILocation(line: 90, column: 24, scope: !476)
!680 = !DILocation(line: 90, column: 55, scope: !476)
!681 = !DILocation(line: 90, column: 63, scope: !482)
!682 = !DILocation(line: 90, column: 79, scope: !482)
!683 = !DILocation(line: 90, column: 63, scope: !476)
!684 = !DILocation(line: 90, column: 94, scope: !685)
!685 = !DILexicalBlockFile(scope: !482, file: !7, discriminator: 2)
!686 = !DILocation(line: 90, column: 99, scope: !687)
!687 = !DILexicalBlockFile(scope: !481, file: !7, discriminator: 4)
!688 = !DILocation(line: 90, column: 109, scope: !481)
!689 = !DILocation(line: 90, column: 139, scope: !481)
!690 = !DILocation(line: 90, column: 165, scope: !691)
!691 = distinct !DILexicalBlock(scope: !481, file: !7, line: 90, column: 162)
!692 = !DILocation(line: 90, column: 182, scope: !691)
!693 = !DILocation(line: 90, column: 162, scope: !691)
!694 = !{!695, !696, i64 0}
!695 = !{!"_object", !696, i64 0, !562, i64 8}
!696 = !{!"long", !563, i64 0}
!697 = !DILocation(line: 90, column: 192, scope: !691)
!698 = !DILocation(line: 90, column: 162, scope: !481)
!699 = !DILocation(line: 90, column: 162, scope: !700)
!700 = !DILexicalBlockFile(scope: !481, file: !7, discriminator: 5)
!701 = !DILocation(line: 90, column: 223, scope: !702)
!702 = !DILexicalBlockFile(scope: !691, file: !7, discriminator: 6)
!703 = !DILocation(line: 90, column: 241, scope: !691)
!704 = !{!695, !562, i64 8}
!705 = !DILocation(line: 90, column: 251, scope: !691)
!706 = !{!707, !562, i64 48}
!707 = !{!"_typeobject", !708, i64 0, !562, i64 24, !696, i64 32, !696, i64 40, !562, i64 48, !562, i64 56, !562, i64 64, !562, i64 72, !562, i64 80, !562, i64 88, !562, i64 96, !562, i64 104, !562, i64 112, !562, i64 120, !562, i64 128, !562, i64 136, !562, i64 144, !562, i64 152, !562, i64 160, !696, i64 168, !562, i64 176, !562, i64 184, !562, i64 192, !562, i64 200, !696, i64 208, !562, i64 216, !562, i64 224, !562, i64 232, !562, i64 240, !562, i64 248, !562, i64 256, !562, i64 264, !562, i64 272, !562, i64 280, !696, i64 288, !562, i64 296, !562, i64 304, !562, i64 312, !562, i64 320, !562, i64 328, !562, i64 336, !562, i64 344, !562, i64 352, !562, i64 360, !562, i64 368, !562, i64 376, !579, i64 384, !562, i64 392}
!708 = !{!"", !695, i64 0, !696, i64 16}
!709 = !DILocation(line: 90, column: 276, scope: !691)
!710 = !DILocation(line: 90, column: 207, scope: !691)
!711 = !DILocation(line: 90, column: 295, scope: !712)
!712 = !DILexicalBlockFile(scope: !482, file: !7, discriminator: 7)
!713 = !DILocation(line: 90, column: 295, scope: !481)
!714 = !DILocation(line: 90, column: 295, scope: !715)
!715 = !DILexicalBlockFile(scope: !481, file: !7, discriminator: 8)
!716 = !DILocation(line: 90, column: 295, scope: !717)
!717 = !DILexicalBlockFile(scope: !481, file: !7, discriminator: 9)
!718 = !DILocation(line: 90, column: 308, scope: !719)
!719 = !DILexicalBlockFile(scope: !720, file: !7, discriminator: 10)
!720 = !DILexicalBlockFile(scope: !477, file: !7, discriminator: 3)
!721 = !DILocation(line: 90, column: 308, scope: !476)
!722 = !DILocation(line: 90, column: 308, scope: !723)
!723 = !DILexicalBlockFile(scope: !476, file: !7, discriminator: 11)
!724 = !DILocation(line: 91, column: 13, scope: !488)
!725 = !DILocation(line: 91, column: 15, scope: !488)
!726 = !DILocation(line: 91, column: 13, scope: !477)
!727 = !DILocation(line: 94, column: 17, scope: !486)
!728 = !DILocation(line: 94, column: 17, scope: !487)
!729 = !DILocation(line: 95, column: 17, scope: !485)
!730 = !DILocation(line: 95, column: 22, scope: !731)
!731 = !DILexicalBlockFile(scope: !484, file: !7, discriminator: 1)
!732 = !DILocation(line: 95, column: 32, scope: !484)
!733 = !DILocation(line: 95, column: 62, scope: !484)
!734 = !DILocation(line: 95, column: 81, scope: !735)
!735 = distinct !DILexicalBlock(scope: !484, file: !7, line: 95, column: 78)
!736 = !DILocation(line: 95, column: 98, scope: !735)
!737 = !DILocation(line: 95, column: 78, scope: !735)
!738 = !DILocation(line: 95, column: 108, scope: !735)
!739 = !DILocation(line: 95, column: 78, scope: !484)
!740 = !DILocation(line: 95, column: 78, scope: !741)
!741 = !DILexicalBlockFile(scope: !484, file: !7, discriminator: 2)
!742 = !DILocation(line: 95, column: 139, scope: !743)
!743 = !DILexicalBlockFile(scope: !735, file: !7, discriminator: 3)
!744 = !DILocation(line: 95, column: 157, scope: !735)
!745 = !DILocation(line: 95, column: 167, scope: !735)
!746 = !DILocation(line: 95, column: 192, scope: !735)
!747 = !DILocation(line: 95, column: 123, scope: !735)
!748 = !DILocation(line: 95, column: 211, scope: !749)
!749 = !DILexicalBlockFile(scope: !485, file: !7, discriminator: 4)
!750 = !DILocation(line: 95, column: 211, scope: !484)
!751 = !DILocation(line: 95, column: 211, scope: !752)
!752 = !DILexicalBlockFile(scope: !484, file: !7, discriminator: 5)
!753 = !DILocation(line: 96, column: 17, scope: !485)
!754 = !DILocation(line: 96, column: 22, scope: !755)
!755 = !DILexicalBlockFile(scope: !490, file: !7, discriminator: 1)
!756 = !DILocation(line: 96, column: 32, scope: !490)
!757 = !DILocation(line: 96, column: 63, scope: !490)
!758 = !DILocation(line: 96, column: 79, scope: !493)
!759 = !DILocation(line: 96, column: 95, scope: !493)
!760 = !DILocation(line: 96, column: 79, scope: !490)
!761 = !DILocation(line: 96, column: 110, scope: !762)
!762 = !DILexicalBlockFile(scope: !493, file: !7, discriminator: 2)
!763 = !DILocation(line: 96, column: 115, scope: !764)
!764 = !DILexicalBlockFile(scope: !492, file: !7, discriminator: 4)
!765 = !DILocation(line: 96, column: 125, scope: !492)
!766 = !DILocation(line: 96, column: 155, scope: !492)
!767 = !DILocation(line: 96, column: 181, scope: !768)
!768 = distinct !DILexicalBlock(scope: !492, file: !7, line: 96, column: 178)
!769 = !DILocation(line: 96, column: 198, scope: !768)
!770 = !DILocation(line: 96, column: 178, scope: !768)
!771 = !DILocation(line: 96, column: 208, scope: !768)
!772 = !DILocation(line: 96, column: 178, scope: !492)
!773 = !DILocation(line: 96, column: 178, scope: !774)
!774 = !DILexicalBlockFile(scope: !492, file: !7, discriminator: 5)
!775 = !DILocation(line: 96, column: 239, scope: !776)
!776 = !DILexicalBlockFile(scope: !768, file: !7, discriminator: 6)
!777 = !DILocation(line: 96, column: 257, scope: !768)
!778 = !DILocation(line: 96, column: 267, scope: !768)
!779 = !DILocation(line: 96, column: 292, scope: !768)
!780 = !DILocation(line: 96, column: 223, scope: !768)
!781 = !DILocation(line: 96, column: 311, scope: !782)
!782 = !DILexicalBlockFile(scope: !493, file: !7, discriminator: 7)
!783 = !DILocation(line: 96, column: 311, scope: !492)
!784 = !DILocation(line: 96, column: 311, scope: !785)
!785 = !DILexicalBlockFile(scope: !492, file: !7, discriminator: 8)
!786 = !DILocation(line: 96, column: 311, scope: !787)
!787 = !DILexicalBlockFile(scope: !492, file: !7, discriminator: 9)
!788 = !DILocation(line: 96, column: 324, scope: !789)
!789 = !DILexicalBlockFile(scope: !790, file: !7, discriminator: 10)
!790 = !DILexicalBlockFile(scope: !485, file: !7, discriminator: 3)
!791 = !DILocation(line: 96, column: 324, scope: !490)
!792 = !DILocation(line: 96, column: 324, scope: !793)
!793 = !DILexicalBlockFile(scope: !490, file: !7, discriminator: 11)
!794 = !DILocation(line: 97, column: 17, scope: !485)
!795 = !DILocation(line: 97, column: 22, scope: !796)
!796 = !DILexicalBlockFile(scope: !495, file: !7, discriminator: 1)
!797 = !DILocation(line: 97, column: 32, scope: !495)
!798 = !DILocation(line: 97, column: 63, scope: !495)
!799 = !DILocation(line: 97, column: 76, scope: !498)
!800 = !DILocation(line: 97, column: 92, scope: !498)
!801 = !DILocation(line: 97, column: 76, scope: !495)
!802 = !DILocation(line: 97, column: 107, scope: !803)
!803 = !DILexicalBlockFile(scope: !498, file: !7, discriminator: 2)
!804 = !DILocation(line: 97, column: 112, scope: !805)
!805 = !DILexicalBlockFile(scope: !497, file: !7, discriminator: 4)
!806 = !DILocation(line: 97, column: 122, scope: !497)
!807 = !DILocation(line: 97, column: 152, scope: !497)
!808 = !DILocation(line: 97, column: 178, scope: !809)
!809 = distinct !DILexicalBlock(scope: !497, file: !7, line: 97, column: 175)
!810 = !DILocation(line: 97, column: 195, scope: !809)
!811 = !DILocation(line: 97, column: 175, scope: !809)
!812 = !DILocation(line: 97, column: 205, scope: !809)
!813 = !DILocation(line: 97, column: 175, scope: !497)
!814 = !DILocation(line: 97, column: 175, scope: !815)
!815 = !DILexicalBlockFile(scope: !497, file: !7, discriminator: 5)
!816 = !DILocation(line: 97, column: 236, scope: !817)
!817 = !DILexicalBlockFile(scope: !809, file: !7, discriminator: 6)
!818 = !DILocation(line: 97, column: 254, scope: !809)
!819 = !DILocation(line: 97, column: 264, scope: !809)
!820 = !DILocation(line: 97, column: 289, scope: !809)
!821 = !DILocation(line: 97, column: 220, scope: !809)
!822 = !DILocation(line: 97, column: 308, scope: !823)
!823 = !DILexicalBlockFile(scope: !498, file: !7, discriminator: 7)
!824 = !DILocation(line: 97, column: 308, scope: !497)
!825 = !DILocation(line: 97, column: 308, scope: !826)
!826 = !DILexicalBlockFile(scope: !497, file: !7, discriminator: 8)
!827 = !DILocation(line: 97, column: 308, scope: !828)
!828 = !DILexicalBlockFile(scope: !497, file: !7, discriminator: 9)
!829 = !DILocation(line: 97, column: 321, scope: !789)
!830 = !DILocation(line: 97, column: 321, scope: !495)
!831 = !DILocation(line: 97, column: 321, scope: !832)
!832 = !DILexicalBlockFile(scope: !495, file: !7, discriminator: 11)
!833 = !DILocation(line: 98, column: 13, scope: !485)
!834 = !DILocation(line: 99, column: 13, scope: !487)
!835 = !DILocation(line: 100, column: 41, scope: !836)
!836 = distinct !DILexicalBlock(scope: !487, file: !7, line: 100, column: 17)
!837 = !DILocation(line: 100, column: 18, scope: !836)
!838 = !DILocation(line: 100, column: 17, scope: !487)
!839 = !DILocation(line: 101, column: 17, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !7, line: 100, column: 60)
!841 = !DILocation(line: 102, column: 17, scope: !840)
!842 = !DILocation(line: 103, column: 31, scope: !840)
!843 = !DILocation(line: 103, column: 41, scope: !840)
!844 = !DILocation(line: 103, column: 52, scope: !840)
!845 = !DILocation(line: 103, column: 17, scope: !840)
!846 = !DILocation(line: 104, column: 13, scope: !840)
!847 = !DILocation(line: 105, column: 9, scope: !487)
!848 = !DILocation(line: 106, column: 5, scope: !477)
!849 = !DILocation(line: 83, column: 49, scope: !478)
!850 = !DILocation(line: 83, column: 5, scope: !478)
!851 = !DILocation(line: 108, column: 20, scope: !463)
!852 = !DILocation(line: 108, column: 5, scope: !463)
!853 = !DILocation(line: 110, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !463, file: !7, line: 110, column: 9)
!855 = !DILocation(line: 110, column: 9, scope: !463)
!856 = !DILocation(line: 111, column: 23, scope: !854)
!857 = !DILocation(line: 111, column: 33, scope: !854)
!858 = !DILocation(line: 111, column: 44, scope: !854)
!859 = !DILocation(line: 111, column: 9, scope: !854)
!860 = !DILocation(line: 112, column: 1, scope: !463)
!861 = !DILocation(line: 112, column: 1, scope: !862)
!862 = !DILexicalBlockFile(scope: !463, file: !7, discriminator: 1)
!863 = !DILocation(line: 222, column: 29, scope: !432)
!864 = !DILocation(line: 222, column: 45, scope: !432)
!865 = !DILocation(line: 222, column: 58, scope: !432)
!866 = !DILocation(line: 224, column: 5, scope: !432)
!867 = !DILocation(line: 224, column: 9, scope: !432)
!868 = !DILocation(line: 225, column: 5, scope: !432)
!869 = !DILocation(line: 225, column: 25, scope: !432)
!870 = !DILocation(line: 227, column: 56, scope: !432)
!871 = !DILocation(line: 227, column: 38, scope: !432)
!872 = !DILocation(line: 227, column: 17, scope: !432)
!873 = !DILocation(line: 227, column: 14, scope: !432)
!874 = !DILocation(line: 228, column: 12, scope: !442)
!875 = !DILocation(line: 228, column: 10, scope: !442)
!876 = !DILocation(line: 228, column: 17, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !7, discriminator: 2)
!878 = !DILexicalBlockFile(scope: !441, file: !7, discriminator: 1)
!879 = !DILocation(line: 228, column: 21, scope: !441)
!880 = !DILocation(line: 228, column: 31, scope: !441)
!881 = !DILocation(line: 228, column: 19, scope: !441)
!882 = !DILocation(line: 228, column: 5, scope: !442)
!883 = !DILocation(line: 229, column: 9, scope: !440)
!884 = !DILocation(line: 229, column: 26, scope: !440)
!885 = !DILocation(line: 229, column: 58, scope: !440)
!886 = !DILocation(line: 229, column: 31, scope: !440)
!887 = !DILocation(line: 229, column: 41, scope: !440)
!888 = !DILocation(line: 230, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !440, file: !7, line: 230, column: 13)
!890 = !DILocation(line: 230, column: 16, scope: !889)
!891 = !DILocation(line: 230, column: 13, scope: !440)
!892 = !DILocation(line: 231, column: 13, scope: !889)
!893 = !DILocation(line: 232, column: 9, scope: !440)
!894 = !DILocation(line: 232, column: 18, scope: !895)
!895 = !DILexicalBlockFile(scope: !445, file: !7, discriminator: 1)
!896 = !DILocation(line: 232, column: 22, scope: !445)
!897 = !DILocation(line: 232, column: 18, scope: !445)
!898 = !DILocation(line: 232, column: 18, scope: !446)
!899 = !DILocation(line: 232, column: 30, scope: !900)
!900 = !DILexicalBlockFile(scope: !444, file: !7, discriminator: 2)
!901 = !DILocation(line: 232, column: 34, scope: !444)
!902 = !DILocation(line: 232, column: 41, scope: !444)
!903 = !DILocation(line: 232, column: 60, scope: !444)
!904 = !DILocation(line: 232, column: 64, scope: !444)
!905 = !DILocation(line: 232, column: 71, scope: !444)
!906 = !DILocation(line: 232, column: 81, scope: !907)
!907 = distinct !DILexicalBlock(scope: !444, file: !7, line: 232, column: 81)
!908 = !DILocation(line: 232, column: 81, scope: !444)
!909 = !DILocation(line: 232, column: 94, scope: !910)
!910 = !DILexicalBlockFile(scope: !907, file: !7, discriminator: 4)
!911 = !DILocation(line: 232, column: 87, scope: !907)
!912 = !DILocation(line: 232, column: 100, scope: !913)
!913 = !DILexicalBlockFile(scope: !445, file: !7, discriminator: 5)
!914 = !DILocation(line: 232, column: 100, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !7, discriminator: 7)
!916 = !DILexicalBlockFile(scope: !445, file: !7, discriminator: 6)
!917 = !DILocation(line: 232, column: 100, scope: !444)
!918 = !DILocation(line: 232, column: 102, scope: !919)
!919 = !DILexicalBlockFile(scope: !920, file: !7, discriminator: 8)
!920 = !DILexicalBlockFile(scope: !446, file: !7, discriminator: 3)
!921 = !DILocation(line: 232, column: 102, scope: !922)
!922 = !DILexicalBlockFile(scope: !446, file: !7, discriminator: 9)
!923 = !DILocation(line: 233, column: 9, scope: !440)
!924 = !DILocation(line: 233, column: 18, scope: !925)
!925 = !DILexicalBlockFile(scope: !449, file: !7, discriminator: 1)
!926 = !DILocation(line: 233, column: 22, scope: !449)
!927 = !DILocation(line: 233, column: 18, scope: !449)
!928 = !DILocation(line: 233, column: 18, scope: !450)
!929 = !DILocation(line: 233, column: 30, scope: !930)
!930 = !DILexicalBlockFile(scope: !448, file: !7, discriminator: 2)
!931 = !DILocation(line: 233, column: 34, scope: !448)
!932 = !DILocation(line: 233, column: 41, scope: !448)
!933 = !DILocation(line: 233, column: 60, scope: !448)
!934 = !DILocation(line: 233, column: 64, scope: !448)
!935 = !DILocation(line: 233, column: 71, scope: !448)
!936 = !DILocation(line: 233, column: 81, scope: !937)
!937 = distinct !DILexicalBlock(scope: !448, file: !7, line: 233, column: 81)
!938 = !DILocation(line: 233, column: 81, scope: !448)
!939 = !DILocation(line: 233, column: 94, scope: !940)
!940 = !DILexicalBlockFile(scope: !937, file: !7, discriminator: 4)
!941 = !DILocation(line: 233, column: 87, scope: !937)
!942 = !DILocation(line: 233, column: 100, scope: !943)
!943 = !DILexicalBlockFile(scope: !449, file: !7, discriminator: 5)
!944 = !DILocation(line: 233, column: 100, scope: !945)
!945 = !DILexicalBlockFile(scope: !946, file: !7, discriminator: 7)
!946 = !DILexicalBlockFile(scope: !449, file: !7, discriminator: 6)
!947 = !DILocation(line: 233, column: 100, scope: !448)
!948 = !DILocation(line: 233, column: 102, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !7, discriminator: 8)
!950 = !DILexicalBlockFile(scope: !450, file: !7, discriminator: 3)
!951 = !DILocation(line: 233, column: 102, scope: !952)
!952 = !DILexicalBlockFile(scope: !450, file: !7, discriminator: 9)
!953 = !DILocation(line: 234, column: 9, scope: !440)
!954 = !DILocation(line: 234, column: 18, scope: !955)
!955 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 1)
!956 = !DILocation(line: 234, column: 22, scope: !453)
!957 = !DILocation(line: 234, column: 18, scope: !453)
!958 = !DILocation(line: 234, column: 18, scope: !454)
!959 = !DILocation(line: 234, column: 32, scope: !960)
!960 = !DILexicalBlockFile(scope: !452, file: !7, discriminator: 2)
!961 = !DILocation(line: 234, column: 36, scope: !452)
!962 = !DILocation(line: 234, column: 43, scope: !452)
!963 = !DILocation(line: 234, column: 62, scope: !452)
!964 = !DILocation(line: 234, column: 66, scope: !452)
!965 = !DILocation(line: 234, column: 75, scope: !452)
!966 = !DILocation(line: 234, column: 85, scope: !967)
!967 = distinct !DILexicalBlock(scope: !452, file: !7, line: 234, column: 85)
!968 = !DILocation(line: 234, column: 85, scope: !452)
!969 = !DILocation(line: 234, column: 98, scope: !970)
!970 = !DILexicalBlockFile(scope: !967, file: !7, discriminator: 4)
!971 = !DILocation(line: 234, column: 91, scope: !967)
!972 = !DILocation(line: 234, column: 104, scope: !973)
!973 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 5)
!974 = !DILocation(line: 234, column: 104, scope: !975)
!975 = !DILexicalBlockFile(scope: !976, file: !7, discriminator: 7)
!976 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 6)
!977 = !DILocation(line: 234, column: 104, scope: !452)
!978 = !DILocation(line: 234, column: 106, scope: !979)
!979 = !DILexicalBlockFile(scope: !980, file: !7, discriminator: 8)
!980 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 3)
!981 = !DILocation(line: 234, column: 106, scope: !982)
!982 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 9)
!983 = !DILocation(line: 235, column: 5, scope: !441)
!984 = !DILocation(line: 235, column: 5, scope: !878)
!985 = !DILocation(line: 235, column: 5, scope: !440)
!986 = !DILocation(line: 228, column: 44, scope: !441)
!987 = !DILocation(line: 228, column: 5, scope: !441)
!988 = !DILocation(line: 236, column: 5, scope: !432)
!989 = !DILocation(line: 237, column: 1, scope: !432)
!990 = !DILocation(line: 240, column: 26, scope: !455)
!991 = !DILocation(line: 242, column: 5, scope: !455)
!992 = !DILocation(line: 242, column: 25, scope: !455)
!993 = !DILocation(line: 243, column: 56, scope: !455)
!994 = !DILocation(line: 243, column: 38, scope: !455)
!995 = !DILocation(line: 243, column: 17, scope: !455)
!996 = !DILocation(line: 243, column: 14, scope: !455)
!997 = !DILocation(line: 244, column: 20, scope: !455)
!998 = !DILocation(line: 244, column: 5, scope: !455)
!999 = !DILocation(line: 246, column: 1, scope: !455)
!1000 = !DILocation(line: 245, column: 5, scope: !455)
!1001 = !DILocation(line: 249, column: 23, scope: !459)
!1002 = !DILocation(line: 251, column: 5, scope: !459)
!1003 = !DILocation(line: 251, column: 25, scope: !459)
!1004 = !DILocation(line: 252, column: 56, scope: !459)
!1005 = !DILocation(line: 252, column: 38, scope: !459)
!1006 = !DILocation(line: 252, column: 17, scope: !459)
!1007 = !DILocation(line: 252, column: 14, scope: !459)
!1008 = !DILocation(line: 253, column: 20, scope: !459)
!1009 = !DILocation(line: 253, column: 5, scope: !459)
!1010 = !DILocation(line: 254, column: 16, scope: !459)
!1011 = !DILocation(line: 254, column: 26, scope: !459)
!1012 = !DILocation(line: 254, column: 5, scope: !459)
!1013 = !DILocation(line: 255, column: 1, scope: !459)
!1014 = !DILocation(line: 129, column: 27, scope: !375)
!1015 = !DILocation(line: 129, column: 43, scope: !375)
!1016 = !DILocation(line: 129, column: 59, scope: !375)
!1017 = !DILocation(line: 131, column: 5, scope: !375)
!1018 = !DILocation(line: 131, column: 25, scope: !375)
!1019 = !DILocation(line: 132, column: 5, scope: !375)
!1020 = !DILocation(line: 132, column: 22, scope: !375)
!1021 = !DILocation(line: 133, column: 5, scope: !375)
!1022 = !DILocation(line: 133, column: 15, scope: !375)
!1023 = !DILocation(line: 135, column: 56, scope: !375)
!1024 = !DILocation(line: 135, column: 38, scope: !375)
!1025 = !DILocation(line: 135, column: 17, scope: !375)
!1026 = !DILocation(line: 135, column: 14, scope: !375)
!1027 = !DILocation(line: 137, column: 9, scope: !385)
!1028 = !DILocation(line: 137, column: 19, scope: !385)
!1029 = !DILocation(line: 137, column: 33, scope: !385)
!1030 = !DILocation(line: 137, column: 43, scope: !385)
!1031 = !DILocation(line: 137, column: 30, scope: !385)
!1032 = !DILocation(line: 137, column: 9, scope: !375)
!1033 = !DILocation(line: 138, column: 9, scope: !384)
!1034 = !DILocation(line: 138, column: 27, scope: !384)
!1035 = !DILocation(line: 139, column: 9, scope: !384)
!1036 = !DILocation(line: 139, column: 19, scope: !384)
!1037 = !DILocation(line: 139, column: 32, scope: !384)
!1038 = !DILocation(line: 140, column: 46, scope: !384)
!1039 = !DILocation(line: 140, column: 56, scope: !384)
!1040 = !DILocation(line: 141, column: 66, scope: !384)
!1041 = !DILocation(line: 141, column: 76, scope: !384)
!1042 = !DILocation(line: 141, column: 64, scope: !384)
!1043 = !DILocation(line: 140, column: 32, scope: !384)
!1044 = !DILocation(line: 140, column: 13, scope: !384)
!1045 = !DILocation(line: 140, column: 11, scope: !384)
!1046 = !DILocation(line: 142, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !384, file: !7, line: 142, column: 13)
!1048 = !DILocation(line: 142, column: 15, scope: !1047)
!1049 = !DILocation(line: 142, column: 13, scope: !384)
!1050 = !DILocation(line: 143, column: 20, scope: !1047)
!1051 = !DILocation(line: 143, column: 13, scope: !1047)
!1052 = !DILocation(line: 144, column: 38, scope: !384)
!1053 = !DILocation(line: 144, column: 9, scope: !384)
!1054 = !DILocation(line: 144, column: 19, scope: !384)
!1055 = !DILocation(line: 144, column: 36, scope: !384)
!1056 = !DILocation(line: 145, column: 5, scope: !385)
!1057 = !DILocation(line: 145, column: 5, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !385, file: !7, discriminator: 1)
!1059 = !DILocation(line: 145, column: 5, scope: !384)
!1060 = !DILocation(line: 147, column: 26, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !375, file: !7, line: 147, column: 9)
!1062 = !DILocation(line: 147, column: 11, scope: !1061)
!1063 = !DILocation(line: 147, column: 34, scope: !1061)
!1064 = !{!708, !696, i64 16}
!1065 = !DILocation(line: 147, column: 43, scope: !1061)
!1066 = !DILocation(line: 147, column: 9, scope: !375)
!1067 = !DILocation(line: 148, column: 25, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !7, line: 147, column: 49)
!1069 = !DILocation(line: 148, column: 9, scope: !1068)
!1070 = !DILocation(line: 150, column: 9, scope: !1068)
!1071 = !DILocation(line: 153, column: 32, scope: !375)
!1072 = !DILocation(line: 153, column: 14, scope: !375)
!1073 = !DILocation(line: 153, column: 40, scope: !375)
!1074 = !DILocation(line: 153, column: 13, scope: !375)
!1075 = !DILocation(line: 153, column: 10, scope: !375)
!1076 = !DILocation(line: 154, column: 27, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !375, file: !7, line: 154, column: 9)
!1078 = !DILocation(line: 154, column: 10, scope: !1077)
!1079 = !DILocation(line: 154, column: 9, scope: !375)
!1080 = !DILocation(line: 155, column: 25, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !7, line: 154, column: 34)
!1082 = !DILocation(line: 155, column: 9, scope: !1081)
!1083 = !DILocation(line: 157, column: 9, scope: !1081)
!1084 = !DILocation(line: 160, column: 20, scope: !375)
!1085 = !DILocation(line: 160, column: 18, scope: !375)
!1086 = !DILocation(line: 161, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !375, file: !7, line: 161, column: 9)
!1088 = !DILocation(line: 161, column: 22, scope: !1087)
!1089 = !DILocation(line: 161, column: 9, scope: !375)
!1090 = !DILocation(line: 162, column: 16, scope: !1087)
!1091 = !DILocation(line: 162, column: 9, scope: !1087)
!1092 = !DILocation(line: 164, column: 43, scope: !375)
!1093 = !DILocation(line: 164, column: 69, scope: !375)
!1094 = !DILocation(line: 164, column: 54, scope: !375)
!1095 = !DILocation(line: 164, column: 77, scope: !375)
!1096 = !DILocation(line: 164, column: 26, scope: !375)
!1097 = !DILocation(line: 164, column: 5, scope: !375)
!1098 = !DILocation(line: 164, column: 19, scope: !375)
!1099 = !DILocation(line: 164, column: 24, scope: !375)
!1100 = !DILocation(line: 165, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !375, file: !7, line: 165, column: 9)
!1102 = !DILocation(line: 165, column: 23, scope: !1101)
!1103 = !DILocation(line: 165, column: 28, scope: !1101)
!1104 = !DILocation(line: 165, column: 9, scope: !375)
!1105 = !DILocation(line: 166, column: 20, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !7, line: 165, column: 43)
!1107 = !DILocation(line: 166, column: 9, scope: !1106)
!1108 = !DILocation(line: 167, column: 9, scope: !1106)
!1109 = !DILocation(line: 169, column: 26, scope: !375)
!1110 = !DILocation(line: 169, column: 5, scope: !375)
!1111 = !DILocation(line: 169, column: 19, scope: !375)
!1112 = !DILocation(line: 169, column: 24, scope: !375)
!1113 = !DILocation(line: 170, column: 28, scope: !375)
!1114 = !DILocation(line: 170, column: 5, scope: !375)
!1115 = !DILocation(line: 170, column: 19, scope: !375)
!1116 = !DILocation(line: 170, column: 26, scope: !375)
!1117 = !DILocation(line: 171, column: 21, scope: !375)
!1118 = !DILocation(line: 171, column: 29, scope: !375)
!1119 = !DILocation(line: 171, column: 38, scope: !375)
!1120 = !DILocation(line: 172, column: 5, scope: !375)
!1121 = !DILocation(line: 172, column: 10, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !387, file: !7, discriminator: 1)
!1123 = !DILocation(line: 172, column: 20, scope: !387)
!1124 = !DILocation(line: 172, column: 51, scope: !387)
!1125 = !DILocation(line: 172, column: 64, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !387, file: !7, line: 172, column: 64)
!1127 = !DILocation(line: 172, column: 80, scope: !1126)
!1128 = !DILocation(line: 172, column: 64, scope: !387)
!1129 = !DILocation(line: 172, column: 111, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1126, file: !7, discriminator: 2)
!1131 = !DILocation(line: 172, column: 130, scope: !1126)
!1132 = !DILocation(line: 172, column: 139, scope: !1126)
!1133 = !DILocation(line: 172, column: 95, scope: !1126)
!1134 = !DILocation(line: 172, column: 144, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !7, discriminator: 4)
!1136 = !DILexicalBlockFile(scope: !375, file: !7, discriminator: 3)
!1137 = !DILocation(line: 172, column: 144, scope: !387)
!1138 = !DILocation(line: 172, column: 144, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !387, file: !7, discriminator: 5)
!1140 = !DILocation(line: 174, column: 58, scope: !375)
!1141 = !DILocation(line: 174, column: 32, scope: !375)
!1142 = !DILocation(line: 174, column: 42, scope: !375)
!1143 = !DILocation(line: 174, column: 52, scope: !375)
!1144 = !DILocation(line: 174, column: 5, scope: !375)
!1145 = !DILocation(line: 174, column: 15, scope: !375)
!1146 = !DILocation(line: 174, column: 56, scope: !375)
!1147 = !DILocation(line: 176, column: 21, scope: !375)
!1148 = !DILocation(line: 176, column: 29, scope: !375)
!1149 = !DILocation(line: 176, column: 38, scope: !375)
!1150 = !DILocation(line: 177, column: 12, scope: !375)
!1151 = !DILocation(line: 177, column: 5, scope: !375)
!1152 = !DILocation(line: 178, column: 1, scope: !375)
!1153 = !DILocation(line: 200, column: 24, scope: !388)
!1154 = !DILocation(line: 200, column: 40, scope: !388)
!1155 = !DILocation(line: 202, column: 60, scope: !388)
!1156 = !DILocation(line: 202, column: 42, scope: !388)
!1157 = !DILocation(line: 202, column: 21, scope: !388)
!1158 = !DILocation(line: 202, column: 5, scope: !388)
!1159 = !DILocation(line: 203, column: 58, scope: !388)
!1160 = !DILocation(line: 203, column: 5, scope: !388)
!1161 = !DILocation(line: 266, column: 29, scope: !415)
!1162 = !DILocation(line: 266, column: 45, scope: !415)
!1163 = !DILocation(line: 268, column: 5, scope: !415)
!1164 = !DILocation(line: 268, column: 25, scope: !415)
!1165 = !DILocation(line: 269, column: 5, scope: !415)
!1166 = !DILocation(line: 269, column: 22, scope: !415)
!1167 = !DILocation(line: 270, column: 5, scope: !415)
!1168 = !DILocation(line: 270, column: 9, scope: !415)
!1169 = !DILocation(line: 270, column: 12, scope: !415)
!1170 = !DILocation(line: 272, column: 56, scope: !415)
!1171 = !DILocation(line: 272, column: 38, scope: !415)
!1172 = !DILocation(line: 272, column: 17, scope: !415)
!1173 = !DILocation(line: 272, column: 14, scope: !415)
!1174 = !DILocation(line: 274, column: 12, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !415, file: !7, line: 274, column: 5)
!1176 = !DILocation(line: 274, column: 10, scope: !1175)
!1177 = !DILocation(line: 274, column: 17, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !7, discriminator: 2)
!1179 = !DILexicalBlockFile(scope: !1180, file: !7, discriminator: 1)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !7, line: 274, column: 5)
!1181 = !DILocation(line: 274, column: 21, scope: !1180)
!1182 = !DILocation(line: 274, column: 31, scope: !1180)
!1183 = !DILocation(line: 274, column: 19, scope: !1180)
!1184 = !DILocation(line: 274, column: 5, scope: !1175)
!1185 = !DILocation(line: 276, column: 41, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !7, line: 275, column: 5)
!1187 = !DILocation(line: 276, column: 14, scope: !1186)
!1188 = !DILocation(line: 276, column: 24, scope: !1186)
!1189 = !DILocation(line: 276, column: 12, scope: !1186)
!1190 = !DILocation(line: 277, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !7, line: 277, column: 13)
!1192 = !DILocation(line: 277, column: 16, scope: !1191)
!1193 = !DILocation(line: 277, column: 13, scope: !1186)
!1194 = !DILocation(line: 278, column: 13, scope: !1191)
!1195 = !DILocation(line: 280, column: 39, scope: !1186)
!1196 = !DILocation(line: 280, column: 43, scope: !1186)
!1197 = !DILocation(line: 280, column: 49, scope: !1186)
!1198 = !DILocation(line: 280, column: 14, scope: !1186)
!1199 = !DILocation(line: 280, column: 12, scope: !1186)
!1200 = !DILocation(line: 281, column: 13, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1186, file: !7, line: 281, column: 13)
!1202 = !DILocation(line: 281, column: 16, scope: !1201)
!1203 = !DILocation(line: 281, column: 13, scope: !1186)
!1204 = !DILocation(line: 282, column: 13, scope: !1201)
!1205 = !DILocation(line: 283, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1186, file: !7, line: 283, column: 13)
!1207 = !DILocation(line: 283, column: 13, scope: !1186)
!1208 = !DILocation(line: 284, column: 30, scope: !1206)
!1209 = !DILocation(line: 284, column: 40, scope: !1206)
!1210 = !DILocation(line: 284, column: 13, scope: !1206)
!1211 = !DILocation(line: 285, column: 5, scope: !1186)
!1212 = !DILocation(line: 274, column: 44, scope: !1180)
!1213 = !DILocation(line: 274, column: 5, scope: !1180)
!1214 = !DILocation(line: 286, column: 58, scope: !415)
!1215 = !DILocation(line: 286, column: 5, scope: !415)
!1216 = !DILocation(line: 287, column: 1, scope: !415)
!1217 = !DILocation(line: 186, column: 32, scope: !423)
!1218 = !DILocation(line: 186, column: 48, scope: !423)
!1219 = !DILocation(line: 188, column: 5, scope: !423)
!1220 = !DILocation(line: 189, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !423, file: !7, line: 189, column: 9)
!1222 = !DILocation(line: 189, column: 9, scope: !423)
!1223 = !DILocation(line: 190, column: 9, scope: !1221)
!1224 = !DILocation(line: 191, column: 58, scope: !423)
!1225 = !DILocation(line: 191, column: 5, scope: !423)
!1226 = !DILocation(line: 192, column: 1, scope: !423)
!1227 = !DILocation(line: 212, column: 29, scope: !427)
!1228 = !DILocation(line: 212, column: 45, scope: !427)
!1229 = !DILocation(line: 214, column: 5, scope: !427)
!1230 = !DILocation(line: 214, column: 25, scope: !427)
!1231 = !DILocation(line: 216, column: 56, scope: !427)
!1232 = !DILocation(line: 216, column: 38, scope: !427)
!1233 = !DILocation(line: 216, column: 17, scope: !427)
!1234 = !DILocation(line: 216, column: 14, scope: !427)
!1235 = !DILocation(line: 218, column: 31, scope: !427)
!1236 = !DILocation(line: 218, column: 41, scope: !427)
!1237 = !DILocation(line: 218, column: 12, scope: !427)
!1238 = !DILocation(line: 219, column: 1, scope: !427)
!1239 = !DILocation(line: 218, column: 5, scope: !427)
!1240 = !DILocation(line: 49, column: 36, scope: !392)
!1241 = !DILocation(line: 51, column: 5, scope: !392)
!1242 = !DILocation(line: 51, column: 22, scope: !392)
!1243 = !DILocation(line: 52, column: 5, scope: !392)
!1244 = !DILocation(line: 52, column: 9, scope: !392)
!1245 = !DILocation(line: 53, column: 12, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !392, file: !7, line: 53, column: 5)
!1247 = !DILocation(line: 53, column: 10, scope: !1246)
!1248 = !DILocation(line: 53, column: 17, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !7, discriminator: 2)
!1250 = !DILexicalBlockFile(scope: !1251, file: !7, discriminator: 1)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !7, line: 53, column: 5)
!1252 = !DILocation(line: 53, column: 21, scope: !1251)
!1253 = !DILocation(line: 53, column: 31, scope: !1251)
!1254 = !DILocation(line: 53, column: 19, scope: !1251)
!1255 = !DILocation(line: 53, column: 5, scope: !1246)
!1256 = !DILocation(line: 54, column: 41, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !7, line: 53, column: 48)
!1258 = !DILocation(line: 54, column: 14, scope: !1257)
!1259 = !DILocation(line: 54, column: 24, scope: !1257)
!1260 = !DILocation(line: 54, column: 12, scope: !1257)
!1261 = !DILocation(line: 55, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !7, line: 55, column: 13)
!1263 = !DILocation(line: 55, column: 16, scope: !1262)
!1264 = !DILocation(line: 55, column: 13, scope: !1257)
!1265 = !DILocation(line: 56, column: 13, scope: !1262)
!1266 = !DILocation(line: 58, column: 26, scope: !1257)
!1267 = !DILocation(line: 58, column: 36, scope: !1257)
!1268 = !DILocation(line: 58, column: 9, scope: !1257)
!1269 = !DILocation(line: 59, column: 5, scope: !1257)
!1270 = !DILocation(line: 53, column: 44, scope: !1251)
!1271 = !DILocation(line: 53, column: 5, scope: !1251)
!1272 = !DILocation(line: 60, column: 5, scope: !392)
!1273 = !DILocation(line: 60, column: 15, scope: !392)
!1274 = !DILocation(line: 60, column: 26, scope: !392)
!1275 = !DILocation(line: 61, column: 1, scope: !392)
!1276 = !DILocation(line: 35, column: 38, scope: !399)
!1277 = !DILocation(line: 35, column: 52, scope: !399)
!1278 = !DILocation(line: 37, column: 5, scope: !399)
!1279 = !DILocation(line: 37, column: 22, scope: !399)
!1280 = !DILocation(line: 39, column: 37, scope: !399)
!1281 = !DILocation(line: 39, column: 10, scope: !399)
!1282 = !DILocation(line: 39, column: 20, scope: !399)
!1283 = !DILocation(line: 39, column: 8, scope: !399)
!1284 = !DILocation(line: 40, column: 32, scope: !399)
!1285 = !DILocation(line: 40, column: 5, scope: !399)
!1286 = !DILocation(line: 40, column: 15, scope: !399)
!1287 = !DILocation(line: 40, column: 35, scope: !399)
!1288 = !DILocation(line: 41, column: 5, scope: !399)
!1289 = !DILocation(line: 41, column: 10, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !407, file: !7, discriminator: 1)
!1291 = !DILocation(line: 41, column: 20, scope: !407)
!1292 = !DILocation(line: 41, column: 50, scope: !407)
!1293 = !DILocation(line: 41, column: 54, scope: !407)
!1294 = !DILocation(line: 41, column: 69, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !407, file: !7, line: 41, column: 66)
!1296 = !DILocation(line: 41, column: 86, scope: !1295)
!1297 = !DILocation(line: 41, column: 66, scope: !1295)
!1298 = !DILocation(line: 41, column: 96, scope: !1295)
!1299 = !DILocation(line: 41, column: 66, scope: !407)
!1300 = !DILocation(line: 41, column: 66, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !407, file: !7, discriminator: 2)
!1302 = !DILocation(line: 41, column: 127, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1295, file: !7, discriminator: 3)
!1304 = !DILocation(line: 41, column: 145, scope: !1295)
!1305 = !DILocation(line: 41, column: 155, scope: !1295)
!1306 = !DILocation(line: 41, column: 180, scope: !1295)
!1307 = !DILocation(line: 41, column: 111, scope: !1295)
!1308 = !DILocation(line: 41, column: 199, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !399, file: !7, discriminator: 4)
!1310 = !DILocation(line: 41, column: 199, scope: !407)
!1311 = !DILocation(line: 41, column: 199, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !407, file: !7, discriminator: 5)
!1313 = !DILocation(line: 42, column: 5, scope: !399)
!1314 = !DILocation(line: 42, column: 10, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !409, file: !7, discriminator: 1)
!1316 = !DILocation(line: 42, column: 20, scope: !409)
!1317 = !DILocation(line: 42, column: 50, scope: !409)
!1318 = !DILocation(line: 42, column: 54, scope: !409)
!1319 = !DILocation(line: 42, column: 69, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !409, file: !7, line: 42, column: 66)
!1321 = !DILocation(line: 42, column: 86, scope: !1320)
!1322 = !DILocation(line: 42, column: 66, scope: !1320)
!1323 = !DILocation(line: 42, column: 96, scope: !1320)
!1324 = !DILocation(line: 42, column: 66, scope: !409)
!1325 = !DILocation(line: 42, column: 66, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !409, file: !7, discriminator: 2)
!1327 = !DILocation(line: 42, column: 127, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1320, file: !7, discriminator: 3)
!1329 = !DILocation(line: 42, column: 145, scope: !1320)
!1330 = !DILocation(line: 42, column: 155, scope: !1320)
!1331 = !DILocation(line: 42, column: 180, scope: !1320)
!1332 = !DILocation(line: 42, column: 111, scope: !1320)
!1333 = !DILocation(line: 42, column: 199, scope: !1309)
!1334 = !DILocation(line: 42, column: 199, scope: !409)
!1335 = !DILocation(line: 42, column: 199, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !409, file: !7, discriminator: 5)
!1337 = !DILocation(line: 43, column: 5, scope: !399)
!1338 = !DILocation(line: 43, column: 10, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !411, file: !7, discriminator: 1)
!1340 = !DILocation(line: 43, column: 20, scope: !411)
!1341 = !DILocation(line: 43, column: 51, scope: !411)
!1342 = !DILocation(line: 43, column: 55, scope: !411)
!1343 = !DILocation(line: 43, column: 68, scope: !414)
!1344 = !DILocation(line: 43, column: 84, scope: !414)
!1345 = !DILocation(line: 43, column: 68, scope: !411)
!1346 = !DILocation(line: 43, column: 99, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !414, file: !7, discriminator: 2)
!1348 = !DILocation(line: 43, column: 104, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !413, file: !7, discriminator: 4)
!1350 = !DILocation(line: 43, column: 114, scope: !413)
!1351 = !DILocation(line: 43, column: 144, scope: !413)
!1352 = !DILocation(line: 43, column: 170, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !413, file: !7, line: 43, column: 167)
!1354 = !DILocation(line: 43, column: 187, scope: !1353)
!1355 = !DILocation(line: 43, column: 167, scope: !1353)
!1356 = !DILocation(line: 43, column: 197, scope: !1353)
!1357 = !DILocation(line: 43, column: 167, scope: !413)
!1358 = !DILocation(line: 43, column: 167, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !413, file: !7, discriminator: 5)
!1360 = !DILocation(line: 43, column: 228, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1353, file: !7, discriminator: 6)
!1362 = !DILocation(line: 43, column: 246, scope: !1353)
!1363 = !DILocation(line: 43, column: 256, scope: !1353)
!1364 = !DILocation(line: 43, column: 281, scope: !1353)
!1365 = !DILocation(line: 43, column: 212, scope: !1353)
!1366 = !DILocation(line: 43, column: 300, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !414, file: !7, discriminator: 7)
!1368 = !DILocation(line: 43, column: 300, scope: !413)
!1369 = !DILocation(line: 43, column: 300, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !413, file: !7, discriminator: 8)
!1371 = !DILocation(line: 43, column: 300, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !413, file: !7, discriminator: 9)
!1373 = !DILocation(line: 43, column: 313, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !7, discriminator: 10)
!1375 = !DILexicalBlockFile(scope: !399, file: !7, discriminator: 3)
!1376 = !DILocation(line: 43, column: 313, scope: !411)
!1377 = !DILocation(line: 43, column: 313, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !411, file: !7, discriminator: 11)
!1379 = !DILocation(line: 44, column: 16, scope: !399)
!1380 = !DILocation(line: 44, column: 5, scope: !399)
!1381 = !DILocation(line: 45, column: 1, scope: !399)
