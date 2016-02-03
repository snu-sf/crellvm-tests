; ModuleID = 'pystrtod.o.bc'
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
define double @_Py_parse_inf_or_nan(i8* %p, i8** nocapture %endptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !25, metadata !429), !dbg !430
  tail call void @llvm.dbg.value(metadata i8** %endptr, i64 0, metadata !26, metadata !429), !dbg !431
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !29, metadata !429), !dbg !432
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !28, metadata !429), !dbg !433
  %0 = load i8, i8* %p, align 1, !dbg !434, !tbaa !436
  switch i8 %0, label %if.end.8 [
    i8 45, label %if.then
    i8 43, label %if.then.6
  ], !dbg !439

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !29, metadata !429), !dbg !432
  %incdec.ptr = getelementptr i8, i8* %p, i64 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !28, metadata !429), !dbg !433
  br label %if.end.8, !dbg !442

if.then.6:                                        ; preds = %entry
  %incdec.ptr7 = getelementptr i8, i8* %p, i64 1, !dbg !443
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr7, i64 0, metadata !28, metadata !429), !dbg !433
  br label %if.end.8, !dbg !446

if.end.8:                                         ; preds = %entry, %if.then.6, %if.then
  %s.0 = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr7, %if.then.6 ], [ %p, %entry ]
  %negate.0 = phi i32 [ 1, %if.then ], [ 0, %if.then.6 ], [ 0, %entry ]
  tail call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !382, metadata !429), !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !450
  %1 = load i8, i8* %s.0, align 1, !dbg !451, !tbaa !436
  %idxprom.i = zext i8 %1 to i64, !dbg !455
  %arrayidx.i = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i, !dbg !455
  %2 = load i8, i8* %arrayidx.i, align 1, !dbg !451, !tbaa !436
  switch i8 %2, label %if.end.24 [
    i8 105, label %while.body.i
    i8 110, label %while.body.i.50
  ], !dbg !456

while.body.i:                                     ; preds = %if.end.8
  %incdec.ptr.i = getelementptr i8, i8* %s.0, i64 1, !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !382, metadata !429), !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !450
  %3 = load i8, i8* %incdec.ptr.i, align 1, !dbg !455, !tbaa !436
  %idxprom.i.1 = zext i8 %3 to i64, !dbg !455
  %arrayidx.i.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.1, !dbg !455
  %4 = load i8, i8* %arrayidx.i.1, align 1, !dbg !455, !tbaa !436
  %cmp.i.1 = icmp eq i8 %4, 110, !dbg !460
  br i1 %cmp.i.1, label %while.body.i.1, label %if.end.24, !dbg !456

if.then.9:                                        ; preds = %while.body.i.1
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !382, metadata !429), !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !450
  %add.ptr = getelementptr i8, i8* %s.0, i64 3, !dbg !461
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !28, metadata !429), !dbg !433
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  %5 = load i8, i8* %add.ptr, align 1, !dbg !467, !tbaa !436
  %idxprom.i.57 = zext i8 %5 to i64, !dbg !467
  %arrayidx.i.58 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.57, !dbg !467
  %6 = load i8, i8* %arrayidx.i.58, align 1, !dbg !467, !tbaa !436
  %cmp.i.60 = icmp eq i8 %6, 105, !dbg !468
  br i1 %cmp.i.60, label %while.body.i.65, label %case_insensitive_match.exit68, !dbg !469

while.body.i.65:                                  ; preds = %if.then.9
  %incdec.ptr.i.62 = getelementptr i8, i8* %s.0, i64 4, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.62, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  %7 = load i8, i8* %incdec.ptr.i.62, align 1, !dbg !467, !tbaa !436
  %idxprom.i.57.1 = zext i8 %7 to i64, !dbg !467
  %arrayidx.i.58.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.57.1, !dbg !467
  %8 = load i8, i8* %arrayidx.i.58.1, align 1, !dbg !467, !tbaa !436
  %cmp.i.60.1 = icmp eq i8 %8, 110, !dbg !468
  br i1 %cmp.i.60.1, label %while.body.i.65.1, label %case_insensitive_match.exit68, !dbg !469

case_insensitive_match.exit68:                    ; preds = %while.body.i.65.3, %while.body.i.65.2, %while.body.i.65.1, %while.body.i.65, %if.then.9
  %9 = phi i1 [ false, %if.then.9 ], [ false, %while.body.i.65 ], [ false, %while.body.i.65.1 ], [ false, %while.body.i.65.2 ], [ %cmp.i.60.4, %while.body.i.65.3 ]
  %add.ptr13 = getelementptr i8, i8* %s.0, i64 8, !dbg !471
  tail call void @llvm.dbg.value(metadata i8* %add.ptr13, i64 0, metadata !28, metadata !429), !dbg !433
  %add.ptr.add.ptr13 = select i1 %9, i8* %add.ptr13, i8* %add.ptr, !dbg !472
  %call15 = tail call double @_Py_dg_infinity(i32 %negate.0) #1, !dbg !473
  tail call void @llvm.dbg.value(metadata double %call15, i64 0, metadata !27, metadata !429), !dbg !474
  br label %if.end.24, !dbg !475

while.body.i.50:                                  ; preds = %if.end.8
  %incdec.ptr.i.47 = getelementptr i8, i8* %s.0, i64 1, !dbg !476
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.47, i64 0, metadata !382, metadata !429), !dbg !477
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !478
  %10 = load i8, i8* %incdec.ptr.i.47, align 1, !dbg !451, !tbaa !436
  %idxprom.i.42.1 = zext i8 %10 to i64, !dbg !451
  %arrayidx.i.43.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.42.1, !dbg !451
  %11 = load i8, i8* %arrayidx.i.43.1, align 1, !dbg !451, !tbaa !436
  %cmp.i.45.1 = icmp eq i8 %11, 97, !dbg !479
  br i1 %cmp.i.45.1, label %while.body.i.50.1, label %if.end.24, !dbg !480

if.then.19:                                       ; preds = %while.body.i.50.1
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.47, i64 0, metadata !382, metadata !429), !dbg !477
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !478
  %add.ptr20 = getelementptr i8, i8* %s.0, i64 3, !dbg !481
  tail call void @llvm.dbg.value(metadata i8* %add.ptr20, i64 0, metadata !28, metadata !429), !dbg !433
  %call21 = tail call double @_Py_dg_stdnan(i32 %negate.0) #1, !dbg !483
  tail call void @llvm.dbg.value(metadata double %call21, i64 0, metadata !27, metadata !429), !dbg !474
  br label %if.end.24, !dbg !484

if.end.24:                                        ; preds = %if.end.8, %while.body.i.1, %while.body.i, %while.body.i.50.1, %while.body.i.50, %if.then.19, %case_insensitive_match.exit68
  %retval1.0 = phi double [ %call15, %case_insensitive_match.exit68 ], [ %call21, %if.then.19 ], [ -1.000000e+00, %while.body.i.50 ], [ -1.000000e+00, %while.body.i.50.1 ], [ -1.000000e+00, %while.body.i ], [ -1.000000e+00, %while.body.i.1 ], [ -1.000000e+00, %if.end.8 ]
  %s.2 = phi i8* [ %add.ptr.add.ptr13, %case_insensitive_match.exit68 ], [ %add.ptr20, %if.then.19 ], [ %p, %while.body.i.50 ], [ %p, %while.body.i.50.1 ], [ %p, %while.body.i ], [ %p, %while.body.i.1 ], [ %p, %if.end.8 ]
  store i8* %s.2, i8** %endptr, align 8, !dbg !485, !tbaa !486
  ret double %retval1.0, !dbg !488

while.body.i.65.1:                                ; preds = %while.body.i.65
  %incdec.ptr.i.62.1 = getelementptr i8, i8* %s.0, i64 5, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.62, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  %12 = load i8, i8* %incdec.ptr.i.62.1, align 1, !dbg !467, !tbaa !436
  %idxprom.i.57.2 = zext i8 %12 to i64, !dbg !467
  %arrayidx.i.58.2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.57.2, !dbg !467
  %13 = load i8, i8* %arrayidx.i.58.2, align 1, !dbg !467, !tbaa !436
  %cmp.i.60.2 = icmp eq i8 %13, 105, !dbg !468
  br i1 %cmp.i.60.2, label %while.body.i.65.2, label %case_insensitive_match.exit68, !dbg !469

while.body.i.65.2:                                ; preds = %while.body.i.65.1
  %incdec.ptr.i.62.2 = getelementptr i8, i8* %s.0, i64 6, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.62, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  %14 = load i8, i8* %incdec.ptr.i.62.2, align 1, !dbg !467, !tbaa !436
  %idxprom.i.57.3 = zext i8 %14 to i64, !dbg !467
  %arrayidx.i.58.3 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.57.3, !dbg !467
  %15 = load i8, i8* %arrayidx.i.58.3, align 1, !dbg !467, !tbaa !436
  %cmp.i.60.3 = icmp eq i8 %15, 116, !dbg !468
  br i1 %cmp.i.60.3, label %while.body.i.65.3, label %case_insensitive_match.exit68, !dbg !469

while.body.i.65.3:                                ; preds = %while.body.i.65.2
  %incdec.ptr.i.62.3 = getelementptr i8, i8* %s.0, i64 7, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.62, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  %16 = load i8, i8* %incdec.ptr.i.62.3, align 1, !dbg !467, !tbaa !436
  %idxprom.i.57.4 = zext i8 %16 to i64, !dbg !467
  %arrayidx.i.58.4 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.57.4, !dbg !467
  %17 = load i8, i8* %arrayidx.i.58.4, align 1, !dbg !467, !tbaa !436
  %cmp.i.60.4 = icmp eq i8 %17, 121, !dbg !468
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.62, i64 0, metadata !382, metadata !429), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !466
  br label %case_insensitive_match.exit68, !dbg !469

while.body.i.50.1:                                ; preds = %while.body.i.50
  %incdec.ptr.i.47.1 = getelementptr i8, i8* %s.0, i64 2, !dbg !476
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.47, i64 0, metadata !382, metadata !429), !dbg !477
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !478
  %18 = load i8, i8* %incdec.ptr.i.47.1, align 1, !dbg !451, !tbaa !436
  %idxprom.i.42.2 = zext i8 %18 to i64, !dbg !451
  %arrayidx.i.43.2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.42.2, !dbg !451
  %19 = load i8, i8* %arrayidx.i.43.2, align 1, !dbg !451, !tbaa !436
  %cmp.i.45.2 = icmp eq i8 %19, 110, !dbg !479
  br i1 %cmp.i.45.2, label %if.then.19, label %if.end.24, !dbg !480

while.body.i.1:                                   ; preds = %while.body.i
  %incdec.ptr.i.1 = getelementptr i8, i8* %s.0, i64 2, !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !382, metadata !429), !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !383, metadata !429), !dbg !450
  %20 = load i8, i8* %incdec.ptr.i.1, align 1, !dbg !455, !tbaa !436
  %idxprom.i.2 = zext i8 %20 to i64, !dbg !455
  %arrayidx.i.2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.i.2, !dbg !455
  %21 = load i8, i8* %arrayidx.i.2, align 1, !dbg !455, !tbaa !436
  %cmp.i.2 = icmp eq i8 %21, 102, !dbg !460
  br i1 %cmp.i.2, label %if.then.9, label %if.end.24, !dbg !456
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare double @_Py_dg_infinity(i32) #2

declare double @_Py_dg_stdnan(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define double @PyOS_string_to_double(i8* %s, i8** %endptr, %struct._object* %overflow_exception) #0 {
entry:
  %fail_pos = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !360, metadata !429), !dbg !489
  tail call void @llvm.dbg.value(metadata i8** %endptr, i64 0, metadata !361, metadata !429), !dbg !490
  tail call void @llvm.dbg.value(metadata %struct._object* %overflow_exception, i64 0, metadata !362, metadata !429), !dbg !491
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, i64 0, metadata !364, metadata !429), !dbg !492
  %0 = bitcast i8** %fail_pos to i8*, !dbg !493
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !493
  %call = tail call i32* @__errno_location() #5, !dbg !494
  tail call void @llvm.dbg.value(metadata i8** %fail_pos, i64 0, metadata !365, metadata !429), !dbg !495
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !386, metadata !429) #1, !dbg !496
  tail call void @llvm.dbg.value(metadata i8** %fail_pos, i64 0, metadata !387, metadata !429) #1, !dbg !498
  store i32 0, i32* %call, align 4, !dbg !499, !tbaa !500
  %call1.i = tail call zeroext i16 @_Py_get_387controlword() #1, !dbg !502
  tail call void @llvm.dbg.value(metadata i16 %call1.i, i64 0, metadata !389, metadata !429) #1, !dbg !505
  %and.i = and i16 %call1.i, -3841, !dbg !502
  %or.i = or i16 %and.i, 512, !dbg !502
  tail call void @llvm.dbg.value(metadata i16 %or.i, i64 0, metadata !390, metadata !429) #1, !dbg !505
  %cmp.i = icmp eq i16 %or.i, %call1.i, !dbg !506
  br i1 %cmp.i, label %do.end.thread33.i, label %if.then.11.i, !dbg !508

do.end.thread33.i:                                ; preds = %entry
  %call6.34.i = call double @_Py_dg_strtod(i8* %s, i8** nonnull %fail_pos) #1, !dbg !509
  br label %if.end.12.i, !dbg !510

if.then.11.i:                                     ; preds = %entry
  tail call void @_Py_set_387controlword(i16 zeroext %or.i) #1, !dbg !511
  %call6.30.i = call double @_Py_dg_strtod(i8* %s, i8** nonnull %fail_pos) #1, !dbg !509
  call void @_Py_set_387controlword(i16 zeroext %call1.i) #1, !dbg !513
  br label %if.end.12.i, !dbg !513

if.end.12.i:                                      ; preds = %if.then.11.i, %do.end.thread33.i
  %call631.i = phi double [ %call6.30.i, %if.then.11.i ], [ %call6.34.i, %do.end.thread33.i ], !dbg !516
  %1 = load i8*, i8** %fail_pos, align 8, !dbg !517, !tbaa !486
  %cmp13.i = icmp eq i8* %1, %s, !dbg !519
  br i1 %cmp13.i, label %if.then.15.i, label %_PyOS_ascii_strtod.exit, !dbg !520

if.then.15.i:                                     ; preds = %if.end.12.i
  %call16.i = call double @_Py_parse_inf_or_nan(i8* %s, i8** nonnull %fail_pos) #1, !dbg !521
  call void @llvm.dbg.value(metadata double %call16.i, i64 0, metadata !388, metadata !429) #1, !dbg !522
  br label %_PyOS_ascii_strtod.exit, !dbg !523

_PyOS_ascii_strtod.exit:                          ; preds = %if.end.12.i, %if.then.15.i
  %result.0.i = phi double [ %call16.i, %if.then.15.i ], [ %call631.i, %if.end.12.i ], !dbg !516
  call void @llvm.dbg.value(metadata double %result.0.i, i64 0, metadata !363, metadata !429), !dbg !524
  %2 = load i32, i32* %call, align 4, !dbg !525, !tbaa !500
  %cmp = icmp eq i32 %2, 12, !dbg !530
  br i1 %cmp, label %if.then, label %if.else, !dbg !531

if.then:                                          ; preds = %_PyOS_ascii_strtod.exit
  %call3 = call %struct._object* @PyErr_NoMemory() #1, !dbg !532
  call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !365, metadata !429), !dbg !495
  store i8* %s, i8** %fail_pos, align 8, !dbg !534, !tbaa !486
  br label %if.end.29, !dbg !535

if.else:                                          ; preds = %_PyOS_ascii_strtod.exit
  %tobool = icmp eq i8** %endptr, null, !dbg !536
  %3 = load i8*, i8** %fail_pos, align 8, !dbg !537, !tbaa !486
  br i1 %tobool, label %land.lhs.true, label %if.else.9, !dbg !539

land.lhs.true:                                    ; preds = %if.else
  call void @llvm.dbg.value(metadata i8** %fail_pos, i64 0, metadata !365, metadata !429), !dbg !495
  %cmp4 = icmp eq i8* %3, %s, !dbg !540
  br i1 %cmp4, label %if.end.29.thread, label %lor.lhs.false, !dbg !541

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i8, i8* %3, align 1, !dbg !542, !tbaa !436
  %cmp5 = icmp eq i8 %4, 0, !dbg !543
  br i1 %cmp5, label %if.else.9, label %if.end.29.thread, !dbg !544

if.end.29.thread:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !545, !tbaa !486
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %s) #1, !dbg !546
  br label %if.end.33, !dbg !547

if.else.9:                                        ; preds = %if.else, %lor.lhs.false
  call void @llvm.dbg.value(metadata i8** %fail_pos, i64 0, metadata !365, metadata !429), !dbg !495
  %cmp10 = icmp eq i8* %3, %s, !dbg !548
  br i1 %cmp10, label %if.then.12, label %if.else.14, !dbg !549

if.then.12:                                       ; preds = %if.else.9
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !550, !tbaa !486
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %s) #1, !dbg !551
  br label %if.end.29, !dbg !551

if.else.14:                                       ; preds = %if.else.9
  %cmp16 = icmp eq i32 %2, 34, !dbg !552
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.29, !dbg !553

land.lhs.true.18:                                 ; preds = %if.else.14
  %call19 = call double @fabs(double %result.0.i) #5, !dbg !554
  %cmp20 = fcmp oge double %call19, 1.000000e+00, !dbg !555
  %tobool23 = icmp ne %struct._object* %overflow_exception, null, !dbg !556
  %or.cond = and i1 %tobool23, %cmp20, !dbg !558
  br i1 %or.cond, label %if.then.24, label %if.end.29, !dbg !558

if.then.24:                                       ; preds = %land.lhs.true.18
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %overflow_exception, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %s) #1, !dbg !559
  br label %if.end.29, !dbg !559

if.end.29:                                        ; preds = %if.else.14, %land.lhs.true.18, %if.then.24, %if.then.12, %if.then
  %result.0 = phi double [ -1.000000e+00, %if.then ], [ -1.000000e+00, %if.then.12 ], [ -1.000000e+00, %if.then.24 ], [ %result.0.i, %land.lhs.true.18 ], [ %result.0.i, %if.else.14 ]
  %cmp30 = icmp eq i8** %endptr, null, !dbg !560
  br i1 %cmp30, label %if.end.33, label %if.then.32, !dbg !547

if.then.32:                                       ; preds = %if.end.29
  call void @llvm.dbg.value(metadata i8** %fail_pos, i64 0, metadata !365, metadata !429), !dbg !495
  %7 = bitcast i8** %fail_pos to i64*, !dbg !562
  %8 = load i64, i64* %7, align 8, !dbg !562, !tbaa !486
  %9 = bitcast i8** %endptr to i64*, !dbg !563
  store i64 %8, i64* %9, align 8, !dbg !563, !tbaa !486
  br label %if.end.33, !dbg !564

if.end.33:                                        ; preds = %if.end.29.thread, %if.end.29, %if.then.32
  %result.047 = phi double [ -1.000000e+00, %if.end.29.thread ], [ %result.0, %if.end.29 ], [ %result.0, %if.then.32 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !565
  ret double %result.047, !dbg !566
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare %struct._object* @PyErr_NoMemory() #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i8* @PyOS_double_to_string(double %val, i8 signext %format_code, i32 %precision, i32 %flags, i32* %type) #0 {
entry:
  %digits_end.i = alloca i8*, align 8
  %decpt_as_int.i = alloca i32, align 4
  %sign.i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata double %val, i64 0, metadata !371, metadata !429), !dbg !567
  tail call void @llvm.dbg.value(metadata i8 %format_code, i64 0, metadata !372, metadata !429), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %precision, i64 0, metadata !373, metadata !429), !dbg !569
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !374, metadata !429), !dbg !570
  tail call void @llvm.dbg.value(metadata i32* %type, i64 0, metadata !375, metadata !429), !dbg !571
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !376, metadata !429), !dbg !572
  %conv = sext i8 %format_code to i32, !dbg !573
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb.1
    i32 70, label %sw.bb.2
    i32 102, label %sw.epilog
    i32 71, label %sw.bb.4
    i32 103, label %sw.bb.5
    i32 114, label %sw.bb.7
  ], !dbg !574

sw.bb:                                            ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !376, metadata !429), !dbg !572
  tail call void @llvm.dbg.value(metadata i8 101, i64 0, metadata !372, metadata !429), !dbg !568
  br label %sw.bb.1, !dbg !575

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %format_code.addr.0 = phi i8 [ %format_code, %entry ], [ 101, %sw.bb ]
  %float_strings.0 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i64 0, i64 0), %entry ], [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i64 0, i64 0), %sw.bb ]
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !377, metadata !429), !dbg !577
  %inc = add i32 %precision, 1, !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !373, metadata !429), !dbg !569
  br label %sw.epilog, !dbg !579

sw.bb.2:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !376, metadata !429), !dbg !572
  tail call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !372, metadata !429), !dbg !568
  br label %sw.epilog, !dbg !580

sw.bb.4:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !376, metadata !429), !dbg !572
  tail call void @llvm.dbg.value(metadata i8 103, i64 0, metadata !372, metadata !429), !dbg !568
  br label %sw.bb.5, !dbg !581

sw.bb.5:                                          ; preds = %entry, %sw.bb.4
  %format_code.addr.2 = phi i8 [ %format_code, %entry ], [ 103, %sw.bb.4 ]
  %float_strings.2 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i64 0, i64 0), %entry ], [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i64 0, i64 0), %sw.bb.4 ]
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !377, metadata !429), !dbg !577
  %cmp = icmp eq i32 %precision, 0, !dbg !582
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !373, metadata !429), !dbg !569
  %.precision = select i1 %cmp, i32 1, i32 %precision, !dbg !584
  br label %sw.epilog, !dbg !584

sw.bb.7:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !377, metadata !429), !dbg !577
  %cmp8 = icmp eq i32 %precision, 0, !dbg !585
  br i1 %cmp8, label %sw.epilog, label %if.then.10, !dbg !587

if.then.10:                                       ; preds = %sw.bb.7
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 1221) #1, !dbg !588
  br label %cleanup, !dbg !590

sw.default:                                       ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 1227) #1, !dbg !591
  br label %cleanup, !dbg !592

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.2, %entry, %sw.bb.7, %sw.bb.1
  %precision.addr.0 = phi i32 [ 0, %sw.bb.7 ], [ %inc, %sw.bb.1 ], [ %precision, %entry ], [ %precision, %sw.bb.2 ], [ %.precision, %sw.bb.5 ]
  %format_code.addr.3 = phi i8 [ %format_code, %sw.bb.7 ], [ %format_code.addr.0, %sw.bb.1 ], [ %format_code, %entry ], [ 102, %sw.bb.2 ], [ %format_code.addr.2, %sw.bb.5 ]
  %float_strings.3 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i64 0, i64 0), %sw.bb.7 ], [ %float_strings.0, %sw.bb.1 ], [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @lc_float_strings, i64 0, i64 0), %entry ], [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @uc_float_strings, i64 0, i64 0), %sw.bb.2 ], [ %float_strings.2, %sw.bb.5 ]
  %mode.0 = phi i32 [ 0, %sw.bb.7 ], [ 2, %sw.bb.1 ], [ 3, %entry ], [ 3, %sw.bb.2 ], [ 2, %sw.bb.5 ]
  %and = and i32 %flags, 1, !dbg !593
  %and12 = and i32 %flags, 2, !dbg !594
  %and13 = and i32 %flags, 4, !dbg !595
  tail call void @llvm.dbg.value(metadata double %val, i64 0, metadata !395, metadata !429) #1, !dbg !596
  tail call void @llvm.dbg.value(metadata i8 %format_code.addr.3, i64 0, metadata !396, metadata !429) #1, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %mode.0, i64 0, metadata !397, metadata !429) #1, !dbg !599
  tail call void @llvm.dbg.value(metadata i32 %precision.addr.0, i64 0, metadata !398, metadata !429) #1, !dbg !600
  tail call void @llvm.dbg.value(metadata i32 %and, i64 0, metadata !399, metadata !429) #1, !dbg !601
  tail call void @llvm.dbg.value(metadata i32 %and12, i64 0, metadata !400, metadata !429) #1, !dbg !602
  tail call void @llvm.dbg.value(metadata i32 %and13, i64 0, metadata !401, metadata !429) #1, !dbg !603
  tail call void @llvm.dbg.value(metadata i8** %float_strings.3, i64 0, metadata !402, metadata !429) #1, !dbg !604
  tail call void @llvm.dbg.value(metadata i32* %type, i64 0, metadata !403, metadata !429) #1, !dbg !605
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !404, metadata !429) #1, !dbg !606
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !405, metadata !429) #1, !dbg !607
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !406, metadata !429) #1, !dbg !608
  %0 = bitcast i8** %digits_end.i to i8*, !dbg !609
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !609
  %1 = bitcast i32* %decpt_as_int.i to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !610
  %2 = bitcast i32* %sign.i to i8*, !dbg !610
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !412, metadata !429) #1, !dbg !611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !413, metadata !429) #1, !dbg !612
  %call.i = tail call zeroext i16 @_Py_get_387controlword() #1, !dbg !613
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !418, metadata !429) #1, !dbg !616
  %and.i = and i16 %call.i, -3841, !dbg !613
  %or.i = or i16 %and.i, 512, !dbg !613
  tail call void @llvm.dbg.value(metadata i16 %or.i, i64 0, metadata !419, metadata !429) #1, !dbg !616
  %cmp.i = icmp eq i16 %or.i, %call.i, !dbg !617
  br i1 %cmp.i, label %do.end.thread381.i, label %if.then.10.i, !dbg !619

do.end.thread381.i:                               ; preds = %sw.epilog
  tail call void @llvm.dbg.value(metadata i8** %digits_end.i, i64 0, metadata !408, metadata !429) #1, !dbg !620
  tail call void @llvm.dbg.value(metadata i32* %decpt_as_int.i, i64 0, metadata !409, metadata !429) #1, !dbg !621
  tail call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !410, metadata !429) #1, !dbg !622
  %call5.382.i = call i8* @_Py_dg_dtoa(double %val, i32 %mode.0, i32 %precision.addr.0, i32* nonnull %decpt_as_int.i, i32* nonnull %sign.i, i8** nonnull %digits_end.i) #1, !dbg !623
  br label %if.end.11.i, !dbg !624

if.then.10.i:                                     ; preds = %sw.epilog
  tail call void @_Py_set_387controlword(i16 zeroext %or.i) #1, !dbg !625
  tail call void @llvm.dbg.value(metadata i8** %digits_end.i, i64 0, metadata !408, metadata !429) #1, !dbg !620
  tail call void @llvm.dbg.value(metadata i32* %decpt_as_int.i, i64 0, metadata !409, metadata !429) #1, !dbg !621
  tail call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !410, metadata !429) #1, !dbg !622
  %call5.377.i = call i8* @_Py_dg_dtoa(double %val, i32 %mode.0, i32 %precision.addr.0, i32* nonnull %decpt_as_int.i, i32* nonnull %sign.i, i8** nonnull %digits_end.i) #1, !dbg !623
  call void @_Py_set_387controlword(i16 zeroext %call.i) #1, !dbg !627
  br label %if.end.11.i, !dbg !627

if.end.11.i:                                      ; preds = %if.then.10.i, %do.end.thread381.i
  %call5378.i = phi i8* [ %call5.377.i, %if.then.10.i ], [ %call5.382.i, %do.end.thread381.i ], !dbg !630
  call void @llvm.dbg.value(metadata i32* %decpt_as_int.i, i64 0, metadata !409, metadata !429) #1, !dbg !621
  %3 = load i32, i32* %decpt_as_int.i, align 4, !dbg !631, !tbaa !500
  %conv12.i = sext i32 %3 to i64, !dbg !632
  call void @llvm.dbg.value(metadata i64 %conv12.i, i64 0, metadata !414, metadata !429) #1, !dbg !633
  %cmp13.i = icmp eq i8* %call5378.i, null, !dbg !634
  br i1 %cmp13.i, label %if.end.237.thread.i, label %if.end.17.i, !dbg !636

if.end.237.thread.i:                              ; preds = %if.end.11.i
  %call16.i = call %struct._object* @PyErr_NoMemory() #1, !dbg !637
  br label %format_float_short.exit, !dbg !639

if.end.17.i:                                      ; preds = %if.end.11.i
  call void @llvm.dbg.value(metadata i8** %digits_end.i, i64 0, metadata !408, metadata !429) #1, !dbg !620
  %4 = bitcast i8** %digits_end.i to i64*, !dbg !640
  %5 = load i64, i64* %4, align 8, !dbg !640, !tbaa !486
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call5378.i to i64, !dbg !641
  %sub.ptr.sub.i = sub i64 %5, %sub.ptr.rhs.cast.i, !dbg !641
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !415, metadata !429) #1, !dbg !642
  %tobool.i = icmp eq i64 %5, %sub.ptr.rhs.cast.i, !dbg !643
  br i1 %tobool.i, label %if.end.85.i, label %land.lhs.true.i, !dbg !645

land.lhs.true.i:                                  ; preds = %if.end.17.i
  %6 = load i8, i8* %call5378.i, align 1, !dbg !646, !tbaa !436
  %idxprom.i = zext i8 %6 to i64, !dbg !646
  %arrayidx21.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.i, !dbg !646
  %7 = load i32, i32* %arrayidx21.i, align 4, !dbg !646, !tbaa !500
  %and22.i = and i32 %7, 4, !dbg !646
  %tobool23.i = icmp eq i32 %and22.i, 0, !dbg !646
  br i1 %tobool23.i, label %if.then.24.i, label %if.end.85.i, !dbg !648

if.then.24.i:                                     ; preds = %land.lhs.true.i
  switch i8 %6, label %if.end.34.i [
    i8 110, label %if.then.33.i
    i8 78, label %if.then.33.i
  ], !dbg !649

if.then.33.i:                                     ; preds = %if.then.24.i, %if.then.24.i
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !410, metadata !429) #1, !dbg !622
  store i32 0, i32* %sign.i, align 4, !dbg !652, !tbaa !500
  br label %if.end.34.i, !dbg !653

if.end.34.i:                                      ; preds = %if.then.33.i, %if.then.24.i
  call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !406, metadata !429) #1, !dbg !608
  %call35.i = call i8* @PyMem_Malloc(i64 5) #1, !dbg !654
  call void @llvm.dbg.value(metadata i8* %call35.i, i64 0, metadata !404, metadata !429) #1, !dbg !606
  %cmp36.i = icmp eq i8* %call35.i, null, !dbg !655
  br i1 %cmp36.i, label %if.then.38.i, label %if.end.40.i, !dbg !657

if.then.38.i:                                     ; preds = %if.end.34.i
  %call39.i = call %struct._object* @PyErr_NoMemory() #1, !dbg !658
  br label %if.then.239.i, !dbg !660

if.end.40.i:                                      ; preds = %if.end.34.i
  call void @llvm.dbg.value(metadata i8* %call35.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !410, metadata !429) #1, !dbg !622
  %8 = load i32, i32* %sign.i, align 4, !dbg !661, !tbaa !500
  %cmp41.i = icmp eq i32 %8, 1, !dbg !663
  br i1 %cmp41.i, label %if.then.43.i, label %if.else.i, !dbg !664

if.then.43.i:                                     ; preds = %if.end.40.i
  %incdec.ptr.i = getelementptr i8, i8* %call35.i, i64 1, !dbg !665
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 45, i8* %call35.i, align 1, !dbg !667, !tbaa !436
  br label %if.end.48.i, !dbg !668

if.else.i:                                        ; preds = %if.end.40.i
  %tobool44.i = icmp eq i32 %and, 0, !dbg !669
  br i1 %tobool44.i, label %if.end.48.i, label %if.then.45.i, !dbg !671

if.then.45.i:                                     ; preds = %if.else.i
  %incdec.ptr46.i = getelementptr i8, i8* %call35.i, i64 1, !dbg !672
  call void @llvm.dbg.value(metadata i8* %incdec.ptr46.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 43, i8* %call35.i, align 1, !dbg !674, !tbaa !436
  br label %if.end.48.i, !dbg !675

if.end.48.i:                                      ; preds = %if.then.45.i, %if.else.i, %if.then.43.i
  %p.0.i = phi i8* [ %incdec.ptr.i, %if.then.43.i ], [ %incdec.ptr46.i, %if.then.45.i ], [ %call35.i, %if.else.i ], !dbg !630
  %9 = load i8, i8* %call5378.i, align 1, !dbg !676, !tbaa !436
  switch i8 %9, label %if.else.81.i [
    i8 105, label %if.then.58.i
    i8 73, label %if.then.58.i
    i8 110, label %if.then.74.i
    i8 78, label %if.then.74.i
  ], !dbg !678

if.then.58.i:                                     ; preds = %if.end.48.i, %if.end.48.i
  %10 = load i8*, i8** %float_strings.3, align 8, !dbg !679, !tbaa !486
  %call60.i = call i8* @strncpy(i8* %p.0.i, i8* %10, i64 3) #1, !dbg !679
  %add.ptr.i = getelementptr i8, i8* %p.0.i, i64 3, !dbg !681
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %tobool61.i = icmp eq i32* %type, null, !dbg !682
  br i1 %tobool61.i, label %if.then.236.i, label %if.then.62.i, !dbg !684

if.then.62.i:                                     ; preds = %if.then.58.i
  store i32 1, i32* %type, align 4, !dbg !685, !tbaa !500
  br label %if.then.236.i, !dbg !686

if.then.74.i:                                     ; preds = %if.end.48.i, %if.end.48.i
  %arrayidx75.i = getelementptr i8*, i8** %float_strings.3, i64 1, !dbg !687
  %11 = load i8*, i8** %arrayidx75.i, align 8, !dbg !687, !tbaa !486
  %call76.i = call i8* @strncpy(i8* %p.0.i, i8* %11, i64 3) #1, !dbg !687
  %add.ptr77.i = getelementptr i8, i8* %p.0.i, i64 3, !dbg !690
  call void @llvm.dbg.value(metadata i8* %add.ptr77.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %tobool78.i = icmp eq i32* %type, null, !dbg !691
  br i1 %tobool78.i, label %if.then.236.i, label %if.then.79.i, !dbg !693

if.then.79.i:                                     ; preds = %if.then.74.i
  store i32 2, i32* %type, align 4, !dbg !694, !tbaa !500
  br label %if.then.236.i, !dbg !695

if.else.81.i:                                     ; preds = %if.end.48.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %p.0.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i32 1, i1 false) #1, !dbg !696
  br label %if.then.236.i, !dbg !630

if.end.85.i:                                      ; preds = %land.lhs.true.i, %if.end.17.i
  %tobool86.i = icmp eq i32* %type, null, !dbg !698
  br i1 %tobool86.i, label %if.end.88.i, label %if.then.87.i, !dbg !700

if.then.87.i:                                     ; preds = %if.end.85.i
  store i32 0, i32* %type, align 4, !dbg !701, !tbaa !500
  br label %if.end.88.i, !dbg !702

if.end.88.i:                                      ; preds = %if.then.87.i, %if.end.85.i
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !417, metadata !429) #1, !dbg !703
  %conv89.i = sext i8 %format_code.addr.3 to i32, !dbg !704
  switch i32 %conv89.i, label %sw.default.i [
    i32 101, label %sw.bb.i
    i32 102, label %sw.bb.91.i
    i32 103, label %sw.bb.93.i
    i32 114, label %sw.bb.107.i
  ], !dbg !705

sw.bb.i:                                          ; preds = %if.end.88.i
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !413, metadata !429) #1, !dbg !612
  %conv90.i = sext i32 %precision.addr.0 to i64, !dbg !706
  call void @llvm.dbg.value(metadata i32 %precision.addr.0, i64 0, metadata !417, metadata !429) #1, !dbg !703
  br label %sw.epilog.i, !dbg !708

sw.bb.91.i:                                       ; preds = %if.end.88.i
  %conv92.i = sext i32 %precision.addr.0 to i64, !dbg !709
  %add.i = add nsw i64 %conv12.i, %conv92.i, !dbg !710
  call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !417, metadata !429) #1, !dbg !703
  br label %sw.epilog.i, !dbg !711

sw.bb.93.i:                                       ; preds = %if.end.88.i
  %cmp94.i = icmp slt i32 %3, -3, !dbg !712
  br i1 %cmp94.i, label %if.then.101.i, label %lor.lhs.false.96.i, !dbg !714

lor.lhs.false.96.i:                               ; preds = %sw.bb.93.i
  %12 = shl i32 %flags, 30, !dbg !715
  %sext = ashr i32 %12, 31, !dbg !715
  %cond.i = add i32 %precision.addr.0, %sext, !dbg !715
  %cmp99.i = icmp sgt i32 %3, %cond.i, !dbg !716
  br i1 %cmp99.i, label %if.then.101.i, label %if.end.102.i, !dbg !717

if.then.101.i:                                    ; preds = %lor.lhs.false.96.i, %sw.bb.93.i
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !413, metadata !429) #1, !dbg !612
  br label %if.end.102.i, !dbg !718

if.end.102.i:                                     ; preds = %if.then.101.i, %lor.lhs.false.96.i
  %use_exp.0.i = phi i32 [ 1, %if.then.101.i ], [ 0, %lor.lhs.false.96.i ], !dbg !630
  %tobool103.i = icmp eq i32 %and13, 0, !dbg !719
  %conv105.i = sext i32 %precision.addr.0 to i64, !dbg !721
  call void @llvm.dbg.value(metadata i32 %precision.addr.0, i64 0, metadata !417, metadata !429) #1, !dbg !703
  %sub.ptr.sub.conv105.i = select i1 %tobool103.i, i64 %sub.ptr.sub.i, i64 %conv105.i, !dbg !722
  br label %sw.epilog.i, !dbg !722

sw.bb.107.i:                                      ; preds = %if.end.88.i
  %.off.i = add i32 %3, 3, !dbg !723
  %13 = icmp ugt i32 %.off.i, 19, !dbg !723
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !413, metadata !429) #1, !dbg !612
  %..i = zext i1 %13 to i32, !dbg !723
  br label %sw.epilog.i, !dbg !723

sw.default.i:                                     ; preds = %if.end.88.i
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 1055) #1, !dbg !725
  br label %if.then.239.i, !dbg !726

sw.epilog.i:                                      ; preds = %sw.bb.107.i, %if.end.102.i, %sw.bb.91.i, %sw.bb.i
  %use_exp.1.i = phi i32 [ 0, %sw.bb.91.i ], [ 1, %sw.bb.i ], [ %use_exp.0.i, %if.end.102.i ], [ %..i, %sw.bb.107.i ], !dbg !630
  %vdigits_end.0.i = phi i64 [ %add.i, %sw.bb.91.i ], [ %conv90.i, %sw.bb.i ], [ %sub.ptr.sub.conv105.i, %if.end.102.i ], [ %sub.ptr.sub.i, %sw.bb.107.i ], !dbg !630
  %tobool115.i = icmp ne i32 %use_exp.1.i, 0, !dbg !727
  %sub118.i = add i32 %3, -1, !dbg !729
  call void @llvm.dbg.value(metadata i32 %sub118.i, i64 0, metadata !412, metadata !429) #1, !dbg !611
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !414, metadata !429) #1, !dbg !633
  %.conv12.i = select i1 %tobool115.i, i64 1, i64 %conv12.i, !dbg !731
  %sub118..i = select i1 %tobool115.i, i32 %sub118.i, i32 0, !dbg !731
  %cmp120.i = icmp slt i64 %.conv12.i, 1, !dbg !732
  %sub123.i = add nsw i64 %.conv12.i, -1, !dbg !733
  %cond126.i = select i1 %cmp120.i, i64 %sub123.i, i64 0, !dbg !734
  %sub179.i = sub nsw i64 0, %cond126.i, !dbg !735
  call void @llvm.dbg.value(metadata i64 %cond126.i, i64 0, metadata !416, metadata !429) #1, !dbg !738
  %tobool127.i = icmp eq i32 %use_exp.1.i, 0, !dbg !739
  %tobool129.i = icmp ne i32 %and12, 0, !dbg !741
  %or.cond241.i = and i1 %tobool129.i, %tobool127.i, !dbg !743
  %cmp131.i = icmp sgt i64 %vdigits_end.0.i, %.conv12.i, !dbg !744
  %add135.i = zext i1 %or.cond241.i to i64, !dbg !743
  %add135.sink.i = add nsw i64 %add135.i, %.conv12.i, !dbg !743
  %cond137.i = select i1 %cmp131.i, i64 %vdigits_end.0.i, i64 %add135.sink.i, !dbg !745
  %sub146.i = select i1 %tobool115.i, i64 8, i64 3, !dbg !746
  %add147.i = sub nsw i64 %sub146.i, %cond126.i, !dbg !747
  %add151.i = add i64 %add147.i, %cond137.i, !dbg !748
  call void @llvm.dbg.value(metadata i64 %add151.i, i64 0, metadata !406, metadata !429) #1, !dbg !608
  %call152.i = call i8* @PyMem_Malloc(i64 %add151.i) #1, !dbg !749
  call void @llvm.dbg.value(metadata i8* %call152.i, i64 0, metadata !404, metadata !429) #1, !dbg !606
  %cmp153.i = icmp eq i8* %call152.i, null, !dbg !750
  br i1 %cmp153.i, label %if.then.155.i, label %if.end.157.i, !dbg !752

if.then.155.i:                                    ; preds = %sw.epilog.i
  %call156.i = call %struct._object* @PyErr_NoMemory() #1, !dbg !753
  br label %if.then.239.i, !dbg !755

if.end.157.i:                                     ; preds = %sw.epilog.i
  call void @llvm.dbg.value(metadata i8* %call152.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !410, metadata !429) #1, !dbg !622
  %14 = load i32, i32* %sign.i, align 4, !dbg !756, !tbaa !500
  %cmp158.i = icmp eq i32 %14, 1, !dbg !758
  br i1 %cmp158.i, label %if.then.160.i, label %if.else.162.i, !dbg !759

if.then.160.i:                                    ; preds = %if.end.157.i
  %incdec.ptr161.i = getelementptr i8, i8* %call152.i, i64 1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %incdec.ptr161.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 45, i8* %call152.i, align 1, !dbg !761, !tbaa !436
  br label %if.end.167.i, !dbg !762

if.else.162.i:                                    ; preds = %if.end.157.i
  %tobool163.i = icmp eq i32 %and, 0, !dbg !763
  br i1 %tobool163.i, label %if.end.167.i, label %if.then.164.i, !dbg !765

if.then.164.i:                                    ; preds = %if.else.162.i
  %incdec.ptr165.i = getelementptr i8, i8* %call152.i, i64 1, !dbg !766
  call void @llvm.dbg.value(metadata i8* %incdec.ptr165.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 43, i8* %call152.i, align 1, !dbg !767, !tbaa !436
  br label %if.end.167.i, !dbg !768

if.end.167.i:                                     ; preds = %if.then.164.i, %if.else.162.i, %if.then.160.i
  %p.1.i = phi i8* [ %incdec.ptr161.i, %if.then.160.i ], [ %incdec.ptr165.i, %if.then.164.i ], [ %call152.i, %if.else.162.i ], !dbg !630
  br i1 %cmp120.i, label %if.end.182.thread.i, label %if.end.182.i, !dbg !769

if.end.182.thread.i:                              ; preds = %if.end.167.i
  %sub171.i = sub nsw i64 %.conv12.i, %cond126.i, !dbg !770
  call void @llvm.memset.p0i8.i64(i8* %p.1.i, i8 48, i64 %sub171.i, i32 1, i1 false) #1, !dbg !772
  %add.ptr173.i = getelementptr i8, i8* %p.1.i, i64 %sub171.i, !dbg !773
  call void @llvm.dbg.value(metadata i8* %add.ptr173.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %incdec.ptr174.i = getelementptr i8, i8* %add.ptr173.i, i64 1, !dbg !774
  call void @llvm.dbg.value(metadata i8* %incdec.ptr174.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 46, i8* %add.ptr173.i, align 1, !dbg !775, !tbaa !436
  %sub175.i = sub nsw i64 0, %.conv12.i, !dbg !776
  call void @llvm.memset.p0i8.i64(i8* %incdec.ptr174.i, i8 48, i64 %sub175.i, i32 1, i1 false) #1, !dbg !777
  %add.ptr177.i = getelementptr i8, i8* %incdec.ptr174.i, i64 %sub175.i, !dbg !778
  call void @llvm.dbg.value(metadata i8* %add.ptr177.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %cmp186.384.i = icmp sgt i64 %.conv12.i, %sub.ptr.sub.i, !dbg !779
  %call200.391.i = call i8* @strncpy(i8* %add.ptr177.i, i8* %call5378.i, i64 %sub.ptr.sub.i) #1, !dbg !781
  %add.ptr201.392.i = getelementptr i8, i8* %add.ptr177.i, i64 %sub.ptr.sub.i, !dbg !783
  call void @llvm.dbg.value(metadata i8* %add.ptr201.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br i1 %cmp186.384.i, label %if.then.205.i, label %if.else.213.i, !dbg !784

if.end.182.i:                                     ; preds = %if.end.167.i
  call void @llvm.memset.p0i8.i64(i8* %p.1.i, i8 48, i64 %sub179.i, i32 1, i1 false) #1, !dbg !785
  %add.ptr181.i = getelementptr i8, i8* %p.1.i, i64 %sub179.i, !dbg !786
  call void @llvm.dbg.value(metadata i8* %add.ptr181.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %cmp186.i = icmp sgt i64 %.conv12.i, %sub.ptr.sub.i, !dbg !779
  br i1 %cmp186.i, label %if.end.202.i, label %if.then.188.i, !dbg !787

if.then.188.i:                                    ; preds = %if.end.182.i
  %call190.i = call i8* @strncpy(i8* %add.ptr181.i, i8* %call5378.i, i64 %.conv12.i) #1, !dbg !788
  %add.ptr192.i = getelementptr i8, i8* %add.ptr181.i, i64 %.conv12.i, !dbg !790
  call void @llvm.dbg.value(metadata i8* %add.ptr192.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %incdec.ptr193.i = getelementptr i8, i8* %add.ptr192.i, i64 1, !dbg !791
  call void @llvm.dbg.value(metadata i8* %incdec.ptr193.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 46, i8* %add.ptr192.i, align 1, !dbg !792, !tbaa !436
  %add.ptr194.i = getelementptr i8, i8* %call5378.i, i64 %.conv12.i, !dbg !793
  %sub195.i = sub i64 %sub.ptr.sub.i, %.conv12.i, !dbg !793
  %call196.i = call i8* @strncpy(i8* %incdec.ptr193.i, i8* %add.ptr194.i, i64 %sub195.i) #1, !dbg !793
  %add.ptr198.i = getelementptr i8, i8* %incdec.ptr193.i, i64 %sub195.i, !dbg !794
  call void @llvm.dbg.value(metadata i8* %add.ptr198.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br label %if.else.213.i, !dbg !784

if.end.202.i:                                     ; preds = %if.end.182.i
  %call200.i = call i8* @strncpy(i8* %add.ptr181.i, i8* %call5378.i, i64 %sub.ptr.sub.i) #1, !dbg !781
  %add.ptr201.i = getelementptr i8, i8* %add.ptr181.i, i64 %sub.ptr.sub.i, !dbg !783
  call void @llvm.dbg.value(metadata i8* %add.ptr201.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br label %if.then.205.i, !dbg !784

if.then.205.i:                                    ; preds = %if.end.202.i, %if.end.182.thread.i
  %15 = phi i8* [ %add.ptr181.i, %if.end.202.i ], [ %add.ptr177.i, %if.end.182.thread.i ], !dbg !630
  %p.3389.i = phi i8* [ %add.ptr201.i, %if.end.202.i ], [ %add.ptr201.392.i, %if.end.182.thread.i ], !dbg !630
  %16 = getelementptr i8, i8* %15, i64 %sub.ptr.sub.i, !dbg !783
  %sub206.i = sub i64 %.conv12.i, %sub.ptr.sub.i, !dbg !795
  call void @llvm.memset.p0i8.i64(i8* %p.3389.i, i8 48, i64 %sub206.i, i32 1, i1 false) #1, !dbg !798
  %add.ptr208.i = getelementptr i8, i8* %16, i64 %sub206.i, !dbg !799
  call void @llvm.dbg.value(metadata i8* %add.ptr208.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %incdec.ptr209.i = getelementptr i8, i8* %add.ptr208.i, i64 1, !dbg !800
  call void @llvm.dbg.value(metadata i8* %incdec.ptr209.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 46, i8* %add.ptr208.i, align 1, !dbg !801, !tbaa !436
  %sub210.i = sub i64 %cond137.i, %.conv12.i, !dbg !802
  call void @llvm.memset.p0i8.i64(i8* %incdec.ptr209.i, i8 48, i64 %sub210.i, i32 1, i1 false) #1, !dbg !803
  %add.ptr212.i = getelementptr i8, i8* %incdec.ptr209.i, i64 %sub210.i, !dbg !804
  call void @llvm.dbg.value(metadata i8* %add.ptr212.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br label %if.end.217.i, !dbg !805

if.else.213.i:                                    ; preds = %if.then.188.i, %if.end.182.thread.i
  %p.3390.i = phi i8* [ %add.ptr198.i, %if.then.188.i ], [ %add.ptr201.392.i, %if.end.182.thread.i ], !dbg !630
  %sub214.i = sub i64 %cond137.i, %sub.ptr.sub.i, !dbg !806
  call void @llvm.memset.p0i8.i64(i8* %p.3390.i, i8 48, i64 %sub214.i, i32 1, i1 false) #1, !dbg !808
  %add.ptr216.i = getelementptr i8, i8* %p.3390.i, i64 %sub214.i, !dbg !809
  call void @llvm.dbg.value(metadata i8* %add.ptr216.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br label %if.end.217.i, !dbg !630

if.end.217.i:                                     ; preds = %if.else.213.i, %if.then.205.i
  %p.4.i = phi i8* [ %add.ptr212.i, %if.then.205.i ], [ %add.ptr216.i, %if.else.213.i ], !dbg !630
  %arrayidx218.i = getelementptr i8, i8* %p.4.i, i64 -1, !dbg !810
  %17 = load i8, i8* %arrayidx218.i, align 1, !dbg !810, !tbaa !436
  %cmp220.i = icmp ne i8 %17, 46, !dbg !812
  %tobool223.i = icmp ne i32 %and13, 0, !dbg !813
  %or.cond242.i = or i1 %tobool223.i, %cmp220.i, !dbg !815
  call void @llvm.dbg.value(metadata i8* %arrayidx218.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  %p.4.incdec.ptr225.i = select i1 %or.cond242.i, i8* %p.4.i, i8* %arrayidx218.i, !dbg !815
  br i1 %tobool115.i, label %if.then.228.i, label %if.then.236.i, !dbg !816

if.then.228.i:                                    ; preds = %if.end.217.i
  %arrayidx229.i = getelementptr i8*, i8** %float_strings.3, i64 2, !dbg !817
  %18 = load i8*, i8** %arrayidx229.i, align 8, !dbg !817, !tbaa !486
  %19 = load i8, i8* %18, align 1, !dbg !817, !tbaa !436
  %incdec.ptr231.i = getelementptr i8, i8* %p.4.incdec.ptr225.i, i64 1, !dbg !820
  call void @llvm.dbg.value(metadata i8* %incdec.ptr231.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  store i8 %19, i8* %p.4.incdec.ptr225.i, align 1, !dbg !821, !tbaa !436
  %call232.i = call i32 (i8*, i8*, ...) @sprintf(i8* %incdec.ptr231.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %sub118..i) #1, !dbg !822
  call void @llvm.dbg.value(metadata i32 %call232.i, i64 0, metadata !411, metadata !429) #1, !dbg !823
  %idx.ext.i = sext i32 %call232.i to i64, !dbg !824
  %add.ptr233.i = getelementptr i8, i8* %incdec.ptr231.i, i64 %idx.ext.i, !dbg !824
  call void @llvm.dbg.value(metadata i8* %add.ptr233.i, i64 0, metadata !405, metadata !429) #1, !dbg !607
  br label %if.then.236.i, !dbg !825

if.then.236.i:                                    ; preds = %if.then.228.i, %if.end.217.i, %if.else.81.i, %if.then.79.i, %if.then.74.i, %if.then.62.i, %if.then.58.i
  %p.6.ph.i = phi i8* [ %p.0.i, %if.else.81.i ], [ %add.ptr77.i, %if.then.74.i ], [ %add.ptr77.i, %if.then.79.i ], [ %add.ptr.i, %if.then.58.i ], [ %add.ptr.i, %if.then.62.i ], [ %p.4.incdec.ptr225.i, %if.end.217.i ], [ %add.ptr233.i, %if.then.228.i ], !dbg !630
  %buf.0.ph.i = phi i8* [ %call35.i, %if.else.81.i ], [ %call35.i, %if.then.74.i ], [ %call35.i, %if.then.79.i ], [ %call35.i, %if.then.58.i ], [ %call35.i, %if.then.62.i ], [ %call152.i, %if.end.217.i ], [ %call152.i, %if.then.228.i ], !dbg !630
  store i8 0, i8* %p.6.ph.i, align 1, !dbg !826, !tbaa !436
  br label %if.then.239.i, !dbg !829

if.then.239.i:                                    ; preds = %if.then.236.i, %if.then.155.i, %sw.default.i, %if.then.38.i
  %buf.0398.i = phi i8* [ %buf.0.ph.i, %if.then.236.i ], [ null, %if.then.38.i ], [ null, %if.then.155.i ], [ null, %sw.default.i ], !dbg !630
  call void @_Py_dg_freedtoa(i8* %call5378.i) #1, !dbg !830
  br label %format_float_short.exit, !dbg !830

format_float_short.exit:                          ; preds = %if.end.237.thread.i, %if.then.239.i
  %buf.0398403.i = phi i8* [ null, %if.end.237.thread.i ], [ %buf.0398.i, %if.then.239.i ], !dbg !630
  call void @llvm.lifetime.end(i64 4, i8* %2) #1, !dbg !832
  call void @llvm.lifetime.end(i64 4, i8* %1) #1, !dbg !832
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !832
  br label %cleanup, !dbg !833

cleanup:                                          ; preds = %format_float_short.exit, %sw.default, %if.then.10
  %retval.0 = phi i8* [ null, %sw.default ], [ null, %if.then.10 ], [ %buf.0398403.i, %format_float_short.exit ]
  ret i8* %retval.0, !dbg !834
}

declare void @_PyErr_BadInternalCall(i8*, i32) #2

declare zeroext i16 @_Py_get_387controlword() #2

declare void @_Py_set_387controlword(i16 zeroext) #2

declare double @_Py_dg_strtod(i8*, i8**) #2

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #2

declare i8* @PyMem_Malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #4

declare void @_Py_dg_freedtoa(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!426, !427}
!llvm.ident = !{!428}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !16, globals: !420)
!1 = !DIFile(filename: "Python/pystrtod.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !7, !8, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !9, line: 177, baseType: !10)
!9 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !11, line: 102, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !13, line: 181, baseType: !14)
!13 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !30, !366, !378, !384, !391}
!17 = !DISubprogram(name: "_Py_parse_inf_or_nan", scope: !1, file: !1, line: 28, type: !18, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i8**)* @_Py_parse_inf_or_nan, variables: !24)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !23}
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !17, file: !1, line: 28, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !17, file: !1, line: 28, type: !23)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !17, file: !1, line: 30, type: !20)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !17, file: !1, line: 31, type: !21)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate", scope: !17, file: !1, line: 32, type: !15)
!30 = !DISubprogram(name: "PyOS_string_to_double", scope: !1, file: !1, line: 337, type: !31, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i8**, %struct._object*)* @PyOS_string_to_double, variables: !359)
!31 = !DISubroutineType(types: !32)
!32 = !{!20, !21, !23, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !35, line: 109, baseType: !36)
!35 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !35, line: 105, size: 128, align: 64, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !36, file: !35, line: 107, baseType: !8, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !36, file: !35, line: 108, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !35, line: 334, size: 3200, align: 64, elements: !42)
!42 = !{!43, !49, !50, !51, !52, !57, !118, !123, !128, !129, !134, !186, !217, !229, !235, !236, !237, !239, !241, !272, !273, !274, !283, !284, !289, !290, !292, !294, !304, !307, !325, !326, !327, !329, !331, !332, !334, !339, !344, !349, !350, !351, !352, !353, !354, !355, !356, !358}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !41, file: !35, line: 335, baseType: !44, size: 192, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !35, line: 114, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 111, size: 192, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !45, file: !35, line: 112, baseType: !34, size: 128, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !45, file: !35, line: 113, baseType: !8, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !41, file: !35, line: 336, baseType: !21, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !41, file: !35, line: 337, baseType: !8, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !41, file: !35, line: 337, baseType: !8, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !41, file: !35, line: 341, baseType: !53, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !35, line: 308, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !33}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !41, file: !35, line: 342, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !35, line: 314, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!15, !33, !62, !15}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 48, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 246, size: 1728, align: 64, elements: !66)
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !87, !88, !89, !90, !92, !94, !96, !100, !103, !105, !106, !107, !108, !109, !113, !114}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 247, baseType: !15, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 252, baseType: !4, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 253, baseType: !4, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 254, baseType: !4, size: 64, align: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 255, baseType: !4, size: 64, align: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 256, baseType: !4, size: 64, align: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 257, baseType: !4, size: 64, align: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 258, baseType: !4, size: 64, align: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 259, baseType: !4, size: 64, align: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 261, baseType: !4, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 262, baseType: !4, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 263, baseType: !4, size: 64, align: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 265, baseType: !80, size: 64, align: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 161, size: 192, align: 64, elements: !82)
!82 = !{!83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !81, file: !65, line: 162, baseType: !80, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !81, file: !65, line: 163, baseType: !85, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !81, file: !65, line: 167, baseType: !15, size: 32, align: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 267, baseType: !85, size: 64, align: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 269, baseType: !15, size: 32, align: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 273, baseType: !15, size: 32, align: 32, offset: 928)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 275, baseType: !91, size: 64, align: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !13, line: 140, baseType: !14)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 279, baseType: !93, size: 16, align: 16, offset: 1024)
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 280, baseType: !95, size: 8, align: 8, offset: 1040)
!95 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 281, baseType: !97, size: 8, align: 8, offset: 1048)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 285, baseType: !101, size: 64, align: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 155, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 294, baseType: !104, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !13, line: 141, baseType: !14)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !64, file: !65, line: 303, baseType: !6, size: 64, align: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !64, file: !65, line: 304, baseType: !6, size: 64, align: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !64, file: !65, line: 305, baseType: !6, size: 64, align: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !64, file: !65, line: 306, baseType: !6, size: 64, align: 64, offset: 1408)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 307, baseType: !110, size: 64, align: 64, offset: 1472)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 62, baseType: !112)
!111 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!112 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 309, baseType: !15, size: 32, align: 32, offset: 1536)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 311, baseType: !115, size: 160, align: 8, offset: 1568)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 20)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !41, file: !35, line: 343, baseType: !119, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !35, line: 316, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!33, !33, !4}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !41, file: !35, line: 344, baseType: !124, size: 64, align: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !35, line: 318, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!15, !33, !4, !33}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !41, file: !35, line: 345, baseType: !6, size: 64, align: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !41, file: !35, line: 346, baseType: !130, size: 64, align: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !35, line: 320, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!33, !33}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !41, file: !35, line: 350, baseType: !135, size: 64, align: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !35, line: 278, baseType: !137)
!137 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 236, size: 2176, align: 64, elements: !138)
!138 = !{!139, !144, !145, !146, !147, !148, !153, !155, !156, !157, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !137, file: !35, line: 241, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !35, line: 166, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!33, !33, !33}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !137, file: !35, line: 242, baseType: !140, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !137, file: !35, line: 243, baseType: !140, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !137, file: !35, line: 244, baseType: !140, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !137, file: !35, line: 245, baseType: !140, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !137, file: !35, line: 246, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !35, line: 167, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!33, !33, !33, !33}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !137, file: !35, line: 247, baseType: !154, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !35, line: 165, baseType: !131)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !137, file: !35, line: 248, baseType: !154, size: 64, align: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !137, file: !35, line: 249, baseType: !154, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !137, file: !35, line: 250, baseType: !158, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !35, line: 168, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!15, !33}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !137, file: !35, line: 251, baseType: !154, size: 64, align: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !137, file: !35, line: 252, baseType: !140, size: 64, align: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !137, file: !35, line: 253, baseType: !140, size: 64, align: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !137, file: !35, line: 254, baseType: !140, size: 64, align: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !137, file: !35, line: 255, baseType: !140, size: 64, align: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !137, file: !35, line: 256, baseType: !140, size: 64, align: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !137, file: !35, line: 257, baseType: !154, size: 64, align: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !137, file: !35, line: 258, baseType: !6, size: 64, align: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !137, file: !35, line: 259, baseType: !154, size: 64, align: 64, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !137, file: !35, line: 261, baseType: !140, size: 64, align: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !137, file: !35, line: 262, baseType: !140, size: 64, align: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !137, file: !35, line: 263, baseType: !140, size: 64, align: 64, offset: 1344)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !137, file: !35, line: 264, baseType: !140, size: 64, align: 64, offset: 1408)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !137, file: !35, line: 265, baseType: !149, size: 64, align: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !137, file: !35, line: 266, baseType: !140, size: 64, align: 64, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !137, file: !35, line: 267, baseType: !140, size: 64, align: 64, offset: 1600)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !137, file: !35, line: 268, baseType: !140, size: 64, align: 64, offset: 1664)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !137, file: !35, line: 269, baseType: !140, size: 64, align: 64, offset: 1728)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !137, file: !35, line: 270, baseType: !140, size: 64, align: 64, offset: 1792)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !137, file: !35, line: 272, baseType: !140, size: 64, align: 64, offset: 1856)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !137, file: !35, line: 273, baseType: !140, size: 64, align: 64, offset: 1920)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !137, file: !35, line: 274, baseType: !140, size: 64, align: 64, offset: 1984)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !137, file: !35, line: 275, baseType: !140, size: 64, align: 64, offset: 2048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !137, file: !35, line: 277, baseType: !154, size: 64, align: 64, offset: 2112)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !41, file: !35, line: 351, baseType: !187, size: 64, align: 64, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !35, line: 292, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 280, size: 640, align: 64, elements: !190)
!190 = !{!191, !196, !197, !202, !203, !204, !209, !210, !215, !216}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !189, file: !35, line: 281, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !35, line: 169, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!8, !33}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !189, file: !35, line: 282, baseType: !140, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !189, file: !35, line: 283, baseType: !198, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !35, line: 170, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!33, !33, !8}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !189, file: !35, line: 284, baseType: !198, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !189, file: !35, line: 285, baseType: !6, size: 64, align: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !189, file: !35, line: 286, baseType: !205, size: 64, align: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !35, line: 172, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!15, !33, !8, !33}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !189, file: !35, line: 287, baseType: !6, size: 64, align: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !189, file: !35, line: 288, baseType: !211, size: 64, align: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !35, line: 231, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!15, !33, !33}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !189, file: !35, line: 290, baseType: !140, size: 64, align: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !189, file: !35, line: 291, baseType: !198, size: 64, align: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !41, file: !35, line: 352, baseType: !218, size: 64, align: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !35, line: 298, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 294, size: 192, align: 64, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !220, file: !35, line: 295, baseType: !192, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !220, file: !35, line: 296, baseType: !140, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !220, file: !35, line: 297, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !35, line: 174, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!15, !33, !33, !33}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !41, file: !35, line: 356, baseType: !230, size: 64, align: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !35, line: 321, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !33}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !9, line: 186, baseType: !8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !41, file: !35, line: 357, baseType: !149, size: 64, align: 64, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !41, file: !35, line: 358, baseType: !130, size: 64, align: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !41, file: !35, line: 359, baseType: !238, size: 64, align: 64, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !35, line: 317, baseType: !141)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !41, file: !35, line: 360, baseType: !240, size: 64, align: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !35, line: 319, baseType: !226)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !41, file: !35, line: 363, baseType: !242, size: 64, align: 64, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !35, line: 304, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 301, size: 128, align: 64, elements: !245)
!245 = !{!246, !267}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !244, file: !35, line: 302, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !35, line: 193, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!15, !33, !251, !15}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !35, line: 191, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !35, line: 178, size: 640, align: 64, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !264, !265, !266}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !35, line: 179, baseType: !6, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !253, file: !35, line: 180, baseType: !33, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !253, file: !35, line: 181, baseType: !8, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !253, file: !35, line: 182, baseType: !8, size: 64, align: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !253, file: !35, line: 184, baseType: !15, size: 32, align: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !253, file: !35, line: 185, baseType: !15, size: 32, align: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !253, file: !35, line: 186, baseType: !4, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !253, file: !35, line: 187, baseType: !263, size: 64, align: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !253, file: !35, line: 188, baseType: !263, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !253, file: !35, line: 189, baseType: !263, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !253, file: !35, line: 190, baseType: !6, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !244, file: !35, line: 303, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !35, line: 194, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !33, !251}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !41, file: !35, line: 366, baseType: !112, size: 64, align: 64, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !41, file: !35, line: 368, baseType: !21, size: 64, align: 64, offset: 1408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !41, file: !35, line: 372, baseType: !275, size: 64, align: 64, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !35, line: 233, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!15, !33, !279, !6}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !35, line: 232, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!15, !33, !6}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !41, file: !35, line: 375, baseType: !158, size: 64, align: 64, offset: 1536)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !41, file: !35, line: 379, baseType: !285, size: 64, align: 64, offset: 1600)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !35, line: 322, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!33, !33, !33, !15}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !41, file: !35, line: 382, baseType: !8, size: 64, align: 64, offset: 1664)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !41, file: !35, line: 385, baseType: !291, size: 64, align: 64, offset: 1728)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !35, line: 323, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !41, file: !35, line: 386, baseType: !293, size: 64, align: 64, offset: 1792)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !35, line: 324, baseType: !131)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !41, file: !35, line: 389, baseType: !295, size: 64, align: 64, offset: 1856)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !297, line: 40, size: 256, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!298 = !{!299, !300, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !296, file: !297, line: 41, baseType: !21, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !296, file: !297, line: 42, baseType: !301, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !297, line: 18, baseType: !141)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !296, file: !297, line: 43, baseType: !15, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !296, file: !297, line: 45, baseType: !21, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !41, file: !35, line: 390, baseType: !305, size: 64, align: 64, offset: 1920)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !35, line: 390, flags: DIFlagFwdDecl)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !41, file: !35, line: 391, baseType: !308, size: 64, align: 64, offset: 1984)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !310, line: 11, size: 320, align: 64, elements: !311)
!310 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!311 = !{!312, !313, !318, !323, !324}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !310, line: 12, baseType: !4, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !309, file: !310, line: 13, baseType: !314, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !310, line: 8, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!33, !33, !6}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !309, file: !310, line: 14, baseType: !319, size: 64, align: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !310, line: 9, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!15, !33, !33, !6}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !309, file: !310, line: 15, baseType: !4, size: 64, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !309, file: !310, line: 16, baseType: !6, size: 64, align: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !41, file: !35, line: 392, baseType: !40, size: 64, align: 64, offset: 2048)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !41, file: !35, line: 393, baseType: !33, size: 64, align: 64, offset: 2112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !41, file: !35, line: 394, baseType: !328, size: 64, align: 64, offset: 2176)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !35, line: 325, baseType: !150)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !41, file: !35, line: 395, baseType: !330, size: 64, align: 64, offset: 2240)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !35, line: 326, baseType: !226)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !41, file: !35, line: 396, baseType: !8, size: 64, align: 64, offset: 2304)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !41, file: !35, line: 397, baseType: !333, size: 64, align: 64, offset: 2368)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !35, line: 327, baseType: !226)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !41, file: !35, line: 398, baseType: !335, size: 64, align: 64, offset: 2432)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !35, line: 329, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!33, !40, !8}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !41, file: !35, line: 399, baseType: !340, size: 64, align: 64, offset: 2496)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !35, line: 328, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!33, !40, !33, !33}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !41, file: !35, line: 400, baseType: !345, size: 64, align: 64, offset: 2560)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !35, line: 307, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !6}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !41, file: !35, line: 401, baseType: !158, size: 64, align: 64, offset: 2624)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !41, file: !35, line: 402, baseType: !33, size: 64, align: 64, offset: 2688)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !41, file: !35, line: 403, baseType: !33, size: 64, align: 64, offset: 2752)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !41, file: !35, line: 404, baseType: !33, size: 64, align: 64, offset: 2816)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !41, file: !35, line: 405, baseType: !33, size: 64, align: 64, offset: 2880)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !41, file: !35, line: 406, baseType: !33, size: 64, align: 64, offset: 2944)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !41, file: !35, line: 407, baseType: !53, size: 64, align: 64, offset: 3008)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !41, file: !35, line: 410, baseType: !357, size: 32, align: 32, offset: 3072)
!357 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !41, file: !35, line: 412, baseType: !53, size: 64, align: 64, offset: 3136)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !30, file: !1, line: 337, type: !21)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !30, file: !1, line: 338, type: !23)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "overflow_exception", arg: 3, scope: !30, file: !1, line: 339, type: !33)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !30, file: !1, line: 341, type: !20)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !30, file: !1, line: 341, type: !20)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail_pos", scope: !30, file: !1, line: 342, type: !4)
!366 = !DISubprogram(name: "PyOS_double_to_string", scope: !1, file: !1, line: 1173, type: !367, isLocal: false, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: true, function: i8* (double, i8, i32, i32, i32*)* @PyOS_double_to_string, variables: !370)
!367 = !DISubroutineType(types: !368)
!368 = !{!4, !20, !5, !15, !15, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!370 = !{!371, !372, !373, !374, !375, !376, !377}
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 1, scope: !366, file: !1, line: 1173, type: !20)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_code", arg: 2, scope: !366, file: !1, line: 1174, type: !5)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 3, scope: !366, file: !1, line: 1175, type: !15)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !366, file: !1, line: 1176, type: !15)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 5, scope: !366, file: !1, line: 1177, type: !369)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "float_strings", scope: !366, file: !1, line: 1179, type: !23)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !366, file: !1, line: 1180, type: !15)
!378 = !DISubprogram(name: "case_insensitive_match", scope: !1, file: !1, line: 10, type: !379, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!15, !21, !21}
!381 = !{!382, !383}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !378, file: !1, line: 10, type: !21)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !378, file: !1, line: 10, type: !21)
!384 = !DISubprogram(name: "_PyOS_ascii_strtod", scope: !1, file: !1, line: 131, type: !18, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, variables: !385)
!385 = !{!386, !387, !388, !389, !390}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nptr", arg: 1, scope: !384, file: !1, line: 131, type: !21)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "endptr", arg: 2, scope: !384, file: !1, line: 131, type: !23)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !384, file: !1, line: 133, type: !20)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !384, file: !1, line: 134, type: !93)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !384, file: !1, line: 134, type: !93)
!391 = !DISubprogram(name: "format_float_short", scope: !1, file: !1, line: 925, type: !392, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!4, !20, !5, !15, !15, !15, !15, !15, !23, !369}
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 1, scope: !391, file: !1, line: 925, type: !20)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_code", arg: 2, scope: !391, file: !1, line: 925, type: !5)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !391, file: !1, line: 926, type: !15)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 4, scope: !391, file: !1, line: 926, type: !15)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "always_add_sign", arg: 5, scope: !391, file: !1, line: 927, type: !15)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "add_dot_0_if_integer", arg: 6, scope: !391, file: !1, line: 927, type: !15)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "use_alt_formatting", arg: 7, scope: !391, file: !1, line: 928, type: !15)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "float_strings", arg: 8, scope: !391, file: !1, line: 928, type: !23)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 9, scope: !391, file: !1, line: 928, type: !369)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !391, file: !1, line: 930, type: !4)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !391, file: !1, line: 931, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !391, file: !1, line: 932, type: !8)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits", scope: !391, file: !1, line: 933, type: !4)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits_end", scope: !391, file: !1, line: 933, type: !4)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt_as_int", scope: !391, file: !1, line: 934, type: !15)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !391, file: !1, line: 934, type: !15)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_len", scope: !391, file: !1, line: 934, type: !15)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp", scope: !391, file: !1, line: 934, type: !15)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_exp", scope: !391, file: !1, line: 934, type: !15)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt", scope: !391, file: !1, line: 935, type: !8)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digits_len", scope: !391, file: !1, line: 935, type: !8)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vdigits_start", scope: !391, file: !1, line: 935, type: !8)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vdigits_end", scope: !391, file: !1, line: 935, type: !8)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !391, file: !1, line: 936, type: !93)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !391, file: !1, line: 936, type: !93)
!420 = !{!421, !425}
!421 = !DIGlobalVariable(name: "lc_float_strings", scope: !0, file: !1, line: 884, type: !422, isLocal: true, isDefinition: true, variable: [3 x i8*]* @lc_float_strings)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 64, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 3)
!425 = !DIGlobalVariable(name: "uc_float_strings", scope: !0, file: !1, line: 889, type: !422, isLocal: true, isDefinition: true, variable: [3 x i8*]* @uc_float_strings)
!426 = !{i32 2, !"Dwarf Version", i32 4}
!427 = !{i32 2, !"Debug Info Version", i32 3}
!428 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!429 = !DIExpression()
!430 = !DILocation(line: 28, column: 34, scope: !17)
!431 = !DILocation(line: 28, column: 44, scope: !17)
!432 = !DILocation(line: 32, column: 9, scope: !17)
!433 = !DILocation(line: 31, column: 17, scope: !17)
!434 = !DILocation(line: 35, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !17, file: !1, line: 35, column: 9)
!436 = !{!437, !437, i64 0}
!437 = !{!"omnipotent char", !438, i64 0}
!438 = !{!"Simple C/C++ TBAA"}
!439 = !DILocation(line: 35, column: 9, scope: !17)
!440 = !DILocation(line: 37, column: 10, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 35, column: 20)
!442 = !DILocation(line: 38, column: 5, scope: !441)
!443 = !DILocation(line: 40, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 39, column: 25)
!445 = distinct !DILexicalBlock(scope: !435, file: !1, line: 39, column: 14)
!446 = !DILocation(line: 41, column: 5, scope: !444)
!447 = !DILocation(line: 10, column: 36, scope: !378, inlinedAt: !448)
!448 = distinct !DILocation(line: 42, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 9)
!450 = !DILocation(line: 10, column: 51, scope: !378, inlinedAt: !448)
!451 = !DILocation(line: 12, column: 17, scope: !452, inlinedAt: !453)
!452 = !DILexicalBlockFile(scope: !378, file: !1, discriminator: 2)
!453 = distinct !DILocation(line: 48, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 48, column: 14)
!455 = !DILocation(line: 12, column: 17, scope: !452, inlinedAt: !448)
!456 = !DILocation(line: 12, column: 5, scope: !457, inlinedAt: !448)
!457 = !DILexicalBlockFile(scope: !378, file: !1, discriminator: 3)
!458 = !DILocation(line: 13, column: 10, scope: !459, inlinedAt: !448)
!459 = distinct !DILexicalBlock(scope: !378, file: !1, line: 12, column: 39)
!460 = !DILocation(line: 12, column: 32, scope: !378, inlinedAt: !448)
!461 = !DILocation(line: 43, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !449, file: !1, line: 42, column: 43)
!463 = !DILocation(line: 10, column: 36, scope: !378, inlinedAt: !464)
!464 = distinct !DILocation(line: 44, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 44, column: 13)
!466 = !DILocation(line: 10, column: 51, scope: !378, inlinedAt: !464)
!467 = !DILocation(line: 12, column: 17, scope: !452, inlinedAt: !464)
!468 = !DILocation(line: 12, column: 32, scope: !378, inlinedAt: !464)
!469 = !DILocation(line: 12, column: 5, scope: !457, inlinedAt: !464)
!470 = !DILocation(line: 13, column: 10, scope: !459, inlinedAt: !464)
!471 = !DILocation(line: 45, column: 15, scope: !465)
!472 = !DILocation(line: 44, column: 13, scope: !462)
!473 = !DILocation(line: 46, column: 18, scope: !462)
!474 = !DILocation(line: 30, column: 12, scope: !17)
!475 = !DILocation(line: 47, column: 5, scope: !462)
!476 = !DILocation(line: 13, column: 10, scope: !459, inlinedAt: !453)
!477 = !DILocation(line: 10, column: 36, scope: !378, inlinedAt: !453)
!478 = !DILocation(line: 10, column: 51, scope: !378, inlinedAt: !453)
!479 = !DILocation(line: 12, column: 32, scope: !378, inlinedAt: !453)
!480 = !DILocation(line: 12, column: 5, scope: !457, inlinedAt: !453)
!481 = !DILocation(line: 49, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !454, file: !1, line: 48, column: 48)
!483 = !DILocation(line: 50, column: 18, scope: !482)
!484 = !DILocation(line: 51, column: 5, scope: !482)
!485 = !DILocation(line: 56, column: 13, scope: !17)
!486 = !{!487, !487, i64 0}
!487 = !{!"any pointer", !437, i64 0}
!488 = !DILocation(line: 57, column: 5, scope: !17)
!489 = !DILocation(line: 337, column: 35, scope: !30)
!490 = !DILocation(line: 338, column: 30, scope: !30)
!491 = !DILocation(line: 339, column: 33, scope: !30)
!492 = !DILocation(line: 341, column: 15, scope: !30)
!493 = !DILocation(line: 342, column: 5, scope: !30)
!494 = !DILocation(line: 344, column: 5, scope: !30)
!495 = !DILocation(line: 342, column: 11, scope: !30)
!496 = !DILocation(line: 131, column: 32, scope: !384, inlinedAt: !497)
!497 = distinct !DILocation(line: 346, column: 9, scope: !30)
!498 = !DILocation(line: 131, column: 45, scope: !384, inlinedAt: !497)
!499 = !DILocation(line: 139, column: 11, scope: !384, inlinedAt: !497)
!500 = !{!501, !501, i64 0}
!501 = !{!"int", !437, i64 0}
!502 = !DILocation(line: 141, column: 5, scope: !503, inlinedAt: !497)
!503 = !DILexicalBlockFile(scope: !504, file: !1, discriminator: 1)
!504 = distinct !DILexicalBlock(scope: !384, file: !1, line: 141, column: 5)
!505 = !DILocation(line: 134, column: 5, scope: !384, inlinedAt: !497)
!506 = !DILocation(line: 141, column: 5, scope: !507, inlinedAt: !497)
!507 = distinct !DILexicalBlock(scope: !504, file: !1, line: 141, column: 5)
!508 = !DILocation(line: 141, column: 5, scope: !504, inlinedAt: !497)
!509 = !DILocation(line: 142, column: 14, scope: !384, inlinedAt: !497)
!510 = !DILocation(line: 143, column: 5, scope: !384, inlinedAt: !497)
!511 = !DILocation(line: 141, column: 5, scope: !512, inlinedAt: !497)
!512 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!513 = !DILocation(line: 143, column: 5, scope: !514, inlinedAt: !497)
!514 = !DILexicalBlockFile(scope: !515, file: !1, discriminator: 1)
!515 = distinct !DILexicalBlock(scope: !384, file: !1, line: 143, column: 5)
!516 = !DILocation(line: 346, column: 9, scope: !30)
!517 = !DILocation(line: 145, column: 9, scope: !518, inlinedAt: !497)
!518 = distinct !DILexicalBlock(scope: !384, file: !1, line: 145, column: 9)
!519 = !DILocation(line: 145, column: 17, scope: !518, inlinedAt: !497)
!520 = !DILocation(line: 145, column: 9, scope: !384, inlinedAt: !497)
!521 = !DILocation(line: 147, column: 18, scope: !518, inlinedAt: !497)
!522 = !DILocation(line: 133, column: 12, scope: !384, inlinedAt: !497)
!523 = !DILocation(line: 147, column: 9, scope: !518, inlinedAt: !497)
!524 = !DILocation(line: 341, column: 12, scope: !30)
!525 = !DILocation(line: 361, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 361, column: 14)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 357, column: 14)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 353, column: 14)
!529 = distinct !DILexicalBlock(scope: !30, file: !1, line: 349, column: 9)
!530 = !DILocation(line: 349, column: 15, scope: !529)
!531 = !DILocation(line: 349, column: 9, scope: !30)
!532 = !DILocation(line: 350, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !1, line: 349, column: 26)
!534 = !DILocation(line: 351, column: 18, scope: !533)
!535 = !DILocation(line: 352, column: 5, scope: !533)
!536 = !DILocation(line: 353, column: 15, scope: !528)
!537 = !DILocation(line: 353, column: 26, scope: !538)
!538 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 1)
!539 = !DILocation(line: 353, column: 22, scope: !528)
!540 = !DILocation(line: 353, column: 35, scope: !528)
!541 = !DILocation(line: 353, column: 40, scope: !528)
!542 = !DILocation(line: 353, column: 43, scope: !528)
!543 = !DILocation(line: 353, column: 53, scope: !528)
!544 = !DILocation(line: 353, column: 14, scope: !529)
!545 = !DILocation(line: 354, column: 22, scope: !528)
!546 = !DILocation(line: 354, column: 9, scope: !528)
!547 = !DILocation(line: 368, column: 9, scope: !30)
!548 = !DILocation(line: 357, column: 23, scope: !527)
!549 = !DILocation(line: 357, column: 14, scope: !528)
!550 = !DILocation(line: 358, column: 22, scope: !527)
!551 = !DILocation(line: 358, column: 9, scope: !527)
!552 = !DILocation(line: 361, column: 20, scope: !526)
!553 = !DILocation(line: 361, column: 30, scope: !526)
!554 = !DILocation(line: 361, column: 33, scope: !526)
!555 = !DILocation(line: 361, column: 41, scope: !526)
!556 = !DILocation(line: 361, column: 51, scope: !557)
!557 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 2)
!558 = !DILocation(line: 361, column: 48, scope: !526)
!559 = !DILocation(line: 362, column: 9, scope: !526)
!560 = !DILocation(line: 368, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !30, file: !1, line: 368, column: 9)
!562 = !DILocation(line: 369, column: 19, scope: !561)
!563 = !DILocation(line: 369, column: 17, scope: !561)
!564 = !DILocation(line: 369, column: 9, scope: !561)
!565 = !DILocation(line: 371, column: 1, scope: !30)
!566 = !DILocation(line: 370, column: 5, scope: !30)
!567 = !DILocation(line: 1173, column: 49, scope: !366)
!568 = !DILocation(line: 1174, column: 47, scope: !366)
!569 = !DILocation(line: 1175, column: 46, scope: !366)
!570 = !DILocation(line: 1176, column: 46, scope: !366)
!571 = !DILocation(line: 1177, column: 47, scope: !366)
!572 = !DILocation(line: 1179, column: 12, scope: !366)
!573 = !DILocation(line: 1184, column: 13, scope: !366)
!574 = !DILocation(line: 1184, column: 5, scope: !366)
!575 = !DILocation(line: 1188, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !366, file: !1, line: 1184, column: 26)
!577 = !DILocation(line: 1180, column: 9, scope: !366)
!578 = !DILocation(line: 1192, column: 18, scope: !576)
!579 = !DILocation(line: 1193, column: 9, scope: !576)
!580 = !DILocation(line: 1198, column: 9, scope: !576)
!581 = !DILocation(line: 1207, column: 9, scope: !576)
!582 = !DILocation(line: 1212, column: 23, scope: !583)
!583 = distinct !DILexicalBlock(scope: !576, file: !1, line: 1212, column: 13)
!584 = !DILocation(line: 1212, column: 13, scope: !576)
!585 = !DILocation(line: 1220, column: 23, scope: !586)
!586 = distinct !DILexicalBlock(scope: !576, file: !1, line: 1220, column: 13)
!587 = !DILocation(line: 1220, column: 13, scope: !576)
!588 = !DILocation(line: 1221, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !1, line: 1220, column: 29)
!590 = !DILocation(line: 1222, column: 13, scope: !589)
!591 = !DILocation(line: 1227, column: 9, scope: !576)
!592 = !DILocation(line: 1228, column: 9, scope: !576)
!593 = !DILocation(line: 1232, column: 37, scope: !366)
!594 = !DILocation(line: 1233, column: 37, scope: !366)
!595 = !DILocation(line: 1234, column: 37, scope: !366)
!596 = !DILocation(line: 925, column: 27, scope: !391, inlinedAt: !597)
!597 = distinct !DILocation(line: 1231, column: 12, scope: !366)
!598 = !DILocation(line: 925, column: 35, scope: !391, inlinedAt: !597)
!599 = !DILocation(line: 926, column: 24, scope: !391, inlinedAt: !597)
!600 = !DILocation(line: 926, column: 34, scope: !391, inlinedAt: !597)
!601 = !DILocation(line: 927, column: 24, scope: !391, inlinedAt: !597)
!602 = !DILocation(line: 927, column: 45, scope: !391, inlinedAt: !597)
!603 = !DILocation(line: 928, column: 24, scope: !391, inlinedAt: !597)
!604 = !DILocation(line: 928, column: 51, scope: !391, inlinedAt: !597)
!605 = !DILocation(line: 928, column: 71, scope: !391, inlinedAt: !597)
!606 = !DILocation(line: 930, column: 11, scope: !391, inlinedAt: !597)
!607 = !DILocation(line: 931, column: 11, scope: !391, inlinedAt: !597)
!608 = !DILocation(line: 932, column: 16, scope: !391, inlinedAt: !597)
!609 = !DILocation(line: 933, column: 5, scope: !391, inlinedAt: !597)
!610 = !DILocation(line: 934, column: 5, scope: !391, inlinedAt: !597)
!611 = !DILocation(line: 934, column: 38, scope: !391, inlinedAt: !597)
!612 = !DILocation(line: 934, column: 47, scope: !391, inlinedAt: !597)
!613 = !DILocation(line: 940, column: 5, scope: !614, inlinedAt: !597)
!614 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!615 = distinct !DILexicalBlock(scope: !391, file: !1, line: 940, column: 5)
!616 = !DILocation(line: 936, column: 5, scope: !391, inlinedAt: !597)
!617 = !DILocation(line: 940, column: 5, scope: !618, inlinedAt: !597)
!618 = distinct !DILexicalBlock(scope: !615, file: !1, line: 940, column: 5)
!619 = !DILocation(line: 940, column: 5, scope: !615, inlinedAt: !597)
!620 = !DILocation(line: 933, column: 20, scope: !391, inlinedAt: !597)
!621 = !DILocation(line: 934, column: 9, scope: !391, inlinedAt: !597)
!622 = !DILocation(line: 934, column: 23, scope: !391, inlinedAt: !597)
!623 = !DILocation(line: 941, column: 14, scope: !391, inlinedAt: !597)
!624 = !DILocation(line: 943, column: 5, scope: !391, inlinedAt: !597)
!625 = !DILocation(line: 940, column: 5, scope: !626, inlinedAt: !597)
!626 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!627 = !DILocation(line: 943, column: 5, scope: !628, inlinedAt: !597)
!628 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!629 = distinct !DILexicalBlock(scope: !391, file: !1, line: 943, column: 5)
!630 = !DILocation(line: 1231, column: 12, scope: !366)
!631 = !DILocation(line: 945, column: 25, scope: !391, inlinedAt: !597)
!632 = !DILocation(line: 945, column: 13, scope: !391, inlinedAt: !597)
!633 = !DILocation(line: 935, column: 16, scope: !391, inlinedAt: !597)
!634 = !DILocation(line: 946, column: 16, scope: !635, inlinedAt: !597)
!635 = distinct !DILexicalBlock(scope: !391, file: !1, line: 946, column: 9)
!636 = !DILocation(line: 946, column: 9, scope: !391, inlinedAt: !597)
!637 = !DILocation(line: 948, column: 9, scope: !638, inlinedAt: !597)
!638 = distinct !DILexicalBlock(scope: !635, file: !1, line: 946, column: 25)
!639 = !DILocation(line: 1166, column: 9, scope: !391, inlinedAt: !597)
!640 = !DILocation(line: 952, column: 18, scope: !391, inlinedAt: !597)
!641 = !DILocation(line: 952, column: 29, scope: !391, inlinedAt: !597)
!642 = !DILocation(line: 935, column: 23, scope: !391, inlinedAt: !597)
!643 = !DILocation(line: 954, column: 9, scope: !644, inlinedAt: !597)
!644 = distinct !DILexicalBlock(scope: !391, file: !1, line: 954, column: 9)
!645 = !DILocation(line: 954, column: 20, scope: !644, inlinedAt: !597)
!646 = !DILocation(line: 954, column: 24, scope: !647, inlinedAt: !597)
!647 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 1)
!648 = !DILocation(line: 954, column: 9, scope: !391, inlinedAt: !597)
!649 = !DILocation(line: 960, column: 30, scope: !650, inlinedAt: !597)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 960, column: 13)
!651 = distinct !DILexicalBlock(scope: !644, file: !1, line: 954, column: 47)
!652 = !DILocation(line: 961, column: 18, scope: !650, inlinedAt: !597)
!653 = !DILocation(line: 961, column: 13, scope: !650, inlinedAt: !597)
!654 = !DILocation(line: 965, column: 23, scope: !651, inlinedAt: !597)
!655 = !DILocation(line: 966, column: 17, scope: !656, inlinedAt: !597)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 966, column: 13)
!657 = !DILocation(line: 966, column: 13, scope: !651, inlinedAt: !597)
!658 = !DILocation(line: 967, column: 13, scope: !659, inlinedAt: !597)
!659 = distinct !DILexicalBlock(scope: !656, file: !1, line: 966, column: 26)
!660 = !DILocation(line: 968, column: 13, scope: !659, inlinedAt: !597)
!661 = !DILocation(line: 972, column: 13, scope: !662, inlinedAt: !597)
!662 = distinct !DILexicalBlock(scope: !651, file: !1, line: 972, column: 13)
!663 = !DILocation(line: 972, column: 18, scope: !662, inlinedAt: !597)
!664 = !DILocation(line: 972, column: 13, scope: !651, inlinedAt: !597)
!665 = !DILocation(line: 973, column: 15, scope: !666, inlinedAt: !597)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 972, column: 24)
!667 = !DILocation(line: 973, column: 18, scope: !666, inlinedAt: !597)
!668 = !DILocation(line: 974, column: 9, scope: !666, inlinedAt: !597)
!669 = !DILocation(line: 975, column: 18, scope: !670, inlinedAt: !597)
!670 = distinct !DILexicalBlock(scope: !662, file: !1, line: 975, column: 18)
!671 = !DILocation(line: 975, column: 18, scope: !662, inlinedAt: !597)
!672 = !DILocation(line: 976, column: 15, scope: !673, inlinedAt: !597)
!673 = distinct !DILexicalBlock(scope: !670, file: !1, line: 975, column: 35)
!674 = !DILocation(line: 976, column: 18, scope: !673, inlinedAt: !597)
!675 = !DILocation(line: 977, column: 9, scope: !673, inlinedAt: !597)
!676 = !DILocation(line: 978, column: 13, scope: !677, inlinedAt: !597)
!677 = distinct !DILexicalBlock(scope: !651, file: !1, line: 978, column: 13)
!678 = !DILocation(line: 978, column: 30, scope: !677, inlinedAt: !597)
!679 = !DILocation(line: 979, column: 13, scope: !680, inlinedAt: !597)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 978, column: 51)
!681 = !DILocation(line: 980, column: 15, scope: !680, inlinedAt: !597)
!682 = !DILocation(line: 982, column: 17, scope: !683, inlinedAt: !597)
!683 = distinct !DILexicalBlock(scope: !680, file: !1, line: 982, column: 17)
!684 = !DILocation(line: 982, column: 17, scope: !680, inlinedAt: !597)
!685 = !DILocation(line: 983, column: 23, scope: !683, inlinedAt: !597)
!686 = !DILocation(line: 983, column: 17, scope: !683, inlinedAt: !597)
!687 = !DILocation(line: 986, column: 13, scope: !688, inlinedAt: !597)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 985, column: 56)
!689 = distinct !DILexicalBlock(scope: !677, file: !1, line: 985, column: 18)
!690 = !DILocation(line: 987, column: 15, scope: !688, inlinedAt: !597)
!691 = !DILocation(line: 989, column: 17, scope: !692, inlinedAt: !597)
!692 = distinct !DILexicalBlock(scope: !688, file: !1, line: 989, column: 17)
!693 = !DILocation(line: 989, column: 17, scope: !688, inlinedAt: !597)
!694 = !DILocation(line: 990, column: 23, scope: !692, inlinedAt: !597)
!695 = !DILocation(line: 990, column: 17, scope: !692, inlinedAt: !597)
!696 = !DILocation(line: 995, column: 13, scope: !697, inlinedAt: !597)
!697 = distinct !DILexicalBlock(scope: !689, file: !1, line: 992, column: 14)
!698 = !DILocation(line: 1003, column: 9, scope: !699, inlinedAt: !597)
!699 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1003, column: 9)
!700 = !DILocation(line: 1003, column: 9, scope: !391, inlinedAt: !597)
!701 = !DILocation(line: 1004, column: 15, scope: !699, inlinedAt: !597)
!702 = !DILocation(line: 1004, column: 9, scope: !699, inlinedAt: !597)
!703 = !DILocation(line: 935, column: 50, scope: !391, inlinedAt: !597)
!704 = !DILocation(line: 1030, column: 13, scope: !391, inlinedAt: !597)
!705 = !DILocation(line: 1030, column: 5, scope: !391, inlinedAt: !597)
!706 = !DILocation(line: 1033, column: 23, scope: !707, inlinedAt: !597)
!707 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1030, column: 26)
!708 = !DILocation(line: 1034, column: 9, scope: !707, inlinedAt: !597)
!709 = !DILocation(line: 1036, column: 31, scope: !707, inlinedAt: !597)
!710 = !DILocation(line: 1036, column: 29, scope: !707, inlinedAt: !597)
!711 = !DILocation(line: 1037, column: 9, scope: !707, inlinedAt: !597)
!712 = !DILocation(line: 1039, column: 19, scope: !713, inlinedAt: !597)
!713 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1039, column: 13)
!714 = !DILocation(line: 1039, column: 25, scope: !713, inlinedAt: !597)
!715 = !DILocation(line: 1040, column: 14, scope: !713, inlinedAt: !597)
!716 = !DILocation(line: 1039, column: 34, scope: !713, inlinedAt: !597)
!717 = !DILocation(line: 1039, column: 13, scope: !707, inlinedAt: !597)
!718 = !DILocation(line: 1041, column: 13, scope: !713, inlinedAt: !597)
!719 = !DILocation(line: 1042, column: 13, scope: !720, inlinedAt: !597)
!720 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1042, column: 13)
!721 = !DILocation(line: 1043, column: 27, scope: !720, inlinedAt: !597)
!722 = !DILocation(line: 1042, column: 13, scope: !707, inlinedAt: !597)
!723 = !DILocation(line: 1051, column: 25, scope: !724, inlinedAt: !597)
!724 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1051, column: 13)
!725 = !DILocation(line: 1055, column: 9, scope: !707, inlinedAt: !597)
!726 = !DILocation(line: 1056, column: 9, scope: !707, inlinedAt: !597)
!727 = !DILocation(line: 1061, column: 9, scope: !728, inlinedAt: !597)
!728 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1061, column: 9)
!729 = !DILocation(line: 1062, column: 26, scope: !730, inlinedAt: !597)
!730 = distinct !DILexicalBlock(scope: !728, file: !1, line: 1061, column: 18)
!731 = !DILocation(line: 1061, column: 9, scope: !391, inlinedAt: !597)
!732 = !DILocation(line: 1067, column: 27, scope: !391, inlinedAt: !597)
!733 = !DILocation(line: 1067, column: 39, scope: !391, inlinedAt: !597)
!734 = !DILocation(line: 1067, column: 21, scope: !391, inlinedAt: !597)
!735 = !DILocation(line: 1119, column: 25, scope: !736, inlinedAt: !597)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 1118, column: 10)
!737 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1111, column: 9)
!738 = !DILocation(line: 935, column: 35, scope: !391, inlinedAt: !597)
!739 = !DILocation(line: 1068, column: 10, scope: !740, inlinedAt: !597)
!740 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1068, column: 9)
!741 = !DILocation(line: 1068, column: 21, scope: !742, inlinedAt: !597)
!742 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 1)
!743 = !DILocation(line: 1068, column: 18, scope: !740, inlinedAt: !597)
!744 = !DILocation(line: 1069, column: 35, scope: !740, inlinedAt: !597)
!745 = !DILocation(line: 1069, column: 23, scope: !740, inlinedAt: !597)
!746 = !DILocation(line: 1087, column: 22, scope: !391, inlinedAt: !597)
!747 = !DILocation(line: 1084, column: 11, scope: !391, inlinedAt: !597)
!748 = !DILocation(line: 1087, column: 39, scope: !391, inlinedAt: !597)
!749 = !DILocation(line: 1094, column: 19, scope: !391, inlinedAt: !597)
!750 = !DILocation(line: 1095, column: 13, scope: !751, inlinedAt: !597)
!751 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1095, column: 9)
!752 = !DILocation(line: 1095, column: 9, scope: !391, inlinedAt: !597)
!753 = !DILocation(line: 1096, column: 9, scope: !754, inlinedAt: !597)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 1095, column: 22)
!755 = !DILocation(line: 1097, column: 9, scope: !754, inlinedAt: !597)
!756 = !DILocation(line: 1103, column: 9, scope: !757, inlinedAt: !597)
!757 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1103, column: 9)
!758 = !DILocation(line: 1103, column: 14, scope: !757, inlinedAt: !597)
!759 = !DILocation(line: 1103, column: 9, scope: !391, inlinedAt: !597)
!760 = !DILocation(line: 1104, column: 11, scope: !757, inlinedAt: !597)
!761 = !DILocation(line: 1104, column: 14, scope: !757, inlinedAt: !597)
!762 = !DILocation(line: 1104, column: 9, scope: !757, inlinedAt: !597)
!763 = !DILocation(line: 1105, column: 14, scope: !764, inlinedAt: !597)
!764 = distinct !DILexicalBlock(scope: !757, file: !1, line: 1105, column: 14)
!765 = !DILocation(line: 1105, column: 14, scope: !757, inlinedAt: !597)
!766 = !DILocation(line: 1106, column: 11, scope: !764, inlinedAt: !597)
!767 = !DILocation(line: 1106, column: 14, scope: !764, inlinedAt: !597)
!768 = !DILocation(line: 1106, column: 9, scope: !764, inlinedAt: !597)
!769 = !DILocation(line: 1111, column: 9, scope: !391, inlinedAt: !597)
!770 = !DILocation(line: 1112, column: 29, scope: !771, inlinedAt: !597)
!771 = distinct !DILexicalBlock(scope: !737, file: !1, line: 1111, column: 21)
!772 = !DILocation(line: 1112, column: 9, scope: !771, inlinedAt: !597)
!773 = !DILocation(line: 1113, column: 11, scope: !771, inlinedAt: !597)
!774 = !DILocation(line: 1114, column: 11, scope: !771, inlinedAt: !597)
!775 = !DILocation(line: 1114, column: 14, scope: !771, inlinedAt: !597)
!776 = !DILocation(line: 1115, column: 25, scope: !771, inlinedAt: !597)
!777 = !DILocation(line: 1115, column: 9, scope: !771, inlinedAt: !597)
!778 = !DILocation(line: 1116, column: 11, scope: !771, inlinedAt: !597)
!779 = !DILocation(line: 1124, column: 28, scope: !780, inlinedAt: !597)
!780 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1124, column: 9)
!781 = !DILocation(line: 1132, column: 9, scope: !782, inlinedAt: !597)
!782 = distinct !DILexicalBlock(scope: !780, file: !1, line: 1131, column: 10)
!783 = !DILocation(line: 1133, column: 11, scope: !782, inlinedAt: !597)
!784 = !DILocation(line: 1137, column: 9, scope: !391, inlinedAt: !597)
!785 = !DILocation(line: 1119, column: 9, scope: !736, inlinedAt: !597)
!786 = !DILocation(line: 1120, column: 11, scope: !736, inlinedAt: !597)
!787 = !DILocation(line: 1124, column: 19, scope: !780, inlinedAt: !597)
!788 = !DILocation(line: 1125, column: 9, scope: !789, inlinedAt: !597)
!789 = distinct !DILexicalBlock(scope: !780, file: !1, line: 1124, column: 43)
!790 = !DILocation(line: 1126, column: 11, scope: !789, inlinedAt: !597)
!791 = !DILocation(line: 1127, column: 11, scope: !789, inlinedAt: !597)
!792 = !DILocation(line: 1127, column: 14, scope: !789, inlinedAt: !597)
!793 = !DILocation(line: 1128, column: 9, scope: !789, inlinedAt: !597)
!794 = !DILocation(line: 1129, column: 11, scope: !789, inlinedAt: !597)
!795 = !DILocation(line: 1138, column: 29, scope: !796, inlinedAt: !597)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 1137, column: 29)
!797 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1137, column: 9)
!798 = !DILocation(line: 1138, column: 9, scope: !796, inlinedAt: !597)
!799 = !DILocation(line: 1139, column: 11, scope: !796, inlinedAt: !597)
!800 = !DILocation(line: 1140, column: 11, scope: !796, inlinedAt: !597)
!801 = !DILocation(line: 1140, column: 14, scope: !796, inlinedAt: !597)
!802 = !DILocation(line: 1141, column: 35, scope: !796, inlinedAt: !597)
!803 = !DILocation(line: 1141, column: 9, scope: !796, inlinedAt: !597)
!804 = !DILocation(line: 1142, column: 11, scope: !796, inlinedAt: !597)
!805 = !DILocation(line: 1143, column: 5, scope: !796, inlinedAt: !597)
!806 = !DILocation(line: 1145, column: 35, scope: !807, inlinedAt: !597)
!807 = distinct !DILexicalBlock(scope: !797, file: !1, line: 1144, column: 10)
!808 = !DILocation(line: 1145, column: 9, scope: !807, inlinedAt: !597)
!809 = !DILocation(line: 1146, column: 11, scope: !807, inlinedAt: !597)
!810 = !DILocation(line: 1150, column: 9, scope: !811, inlinedAt: !597)
!811 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1150, column: 9)
!812 = !DILocation(line: 1150, column: 15, scope: !811, inlinedAt: !597)
!813 = !DILocation(line: 1150, column: 26, scope: !814, inlinedAt: !597)
!814 = !DILexicalBlockFile(scope: !811, file: !1, discriminator: 1)
!815 = !DILocation(line: 1150, column: 22, scope: !811, inlinedAt: !597)
!816 = !DILocation(line: 1154, column: 9, scope: !391, inlinedAt: !597)
!817 = !DILocation(line: 1155, column: 16, scope: !818, inlinedAt: !597)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 1154, column: 18)
!819 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1154, column: 9)
!820 = !DILocation(line: 1155, column: 11, scope: !818, inlinedAt: !597)
!821 = !DILocation(line: 1155, column: 14, scope: !818, inlinedAt: !597)
!822 = !DILocation(line: 1156, column: 19, scope: !818, inlinedAt: !597)
!823 = !DILocation(line: 934, column: 29, scope: !391, inlinedAt: !597)
!824 = !DILocation(line: 1157, column: 11, scope: !818, inlinedAt: !597)
!825 = !DILocation(line: 1158, column: 5, scope: !818, inlinedAt: !597)
!826 = !DILocation(line: 1161, column: 12, scope: !827, inlinedAt: !597)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 1160, column: 14)
!828 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1160, column: 9)
!829 = !DILocation(line: 1165, column: 5, scope: !827, inlinedAt: !597)
!830 = !DILocation(line: 1167, column: 9, scope: !831, inlinedAt: !597)
!831 = distinct !DILexicalBlock(scope: !391, file: !1, line: 1166, column: 9)
!832 = !DILocation(line: 1170, column: 1, scope: !391, inlinedAt: !597)
!833 = !DILocation(line: 1231, column: 5, scope: !366)
!834 = !DILocation(line: 1236, column: 1, scope: !366)
