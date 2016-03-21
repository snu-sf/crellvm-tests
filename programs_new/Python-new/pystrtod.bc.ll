; ModuleID = 'irs-onlybc/pystrtod.bc'
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
  store i8* %p, i8** %p.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !26, metadata !434), !dbg !435
  store i8** %endptr, i8*** %endptr.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8*** %endptr.addr, metadata !27, metadata !434), !dbg !436
  %0 = bitcast double* %retval1 to i8*, !dbg !437
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !437
  call void @llvm.dbg.declare(metadata double* %retval1, metadata !28, metadata !434), !dbg !438
  %1 = bitcast i8** %s to i8*, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !439
  call void @llvm.dbg.declare(metadata i8** %s, metadata !29, metadata !434), !dbg !440
  %2 = bitcast i32* %negate to i8*, !dbg !441
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !441
  call void @llvm.dbg.declare(metadata i32* %negate, metadata !30, metadata !434), !dbg !442
  store i32 0, i32* %negate, align 4, !dbg !442, !tbaa !443
  %3 = load i8*, i8** %p.addr, align 8, !dbg !445, !tbaa !430
  store i8* %3, i8** %s, align 8, !dbg !446, !tbaa !430
  %4 = load i8*, i8** %s, align 8, !dbg !447, !tbaa !430
  %5 = load i8, i8* %4, align 1, !dbg !449, !tbaa !450
  %conv = sext i8 %5 to i32, !dbg !449
  %cmp = icmp eq i32 %conv, 45, !dbg !451
  br i1 %cmp, label %if.then, label %if.else, !dbg !452

if.then:                                          ; preds = %entry
  store i32 1, i32* %negate, align 4, !dbg !453, !tbaa !443
  %6 = load i8*, i8** %s, align 8, !dbg !455, !tbaa !430
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !455
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !455, !tbaa !430
  br label %if.end.8, !dbg !456

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %s, align 8, !dbg !457, !tbaa !430
  %8 = load i8, i8* %7, align 1, !dbg !459, !tbaa !450
  %conv3 = sext i8 %8 to i32, !dbg !459
  %cmp4 = icmp eq i32 %conv3, 43, !dbg !460
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !461

if.then.6:                                        ; preds = %if.else
  %9 = load i8*, i8** %s, align 8, !dbg !462, !tbaa !430
  %incdec.ptr7 = getelementptr i8, i8* %9, i32 1, !dbg !462
  store i8* %incdec.ptr7, i8** %s, align 8, !dbg !462, !tbaa !430
  br label %if.end, !dbg !464

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %10 = load i8*, i8** %s, align 8, !dbg !465, !tbaa !430
  %call = call i32 @case_insensitive_match(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !467
  %tobool = icmp ne i32 %call, 0, !dbg !467
  br i1 %tobool, label %if.then.9, label %if.else.16, !dbg !468

if.then.9:                                        ; preds = %if.end.8
  %11 = load i8*, i8** %s, align 8, !dbg !469, !tbaa !430
  %add.ptr = getelementptr i8, i8* %11, i64 3, !dbg !469
  store i8* %add.ptr, i8** %s, align 8, !dbg !469, !tbaa !430
  %12 = load i8*, i8** %s, align 8, !dbg !471, !tbaa !430
  %call10 = call i32 @case_insensitive_match(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !473
  %tobool11 = icmp ne i32 %call10, 0, !dbg !473
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !474

if.then.12:                                       ; preds = %if.then.9
  %13 = load i8*, i8** %s, align 8, !dbg !475, !tbaa !430
  %add.ptr13 = getelementptr i8, i8* %13, i64 5, !dbg !475
  store i8* %add.ptr13, i8** %s, align 8, !dbg !475, !tbaa !430
  br label %if.end.14, !dbg !476

if.end.14:                                        ; preds = %if.then.12, %if.then.9
  %14 = load i32, i32* %negate, align 4, !dbg !477, !tbaa !443
  %call15 = call double @_Py_dg_infinity(i32 %14), !dbg !478
  store double %call15, double* %retval1, align 8, !dbg !479, !tbaa !480
  br label %if.end.24, !dbg !482

if.else.16:                                       ; preds = %if.end.8
  %15 = load i8*, i8** %s, align 8, !dbg !483, !tbaa !430
  %call17 = call i32 @case_insensitive_match(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !485
  %tobool18 = icmp ne i32 %call17, 0, !dbg !485
  br i1 %tobool18, label %if.then.19, label %if.else.22, !dbg !486

if.then.19:                                       ; preds = %if.else.16
  %16 = load i8*, i8** %s, align 8, !dbg !487, !tbaa !430
  %add.ptr20 = getelementptr i8, i8* %16, i64 3, !dbg !487
  store i8* %add.ptr20, i8** %s, align 8, !dbg !487, !tbaa !430
  %17 = load i32, i32* %negate, align 4, !dbg !489, !tbaa !443
  %call21 = call double @_Py_dg_stdnan(i32 %17), !dbg !490
  store double %call21, double* %retval1, align 8, !dbg !491, !tbaa !480
  br label %if.end.23, !dbg !492

if.else.22:                                       ; preds = %if.else.16
  %18 = load i8*, i8** %p.addr, align 8, !dbg !493, !tbaa !430
  store i8* %18, i8** %s, align 8, !dbg !495, !tbaa !430
  store double -1.000000e+00, double* %retval1, align 8, !dbg !496, !tbaa !480
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %19 = load i8*, i8** %s, align 8, !dbg !497, !tbaa !430
  %20 = load i8**, i8*** %endptr.addr, align 8, !dbg !498, !tbaa !430
  store i8* %19, i8** %20, align 8, !dbg !499, !tbaa !430
  %21 = load double, double* %retval1, align 8, !dbg !500, !tbaa !480
  %22 = bitcast i32* %negate to i8*, !dbg !501
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !501
  %23 = bitcast i8** %s to i8*, !dbg !501
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !501
  %24 = bitcast double* %retval1 to i8*, !dbg !501
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !501
  ret double %21, !dbg !502
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @case_insensitive_match(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !383, metadata !434), !dbg !503
  store i8* %t, i8** %t.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8** %t.addr, metadata !384, metadata !434), !dbg !504
  br label %while.cond, !dbg !505

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %t.addr, align 8, !dbg !506, !tbaa !430
  %1 = load i8, i8* %0, align 1, !dbg !509, !tbaa !450
  %conv = sext i8 %1 to i32, !dbg !509
  %tobool = icmp ne i32 %conv, 0, !dbg !509
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !510

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8, !dbg !511, !tbaa !430
  %3 = load i8, i8* %2, align 1, !dbg !513, !tbaa !450
  %conv1 = sext i8 %3 to i32, !dbg !514
  %and = and i32 %conv1, 255, !dbg !515
  %conv2 = trunc i32 %and to i8, !dbg !516
  %idxprom = zext i8 %conv2 to i64, !dbg !517
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom, !dbg !517
  %4 = load i8, i8* %arrayidx, align 1, !dbg !517, !tbaa !450
  %conv3 = zext i8 %4 to i32, !dbg !518
  %5 = load i8*, i8** %t.addr, align 8, !dbg !519, !tbaa !430
  %6 = load i8, i8* %5, align 1, !dbg !520, !tbaa !450
  %conv4 = sext i8 %6 to i32, !dbg !520
  %cmp = icmp eq i32 %conv3, %conv4, !dbg !521
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end, !dbg !522

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %s.addr, align 8, !dbg !524, !tbaa !430
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !524
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !524, !tbaa !430
  %9 = load i8*, i8** %t.addr, align 8, !dbg !526, !tbaa !430
  %incdec.ptr6 = getelementptr i8, i8* %9, i32 1, !dbg !526
  store i8* %incdec.ptr6, i8** %t.addr, align 8, !dbg !526, !tbaa !430
  br label %while.cond, !dbg !505

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %t.addr, align 8, !dbg !527, !tbaa !430
  %11 = load i8, i8* %10, align 1, !dbg !528, !tbaa !450
  %conv7 = sext i8 %11 to i32, !dbg !528
  %tobool8 = icmp ne i32 %conv7, 0, !dbg !528
  %cond = select i1 %tobool8, i32 0, i32 1, !dbg !528
  ret i32 %cond, !dbg !529
}

declare double @_Py_dg_infinity(i32) #3

declare double @_Py_dg_stdnan(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define double @PyOS_string_to_double(i8* %s, i8** %endptr, %struct._object* %overflow_exception) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %overflow_exception.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %result = alloca double, align 8
  %fail_pos = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !361, metadata !434), !dbg !530
  store i8** %endptr, i8*** %endptr.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8*** %endptr.addr, metadata !362, metadata !434), !dbg !531
  store %struct._object* %overflow_exception, %struct._object** %overflow_exception.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata %struct._object** %overflow_exception.addr, metadata !363, metadata !434), !dbg !532
  %0 = bitcast double* %x to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !533
  call void @llvm.dbg.declare(metadata double* %x, metadata !364, metadata !434), !dbg !534
  %1 = bitcast double* %result to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !533
  call void @llvm.dbg.declare(metadata double* %result, metadata !365, metadata !434), !dbg !535
  store double -1.000000e+00, double* %result, align 8, !dbg !535, !tbaa !480
  %2 = bitcast i8** %fail_pos to i8*, !dbg !536
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !536
  call void @llvm.dbg.declare(metadata i8** %fail_pos, metadata !366, metadata !434), !dbg !537
  %call = call i32* @__errno_location() #1, !dbg !538
  store i32 0, i32* %call, align 4, !dbg !539, !tbaa !443
  %3 = load i8*, i8** %s.addr, align 8, !dbg !540, !tbaa !430
  %call1 = call double @_PyOS_ascii_strtod(i8* %3, i8** %fail_pos), !dbg !541
  store double %call1, double* %x, align 8, !dbg !542, !tbaa !480
  %call2 = call i32* @__errno_location() #1, !dbg !543
  %4 = load i32, i32* %call2, align 4, !dbg !545, !tbaa !443
  %cmp = icmp eq i32 %4, 12, !dbg !546
  br i1 %cmp, label %if.then, label %if.else, !dbg !547

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_NoMemory(), !dbg !548
  %5 = load i8*, i8** %s.addr, align 8, !dbg !550, !tbaa !430
  store i8* %5, i8** %fail_pos, align 8, !dbg !551, !tbaa !430
  br label %if.end.29, !dbg !552

if.else:                                          ; preds = %entry
  %6 = load i8**, i8*** %endptr.addr, align 8, !dbg !553, !tbaa !430
  %tobool = icmp ne i8** %6, null, !dbg !553
  br i1 %tobool, label %if.else.9, label %land.lhs.true, !dbg !555

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** %fail_pos, align 8, !dbg !556, !tbaa !430
  %8 = load i8*, i8** %s.addr, align 8, !dbg !558, !tbaa !430
  %cmp4 = icmp eq i8* %7, %8, !dbg !559
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false, !dbg !560

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i8*, i8** %fail_pos, align 8, !dbg !561, !tbaa !430
  %10 = load i8, i8* %9, align 1, !dbg !563, !tbaa !450
  %conv = sext i8 %10 to i32, !dbg !563
  %cmp5 = icmp ne i32 %conv, 0, !dbg !564
  br i1 %cmp5, label %if.then.7, label %if.else.9, !dbg !565

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !566, !tbaa !430
  %12 = load i8*, i8** %s.addr, align 8, !dbg !567, !tbaa !430
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %12), !dbg !568
  br label %if.end.28, !dbg !568

if.else.9:                                        ; preds = %lor.lhs.false, %if.else
  %13 = load i8*, i8** %fail_pos, align 8, !dbg !569, !tbaa !430
  %14 = load i8*, i8** %s.addr, align 8, !dbg !571, !tbaa !430
  %cmp10 = icmp eq i8* %13, %14, !dbg !572
  br i1 %cmp10, label %if.then.12, label %if.else.14, !dbg !573

if.then.12:                                       ; preds = %if.else.9
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !574, !tbaa !430
  %16 = load i8*, i8** %s.addr, align 8, !dbg !575, !tbaa !430
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %16), !dbg !576
  br label %if.end.27, !dbg !576

if.else.14:                                       ; preds = %if.else.9
  %call15 = call i32* @__errno_location() #1, !dbg !577
  %17 = load i32, i32* %call15, align 4, !dbg !579, !tbaa !443
  %cmp16 = icmp eq i32 %17, 34, !dbg !580
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.26, !dbg !581

land.lhs.true.18:                                 ; preds = %if.else.14
  %18 = load double, double* %x, align 8, !dbg !582, !tbaa !480
  %call19 = call double @fabs(double %18) #1, !dbg !584
  %cmp20 = fcmp oge double %call19, 1.000000e+00, !dbg !585
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.26, !dbg !586

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %19 = load %struct._object*, %struct._object** %overflow_exception.addr, align 8, !dbg !587, !tbaa !430
  %tobool23 = icmp ne %struct._object* %19, null, !dbg !587
  br i1 %tobool23, label %if.then.24, label %if.else.26, !dbg !589

if.then.24:                                       ; preds = %land.lhs.true.22
  %20 = load %struct._object*, %struct._object** %overflow_exception.addr, align 8, !dbg !590, !tbaa !430
  %21 = load i8*, i8** %s.addr, align 8, !dbg !591, !tbaa !430
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %21), !dbg !592
  br label %if.end, !dbg !592

if.else.26:                                       ; preds = %land.lhs.true.22, %land.lhs.true.18, %if.else.14
  %22 = load double, double* %x, align 8, !dbg !593, !tbaa !480
  store double %22, double* %result, align 8, !dbg !594, !tbaa !480
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.7
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %23 = load i8**, i8*** %endptr.addr, align 8, !dbg !595, !tbaa !430
  %cmp30 = icmp ne i8** %23, null, !dbg !597
  br i1 %cmp30, label %if.then.32, label %if.end.33, !dbg !598

if.then.32:                                       ; preds = %if.end.29
  %24 = load i8*, i8** %fail_pos, align 8, !dbg !599, !tbaa !430
  %25 = load i8**, i8*** %endptr.addr, align 8, !dbg !600, !tbaa !430
  store i8* %24, i8** %25, align 8, !dbg !601, !tbaa !430
  br label %if.end.33, !dbg !602

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %26 = load double, double* %result, align 8, !dbg !603, !tbaa !480
  %27 = bitcast i8** %fail_pos to i8*, !dbg !604
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !604
  %28 = bitcast double* %result to i8*, !dbg !604
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !604
  %29 = bitcast double* %x to i8*, !dbg !604
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !604
  ret double %26, !dbg !605
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal double @_PyOS_ascii_strtod(i8* %nptr, i8** %endptr) #0 {
entry:
  %nptr.addr = alloca i8*, align 8
  %endptr.addr = alloca i8**, align 8
  %result = alloca double, align 8
  %old_387controlword = alloca i16, align 2
  %new_387controlword = alloca i16, align 2
  store i8* %nptr, i8** %nptr.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8** %nptr.addr, metadata !387, metadata !434), !dbg !606
  store i8** %endptr, i8*** %endptr.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8*** %endptr.addr, metadata !388, metadata !434), !dbg !607
  %0 = bitcast double* %result to i8*, !dbg !608
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !608
  call void @llvm.dbg.declare(metadata double* %result, metadata !389, metadata !434), !dbg !609
  %1 = bitcast i16* %old_387controlword to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 2, i8* %1) #2, !dbg !610
  call void @llvm.dbg.declare(metadata i16* %old_387controlword, metadata !390, metadata !434), !dbg !611
  %2 = bitcast i16* %new_387controlword to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 2, i8* %2) #2, !dbg !610
  call void @llvm.dbg.declare(metadata i16* %new_387controlword, metadata !391, metadata !434), !dbg !612
  %call = call i32* @__errno_location() #1, !dbg !613
  store i32 0, i32* %call, align 4, !dbg !614, !tbaa !443
  br label %do.body, !dbg !615

do.body:                                          ; preds = %entry
  %call1 = call zeroext i16 @_Py_get_387controlword(), !dbg !616
  store i16 %call1, i16* %old_387controlword, align 2, !dbg !619, !tbaa !620
  %3 = load i16, i16* %old_387controlword, align 2, !dbg !622, !tbaa !620
  %conv = zext i16 %3 to i32, !dbg !622
  %and = and i32 %conv, -3841, !dbg !623
  %or = or i32 %and, 512, !dbg !624
  %conv2 = trunc i32 %or to i16, !dbg !625
  store i16 %conv2, i16* %new_387controlword, align 2, !dbg !626, !tbaa !620
  %4 = load i16, i16* %new_387controlword, align 2, !dbg !627, !tbaa !620
  %conv3 = zext i16 %4 to i32, !dbg !627
  %5 = load i16, i16* %old_387controlword, align 2, !dbg !629, !tbaa !620
  %conv4 = zext i16 %5 to i32, !dbg !629
  %cmp = icmp ne i32 %conv3, %conv4, !dbg !630
  br i1 %cmp, label %if.then, label %if.end, !dbg !631

if.then:                                          ; preds = %do.body
  %6 = load i16, i16* %new_387controlword, align 2, !dbg !632, !tbaa !620
  call void @_Py_set_387controlword(i16 zeroext %6), !dbg !634
  br label %if.end, !dbg !634

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !635

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !638

do.end:                                           ; preds = %do.cond
  %7 = load i8*, i8** %nptr.addr, align 8, !dbg !640, !tbaa !430
  %8 = load i8**, i8*** %endptr.addr, align 8, !dbg !641, !tbaa !430
  %call6 = call double @_Py_dg_strtod(i8* %7, i8** %8), !dbg !642
  store double %call6, double* %result, align 8, !dbg !643, !tbaa !480
  %9 = load i16, i16* %new_387controlword, align 2, !dbg !644, !tbaa !620
  %conv7 = zext i16 %9 to i32, !dbg !644
  %10 = load i16, i16* %old_387controlword, align 2, !dbg !646, !tbaa !620
  %conv8 = zext i16 %10 to i32, !dbg !646
  %cmp9 = icmp ne i32 %conv7, %conv8, !dbg !647
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !648

if.then.11:                                       ; preds = %do.end
  %11 = load i16, i16* %old_387controlword, align 2, !dbg !649, !tbaa !620
  call void @_Py_set_387controlword(i16 zeroext %11), !dbg !651
  br label %if.end.12, !dbg !651

if.end.12:                                        ; preds = %if.then.11, %do.end
  %12 = load i8**, i8*** %endptr.addr, align 8, !dbg !652, !tbaa !430
  %13 = load i8*, i8** %12, align 8, !dbg !654, !tbaa !430
  %14 = load i8*, i8** %nptr.addr, align 8, !dbg !655, !tbaa !430
  %cmp13 = icmp eq i8* %13, %14, !dbg !656
  br i1 %cmp13, label %if.then.15, label %if.end.17, !dbg !657

if.then.15:                                       ; preds = %if.end.12
  %15 = load i8*, i8** %nptr.addr, align 8, !dbg !658, !tbaa !430
  %16 = load i8**, i8*** %endptr.addr, align 8, !dbg !659, !tbaa !430
  %call16 = call double @_Py_parse_inf_or_nan(i8* %15, i8** %16), !dbg !660
  store double %call16, double* %result, align 8, !dbg !661, !tbaa !480
  br label %if.end.17, !dbg !662

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %17 = load double, double* %result, align 8, !dbg !663, !tbaa !480
  %18 = bitcast i16* %new_387controlword to i8*, !dbg !664
  call void @llvm.lifetime.end(i64 2, i8* %18) #2, !dbg !664
  %19 = bitcast i16* %old_387controlword to i8*, !dbg !664
  call void @llvm.lifetime.end(i64 2, i8* %19) #2, !dbg !664
  %20 = bitcast double* %result to i8*, !dbg !664
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !664
  ret double %17, !dbg !665
}

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

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
  %cleanup.dest.slot = alloca i32
  store double %val, double* %val.addr, align 8, !tbaa !480
  call void @llvm.dbg.declare(metadata double* %val.addr, metadata !372, metadata !434), !dbg !666
  store i8 %format_code, i8* %format_code.addr, align 1, !tbaa !450
  call void @llvm.dbg.declare(metadata i8* %format_code.addr, metadata !373, metadata !434), !dbg !667
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %precision.addr, metadata !374, metadata !434), !dbg !668
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !375, metadata !434), !dbg !669
  store i32* %type, i32** %type.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !376, metadata !434), !dbg !670
  %0 = bitcast i8*** %float_strings to i8*, !dbg !671
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !671
  call void @llvm.dbg.declare(metadata i8*** %float_strings, metadata !377, metadata !434), !dbg !672
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8, !dbg !672, !tbaa !430
  %1 = bitcast i32* %mode to i8*, !dbg !673
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !673
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !378, metadata !434), !dbg !674
  %2 = load i8, i8* %format_code.addr, align 1, !dbg !675, !tbaa !450
  %conv = sext i8 %2 to i32, !dbg !675
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb.1
    i32 70, label %sw.bb.2
    i32 102, label %sw.bb.3
    i32 71, label %sw.bb.4
    i32 103, label %sw.bb.5
    i32 114, label %sw.bb.7
  ], !dbg !676

sw.bb:                                            ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8, !dbg !677, !tbaa !430
  store i8 101, i8* %format_code.addr, align 1, !dbg !679, !tbaa !450
  br label %sw.bb.1, !dbg !680

sw.bb.1:                                          ; preds = %entry, %sw.bb
  store i32 2, i32* %mode, align 4, !dbg !681, !tbaa !443
  %3 = load i32, i32* %precision.addr, align 4, !dbg !682, !tbaa !443
  %inc = add i32 %3, 1, !dbg !682
  store i32 %inc, i32* %precision.addr, align 4, !dbg !682, !tbaa !443
  br label %sw.epilog, !dbg !683

sw.bb.2:                                          ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8, !dbg !684, !tbaa !430
  store i8 102, i8* %format_code.addr, align 1, !dbg !685, !tbaa !450
  br label %sw.bb.3, !dbg !686

sw.bb.3:                                          ; preds = %entry, %sw.bb.2
  store i32 3, i32* %mode, align 4, !dbg !687, !tbaa !443
  br label %sw.epilog, !dbg !688

sw.bb.4:                                          ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i32 0, i32 0), i8*** %float_strings, align 8, !dbg !689, !tbaa !430
  store i8 103, i8* %format_code.addr, align 1, !dbg !690, !tbaa !450
  br label %sw.bb.5, !dbg !691

sw.bb.5:                                          ; preds = %entry, %sw.bb.4
  store i32 2, i32* %mode, align 4, !dbg !692, !tbaa !443
  %4 = load i32, i32* %precision.addr, align 4, !dbg !693, !tbaa !443
  %cmp = icmp eq i32 %4, 0, !dbg !695
  br i1 %cmp, label %if.then, label %if.end, !dbg !696

if.then:                                          ; preds = %sw.bb.5
  store i32 1, i32* %precision.addr, align 4, !dbg !697, !tbaa !443
  br label %if.end, !dbg !698

if.end:                                           ; preds = %if.then, %sw.bb.5
  br label %sw.epilog, !dbg !699

sw.bb.7:                                          ; preds = %entry
  store i32 0, i32* %mode, align 4, !dbg !700, !tbaa !443
  %5 = load i32, i32* %precision.addr, align 4, !dbg !701, !tbaa !443
  %cmp8 = icmp ne i32 %5, 0, !dbg !703
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !704

if.then.10:                                       ; preds = %sw.bb.7
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1221), !dbg !705
  store i8* null, i8** %retval, !dbg !707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !707

if.end.11:                                        ; preds = %sw.bb.7
  br label %sw.epilog, !dbg !708

sw.default:                                       ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1227), !dbg !709
  store i8* null, i8** %retval, !dbg !710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !710

sw.epilog:                                        ; preds = %if.end.11, %if.end, %sw.bb.3, %sw.bb.1
  %6 = load double, double* %val.addr, align 8, !dbg !711, !tbaa !480
  %7 = load i8, i8* %format_code.addr, align 1, !dbg !712, !tbaa !450
  %8 = load i32, i32* %mode, align 4, !dbg !713, !tbaa !443
  %9 = load i32, i32* %precision.addr, align 4, !dbg !714, !tbaa !443
  %10 = load i32, i32* %flags.addr, align 4, !dbg !715, !tbaa !443
  %and = and i32 %10, 1, !dbg !716
  %11 = load i32, i32* %flags.addr, align 4, !dbg !717, !tbaa !443
  %and12 = and i32 %11, 2, !dbg !718
  %12 = load i32, i32* %flags.addr, align 4, !dbg !719, !tbaa !443
  %and13 = and i32 %12, 4, !dbg !720
  %13 = load i8**, i8*** %float_strings, align 8, !dbg !721, !tbaa !430
  %14 = load i32*, i32** %type.addr, align 8, !dbg !722, !tbaa !430
  %call = call i8* @format_float_short(double %6, i8 signext %7, i32 %8, i32 %9, i32 %and, i32 %and12, i32 %and13, i8** %13, i32* %14), !dbg !723
  store i8* %call, i8** %retval, !dbg !724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !724

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.10
  %15 = bitcast i32* %mode to i8*, !dbg !725
  call void @llvm.lifetime.end(i64 4, i8* %15) #2, !dbg !725
  %16 = bitcast i8*** %float_strings to i8*, !dbg !725
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !725
  %17 = load i8*, i8** %retval, !dbg !725
  ret i8* %17, !dbg !725
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

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
  store double %d, double* %d.addr, align 8, !tbaa !480
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !396, metadata !434), !dbg !726
  store i8 %format_code, i8* %format_code.addr, align 1, !tbaa !450
  call void @llvm.dbg.declare(metadata i8* %format_code.addr, metadata !397, metadata !434), !dbg !727
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !398, metadata !434), !dbg !728
  store i32 %precision, i32* %precision.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %precision.addr, metadata !399, metadata !434), !dbg !729
  store i32 %always_add_sign, i32* %always_add_sign.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %always_add_sign.addr, metadata !400, metadata !434), !dbg !730
  store i32 %add_dot_0_if_integer, i32* %add_dot_0_if_integer.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %add_dot_0_if_integer.addr, metadata !401, metadata !434), !dbg !731
  store i32 %use_alt_formatting, i32* %use_alt_formatting.addr, align 4, !tbaa !443
  call void @llvm.dbg.declare(metadata i32* %use_alt_formatting.addr, metadata !402, metadata !434), !dbg !732
  store i8** %float_strings, i8*** %float_strings.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i8*** %float_strings.addr, metadata !403, metadata !434), !dbg !733
  store i32* %type, i32** %type.addr, align 8, !tbaa !430
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !404, metadata !434), !dbg !734
  %0 = bitcast i8** %buf to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !735
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !405, metadata !434), !dbg !736
  store i8* null, i8** %buf, align 8, !dbg !736, !tbaa !430
  %1 = bitcast i8** %p to i8*, !dbg !737
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !737
  call void @llvm.dbg.declare(metadata i8** %p, metadata !406, metadata !434), !dbg !738
  store i8* null, i8** %p, align 8, !dbg !738, !tbaa !430
  %2 = bitcast i64* %bufsize to i8*, !dbg !739
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !739
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !407, metadata !434), !dbg !740
  store i64 0, i64* %bufsize, align 8, !dbg !740, !tbaa !741
  %3 = bitcast i8** %digits to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !743
  call void @llvm.dbg.declare(metadata i8** %digits, metadata !408, metadata !434), !dbg !744
  %4 = bitcast i8** %digits_end to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !743
  call void @llvm.dbg.declare(metadata i8** %digits_end, metadata !409, metadata !434), !dbg !745
  %5 = bitcast i32* %decpt_as_int to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %decpt_as_int, metadata !410, metadata !434), !dbg !747
  %6 = bitcast i32* %sign to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !411, metadata !434), !dbg !748
  %7 = bitcast i32* %exp_len to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %exp_len, metadata !412, metadata !434), !dbg !749
  %8 = bitcast i32* %exp to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %exp, metadata !413, metadata !434), !dbg !750
  store i32 0, i32* %exp, align 4, !dbg !750, !tbaa !443
  %9 = bitcast i32* %use_exp to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %use_exp, metadata !414, metadata !434), !dbg !751
  store i32 0, i32* %use_exp, align 4, !dbg !751, !tbaa !443
  %10 = bitcast i64* %decpt to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !752
  call void @llvm.dbg.declare(metadata i64* %decpt, metadata !415, metadata !434), !dbg !753
  %11 = bitcast i64* %digits_len to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !752
  call void @llvm.dbg.declare(metadata i64* %digits_len, metadata !416, metadata !434), !dbg !754
  %12 = bitcast i64* %vdigits_start to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !752
  call void @llvm.dbg.declare(metadata i64* %vdigits_start, metadata !417, metadata !434), !dbg !755
  %13 = bitcast i64* %vdigits_end to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !752
  call void @llvm.dbg.declare(metadata i64* %vdigits_end, metadata !418, metadata !434), !dbg !756
  %14 = bitcast i16* %old_387controlword to i8*, !dbg !757
  call void @llvm.lifetime.start(i64 2, i8* %14) #2, !dbg !757
  call void @llvm.dbg.declare(metadata i16* %old_387controlword, metadata !419, metadata !434), !dbg !758
  %15 = bitcast i16* %new_387controlword to i8*, !dbg !757
  call void @llvm.lifetime.start(i64 2, i8* %15) #2, !dbg !757
  call void @llvm.dbg.declare(metadata i16* %new_387controlword, metadata !420, metadata !434), !dbg !759
  br label %do.body, !dbg !760

do.body:                                          ; preds = %entry
  %call = call zeroext i16 @_Py_get_387controlword(), !dbg !761
  store i16 %call, i16* %old_387controlword, align 2, !dbg !764, !tbaa !620
  %16 = load i16, i16* %old_387controlword, align 2, !dbg !765, !tbaa !620
  %conv = zext i16 %16 to i32, !dbg !765
  %and = and i32 %conv, -3841, !dbg !766
  %or = or i32 %and, 512, !dbg !767
  %conv1 = trunc i32 %or to i16, !dbg !768
  store i16 %conv1, i16* %new_387controlword, align 2, !dbg !769, !tbaa !620
  %17 = load i16, i16* %new_387controlword, align 2, !dbg !770, !tbaa !620
  %conv2 = zext i16 %17 to i32, !dbg !770
  %18 = load i16, i16* %old_387controlword, align 2, !dbg !772, !tbaa !620
  %conv3 = zext i16 %18 to i32, !dbg !772
  %cmp = icmp ne i32 %conv2, %conv3, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %do.body
  %19 = load i16, i16* %new_387controlword, align 2, !dbg !775, !tbaa !620
  call void @_Py_set_387controlword(i16 zeroext %19), !dbg !777
  br label %if.end, !dbg !777

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !778

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !781

do.end:                                           ; preds = %do.cond
  %20 = load double, double* %d.addr, align 8, !dbg !783, !tbaa !480
  %21 = load i32, i32* %mode.addr, align 4, !dbg !784, !tbaa !443
  %22 = load i32, i32* %precision.addr, align 4, !dbg !785, !tbaa !443
  %call5 = call i8* @_Py_dg_dtoa(double %20, i32 %21, i32 %22, i32* %decpt_as_int, i32* %sign, i8** %digits_end), !dbg !786
  store i8* %call5, i8** %digits, align 8, !dbg !787, !tbaa !430
  %23 = load i16, i16* %new_387controlword, align 2, !dbg !788, !tbaa !620
  %conv6 = zext i16 %23 to i32, !dbg !788
  %24 = load i16, i16* %old_387controlword, align 2, !dbg !790, !tbaa !620
  %conv7 = zext i16 %24 to i32, !dbg !790
  %cmp8 = icmp ne i32 %conv6, %conv7, !dbg !791
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !792

if.then.10:                                       ; preds = %do.end
  %25 = load i16, i16* %old_387controlword, align 2, !dbg !793, !tbaa !620
  call void @_Py_set_387controlword(i16 zeroext %25), !dbg !795
  br label %if.end.11, !dbg !795

if.end.11:                                        ; preds = %if.then.10, %do.end
  %26 = load i32, i32* %decpt_as_int, align 4, !dbg !796, !tbaa !443
  %conv12 = sext i32 %26 to i64, !dbg !797
  store i64 %conv12, i64* %decpt, align 8, !dbg !798, !tbaa !741
  %27 = load i8*, i8** %digits, align 8, !dbg !799, !tbaa !430
  %cmp13 = icmp eq i8* %27, null, !dbg !801
  br i1 %cmp13, label %if.then.15, label %if.end.17, !dbg !802

if.then.15:                                       ; preds = %if.end.11
  %call16 = call %struct._object* @PyErr_NoMemory(), !dbg !803
  br label %exit, !dbg !805

if.end.17:                                        ; preds = %if.end.11
  %28 = load i8*, i8** %digits_end, align 8, !dbg !806, !tbaa !430
  %29 = load i8*, i8** %digits, align 8, !dbg !807, !tbaa !430
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64, !dbg !808
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64, !dbg !808
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !808
  store i64 %sub.ptr.sub, i64* %digits_len, align 8, !dbg !809, !tbaa !741
  %30 = load i64, i64* %digits_len, align 8, !dbg !810, !tbaa !741
  %tobool = icmp ne i64 %30, 0, !dbg !810
  br i1 %tobool, label %land.lhs.true, label %if.end.85, !dbg !812

land.lhs.true:                                    ; preds = %if.end.17
  %31 = load i8*, i8** %digits, align 8, !dbg !813, !tbaa !430
  %arrayidx = getelementptr i8, i8* %31, i64 0, !dbg !813
  %32 = load i8, i8* %arrayidx, align 1, !dbg !813, !tbaa !450
  %conv18 = sext i8 %32 to i32, !dbg !815
  %and19 = and i32 %conv18, 255, !dbg !816
  %conv20 = trunc i32 %and19 to i8, !dbg !817
  %idxprom = zext i8 %conv20 to i64, !dbg !818
  %arrayidx21 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !818
  %33 = load i32, i32* %arrayidx21, align 4, !dbg !818, !tbaa !443
  %and22 = and i32 %33, 4, !dbg !819
  %tobool23 = icmp ne i32 %and22, 0, !dbg !819
  br i1 %tobool23, label %if.end.85, label %if.then.24, !dbg !820

if.then.24:                                       ; preds = %land.lhs.true
  %34 = load i8*, i8** %digits, align 8, !dbg !821, !tbaa !430
  %arrayidx25 = getelementptr i8, i8* %34, i64 0, !dbg !821
  %35 = load i8, i8* %arrayidx25, align 1, !dbg !821, !tbaa !450
  %conv26 = sext i8 %35 to i32, !dbg !821
  %cmp27 = icmp eq i32 %conv26, 110, !dbg !824
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false, !dbg !825

lor.lhs.false:                                    ; preds = %if.then.24
  %36 = load i8*, i8** %digits, align 8, !dbg !826, !tbaa !430
  %arrayidx29 = getelementptr i8, i8* %36, i64 0, !dbg !826
  %37 = load i8, i8* %arrayidx29, align 1, !dbg !826, !tbaa !450
  %conv30 = sext i8 %37 to i32, !dbg !826
  %cmp31 = icmp eq i32 %conv30, 78, !dbg !828
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !829

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.24
  store i32 0, i32* %sign, align 4, !dbg !830, !tbaa !443
  br label %if.end.34, !dbg !831

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false
  store i64 5, i64* %bufsize, align 8, !dbg !832, !tbaa !741
  %38 = load i64, i64* %bufsize, align 8, !dbg !833, !tbaa !741
  %call35 = call i8* @PyMem_Malloc(i64 %38), !dbg !834
  store i8* %call35, i8** %buf, align 8, !dbg !835, !tbaa !430
  %39 = load i8*, i8** %buf, align 8, !dbg !836, !tbaa !430
  %cmp36 = icmp eq i8* %39, null, !dbg !838
  br i1 %cmp36, label %if.then.38, label %if.end.40, !dbg !839

if.then.38:                                       ; preds = %if.end.34
  %call39 = call %struct._object* @PyErr_NoMemory(), !dbg !840
  br label %exit, !dbg !842

if.end.40:                                        ; preds = %if.end.34
  %40 = load i8*, i8** %buf, align 8, !dbg !843, !tbaa !430
  store i8* %40, i8** %p, align 8, !dbg !844, !tbaa !430
  %41 = load i32, i32* %sign, align 4, !dbg !845, !tbaa !443
  %cmp41 = icmp eq i32 %41, 1, !dbg !847
  br i1 %cmp41, label %if.then.43, label %if.else, !dbg !848

if.then.43:                                       ; preds = %if.end.40
  %42 = load i8*, i8** %p, align 8, !dbg !849, !tbaa !430
  %incdec.ptr = getelementptr i8, i8* %42, i32 1, !dbg !849
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !849, !tbaa !430
  store i8 45, i8* %42, align 1, !dbg !851, !tbaa !450
  br label %if.end.48, !dbg !852

if.else:                                          ; preds = %if.end.40
  %43 = load i32, i32* %always_add_sign.addr, align 4, !dbg !853, !tbaa !443
  %tobool44 = icmp ne i32 %43, 0, !dbg !853
  br i1 %tobool44, label %if.then.45, label %if.end.47, !dbg !855

if.then.45:                                       ; preds = %if.else
  %44 = load i8*, i8** %p, align 8, !dbg !856, !tbaa !430
  %incdec.ptr46 = getelementptr i8, i8* %44, i32 1, !dbg !856
  store i8* %incdec.ptr46, i8** %p, align 8, !dbg !856, !tbaa !430
  store i8 43, i8* %44, align 1, !dbg !858, !tbaa !450
  br label %if.end.47, !dbg !859

if.end.47:                                        ; preds = %if.then.45, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.43
  %45 = load i8*, i8** %digits, align 8, !dbg !860, !tbaa !430
  %arrayidx49 = getelementptr i8, i8* %45, i64 0, !dbg !860
  %46 = load i8, i8* %arrayidx49, align 1, !dbg !860, !tbaa !450
  %conv50 = sext i8 %46 to i32, !dbg !860
  %cmp51 = icmp eq i32 %conv50, 105, !dbg !862
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.53, !dbg !863

lor.lhs.false.53:                                 ; preds = %if.end.48
  %47 = load i8*, i8** %digits, align 8, !dbg !864, !tbaa !430
  %arrayidx54 = getelementptr i8, i8* %47, i64 0, !dbg !864
  %48 = load i8, i8* %arrayidx54, align 1, !dbg !864, !tbaa !450
  %conv55 = sext i8 %48 to i32, !dbg !864
  %cmp56 = icmp eq i32 %conv55, 73, !dbg !866
  br i1 %cmp56, label %if.then.58, label %if.else.64, !dbg !867

if.then.58:                                       ; preds = %lor.lhs.false.53, %if.end.48
  %49 = load i8*, i8** %p, align 8, !dbg !868, !tbaa !430
  %50 = load i8**, i8*** %float_strings.addr, align 8, !dbg !870, !tbaa !430
  %arrayidx59 = getelementptr i8*, i8** %50, i64 0, !dbg !870
  %51 = load i8*, i8** %arrayidx59, align 8, !dbg !870, !tbaa !430
  %call60 = call i8* @strncpy(i8* %49, i8* %51, i64 3) #2, !dbg !871
  %52 = load i8*, i8** %p, align 8, !dbg !872, !tbaa !430
  %add.ptr = getelementptr i8, i8* %52, i64 3, !dbg !872
  store i8* %add.ptr, i8** %p, align 8, !dbg !872, !tbaa !430
  %53 = load i32*, i32** %type.addr, align 8, !dbg !873, !tbaa !430
  %tobool61 = icmp ne i32* %53, null, !dbg !873
  br i1 %tobool61, label %if.then.62, label %if.end.63, !dbg !875

if.then.62:                                       ; preds = %if.then.58
  %54 = load i32*, i32** %type.addr, align 8, !dbg !876, !tbaa !430
  store i32 1, i32* %54, align 4, !dbg !877, !tbaa !443
  br label %if.end.63, !dbg !878

if.end.63:                                        ; preds = %if.then.62, %if.then.58
  br label %if.end.84, !dbg !879

if.else.64:                                       ; preds = %lor.lhs.false.53
  %55 = load i8*, i8** %digits, align 8, !dbg !880, !tbaa !430
  %arrayidx65 = getelementptr i8, i8* %55, i64 0, !dbg !880
  %56 = load i8, i8* %arrayidx65, align 1, !dbg !880, !tbaa !450
  %conv66 = sext i8 %56 to i32, !dbg !880
  %cmp67 = icmp eq i32 %conv66, 110, !dbg !882
  br i1 %cmp67, label %if.then.74, label %lor.lhs.false.69, !dbg !883

lor.lhs.false.69:                                 ; preds = %if.else.64
  %57 = load i8*, i8** %digits, align 8, !dbg !884, !tbaa !430
  %arrayidx70 = getelementptr i8, i8* %57, i64 0, !dbg !884
  %58 = load i8, i8* %arrayidx70, align 1, !dbg !884, !tbaa !450
  %conv71 = sext i8 %58 to i32, !dbg !884
  %cmp72 = icmp eq i32 %conv71, 78, !dbg !886
  br i1 %cmp72, label %if.then.74, label %if.else.81, !dbg !887

if.then.74:                                       ; preds = %lor.lhs.false.69, %if.else.64
  %59 = load i8*, i8** %p, align 8, !dbg !888, !tbaa !430
  %60 = load i8**, i8*** %float_strings.addr, align 8, !dbg !890, !tbaa !430
  %arrayidx75 = getelementptr i8*, i8** %60, i64 1, !dbg !890
  %61 = load i8*, i8** %arrayidx75, align 8, !dbg !890, !tbaa !430
  %call76 = call i8* @strncpy(i8* %59, i8* %61, i64 3) #2, !dbg !891
  %62 = load i8*, i8** %p, align 8, !dbg !892, !tbaa !430
  %add.ptr77 = getelementptr i8, i8* %62, i64 3, !dbg !892
  store i8* %add.ptr77, i8** %p, align 8, !dbg !892, !tbaa !430
  %63 = load i32*, i32** %type.addr, align 8, !dbg !893, !tbaa !430
  %tobool78 = icmp ne i32* %63, null, !dbg !893
  br i1 %tobool78, label %if.then.79, label %if.end.80, !dbg !895

if.then.79:                                       ; preds = %if.then.74
  %64 = load i32*, i32** %type.addr, align 8, !dbg !896, !tbaa !430
  store i32 2, i32* %64, align 4, !dbg !897, !tbaa !443
  br label %if.end.80, !dbg !898

if.end.80:                                        ; preds = %if.then.79, %if.then.74
  br label %if.end.83, !dbg !899

if.else.81:                                       ; preds = %lor.lhs.false.69
  %65 = load i8*, i8** %p, align 8, !dbg !900, !tbaa !430
  %call82 = call i8* @strncpy(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 3) #2, !dbg !902
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.end.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.63
  br label %exit, !dbg !903

if.end.85:                                        ; preds = %land.lhs.true, %if.end.17
  %66 = load i32*, i32** %type.addr, align 8, !dbg !904, !tbaa !430
  %tobool86 = icmp ne i32* %66, null, !dbg !904
  br i1 %tobool86, label %if.then.87, label %if.end.88, !dbg !906

if.then.87:                                       ; preds = %if.end.85
  %67 = load i32*, i32** %type.addr, align 8, !dbg !907, !tbaa !430
  store i32 0, i32* %67, align 4, !dbg !908, !tbaa !443
  br label %if.end.88, !dbg !909

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  %68 = load i64, i64* %digits_len, align 8, !dbg !910, !tbaa !741
  store i64 %68, i64* %vdigits_end, align 8, !dbg !911, !tbaa !741
  %69 = load i8, i8* %format_code.addr, align 1, !dbg !912, !tbaa !450
  %conv89 = sext i8 %69 to i32, !dbg !912
  switch i32 %conv89, label %sw.default [
    i32 101, label %sw.bb
    i32 102, label %sw.bb.91
    i32 103, label %sw.bb.93
    i32 114, label %sw.bb.107
  ], !dbg !913

sw.bb:                                            ; preds = %if.end.88
  store i32 1, i32* %use_exp, align 4, !dbg !914, !tbaa !443
  %70 = load i32, i32* %precision.addr, align 4, !dbg !916, !tbaa !443
  %conv90 = sext i32 %70 to i64, !dbg !916
  store i64 %conv90, i64* %vdigits_end, align 8, !dbg !917, !tbaa !741
  br label %sw.epilog, !dbg !918

sw.bb.91:                                         ; preds = %if.end.88
  %71 = load i64, i64* %decpt, align 8, !dbg !919, !tbaa !741
  %72 = load i32, i32* %precision.addr, align 4, !dbg !920, !tbaa !443
  %conv92 = sext i32 %72 to i64, !dbg !920
  %add = add i64 %71, %conv92, !dbg !921
  store i64 %add, i64* %vdigits_end, align 8, !dbg !922, !tbaa !741
  br label %sw.epilog, !dbg !923

sw.bb.93:                                         ; preds = %if.end.88
  %73 = load i64, i64* %decpt, align 8, !dbg !924, !tbaa !741
  %cmp94 = icmp sle i64 %73, -4, !dbg !926
  br i1 %cmp94, label %if.then.101, label %lor.lhs.false.96, !dbg !927

lor.lhs.false.96:                                 ; preds = %sw.bb.93
  %74 = load i64, i64* %decpt, align 8, !dbg !928, !tbaa !741
  %75 = load i32, i32* %add_dot_0_if_integer.addr, align 4, !dbg !930, !tbaa !443
  %tobool97 = icmp ne i32 %75, 0, !dbg !930
  br i1 %tobool97, label %cond.true, label %cond.false, !dbg !930

cond.true:                                        ; preds = %lor.lhs.false.96
  %76 = load i32, i32* %precision.addr, align 4, !dbg !931, !tbaa !443
  %sub = sub i32 %76, 1, !dbg !932
  br label %cond.end, !dbg !930

cond.false:                                       ; preds = %lor.lhs.false.96
  %77 = load i32, i32* %precision.addr, align 4, !dbg !933, !tbaa !443
  br label %cond.end, !dbg !930

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %77, %cond.false ], !dbg !930
  %conv98 = sext i32 %cond to i64, !dbg !935
  %cmp99 = icmp sgt i64 %74, %conv98, !dbg !938
  br i1 %cmp99, label %if.then.101, label %if.end.102, !dbg !939

if.then.101:                                      ; preds = %cond.end, %sw.bb.93
  store i32 1, i32* %use_exp, align 4, !dbg !940, !tbaa !443
  br label %if.end.102, !dbg !941

if.end.102:                                       ; preds = %if.then.101, %cond.end
  %78 = load i32, i32* %use_alt_formatting.addr, align 4, !dbg !942, !tbaa !443
  %tobool103 = icmp ne i32 %78, 0, !dbg !942
  br i1 %tobool103, label %if.then.104, label %if.end.106, !dbg !944

if.then.104:                                      ; preds = %if.end.102
  %79 = load i32, i32* %precision.addr, align 4, !dbg !945, !tbaa !443
  %conv105 = sext i32 %79 to i64, !dbg !945
  store i64 %conv105, i64* %vdigits_end, align 8, !dbg !946, !tbaa !741
  br label %if.end.106, !dbg !947

if.end.106:                                       ; preds = %if.then.104, %if.end.102
  br label %sw.epilog, !dbg !948

sw.bb.107:                                        ; preds = %if.end.88
  %80 = load i64, i64* %decpt, align 8, !dbg !949, !tbaa !741
  %cmp108 = icmp sle i64 %80, -4, !dbg !951
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110, !dbg !952

lor.lhs.false.110:                                ; preds = %sw.bb.107
  %81 = load i64, i64* %decpt, align 8, !dbg !953, !tbaa !741
  %cmp111 = icmp sgt i64 %81, 16, !dbg !955
  br i1 %cmp111, label %if.then.113, label %if.end.114, !dbg !956

if.then.113:                                      ; preds = %lor.lhs.false.110, %sw.bb.107
  store i32 1, i32* %use_exp, align 4, !dbg !957, !tbaa !443
  br label %if.end.114, !dbg !958

if.end.114:                                       ; preds = %if.then.113, %lor.lhs.false.110
  br label %sw.epilog, !dbg !959

sw.default:                                       ; preds = %if.end.88
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1055), !dbg !960
  br label %exit, !dbg !961

sw.epilog:                                        ; preds = %if.end.114, %if.end.106, %sw.bb.91, %sw.bb
  %82 = load i32, i32* %use_exp, align 4, !dbg !962, !tbaa !443
  %tobool115 = icmp ne i32 %82, 0, !dbg !962
  br i1 %tobool115, label %if.then.116, label %if.end.119, !dbg !964

if.then.116:                                      ; preds = %sw.epilog
  %83 = load i64, i64* %decpt, align 8, !dbg !965, !tbaa !741
  %conv117 = trunc i64 %83 to i32, !dbg !967
  %sub118 = sub i32 %conv117, 1, !dbg !968
  store i32 %sub118, i32* %exp, align 4, !dbg !969, !tbaa !443
  store i64 1, i64* %decpt, align 8, !dbg !970, !tbaa !741
  br label %if.end.119, !dbg !971

if.end.119:                                       ; preds = %if.then.116, %sw.epilog
  %84 = load i64, i64* %decpt, align 8, !dbg !972, !tbaa !741
  %cmp120 = icmp sle i64 %84, 0, !dbg !973
  br i1 %cmp120, label %cond.true.122, label %cond.false.124, !dbg !972

cond.true.122:                                    ; preds = %if.end.119
  %85 = load i64, i64* %decpt, align 8, !dbg !974, !tbaa !741
  %sub123 = sub i64 %85, 1, !dbg !976
  br label %cond.end.125, !dbg !972

cond.false.124:                                   ; preds = %if.end.119
  br label %cond.end.125, !dbg !977

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.122
  %cond126 = phi i64 [ %sub123, %cond.true.122 ], [ 0, %cond.false.124 ], !dbg !972
  store i64 %cond126, i64* %vdigits_start, align 8, !dbg !979, !tbaa !741
  %86 = load i32, i32* %use_exp, align 4, !dbg !982, !tbaa !443
  %tobool127 = icmp ne i32 %86, 0, !dbg !982
  br i1 %tobool127, label %if.else.138, label %land.lhs.true.128, !dbg !984

land.lhs.true.128:                                ; preds = %cond.end.125
  %87 = load i32, i32* %add_dot_0_if_integer.addr, align 4, !dbg !985, !tbaa !443
  %tobool129 = icmp ne i32 %87, 0, !dbg !985
  br i1 %tobool129, label %if.then.130, label %if.else.138, !dbg !987

if.then.130:                                      ; preds = %land.lhs.true.128
  %88 = load i64, i64* %vdigits_end, align 8, !dbg !988, !tbaa !741
  %89 = load i64, i64* %decpt, align 8, !dbg !989, !tbaa !741
  %cmp131 = icmp sgt i64 %88, %89, !dbg !990
  br i1 %cmp131, label %cond.true.133, label %cond.false.134, !dbg !988

cond.true.133:                                    ; preds = %if.then.130
  %90 = load i64, i64* %vdigits_end, align 8, !dbg !991, !tbaa !741
  br label %cond.end.136, !dbg !988

cond.false.134:                                   ; preds = %if.then.130
  %91 = load i64, i64* %decpt, align 8, !dbg !992, !tbaa !741
  %add135 = add i64 %91, 1, !dbg !994
  br label %cond.end.136, !dbg !988

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.133
  %cond137 = phi i64 [ %90, %cond.true.133 ], [ %add135, %cond.false.134 ], !dbg !988
  store i64 %cond137, i64* %vdigits_end, align 8, !dbg !995, !tbaa !741
  br label %if.end.145, !dbg !998

if.else.138:                                      ; preds = %land.lhs.true.128, %cond.end.125
  %92 = load i64, i64* %vdigits_end, align 8, !dbg !999, !tbaa !741
  %93 = load i64, i64* %decpt, align 8, !dbg !1000, !tbaa !741
  %cmp139 = icmp sgt i64 %92, %93, !dbg !1001
  br i1 %cmp139, label %cond.true.141, label %cond.false.142, !dbg !999

cond.true.141:                                    ; preds = %if.else.138
  %94 = load i64, i64* %vdigits_end, align 8, !dbg !1002, !tbaa !741
  br label %cond.end.143, !dbg !999

cond.false.142:                                   ; preds = %if.else.138
  %95 = load i64, i64* %decpt, align 8, !dbg !1003, !tbaa !741
  br label %cond.end.143, !dbg !999

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.141
  %cond144 = phi i64 [ %94, %cond.true.141 ], [ %95, %cond.false.142 ], !dbg !999
  store i64 %cond144, i64* %vdigits_end, align 8, !dbg !1004, !tbaa !741
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.143, %cond.end.136
  %96 = load i64, i64* %vdigits_end, align 8, !dbg !1005, !tbaa !741
  %97 = load i64, i64* %vdigits_start, align 8, !dbg !1006, !tbaa !741
  %sub146 = sub i64 %96, %97, !dbg !1007
  %add147 = add i64 3, %sub146, !dbg !1008
  %98 = load i32, i32* %use_exp, align 4, !dbg !1009, !tbaa !443
  %tobool148 = icmp ne i32 %98, 0, !dbg !1009
  %cond149 = select i1 %tobool148, i32 5, i32 0, !dbg !1009
  %conv150 = sext i32 %cond149 to i64, !dbg !1010
  %add151 = add i64 %add147, %conv150, !dbg !1011
  store i64 %add151, i64* %bufsize, align 8, !dbg !1012, !tbaa !741
  %99 = load i64, i64* %bufsize, align 8, !dbg !1013, !tbaa !741
  %call152 = call i8* @PyMem_Malloc(i64 %99), !dbg !1014
  store i8* %call152, i8** %buf, align 8, !dbg !1015, !tbaa !430
  %100 = load i8*, i8** %buf, align 8, !dbg !1016, !tbaa !430
  %cmp153 = icmp eq i8* %100, null, !dbg !1018
  br i1 %cmp153, label %if.then.155, label %if.end.157, !dbg !1019

if.then.155:                                      ; preds = %if.end.145
  %call156 = call %struct._object* @PyErr_NoMemory(), !dbg !1020
  br label %exit, !dbg !1022

if.end.157:                                       ; preds = %if.end.145
  %101 = load i8*, i8** %buf, align 8, !dbg !1023, !tbaa !430
  store i8* %101, i8** %p, align 8, !dbg !1024, !tbaa !430
  %102 = load i32, i32* %sign, align 4, !dbg !1025, !tbaa !443
  %cmp158 = icmp eq i32 %102, 1, !dbg !1027
  br i1 %cmp158, label %if.then.160, label %if.else.162, !dbg !1028

if.then.160:                                      ; preds = %if.end.157
  %103 = load i8*, i8** %p, align 8, !dbg !1029, !tbaa !430
  %incdec.ptr161 = getelementptr i8, i8* %103, i32 1, !dbg !1029
  store i8* %incdec.ptr161, i8** %p, align 8, !dbg !1029, !tbaa !430
  store i8 45, i8* %103, align 1, !dbg !1030, !tbaa !450
  br label %if.end.167, !dbg !1031

if.else.162:                                      ; preds = %if.end.157
  %104 = load i32, i32* %always_add_sign.addr, align 4, !dbg !1032, !tbaa !443
  %tobool163 = icmp ne i32 %104, 0, !dbg !1032
  br i1 %tobool163, label %if.then.164, label %if.end.166, !dbg !1034

if.then.164:                                      ; preds = %if.else.162
  %105 = load i8*, i8** %p, align 8, !dbg !1035, !tbaa !430
  %incdec.ptr165 = getelementptr i8, i8* %105, i32 1, !dbg !1035
  store i8* %incdec.ptr165, i8** %p, align 8, !dbg !1035, !tbaa !430
  store i8 43, i8* %105, align 1, !dbg !1036, !tbaa !450
  br label %if.end.166, !dbg !1037

if.end.166:                                       ; preds = %if.then.164, %if.else.162
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.160
  %106 = load i64, i64* %decpt, align 8, !dbg !1038, !tbaa !741
  %cmp168 = icmp sle i64 %106, 0, !dbg !1040
  br i1 %cmp168, label %if.then.170, label %if.else.178, !dbg !1041

if.then.170:                                      ; preds = %if.end.167
  %107 = load i8*, i8** %p, align 8, !dbg !1042, !tbaa !430
  %108 = load i64, i64* %decpt, align 8, !dbg !1044, !tbaa !741
  %109 = load i64, i64* %vdigits_start, align 8, !dbg !1045, !tbaa !741
  %sub171 = sub i64 %108, %109, !dbg !1046
  call void @llvm.memset.p0i8.i64(i8* %107, i8 48, i64 %sub171, i32 1, i1 false), !dbg !1047
  %110 = load i64, i64* %decpt, align 8, !dbg !1048, !tbaa !741
  %111 = load i64, i64* %vdigits_start, align 8, !dbg !1049, !tbaa !741
  %sub172 = sub i64 %110, %111, !dbg !1050
  %112 = load i8*, i8** %p, align 8, !dbg !1051, !tbaa !430
  %add.ptr173 = getelementptr i8, i8* %112, i64 %sub172, !dbg !1051
  store i8* %add.ptr173, i8** %p, align 8, !dbg !1051, !tbaa !430
  %113 = load i8*, i8** %p, align 8, !dbg !1052, !tbaa !430
  %incdec.ptr174 = getelementptr i8, i8* %113, i32 1, !dbg !1052
  store i8* %incdec.ptr174, i8** %p, align 8, !dbg !1052, !tbaa !430
  store i8 46, i8* %113, align 1, !dbg !1053, !tbaa !450
  %114 = load i8*, i8** %p, align 8, !dbg !1054, !tbaa !430
  %115 = load i64, i64* %decpt, align 8, !dbg !1055, !tbaa !741
  %sub175 = sub i64 0, %115, !dbg !1056
  call void @llvm.memset.p0i8.i64(i8* %114, i8 48, i64 %sub175, i32 1, i1 false), !dbg !1057
  %116 = load i64, i64* %decpt, align 8, !dbg !1058, !tbaa !741
  %sub176 = sub i64 0, %116, !dbg !1059
  %117 = load i8*, i8** %p, align 8, !dbg !1060, !tbaa !430
  %add.ptr177 = getelementptr i8, i8* %117, i64 %sub176, !dbg !1060
  store i8* %add.ptr177, i8** %p, align 8, !dbg !1060, !tbaa !430
  br label %if.end.182, !dbg !1061

if.else.178:                                      ; preds = %if.end.167
  %118 = load i8*, i8** %p, align 8, !dbg !1062, !tbaa !430
  %119 = load i64, i64* %vdigits_start, align 8, !dbg !1064, !tbaa !741
  %sub179 = sub i64 0, %119, !dbg !1065
  call void @llvm.memset.p0i8.i64(i8* %118, i8 48, i64 %sub179, i32 1, i1 false), !dbg !1066
  %120 = load i64, i64* %vdigits_start, align 8, !dbg !1067, !tbaa !741
  %sub180 = sub i64 0, %120, !dbg !1068
  %121 = load i8*, i8** %p, align 8, !dbg !1069, !tbaa !430
  %add.ptr181 = getelementptr i8, i8* %121, i64 %sub180, !dbg !1069
  store i8* %add.ptr181, i8** %p, align 8, !dbg !1069, !tbaa !430
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.178, %if.then.170
  %122 = load i64, i64* %decpt, align 8, !dbg !1070, !tbaa !741
  %cmp183 = icmp slt i64 0, %122, !dbg !1072
  br i1 %cmp183, label %land.lhs.true.185, label %if.else.199, !dbg !1073

land.lhs.true.185:                                ; preds = %if.end.182
  %123 = load i64, i64* %decpt, align 8, !dbg !1074, !tbaa !741
  %124 = load i64, i64* %digits_len, align 8, !dbg !1076, !tbaa !741
  %cmp186 = icmp sle i64 %123, %124, !dbg !1077
  br i1 %cmp186, label %if.then.188, label %if.else.199, !dbg !1078

if.then.188:                                      ; preds = %land.lhs.true.185
  %125 = load i8*, i8** %p, align 8, !dbg !1079, !tbaa !430
  %126 = load i8*, i8** %digits, align 8, !dbg !1081, !tbaa !430
  %127 = load i64, i64* %decpt, align 8, !dbg !1082, !tbaa !741
  %sub189 = sub i64 %127, 0, !dbg !1083
  %call190 = call i8* @strncpy(i8* %125, i8* %126, i64 %sub189) #2, !dbg !1084
  %128 = load i64, i64* %decpt, align 8, !dbg !1085, !tbaa !741
  %sub191 = sub i64 %128, 0, !dbg !1086
  %129 = load i8*, i8** %p, align 8, !dbg !1087, !tbaa !430
  %add.ptr192 = getelementptr i8, i8* %129, i64 %sub191, !dbg !1087
  store i8* %add.ptr192, i8** %p, align 8, !dbg !1087, !tbaa !430
  %130 = load i8*, i8** %p, align 8, !dbg !1088, !tbaa !430
  %incdec.ptr193 = getelementptr i8, i8* %130, i32 1, !dbg !1088
  store i8* %incdec.ptr193, i8** %p, align 8, !dbg !1088, !tbaa !430
  store i8 46, i8* %130, align 1, !dbg !1089, !tbaa !450
  %131 = load i8*, i8** %p, align 8, !dbg !1090, !tbaa !430
  %132 = load i8*, i8** %digits, align 8, !dbg !1091, !tbaa !430
  %133 = load i64, i64* %decpt, align 8, !dbg !1092, !tbaa !741
  %add.ptr194 = getelementptr i8, i8* %132, i64 %133, !dbg !1093
  %134 = load i64, i64* %digits_len, align 8, !dbg !1094, !tbaa !741
  %135 = load i64, i64* %decpt, align 8, !dbg !1095, !tbaa !741
  %sub195 = sub i64 %134, %135, !dbg !1096
  %call196 = call i8* @strncpy(i8* %131, i8* %add.ptr194, i64 %sub195) #2, !dbg !1097
  %136 = load i64, i64* %digits_len, align 8, !dbg !1098, !tbaa !741
  %137 = load i64, i64* %decpt, align 8, !dbg !1099, !tbaa !741
  %sub197 = sub i64 %136, %137, !dbg !1100
  %138 = load i8*, i8** %p, align 8, !dbg !1101, !tbaa !430
  %add.ptr198 = getelementptr i8, i8* %138, i64 %sub197, !dbg !1101
  store i8* %add.ptr198, i8** %p, align 8, !dbg !1101, !tbaa !430
  br label %if.end.202, !dbg !1102

if.else.199:                                      ; preds = %land.lhs.true.185, %if.end.182
  %139 = load i8*, i8** %p, align 8, !dbg !1103, !tbaa !430
  %140 = load i8*, i8** %digits, align 8, !dbg !1105, !tbaa !430
  %141 = load i64, i64* %digits_len, align 8, !dbg !1106, !tbaa !741
  %call200 = call i8* @strncpy(i8* %139, i8* %140, i64 %141) #2, !dbg !1107
  %142 = load i64, i64* %digits_len, align 8, !dbg !1108, !tbaa !741
  %143 = load i8*, i8** %p, align 8, !dbg !1109, !tbaa !430
  %add.ptr201 = getelementptr i8, i8* %143, i64 %142, !dbg !1109
  store i8* %add.ptr201, i8** %p, align 8, !dbg !1109, !tbaa !430
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.188
  %144 = load i64, i64* %digits_len, align 8, !dbg !1110, !tbaa !741
  %145 = load i64, i64* %decpt, align 8, !dbg !1112, !tbaa !741
  %cmp203 = icmp slt i64 %144, %145, !dbg !1113
  br i1 %cmp203, label %if.then.205, label %if.else.213, !dbg !1114

if.then.205:                                      ; preds = %if.end.202
  %146 = load i8*, i8** %p, align 8, !dbg !1115, !tbaa !430
  %147 = load i64, i64* %decpt, align 8, !dbg !1117, !tbaa !741
  %148 = load i64, i64* %digits_len, align 8, !dbg !1118, !tbaa !741
  %sub206 = sub i64 %147, %148, !dbg !1119
  call void @llvm.memset.p0i8.i64(i8* %146, i8 48, i64 %sub206, i32 1, i1 false), !dbg !1120
  %149 = load i64, i64* %decpt, align 8, !dbg !1121, !tbaa !741
  %150 = load i64, i64* %digits_len, align 8, !dbg !1122, !tbaa !741
  %sub207 = sub i64 %149, %150, !dbg !1123
  %151 = load i8*, i8** %p, align 8, !dbg !1124, !tbaa !430
  %add.ptr208 = getelementptr i8, i8* %151, i64 %sub207, !dbg !1124
  store i8* %add.ptr208, i8** %p, align 8, !dbg !1124, !tbaa !430
  %152 = load i8*, i8** %p, align 8, !dbg !1125, !tbaa !430
  %incdec.ptr209 = getelementptr i8, i8* %152, i32 1, !dbg !1125
  store i8* %incdec.ptr209, i8** %p, align 8, !dbg !1125, !tbaa !430
  store i8 46, i8* %152, align 1, !dbg !1126, !tbaa !450
  %153 = load i8*, i8** %p, align 8, !dbg !1127, !tbaa !430
  %154 = load i64, i64* %vdigits_end, align 8, !dbg !1128, !tbaa !741
  %155 = load i64, i64* %decpt, align 8, !dbg !1129, !tbaa !741
  %sub210 = sub i64 %154, %155, !dbg !1130
  call void @llvm.memset.p0i8.i64(i8* %153, i8 48, i64 %sub210, i32 1, i1 false), !dbg !1131
  %156 = load i64, i64* %vdigits_end, align 8, !dbg !1132, !tbaa !741
  %157 = load i64, i64* %decpt, align 8, !dbg !1133, !tbaa !741
  %sub211 = sub i64 %156, %157, !dbg !1134
  %158 = load i8*, i8** %p, align 8, !dbg !1135, !tbaa !430
  %add.ptr212 = getelementptr i8, i8* %158, i64 %sub211, !dbg !1135
  store i8* %add.ptr212, i8** %p, align 8, !dbg !1135, !tbaa !430
  br label %if.end.217, !dbg !1136

if.else.213:                                      ; preds = %if.end.202
  %159 = load i8*, i8** %p, align 8, !dbg !1137, !tbaa !430
  %160 = load i64, i64* %vdigits_end, align 8, !dbg !1139, !tbaa !741
  %161 = load i64, i64* %digits_len, align 8, !dbg !1140, !tbaa !741
  %sub214 = sub i64 %160, %161, !dbg !1141
  call void @llvm.memset.p0i8.i64(i8* %159, i8 48, i64 %sub214, i32 1, i1 false), !dbg !1142
  %162 = load i64, i64* %vdigits_end, align 8, !dbg !1143, !tbaa !741
  %163 = load i64, i64* %digits_len, align 8, !dbg !1144, !tbaa !741
  %sub215 = sub i64 %162, %163, !dbg !1145
  %164 = load i8*, i8** %p, align 8, !dbg !1146, !tbaa !430
  %add.ptr216 = getelementptr i8, i8* %164, i64 %sub215, !dbg !1146
  store i8* %add.ptr216, i8** %p, align 8, !dbg !1146, !tbaa !430
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.213, %if.then.205
  %165 = load i8*, i8** %p, align 8, !dbg !1147, !tbaa !430
  %arrayidx218 = getelementptr i8, i8* %165, i64 -1, !dbg !1147
  %166 = load i8, i8* %arrayidx218, align 1, !dbg !1147, !tbaa !450
  %conv219 = sext i8 %166 to i32, !dbg !1147
  %cmp220 = icmp eq i32 %conv219, 46, !dbg !1149
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.226, !dbg !1150

land.lhs.true.222:                                ; preds = %if.end.217
  %167 = load i32, i32* %use_alt_formatting.addr, align 4, !dbg !1151, !tbaa !443
  %tobool223 = icmp ne i32 %167, 0, !dbg !1151
  br i1 %tobool223, label %if.end.226, label %if.then.224, !dbg !1153

if.then.224:                                      ; preds = %land.lhs.true.222
  %168 = load i8*, i8** %p, align 8, !dbg !1154, !tbaa !430
  %incdec.ptr225 = getelementptr i8, i8* %168, i32 -1, !dbg !1154
  store i8* %incdec.ptr225, i8** %p, align 8, !dbg !1154, !tbaa !430
  br label %if.end.226, !dbg !1155

if.end.226:                                       ; preds = %if.then.224, %land.lhs.true.222, %if.end.217
  %169 = load i32, i32* %use_exp, align 4, !dbg !1156, !tbaa !443
  %tobool227 = icmp ne i32 %169, 0, !dbg !1156
  br i1 %tobool227, label %if.then.228, label %if.end.234, !dbg !1158

if.then.228:                                      ; preds = %if.end.226
  %170 = load i8**, i8*** %float_strings.addr, align 8, !dbg !1159, !tbaa !430
  %arrayidx229 = getelementptr i8*, i8** %170, i64 2, !dbg !1159
  %171 = load i8*, i8** %arrayidx229, align 8, !dbg !1159, !tbaa !430
  %arrayidx230 = getelementptr i8, i8* %171, i64 0, !dbg !1159
  %172 = load i8, i8* %arrayidx230, align 1, !dbg !1159, !tbaa !450
  %173 = load i8*, i8** %p, align 8, !dbg !1161, !tbaa !430
  %incdec.ptr231 = getelementptr i8, i8* %173, i32 1, !dbg !1161
  store i8* %incdec.ptr231, i8** %p, align 8, !dbg !1161, !tbaa !430
  store i8 %172, i8* %173, align 1, !dbg !1162, !tbaa !450
  %174 = load i8*, i8** %p, align 8, !dbg !1163, !tbaa !430
  %175 = load i32, i32* %exp, align 4, !dbg !1164, !tbaa !443
  %call232 = call i32 (i8*, i8*, ...) @sprintf(i8* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %175) #2, !dbg !1165
  store i32 %call232, i32* %exp_len, align 4, !dbg !1166, !tbaa !443
  %176 = load i32, i32* %exp_len, align 4, !dbg !1167, !tbaa !443
  %177 = load i8*, i8** %p, align 8, !dbg !1168, !tbaa !430
  %idx.ext = sext i32 %176 to i64, !dbg !1168
  %add.ptr233 = getelementptr i8, i8* %177, i64 %idx.ext, !dbg !1168
  store i8* %add.ptr233, i8** %p, align 8, !dbg !1168, !tbaa !430
  br label %if.end.234, !dbg !1169

if.end.234:                                       ; preds = %if.then.228, %if.end.226
  br label %exit, !dbg !1170

exit:                                             ; preds = %if.end.234, %if.then.155, %sw.default, %if.end.84, %if.then.38, %if.then.15
  %178 = load i8*, i8** %buf, align 8, !dbg !1172, !tbaa !430
  %tobool235 = icmp ne i8* %178, null, !dbg !1172
  br i1 %tobool235, label %if.then.236, label %if.end.237, !dbg !1174

if.then.236:                                      ; preds = %exit
  %179 = load i8*, i8** %p, align 8, !dbg !1175, !tbaa !430
  store i8 0, i8* %179, align 1, !dbg !1177, !tbaa !450
  br label %if.end.237, !dbg !1178

if.end.237:                                       ; preds = %if.then.236, %exit
  %180 = load i8*, i8** %digits, align 8, !dbg !1179, !tbaa !430
  %tobool238 = icmp ne i8* %180, null, !dbg !1179
  br i1 %tobool238, label %if.then.239, label %if.end.240, !dbg !1181

if.then.239:                                      ; preds = %if.end.237
  %181 = load i8*, i8** %digits, align 8, !dbg !1182, !tbaa !430
  call void @_Py_dg_freedtoa(i8* %181), !dbg !1183
  br label %if.end.240, !dbg !1183

if.end.240:                                       ; preds = %if.then.239, %if.end.237
  %182 = load i8*, i8** %buf, align 8, !dbg !1184, !tbaa !430
  %183 = bitcast i16* %new_387controlword to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 2, i8* %183) #2, !dbg !1185
  %184 = bitcast i16* %old_387controlword to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 2, i8* %184) #2, !dbg !1185
  %185 = bitcast i64* %vdigits_end to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %185) #2, !dbg !1185
  %186 = bitcast i64* %vdigits_start to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %186) #2, !dbg !1185
  %187 = bitcast i64* %digits_len to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %187) #2, !dbg !1185
  %188 = bitcast i64* %decpt to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %188) #2, !dbg !1185
  %189 = bitcast i32* %use_exp to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 4, i8* %189) #2, !dbg !1185
  %190 = bitcast i32* %exp to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 4, i8* %190) #2, !dbg !1185
  %191 = bitcast i32* %exp_len to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 4, i8* %191) #2, !dbg !1185
  %192 = bitcast i32* %sign to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 4, i8* %192) #2, !dbg !1185
  %193 = bitcast i32* %decpt_as_int to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 4, i8* %193) #2, !dbg !1185
  %194 = bitcast i8** %digits_end to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !1185
  %195 = bitcast i8** %digits to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !1185
  %196 = bitcast i64* %bufsize to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %196) #2, !dbg !1185
  %197 = bitcast i8** %p to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %197) #2, !dbg !1185
  %198 = bitcast i8** %buf to i8*, !dbg !1185
  call void @llvm.lifetime.end(i64 8, i8* %198) #2, !dbg !1185
  ret i8* %182, !dbg !1186
}

declare zeroext i16 @_Py_get_387controlword() #3

declare void @_Py_set_387controlword(i16 zeroext) #3

declare double @_Py_dg_strtod(i8*, i8**) #3

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare void @_Py_dg_freedtoa(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!427, !428}
!llvm.ident = !{!429}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !16, globals: !421)
!1 = !DIFile(filename: "pystrtod.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !7, !8, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !9, line: 177, baseType: !10)
!9 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !11, line: 102, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !13, line: 181, baseType: !14)
!13 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !31, !367, !379, !385, !392}
!17 = !DISubprogram(name: "_Py_parse_inf_or_nan", scope: !18, file: !18, line: 28, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i8**)* @_Py_parse_inf_or_nan, variables: !25)
!18 = !DIFile(filename: "Python/pystrtod.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !24}
!21 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!25 = !{!26, !27, !28, !29, !30}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !17, file: !18, line: 28, type: !22)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !17, file: !18, line: 28, type: !24)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !17, file: !18, line: 30, type: !21)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !17, file: !18, line: 31, type: !22)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate", scope: !17, file: !18, line: 32, type: !15)
!31 = !DISubprogram(name: "PyOS_string_to_double", scope: !18, file: !18, line: 337, type: !32, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i8**, %struct._object*)* @PyOS_string_to_double, variables: !360)
!32 = !DISubroutineType(types: !33)
!33 = !{!21, !22, !24, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !36, line: 109, baseType: !37)
!36 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !36, line: 105, size: 128, align: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !37, file: !36, line: 107, baseType: !8, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !37, file: !36, line: 108, baseType: !41, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !36, line: 334, size: 3200, align: 64, elements: !43)
!43 = !{!44, !50, !51, !52, !53, !58, !119, !124, !129, !130, !135, !187, !218, !230, !236, !237, !238, !240, !242, !273, !274, !275, !284, !285, !290, !291, !293, !295, !305, !308, !326, !327, !328, !330, !332, !333, !335, !340, !345, !350, !351, !352, !353, !354, !355, !356, !357, !359}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !42, file: !36, line: 335, baseType: !45, size: 192, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !36, line: 114, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 111, size: 192, align: 64, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !46, file: !36, line: 112, baseType: !35, size: 128, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !46, file: !36, line: 113, baseType: !8, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !42, file: !36, line: 336, baseType: !22, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !42, file: !36, line: 337, baseType: !8, size: 64, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !42, file: !36, line: 337, baseType: !8, size: 64, align: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !42, file: !36, line: 341, baseType: !54, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !36, line: 308, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !34}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !42, file: !36, line: 342, baseType: !59, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !36, line: 314, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!15, !34, !63, !15}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 48, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 246, size: 1728, align: 64, elements: !67)
!66 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !88, !89, !90, !91, !93, !95, !97, !101, !104, !106, !107, !108, !109, !110, !114, !115}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 247, baseType: !15, size: 32, align: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 252, baseType: !4, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 253, baseType: !4, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 254, baseType: !4, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 255, baseType: !4, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 256, baseType: !4, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 257, baseType: !4, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 258, baseType: !4, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 259, baseType: !4, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 261, baseType: !4, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 262, baseType: !4, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 263, baseType: !4, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 265, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 161, size: 192, align: 64, elements: !83)
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !82, file: !66, line: 162, baseType: !81, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !82, file: !66, line: 163, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !82, file: !66, line: 167, baseType: !15, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 267, baseType: !86, size: 64, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 269, baseType: !15, size: 32, align: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 273, baseType: !15, size: 32, align: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 275, baseType: !92, size: 64, align: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !13, line: 140, baseType: !14)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 279, baseType: !94, size: 16, align: 16, offset: 1024)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 280, baseType: !96, size: 8, align: 8, offset: 1040)
!96 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 281, baseType: !98, size: 8, align: 8, offset: 1048)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 285, baseType: !102, size: 64, align: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 155, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 294, baseType: !105, size: 64, align: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !13, line: 141, baseType: !14)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !65, file: !66, line: 303, baseType: !6, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !65, file: !66, line: 304, baseType: !6, size: 64, align: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !65, file: !66, line: 305, baseType: !6, size: 64, align: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !65, file: !66, line: 306, baseType: !6, size: 64, align: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 307, baseType: !111, size: 64, align: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!113 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 309, baseType: !15, size: 32, align: 32, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 311, baseType: !116, size: 160, align: 8, offset: 1568)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 20)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !42, file: !36, line: 343, baseType: !120, size: 64, align: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !36, line: 316, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!34, !34, !4}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !42, file: !36, line: 344, baseType: !125, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !36, line: 318, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!15, !34, !4, !34}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !42, file: !36, line: 345, baseType: !6, size: 64, align: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !42, file: !36, line: 346, baseType: !131, size: 64, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !36, line: 320, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!34, !34}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !42, file: !36, line: 350, baseType: !136, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !36, line: 278, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 236, size: 2176, align: 64, elements: !139)
!139 = !{!140, !145, !146, !147, !148, !149, !154, !156, !157, !158, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !138, file: !36, line: 241, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !36, line: 166, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!34, !34, !34}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !138, file: !36, line: 242, baseType: !141, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !138, file: !36, line: 243, baseType: !141, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !138, file: !36, line: 244, baseType: !141, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !138, file: !36, line: 245, baseType: !141, size: 64, align: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !138, file: !36, line: 246, baseType: !150, size: 64, align: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !36, line: 167, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!34, !34, !34, !34}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !138, file: !36, line: 247, baseType: !155, size: 64, align: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !36, line: 165, baseType: !132)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !138, file: !36, line: 248, baseType: !155, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !138, file: !36, line: 249, baseType: !155, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !138, file: !36, line: 250, baseType: !159, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !36, line: 168, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!15, !34}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !138, file: !36, line: 251, baseType: !155, size: 64, align: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !138, file: !36, line: 252, baseType: !141, size: 64, align: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !138, file: !36, line: 253, baseType: !141, size: 64, align: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !138, file: !36, line: 254, baseType: !141, size: 64, align: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !138, file: !36, line: 255, baseType: !141, size: 64, align: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !138, file: !36, line: 256, baseType: !141, size: 64, align: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !138, file: !36, line: 257, baseType: !155, size: 64, align: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !138, file: !36, line: 258, baseType: !6, size: 64, align: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !138, file: !36, line: 259, baseType: !155, size: 64, align: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !138, file: !36, line: 261, baseType: !141, size: 64, align: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !138, file: !36, line: 262, baseType: !141, size: 64, align: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !138, file: !36, line: 263, baseType: !141, size: 64, align: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !138, file: !36, line: 264, baseType: !141, size: 64, align: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !138, file: !36, line: 265, baseType: !150, size: 64, align: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !138, file: !36, line: 266, baseType: !141, size: 64, align: 64, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !138, file: !36, line: 267, baseType: !141, size: 64, align: 64, offset: 1600)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !138, file: !36, line: 268, baseType: !141, size: 64, align: 64, offset: 1664)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !138, file: !36, line: 269, baseType: !141, size: 64, align: 64, offset: 1728)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !138, file: !36, line: 270, baseType: !141, size: 64, align: 64, offset: 1792)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !138, file: !36, line: 272, baseType: !141, size: 64, align: 64, offset: 1856)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !138, file: !36, line: 273, baseType: !141, size: 64, align: 64, offset: 1920)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !138, file: !36, line: 274, baseType: !141, size: 64, align: 64, offset: 1984)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !138, file: !36, line: 275, baseType: !141, size: 64, align: 64, offset: 2048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !138, file: !36, line: 277, baseType: !155, size: 64, align: 64, offset: 2112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !42, file: !36, line: 351, baseType: !188, size: 64, align: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !36, line: 292, baseType: !190)
!190 = !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 280, size: 640, align: 64, elements: !191)
!191 = !{!192, !197, !198, !203, !204, !205, !210, !211, !216, !217}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !190, file: !36, line: 281, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !36, line: 169, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!8, !34}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !190, file: !36, line: 282, baseType: !141, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !190, file: !36, line: 283, baseType: !199, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !36, line: 170, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!34, !34, !8}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !190, file: !36, line: 284, baseType: !199, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !190, file: !36, line: 285, baseType: !6, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !190, file: !36, line: 286, baseType: !206, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !36, line: 172, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!15, !34, !8, !34}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !190, file: !36, line: 287, baseType: !6, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !190, file: !36, line: 288, baseType: !212, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !36, line: 231, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!15, !34, !34}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !190, file: !36, line: 290, baseType: !141, size: 64, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !190, file: !36, line: 291, baseType: !199, size: 64, align: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !42, file: !36, line: 352, baseType: !219, size: 64, align: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !36, line: 298, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 294, size: 192, align: 64, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !221, file: !36, line: 295, baseType: !193, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !221, file: !36, line: 296, baseType: !141, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !221, file: !36, line: 297, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !36, line: 174, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!15, !34, !34, !34}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !42, file: !36, line: 356, baseType: !231, size: 64, align: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !36, line: 321, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !34}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !9, line: 186, baseType: !8)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !42, file: !36, line: 357, baseType: !150, size: 64, align: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !42, file: !36, line: 358, baseType: !131, size: 64, align: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !42, file: !36, line: 359, baseType: !239, size: 64, align: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !36, line: 317, baseType: !142)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !42, file: !36, line: 360, baseType: !241, size: 64, align: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !36, line: 319, baseType: !227)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !42, file: !36, line: 363, baseType: !243, size: 64, align: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !36, line: 304, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 301, size: 128, align: 64, elements: !246)
!246 = !{!247, !268}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !245, file: !36, line: 302, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !36, line: 193, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!15, !34, !252, !15}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !36, line: 191, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !36, line: 178, size: 640, align: 64, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !254, file: !36, line: 179, baseType: !6, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !254, file: !36, line: 180, baseType: !34, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !36, line: 181, baseType: !8, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !254, file: !36, line: 182, baseType: !8, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !254, file: !36, line: 184, baseType: !15, size: 32, align: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !254, file: !36, line: 185, baseType: !15, size: 32, align: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !254, file: !36, line: 186, baseType: !4, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !254, file: !36, line: 187, baseType: !264, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !254, file: !36, line: 188, baseType: !264, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !254, file: !36, line: 189, baseType: !264, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !254, file: !36, line: 190, baseType: !6, size: 64, align: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !245, file: !36, line: 303, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !36, line: 194, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !34, !252}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !42, file: !36, line: 366, baseType: !113, size: 64, align: 64, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !42, file: !36, line: 368, baseType: !22, size: 64, align: 64, offset: 1408)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !42, file: !36, line: 372, baseType: !276, size: 64, align: 64, offset: 1472)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !36, line: 233, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!15, !34, !280, !6}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !36, line: 232, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!15, !34, !6}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !42, file: !36, line: 375, baseType: !159, size: 64, align: 64, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !42, file: !36, line: 379, baseType: !286, size: 64, align: 64, offset: 1600)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !36, line: 322, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!34, !34, !34, !15}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !42, file: !36, line: 382, baseType: !8, size: 64, align: 64, offset: 1664)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !42, file: !36, line: 385, baseType: !292, size: 64, align: 64, offset: 1728)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !36, line: 323, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !42, file: !36, line: 386, baseType: !294, size: 64, align: 64, offset: 1792)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !36, line: 324, baseType: !132)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !42, file: !36, line: 389, baseType: !296, size: 64, align: 64, offset: 1856)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !298, line: 40, size: 256, align: 64, elements: !299)
!298 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!299 = !{!300, !301, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !297, file: !298, line: 41, baseType: !22, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !297, file: !298, line: 42, baseType: !302, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !298, line: 18, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !297, file: !298, line: 43, baseType: !15, size: 32, align: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !297, file: !298, line: 45, baseType: !22, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !42, file: !36, line: 390, baseType: !306, size: 64, align: 64, offset: 1920)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !36, line: 390, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !42, file: !36, line: 391, baseType: !309, size: 64, align: 64, offset: 1984)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !311, line: 11, size: 320, align: 64, elements: !312)
!311 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!312 = !{!313, !314, !319, !324, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 12, baseType: !4, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !310, file: !311, line: 13, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !311, line: 8, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!34, !34, !6}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !310, file: !311, line: 14, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !311, line: 9, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!15, !34, !34, !6}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !310, file: !311, line: 15, baseType: !4, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !310, file: !311, line: 16, baseType: !6, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !42, file: !36, line: 392, baseType: !41, size: 64, align: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !42, file: !36, line: 393, baseType: !34, size: 64, align: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !42, file: !36, line: 394, baseType: !329, size: 64, align: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !36, line: 325, baseType: !151)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !42, file: !36, line: 395, baseType: !331, size: 64, align: 64, offset: 2240)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !36, line: 326, baseType: !227)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !42, file: !36, line: 396, baseType: !8, size: 64, align: 64, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !42, file: !36, line: 397, baseType: !334, size: 64, align: 64, offset: 2368)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !36, line: 327, baseType: !227)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !42, file: !36, line: 398, baseType: !336, size: 64, align: 64, offset: 2432)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !36, line: 329, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!34, !41, !8}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !42, file: !36, line: 399, baseType: !341, size: 64, align: 64, offset: 2496)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !36, line: 328, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!34, !41, !34, !34}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !42, file: !36, line: 400, baseType: !346, size: 64, align: 64, offset: 2560)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !36, line: 307, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !6}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !42, file: !36, line: 401, baseType: !159, size: 64, align: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !42, file: !36, line: 402, baseType: !34, size: 64, align: 64, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !42, file: !36, line: 403, baseType: !34, size: 64, align: 64, offset: 2752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !42, file: !36, line: 404, baseType: !34, size: 64, align: 64, offset: 2816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !42, file: !36, line: 405, baseType: !34, size: 64, align: 64, offset: 2880)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !42, file: !36, line: 406, baseType: !34, size: 64, align: 64, offset: 2944)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !42, file: !36, line: 407, baseType: !54, size: 64, align: 64, offset: 3008)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !42, file: !36, line: 410, baseType: !358, size: 32, align: 32, offset: 3072)
!358 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !42, file: !36, line: 412, baseType: !54, size: 64, align: 64, offset: 3136)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !31, file: !18, line: 337, type: !22)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !31, file: !18, line: 338, type: !24)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "overflow_exception", arg: 3, scope: !31, file: !18, line: 339, type: !34)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !31, file: !18, line: 341, type: !21)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !31, file: !18, line: 341, type: !21)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail_pos", scope: !31, file: !18, line: 342, type: !4)
!367 = !DISubprogram(name: "PyOS_double_to_string", scope: !18, file: !18, line: 1173, type: !368, isLocal: false, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: true, function: i8* (double, i8, i32, i32, i32*)* @PyOS_double_to_string, variables: !371)
!368 = !DISubroutineType(types: !369)
!369 = !{!4, !21, !5, !15, !15, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!371 = !{!372, !373, !374, !375, !376, !377, !378}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 1, scope: !367, file: !18, line: 1173, type: !21)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_code", arg: 2, scope: !367, file: !18, line: 1174, type: !5)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 3, scope: !367, file: !18, line: 1175, type: !15)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !367, file: !18, line: 1176, type: !15)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 5, scope: !367, file: !18, line: 1177, type: !370)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "float_strings", scope: !367, file: !18, line: 1179, type: !24)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !367, file: !18, line: 1180, type: !15)
!379 = !DISubprogram(name: "case_insensitive_match", scope: !18, file: !18, line: 10, type: !380, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @case_insensitive_match, variables: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!15, !22, !22}
!382 = !{!383, !384}
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !379, file: !18, line: 10, type: !22)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !379, file: !18, line: 10, type: !22)
!385 = !DISubprogram(name: "_PyOS_ascii_strtod", scope: !18, file: !18, line: 131, type: !19, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i8**)* @_PyOS_ascii_strtod, variables: !386)
!386 = !{!387, !388, !389, !390, !391}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nptr", arg: 1, scope: !385, file: !18, line: 131, type: !22)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !385, file: !18, line: 131, type: !24)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !385, file: !18, line: 133, type: !21)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !385, file: !18, line: 134, type: !94)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !385, file: !18, line: 134, type: !94)
!392 = !DISubprogram(name: "format_float_short", scope: !18, file: !18, line: 925, type: !393, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, function: i8* (double, i8, i32, i32, i32, i32, i32, i8**, i32*)* @format_float_short, variables: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!4, !21, !5, !15, !15, !15, !15, !15, !24, !370}
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !392, file: !18, line: 925, type: !21)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_code", arg: 2, scope: !392, file: !18, line: 925, type: !5)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !392, file: !18, line: 926, type: !15)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 4, scope: !392, file: !18, line: 926, type: !15)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "always_add_sign", arg: 5, scope: !392, file: !18, line: 927, type: !15)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "add_dot_0_if_integer", arg: 6, scope: !392, file: !18, line: 927, type: !15)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "use_alt_formatting", arg: 7, scope: !392, file: !18, line: 928, type: !15)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "float_strings", arg: 8, scope: !392, file: !18, line: 928, type: !24)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 9, scope: !392, file: !18, line: 928, type: !370)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !392, file: !18, line: 930, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !392, file: !18, line: 931, type: !4)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !392, file: !18, line: 932, type: !8)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits", scope: !392, file: !18, line: 933, type: !4)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits_end", scope: !392, file: !18, line: 933, type: !4)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt_as_int", scope: !392, file: !18, line: 934, type: !15)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !392, file: !18, line: 934, type: !15)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_len", scope: !392, file: !18, line: 934, type: !15)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp", scope: !392, file: !18, line: 934, type: !15)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_exp", scope: !392, file: !18, line: 934, type: !15)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt", scope: !392, file: !18, line: 935, type: !8)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits_len", scope: !392, file: !18, line: 935, type: !8)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vdigits_start", scope: !392, file: !18, line: 935, type: !8)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vdigits_end", scope: !392, file: !18, line: 935, type: !8)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !392, file: !18, line: 936, type: !94)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !392, file: !18, line: 936, type: !94)
!421 = !{!422, !426}
!422 = !DIGlobalVariable(name: "lc_float_strings", scope: !0, file: !18, line: 884, type: !423, isLocal: true, isDefinition: true, variable: [3 x i8*]* @lc_float_strings)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 64, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !DIGlobalVariable(name: "uc_float_strings", scope: !0, file: !18, line: 889, type: !423, isLocal: true, isDefinition: true, variable: [3 x i8*]* @uc_float_strings)
!427 = !{i32 2, !"Dwarf Version", i32 4}
!428 = !{i32 2, !"Debug Info Version", i32 3}
!429 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!430 = !{!431, !431, i64 0}
!431 = !{!"any pointer", !432, i64 0}
!432 = !{!"omnipotent char", !433, i64 0}
!433 = !{!"Simple C/C++ TBAA"}
!434 = !DIExpression()
!435 = !DILocation(line: 28, column: 34, scope: !17)
!436 = !DILocation(line: 28, column: 44, scope: !17)
!437 = !DILocation(line: 30, column: 5, scope: !17)
!438 = !DILocation(line: 30, column: 12, scope: !17)
!439 = !DILocation(line: 31, column: 5, scope: !17)
!440 = !DILocation(line: 31, column: 17, scope: !17)
!441 = !DILocation(line: 32, column: 5, scope: !17)
!442 = !DILocation(line: 32, column: 9, scope: !17)
!443 = !{!444, !444, i64 0}
!444 = !{!"int", !432, i64 0}
!445 = !DILocation(line: 34, column: 9, scope: !17)
!446 = !DILocation(line: 34, column: 7, scope: !17)
!447 = !DILocation(line: 35, column: 10, scope: !448)
!448 = distinct !DILexicalBlock(scope: !17, file: !18, line: 35, column: 9)
!449 = !DILocation(line: 35, column: 9, scope: !448)
!450 = !{!432, !432, i64 0}
!451 = !DILocation(line: 35, column: 12, scope: !448)
!452 = !DILocation(line: 35, column: 9, scope: !17)
!453 = !DILocation(line: 36, column: 16, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !18, line: 35, column: 20)
!455 = !DILocation(line: 37, column: 10, scope: !454)
!456 = !DILocation(line: 38, column: 5, scope: !454)
!457 = !DILocation(line: 39, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !448, file: !18, line: 39, column: 14)
!459 = !DILocation(line: 39, column: 14, scope: !458)
!460 = !DILocation(line: 39, column: 17, scope: !458)
!461 = !DILocation(line: 39, column: 14, scope: !448)
!462 = !DILocation(line: 40, column: 10, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !18, line: 39, column: 25)
!464 = !DILocation(line: 41, column: 5, scope: !463)
!465 = !DILocation(line: 42, column: 32, scope: !466)
!466 = distinct !DILexicalBlock(scope: !17, file: !18, line: 42, column: 9)
!467 = !DILocation(line: 42, column: 9, scope: !466)
!468 = !DILocation(line: 42, column: 9, scope: !17)
!469 = !DILocation(line: 43, column: 11, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !18, line: 42, column: 43)
!471 = !DILocation(line: 44, column: 36, scope: !472)
!472 = distinct !DILexicalBlock(scope: !470, file: !18, line: 44, column: 13)
!473 = !DILocation(line: 44, column: 13, scope: !472)
!474 = !DILocation(line: 44, column: 13, scope: !470)
!475 = !DILocation(line: 45, column: 15, scope: !472)
!476 = !DILocation(line: 45, column: 13, scope: !472)
!477 = !DILocation(line: 46, column: 34, scope: !470)
!478 = !DILocation(line: 46, column: 18, scope: !470)
!479 = !DILocation(line: 46, column: 16, scope: !470)
!480 = !{!481, !481, i64 0}
!481 = !{!"double", !432, i64 0}
!482 = !DILocation(line: 47, column: 5, scope: !470)
!483 = !DILocation(line: 48, column: 37, scope: !484)
!484 = distinct !DILexicalBlock(scope: !466, file: !18, line: 48, column: 14)
!485 = !DILocation(line: 48, column: 14, scope: !484)
!486 = !DILocation(line: 48, column: 14, scope: !466)
!487 = !DILocation(line: 49, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !18, line: 48, column: 48)
!489 = !DILocation(line: 50, column: 32, scope: !488)
!490 = !DILocation(line: 50, column: 18, scope: !488)
!491 = !DILocation(line: 50, column: 16, scope: !488)
!492 = !DILocation(line: 51, column: 5, scope: !488)
!493 = !DILocation(line: 53, column: 13, scope: !494)
!494 = distinct !DILexicalBlock(scope: !484, file: !18, line: 52, column: 10)
!495 = !DILocation(line: 53, column: 11, scope: !494)
!496 = !DILocation(line: 54, column: 16, scope: !494)
!497 = !DILocation(line: 56, column: 23, scope: !17)
!498 = !DILocation(line: 56, column: 6, scope: !17)
!499 = !DILocation(line: 56, column: 13, scope: !17)
!500 = !DILocation(line: 57, column: 12, scope: !17)
!501 = !DILocation(line: 58, column: 1, scope: !17)
!502 = !DILocation(line: 57, column: 5, scope: !17)
!503 = !DILocation(line: 10, column: 36, scope: !379)
!504 = !DILocation(line: 10, column: 51, scope: !379)
!505 = !DILocation(line: 12, column: 5, scope: !379)
!506 = !DILocation(line: 12, column: 12, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !18, discriminator: 4)
!508 = !DILexicalBlockFile(scope: !379, file: !18, discriminator: 1)
!509 = !DILocation(line: 12, column: 11, scope: !379)
!510 = !DILocation(line: 12, column: 14, scope: !379)
!511 = !DILocation(line: 12, column: 55, scope: !512)
!512 = !DILexicalBlockFile(scope: !379, file: !18, discriminator: 2)
!513 = !DILocation(line: 12, column: 54, scope: !379)
!514 = !DILocation(line: 12, column: 53, scope: !379)
!515 = !DILocation(line: 12, column: 58, scope: !379)
!516 = !DILocation(line: 12, column: 37, scope: !379)
!517 = !DILocation(line: 12, column: 18, scope: !379)
!518 = !DILocation(line: 12, column: 17, scope: !379)
!519 = !DILocation(line: 12, column: 73, scope: !379)
!520 = !DILocation(line: 12, column: 72, scope: !379)
!521 = !DILocation(line: 12, column: 69, scope: !379)
!522 = !DILocation(line: 12, column: 5, scope: !523)
!523 = !DILexicalBlockFile(scope: !379, file: !18, discriminator: 3)
!524 = !DILocation(line: 13, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !379, file: !18, line: 12, column: 76)
!526 = !DILocation(line: 14, column: 10, scope: !525)
!527 = !DILocation(line: 16, column: 13, scope: !379)
!528 = !DILocation(line: 16, column: 12, scope: !379)
!529 = !DILocation(line: 16, column: 5, scope: !379)
!530 = !DILocation(line: 337, column: 35, scope: !31)
!531 = !DILocation(line: 338, column: 30, scope: !31)
!532 = !DILocation(line: 339, column: 33, scope: !31)
!533 = !DILocation(line: 341, column: 5, scope: !31)
!534 = !DILocation(line: 341, column: 12, scope: !31)
!535 = !DILocation(line: 341, column: 15, scope: !31)
!536 = !DILocation(line: 342, column: 5, scope: !31)
!537 = !DILocation(line: 342, column: 11, scope: !31)
!538 = !DILocation(line: 344, column: 7, scope: !31)
!539 = !DILocation(line: 344, column: 28, scope: !31)
!540 = !DILocation(line: 346, column: 28, scope: !31)
!541 = !DILocation(line: 346, column: 9, scope: !31)
!542 = !DILocation(line: 346, column: 7, scope: !31)
!543 = !DILocation(line: 349, column: 11, scope: !544)
!544 = distinct !DILexicalBlock(scope: !31, file: !18, line: 349, column: 9)
!545 = !DILocation(line: 349, column: 10, scope: !544)
!546 = !DILocation(line: 349, column: 32, scope: !544)
!547 = !DILocation(line: 349, column: 9, scope: !31)
!548 = !DILocation(line: 350, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !18, line: 349, column: 39)
!550 = !DILocation(line: 351, column: 28, scope: !549)
!551 = !DILocation(line: 351, column: 18, scope: !549)
!552 = !DILocation(line: 352, column: 5, scope: !549)
!553 = !DILocation(line: 353, column: 15, scope: !554)
!554 = distinct !DILexicalBlock(scope: !544, file: !18, line: 353, column: 14)
!555 = !DILocation(line: 353, column: 22, scope: !554)
!556 = !DILocation(line: 353, column: 26, scope: !557)
!557 = !DILexicalBlockFile(scope: !554, file: !18, discriminator: 1)
!558 = !DILocation(line: 353, column: 38, scope: !554)
!559 = !DILocation(line: 353, column: 35, scope: !554)
!560 = !DILocation(line: 353, column: 40, scope: !554)
!561 = !DILocation(line: 353, column: 44, scope: !562)
!562 = !DILexicalBlockFile(scope: !554, file: !18, discriminator: 2)
!563 = !DILocation(line: 353, column: 43, scope: !554)
!564 = !DILocation(line: 353, column: 53, scope: !554)
!565 = !DILocation(line: 353, column: 14, scope: !544)
!566 = !DILocation(line: 354, column: 22, scope: !554)
!567 = !DILocation(line: 356, column: 33, scope: !554)
!568 = !DILocation(line: 354, column: 9, scope: !554)
!569 = !DILocation(line: 357, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !554, file: !18, line: 357, column: 14)
!571 = !DILocation(line: 357, column: 26, scope: !570)
!572 = !DILocation(line: 357, column: 23, scope: !570)
!573 = !DILocation(line: 357, column: 14, scope: !554)
!574 = !DILocation(line: 358, column: 22, scope: !570)
!575 = !DILocation(line: 360, column: 33, scope: !570)
!576 = !DILocation(line: 358, column: 9, scope: !570)
!577 = !DILocation(line: 361, column: 16, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !18, line: 361, column: 14)
!579 = !DILocation(line: 361, column: 15, scope: !578)
!580 = !DILocation(line: 361, column: 37, scope: !578)
!581 = !DILocation(line: 361, column: 43, scope: !578)
!582 = !DILocation(line: 361, column: 51, scope: !583)
!583 = !DILexicalBlockFile(scope: !578, file: !18, discriminator: 1)
!584 = !DILocation(line: 361, column: 46, scope: !578)
!585 = !DILocation(line: 361, column: 54, scope: !578)
!586 = !DILocation(line: 361, column: 61, scope: !578)
!587 = !DILocation(line: 361, column: 64, scope: !588)
!588 = !DILexicalBlockFile(scope: !578, file: !18, discriminator: 2)
!589 = !DILocation(line: 361, column: 14, scope: !570)
!590 = !DILocation(line: 362, column: 22, scope: !578)
!591 = !DILocation(line: 364, column: 33, scope: !578)
!592 = !DILocation(line: 362, column: 9, scope: !578)
!593 = !DILocation(line: 366, column: 18, scope: !578)
!594 = !DILocation(line: 366, column: 16, scope: !578)
!595 = !DILocation(line: 368, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !31, file: !18, line: 368, column: 9)
!597 = !DILocation(line: 368, column: 16, scope: !596)
!598 = !DILocation(line: 368, column: 9, scope: !31)
!599 = !DILocation(line: 369, column: 19, scope: !596)
!600 = !DILocation(line: 369, column: 10, scope: !596)
!601 = !DILocation(line: 369, column: 17, scope: !596)
!602 = !DILocation(line: 369, column: 9, scope: !596)
!603 = !DILocation(line: 370, column: 12, scope: !31)
!604 = !DILocation(line: 371, column: 1, scope: !31)
!605 = !DILocation(line: 370, column: 5, scope: !31)
!606 = !DILocation(line: 131, column: 32, scope: !385)
!607 = !DILocation(line: 131, column: 45, scope: !385)
!608 = !DILocation(line: 133, column: 5, scope: !385)
!609 = !DILocation(line: 133, column: 12, scope: !385)
!610 = !DILocation(line: 134, column: 5, scope: !385)
!611 = !DILocation(line: 134, column: 20, scope: !385)
!612 = !DILocation(line: 134, column: 40, scope: !385)
!613 = !DILocation(line: 139, column: 7, scope: !385)
!614 = !DILocation(line: 139, column: 28, scope: !385)
!615 = !DILocation(line: 141, column: 5, scope: !385)
!616 = !DILocation(line: 141, column: 31, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !18, discriminator: 1)
!618 = distinct !DILexicalBlock(scope: !385, file: !18, line: 141, column: 8)
!619 = !DILocation(line: 141, column: 29, scope: !618)
!620 = !{!621, !621, i64 0}
!621 = !{!"short", !432, i64 0}
!622 = !DILocation(line: 141, column: 79, scope: !618)
!623 = !DILocation(line: 141, column: 98, scope: !618)
!624 = !DILocation(line: 141, column: 109, scope: !618)
!625 = !DILocation(line: 141, column: 78, scope: !618)
!626 = !DILocation(line: 141, column: 76, scope: !618)
!627 = !DILocation(line: 141, column: 123, scope: !628)
!628 = distinct !DILexicalBlock(scope: !618, file: !18, line: 141, column: 123)
!629 = !DILocation(line: 141, column: 145, scope: !628)
!630 = !DILocation(line: 141, column: 142, scope: !628)
!631 = !DILocation(line: 141, column: 123, scope: !618)
!632 = !DILocation(line: 141, column: 188, scope: !633)
!633 = !DILexicalBlockFile(scope: !628, file: !18, discriminator: 2)
!634 = !DILocation(line: 141, column: 165, scope: !628)
!635 = !DILocation(line: 141, column: 209, scope: !636)
!636 = !DILexicalBlockFile(scope: !637, file: !18, discriminator: 4)
!637 = !DILexicalBlockFile(scope: !618, file: !18, discriminator: 3)
!638 = !DILocation(line: 141, column: 209, scope: !639)
!639 = !DILexicalBlockFile(scope: !618, file: !18, discriminator: 5)
!640 = !DILocation(line: 142, column: 28, scope: !385)
!641 = !DILocation(line: 142, column: 34, scope: !385)
!642 = !DILocation(line: 142, column: 14, scope: !385)
!643 = !DILocation(line: 142, column: 12, scope: !385)
!644 = !DILocation(line: 143, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !385, file: !18, line: 143, column: 9)
!646 = !DILocation(line: 143, column: 31, scope: !645)
!647 = !DILocation(line: 143, column: 28, scope: !645)
!648 = !DILocation(line: 143, column: 9, scope: !385)
!649 = !DILocation(line: 143, column: 74, scope: !650)
!650 = !DILexicalBlockFile(scope: !645, file: !18, discriminator: 1)
!651 = !DILocation(line: 143, column: 51, scope: !645)
!652 = !DILocation(line: 145, column: 10, scope: !653)
!653 = distinct !DILexicalBlock(scope: !385, file: !18, line: 145, column: 9)
!654 = !DILocation(line: 145, column: 9, scope: !653)
!655 = !DILocation(line: 145, column: 20, scope: !653)
!656 = !DILocation(line: 145, column: 17, scope: !653)
!657 = !DILocation(line: 145, column: 9, scope: !385)
!658 = !DILocation(line: 147, column: 39, scope: !653)
!659 = !DILocation(line: 147, column: 45, scope: !653)
!660 = !DILocation(line: 147, column: 18, scope: !653)
!661 = !DILocation(line: 147, column: 16, scope: !653)
!662 = !DILocation(line: 147, column: 9, scope: !653)
!663 = !DILocation(line: 149, column: 12, scope: !385)
!664 = !DILocation(line: 151, column: 1, scope: !385)
!665 = !DILocation(line: 149, column: 5, scope: !385)
!666 = !DILocation(line: 1173, column: 37, scope: !367)
!667 = !DILocation(line: 1174, column: 47, scope: !367)
!668 = !DILocation(line: 1175, column: 46, scope: !367)
!669 = !DILocation(line: 1176, column: 46, scope: !367)
!670 = !DILocation(line: 1177, column: 47, scope: !367)
!671 = !DILocation(line: 1179, column: 5, scope: !367)
!672 = !DILocation(line: 1179, column: 12, scope: !367)
!673 = !DILocation(line: 1180, column: 5, scope: !367)
!674 = !DILocation(line: 1180, column: 9, scope: !367)
!675 = !DILocation(line: 1184, column: 13, scope: !367)
!676 = !DILocation(line: 1184, column: 5, scope: !367)
!677 = !DILocation(line: 1187, column: 23, scope: !678)
!678 = distinct !DILexicalBlock(scope: !367, file: !18, line: 1184, column: 26)
!679 = !DILocation(line: 1188, column: 21, scope: !678)
!680 = !DILocation(line: 1188, column: 9, scope: !678)
!681 = !DILocation(line: 1191, column: 14, scope: !678)
!682 = !DILocation(line: 1192, column: 18, scope: !678)
!683 = !DILocation(line: 1193, column: 9, scope: !678)
!684 = !DILocation(line: 1197, column: 23, scope: !678)
!685 = !DILocation(line: 1198, column: 21, scope: !678)
!686 = !DILocation(line: 1198, column: 9, scope: !678)
!687 = !DILocation(line: 1201, column: 14, scope: !678)
!688 = !DILocation(line: 1202, column: 9, scope: !678)
!689 = !DILocation(line: 1206, column: 23, scope: !678)
!690 = !DILocation(line: 1207, column: 21, scope: !678)
!691 = !DILocation(line: 1207, column: 9, scope: !678)
!692 = !DILocation(line: 1210, column: 14, scope: !678)
!693 = !DILocation(line: 1212, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !678, file: !18, line: 1212, column: 13)
!695 = !DILocation(line: 1212, column: 23, scope: !694)
!696 = !DILocation(line: 1212, column: 13, scope: !678)
!697 = !DILocation(line: 1213, column: 23, scope: !694)
!698 = !DILocation(line: 1213, column: 13, scope: !694)
!699 = !DILocation(line: 1214, column: 9, scope: !678)
!700 = !DILocation(line: 1218, column: 14, scope: !678)
!701 = !DILocation(line: 1220, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !678, file: !18, line: 1220, column: 13)
!703 = !DILocation(line: 1220, column: 23, scope: !702)
!704 = !DILocation(line: 1220, column: 13, scope: !678)
!705 = !DILocation(line: 1221, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !18, line: 1220, column: 29)
!707 = !DILocation(line: 1222, column: 13, scope: !706)
!708 = !DILocation(line: 1224, column: 9, scope: !678)
!709 = !DILocation(line: 1227, column: 9, scope: !678)
!710 = !DILocation(line: 1228, column: 9, scope: !678)
!711 = !DILocation(line: 1231, column: 31, scope: !367)
!712 = !DILocation(line: 1231, column: 36, scope: !367)
!713 = !DILocation(line: 1231, column: 49, scope: !367)
!714 = !DILocation(line: 1231, column: 55, scope: !367)
!715 = !DILocation(line: 1232, column: 31, scope: !367)
!716 = !DILocation(line: 1232, column: 37, scope: !367)
!717 = !DILocation(line: 1233, column: 31, scope: !367)
!718 = !DILocation(line: 1233, column: 37, scope: !367)
!719 = !DILocation(line: 1234, column: 31, scope: !367)
!720 = !DILocation(line: 1234, column: 37, scope: !367)
!721 = !DILocation(line: 1235, column: 31, scope: !367)
!722 = !DILocation(line: 1235, column: 46, scope: !367)
!723 = !DILocation(line: 1231, column: 12, scope: !367)
!724 = !DILocation(line: 1231, column: 5, scope: !367)
!725 = !DILocation(line: 1236, column: 1, scope: !367)
!726 = !DILocation(line: 925, column: 27, scope: !392)
!727 = !DILocation(line: 925, column: 35, scope: !392)
!728 = !DILocation(line: 926, column: 24, scope: !392)
!729 = !DILocation(line: 926, column: 34, scope: !392)
!730 = !DILocation(line: 927, column: 24, scope: !392)
!731 = !DILocation(line: 927, column: 45, scope: !392)
!732 = !DILocation(line: 928, column: 24, scope: !392)
!733 = !DILocation(line: 928, column: 51, scope: !392)
!734 = !DILocation(line: 928, column: 71, scope: !392)
!735 = !DILocation(line: 930, column: 5, scope: !392)
!736 = !DILocation(line: 930, column: 11, scope: !392)
!737 = !DILocation(line: 931, column: 5, scope: !392)
!738 = !DILocation(line: 931, column: 11, scope: !392)
!739 = !DILocation(line: 932, column: 5, scope: !392)
!740 = !DILocation(line: 932, column: 16, scope: !392)
!741 = !{!742, !742, i64 0}
!742 = !{!"long", !432, i64 0}
!743 = !DILocation(line: 933, column: 5, scope: !392)
!744 = !DILocation(line: 933, column: 11, scope: !392)
!745 = !DILocation(line: 933, column: 20, scope: !392)
!746 = !DILocation(line: 934, column: 5, scope: !392)
!747 = !DILocation(line: 934, column: 9, scope: !392)
!748 = !DILocation(line: 934, column: 23, scope: !392)
!749 = !DILocation(line: 934, column: 29, scope: !392)
!750 = !DILocation(line: 934, column: 38, scope: !392)
!751 = !DILocation(line: 934, column: 47, scope: !392)
!752 = !DILocation(line: 935, column: 5, scope: !392)
!753 = !DILocation(line: 935, column: 16, scope: !392)
!754 = !DILocation(line: 935, column: 23, scope: !392)
!755 = !DILocation(line: 935, column: 35, scope: !392)
!756 = !DILocation(line: 935, column: 50, scope: !392)
!757 = !DILocation(line: 936, column: 5, scope: !392)
!758 = !DILocation(line: 936, column: 20, scope: !392)
!759 = !DILocation(line: 936, column: 40, scope: !392)
!760 = !DILocation(line: 940, column: 5, scope: !392)
!761 = !DILocation(line: 940, column: 31, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !18, discriminator: 1)
!763 = distinct !DILexicalBlock(scope: !392, file: !18, line: 940, column: 8)
!764 = !DILocation(line: 940, column: 29, scope: !763)
!765 = !DILocation(line: 940, column: 79, scope: !763)
!766 = !DILocation(line: 940, column: 98, scope: !763)
!767 = !DILocation(line: 940, column: 109, scope: !763)
!768 = !DILocation(line: 940, column: 78, scope: !763)
!769 = !DILocation(line: 940, column: 76, scope: !763)
!770 = !DILocation(line: 940, column: 123, scope: !771)
!771 = distinct !DILexicalBlock(scope: !763, file: !18, line: 940, column: 123)
!772 = !DILocation(line: 940, column: 145, scope: !771)
!773 = !DILocation(line: 940, column: 142, scope: !771)
!774 = !DILocation(line: 940, column: 123, scope: !763)
!775 = !DILocation(line: 940, column: 188, scope: !776)
!776 = !DILexicalBlockFile(scope: !771, file: !18, discriminator: 2)
!777 = !DILocation(line: 940, column: 165, scope: !771)
!778 = !DILocation(line: 940, column: 209, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !18, discriminator: 4)
!780 = !DILexicalBlockFile(scope: !763, file: !18, discriminator: 3)
!781 = !DILocation(line: 940, column: 209, scope: !782)
!782 = !DILexicalBlockFile(scope: !763, file: !18, discriminator: 5)
!783 = !DILocation(line: 941, column: 26, scope: !392)
!784 = !DILocation(line: 941, column: 29, scope: !392)
!785 = !DILocation(line: 941, column: 35, scope: !392)
!786 = !DILocation(line: 941, column: 14, scope: !392)
!787 = !DILocation(line: 941, column: 12, scope: !392)
!788 = !DILocation(line: 943, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !392, file: !18, line: 943, column: 9)
!790 = !DILocation(line: 943, column: 31, scope: !789)
!791 = !DILocation(line: 943, column: 28, scope: !789)
!792 = !DILocation(line: 943, column: 9, scope: !392)
!793 = !DILocation(line: 943, column: 74, scope: !794)
!794 = !DILexicalBlockFile(scope: !789, file: !18, discriminator: 1)
!795 = !DILocation(line: 943, column: 51, scope: !789)
!796 = !DILocation(line: 945, column: 25, scope: !392)
!797 = !DILocation(line: 945, column: 13, scope: !392)
!798 = !DILocation(line: 945, column: 11, scope: !392)
!799 = !DILocation(line: 946, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !392, file: !18, line: 946, column: 9)
!801 = !DILocation(line: 946, column: 16, scope: !800)
!802 = !DILocation(line: 946, column: 9, scope: !392)
!803 = !DILocation(line: 948, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !18, line: 946, column: 31)
!805 = !DILocation(line: 949, column: 9, scope: !804)
!806 = !DILocation(line: 952, column: 18, scope: !392)
!807 = !DILocation(line: 952, column: 31, scope: !392)
!808 = !DILocation(line: 952, column: 29, scope: !392)
!809 = !DILocation(line: 952, column: 16, scope: !392)
!810 = !DILocation(line: 954, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !392, file: !18, line: 954, column: 9)
!812 = !DILocation(line: 954, column: 20, scope: !811)
!813 = !DILocation(line: 954, column: 59, scope: !814)
!814 = !DILexicalBlockFile(scope: !811, file: !18, discriminator: 1)
!815 = !DILocation(line: 954, column: 58, scope: !811)
!816 = !DILocation(line: 954, column: 70, scope: !811)
!817 = !DILocation(line: 954, column: 42, scope: !811)
!818 = !DILocation(line: 954, column: 25, scope: !811)
!819 = !DILocation(line: 954, column: 80, scope: !811)
!820 = !DILocation(line: 954, column: 9, scope: !392)
!821 = !DILocation(line: 960, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !18, line: 960, column: 13)
!823 = distinct !DILexicalBlock(scope: !811, file: !18, line: 954, column: 89)
!824 = !DILocation(line: 960, column: 23, scope: !822)
!825 = !DILocation(line: 960, column: 30, scope: !822)
!826 = !DILocation(line: 960, column: 33, scope: !827)
!827 = !DILexicalBlockFile(scope: !822, file: !18, discriminator: 1)
!828 = !DILocation(line: 960, column: 43, scope: !822)
!829 = !DILocation(line: 960, column: 13, scope: !823)
!830 = !DILocation(line: 961, column: 18, scope: !822)
!831 = !DILocation(line: 961, column: 13, scope: !822)
!832 = !DILocation(line: 964, column: 17, scope: !823)
!833 = !DILocation(line: 965, column: 36, scope: !823)
!834 = !DILocation(line: 965, column: 23, scope: !823)
!835 = !DILocation(line: 965, column: 13, scope: !823)
!836 = !DILocation(line: 966, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !823, file: !18, line: 966, column: 13)
!838 = !DILocation(line: 966, column: 17, scope: !837)
!839 = !DILocation(line: 966, column: 13, scope: !823)
!840 = !DILocation(line: 967, column: 13, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !18, line: 966, column: 32)
!842 = !DILocation(line: 968, column: 13, scope: !841)
!843 = !DILocation(line: 970, column: 13, scope: !823)
!844 = !DILocation(line: 970, column: 11, scope: !823)
!845 = !DILocation(line: 972, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !823, file: !18, line: 972, column: 13)
!847 = !DILocation(line: 972, column: 18, scope: !846)
!848 = !DILocation(line: 972, column: 13, scope: !823)
!849 = !DILocation(line: 973, column: 15, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !18, line: 972, column: 24)
!851 = !DILocation(line: 973, column: 18, scope: !850)
!852 = !DILocation(line: 974, column: 9, scope: !850)
!853 = !DILocation(line: 975, column: 18, scope: !854)
!854 = distinct !DILexicalBlock(scope: !846, file: !18, line: 975, column: 18)
!855 = !DILocation(line: 975, column: 18, scope: !846)
!856 = !DILocation(line: 976, column: 15, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !18, line: 975, column: 35)
!858 = !DILocation(line: 976, column: 18, scope: !857)
!859 = !DILocation(line: 977, column: 9, scope: !857)
!860 = !DILocation(line: 978, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !823, file: !18, line: 978, column: 13)
!862 = !DILocation(line: 978, column: 23, scope: !861)
!863 = !DILocation(line: 978, column: 30, scope: !861)
!864 = !DILocation(line: 978, column: 33, scope: !865)
!865 = !DILexicalBlockFile(scope: !861, file: !18, discriminator: 1)
!866 = !DILocation(line: 978, column: 43, scope: !861)
!867 = !DILocation(line: 978, column: 13, scope: !823)
!868 = !DILocation(line: 979, column: 32, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !18, line: 978, column: 51)
!870 = !DILocation(line: 979, column: 35, scope: !869)
!871 = !DILocation(line: 979, column: 13, scope: !869)
!872 = !DILocation(line: 980, column: 15, scope: !869)
!873 = !DILocation(line: 982, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !18, line: 982, column: 17)
!875 = !DILocation(line: 982, column: 17, scope: !869)
!876 = !DILocation(line: 983, column: 18, scope: !874)
!877 = !DILocation(line: 983, column: 23, scope: !874)
!878 = !DILocation(line: 983, column: 17, scope: !874)
!879 = !DILocation(line: 984, column: 9, scope: !869)
!880 = !DILocation(line: 985, column: 18, scope: !881)
!881 = distinct !DILexicalBlock(scope: !861, file: !18, line: 985, column: 18)
!882 = !DILocation(line: 985, column: 28, scope: !881)
!883 = !DILocation(line: 985, column: 35, scope: !881)
!884 = !DILocation(line: 985, column: 38, scope: !885)
!885 = !DILexicalBlockFile(scope: !881, file: !18, discriminator: 1)
!886 = !DILocation(line: 985, column: 48, scope: !881)
!887 = !DILocation(line: 985, column: 18, scope: !861)
!888 = !DILocation(line: 986, column: 32, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !18, line: 985, column: 56)
!890 = !DILocation(line: 986, column: 35, scope: !889)
!891 = !DILocation(line: 986, column: 13, scope: !889)
!892 = !DILocation(line: 987, column: 15, scope: !889)
!893 = !DILocation(line: 989, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !18, line: 989, column: 17)
!895 = !DILocation(line: 989, column: 17, scope: !889)
!896 = !DILocation(line: 990, column: 18, scope: !894)
!897 = !DILocation(line: 990, column: 23, scope: !894)
!898 = !DILocation(line: 990, column: 17, scope: !894)
!899 = !DILocation(line: 991, column: 9, scope: !889)
!900 = !DILocation(line: 995, column: 32, scope: !901)
!901 = distinct !DILexicalBlock(scope: !881, file: !18, line: 992, column: 14)
!902 = !DILocation(line: 995, column: 13, scope: !901)
!903 = !DILocation(line: 999, column: 9, scope: !823)
!904 = !DILocation(line: 1003, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1003, column: 9)
!906 = !DILocation(line: 1003, column: 9, scope: !392)
!907 = !DILocation(line: 1004, column: 10, scope: !905)
!908 = !DILocation(line: 1004, column: 15, scope: !905)
!909 = !DILocation(line: 1004, column: 9, scope: !905)
!910 = !DILocation(line: 1029, column: 19, scope: !392)
!911 = !DILocation(line: 1029, column: 17, scope: !392)
!912 = !DILocation(line: 1030, column: 13, scope: !392)
!913 = !DILocation(line: 1030, column: 5, scope: !392)
!914 = !DILocation(line: 1032, column: 17, scope: !915)
!915 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1030, column: 26)
!916 = !DILocation(line: 1033, column: 23, scope: !915)
!917 = !DILocation(line: 1033, column: 21, scope: !915)
!918 = !DILocation(line: 1034, column: 9, scope: !915)
!919 = !DILocation(line: 1036, column: 23, scope: !915)
!920 = !DILocation(line: 1036, column: 31, scope: !915)
!921 = !DILocation(line: 1036, column: 29, scope: !915)
!922 = !DILocation(line: 1036, column: 21, scope: !915)
!923 = !DILocation(line: 1037, column: 9, scope: !915)
!924 = !DILocation(line: 1039, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !915, file: !18, line: 1039, column: 13)
!926 = !DILocation(line: 1039, column: 19, scope: !925)
!927 = !DILocation(line: 1039, column: 25, scope: !925)
!928 = !DILocation(line: 1039, column: 28, scope: !929)
!929 = !DILexicalBlockFile(scope: !925, file: !18, discriminator: 1)
!930 = !DILocation(line: 1040, column: 14, scope: !925)
!931 = !DILocation(line: 1040, column: 37, scope: !929)
!932 = !DILocation(line: 1040, column: 46, scope: !925)
!933 = !DILocation(line: 1040, column: 51, scope: !934)
!934 = !DILexicalBlockFile(scope: !925, file: !18, discriminator: 2)
!935 = !DILocation(line: 1040, column: 13, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !18, discriminator: 4)
!937 = !DILexicalBlockFile(scope: !925, file: !18, discriminator: 3)
!938 = !DILocation(line: 1039, column: 34, scope: !925)
!939 = !DILocation(line: 1039, column: 13, scope: !915)
!940 = !DILocation(line: 1041, column: 21, scope: !925)
!941 = !DILocation(line: 1041, column: 13, scope: !925)
!942 = !DILocation(line: 1042, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !915, file: !18, line: 1042, column: 13)
!944 = !DILocation(line: 1042, column: 13, scope: !915)
!945 = !DILocation(line: 1043, column: 27, scope: !943)
!946 = !DILocation(line: 1043, column: 25, scope: !943)
!947 = !DILocation(line: 1043, column: 13, scope: !943)
!948 = !DILocation(line: 1044, column: 9, scope: !915)
!949 = !DILocation(line: 1051, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !915, file: !18, line: 1051, column: 13)
!951 = !DILocation(line: 1051, column: 19, scope: !950)
!952 = !DILocation(line: 1051, column: 25, scope: !950)
!953 = !DILocation(line: 1051, column: 28, scope: !954)
!954 = !DILexicalBlockFile(scope: !950, file: !18, discriminator: 1)
!955 = !DILocation(line: 1051, column: 34, scope: !950)
!956 = !DILocation(line: 1051, column: 13, scope: !915)
!957 = !DILocation(line: 1052, column: 21, scope: !950)
!958 = !DILocation(line: 1052, column: 13, scope: !950)
!959 = !DILocation(line: 1053, column: 9, scope: !915)
!960 = !DILocation(line: 1055, column: 9, scope: !915)
!961 = !DILocation(line: 1056, column: 9, scope: !915)
!962 = !DILocation(line: 1061, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1061, column: 9)
!964 = !DILocation(line: 1061, column: 9, scope: !392)
!965 = !DILocation(line: 1062, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !18, line: 1061, column: 18)
!967 = !DILocation(line: 1062, column: 15, scope: !966)
!968 = !DILocation(line: 1062, column: 26, scope: !966)
!969 = !DILocation(line: 1062, column: 13, scope: !966)
!970 = !DILocation(line: 1063, column: 15, scope: !966)
!971 = !DILocation(line: 1064, column: 5, scope: !966)
!972 = !DILocation(line: 1067, column: 21, scope: !392)
!973 = !DILocation(line: 1067, column: 27, scope: !392)
!974 = !DILocation(line: 1067, column: 34, scope: !975)
!975 = !DILexicalBlockFile(scope: !392, file: !18, discriminator: 1)
!976 = !DILocation(line: 1067, column: 39, scope: !392)
!977 = !DILocation(line: 1067, column: 21, scope: !978)
!978 = !DILexicalBlockFile(scope: !392, file: !18, discriminator: 2)
!979 = !DILocation(line: 1067, column: 19, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !18, discriminator: 4)
!981 = !DILexicalBlockFile(scope: !392, file: !18, discriminator: 3)
!982 = !DILocation(line: 1068, column: 10, scope: !983)
!983 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1068, column: 9)
!984 = !DILocation(line: 1068, column: 18, scope: !983)
!985 = !DILocation(line: 1068, column: 21, scope: !986)
!986 = !DILexicalBlockFile(scope: !983, file: !18, discriminator: 1)
!987 = !DILocation(line: 1068, column: 9, scope: !392)
!988 = !DILocation(line: 1069, column: 23, scope: !983)
!989 = !DILocation(line: 1069, column: 37, scope: !983)
!990 = !DILocation(line: 1069, column: 35, scope: !983)
!991 = !DILocation(line: 1069, column: 45, scope: !986)
!992 = !DILocation(line: 1069, column: 59, scope: !993)
!993 = !DILexicalBlockFile(scope: !983, file: !18, discriminator: 2)
!994 = !DILocation(line: 1069, column: 65, scope: !983)
!995 = !DILocation(line: 1069, column: 21, scope: !996)
!996 = !DILexicalBlockFile(scope: !997, file: !18, discriminator: 4)
!997 = !DILexicalBlockFile(scope: !983, file: !18, discriminator: 3)
!998 = !DILocation(line: 1069, column: 9, scope: !983)
!999 = !DILocation(line: 1071, column: 23, scope: !983)
!1000 = !DILocation(line: 1071, column: 37, scope: !983)
!1001 = !DILocation(line: 1071, column: 35, scope: !983)
!1002 = !DILocation(line: 1071, column: 45, scope: !986)
!1003 = !DILocation(line: 1071, column: 59, scope: !993)
!1004 = !DILocation(line: 1071, column: 21, scope: !996)
!1005 = !DILocation(line: 1087, column: 10, scope: !392)
!1006 = !DILocation(line: 1087, column: 24, scope: !392)
!1007 = !DILocation(line: 1087, column: 22, scope: !392)
!1008 = !DILocation(line: 1084, column: 11, scope: !392)
!1009 = !DILocation(line: 1090, column: 10, scope: !392)
!1010 = !DILocation(line: 1090, column: 9, scope: !392)
!1011 = !DILocation(line: 1087, column: 39, scope: !392)
!1012 = !DILocation(line: 1082, column: 13, scope: !392)
!1013 = !DILocation(line: 1094, column: 32, scope: !392)
!1014 = !DILocation(line: 1094, column: 19, scope: !392)
!1015 = !DILocation(line: 1094, column: 9, scope: !392)
!1016 = !DILocation(line: 1095, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1095, column: 9)
!1018 = !DILocation(line: 1095, column: 13, scope: !1017)
!1019 = !DILocation(line: 1095, column: 9, scope: !392)
!1020 = !DILocation(line: 1096, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !18, line: 1095, column: 28)
!1022 = !DILocation(line: 1097, column: 9, scope: !1021)
!1023 = !DILocation(line: 1099, column: 9, scope: !392)
!1024 = !DILocation(line: 1099, column: 7, scope: !392)
!1025 = !DILocation(line: 1103, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1103, column: 9)
!1027 = !DILocation(line: 1103, column: 14, scope: !1026)
!1028 = !DILocation(line: 1103, column: 9, scope: !392)
!1029 = !DILocation(line: 1104, column: 11, scope: !1026)
!1030 = !DILocation(line: 1104, column: 14, scope: !1026)
!1031 = !DILocation(line: 1104, column: 9, scope: !1026)
!1032 = !DILocation(line: 1105, column: 14, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !18, line: 1105, column: 14)
!1034 = !DILocation(line: 1105, column: 14, scope: !1026)
!1035 = !DILocation(line: 1106, column: 11, scope: !1033)
!1036 = !DILocation(line: 1106, column: 14, scope: !1033)
!1037 = !DILocation(line: 1106, column: 9, scope: !1033)
!1038 = !DILocation(line: 1111, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1111, column: 9)
!1040 = !DILocation(line: 1111, column: 15, scope: !1039)
!1041 = !DILocation(line: 1111, column: 9, scope: !392)
!1042 = !DILocation(line: 1112, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !18, line: 1111, column: 21)
!1044 = !DILocation(line: 1112, column: 24, scope: !1043)
!1045 = !DILocation(line: 1112, column: 30, scope: !1043)
!1046 = !DILocation(line: 1112, column: 29, scope: !1043)
!1047 = !DILocation(line: 1112, column: 9, scope: !1043)
!1048 = !DILocation(line: 1113, column: 14, scope: !1043)
!1049 = !DILocation(line: 1113, column: 22, scope: !1043)
!1050 = !DILocation(line: 1113, column: 20, scope: !1043)
!1051 = !DILocation(line: 1113, column: 11, scope: !1043)
!1052 = !DILocation(line: 1114, column: 11, scope: !1043)
!1053 = !DILocation(line: 1114, column: 14, scope: !1043)
!1054 = !DILocation(line: 1115, column: 16, scope: !1043)
!1055 = !DILocation(line: 1115, column: 26, scope: !1043)
!1056 = !DILocation(line: 1115, column: 25, scope: !1043)
!1057 = !DILocation(line: 1115, column: 9, scope: !1043)
!1058 = !DILocation(line: 1116, column: 16, scope: !1043)
!1059 = !DILocation(line: 1116, column: 15, scope: !1043)
!1060 = !DILocation(line: 1116, column: 11, scope: !1043)
!1061 = !DILocation(line: 1117, column: 5, scope: !1043)
!1062 = !DILocation(line: 1119, column: 16, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1039, file: !18, line: 1118, column: 10)
!1064 = !DILocation(line: 1119, column: 26, scope: !1063)
!1065 = !DILocation(line: 1119, column: 25, scope: !1063)
!1066 = !DILocation(line: 1119, column: 9, scope: !1063)
!1067 = !DILocation(line: 1120, column: 18, scope: !1063)
!1068 = !DILocation(line: 1120, column: 16, scope: !1063)
!1069 = !DILocation(line: 1120, column: 11, scope: !1063)
!1070 = !DILocation(line: 1124, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1124, column: 9)
!1072 = !DILocation(line: 1124, column: 11, scope: !1071)
!1073 = !DILocation(line: 1124, column: 19, scope: !1071)
!1074 = !DILocation(line: 1124, column: 22, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1071, file: !18, discriminator: 1)
!1076 = !DILocation(line: 1124, column: 31, scope: !1071)
!1077 = !DILocation(line: 1124, column: 28, scope: !1071)
!1078 = !DILocation(line: 1124, column: 9, scope: !392)
!1079 = !DILocation(line: 1125, column: 28, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !18, line: 1124, column: 43)
!1081 = !DILocation(line: 1125, column: 31, scope: !1080)
!1082 = !DILocation(line: 1125, column: 39, scope: !1080)
!1083 = !DILocation(line: 1125, column: 44, scope: !1080)
!1084 = !DILocation(line: 1125, column: 9, scope: !1080)
!1085 = !DILocation(line: 1126, column: 14, scope: !1080)
!1086 = !DILocation(line: 1126, column: 19, scope: !1080)
!1087 = !DILocation(line: 1126, column: 11, scope: !1080)
!1088 = !DILocation(line: 1127, column: 11, scope: !1080)
!1089 = !DILocation(line: 1127, column: 14, scope: !1080)
!1090 = !DILocation(line: 1128, column: 28, scope: !1080)
!1091 = !DILocation(line: 1128, column: 31, scope: !1080)
!1092 = !DILocation(line: 1128, column: 38, scope: !1080)
!1093 = !DILocation(line: 1128, column: 37, scope: !1080)
!1094 = !DILocation(line: 1128, column: 45, scope: !1080)
!1095 = !DILocation(line: 1128, column: 56, scope: !1080)
!1096 = !DILocation(line: 1128, column: 55, scope: !1080)
!1097 = !DILocation(line: 1128, column: 9, scope: !1080)
!1098 = !DILocation(line: 1129, column: 14, scope: !1080)
!1099 = !DILocation(line: 1129, column: 25, scope: !1080)
!1100 = !DILocation(line: 1129, column: 24, scope: !1080)
!1101 = !DILocation(line: 1129, column: 11, scope: !1080)
!1102 = !DILocation(line: 1130, column: 5, scope: !1080)
!1103 = !DILocation(line: 1132, column: 28, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1071, file: !18, line: 1131, column: 10)
!1105 = !DILocation(line: 1132, column: 31, scope: !1104)
!1106 = !DILocation(line: 1132, column: 39, scope: !1104)
!1107 = !DILocation(line: 1132, column: 9, scope: !1104)
!1108 = !DILocation(line: 1133, column: 14, scope: !1104)
!1109 = !DILocation(line: 1133, column: 11, scope: !1104)
!1110 = !DILocation(line: 1137, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1137, column: 9)
!1112 = !DILocation(line: 1137, column: 22, scope: !1111)
!1113 = !DILocation(line: 1137, column: 20, scope: !1111)
!1114 = !DILocation(line: 1137, column: 9, scope: !392)
!1115 = !DILocation(line: 1138, column: 16, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !18, line: 1137, column: 29)
!1117 = !DILocation(line: 1138, column: 24, scope: !1116)
!1118 = !DILocation(line: 1138, column: 30, scope: !1116)
!1119 = !DILocation(line: 1138, column: 29, scope: !1116)
!1120 = !DILocation(line: 1138, column: 9, scope: !1116)
!1121 = !DILocation(line: 1139, column: 14, scope: !1116)
!1122 = !DILocation(line: 1139, column: 20, scope: !1116)
!1123 = !DILocation(line: 1139, column: 19, scope: !1116)
!1124 = !DILocation(line: 1139, column: 11, scope: !1116)
!1125 = !DILocation(line: 1140, column: 11, scope: !1116)
!1126 = !DILocation(line: 1140, column: 14, scope: !1116)
!1127 = !DILocation(line: 1141, column: 16, scope: !1116)
!1128 = !DILocation(line: 1141, column: 24, scope: !1116)
!1129 = !DILocation(line: 1141, column: 36, scope: !1116)
!1130 = !DILocation(line: 1141, column: 35, scope: !1116)
!1131 = !DILocation(line: 1141, column: 9, scope: !1116)
!1132 = !DILocation(line: 1142, column: 14, scope: !1116)
!1133 = !DILocation(line: 1142, column: 26, scope: !1116)
!1134 = !DILocation(line: 1142, column: 25, scope: !1116)
!1135 = !DILocation(line: 1142, column: 11, scope: !1116)
!1136 = !DILocation(line: 1143, column: 5, scope: !1116)
!1137 = !DILocation(line: 1145, column: 16, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1111, file: !18, line: 1144, column: 10)
!1139 = !DILocation(line: 1145, column: 24, scope: !1138)
!1140 = !DILocation(line: 1145, column: 36, scope: !1138)
!1141 = !DILocation(line: 1145, column: 35, scope: !1138)
!1142 = !DILocation(line: 1145, column: 9, scope: !1138)
!1143 = !DILocation(line: 1146, column: 14, scope: !1138)
!1144 = !DILocation(line: 1146, column: 26, scope: !1138)
!1145 = !DILocation(line: 1146, column: 25, scope: !1138)
!1146 = !DILocation(line: 1146, column: 11, scope: !1138)
!1147 = !DILocation(line: 1150, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1150, column: 9)
!1149 = !DILocation(line: 1150, column: 15, scope: !1148)
!1150 = !DILocation(line: 1150, column: 22, scope: !1148)
!1151 = !DILocation(line: 1150, column: 26, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1148, file: !18, discriminator: 1)
!1153 = !DILocation(line: 1150, column: 9, scope: !392)
!1154 = !DILocation(line: 1151, column: 10, scope: !1148)
!1155 = !DILocation(line: 1151, column: 9, scope: !1148)
!1156 = !DILocation(line: 1154, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1154, column: 9)
!1158 = !DILocation(line: 1154, column: 9, scope: !392)
!1159 = !DILocation(line: 1155, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !18, line: 1154, column: 18)
!1161 = !DILocation(line: 1155, column: 11, scope: !1160)
!1162 = !DILocation(line: 1155, column: 14, scope: !1160)
!1163 = !DILocation(line: 1156, column: 27, scope: !1160)
!1164 = !DILocation(line: 1156, column: 40, scope: !1160)
!1165 = !DILocation(line: 1156, column: 19, scope: !1160)
!1166 = !DILocation(line: 1156, column: 17, scope: !1160)
!1167 = !DILocation(line: 1157, column: 14, scope: !1160)
!1168 = !DILocation(line: 1157, column: 11, scope: !1160)
!1169 = !DILocation(line: 1158, column: 5, scope: !1160)
!1170 = !DILocation(line: 1154, column: 9, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1157, file: !18, discriminator: 1)
!1172 = !DILocation(line: 1160, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1160, column: 9)
!1174 = !DILocation(line: 1160, column: 9, scope: !392)
!1175 = !DILocation(line: 1161, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !18, line: 1160, column: 14)
!1177 = !DILocation(line: 1161, column: 12, scope: !1176)
!1178 = !DILocation(line: 1165, column: 5, scope: !1176)
!1179 = !DILocation(line: 1166, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !392, file: !18, line: 1166, column: 9)
!1181 = !DILocation(line: 1166, column: 9, scope: !392)
!1182 = !DILocation(line: 1167, column: 25, scope: !1180)
!1183 = !DILocation(line: 1167, column: 9, scope: !1180)
!1184 = !DILocation(line: 1169, column: 12, scope: !392)
!1185 = !DILocation(line: 1170, column: 1, scope: !392)
!1186 = !DILocation(line: 1169, column: 5, scope: !392)
