; ModuleID = 'atexitmodule.o.bc'
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
%struct.atexit_callback = type { %struct._object*, %struct._object*, %struct._object* }

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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @atexitmodule, i32 1013) #1, !dbg !553
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !372, metadata !554), !dbg !555
  %cmp = icmp eq %struct._object* %call, null, !dbg !556
  br i1 %cmp, label %cleanup, label %if.end, !dbg !558

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @PyModule_GetState(%struct._object* %call) #1, !dbg !559
  %callback_len = getelementptr inbounds i8, i8* %call1, i64 12, !dbg !560
  %0 = bitcast i8* %callback_len to i32*, !dbg !560
  store i32 32, i32* %0, align 4, !dbg !561, !tbaa !562
  %ncallbacks = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !568
  %1 = bitcast i8* %ncallbacks to i32*, !dbg !568
  store i32 0, i32* %1, align 4, !dbg !569, !tbaa !570
  %call7 = tail call i8* @PyMem_Malloc(i64 256) #1, !dbg !571
  %2 = bitcast i8* %call1 to i8**, !dbg !573
  store i8* %call7, i8** %2, align 8, !dbg !573, !tbaa !574
  %cmp9 = icmp eq i8* %call7, null, !dbg !575
  br i1 %cmp9, label %cleanup, label %if.end.12, !dbg !577

if.end.12:                                        ; preds = %if.end
  tail call void @_Py_PyAtExit(void ()* nonnull @atexit_callfuncs) #1, !dbg !578
  br label %cleanup, !dbg !579

cleanup:                                          ; preds = %if.end, %entry, %if.end.12
  %retval.0 = phi %struct._object* [ %call, %if.end.12 ], [ null, %entry ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !580
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i8* @PyModule_GetState(%struct._object*) #2

declare i8* @PyMem_Malloc(i64) #2

declare void @_Py_PyAtExit(void ()*) #2

; Function Attrs: nounwind uwtable
define internal void @atexit_callfuncs() #0 {
entry:
  %exc_type = alloca %struct._object*, align 8
  %exc_value = alloca %struct._object*, align 8
  %exc_tb = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %exc_type to i8*, !dbg !581
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !581
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !466, metadata !554), !dbg !582
  store %struct._object* null, %struct._object** %exc_type, align 8, !dbg !582, !tbaa !583
  %1 = bitcast %struct._object** %exc_value to i8*, !dbg !581
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !581
  %2 = bitcast %struct._object** %exc_tb to i8*, !dbg !581
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !581
  %call = tail call %struct._object* @PyState_FindModule(%struct.PyModuleDef* nonnull @atexitmodule) #1, !dbg !584
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !471, metadata !554), !dbg !585
  %cmp = icmp eq %struct._object* %call, null, !dbg !586
  br i1 %cmp, label %cleanup, label %if.end, !dbg !588

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @PyModule_GetState(%struct._object* %call) #1, !dbg !589
  %ncallbacks = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !590
  %3 = bitcast i8* %ncallbacks to i32*, !dbg !590
  %4 = load i32, i32* %3, align 4, !dbg !590, !tbaa !570
  %cmp2 = icmp eq i32 %4, 0, !dbg !592
  br i1 %cmp2, label %cleanup, label %for.cond.preheader, !dbg !593

for.cond.preheader:                               ; preds = %if.end
  %i.0.123 = add i32 %4, -1, !dbg !594
  %cmp6.124 = icmp sgt i32 %i.0.123, -1, !dbg !595
  br i1 %cmp6.124, label %for.body.lr.ph, label %for.end, !dbg !596

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atexit_callbacks = bitcast i8* %call1 to %struct.atexit_callback***, !dbg !597
  %5 = sext i32 %i.0.123 to i64, !dbg !596
  br label %for.body, !dbg !596

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.backedge ]
  %i.0125 = phi i32 [ %i.0.123, %for.body.lr.ph ], [ %i.0, %for.cond.backedge ]
  %6 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !597, !tbaa !574
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %6, i64 %indvars.iv, !dbg !598
  %7 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !598, !tbaa !583
  call void @llvm.dbg.value(metadata %struct.atexit_callback* %7, i64 0, metadata !470, metadata !554), !dbg !599
  %cmp7 = icmp eq %struct.atexit_callback* %7, null, !dbg !600
  br i1 %cmp7, label %for.cond.backedge, label %if.end.9, !dbg !602

if.end.9:                                         ; preds = %for.body
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %7, i64 0, i32 0, !dbg !603
  %8 = load %struct._object*, %struct._object** %func, align 8, !dbg !603, !tbaa !604
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %7, i64 0, i32 1, !dbg !606
  %9 = load %struct._object*, %struct._object** %args, align 8, !dbg !606, !tbaa !607
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %7, i64 0, i32 2, !dbg !608
  %10 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !608, !tbaa !609
  %call10 = call %struct._object* @PyObject_Call(%struct._object* %8, %struct._object* %9, %struct._object* %10) #1, !dbg !610
  call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !469, metadata !554), !dbg !611
  call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !474, metadata !554), !dbg !612
  %cond = icmp eq %struct._object* %call10, null, !dbg !614
  br i1 %cond, label %if.then.21, label %do.body.13, !dbg !614

do.body.13:                                       ; preds = %if.end.9
  call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !479, metadata !554), !dbg !615
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !617
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !617, !tbaa !619
  %dec = add i64 %11, -1, !dbg !617
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !617, !tbaa !619
  %cmp14 = icmp eq i64 %dec, 0, !dbg !617
  br i1 %cmp14, label %if.else, label %for.cond.backedge, !dbg !622

if.else:                                          ; preds = %do.body.13
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !623
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !623, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !623
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !623, !tbaa !626
  call void %13(%struct._object* %call10) #1, !dbg !623
  br label %for.cond.backedge

if.then.21:                                       ; preds = %if.end.9
  call void @llvm.dbg.value(metadata %struct._object** %exc_type, i64 0, metadata !466, metadata !554), !dbg !582
  %14 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !629, !tbaa !583
  %tobool = icmp eq %struct._object* %14, null, !dbg !629
  br i1 %tobool, label %if.end.73, label %do.body.23, !dbg !630

do.body.23:                                       ; preds = %if.then.21
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !482, metadata !554), !dbg !631
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !633
  %15 = load i64, i64* %ob_refcnt25, align 8, !dbg !633, !tbaa !619
  %dec26 = add i64 %15, -1, !dbg !633
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !633, !tbaa !619
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !633
  br i1 %cmp27, label %if.else.29, label %if.end.32, !dbg !635

if.else.29:                                       ; preds = %do.body.23
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !636
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !636, !tbaa !625
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !636
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !636, !tbaa !626
  call void %17(%struct._object* %14) #1, !dbg !636
  br label %if.end.32

if.end.32:                                        ; preds = %do.body.23, %if.else.29
  call void @llvm.dbg.value(metadata %struct._object** %exc_value, i64 0, metadata !467, metadata !554), !dbg !638
  %18 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !639, !tbaa !583
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !488, metadata !554), !dbg !639
  %cmp37 = icmp eq %struct._object* %18, null, !dbg !641
  br i1 %cmp37, label %if.end.51, label %do.body.39, !dbg !642

do.body.39:                                       ; preds = %if.end.32
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !490, metadata !554), !dbg !643
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !645
  %19 = load i64, i64* %ob_refcnt41, align 8, !dbg !645, !tbaa !619
  %dec42 = add i64 %19, -1, !dbg !645
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !645, !tbaa !619
  %cmp43 = icmp eq i64 %dec42, 0, !dbg !645
  br i1 %cmp43, label %if.else.45, label %if.end.51, !dbg !647

if.else.45:                                       ; preds = %do.body.39
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !648
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !648, !tbaa !625
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !648
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !648, !tbaa !626
  call void %21(%struct._object* %18) #1, !dbg !648
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %do.body.39, %if.end.32
  call void @llvm.dbg.value(metadata %struct._object** %exc_tb, i64 0, metadata !468, metadata !554), !dbg !650
  %22 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !651, !tbaa !583
  call void @llvm.dbg.value(metadata %struct._object* %22, i64 0, metadata !493, metadata !554), !dbg !651
  %cmp56 = icmp eq %struct._object* %22, null, !dbg !653
  br i1 %cmp56, label %if.end.73, label %do.body.58, !dbg !654

do.body.58:                                       ; preds = %if.end.51
  call void @llvm.dbg.value(metadata %struct._object* %22, i64 0, metadata !495, metadata !554), !dbg !655
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 0, !dbg !657
  %23 = load i64, i64* %ob_refcnt60, align 8, !dbg !657, !tbaa !619
  %dec61 = add i64 %23, -1, !dbg !657
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !657, !tbaa !619
  %cmp62 = icmp eq i64 %dec61, 0, !dbg !657
  br i1 %cmp62, label %if.else.64, label %if.end.73, !dbg !659

if.else.64:                                       ; preds = %do.body.58
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 1, !dbg !660
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !660, !tbaa !625
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !660
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !660, !tbaa !626
  call void %25(%struct._object* %22) #1, !dbg !660
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.51, %do.body.58, %if.else.64, %if.then.21
  call void @llvm.dbg.value(metadata %struct._object** %exc_type, i64 0, metadata !466, metadata !554), !dbg !582
  call void @llvm.dbg.value(metadata %struct._object** %exc_value, i64 0, metadata !467, metadata !554), !dbg !638
  call void @llvm.dbg.value(metadata %struct._object** %exc_tb, i64 0, metadata !468, metadata !554), !dbg !650
  call void @PyErr_Fetch(%struct._object** nonnull %exc_type, %struct._object** nonnull %exc_value, %struct._object** nonnull %exc_tb) #1, !dbg !662
  %26 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !663, !tbaa !583
  %call74 = call i32 @PyErr_ExceptionMatches(%struct._object* %26) #1, !dbg !665
  %tobool75 = icmp eq i32 %call74, 0, !dbg !665
  br i1 %tobool75, label %if.then.76, label %for.cond.backedge, !dbg !666

for.cond.backedge:                                ; preds = %if.end.73, %if.then.76, %for.body, %if.else, %do.body.13
  %i.0 = add i32 %i.0125, -1, !dbg !594
  %cmp6 = icmp sgt i32 %i.0, -1, !dbg !595
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !596
  br i1 %cmp6, label %for.body, label %for.cond.for.end_crit_edge, !dbg !596

if.then.76:                                       ; preds = %if.end.73
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #1, !dbg !667
  call void @llvm.dbg.value(metadata %struct._object** %exc_type, i64 0, metadata !466, metadata !554), !dbg !582
  call void @llvm.dbg.value(metadata %struct._object** %exc_value, i64 0, metadata !467, metadata !554), !dbg !638
  call void @llvm.dbg.value(metadata %struct._object** %exc_tb, i64 0, metadata !468, metadata !554), !dbg !650
  call void @PyErr_NormalizeException(%struct._object** nonnull %exc_type, %struct._object** nonnull %exc_value, %struct._object** nonnull %exc_tb) #1, !dbg !669
  call void @llvm.dbg.value(metadata %struct._object** %exc_type, i64 0, metadata !466, metadata !554), !dbg !582
  %27 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !670, !tbaa !583
  call void @llvm.dbg.value(metadata %struct._object** %exc_value, i64 0, metadata !467, metadata !554), !dbg !638
  %28 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !671, !tbaa !583
  call void @llvm.dbg.value(metadata %struct._object** %exc_tb, i64 0, metadata !468, metadata !554), !dbg !650
  %29 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !672, !tbaa !583
  call void @PyErr_Display(%struct._object* %27, %struct._object* %28, %struct._object* %29) #1, !dbg !673
  br label %for.cond.backedge, !dbg !674

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre = load i32, i32* %3, align 4, !dbg !675, !tbaa !570
  br label %for.end, !dbg !596

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader
  %30 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ %4, %for.cond.preheader ], !dbg !675
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !397, metadata !554) #1, !dbg !679
  %cmp.11.i = icmp sgt i32 %30, 0, !dbg !680
  br i1 %cmp.11.i, label %for.body.lr.ph.i, label %atexit_cleanup.exit, !dbg !681

for.body.lr.ph.i:                                 ; preds = %for.end
  %atexit_callbacks.i = bitcast i8* %call1 to %struct.atexit_callback***, !dbg !682
  br label %for.body.i, !dbg !681

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %31 = phi i32 [ %30, %for.body.lr.ph.i ], [ %47, %for.inc.i ], !dbg !684
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ], !dbg !684
  %idxprom.i = sext i32 %i.012.i to i64, !dbg !685
  %32 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks.i, align 8, !dbg !684, !tbaa !574
  %arrayidx.i = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %32, i64 %idxprom.i, !dbg !685
  %33 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !686, !tbaa !583
  call void @llvm.dbg.value(metadata %struct.atexit_callback* %33, i64 0, metadata !396, metadata !554) #1, !dbg !688
  %cmp1.i = icmp eq %struct.atexit_callback* %33, null, !dbg !689
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i, !dbg !691

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.dbg.value(metadata %struct.atexit_callback* %33, i64 0, metadata !404, metadata !554) #1, !dbg !692
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !693, !tbaa !583
  %func.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %33, i64 0, i32 0, !dbg !694
  %34 = load %struct._object*, %struct._object** %func.i.i, align 8, !dbg !694, !tbaa !604
  call void @llvm.dbg.value(metadata %struct._object* %34, i64 0, metadata !405, metadata !554) #1, !dbg !694
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 0, !dbg !696
  %35 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !696, !tbaa !619
  %dec.i.i = add i64 %35, -1, !dbg !696
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !696, !tbaa !619
  %cmp.i.i = icmp eq i64 %dec.i.i, 0, !dbg !696
  br i1 %cmp.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !698

if.else.i.i:                                      ; preds = %if.end.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 1, !dbg !699
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !699, !tbaa !625
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !699
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !699, !tbaa !626
  call void %37(%struct._object* %34) #1, !dbg !699
  br label %if.end.i.i, !dbg !701

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i
  %args.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %33, i64 0, i32 1, !dbg !702
  %38 = load %struct._object*, %struct._object** %args.i.i, align 8, !dbg !702, !tbaa !607
  call void @llvm.dbg.value(metadata %struct._object* %38, i64 0, metadata !407, metadata !554) #1, !dbg !702
  %ob_refcnt6.i.i = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 0, !dbg !704
  %39 = load i64, i64* %ob_refcnt6.i.i, align 8, !dbg !704, !tbaa !619
  %dec7.i.i = add i64 %39, -1, !dbg !704
  store i64 %dec7.i.i, i64* %ob_refcnt6.i.i, align 8, !dbg !704, !tbaa !619
  %cmp8.i.i = icmp eq i64 %dec7.i.i, 0, !dbg !704
  br i1 %cmp8.i.i, label %if.else.10.i.i, label %if.end.13.i.i, !dbg !706

if.else.10.i.i:                                   ; preds = %if.end.i.i
  %ob_type11.i.i = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 1, !dbg !707
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type11.i.i, align 8, !dbg !707, !tbaa !625
  %tp_dealloc12.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !707
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12.i.i, align 8, !dbg !707, !tbaa !626
  call void %41(%struct._object* %38) #1, !dbg !707
  br label %if.end.13.i.i, !dbg !701

if.end.13.i.i:                                    ; preds = %if.else.10.i.i, %if.end.i.i
  %kwargs.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %33, i64 0, i32 2, !dbg !709
  %42 = load %struct._object*, %struct._object** %kwargs.i.i, align 8, !dbg !709, !tbaa !609
  call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !409, metadata !554) #1, !dbg !709
  %cmp17.i.i = icmp eq %struct._object* %42, null, !dbg !711
  br i1 %cmp17.i.i, label %atexit_delete_cb.exit.i, label %do.body.19.i.i, !dbg !712

do.body.19.i.i:                                   ; preds = %if.end.13.i.i
  call void @llvm.dbg.value(metadata %struct._object* %42, i64 0, metadata !411, metadata !554) #1, !dbg !713
  %ob_refcnt21.i.i = getelementptr inbounds %struct._object, %struct._object* %42, i64 0, i32 0, !dbg !715
  %43 = load i64, i64* %ob_refcnt21.i.i, align 8, !dbg !715, !tbaa !619
  %dec22.i.i = add i64 %43, -1, !dbg !715
  store i64 %dec22.i.i, i64* %ob_refcnt21.i.i, align 8, !dbg !715, !tbaa !619
  %cmp23.i.i = icmp eq i64 %dec22.i.i, 0, !dbg !715
  br i1 %cmp23.i.i, label %if.else.25.i.i, label %atexit_delete_cb.exit.i, !dbg !717

if.else.25.i.i:                                   ; preds = %do.body.19.i.i
  %ob_type26.i.i = getelementptr inbounds %struct._object, %struct._object* %42, i64 0, i32 1, !dbg !718
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i.i, align 8, !dbg !718, !tbaa !625
  %tp_dealloc27.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i64 0, i32 4, !dbg !718
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i.i, align 8, !dbg !718, !tbaa !626
  call void %45(%struct._object* %42) #1, !dbg !718
  br label %atexit_delete_cb.exit.i, !dbg !701

atexit_delete_cb.exit.i:                          ; preds = %if.else.25.i.i, %do.body.19.i.i, %if.end.13.i.i
  %46 = bitcast %struct.atexit_callback* %33 to i8*, !dbg !720
  call void @PyMem_Free(i8* %46) #1, !dbg !721
  %.pre.i = load i32, i32* %3, align 4, !dbg !675, !tbaa !570
  br label %for.inc.i, !dbg !722

for.inc.i:                                        ; preds = %atexit_delete_cb.exit.i, %for.body.i
  %47 = phi i32 [ %31, %for.body.i ], [ %.pre.i, %atexit_delete_cb.exit.i ], !dbg !675
  %inc.i = add i32 %i.012.i, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !397, metadata !554) #1, !dbg !679
  %cmp.i = icmp slt i32 %inc.i, %47, !dbg !680
  br i1 %cmp.i, label %for.body.i, label %atexit_cleanup.exit.loopexit, !dbg !681

atexit_cleanup.exit.loopexit:                     ; preds = %for.inc.i
  br label %atexit_cleanup.exit, !dbg !724

atexit_cleanup.exit:                              ; preds = %atexit_cleanup.exit.loopexit, %for.end
  store i32 0, i32* %3, align 4, !dbg !724, !tbaa !570
  call void @llvm.dbg.value(metadata %struct._object** %exc_type, i64 0, metadata !466, metadata !554), !dbg !582
  %48 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !725, !tbaa !583
  %tobool80 = icmp eq %struct._object* %48, null, !dbg !725
  br i1 %tobool80, label %cleanup, label %if.then.81, !dbg !727

if.then.81:                                       ; preds = %atexit_cleanup.exit
  call void @llvm.dbg.value(metadata %struct._object** %exc_value, i64 0, metadata !467, metadata !554), !dbg !638
  %49 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !728, !tbaa !583
  call void @llvm.dbg.value(metadata %struct._object** %exc_tb, i64 0, metadata !468, metadata !554), !dbg !650
  %50 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !729, !tbaa !583
  call void @PyErr_Restore(%struct._object* %48, %struct._object* %49, %struct._object* %50) #1, !dbg !730
  br label %cleanup, !dbg !730

cleanup:                                          ; preds = %if.then.81, %atexit_cleanup.exit, %if.end, %entry
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !731
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !731
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !731
  ret void, !dbg !733
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !433, metadata !554), !dbg !734
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !434, metadata !554), !dbg !735
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !435, metadata !554), !dbg !736
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !737
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !436, metadata !554), !dbg !738
  %ncallbacks = getelementptr inbounds i8, i8* %call, i64 8, !dbg !739
  %0 = bitcast i8* %ncallbacks to i32*, !dbg !739
  %1 = load i32, i32* %0, align 4, !dbg !739, !tbaa !570
  %cmp.74 = icmp sgt i32 %1, 0, !dbg !740
  br i1 %cmp.74, label %for.body.lr.ph, label %cleanup.42, !dbg !741

for.body.lr.ph:                                   ; preds = %entry
  %atexit_callbacks = bitcast i8* %call to %struct.atexit_callback***, !dbg !742
  br label %for.body, !dbg !741

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.075 to i64, !dbg !743
  %2 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !742, !tbaa !574
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %2, i64 %idxprom, !dbg !743
  %3 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !743, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %3, i64 0, metadata !438, metadata !554), !dbg !744
  %cmp1 = icmp eq %struct.atexit_callback* %3, null, !dbg !745
  br i1 %cmp1, label %for.inc, label %do.body, !dbg !747

do.body:                                          ; preds = %for.body
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %3, i64 0, i32 0, !dbg !748
  %4 = load %struct._object*, %struct._object** %func, align 8, !dbg !748, !tbaa !604
  %tobool = icmp eq %struct._object* %4, null, !dbg !748
  br i1 %tobool, label %do.body.9, label %if.then.2, !dbg !750

if.then.2:                                        ; preds = %do.body
  %call4 = tail call i32 %visit(%struct._object* %4, i8* %arg) #1, !dbg !751
  tail call void @llvm.dbg.value(metadata i32 %call4, i64 0, metadata !442, metadata !554), !dbg !751
  %tobool5 = icmp eq i32 %call4, 0, !dbg !753
  br i1 %tobool5, label %do.body.9, label %cleanup.42.loopexit

do.body.9:                                        ; preds = %do.body, %if.then.2
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %3, i64 0, i32 1, !dbg !755
  %5 = load %struct._object*, %struct._object** %args, align 8, !dbg !755, !tbaa !607
  %tobool10 = icmp eq %struct._object* %5, null, !dbg !755
  br i1 %tobool10, label %do.body.24, label %if.then.11, !dbg !757

if.then.11:                                       ; preds = %do.body.9
  %call14 = tail call i32 %visit(%struct._object* %5, i8* %arg) #1, !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %call14, i64 0, metadata !446, metadata !554), !dbg !758
  %tobool15 = icmp eq i32 %call14, 0, !dbg !760
  br i1 %tobool15, label %do.body.24, label %cleanup.42.loopexit

do.body.24:                                       ; preds = %do.body.9, %if.then.11
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %3, i64 0, i32 2, !dbg !762
  %6 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !762, !tbaa !609
  %tobool25 = icmp eq %struct._object* %6, null, !dbg !762
  br i1 %tobool25, label %for.inc, label %if.then.26, !dbg !764

if.then.26:                                       ; preds = %do.body.24
  %call29 = tail call i32 %visit(%struct._object* %6, i8* %arg) #1, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %call29, i64 0, metadata !450, metadata !554), !dbg !765
  %tobool30 = icmp eq i32 %call29, 0, !dbg !767
  br i1 %tobool30, label %for.inc, label %cleanup.42.loopexit

for.inc:                                          ; preds = %if.then.26, %do.body.24, %for.body
  %inc = add i32 %i.075, 1, !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !436, metadata !554), !dbg !738
  %7 = load i32, i32* %0, align 4, !dbg !739, !tbaa !570
  %cmp = icmp slt i32 %inc, %7, !dbg !740
  br i1 %cmp, label %for.body, label %cleanup.42.loopexit, !dbg !741

cleanup.42.loopexit:                              ; preds = %if.then.26, %if.then.11, %if.then.2, %for.inc
  %retval.8.ph = phi i32 [ 0, %for.inc ], [ %call4, %if.then.2 ], [ %call14, %if.then.11 ], [ %call29, %if.then.26 ]
  br label %cleanup.42, !dbg !770

cleanup.42:                                       ; preds = %cleanup.42.loopexit, %entry
  %retval.8 = phi i32 [ 0, %entry ], [ %retval.8.ph, %cleanup.42.loopexit ]
  ret i32 %retval.8, !dbg !770
}

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_clear(%struct._object* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !456, metadata !554), !dbg !771
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !772
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !397, metadata !554) #1, !dbg !773
  %ncallbacks.i = getelementptr inbounds i8, i8* %call, i64 8, !dbg !775
  %0 = bitcast i8* %ncallbacks.i to i32*, !dbg !775
  %1 = load i32, i32* %0, align 4, !dbg !775, !tbaa !570
  %cmp.11.i = icmp sgt i32 %1, 0, !dbg !776
  br i1 %cmp.11.i, label %for.body.lr.ph.i, label %atexit_cleanup.exit, !dbg !777

for.body.lr.ph.i:                                 ; preds = %entry
  %atexit_callbacks.i = bitcast i8* %call to %struct.atexit_callback***, !dbg !778
  br label %for.body.i, !dbg !777

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %2 = phi i32 [ %1, %for.body.lr.ph.i ], [ %18, %for.inc.i ], !dbg !779
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ], !dbg !779
  %idxprom.i = sext i32 %i.012.i to i64, !dbg !780
  %3 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks.i, align 8, !dbg !779, !tbaa !574
  %arrayidx.i = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %3, i64 %idxprom.i, !dbg !780
  %4 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !781, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !396, metadata !554) #1, !dbg !783
  %cmp1.i = icmp eq %struct.atexit_callback* %4, null, !dbg !784
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i, !dbg !785

if.end.i:                                         ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !404, metadata !554) #1, !dbg !786
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !787, !tbaa !583
  %func.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 0, !dbg !788
  %5 = load %struct._object*, %struct._object** %func.i.i, align 8, !dbg !788, !tbaa !604
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !405, metadata !554) #1, !dbg !788
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !789
  %6 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !789, !tbaa !619
  %dec.i.i = add i64 %6, -1, !dbg !789
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !789, !tbaa !619
  %cmp.i.i = icmp eq i64 %dec.i.i, 0, !dbg !789
  br i1 %cmp.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !790

if.else.i.i:                                      ; preds = %if.end.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !791
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !791, !tbaa !625
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !791
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !791, !tbaa !626
  tail call void %8(%struct._object* %5) #1, !dbg !791
  br label %if.end.i.i, !dbg !792

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i
  %args.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 1, !dbg !793
  %9 = load %struct._object*, %struct._object** %args.i.i, align 8, !dbg !793, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !407, metadata !554) #1, !dbg !793
  %ob_refcnt6.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !794
  %10 = load i64, i64* %ob_refcnt6.i.i, align 8, !dbg !794, !tbaa !619
  %dec7.i.i = add i64 %10, -1, !dbg !794
  store i64 %dec7.i.i, i64* %ob_refcnt6.i.i, align 8, !dbg !794, !tbaa !619
  %cmp8.i.i = icmp eq i64 %dec7.i.i, 0, !dbg !794
  br i1 %cmp8.i.i, label %if.else.10.i.i, label %if.end.13.i.i, !dbg !795

if.else.10.i.i:                                   ; preds = %if.end.i.i
  %ob_type11.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !796
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11.i.i, align 8, !dbg !796, !tbaa !625
  %tp_dealloc12.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !796
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12.i.i, align 8, !dbg !796, !tbaa !626
  tail call void %12(%struct._object* %9) #1, !dbg !796
  br label %if.end.13.i.i, !dbg !792

if.end.13.i.i:                                    ; preds = %if.else.10.i.i, %if.end.i.i
  %kwargs.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 2, !dbg !797
  %13 = load %struct._object*, %struct._object** %kwargs.i.i, align 8, !dbg !797, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !409, metadata !554) #1, !dbg !797
  %cmp17.i.i = icmp eq %struct._object* %13, null, !dbg !798
  br i1 %cmp17.i.i, label %atexit_delete_cb.exit.i, label %do.body.19.i.i, !dbg !799

do.body.19.i.i:                                   ; preds = %if.end.13.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !411, metadata !554) #1, !dbg !800
  %ob_refcnt21.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !801
  %14 = load i64, i64* %ob_refcnt21.i.i, align 8, !dbg !801, !tbaa !619
  %dec22.i.i = add i64 %14, -1, !dbg !801
  store i64 %dec22.i.i, i64* %ob_refcnt21.i.i, align 8, !dbg !801, !tbaa !619
  %cmp23.i.i = icmp eq i64 %dec22.i.i, 0, !dbg !801
  br i1 %cmp23.i.i, label %if.else.25.i.i, label %atexit_delete_cb.exit.i, !dbg !802

if.else.25.i.i:                                   ; preds = %do.body.19.i.i
  %ob_type26.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !803
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i.i, align 8, !dbg !803, !tbaa !625
  %tp_dealloc27.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !803
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i.i, align 8, !dbg !803, !tbaa !626
  tail call void %16(%struct._object* %13) #1, !dbg !803
  br label %atexit_delete_cb.exit.i, !dbg !792

atexit_delete_cb.exit.i:                          ; preds = %if.else.25.i.i, %do.body.19.i.i, %if.end.13.i.i
  %17 = bitcast %struct.atexit_callback* %4 to i8*, !dbg !804
  tail call void @PyMem_Free(i8* %17) #1, !dbg !805
  %.pre.i = load i32, i32* %0, align 4, !dbg !775, !tbaa !570
  br label %for.inc.i, !dbg !806

for.inc.i:                                        ; preds = %atexit_delete_cb.exit.i, %for.body.i
  %18 = phi i32 [ %2, %for.body.i ], [ %.pre.i, %atexit_delete_cb.exit.i ], !dbg !775
  %inc.i = add i32 %i.012.i, 1, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !397, metadata !554) #1, !dbg !773
  %cmp.i = icmp slt i32 %inc.i, %18, !dbg !776
  br i1 %cmp.i, label %for.body.i, label %atexit_cleanup.exit.loopexit, !dbg !777

atexit_cleanup.exit.loopexit:                     ; preds = %for.inc.i
  br label %atexit_cleanup.exit, !dbg !808

atexit_cleanup.exit:                              ; preds = %atexit_cleanup.exit.loopexit, %entry
  store i32 0, i32* %0, align 4, !dbg !808, !tbaa !570
  ret i32 0, !dbg !809
}

; Function Attrs: nounwind uwtable
define internal void @atexit_free(%struct._object* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !460, metadata !554), !dbg !810
  %call = tail call i8* @PyModule_GetState(%struct._object* %m) #1, !dbg !811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !397, metadata !554) #1, !dbg !812
  %ncallbacks.i = getelementptr inbounds i8, i8* %call, i64 8, !dbg !814
  %0 = bitcast i8* %ncallbacks.i to i32*, !dbg !814
  %1 = load i32, i32* %0, align 4, !dbg !814, !tbaa !570
  %cmp.11.i = icmp sgt i32 %1, 0, !dbg !815
  br i1 %cmp.11.i, label %for.body.lr.ph.i, label %atexit_cleanup.exit, !dbg !816

for.body.lr.ph.i:                                 ; preds = %entry
  %atexit_callbacks.i = bitcast i8* %call to %struct.atexit_callback***, !dbg !817
  br label %for.body.i, !dbg !816

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %2 = phi i32 [ %1, %for.body.lr.ph.i ], [ %18, %for.inc.i ], !dbg !818
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ], !dbg !818
  %idxprom.i = sext i32 %i.012.i to i64, !dbg !819
  %3 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks.i, align 8, !dbg !818, !tbaa !574
  %arrayidx.i = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %3, i64 %idxprom.i, !dbg !819
  %4 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !820, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !396, metadata !554) #1, !dbg !822
  %cmp1.i = icmp eq %struct.atexit_callback* %4, null, !dbg !823
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i, !dbg !824

if.end.i:                                         ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !404, metadata !554) #1, !dbg !825
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !826, !tbaa !583
  %func.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 0, !dbg !827
  %5 = load %struct._object*, %struct._object** %func.i.i, align 8, !dbg !827, !tbaa !604
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !405, metadata !554) #1, !dbg !827
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !828
  %6 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !828, !tbaa !619
  %dec.i.i = add i64 %6, -1, !dbg !828
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !828, !tbaa !619
  %cmp.i.i = icmp eq i64 %dec.i.i, 0, !dbg !828
  br i1 %cmp.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !829

if.else.i.i:                                      ; preds = %if.end.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !830
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !830, !tbaa !625
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !830
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !830, !tbaa !626
  tail call void %8(%struct._object* %5) #1, !dbg !830
  br label %if.end.i.i, !dbg !831

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i
  %args.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 1, !dbg !832
  %9 = load %struct._object*, %struct._object** %args.i.i, align 8, !dbg !832, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !407, metadata !554) #1, !dbg !832
  %ob_refcnt6.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !833
  %10 = load i64, i64* %ob_refcnt6.i.i, align 8, !dbg !833, !tbaa !619
  %dec7.i.i = add i64 %10, -1, !dbg !833
  store i64 %dec7.i.i, i64* %ob_refcnt6.i.i, align 8, !dbg !833, !tbaa !619
  %cmp8.i.i = icmp eq i64 %dec7.i.i, 0, !dbg !833
  br i1 %cmp8.i.i, label %if.else.10.i.i, label %if.end.13.i.i, !dbg !834

if.else.10.i.i:                                   ; preds = %if.end.i.i
  %ob_type11.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !835
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11.i.i, align 8, !dbg !835, !tbaa !625
  %tp_dealloc12.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !835
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12.i.i, align 8, !dbg !835, !tbaa !626
  tail call void %12(%struct._object* %9) #1, !dbg !835
  br label %if.end.13.i.i, !dbg !831

if.end.13.i.i:                                    ; preds = %if.else.10.i.i, %if.end.i.i
  %kwargs.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 2, !dbg !836
  %13 = load %struct._object*, %struct._object** %kwargs.i.i, align 8, !dbg !836, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !409, metadata !554) #1, !dbg !836
  %cmp17.i.i = icmp eq %struct._object* %13, null, !dbg !837
  br i1 %cmp17.i.i, label %atexit_delete_cb.exit.i, label %do.body.19.i.i, !dbg !838

do.body.19.i.i:                                   ; preds = %if.end.13.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !411, metadata !554) #1, !dbg !839
  %ob_refcnt21.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !840
  %14 = load i64, i64* %ob_refcnt21.i.i, align 8, !dbg !840, !tbaa !619
  %dec22.i.i = add i64 %14, -1, !dbg !840
  store i64 %dec22.i.i, i64* %ob_refcnt21.i.i, align 8, !dbg !840, !tbaa !619
  %cmp23.i.i = icmp eq i64 %dec22.i.i, 0, !dbg !840
  br i1 %cmp23.i.i, label %if.else.25.i.i, label %atexit_delete_cb.exit.i, !dbg !841

if.else.25.i.i:                                   ; preds = %do.body.19.i.i
  %ob_type26.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !842
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i.i, align 8, !dbg !842, !tbaa !625
  %tp_dealloc27.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !842
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i.i, align 8, !dbg !842, !tbaa !626
  tail call void %16(%struct._object* %13) #1, !dbg !842
  br label %atexit_delete_cb.exit.i, !dbg !831

atexit_delete_cb.exit.i:                          ; preds = %if.else.25.i.i, %do.body.19.i.i, %if.end.13.i.i
  %17 = bitcast %struct.atexit_callback* %4 to i8*, !dbg !843
  tail call void @PyMem_Free(i8* %17) #1, !dbg !844
  %.pre.i = load i32, i32* %0, align 4, !dbg !814, !tbaa !570
  br label %for.inc.i, !dbg !845

for.inc.i:                                        ; preds = %atexit_delete_cb.exit.i, %for.body.i
  %18 = phi i32 [ %2, %for.body.i ], [ %.pre.i, %atexit_delete_cb.exit.i ], !dbg !814
  %inc.i = add i32 %i.012.i, 1, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !397, metadata !554) #1, !dbg !812
  %cmp.i = icmp slt i32 %inc.i, %18, !dbg !815
  br i1 %cmp.i, label %for.body.i, label %atexit_cleanup.exit.loopexit, !dbg !816

atexit_cleanup.exit.loopexit:                     ; preds = %for.inc.i
  br label %atexit_cleanup.exit, !dbg !847

atexit_cleanup.exit:                              ; preds = %atexit_cleanup.exit.loopexit, %entry
  store i32 0, i32* %0, align 4, !dbg !847, !tbaa !570
  %19 = bitcast i8* %call to i8**, !dbg !848
  %20 = load i8*, i8** %19, align 8, !dbg !848, !tbaa !574
  tail call void @PyMem_Free(i8* %20) #1, !dbg !849
  ret void, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_register(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !376, metadata !554), !dbg !851
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !377, metadata !554), !dbg !852
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !378, metadata !554), !dbg !853
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !381, metadata !554), !dbg !854
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !855
  %ncallbacks = getelementptr inbounds i8, i8* %call, i64 8, !dbg !856
  %0 = bitcast i8* %ncallbacks to i32*, !dbg !856
  %1 = load i32, i32* %0, align 4, !dbg !856, !tbaa !570
  %callback_len = getelementptr inbounds i8, i8* %call, i64 12, !dbg !857
  %2 = bitcast i8* %callback_len to i32*, !dbg !857
  %3 = load i32, i32* %2, align 4, !dbg !857, !tbaa !562
  %cmp = icmp slt i32 %1, %3, !dbg !858
  br i1 %cmp, label %if.end.9, label %if.then, !dbg !859

if.then:                                          ; preds = %entry
  %add = add i32 %3, 16, !dbg !860
  store i32 %add, i32* %2, align 4, !dbg !860, !tbaa !562
  %4 = bitcast i8* %call to i8**, !dbg !861
  %5 = load i8*, i8** %4, align 8, !dbg !861, !tbaa !574
  %conv = sext i32 %add to i64, !dbg !862
  %mul = shl nsw i64 %conv, 3, !dbg !863
  %call3 = tail call i8* @PyMem_Realloc(i8* %5, i64 %mul) #1, !dbg !864
  %cmp4 = icmp eq i8* %call3, null, !dbg !865
  br i1 %cmp4, label %cleanup, label %cleanup.thread, !dbg !867

cleanup.thread:                                   ; preds = %if.then
  store i8* %call3, i8** %4, align 8, !dbg !868, !tbaa !574
  br label %if.end.9

cleanup:                                          ; preds = %if.then
  %call7 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !869
  br label %cleanup.45

if.end.9:                                         ; preds = %cleanup.thread, %entry
  %6 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !870
  %7 = load i64, i64* %6, align 8, !dbg !870, !tbaa !872
  %cmp10 = icmp eq i64 %7, 0, !dbg !873
  br i1 %cmp10, label %if.then.12, label %if.end.13, !dbg !874

if.then.12:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !875, !tbaa !583
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !877
  br label %cleanup.45, !dbg !878

if.end.13:                                        ; preds = %if.end.9
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !879
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !879
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !879, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !381, metadata !554), !dbg !854
  %call14 = tail call i32 @PyCallable_Check(%struct._object* %9) #1, !dbg !880
  %tobool = icmp eq i32 %call14, 0, !dbg !880
  br i1 %tobool, label %if.then.15, label %if.end.16, !dbg !882

if.then.15:                                       ; preds = %if.end.13
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !883, !tbaa !583
  tail call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !885
  br label %cleanup.45, !dbg !886

if.end.16:                                        ; preds = %if.end.13
  %call17 = tail call i8* @PyMem_Malloc(i64 24) #1, !dbg !887
  %cmp18 = icmp eq i8* %call17, null, !dbg !888
  br i1 %cmp18, label %if.then.20, label %if.end.22, !dbg !890

if.then.20:                                       ; preds = %if.end.16
  %call21 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !891
  br label %cleanup.45, !dbg !892

if.end.22:                                        ; preds = %if.end.16
  %11 = load i64, i64* %6, align 8, !dbg !893, !tbaa !872
  %call24 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 %11) #1, !dbg !894
  %args25 = getelementptr inbounds i8, i8* %call17, i64 8, !dbg !895
  %12 = bitcast i8* %args25 to %struct._object**, !dbg !895
  store %struct._object* %call24, %struct._object** %12, align 8, !dbg !896, !tbaa !607
  %cmp27 = icmp eq %struct._object* %call24, null, !dbg !897
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !899

if.then.29:                                       ; preds = %if.end.22
  tail call void @PyMem_Free(i8* %call17) #1, !dbg !900
  br label %cleanup.45, !dbg !902

if.end.30:                                        ; preds = %if.end.22
  %func31 = bitcast i8* %call17 to %struct._object**, !dbg !903
  store %struct._object* %9, %struct._object** %func31, align 8, !dbg !904, !tbaa !604
  %kwargs32 = getelementptr inbounds i8, i8* %call17, i64 16, !dbg !905
  %13 = bitcast i8* %kwargs32 to %struct._object**, !dbg !905
  store %struct._object* %kwargs, %struct._object** %13, align 8, !dbg !906, !tbaa !609
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !907
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !907, !tbaa !619
  %inc = add i64 %14, 1, !dbg !907
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !907, !tbaa !619
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !385, metadata !554), !dbg !908
  %cmp33 = icmp eq %struct._object* %kwargs, null, !dbg !910
  br i1 %cmp33, label %if.end.38, label %if.then.35, !dbg !912

if.then.35:                                       ; preds = %if.end.30
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %kwargs, i64 0, i32 0, !dbg !913
  %15 = load i64, i64* %ob_refcnt36, align 8, !dbg !913, !tbaa !619
  %inc37 = add i64 %15, 1, !dbg !913
  store i64 %inc37, i64* %ob_refcnt36, align 8, !dbg !913, !tbaa !619
  %.pre = load i64, i64* %ob_refcnt, align 8, !dbg !915, !tbaa !619
  br label %if.end.38, !dbg !913

if.end.38:                                        ; preds = %if.end.30, %if.then.35
  %16 = phi i64 [ %inc, %if.end.30 ], [ %.pre, %if.then.35 ], !dbg !915
  %17 = load i32, i32* %0, align 4, !dbg !916, !tbaa !570
  %inc40 = add i32 %17, 1, !dbg !916
  store i32 %inc40, i32* %0, align 4, !dbg !916, !tbaa !570
  %idxprom = sext i32 %17 to i64, !dbg !917
  %atexit_callbacks41 = bitcast i8* %call to %struct.atexit_callback***, !dbg !918
  %18 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks41, align 8, !dbg !918, !tbaa !574
  %arrayidx42 = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %18, i64 %idxprom, !dbg !917
  %19 = bitcast %struct.atexit_callback** %arrayidx42 to i8**, !dbg !919
  store i8* %call17, i8** %19, align 8, !dbg !919, !tbaa !583
  %inc44 = add i64 %16, 1, !dbg !915
  store i64 %inc44, i64* %ob_refcnt, align 8, !dbg !915, !tbaa !619
  br label %cleanup.45, !dbg !920

cleanup.45:                                       ; preds = %cleanup, %if.end.38, %if.then.29, %if.then.20, %if.then.15, %if.then.12
  %retval.1 = phi %struct._object* [ null, %if.then.12 ], [ %call21, %if.then.20 ], [ null, %if.then.29 ], [ %9, %if.end.38 ], [ null, %if.then.15 ], [ %call7, %cleanup ]
  ret %struct._object* %retval.1, !dbg !921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_clear(%struct._object* %self, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !389, metadata !554), !dbg !922
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !390, metadata !554), !dbg !923
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !397, metadata !554) #1, !dbg !925
  %ncallbacks.i = getelementptr inbounds i8, i8* %call, i64 8, !dbg !927
  %0 = bitcast i8* %ncallbacks.i to i32*, !dbg !927
  %1 = load i32, i32* %0, align 4, !dbg !927, !tbaa !570
  %cmp.11.i = icmp sgt i32 %1, 0, !dbg !928
  br i1 %cmp.11.i, label %for.body.lr.ph.i, label %atexit_cleanup.exit, !dbg !929

for.body.lr.ph.i:                                 ; preds = %entry
  %atexit_callbacks.i = bitcast i8* %call to %struct.atexit_callback***, !dbg !930
  br label %for.body.i, !dbg !929

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %2 = phi i32 [ %1, %for.body.lr.ph.i ], [ %18, %for.inc.i ], !dbg !931
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ], !dbg !931
  %idxprom.i = sext i32 %i.012.i to i64, !dbg !932
  %3 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks.i, align 8, !dbg !931, !tbaa !574
  %arrayidx.i = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %3, i64 %idxprom.i, !dbg !932
  %4 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !933, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !396, metadata !554) #1, !dbg !935
  %cmp1.i = icmp eq %struct.atexit_callback* %4, null, !dbg !936
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i, !dbg !937

if.end.i:                                         ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %4, i64 0, metadata !404, metadata !554) #1, !dbg !938
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !939, !tbaa !583
  %func.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 0, !dbg !940
  %5 = load %struct._object*, %struct._object** %func.i.i, align 8, !dbg !940, !tbaa !604
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !405, metadata !554) #1, !dbg !940
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !941
  %6 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !941, !tbaa !619
  %dec.i.i = add i64 %6, -1, !dbg !941
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !941, !tbaa !619
  %cmp.i.i = icmp eq i64 %dec.i.i, 0, !dbg !941
  br i1 %cmp.i.i, label %if.else.i.i, label %if.end.i.i, !dbg !942

if.else.i.i:                                      ; preds = %if.end.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !943
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !943, !tbaa !625
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !943
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !943, !tbaa !626
  tail call void %8(%struct._object* %5) #1, !dbg !943
  br label %if.end.i.i, !dbg !944

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i
  %args.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 1, !dbg !945
  %9 = load %struct._object*, %struct._object** %args.i.i, align 8, !dbg !945, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !407, metadata !554) #1, !dbg !945
  %ob_refcnt6.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !946
  %10 = load i64, i64* %ob_refcnt6.i.i, align 8, !dbg !946, !tbaa !619
  %dec7.i.i = add i64 %10, -1, !dbg !946
  store i64 %dec7.i.i, i64* %ob_refcnt6.i.i, align 8, !dbg !946, !tbaa !619
  %cmp8.i.i = icmp eq i64 %dec7.i.i, 0, !dbg !946
  br i1 %cmp8.i.i, label %if.else.10.i.i, label %if.end.13.i.i, !dbg !947

if.else.10.i.i:                                   ; preds = %if.end.i.i
  %ob_type11.i.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !948
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11.i.i, align 8, !dbg !948, !tbaa !625
  %tp_dealloc12.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !948
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12.i.i, align 8, !dbg !948, !tbaa !626
  tail call void %12(%struct._object* %9) #1, !dbg !948
  br label %if.end.13.i.i, !dbg !944

if.end.13.i.i:                                    ; preds = %if.else.10.i.i, %if.end.i.i
  %kwargs.i.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %4, i64 0, i32 2, !dbg !949
  %13 = load %struct._object*, %struct._object** %kwargs.i.i, align 8, !dbg !949, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !409, metadata !554) #1, !dbg !949
  %cmp17.i.i = icmp eq %struct._object* %13, null, !dbg !950
  br i1 %cmp17.i.i, label %atexit_delete_cb.exit.i, label %do.body.19.i.i, !dbg !951

do.body.19.i.i:                                   ; preds = %if.end.13.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !411, metadata !554) #1, !dbg !952
  %ob_refcnt21.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !953
  %14 = load i64, i64* %ob_refcnt21.i.i, align 8, !dbg !953, !tbaa !619
  %dec22.i.i = add i64 %14, -1, !dbg !953
  store i64 %dec22.i.i, i64* %ob_refcnt21.i.i, align 8, !dbg !953, !tbaa !619
  %cmp23.i.i = icmp eq i64 %dec22.i.i, 0, !dbg !953
  br i1 %cmp23.i.i, label %if.else.25.i.i, label %atexit_delete_cb.exit.i, !dbg !954

if.else.25.i.i:                                   ; preds = %do.body.19.i.i
  %ob_type26.i.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !955
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i.i, align 8, !dbg !955, !tbaa !625
  %tp_dealloc27.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !955
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i.i, align 8, !dbg !955, !tbaa !626
  tail call void %16(%struct._object* %13) #1, !dbg !955
  br label %atexit_delete_cb.exit.i, !dbg !944

atexit_delete_cb.exit.i:                          ; preds = %if.else.25.i.i, %do.body.19.i.i, %if.end.13.i.i
  %17 = bitcast %struct.atexit_callback* %4 to i8*, !dbg !956
  tail call void @PyMem_Free(i8* %17) #1, !dbg !957
  %.pre.i = load i32, i32* %0, align 4, !dbg !927, !tbaa !570
  br label %for.inc.i, !dbg !958

for.inc.i:                                        ; preds = %atexit_delete_cb.exit.i, %for.body.i
  %18 = phi i32 [ %2, %for.body.i ], [ %.pre.i, %atexit_delete_cb.exit.i ], !dbg !927
  %inc.i = add i32 %i.012.i, 1, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !397, metadata !554) #1, !dbg !925
  %cmp.i = icmp slt i32 %inc.i, %18, !dbg !928
  br i1 %cmp.i, label %for.body.i, label %atexit_cleanup.exit.loopexit, !dbg !929

atexit_cleanup.exit.loopexit:                     ; preds = %for.inc.i
  br label %atexit_cleanup.exit, !dbg !960

atexit_cleanup.exit:                              ; preds = %atexit_cleanup.exit.loopexit, %entry
  store i32 0, i32* %0, align 4, !dbg !960, !tbaa !570
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !961, !tbaa !619
  %inc = add i64 %19, 1, !dbg !961
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !961, !tbaa !619
  ret %struct._object* @_Py_NoneStruct, !dbg !961
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_unregister(%struct._object* %self, %struct._object* %func) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !416, metadata !554), !dbg !962
  tail call void @llvm.dbg.value(metadata %struct._object* %func, i64 0, metadata !417, metadata !554), !dbg !963
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !420, metadata !554), !dbg !965
  %ncallbacks = getelementptr inbounds i8, i8* %call, i64 8, !dbg !966
  %0 = bitcast i8* %ncallbacks to i32*, !dbg !966
  %1 = load i32, i32* %0, align 4, !dbg !966, !tbaa !570
  %cmp.24 = icmp sgt i32 %1, 0, !dbg !969
  br i1 %cmp.24, label %for.body.lr.ph, label %for.end, !dbg !970

for.body.lr.ph:                                   ; preds = %entry
  %atexit_callbacks = bitcast i8* %call to %struct.atexit_callback***, !dbg !971
  br label %for.body, !dbg !970

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.025 to i64, !dbg !973
  %2 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !dbg !971, !tbaa !574
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %2, i64 %idxprom, !dbg !973
  %3 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8, !dbg !973, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %3, i64 0, metadata !419, metadata !554), !dbg !974
  %cmp1 = icmp eq %struct.atexit_callback* %3, null, !dbg !975
  br i1 %cmp1, label %for.inc, label %if.end, !dbg !977

if.end:                                           ; preds = %for.body
  %func2 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %3, i64 0, i32 0, !dbg !978
  %4 = load %struct._object*, %struct._object** %func2, align 8, !dbg !978, !tbaa !604
  %call3 = tail call i32 @PyObject_RichCompareBool(%struct._object* %4, %struct._object* %func, i32 2) #1, !dbg !979
  tail call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !421, metadata !554), !dbg !980
  %cmp4 = icmp slt i32 %call3, 0, !dbg !981
  br i1 %cmp4, label %cleanup.loopexit, label %if.end.6, !dbg !983

if.end.6:                                         ; preds = %if.end
  %tobool = icmp eq i32 %call3, 0, !dbg !984
  br i1 %tobool, label %for.inc, label %if.then.7, !dbg !986

if.then.7:                                        ; preds = %if.end.6
  %.idx.val = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8, !tbaa !574
  %arrayidx.i = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %.idx.val, i64 %idxprom, !dbg !987
  %5 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !987, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.atexit_callback* %5, i64 0, metadata !404, metadata !554) #1, !dbg !989
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx.i, align 8, !dbg !990, !tbaa !583
  %func.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %5, i64 0, i32 0, !dbg !991
  %6 = load %struct._object*, %struct._object** %func.i, align 8, !dbg !991, !tbaa !604
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !405, metadata !554) #1, !dbg !991
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !992
  %7 = load i64, i64* %ob_refcnt.i, align 8, !dbg !992, !tbaa !619
  %dec.i = add i64 %7, -1, !dbg !992
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !992, !tbaa !619
  %cmp.i = icmp eq i64 %dec.i, 0, !dbg !992
  br i1 %cmp.i, label %if.else.i, label %if.end.i, !dbg !993

if.else.i:                                        ; preds = %if.then.7
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !994
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !994, !tbaa !625
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !994
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !994, !tbaa !626
  tail call void %9(%struct._object* %6) #1, !dbg !994
  br label %if.end.i, !dbg !995

if.end.i:                                         ; preds = %if.else.i, %if.then.7
  %args.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %5, i64 0, i32 1, !dbg !996
  %10 = load %struct._object*, %struct._object** %args.i, align 8, !dbg !996, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !407, metadata !554) #1, !dbg !996
  %ob_refcnt6.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !997
  %11 = load i64, i64* %ob_refcnt6.i, align 8, !dbg !997, !tbaa !619
  %dec7.i = add i64 %11, -1, !dbg !997
  store i64 %dec7.i, i64* %ob_refcnt6.i, align 8, !dbg !997, !tbaa !619
  %cmp8.i = icmp eq i64 %dec7.i, 0, !dbg !997
  br i1 %cmp8.i, label %if.else.10.i, label %if.end.13.i, !dbg !998

if.else.10.i:                                     ; preds = %if.end.i
  %ob_type11.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !999
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type11.i, align 8, !dbg !999, !tbaa !625
  %tp_dealloc12.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !999
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12.i, align 8, !dbg !999, !tbaa !626
  tail call void %13(%struct._object* %10) #1, !dbg !999
  br label %if.end.13.i, !dbg !995

if.end.13.i:                                      ; preds = %if.else.10.i, %if.end.i
  %kwargs.i = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %5, i64 0, i32 2, !dbg !1000
  %14 = load %struct._object*, %struct._object** %kwargs.i, align 8, !dbg !1000, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !409, metadata !554) #1, !dbg !1000
  %cmp17.i = icmp eq %struct._object* %14, null, !dbg !1001
  br i1 %cmp17.i, label %atexit_delete_cb.exit, label %do.body.19.i, !dbg !1002

do.body.19.i:                                     ; preds = %if.end.13.i
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !411, metadata !554) #1, !dbg !1003
  %ob_refcnt21.i = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1004
  %15 = load i64, i64* %ob_refcnt21.i, align 8, !dbg !1004, !tbaa !619
  %dec22.i = add i64 %15, -1, !dbg !1004
  store i64 %dec22.i, i64* %ob_refcnt21.i, align 8, !dbg !1004, !tbaa !619
  %cmp23.i = icmp eq i64 %dec22.i, 0, !dbg !1004
  br i1 %cmp23.i, label %if.else.25.i, label %atexit_delete_cb.exit, !dbg !1005

if.else.25.i:                                     ; preds = %do.body.19.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1006
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !1006, !tbaa !625
  %tp_dealloc27.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1006
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i, align 8, !dbg !1006, !tbaa !626
  tail call void %17(%struct._object* %14) #1, !dbg !1006
  br label %atexit_delete_cb.exit, !dbg !995

atexit_delete_cb.exit:                            ; preds = %if.end.13.i, %do.body.19.i, %if.else.25.i
  %18 = bitcast %struct.atexit_callback* %5 to i8*, !dbg !1007
  tail call void @PyMem_Free(i8* %18) #1, !dbg !1008
  br label %for.inc, !dbg !995

for.inc:                                          ; preds = %if.end.6, %atexit_delete_cb.exit, %for.body
  %inc = add i32 %i.025, 1, !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !420, metadata !554), !dbg !965
  %19 = load i32, i32* %0, align 4, !dbg !966, !tbaa !570
  %cmp = icmp slt i32 %inc, %19, !dbg !969
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !970

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !1010

for.end:                                          ; preds = %for.end.loopexit, %entry
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1010, !tbaa !619
  %inc9 = add i64 %20, 1, !dbg !1010
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1010, !tbaa !619
  br label %cleanup, !dbg !1010

cleanup.loopexit:                                 ; preds = %if.end
  br label %cleanup, !dbg !1011

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %for.end ], [ null, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !1011
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_run_exitfuncs(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !424, metadata !554), !dbg !1012
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !425, metadata !554), !dbg !1013
  tail call void @atexit_callfuncs(), !dbg !1014
  %call = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1015
  %tobool = icmp eq %struct._object* %call, null, !dbg !1015
  br i1 %tobool, label %if.end, label %return, !dbg !1017

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1018, !tbaa !619
  %inc = add i64 %0, 1, !dbg !1018
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1018, !tbaa !619
  br label %return, !dbg !1018

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1019
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_ncallbacks(%struct._object* %self, %struct._object* nocapture readnone %unused) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !428, metadata !554), !dbg !1020
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !429, metadata !554), !dbg !1021
  %call = tail call i8* @PyModule_GetState(%struct._object* %self) #1, !dbg !1022
  %ncallbacks = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1023
  %0 = bitcast i8* %ncallbacks to i32*, !dbg !1023
  %1 = load i32, i32* %0, align 4, !dbg !1023, !tbaa !570
  %conv = sext i32 %1 to i64, !dbg !1024
  %call1 = tail call %struct._object* @PyLong_FromSsize_t(i64 %conv) #1, !dbg !1025
  ret %struct._object* %call1, !dbg !1026
}

declare i8* @PyMem_Realloc(i8*, i64) #2

declare %struct._object* @PyErr_NoMemory() #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @PyCallable_Check(%struct._object*) #2

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #2

declare void @PyMem_Free(i8*) #2

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #2

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare void @PySys_WriteStderr(i8*, ...) #2

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #2

declare void @PyErr_Display(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!550, !551}
!llvm.ident = !{!552}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !367, globals: !498)
!1 = !DIFile(filename: "./Modules/atexitmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !105, !22, !10, !358, !359, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "atexitmodule_state", file: !1, line: 29, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 128, align: 64, elements: !8)
!8 = !{!9, !356, !357}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "atexit_callbacks", scope: !7, file: !1, line: 26, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "atexit_callback", file: !1, line: 23, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 19, size: 192, align: 64, elements: !14)
!14 = !{!15, !354, !355}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !13, file: !1, line: 20, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !32)
!32 = !{!33, !39, !43, !44, !45, !50, !113, !118, !123, !124, !129, !181, !212, !224, !230, !231, !232, !234, !236, !267, !268, !269, !278, !279, !284, !285, !287, !289, !299, !302, !320, !321, !322, !324, !326, !327, !329, !334, !339, !344, !345, !346, !347, !348, !349, !350, !351, !353}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !18, line: 335, baseType: !34, size: 192, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !31, file: !18, line: 336, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !31, file: !18, line: 341, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !16}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !31, file: !18, line: 342, baseType: !51, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !16, !56, !55}
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 246, size: 1728, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!60 = !{!61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !82, !83, !84, !85, !87, !89, !91, !95, !98, !100, !101, !102, !103, !104, !108, !109}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 247, baseType: !55, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 252, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 253, baseType: !63, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 254, baseType: !63, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 255, baseType: !63, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 256, baseType: !63, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 257, baseType: !63, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 258, baseType: !63, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 259, baseType: !63, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 261, baseType: !63, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 262, baseType: !63, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 263, baseType: !63, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 265, baseType: !75, size: 64, align: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 161, size: 192, align: 64, elements: !77)
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !76, file: !59, line: 162, baseType: !75, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !76, file: !59, line: 163, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !76, file: !59, line: 167, baseType: !55, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 267, baseType: !80, size: 64, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 269, baseType: !55, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 273, baseType: !55, size: 32, align: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 275, baseType: !86, size: 64, align: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !28)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 279, baseType: !88, size: 16, align: 16, offset: 1024)
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 280, baseType: !90, size: 8, align: 8, offset: 1040)
!90 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 281, baseType: !92, size: 8, align: 8, offset: 1048)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 285, baseType: !96, size: 64, align: 64, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 155, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 294, baseType: !99, size: 64, align: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !28)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !58, file: !59, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !58, file: !59, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !58, file: !59, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !58, file: !59, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 307, baseType: !105, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 309, baseType: !55, size: 32, align: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 311, baseType: !110, size: 160, align: 8, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !31, file: !18, line: 343, baseType: !114, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !16, !63}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !31, file: !18, line: 344, baseType: !119, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!55, !16, !63, !16}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !31, file: !18, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !31, file: !18, line: 346, baseType: !125, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!16, !16}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !31, file: !18, line: 350, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !133)
!133 = !{!134, !139, !140, !141, !142, !143, !148, !150, !151, !152, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !132, file: !18, line: 241, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!16, !16, !16}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !132, file: !18, line: 242, baseType: !135, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !132, file: !18, line: 243, baseType: !135, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !132, file: !18, line: 244, baseType: !135, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !132, file: !18, line: 245, baseType: !135, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !132, file: !18, line: 246, baseType: !144, size: 64, align: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!16, !16, !16, !16}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !132, file: !18, line: 247, baseType: !149, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !126)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !132, file: !18, line: 248, baseType: !149, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !132, file: !18, line: 249, baseType: !149, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !132, file: !18, line: 250, baseType: !153, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!55, !16}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !132, file: !18, line: 251, baseType: !149, size: 64, align: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !132, file: !18, line: 252, baseType: !135, size: 64, align: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !132, file: !18, line: 253, baseType: !135, size: 64, align: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !132, file: !18, line: 254, baseType: !135, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !132, file: !18, line: 255, baseType: !135, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !132, file: !18, line: 256, baseType: !135, size: 64, align: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !132, file: !18, line: 257, baseType: !149, size: 64, align: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !132, file: !18, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !132, file: !18, line: 259, baseType: !149, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !132, file: !18, line: 261, baseType: !135, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !132, file: !18, line: 262, baseType: !135, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !132, file: !18, line: 263, baseType: !135, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !132, file: !18, line: 264, baseType: !135, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !132, file: !18, line: 265, baseType: !144, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !132, file: !18, line: 266, baseType: !135, size: 64, align: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !132, file: !18, line: 267, baseType: !135, size: 64, align: 64, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !132, file: !18, line: 268, baseType: !135, size: 64, align: 64, offset: 1664)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !132, file: !18, line: 269, baseType: !135, size: 64, align: 64, offset: 1728)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !132, file: !18, line: 270, baseType: !135, size: 64, align: 64, offset: 1792)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !132, file: !18, line: 272, baseType: !135, size: 64, align: 64, offset: 1856)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !132, file: !18, line: 273, baseType: !135, size: 64, align: 64, offset: 1920)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !132, file: !18, line: 274, baseType: !135, size: 64, align: 64, offset: 1984)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !132, file: !18, line: 275, baseType: !135, size: 64, align: 64, offset: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !132, file: !18, line: 277, baseType: !149, size: 64, align: 64, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !31, file: !18, line: 351, baseType: !182, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !185)
!185 = !{!186, !191, !192, !197, !198, !199, !204, !205, !210, !211}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !184, file: !18, line: 281, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!22, !16}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !184, file: !18, line: 282, baseType: !135, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !184, file: !18, line: 283, baseType: !193, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!16, !16, !22}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !184, file: !18, line: 284, baseType: !193, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !184, file: !18, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !184, file: !18, line: 286, baseType: !200, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!55, !16, !22, !16}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !184, file: !18, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !184, file: !18, line: 288, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!55, !16, !16}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !184, file: !18, line: 290, baseType: !135, size: 64, align: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !184, file: !18, line: 291, baseType: !193, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !31, file: !18, line: 352, baseType: !213, size: 64, align: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !215, file: !18, line: 295, baseType: !187, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !215, file: !18, line: 296, baseType: !135, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !215, file: !18, line: 297, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!55, !16, !16, !16}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !31, file: !18, line: 356, baseType: !225, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !16}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !31, file: !18, line: 357, baseType: !144, size: 64, align: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !31, file: !18, line: 358, baseType: !125, size: 64, align: 64, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !31, file: !18, line: 359, baseType: !233, size: 64, align: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !136)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !31, file: !18, line: 360, baseType: !235, size: 64, align: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !221)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !31, file: !18, line: 363, baseType: !237, size: 64, align: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !240)
!240 = !{!241, !262}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !239, file: !18, line: 302, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!55, !16, !246, !55}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !18, line: 179, baseType: !4, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !248, file: !18, line: 180, baseType: !16, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !248, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !248, file: !18, line: 184, baseType: !55, size: 32, align: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !248, file: !18, line: 185, baseType: !55, size: 32, align: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !248, file: !18, line: 186, baseType: !63, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !248, file: !18, line: 187, baseType: !258, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !248, file: !18, line: 188, baseType: !258, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !248, file: !18, line: 189, baseType: !258, size: 64, align: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !248, file: !18, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !239, file: !18, line: 303, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !16, !246}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !31, file: !18, line: 366, baseType: !107, size: 64, align: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !31, file: !18, line: 368, baseType: !40, size: 64, align: 64, offset: 1408)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !31, file: !18, line: 372, baseType: !270, size: 64, align: 64, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!55, !16, !274, !4}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!55, !16, !4}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !31, file: !18, line: 375, baseType: !153, size: 64, align: 64, offset: 1536)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !31, file: !18, line: 379, baseType: !280, size: 64, align: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !16, !16, !55}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !31, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !31, file: !18, line: 385, baseType: !286, size: 64, align: 64, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !126)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !31, file: !18, line: 386, baseType: !288, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !126)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !31, file: !18, line: 389, baseType: !290, size: 64, align: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !292, line: 40, size: 256, align: 64, elements: !293)
!292 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!293 = !{!294, !295, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !291, file: !292, line: 41, baseType: !40, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !291, file: !292, line: 42, baseType: !296, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !292, line: 18, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !291, file: !292, line: 43, baseType: !55, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !291, file: !292, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !300, size: 64, align: 64, offset: 1920)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !18, line: 390, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !303, size: 64, align: 64, offset: 1984)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !305, line: 11, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!306 = !{!307, !308, !313, !318, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 12, baseType: !63, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !304, file: !305, line: 13, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !305, line: 8, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!16, !16, !4}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !304, file: !305, line: 14, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !305, line: 9, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!55, !16, !16, !4}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 15, baseType: !63, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !304, file: !305, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !31, file: !18, line: 392, baseType: !30, size: 64, align: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !31, file: !18, line: 393, baseType: !16, size: 64, align: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !31, file: !18, line: 394, baseType: !323, size: 64, align: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !145)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !31, file: !18, line: 395, baseType: !325, size: 64, align: 64, offset: 2240)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !221)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !31, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !31, file: !18, line: 397, baseType: !328, size: 64, align: 64, offset: 2368)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !221)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !31, file: !18, line: 398, baseType: !330, size: 64, align: 64, offset: 2432)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!16, !30, !22}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !31, file: !18, line: 399, baseType: !335, size: 64, align: 64, offset: 2496)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!16, !30, !16, !16}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !31, file: !18, line: 400, baseType: !340, size: 64, align: 64, offset: 2560)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !4}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !31, file: !18, line: 401, baseType: !153, size: 64, align: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !31, file: !18, line: 402, baseType: !16, size: 64, align: 64, offset: 2688)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !31, file: !18, line: 403, baseType: !16, size: 64, align: 64, offset: 2752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !31, file: !18, line: 404, baseType: !16, size: 64, align: 64, offset: 2816)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !31, file: !18, line: 405, baseType: !16, size: 64, align: 64, offset: 2880)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !31, file: !18, line: 406, baseType: !16, size: 64, align: 64, offset: 2944)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !31, file: !18, line: 407, baseType: !46, size: 64, align: 64, offset: 3008)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !31, file: !18, line: 410, baseType: !352, size: 32, align: 32, offset: 3072)
!352 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !31, file: !18, line: 412, baseType: !46, size: 64, align: 64, offset: 3136)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !13, file: !1, line: 21, baseType: !16, size: 64, align: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kwargs", scope: !13, file: !1, line: 22, baseType: !16, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ncallbacks", scope: !7, file: !1, line: 27, baseType: !55, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "callback_len", scope: !7, file: !1, line: 28, baseType: !55, size: 32, align: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !361, line: 33, baseType: !362)
!361 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 25, size: 256, align: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !362, file: !361, line: 26, baseType: !34, size: 192, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !362, file: !361, line: 27, baseType: !366, size: 64, align: 64, offset: 192)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, align: 64, elements: !93)
!367 = !{!368, !374, !387, !391, !398, !414, !422, !426, !431, !454, !458, !462}
!368 = !DISubprogram(name: "PyInit_atexit", scope: !1, file: !1, line: 327, type: !369, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_atexit, variables: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!16}
!371 = !{!372, !373}
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !368, file: !1, line: 329, type: !16)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !368, file: !1, line: 330, type: !5)
!374 = !DISubprogram(name: "atexit_register", scope: !1, file: !1, line: 129, type: !146, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @atexit_register, variables: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !385}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !374, file: !1, line: 129, type: !16)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !374, file: !1, line: 129, type: !16)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !374, file: !1, line: 129, type: !16)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !374, file: !1, line: 131, type: !5)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_callback", scope: !374, file: !1, line: 132, type: !11)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !374, file: !1, line: 133, type: !16)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !383, file: !1, line: 138, type: !10)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 137, column: 57)
!384 = distinct !DILexicalBlock(scope: !374, file: !1, line: 137, column: 9)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !386, file: !1, line: 172, type: !16)
!386 = distinct !DILexicalBlock(scope: !374, file: !1, line: 172, column: 5)
!387 = !DISubprogram(name: "atexit_clear", scope: !1, file: !1, line: 200, type: !137, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_clear, variables: !388)
!388 = !{!389, !390}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !387, file: !1, line: 200, type: !16)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !387, file: !1, line: 200, type: !16)
!391 = !DISubprogram(name: "atexit_cleanup", scope: !1, file: !1, line: 49, type: !392, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !5}
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modstate", arg: 1, scope: !391, file: !1, line: 49, type: !5)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !391, file: !1, line: 51, type: !11)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !391, file: !1, line: 52, type: !55)
!398 = !DISubprogram(name: "atexit_delete_cb", scope: !1, file: !1, line: 35, type: !399, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !5, !55}
!401 = !{!402, !403, !404, !405, !407, !409, !411}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modstate", arg: 1, scope: !398, file: !1, line: 35, type: !5)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !398, file: !1, line: 35, type: !55)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !398, file: !1, line: 37, type: !11)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !1, line: 41, type: !16)
!406 = distinct !DILexicalBlock(scope: !398, file: !1, line: 41, column: 5)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !408, file: !1, line: 42, type: !16)
!408 = distinct !DILexicalBlock(scope: !398, file: !1, line: 42, column: 5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !410, file: !1, line: 43, type: !16)
!410 = distinct !DILexicalBlock(scope: !398, file: !1, line: 43, column: 5)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !412, file: !1, line: 43, type: !16)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 43, column: 5)
!413 = distinct !DILexicalBlock(scope: !410, file: !1, line: 43, column: 5)
!414 = !DISubprogram(name: "atexit_unregister", scope: !1, file: !1, line: 266, type: !137, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_unregister, variables: !415)
!415 = !{!416, !417, !418, !419, !420, !421}
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !414, file: !1, line: 266, type: !16)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !414, file: !1, line: 266, type: !16)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !414, file: !1, line: 268, type: !5)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !414, file: !1, line: 269, type: !11)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !414, file: !1, line: 270, type: !55)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eq", scope: !414, file: !1, line: 270, type: !55)
!422 = !DISubprogram(name: "atexit_run_exitfuncs", scope: !1, file: !1, line: 186, type: !137, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_run_exitfuncs, variables: !423)
!423 = !{!424, !425}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !422, file: !1, line: 186, type: !16)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !422, file: !1, line: 186, type: !16)
!426 = !DISubprogram(name: "atexit_ncallbacks", scope: !1, file: !1, line: 212, type: !137, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @atexit_ncallbacks, variables: !427)
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !426, file: !1, line: 212, type: !16)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !426, file: !1, line: 212, type: !16)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !426, file: !1, line: 214, type: !5)
!431 = !DISubprogram(name: "atexit_m_traverse", scope: !1, file: !1, line: 222, type: !272, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @atexit_m_traverse, variables: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !442, !446, !450}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !431, file: !1, line: 222, type: !16)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !431, file: !1, line: 222, type: !274)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !431, file: !1, line: 222, type: !4)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !431, file: !1, line: 224, type: !55)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !431, file: !1, line: 225, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !439, file: !1, line: 229, type: !11)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 228, column: 48)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 228, column: 5)
!441 = distinct !DILexicalBlock(scope: !431, file: !1, line: 228, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !443, file: !1, line: 232, type: !55)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 232, column: 9)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 232, column: 9)
!445 = distinct !DILexicalBlock(scope: !439, file: !1, line: 232, column: 9)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !447, file: !1, line: 233, type: !55)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 233, column: 9)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 233, column: 9)
!449 = distinct !DILexicalBlock(scope: !439, file: !1, line: 233, column: 9)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !451, file: !1, line: 234, type: !55)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 234, column: 9)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 234, column: 9)
!453 = distinct !DILexicalBlock(scope: !439, file: !1, line: 234, column: 9)
!454 = !DISubprogram(name: "atexit_m_clear", scope: !1, file: !1, line: 240, type: !155, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @atexit_m_clear, variables: !455)
!455 = !{!456, !457}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !454, file: !1, line: 240, type: !16)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !454, file: !1, line: 242, type: !5)
!458 = !DISubprogram(name: "atexit_free", scope: !1, file: !1, line: 249, type: !48, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @atexit_free, variables: !459)
!459 = !{!460, !461}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !458, file: !1, line: 249, type: !16)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !458, file: !1, line: 251, type: !5)
!462 = !DISubprogram(name: "atexit_callfuncs", scope: !1, file: !1, line: 66, type: !463, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @atexit_callfuncs, variables: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{null}
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !479, !482, !488, !490, !493, !495}
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_type", scope: !462, file: !1, line: 68, type: !16)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !462, file: !1, line: 68, type: !16)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_tb", scope: !462, file: !1, line: 68, type: !16)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !462, file: !1, line: 68, type: !16)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cb", scope: !462, file: !1, line: 69, type: !11)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !462, file: !1, line: 70, type: !16)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modstate", scope: !462, file: !1, line: 71, type: !5)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !462, file: !1, line: 72, type: !55)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !475, file: !1, line: 90, type: !16)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 90, column: 9)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 84, column: 5)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 83, column: 5)
!478 = distinct !DILexicalBlock(scope: !462, file: !1, line: 83, column: 5)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !480, file: !1, line: 90, type: !16)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 90, column: 9)
!481 = distinct !DILexicalBlock(scope: !475, file: !1, line: 90, column: 9)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !1, line: 95, type: !16)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 95, column: 17)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 94, column: 27)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 94, column: 17)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 91, column: 24)
!487 = distinct !DILexicalBlock(scope: !476, file: !1, line: 91, column: 13)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !489, file: !1, line: 96, type: !16)
!489 = distinct !DILexicalBlock(scope: !484, file: !1, line: 96, column: 17)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !491, file: !1, line: 96, type: !16)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 96, column: 17)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 96, column: 17)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !494, file: !1, line: 97, type: !16)
!494 = distinct !DILexicalBlock(scope: !484, file: !1, line: 97, column: 17)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !496, file: !1, line: 97, type: !16)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 97, column: 17)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 97, column: 17)
!498 = !{!499, !522, !526, !530, !534, !538, !542, !546}
!499 = !DIGlobalVariable(name: "atexitmodule", scope: !0, file: !1, line: 314, type: !500, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @atexitmodule)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !501, line: 47, size: 832, align: 64, elements: !502)
!501 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!502 = !{!503, !512, !513, !514, !515, !518, !519, !520, !521}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !500, file: !501, line: 48, baseType: !504, size: 320, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !501, line: 38, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !501, line: 33, size: 320, align: 64, elements: !506)
!506 = !{!507, !508, !510, !511}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !505, file: !501, line: 34, baseType: !17, size: 128, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !505, file: !501, line: 35, baseType: !509, size: 64, align: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !505, file: !501, line: 36, baseType: !22, size: 64, align: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !505, file: !501, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !500, file: !501, line: 49, baseType: !40, size: 64, align: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !500, file: !501, line: 50, baseType: !40, size: 64, align: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !500, file: !501, line: 51, baseType: !22, size: 64, align: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !500, file: !501, line: 52, baseType: !516, size: 64, align: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !292, line: 47, baseType: !291)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !500, file: !501, line: 53, baseType: !153, size: 64, align: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !500, file: !501, line: 54, baseType: !270, size: 64, align: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !500, file: !501, line: 55, baseType: !153, size: 64, align: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !500, file: !501, line: 56, baseType: !340, size: 64, align: 64, offset: 768)
!522 = !DIGlobalVariable(name: "atexit__doc__", scope: !0, file: !1, line: 306, type: !523, isLocal: true, isDefinition: true, variable: [160 x i8]* @atexit__doc__)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1280, align: 8, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 160)
!526 = !DIGlobalVariable(name: "atexit_methods", scope: !0, file: !1, line: 289, type: !527, isLocal: true, isDefinition: true, variable: [6 x %struct.PyMethodDef]* @atexit_methods)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1536, align: 64, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 6)
!530 = !DIGlobalVariable(name: "atexit_register__doc__", scope: !0, file: !1, line: 117, type: !531, isLocal: true, isDefinition: true, variable: [310 x i8]* @atexit_register__doc__)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2480, align: 8, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 310)
!534 = !DIGlobalVariable(name: "atexit_clear__doc__", scope: !0, file: !1, line: 194, type: !535, isLocal: true, isDefinition: true, variable: [74 x i8]* @atexit_clear__doc__)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 592, align: 8, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 74)
!538 = !DIGlobalVariable(name: "atexit_unregister__doc__", scope: !0, file: !1, line: 257, type: !539, isLocal: true, isDefinition: true, variable: [147 x i8]* @atexit_unregister__doc__)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1176, align: 8, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 147)
!542 = !DIGlobalVariable(name: "atexit_run_exitfuncs__doc__", scope: !0, file: !1, line: 180, type: !543, isLocal: true, isDefinition: true, variable: [61 x i8]* @atexit_run_exitfuncs__doc__)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 488, align: 8, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 61)
!546 = !DIGlobalVariable(name: "atexit_ncallbacks__doc__", scope: !0, file: !1, line: 206, type: !547, isLocal: true, isDefinition: true, variable: [70 x i8]* @atexit_ncallbacks__doc__)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 560, align: 8, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 70)
!550 = !{i32 2, !"Dwarf Version", i32 4}
!551 = !{i32 2, !"Debug Info Version", i32 3}
!552 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!553 = !DILocation(line: 332, column: 9, scope: !368)
!554 = !DIExpression()
!555 = !DILocation(line: 329, column: 15, scope: !368)
!556 = !DILocation(line: 333, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !368, file: !1, line: 333, column: 9)
!558 = !DILocation(line: 333, column: 9, scope: !368)
!559 = !DILocation(line: 336, column: 16, scope: !368)
!560 = !DILocation(line: 337, column: 15, scope: !368)
!561 = !DILocation(line: 337, column: 28, scope: !368)
!562 = !{!563, !567, i64 12}
!563 = !{!"", !564, i64 0, !567, i64 8, !567, i64 12}
!564 = !{!"any pointer", !565, i64 0}
!565 = !{!"omnipotent char", !566, i64 0}
!566 = !{!"Simple C/C++ TBAA"}
!567 = !{!"int", !565, i64 0}
!568 = !DILocation(line: 338, column: 15, scope: !368)
!569 = !DILocation(line: 338, column: 26, scope: !368)
!570 = !{!563, !567, i64 8}
!571 = !DILocation(line: 339, column: 34, scope: !572)
!572 = !DILexicalBlockFile(scope: !368, file: !1, discriminator: 2)
!573 = !DILocation(line: 339, column: 32, scope: !368)
!574 = !{!563, !564, i64 0}
!575 = !DILocation(line: 341, column: 36, scope: !576)
!576 = distinct !DILexicalBlock(scope: !368, file: !1, line: 341, column: 9)
!577 = !DILocation(line: 341, column: 9, scope: !368)
!578 = !DILocation(line: 344, column: 5, scope: !368)
!579 = !DILocation(line: 345, column: 5, scope: !368)
!580 = !DILocation(line: 346, column: 1, scope: !368)
!581 = !DILocation(line: 68, column: 5, scope: !462)
!582 = !DILocation(line: 68, column: 15, scope: !462)
!583 = !{!564, !564, i64 0}
!584 = !DILocation(line: 74, column: 14, scope: !462)
!585 = !DILocation(line: 70, column: 15, scope: !462)
!586 = !DILocation(line: 75, column: 16, scope: !587)
!587 = distinct !DILexicalBlock(scope: !462, file: !1, line: 75, column: 9)
!588 = !DILocation(line: 75, column: 9, scope: !462)
!589 = !DILocation(line: 77, column: 16, scope: !462)
!590 = !DILocation(line: 79, column: 19, scope: !591)
!591 = distinct !DILexicalBlock(scope: !462, file: !1, line: 79, column: 9)
!592 = !DILocation(line: 79, column: 30, scope: !591)
!593 = !DILocation(line: 79, column: 9, scope: !462)
!594 = !DILocation(line: 83, column: 35, scope: !478)
!595 = !DILocation(line: 83, column: 42, scope: !477)
!596 = !DILocation(line: 83, column: 5, scope: !478)
!597 = !DILocation(line: 85, column: 24, scope: !476)
!598 = !DILocation(line: 85, column: 14, scope: !476)
!599 = !DILocation(line: 69, column: 22, scope: !462)
!600 = !DILocation(line: 86, column: 16, scope: !601)
!601 = distinct !DILexicalBlock(scope: !476, file: !1, line: 86, column: 13)
!602 = !DILocation(line: 86, column: 13, scope: !476)
!603 = !DILocation(line: 89, column: 31, scope: !476)
!604 = !{!605, !564, i64 0}
!605 = !{!"", !564, i64 0, !564, i64 8, !564, i64 16}
!606 = !DILocation(line: 89, column: 41, scope: !476)
!607 = !{!605, !564, i64 8}
!608 = !DILocation(line: 89, column: 51, scope: !476)
!609 = !{!605, !564, i64 16}
!610 = !DILocation(line: 89, column: 13, scope: !476)
!611 = !DILocation(line: 68, column: 54, scope: !462)
!612 = !DILocation(line: 90, column: 9, scope: !613)
!613 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!614 = !DILocation(line: 90, column: 9, scope: !475)
!615 = !DILocation(line: 90, column: 9, scope: !616)
!616 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!617 = !DILocation(line: 90, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !480, file: !1, line: 90, column: 9)
!619 = !{!620, !621, i64 0}
!620 = !{!"_object", !621, i64 0, !564, i64 8}
!621 = !{!"long", !565, i64 0}
!622 = !DILocation(line: 90, column: 9, scope: !480)
!623 = !DILocation(line: 90, column: 9, scope: !624)
!624 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 6)
!625 = !{!620, !564, i64 8}
!626 = !{!627, !564, i64 48}
!627 = !{!"_typeobject", !628, i64 0, !564, i64 24, !621, i64 32, !621, i64 40, !564, i64 48, !564, i64 56, !564, i64 64, !564, i64 72, !564, i64 80, !564, i64 88, !564, i64 96, !564, i64 104, !564, i64 112, !564, i64 120, !564, i64 128, !564, i64 136, !564, i64 144, !564, i64 152, !564, i64 160, !621, i64 168, !564, i64 176, !564, i64 184, !564, i64 192, !564, i64 200, !621, i64 208, !564, i64 216, !564, i64 224, !564, i64 232, !564, i64 240, !564, i64 248, !564, i64 256, !564, i64 264, !564, i64 272, !564, i64 280, !621, i64 288, !564, i64 296, !564, i64 304, !564, i64 312, !564, i64 320, !564, i64 328, !564, i64 336, !564, i64 344, !564, i64 352, !564, i64 360, !564, i64 368, !564, i64 376, !567, i64 384, !564, i64 392}
!628 = !{!"", !620, i64 0, !621, i64 16}
!629 = !DILocation(line: 94, column: 17, scope: !485)
!630 = !DILocation(line: 94, column: 17, scope: !486)
!631 = !DILocation(line: 95, column: 17, scope: !632)
!632 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!633 = !DILocation(line: 95, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !483, file: !1, line: 95, column: 17)
!635 = !DILocation(line: 95, column: 17, scope: !483)
!636 = !DILocation(line: 95, column: 17, scope: !637)
!637 = !DILexicalBlockFile(scope: !634, file: !1, discriminator: 3)
!638 = !DILocation(line: 68, column: 33, scope: !462)
!639 = !DILocation(line: 96, column: 17, scope: !640)
!640 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 1)
!641 = !DILocation(line: 96, column: 17, scope: !492)
!642 = !DILocation(line: 96, column: 17, scope: !489)
!643 = !DILocation(line: 96, column: 17, scope: !644)
!644 = !DILexicalBlockFile(scope: !491, file: !1, discriminator: 4)
!645 = !DILocation(line: 96, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !491, file: !1, line: 96, column: 17)
!647 = !DILocation(line: 96, column: 17, scope: !491)
!648 = !DILocation(line: 96, column: 17, scope: !649)
!649 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 6)
!650 = !DILocation(line: 68, column: 45, scope: !462)
!651 = !DILocation(line: 97, column: 17, scope: !652)
!652 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 1)
!653 = !DILocation(line: 97, column: 17, scope: !497)
!654 = !DILocation(line: 97, column: 17, scope: !494)
!655 = !DILocation(line: 97, column: 17, scope: !656)
!656 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 4)
!657 = !DILocation(line: 97, column: 17, scope: !658)
!658 = distinct !DILexicalBlock(scope: !496, file: !1, line: 97, column: 17)
!659 = !DILocation(line: 97, column: 17, scope: !496)
!660 = !DILocation(line: 97, column: 17, scope: !661)
!661 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 6)
!662 = !DILocation(line: 99, column: 13, scope: !486)
!663 = !DILocation(line: 100, column: 41, scope: !664)
!664 = distinct !DILexicalBlock(scope: !486, file: !1, line: 100, column: 17)
!665 = !DILocation(line: 100, column: 18, scope: !664)
!666 = !DILocation(line: 100, column: 17, scope: !486)
!667 = !DILocation(line: 101, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !1, line: 100, column: 60)
!669 = !DILocation(line: 102, column: 17, scope: !668)
!670 = !DILocation(line: 103, column: 31, scope: !668)
!671 = !DILocation(line: 103, column: 41, scope: !668)
!672 = !DILocation(line: 103, column: 52, scope: !668)
!673 = !DILocation(line: 103, column: 17, scope: !668)
!674 = !DILocation(line: 104, column: 13, scope: !668)
!675 = !DILocation(line: 53, column: 31, scope: !676, inlinedAt: !678)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 53, column: 5)
!677 = distinct !DILexicalBlock(scope: !391, file: !1, line: 53, column: 5)
!678 = distinct !DILocation(line: 108, column: 5, scope: !462)
!679 = !DILocation(line: 52, column: 9, scope: !391, inlinedAt: !678)
!680 = !DILocation(line: 53, column: 19, scope: !676, inlinedAt: !678)
!681 = !DILocation(line: 53, column: 5, scope: !677, inlinedAt: !678)
!682 = !DILocation(line: 54, column: 24, scope: !683, inlinedAt: !678)
!683 = distinct !DILexicalBlock(scope: !676, file: !1, line: 53, column: 48)
!684 = !DILocation(line: 108, column: 5, scope: !462)
!685 = !DILocation(line: 54, column: 14, scope: !683, inlinedAt: !678)
!686 = !DILocation(line: 39, column: 10, scope: !398, inlinedAt: !687)
!687 = distinct !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !678)
!688 = !DILocation(line: 51, column: 22, scope: !391, inlinedAt: !678)
!689 = !DILocation(line: 55, column: 16, scope: !690, inlinedAt: !678)
!690 = distinct !DILexicalBlock(scope: !683, file: !1, line: 55, column: 13)
!691 = !DILocation(line: 55, column: 13, scope: !683, inlinedAt: !678)
!692 = !DILocation(line: 37, column: 22, scope: !398, inlinedAt: !687)
!693 = !DILocation(line: 40, column: 35, scope: !398, inlinedAt: !687)
!694 = !DILocation(line: 41, column: 5, scope: !695, inlinedAt: !687)
!695 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!696 = !DILocation(line: 41, column: 5, scope: !697, inlinedAt: !687)
!697 = distinct !DILexicalBlock(scope: !406, file: !1, line: 41, column: 5)
!698 = !DILocation(line: 41, column: 5, scope: !406, inlinedAt: !687)
!699 = !DILocation(line: 41, column: 5, scope: !700, inlinedAt: !687)
!700 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 3)
!701 = !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !678)
!702 = !DILocation(line: 42, column: 5, scope: !703, inlinedAt: !687)
!703 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!704 = !DILocation(line: 42, column: 5, scope: !705, inlinedAt: !687)
!705 = distinct !DILexicalBlock(scope: !408, file: !1, line: 42, column: 5)
!706 = !DILocation(line: 42, column: 5, scope: !408, inlinedAt: !687)
!707 = !DILocation(line: 42, column: 5, scope: !708, inlinedAt: !687)
!708 = !DILexicalBlockFile(scope: !705, file: !1, discriminator: 3)
!709 = !DILocation(line: 43, column: 5, scope: !710, inlinedAt: !687)
!710 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 1)
!711 = !DILocation(line: 43, column: 5, scope: !413, inlinedAt: !687)
!712 = !DILocation(line: 43, column: 5, scope: !410, inlinedAt: !687)
!713 = !DILocation(line: 43, column: 5, scope: !714, inlinedAt: !687)
!714 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 4)
!715 = !DILocation(line: 43, column: 5, scope: !716, inlinedAt: !687)
!716 = distinct !DILexicalBlock(scope: !412, file: !1, line: 43, column: 5)
!717 = !DILocation(line: 43, column: 5, scope: !412, inlinedAt: !687)
!718 = !DILocation(line: 43, column: 5, scope: !719, inlinedAt: !687)
!719 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 6)
!720 = !DILocation(line: 44, column: 16, scope: !398, inlinedAt: !687)
!721 = !DILocation(line: 44, column: 5, scope: !398, inlinedAt: !687)
!722 = !DILocation(line: 59, column: 5, scope: !683, inlinedAt: !678)
!723 = !DILocation(line: 53, column: 44, scope: !676, inlinedAt: !678)
!724 = !DILocation(line: 60, column: 26, scope: !391, inlinedAt: !678)
!725 = !DILocation(line: 110, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !462, file: !1, line: 110, column: 9)
!727 = !DILocation(line: 110, column: 9, scope: !462)
!728 = !DILocation(line: 111, column: 33, scope: !726)
!729 = !DILocation(line: 111, column: 44, scope: !726)
!730 = !DILocation(line: 111, column: 9, scope: !726)
!731 = !DILocation(line: 112, column: 1, scope: !732)
!732 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 1)
!733 = !DILocation(line: 112, column: 1, scope: !462)
!734 = !DILocation(line: 222, column: 29, scope: !431)
!735 = !DILocation(line: 222, column: 45, scope: !431)
!736 = !DILocation(line: 222, column: 58, scope: !431)
!737 = !DILocation(line: 227, column: 16, scope: !431)
!738 = !DILocation(line: 224, column: 9, scope: !431)
!739 = !DILocation(line: 228, column: 31, scope: !440)
!740 = !DILocation(line: 228, column: 19, scope: !440)
!741 = !DILocation(line: 228, column: 5, scope: !441)
!742 = !DILocation(line: 229, column: 41, scope: !439)
!743 = !DILocation(line: 229, column: 31, scope: !439)
!744 = !DILocation(line: 229, column: 26, scope: !439)
!745 = !DILocation(line: 230, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !439, file: !1, line: 230, column: 13)
!747 = !DILocation(line: 230, column: 13, scope: !439)
!748 = !DILocation(line: 232, column: 9, scope: !749)
!749 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 1)
!750 = !DILocation(line: 232, column: 9, scope: !445)
!751 = !DILocation(line: 232, column: 9, scope: !752)
!752 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 2)
!753 = !DILocation(line: 232, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !443, file: !1, line: 232, column: 9)
!755 = !DILocation(line: 233, column: 9, scope: !756)
!756 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!757 = !DILocation(line: 233, column: 9, scope: !449)
!758 = !DILocation(line: 233, column: 9, scope: !759)
!759 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 2)
!760 = !DILocation(line: 233, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !447, file: !1, line: 233, column: 9)
!762 = !DILocation(line: 234, column: 9, scope: !763)
!763 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!764 = !DILocation(line: 234, column: 9, scope: !453)
!765 = !DILocation(line: 234, column: 9, scope: !766)
!766 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 2)
!767 = !DILocation(line: 234, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !451, file: !1, line: 234, column: 9)
!769 = !DILocation(line: 228, column: 44, scope: !440)
!770 = !DILocation(line: 237, column: 1, scope: !431)
!771 = !DILocation(line: 240, column: 26, scope: !454)
!772 = !DILocation(line: 243, column: 16, scope: !454)
!773 = !DILocation(line: 52, column: 9, scope: !391, inlinedAt: !774)
!774 = distinct !DILocation(line: 244, column: 5, scope: !454)
!775 = !DILocation(line: 53, column: 31, scope: !676, inlinedAt: !774)
!776 = !DILocation(line: 53, column: 19, scope: !676, inlinedAt: !774)
!777 = !DILocation(line: 53, column: 5, scope: !677, inlinedAt: !774)
!778 = !DILocation(line: 54, column: 24, scope: !683, inlinedAt: !774)
!779 = !DILocation(line: 244, column: 5, scope: !454)
!780 = !DILocation(line: 54, column: 14, scope: !683, inlinedAt: !774)
!781 = !DILocation(line: 39, column: 10, scope: !398, inlinedAt: !782)
!782 = distinct !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !774)
!783 = !DILocation(line: 51, column: 22, scope: !391, inlinedAt: !774)
!784 = !DILocation(line: 55, column: 16, scope: !690, inlinedAt: !774)
!785 = !DILocation(line: 55, column: 13, scope: !683, inlinedAt: !774)
!786 = !DILocation(line: 37, column: 22, scope: !398, inlinedAt: !782)
!787 = !DILocation(line: 40, column: 35, scope: !398, inlinedAt: !782)
!788 = !DILocation(line: 41, column: 5, scope: !695, inlinedAt: !782)
!789 = !DILocation(line: 41, column: 5, scope: !697, inlinedAt: !782)
!790 = !DILocation(line: 41, column: 5, scope: !406, inlinedAt: !782)
!791 = !DILocation(line: 41, column: 5, scope: !700, inlinedAt: !782)
!792 = !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !774)
!793 = !DILocation(line: 42, column: 5, scope: !703, inlinedAt: !782)
!794 = !DILocation(line: 42, column: 5, scope: !705, inlinedAt: !782)
!795 = !DILocation(line: 42, column: 5, scope: !408, inlinedAt: !782)
!796 = !DILocation(line: 42, column: 5, scope: !708, inlinedAt: !782)
!797 = !DILocation(line: 43, column: 5, scope: !710, inlinedAt: !782)
!798 = !DILocation(line: 43, column: 5, scope: !413, inlinedAt: !782)
!799 = !DILocation(line: 43, column: 5, scope: !410, inlinedAt: !782)
!800 = !DILocation(line: 43, column: 5, scope: !714, inlinedAt: !782)
!801 = !DILocation(line: 43, column: 5, scope: !716, inlinedAt: !782)
!802 = !DILocation(line: 43, column: 5, scope: !412, inlinedAt: !782)
!803 = !DILocation(line: 43, column: 5, scope: !719, inlinedAt: !782)
!804 = !DILocation(line: 44, column: 16, scope: !398, inlinedAt: !782)
!805 = !DILocation(line: 44, column: 5, scope: !398, inlinedAt: !782)
!806 = !DILocation(line: 59, column: 5, scope: !683, inlinedAt: !774)
!807 = !DILocation(line: 53, column: 44, scope: !676, inlinedAt: !774)
!808 = !DILocation(line: 60, column: 26, scope: !391, inlinedAt: !774)
!809 = !DILocation(line: 245, column: 5, scope: !454)
!810 = !DILocation(line: 249, column: 23, scope: !458)
!811 = !DILocation(line: 252, column: 16, scope: !458)
!812 = !DILocation(line: 52, column: 9, scope: !391, inlinedAt: !813)
!813 = distinct !DILocation(line: 253, column: 5, scope: !458)
!814 = !DILocation(line: 53, column: 31, scope: !676, inlinedAt: !813)
!815 = !DILocation(line: 53, column: 19, scope: !676, inlinedAt: !813)
!816 = !DILocation(line: 53, column: 5, scope: !677, inlinedAt: !813)
!817 = !DILocation(line: 54, column: 24, scope: !683, inlinedAt: !813)
!818 = !DILocation(line: 253, column: 5, scope: !458)
!819 = !DILocation(line: 54, column: 14, scope: !683, inlinedAt: !813)
!820 = !DILocation(line: 39, column: 10, scope: !398, inlinedAt: !821)
!821 = distinct !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !813)
!822 = !DILocation(line: 51, column: 22, scope: !391, inlinedAt: !813)
!823 = !DILocation(line: 55, column: 16, scope: !690, inlinedAt: !813)
!824 = !DILocation(line: 55, column: 13, scope: !683, inlinedAt: !813)
!825 = !DILocation(line: 37, column: 22, scope: !398, inlinedAt: !821)
!826 = !DILocation(line: 40, column: 35, scope: !398, inlinedAt: !821)
!827 = !DILocation(line: 41, column: 5, scope: !695, inlinedAt: !821)
!828 = !DILocation(line: 41, column: 5, scope: !697, inlinedAt: !821)
!829 = !DILocation(line: 41, column: 5, scope: !406, inlinedAt: !821)
!830 = !DILocation(line: 41, column: 5, scope: !700, inlinedAt: !821)
!831 = !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !813)
!832 = !DILocation(line: 42, column: 5, scope: !703, inlinedAt: !821)
!833 = !DILocation(line: 42, column: 5, scope: !705, inlinedAt: !821)
!834 = !DILocation(line: 42, column: 5, scope: !408, inlinedAt: !821)
!835 = !DILocation(line: 42, column: 5, scope: !708, inlinedAt: !821)
!836 = !DILocation(line: 43, column: 5, scope: !710, inlinedAt: !821)
!837 = !DILocation(line: 43, column: 5, scope: !413, inlinedAt: !821)
!838 = !DILocation(line: 43, column: 5, scope: !410, inlinedAt: !821)
!839 = !DILocation(line: 43, column: 5, scope: !714, inlinedAt: !821)
!840 = !DILocation(line: 43, column: 5, scope: !716, inlinedAt: !821)
!841 = !DILocation(line: 43, column: 5, scope: !412, inlinedAt: !821)
!842 = !DILocation(line: 43, column: 5, scope: !719, inlinedAt: !821)
!843 = !DILocation(line: 44, column: 16, scope: !398, inlinedAt: !821)
!844 = !DILocation(line: 44, column: 5, scope: !398, inlinedAt: !821)
!845 = !DILocation(line: 59, column: 5, scope: !683, inlinedAt: !813)
!846 = !DILocation(line: 53, column: 44, scope: !676, inlinedAt: !813)
!847 = !DILocation(line: 60, column: 26, scope: !391, inlinedAt: !813)
!848 = !DILocation(line: 254, column: 26, scope: !458)
!849 = !DILocation(line: 254, column: 5, scope: !458)
!850 = !DILocation(line: 255, column: 1, scope: !458)
!851 = !DILocation(line: 129, column: 27, scope: !374)
!852 = !DILocation(line: 129, column: 43, scope: !374)
!853 = !DILocation(line: 129, column: 59, scope: !374)
!854 = !DILocation(line: 133, column: 15, scope: !374)
!855 = !DILocation(line: 135, column: 16, scope: !374)
!856 = !DILocation(line: 137, column: 19, scope: !384)
!857 = !DILocation(line: 137, column: 43, scope: !384)
!858 = !DILocation(line: 137, column: 30, scope: !384)
!859 = !DILocation(line: 137, column: 9, scope: !374)
!860 = !DILocation(line: 139, column: 32, scope: !383)
!861 = !DILocation(line: 140, column: 56, scope: !383)
!862 = !DILocation(line: 141, column: 66, scope: !383)
!863 = !DILocation(line: 141, column: 64, scope: !383)
!864 = !DILocation(line: 140, column: 32, scope: !383)
!865 = !DILocation(line: 142, column: 15, scope: !866)
!866 = distinct !DILexicalBlock(scope: !383, file: !1, line: 142, column: 13)
!867 = !DILocation(line: 142, column: 13, scope: !383)
!868 = !DILocation(line: 144, column: 36, scope: !383)
!869 = !DILocation(line: 143, column: 20, scope: !866)
!870 = !DILocation(line: 147, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !374, file: !1, line: 147, column: 9)
!872 = !{!628, !621, i64 16}
!873 = !DILocation(line: 147, column: 32, scope: !871)
!874 = !DILocation(line: 147, column: 9, scope: !374)
!875 = !DILocation(line: 148, column: 25, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !1, line: 147, column: 38)
!877 = !DILocation(line: 148, column: 9, scope: !876)
!878 = !DILocation(line: 150, column: 9, scope: !876)
!879 = !DILocation(line: 153, column: 12, scope: !374)
!880 = !DILocation(line: 154, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !374, file: !1, line: 154, column: 9)
!882 = !DILocation(line: 154, column: 9, scope: !374)
!883 = !DILocation(line: 155, column: 25, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 154, column: 34)
!885 = !DILocation(line: 155, column: 9, scope: !884)
!886 = !DILocation(line: 157, column: 9, scope: !884)
!887 = !DILocation(line: 160, column: 20, scope: !374)
!888 = !DILocation(line: 161, column: 22, scope: !889)
!889 = distinct !DILexicalBlock(scope: !374, file: !1, line: 161, column: 9)
!890 = !DILocation(line: 161, column: 9, scope: !374)
!891 = !DILocation(line: 162, column: 16, scope: !889)
!892 = !DILocation(line: 162, column: 9, scope: !889)
!893 = !DILocation(line: 164, column: 52, scope: !374)
!894 = !DILocation(line: 164, column: 26, scope: !374)
!895 = !DILocation(line: 164, column: 19, scope: !374)
!896 = !DILocation(line: 164, column: 24, scope: !374)
!897 = !DILocation(line: 165, column: 28, scope: !898)
!898 = distinct !DILexicalBlock(scope: !374, file: !1, line: 165, column: 9)
!899 = !DILocation(line: 165, column: 9, scope: !374)
!900 = !DILocation(line: 166, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !1, line: 165, column: 37)
!902 = !DILocation(line: 167, column: 9, scope: !901)
!903 = !DILocation(line: 169, column: 19, scope: !374)
!904 = !DILocation(line: 169, column: 24, scope: !374)
!905 = !DILocation(line: 170, column: 19, scope: !374)
!906 = !DILocation(line: 170, column: 26, scope: !374)
!907 = !DILocation(line: 171, column: 5, scope: !374)
!908 = !DILocation(line: 172, column: 5, scope: !909)
!909 = !DILexicalBlockFile(scope: !386, file: !1, discriminator: 1)
!910 = !DILocation(line: 172, column: 5, scope: !911)
!911 = distinct !DILexicalBlock(scope: !386, file: !1, line: 172, column: 5)
!912 = !DILocation(line: 172, column: 5, scope: !386)
!913 = !DILocation(line: 172, column: 5, scope: !914)
!914 = !DILexicalBlockFile(scope: !911, file: !1, discriminator: 2)
!915 = !DILocation(line: 176, column: 5, scope: !374)
!916 = !DILocation(line: 174, column: 52, scope: !374)
!917 = !DILocation(line: 174, column: 5, scope: !374)
!918 = !DILocation(line: 174, column: 15, scope: !374)
!919 = !DILocation(line: 174, column: 56, scope: !374)
!920 = !DILocation(line: 177, column: 5, scope: !374)
!921 = !DILocation(line: 178, column: 1, scope: !374)
!922 = !DILocation(line: 200, column: 24, scope: !387)
!923 = !DILocation(line: 200, column: 40, scope: !387)
!924 = !DILocation(line: 202, column: 20, scope: !387)
!925 = !DILocation(line: 52, column: 9, scope: !391, inlinedAt: !926)
!926 = distinct !DILocation(line: 202, column: 5, scope: !387)
!927 = !DILocation(line: 53, column: 31, scope: !676, inlinedAt: !926)
!928 = !DILocation(line: 53, column: 19, scope: !676, inlinedAt: !926)
!929 = !DILocation(line: 53, column: 5, scope: !677, inlinedAt: !926)
!930 = !DILocation(line: 54, column: 24, scope: !683, inlinedAt: !926)
!931 = !DILocation(line: 202, column: 5, scope: !387)
!932 = !DILocation(line: 54, column: 14, scope: !683, inlinedAt: !926)
!933 = !DILocation(line: 39, column: 10, scope: !398, inlinedAt: !934)
!934 = distinct !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !926)
!935 = !DILocation(line: 51, column: 22, scope: !391, inlinedAt: !926)
!936 = !DILocation(line: 55, column: 16, scope: !690, inlinedAt: !926)
!937 = !DILocation(line: 55, column: 13, scope: !683, inlinedAt: !926)
!938 = !DILocation(line: 37, column: 22, scope: !398, inlinedAt: !934)
!939 = !DILocation(line: 40, column: 35, scope: !398, inlinedAt: !934)
!940 = !DILocation(line: 41, column: 5, scope: !695, inlinedAt: !934)
!941 = !DILocation(line: 41, column: 5, scope: !697, inlinedAt: !934)
!942 = !DILocation(line: 41, column: 5, scope: !406, inlinedAt: !934)
!943 = !DILocation(line: 41, column: 5, scope: !700, inlinedAt: !934)
!944 = !DILocation(line: 58, column: 9, scope: !683, inlinedAt: !926)
!945 = !DILocation(line: 42, column: 5, scope: !703, inlinedAt: !934)
!946 = !DILocation(line: 42, column: 5, scope: !705, inlinedAt: !934)
!947 = !DILocation(line: 42, column: 5, scope: !408, inlinedAt: !934)
!948 = !DILocation(line: 42, column: 5, scope: !708, inlinedAt: !934)
!949 = !DILocation(line: 43, column: 5, scope: !710, inlinedAt: !934)
!950 = !DILocation(line: 43, column: 5, scope: !413, inlinedAt: !934)
!951 = !DILocation(line: 43, column: 5, scope: !410, inlinedAt: !934)
!952 = !DILocation(line: 43, column: 5, scope: !714, inlinedAt: !934)
!953 = !DILocation(line: 43, column: 5, scope: !716, inlinedAt: !934)
!954 = !DILocation(line: 43, column: 5, scope: !412, inlinedAt: !934)
!955 = !DILocation(line: 43, column: 5, scope: !719, inlinedAt: !934)
!956 = !DILocation(line: 44, column: 16, scope: !398, inlinedAt: !934)
!957 = !DILocation(line: 44, column: 5, scope: !398, inlinedAt: !934)
!958 = !DILocation(line: 59, column: 5, scope: !683, inlinedAt: !926)
!959 = !DILocation(line: 53, column: 44, scope: !676, inlinedAt: !926)
!960 = !DILocation(line: 60, column: 26, scope: !391, inlinedAt: !926)
!961 = !DILocation(line: 203, column: 5, scope: !387)
!962 = !DILocation(line: 266, column: 29, scope: !414)
!963 = !DILocation(line: 266, column: 45, scope: !414)
!964 = !DILocation(line: 272, column: 16, scope: !414)
!965 = !DILocation(line: 270, column: 9, scope: !414)
!966 = !DILocation(line: 274, column: 31, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 274, column: 5)
!968 = distinct !DILexicalBlock(scope: !414, file: !1, line: 274, column: 5)
!969 = !DILocation(line: 274, column: 19, scope: !967)
!970 = !DILocation(line: 274, column: 5, scope: !968)
!971 = !DILocation(line: 276, column: 24, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !1, line: 275, column: 5)
!973 = !DILocation(line: 276, column: 14, scope: !972)
!974 = !DILocation(line: 269, column: 22, scope: !414)
!975 = !DILocation(line: 277, column: 16, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !1, line: 277, column: 13)
!977 = !DILocation(line: 277, column: 13, scope: !972)
!978 = !DILocation(line: 280, column: 43, scope: !972)
!979 = !DILocation(line: 280, column: 14, scope: !972)
!980 = !DILocation(line: 270, column: 12, scope: !414)
!981 = !DILocation(line: 281, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !972, file: !1, line: 281, column: 13)
!983 = !DILocation(line: 281, column: 13, scope: !972)
!984 = !DILocation(line: 283, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !972, file: !1, line: 283, column: 13)
!986 = !DILocation(line: 283, column: 13, scope: !972)
!987 = !DILocation(line: 39, column: 10, scope: !398, inlinedAt: !988)
!988 = distinct !DILocation(line: 284, column: 13, scope: !985)
!989 = !DILocation(line: 37, column: 22, scope: !398, inlinedAt: !988)
!990 = !DILocation(line: 40, column: 35, scope: !398, inlinedAt: !988)
!991 = !DILocation(line: 41, column: 5, scope: !695, inlinedAt: !988)
!992 = !DILocation(line: 41, column: 5, scope: !697, inlinedAt: !988)
!993 = !DILocation(line: 41, column: 5, scope: !406, inlinedAt: !988)
!994 = !DILocation(line: 41, column: 5, scope: !700, inlinedAt: !988)
!995 = !DILocation(line: 284, column: 13, scope: !985)
!996 = !DILocation(line: 42, column: 5, scope: !703, inlinedAt: !988)
!997 = !DILocation(line: 42, column: 5, scope: !705, inlinedAt: !988)
!998 = !DILocation(line: 42, column: 5, scope: !408, inlinedAt: !988)
!999 = !DILocation(line: 42, column: 5, scope: !708, inlinedAt: !988)
!1000 = !DILocation(line: 43, column: 5, scope: !710, inlinedAt: !988)
!1001 = !DILocation(line: 43, column: 5, scope: !413, inlinedAt: !988)
!1002 = !DILocation(line: 43, column: 5, scope: !410, inlinedAt: !988)
!1003 = !DILocation(line: 43, column: 5, scope: !714, inlinedAt: !988)
!1004 = !DILocation(line: 43, column: 5, scope: !716, inlinedAt: !988)
!1005 = !DILocation(line: 43, column: 5, scope: !412, inlinedAt: !988)
!1006 = !DILocation(line: 43, column: 5, scope: !719, inlinedAt: !988)
!1007 = !DILocation(line: 44, column: 16, scope: !398, inlinedAt: !988)
!1008 = !DILocation(line: 44, column: 5, scope: !398, inlinedAt: !988)
!1009 = !DILocation(line: 274, column: 44, scope: !967)
!1010 = !DILocation(line: 286, column: 5, scope: !414)
!1011 = !DILocation(line: 287, column: 1, scope: !414)
!1012 = !DILocation(line: 186, column: 32, scope: !422)
!1013 = !DILocation(line: 186, column: 48, scope: !422)
!1014 = !DILocation(line: 188, column: 5, scope: !422)
!1015 = !DILocation(line: 189, column: 9, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !422, file: !1, line: 189, column: 9)
!1017 = !DILocation(line: 189, column: 9, scope: !422)
!1018 = !DILocation(line: 191, column: 5, scope: !422)
!1019 = !DILocation(line: 192, column: 1, scope: !422)
!1020 = !DILocation(line: 212, column: 29, scope: !426)
!1021 = !DILocation(line: 212, column: 45, scope: !426)
!1022 = !DILocation(line: 216, column: 16, scope: !426)
!1023 = !DILocation(line: 218, column: 41, scope: !426)
!1024 = !DILocation(line: 218, column: 31, scope: !426)
!1025 = !DILocation(line: 218, column: 12, scope: !426)
!1026 = !DILocation(line: 218, column: 5, scope: !426)
