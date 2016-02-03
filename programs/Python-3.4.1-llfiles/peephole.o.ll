; ModuleID = 'peephole.o.bc'
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

@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [45 x i8] c"unexpected binary operation %d on a constant\00", align 1
@PyExc_KeyboardInterrupt = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"unexpected unary operation %d on a constant\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCode_Optimize(%struct._object* %code, %struct._object* %consts, %struct._object* nocapture readnone %names, %struct._object* %lineno_obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %code, i64 0, metadata !378, metadata !501), !dbg !502
  tail call void @llvm.dbg.value(metadata %struct._object* %consts, i64 0, metadata !379, metadata !501), !dbg !503
  tail call void @llvm.dbg.value(metadata %struct._object* %names, i64 0, metadata !380, metadata !501), !dbg !504
  tail call void @llvm.dbg.value(metadata %struct._object* %lineno_obj, i64 0, metadata !381, metadata !501), !dbg !505
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !391, metadata !501), !dbg !506
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !393, metadata !501), !dbg !507
  tail call void @llvm.dbg.value(metadata %struct._object** null, i64 0, metadata !398, metadata !501), !dbg !508
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !399, metadata !501), !dbg !509
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !400, metadata !501), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !401, metadata !501), !dbg !511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !402, metadata !501), !dbg !512
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !403, metadata !501), !dbg !513
  %call = tail call %struct._object* @PyErr_Occurred() #3, !dbg !514
  %tobool = icmp eq %struct._object* %call, null, !dbg !514
  br i1 %tobool, label %if.end, label %cleanup.1134, !dbg !516

if.end:                                           ; preds = %entry
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %lineno_obj, i64 2, !dbg !517
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !517
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !392, metadata !501), !dbg !518
  %0 = getelementptr inbounds %struct._object, %struct._object* %lineno_obj, i64 1, i32 0, !dbg !519
  %1 = load i64, i64* %0, align 8, !dbg !519, !tbaa !520
  %sext = shl i64 %1, 32, !dbg !527
  %conv1 = ashr exact i64 %sext, 32, !dbg !527
  %call2 = tail call i8* @memchr(i8* %arraydecay, i32 255, i64 %conv1) #5, !dbg !529
  %cmp = icmp eq i8* %call2, null, !dbg !530
  br i1 %cmp, label %if.end.5, label %do.body.1126, !dbg !531

if.end.5:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct._object, %struct._object* %code, i64 1, i32 0, !dbg !532
  %3 = load i64, i64* %2, align 8, !dbg !532, !tbaa !520
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !384, metadata !501), !dbg !533
  %cmp7 = icmp sgt i64 %3, 32700, !dbg !534
  br i1 %cmp7, label %if.then.1129, label %if.end.10, !dbg !536

if.end.10:                                        ; preds = %if.end.5
  %call11 = tail call i8* @PyMem_Malloc(i64 %3) #3, !dbg !537
  tail call void @llvm.dbg.value(metadata i8* %call11, i64 0, metadata !391, metadata !501), !dbg !506
  %cmp12 = icmp eq i8* %call11, null, !dbg !538
  br i1 %cmp12, label %if.then.14, label %if.end.16, !dbg !540

if.then.14:                                       ; preds = %if.end.10
  %call15 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !541
  br label %cleanup.1134, !dbg !543

if.end.16:                                        ; preds = %if.end.10
  %ob_sval17 = getelementptr inbounds %struct._object, %struct._object* %code, i64 2, !dbg !544
  %arraydecay18 = bitcast %struct._object* %ob_sval17 to i8*, !dbg !544
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call11, i8* %arraydecay18, i64 %3, i32 1, i1 false), !dbg !545
  tail call void @llvm.dbg.value(metadata i8* %call11, i64 0, metadata !391, metadata !501), !dbg !506
  %sub = add i64 %3, -1, !dbg !546
  %arrayidx = getelementptr i8, i8* %call11, i64 %sub, !dbg !548
  %4 = load i8, i8* %arrayidx, align 1, !dbg !548, !tbaa !549
  %cmp20 = icmp eq i8 %4, 83, !dbg !550
  br i1 %cmp20, label %if.end.23, label %if.then.1124, !dbg !551

if.end.23:                                        ; preds = %if.end.16
  %mul = shl i64 %3, 2, !dbg !552
  %call24 = tail call i8* @PyMem_Malloc(i64 %mul) #3, !dbg !553
  %5 = bitcast i8* %call24 to i32*, !dbg !554
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !393, metadata !501), !dbg !507
  %cmp25 = icmp eq i8* %call24, null, !dbg !555
  br i1 %cmp25, label %if.end.1117.thread, label %if.end.29, !dbg !557

if.end.1117.thread:                               ; preds = %if.end.23
  %call28 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !558
  br label %if.then.1124, !dbg !560

if.end.29:                                        ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata i8* %call11, i64 0, metadata !428, metadata !501) #3, !dbg !561
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !429, metadata !501) #3, !dbg !563
  %call.i = tail call i8* @PyMem_Malloc(i64 %mul) #3, !dbg !564
  %6 = bitcast i8* %call.i to i32*, !dbg !565
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !430, metadata !501) #3, !dbg !566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !434, metadata !501) #3, !dbg !567
  %cmp.i = icmp eq i8* %call.i, null, !dbg !568
  br i1 %cmp.i, label %if.end.1117.thread1990, label %if.end.i, !dbg !570

if.end.1117.thread1990:                           ; preds = %if.end.29
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !571
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !403, metadata !501), !dbg !513
  br label %if.then.1120, !dbg !560

if.end.i:                                         ; preds = %if.end.29
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 %mul, i32 4, i1 false) #3, !dbg !573
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !431, metadata !501) #3, !dbg !574
  %cmp3.114.i = icmp sgt i64 %3, 0, !dbg !575
  br i1 %cmp3.114.i, label %for.body.i.preheader, label %cond.false, !dbg !578

for.body.i.preheader:                             ; preds = %if.end.i
  br label %for.body.i, !dbg !579

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %conv116.i = phi i64 [ %conv.i, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !581
  %i.0115.i = phi i32 [ %add55.i, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !581
  %arrayidx.i = getelementptr i8, i8* %call11, i64 %conv116.i, !dbg !579
  %7 = load i8, i8* %arrayidx.i, align 1, !dbg !582, !tbaa !549
  %conv5.i = zext i8 %7 to i32, !dbg !579
  tail call void @llvm.dbg.value(metadata i32 %conv5.i, i64 0, metadata !433, metadata !501) #3, !dbg !584
  switch i32 %conv5.i, label %for.inc.i [
    i32 93, label %sw.bb.i
    i32 110, label %sw.bb.i
    i32 111, label %sw.bb.i
    i32 112, label %sw.bb.i
    i32 114, label %sw.bb.i
    i32 115, label %sw.bb.i
    i32 113, label %sw.bb.i
    i32 119, label %sw.bb.i
    i32 120, label %sw.bb.i
    i32 121, label %sw.bb.i
    i32 122, label %sw.bb.i
    i32 143, label %sw.bb.i
  ], !dbg !585

sw.bb.i:                                          ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %add.i = add i32 %i.0115.i, 2, !dbg !582
  %idxprom6.i = sext i32 %add.i to i64, !dbg !582
  %arrayidx7.i = getelementptr i8, i8* %call11, i64 %idxprom6.i, !dbg !582
  %8 = load i8, i8* %arrayidx7.i, align 1, !dbg !582, !tbaa !549
  %conv8.i = zext i8 %8 to i32, !dbg !582
  %shl.i = shl nuw nsw i32 %conv8.i, 8, !dbg !582
  %add9.i = add i32 %i.0115.i, 1, !dbg !582
  %idxprom10.i = sext i32 %add9.i to i64, !dbg !582
  %arrayidx11.i = getelementptr i8, i8* %call11, i64 %idxprom10.i, !dbg !582
  %9 = load i8, i8* %arrayidx11.i, align 1, !dbg !582, !tbaa !549
  %conv12.i = zext i8 %9 to i32, !dbg !582
  %add13.i = or i32 %shl.i, %conv12.i, !dbg !582
  %switch.tableidx.i = add i8 %7, -111, !dbg !582
  %10 = icmp ult i8 %switch.tableidx.i, 9, !dbg !582
  br i1 %10, label %switch.hole_check.i, label %cond.false.i, !dbg !582

cond.false.i:                                     ; preds = %switch.hole_check.i, %sw.bb.i
  %add48.i = add i32 %i.0115.i, 3, !dbg !586
  br label %cond.end.i, !dbg !586

switch.hole_check.i:                              ; preds = %sw.bb.i
  %switch.maskindex.i = zext i8 %switch.tableidx.i to i16, !dbg !582
  %switch.shifted.i = lshr i16 287, %switch.maskindex.i, !dbg !582
  %11 = and i16 %switch.shifted.i, 1, !dbg !582
  %switch.lobit.i = icmp eq i16 %11, 0, !dbg !582
  br i1 %switch.lobit.i, label %cond.false.i, label %cond.end.i, !dbg !582

cond.end.i:                                       ; preds = %switch.hole_check.i, %cond.false.i
  %cond.i = phi i32 [ %add48.i, %cond.false.i ], [ 0, %switch.hole_check.i ], !dbg !582
  %add49.i = add i32 %cond.i, %add13.i, !dbg !588
  tail call void @llvm.dbg.value(metadata i32 %add49.i, i64 0, metadata !432, metadata !501) #3, !dbg !591
  %idxprom50.i = sext i32 %add49.i to i64, !dbg !592
  %arrayidx51.i = getelementptr i32, i32* %6, i64 %idxprom50.i, !dbg !592
  store i32 1, i32* %arrayidx51.i, align 4, !dbg !593, !tbaa !594
  br label %for.inc.i, !dbg !596

for.inc.i:                                        ; preds = %cond.end.i, %for.body.i
  %cmp52.i = icmp ugt i8 %7, 89, !dbg !597
  %cond54.i = select i1 %cmp52.i, i32 3, i32 1, !dbg !597
  %add55.i = add i32 %cond54.i, %i.0115.i, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %add55.i, i64 0, metadata !431, metadata !501) #3, !dbg !574
  %conv.i = sext i32 %add55.i to i64, !dbg !599
  %cmp3.i = icmp slt i64 %conv.i, %3, !dbg !575
  br i1 %cmp3.i, label %for.body.i, label %for.body.60.i.preheader, !dbg !578

for.body.60.i.preheader:                          ; preds = %for.inc.i
  br label %for.body.60.i, !dbg !602

for.body.60.i:                                    ; preds = %for.body.60.i.preheader, %for.body.60.i
  %conv57113.i = phi i64 [ %conv57.i, %for.body.60.i ], [ 0, %for.body.60.i.preheader ], !dbg !581
  %blockcnt.0112.i = phi i32 [ %add63.i, %for.body.60.i ], [ 0, %for.body.60.i.preheader ], !dbg !581
  %i.1111.i = phi i32 [ %inc.i, %for.body.60.i ], [ 0, %for.body.60.i.preheader ], !dbg !581
  %arrayidx62.i = getelementptr i32, i32* %6, i64 %conv57113.i, !dbg !602
  %12 = load i32, i32* %arrayidx62.i, align 4, !dbg !602, !tbaa !594
  %add63.i = add i32 %12, %blockcnt.0112.i, !dbg !606
  tail call void @llvm.dbg.value(metadata i32 %add63.i, i64 0, metadata !434, metadata !501) #3, !dbg !567
  store i32 %add63.i, i32* %arrayidx62.i, align 4, !dbg !607, !tbaa !594
  %inc.i = add i32 %i.1111.i, 1, !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !431, metadata !501) #3, !dbg !574
  %conv57.i = sext i32 %inc.i to i64, !dbg !609
  %cmp58.i = icmp slt i64 %conv57.i, %3, !dbg !612
  br i1 %cmp58.i, label %for.body.60.i, label %cond.false.loopexit, !dbg !613

cond.false.loopexit:                              ; preds = %for.body.60.i
  br label %cond.false, !dbg !511

cond.false:                                       ; preds = %cond.false.loopexit, %if.end.i
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !401, metadata !501), !dbg !511
  %call38 = tail call i8* @PyMem_Malloc(i64 2048) #3, !dbg !614
  %13 = bitcast i8* %call38 to %struct._object**, !dbg !614
  tail call void @llvm.dbg.value(metadata %struct._object** %13, i64 0, metadata !398, metadata !501), !dbg !508
  %call44 = tail call i8* @PyMem_Malloc(i64 2048) #3, !dbg !617
  %14 = bitcast i8* %call44 to i64*, !dbg !617
  tail call void @llvm.dbg.value(metadata i64* %14, i64 0, metadata !399, metadata !501), !dbg !509
  %tobool47 = icmp ne i8* %call38, null, !dbg !619
  %tobool48 = icmp ne i8* %call44, null, !dbg !621
  %or.cond = and i1 %tobool47, %tobool48, !dbg !619
  br i1 %or.cond, label %for.cond.preheader, label %if.then.49, !dbg !619

for.cond.preheader:                               ; preds = %cond.false
  br i1 %cmp3.114.i, label %reoptimize_current.preheader.lr.ph, label %for.cond.1014.preheader, !dbg !623

reoptimize_current.preheader.lr.ph:               ; preds = %for.cond.preheader
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %consts, i64 1, i32 1, !dbg !624
  %15 = bitcast %struct._typeobject** %ob_item to %struct._object***, !dbg !624
  %16 = getelementptr inbounds %struct._object, %struct._object* %consts, i64 1, i32 0, !dbg !626
  br label %reoptimize_current.preheader, !dbg !623

if.then.49:                                       ; preds = %cond.false
  %call50 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !628
  br label %do.body.1105, !dbg !628

reoptimize_current.preheader:                     ; preds = %reoptimize_current.preheader.lr.ph, %for.inc
  %i.01933 = phi i64 [ 0, %reoptimize_current.preheader.lr.ph ], [ %add989, %for.inc ]
  %in_consts.01932 = phi i32 [ 0, %reoptimize_current.preheader.lr.ph ], [ %in_consts.6, %for.inc ]
  %const_stack_size.01930 = phi i64 [ 256, %reoptimize_current.preheader.lr.ph ], [ %const_stack_size.9, %for.inc ]
  %const_stack_top.01929 = phi i64 [ -1, %reoptimize_current.preheader.lr.ph ], [ %const_stack_top.3, %for.inc ]
  %load_const_stack.01927 = phi i64* [ %14, %reoptimize_current.preheader.lr.ph ], [ %load_const_stack.9, %for.inc ]
  %const_stack.01925 = phi %struct._object** [ %13, %reoptimize_current.preheader.lr.ph ], [ %const_stack.9, %for.inc ]
  %arrayidx54 = getelementptr i8, i8* %call11, i64 %i.01933, !dbg !632
  %add = add i64 %i.01933, 1, !dbg !633
  %arrayidx59 = getelementptr i8, i8* %call11, i64 %add, !dbg !635
  %arrayidx64 = getelementptr i32, i32* %6, i64 %i.01933, !dbg !636
  %sub66 = add i64 %i.01933, 3, !dbg !636
  %arrayidx67 = getelementptr i32, i32* %6, i64 %sub66, !dbg !636
  %arrayidx74 = getelementptr i8, i8* %call11, i64 %sub66, !dbg !638
  %add77 = add i64 %i.01933, 2, !dbg !638
  %arrayidx78 = getelementptr i8, i8* %call11, i64 %add77, !dbg !638
  %.pre = load i8, i8* %arrayidx54, align 1, !dbg !632, !tbaa !549
  br label %reoptimize_current, !dbg !632

for.cond.990.preheader:                           ; preds = %for.inc
  %load_const_stack.9.lcssa = phi i64* [ %load_const_stack.9, %for.inc ]
  %const_stack.9.lcssa = phi %struct._object** [ %const_stack.9, %for.inc ]
  br i1 %cmp3.114.i, label %for.body.993.preheader, label %for.cond.1014.preheader, !dbg !639

for.body.993.preheader:                           ; preds = %for.cond.990.preheader
  br label %for.body.993, !dbg !641

reoptimize_current:                               ; preds = %reoptimize_current.backedge, %reoptimize_current.preheader
  %17 = phi i8 [ %.pre, %reoptimize_current.preheader ], [ %.be, %reoptimize_current.backedge ], !dbg !644
  %const_stack_top.1 = phi i64 [ %const_stack_top.01929, %reoptimize_current.preheader ], [ %.const_stack_top.1, %reoptimize_current.backedge ]
  %in_consts.1 = phi i32 [ %in_consts.01932, %reoptimize_current.preheader ], [ 0, %reoptimize_current.backedge ]
  %conv55 = zext i8 %17 to i32, !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %conv55, i64 0, metadata !390, metadata !501), !dbg !646
  %tobool56 = icmp eq i32 %in_consts.1, 0, !dbg !647
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !400, metadata !501), !dbg !510
  %.const_stack_top.1 = select i1 %tobool56, i64 -1, i64 %const_stack_top.1, !dbg !649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !402, metadata !501), !dbg !512
  switch i32 %conv55, label %for.inc.loopexit [
    i32 12, label %sw.bb
    i32 107, label %sw.bb.91
    i32 100, label %do.body.133
    i32 102, label %sw.bb.205
    i32 103, label %sw.bb.205
    i32 104, label %sw.bb.205
    i32 19, label %sw.bb.427
    i32 20, label %sw.bb.427
    i32 27, label %sw.bb.427
    i32 26, label %sw.bb.427
    i32 22, label %sw.bb.427
    i32 23, label %sw.bb.427
    i32 24, label %sw.bb.427
    i32 25, label %sw.bb.427
    i32 62, label %sw.bb.427
    i32 63, label %sw.bb.427
    i32 64, label %sw.bb.427
    i32 65, label %sw.bb.427
    i32 66, label %sw.bb.427
    i32 11, label %sw.bb.518
    i32 15, label %sw.bb.518
    i32 10, label %sw.bb.518
    i32 111, label %sw.bb.604
    i32 112, label %sw.bb.604
    i32 114, label %sw.bb.762
    i32 115, label %sw.bb.762
    i32 93, label %sw.bb.762
    i32 110, label %sw.bb.762
    i32 113, label %sw.bb.762
    i32 119, label %sw.bb.762
    i32 120, label %sw.bb.762
    i32 121, label %sw.bb.762
    i32 122, label %sw.bb.762
    i32 143, label %sw.bb.762
    i32 144, label %sw.bb.929
    i32 83, label %sw.bb.938
  ], !dbg !650

sw.bb:                                            ; preds = %reoptimize_current
  %18 = load i8, i8* %arrayidx59, align 1, !dbg !635, !tbaa !549
  %cmp61 = icmp eq i8 %18, 114, !dbg !651
  br i1 %cmp61, label %lor.lhs.false.63, label %for.inc.loopexit, !dbg !652

lor.lhs.false.63:                                 ; preds = %sw.bb
  %19 = load i32, i32* %arrayidx64, align 4, !dbg !636, !tbaa !594
  %20 = load i32, i32* %arrayidx67, align 4, !dbg !636, !tbaa !594
  %cmp68 = icmp eq i32 %19, %20, !dbg !636
  br i1 %cmp68, label %if.end.71, label %for.inc.loopexit, !dbg !653

if.end.71:                                        ; preds = %lor.lhs.false.63
  %21 = load i8, i8* %arrayidx74, align 1, !dbg !638, !tbaa !549
  %22 = load i8, i8* %arrayidx78, align 1, !dbg !638, !tbaa !549
  store i8 115, i8* %arrayidx54, align 1, !dbg !654, !tbaa !549
  store i8 %21, i8* %arrayidx78, align 1, !dbg !655, !tbaa !549
  store i8 %22, i8* %arrayidx59, align 1, !dbg !655, !tbaa !549
  store i8 9, i8* %arrayidx74, align 1, !dbg !656, !tbaa !549
  br label %reoptimize_current.backedge, !dbg !657

reoptimize_current.backedge:                      ; preds = %if.end.71, %cond.end.727, %if.end.750
  %.be = phi i8 [ 115, %if.end.71 ], [ %141, %cond.end.727 ], [ %storemerge, %if.end.750 ]
  br label %reoptimize_current, !dbg !632

sw.bb.91:                                         ; preds = %reoptimize_current
  %.const_stack_top.1.lcssa2167 = phi i64 [ %.const_stack_top.1, %reoptimize_current ]
  %23 = load i8, i8* %arrayidx78, align 1, !dbg !658, !tbaa !549
  %conv94 = zext i8 %23 to i64, !dbg !658
  %shl95 = shl nuw nsw i64 %conv94, 8, !dbg !658
  %24 = load i8, i8* %arrayidx59, align 1, !dbg !658, !tbaa !549
  %conv98 = zext i8 %24 to i64, !dbg !658
  %add99 = or i64 %shl95, %conv98, !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %add99, i64 0, metadata !383, metadata !501), !dbg !659
  %add99.off = add nsw i64 %add99, -6, !dbg !660
  %25 = icmp ugt i64 %add99.off, 3, !dbg !660
  br i1 %25, label %for.inc, label %lor.lhs.false.106, !dbg !660

lor.lhs.false.106:                                ; preds = %sw.bb.91
  %26 = load i8, i8* %arrayidx74, align 1, !dbg !662, !tbaa !549
  %cmp110 = icmp eq i8 %26, 12, !dbg !663
  br i1 %cmp110, label %lor.lhs.false.112, label %for.inc, !dbg !664

lor.lhs.false.112:                                ; preds = %lor.lhs.false.106
  %27 = load i32, i32* %arrayidx64, align 4, !dbg !665, !tbaa !594
  %28 = load i32, i32* %arrayidx67, align 4, !dbg !665, !tbaa !594
  %cmp117 = icmp eq i32 %27, %28, !dbg !665
  br i1 %cmp117, label %if.end.120, label %for.inc, !dbg !666

if.end.120:                                       ; preds = %lor.lhs.false.112
  store i8 %23, i8* %arrayidx78, align 1, !dbg !667, !tbaa !549
  %and126 = xor i8 %24, 1, !dbg !667
  store i8 %and126, i8* %arrayidx59, align 1, !dbg !667, !tbaa !549
  store i8 9, i8* %arrayidx74, align 1, !dbg !668, !tbaa !549
  br label %for.inc, !dbg !669

do.body.133:                                      ; preds = %reoptimize_current
  %.const_stack_top.1.lcssa2168 = phi i64 [ %.const_stack_top.1, %reoptimize_current ]
  %29 = load i8, i8* %arrayidx78, align 1, !dbg !624, !tbaa !549
  %conv136 = zext i8 %29 to i64, !dbg !624
  %shl137 = shl nuw nsw i64 %conv136, 8, !dbg !624
  %30 = load i8, i8* %arrayidx59, align 1, !dbg !624, !tbaa !549
  %conv140 = zext i8 %30 to i64, !dbg !624
  %add141 = or i64 %shl137, %conv140, !dbg !624
  %31 = load %struct._object**, %struct._object*** %15, align 8, !dbg !624, !tbaa !670
  %arrayidx142 = getelementptr %struct._object*, %struct._object** %31, i64 %add141, !dbg !624
  %32 = bitcast %struct._object** %arrayidx142 to i64*, !dbg !624
  %33 = load i64, i64* %32, align 8, !dbg !624, !tbaa !672
  %inc = add i64 %.const_stack_top.1.lcssa2168, 1, !dbg !673
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !400, metadata !501), !dbg !510
  %cmp143 = icmp slt i64 %inc, %const_stack_size.01930, !dbg !673
  br i1 %cmp143, label %do.end.173, label %if.then.145, !dbg !675

if.then.145:                                      ; preds = %do.body.133
  %mul146 = shl i64 %const_stack_size.01930, 1, !dbg !676
  tail call void @llvm.dbg.value(metadata i64 %mul146, i64 0, metadata !401, metadata !501), !dbg !511
  %cmp147 = icmp ugt i64 %mul146, 1152921504606846975, !dbg !676
  br i1 %cmp147, label %cleanup, label %cond.end.161, !dbg !676

cond.end.161:                                     ; preds = %if.then.145
  %34 = bitcast %struct._object** %const_stack.01925 to i8*, !dbg !679
  %mul151 = shl i64 %const_stack_size.01930, 4, !dbg !679
  %call152 = tail call i8* @PyMem_Realloc(i8* %34, i64 %mul151) #3, !dbg !679
  %35 = bitcast i8* %call152 to %struct._object**, !dbg !679
  tail call void @llvm.dbg.value(metadata %struct._object** %35, i64 0, metadata !398, metadata !501), !dbg !508
  %36 = bitcast i64* %load_const_stack.01927 to i8*, !dbg !681
  %call160 = tail call i8* @PyMem_Realloc(i8* %36, i64 %mul151) #3, !dbg !681
  %37 = bitcast i8* %call160 to i64*, !dbg !681
  tail call void @llvm.dbg.value(metadata i64* %37, i64 0, metadata !399, metadata !501), !dbg !509
  %tobool163 = icmp ne i8* %call152, null, !dbg !683
  %tobool165 = icmp ne i8* %call160, null, !dbg !685
  %or.cond1157 = and i1 %tobool163, %tobool165, !dbg !683
  br i1 %or.cond1157, label %do.end.173, label %cleanup, !dbg !683

cleanup:                                          ; preds = %if.then.145, %cond.end.161
  %cond1621802 = phi i64* [ %37, %cond.end.161 ], [ null, %if.then.145 ]
  %cond15417971801 = phi %struct._object** [ %35, %cond.end.161 ], [ null, %if.then.145 ]
  %call167 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !687
  br label %do.body.1105

do.end.173:                                       ; preds = %cond.end.161, %do.body.133
  %const_stack.1 = phi %struct._object** [ %35, %cond.end.161 ], [ %const_stack.01925, %do.body.133 ]
  %load_const_stack.1 = phi i64* [ %37, %cond.end.161 ], [ %load_const_stack.01927, %do.body.133 ]
  %const_stack_size.1 = phi i64 [ %mul146, %cond.end.161 ], [ %const_stack_size.01930, %do.body.133 ]
  %arrayidx170 = getelementptr i64, i64* %load_const_stack.1, i64 %inc, !dbg !691
  store i64 %i.01933, i64* %arrayidx170, align 8, !dbg !691, !tbaa !694
  %arrayidx171 = getelementptr %struct._object*, %struct._object** %const_stack.1, i64 %inc, !dbg !691
  %38 = bitcast %struct._object** %arrayidx171 to i64*, !dbg !691
  store i64 %33, i64* %38, align 8, !dbg !691, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !402, metadata !501), !dbg !512
  %39 = load i8, i8* %arrayidx78, align 1, !dbg !695, !tbaa !549
  %conv176 = zext i8 %39 to i64, !dbg !695
  %shl177 = shl nuw nsw i64 %conv176, 8, !dbg !695
  %40 = load i8, i8* %arrayidx59, align 1, !dbg !695, !tbaa !549
  %conv180 = zext i8 %40 to i64, !dbg !695
  %add181 = or i64 %shl177, %conv180, !dbg !695
  tail call void @llvm.dbg.value(metadata i64 %add181, i64 0, metadata !383, metadata !501), !dbg !659
  %41 = load i8, i8* %arrayidx74, align 1, !dbg !696, !tbaa !549
  %cmp186 = icmp eq i8 %41, 114, !dbg !698
  br i1 %cmp186, label %lor.lhs.false.188, label %for.inc, !dbg !699

lor.lhs.false.188:                                ; preds = %do.end.173
  %42 = load i32, i32* %arrayidx64, align 4, !dbg !700, !tbaa !594
  %sub191 = add i64 %i.01933, 5, !dbg !700
  %arrayidx192 = getelementptr i32, i32* %6, i64 %sub191, !dbg !700
  %43 = load i32, i32* %arrayidx192, align 4, !dbg !700, !tbaa !594
  %cmp193 = icmp eq i32 %42, %43, !dbg !700
  br i1 %cmp193, label %lor.lhs.false.195, label %for.inc, !dbg !701

lor.lhs.false.195:                                ; preds = %lor.lhs.false.188
  %44 = load %struct._object**, %struct._object*** %15, align 8, !dbg !702, !tbaa !670
  %arrayidx197 = getelementptr %struct._object*, %struct._object** %44, i64 %add181, !dbg !702
  %45 = load %struct._object*, %struct._object** %arrayidx197, align 8, !dbg !702, !tbaa !672
  %call198 = tail call i32 @PyObject_IsTrue(%struct._object* %45) #3, !dbg !703
  %tobool199 = icmp eq i32 %call198, 0, !dbg !703
  br i1 %tobool199, label %for.inc, label %if.end.201, !dbg !704

if.end.201:                                       ; preds = %lor.lhs.false.195
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx54, i8 9, i64 6, i32 1, i1 false), !dbg !705
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !400, metadata !501), !dbg !510
  br label %for.inc, !dbg !706

sw.bb.205:                                        ; preds = %reoptimize_current, %reoptimize_current, %reoptimize_current
  %.const_stack_top.1.lcssa2169 = phi i64 [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ]
  %.lcssa2153 = phi i8 [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ]
  %46 = load i8, i8* %arrayidx78, align 1, !dbg !707, !tbaa !549
  %conv208 = zext i8 %46 to i64, !dbg !707
  %shl209 = shl nuw nsw i64 %conv208, 8, !dbg !707
  %47 = load i8, i8* %arrayidx59, align 1, !dbg !707, !tbaa !549
  %conv212 = zext i8 %47 to i64, !dbg !707
  %add213 = or i64 %shl209, %conv212, !dbg !707
  tail call void @llvm.dbg.value(metadata i64 %add213, i64 0, metadata !383, metadata !501), !dbg !659
  %cmp215 = icmp eq i64 %add213, 0, !dbg !708
  br i1 %cmp215, label %for.inc, label %if.end.218, !dbg !710

if.end.218:                                       ; preds = %sw.bb.205
  %sub219 = add nsw i64 %add213, -1, !dbg !711
  %cmp220 = icmp slt i64 %.const_stack_top.1.lcssa2169, %sub219, !dbg !711
  %.pre1983 = add i64 %.const_stack_top.1.lcssa2169, 1
  br i1 %cmp220, label %cond.end.227, label %cond.true.222, !dbg !711

cond.true.222:                                    ; preds = %if.end.218
  %add224 = sub i64 %.pre1983, %add213, !dbg !712
  %arrayidx225 = getelementptr i64, i64* %load_const_stack.01927, i64 %add224, !dbg !712
  %48 = load i64, i64* %arrayidx225, align 8, !dbg !712, !tbaa !694
  br label %cond.end.227, !dbg !712

cond.end.227:                                     ; preds = %if.end.218, %cond.true.222
  %cond228 = phi i64 [ %48, %cond.true.222 ], [ -1, %if.end.218 ], !dbg !711
  %conv229 = trunc i64 %cond228 to i32, !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %conv229, i64 0, metadata !386, metadata !501), !dbg !717
  %or.cond1158.not = icmp slt i32 %conv229, 0, !dbg !718
  %cmp236 = icmp slt i64 %.pre1983, %add213, !dbg !719
  %or.cond1739 = or i1 %cmp236, %or.cond1158.not, !dbg !718
  br i1 %or.cond1739, label %if.end.367thread-pre-split, label %land.lhs.true.238, !dbg !718

land.lhs.true.238:                                ; preds = %cond.end.227
  %cmp239 = icmp eq i8 %.lcssa2153, 102, !dbg !720
  br i1 %cmp239, label %land.lhs.true.241, label %lor.lhs.false.253, !dbg !721

land.lhs.true.241:                                ; preds = %land.lhs.true.238
  %sext1732 = shl i64 %cond228, 32, !dbg !722
  %idxprom242 = ashr exact i64 %sext1732, 32, !dbg !722
  %arrayidx243 = getelementptr i32, i32* %6, i64 %idxprom242, !dbg !722
  %49 = load i32, i32* %arrayidx243, align 4, !dbg !722, !tbaa !594
  %arrayidx250 = getelementptr i32, i32* %6, i64 %add77, !dbg !722
  %50 = load i32, i32* %arrayidx250, align 4, !dbg !722, !tbaa !594
  %cmp251 = icmp eq i32 %49, %50, !dbg !722
  br i1 %cmp251, label %land.lhs.true.303, label %if.end.367thread-pre-split, !dbg !723

lor.lhs.false.253:                                ; preds = %land.lhs.true.238
  %.off1728 = add i8 %.lcssa2153, -103, !dbg !724
  %51 = icmp ult i8 %.off1728, 2, !dbg !724
  br i1 %51, label %land.lhs.true.259, label %if.end.367thread-pre-split, !dbg !724

land.lhs.true.259:                                ; preds = %lor.lhs.false.253
  %52 = load i8, i8* %arrayidx74, align 1, !dbg !725, !tbaa !549
  %cmp263 = icmp eq i8 %52, 107, !dbg !726
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.367, !dbg !727

land.lhs.true.265:                                ; preds = %land.lhs.true.259
  %sext1729 = shl i64 %cond228, 32, !dbg !728
  %idxprom266 = ashr exact i64 %sext1729, 32, !dbg !728
  %arrayidx267 = getelementptr i32, i32* %6, i64 %idxprom266, !dbg !728
  %53 = load i32, i32* %arrayidx267, align 4, !dbg !728, !tbaa !594
  %sub273 = add i64 %i.01933, 5, !dbg !728
  %arrayidx274 = getelementptr i32, i32* %6, i64 %sub273, !dbg !728
  %54 = load i32, i32* %arrayidx274, align 4, !dbg !728, !tbaa !594
  %cmp275 = icmp eq i32 %53, %54, !dbg !728
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.367thread-pre-split, !dbg !729

land.lhs.true.277:                                ; preds = %land.lhs.true.265
  %arrayidx280 = getelementptr i8, i8* %call11, i64 %sub273, !dbg !730
  %55 = load i8, i8* %arrayidx280, align 1, !dbg !730, !tbaa !549
  %conv281 = zext i8 %55 to i32, !dbg !730
  %shl282 = shl nuw nsw i32 %conv281, 8, !dbg !730
  %add284 = add i64 %i.01933, 4, !dbg !730
  %arrayidx285 = getelementptr i8, i8* %call11, i64 %add284, !dbg !730
  %56 = load i8, i8* %arrayidx285, align 1, !dbg !730, !tbaa !549
  %conv286 = zext i8 %56 to i32, !dbg !730
  %conv286.masked = and i32 %conv286, 254, !dbg !731
  %57 = or i32 %conv286.masked, %shl282, !dbg !731
  %switch = icmp eq i32 %57, 6, !dbg !731
  br i1 %switch, label %land.lhs.true.303, label %if.end.367thread-pre-split, !dbg !731

land.lhs.true.303:                                ; preds = %land.lhs.true.277, %land.lhs.true.241
  %sub305 = sub i64 %.const_stack_top.1.lcssa2169, %add213, !dbg !732
  %add306 = add i64 %sub305, 1, !dbg !732
  %arrayidx307 = getelementptr %struct._object*, %struct._object** %const_stack.01925, i64 %add306, !dbg !732
  tail call void @llvm.dbg.value(metadata i8* %arrayidx54, i64 0, metadata !439, metadata !501) #3, !dbg !733
  tail call void @llvm.dbg.value(metadata i64 %add213, i64 0, metadata !440, metadata !501) #3, !dbg !734
  tail call void @llvm.dbg.value(metadata %struct._object* %consts, i64 0, metadata !441, metadata !501) #3, !dbg !735
  tail call void @llvm.dbg.value(metadata %struct._object** %arrayidx307, i64 0, metadata !442, metadata !501) #3, !dbg !736
  %call.i.1755 = tail call %struct._object* @PyTuple_New(i64 %add213) #3, !dbg !737
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1755, i64 0, metadata !443, metadata !501) #3, !dbg !738
  %cmp.i.1756 = icmp eq %struct._object* %call.i.1755, null, !dbg !739
  br i1 %cmp.i.1756, label %if.end.367thread-pre-split, label %for.body.lr.ph.i, !dbg !741

for.body.lr.ph.i:                                 ; preds = %land.lhs.true.303
  %58 = load i64, i64* %16, align 8, !dbg !626, !tbaa !520
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !446, metadata !501) #3, !dbg !742
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !445, metadata !501) #3, !dbg !743
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1755, i64 1, i32 1, !dbg !744
  %59 = bitcast %struct._typeobject** %ob_item.i to [1 x %struct._object*]*, !dbg !744
  %xtraiter2137 = and i64 %conv212, 1, !dbg !748
  %lcmp.mod2138 = icmp eq i64 %xtraiter2137, 0, !dbg !748
  br i1 %lcmp.mod2138, label %for.body.lr.ph.i.split, label %for.body.i.1760.prol, !dbg !748

for.body.i.1760.prol:                             ; preds = %for.body.lr.ph.i
  %60 = load %struct._object*, %struct._object** %arrayidx307, align 8, !dbg !749, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %60, i64 0, metadata !444, metadata !501) #3, !dbg !750
  %ob_refcnt.i.prol = getelementptr inbounds %struct._object, %struct._object* %60, i64 0, i32 0, !dbg !751
  %61 = load i64, i64* %ob_refcnt.i.prol, align 8, !dbg !751, !tbaa !752
  %inc.i.1759.prol = add i64 %61, 1, !dbg !751
  store i64 %inc.i.1759.prol, i64* %ob_refcnt.i.prol, align 8, !dbg !751, !tbaa !752
  %arrayidx2.i.prol = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !744
  store %struct._object* %60, %struct._object** %arrayidx2.i.prol, align 8, !dbg !744, !tbaa !672
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !445, metadata !501) #3, !dbg !743
  br label %for.body.lr.ph.i.split, !dbg !748

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i, %for.body.i.1760.prol
  %i.090.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ 1, %for.body.i.1760.prol ]
  %62 = icmp eq i64 %add213, 1, !dbg !748
  br i1 %62, label %for.end.i, label %for.body.lr.ph.i.split.split, !dbg !748

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i.1760, !dbg !748

for.body.i.1760:                                  ; preds = %for.body.i.1760, %for.body.lr.ph.i.split.split
  %i.090.i = phi i64 [ %i.090.i.unr, %for.body.lr.ph.i.split.split ], [ %inc3.i.1, %for.body.i.1760 ], !dbg !753
  %arrayidx.i.1758 = getelementptr %struct._object*, %struct._object** %arrayidx307, i64 %i.090.i, !dbg !749
  %63 = load %struct._object*, %struct._object** %arrayidx.i.1758, align 8, !dbg !749, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %63, i64 0, metadata !444, metadata !501) #3, !dbg !750
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %63, i64 0, i32 0, !dbg !751
  %64 = load i64, i64* %ob_refcnt.i, align 8, !dbg !751, !tbaa !752
  %inc.i.1759 = add i64 %64, 1, !dbg !751
  store i64 %inc.i.1759, i64* %ob_refcnt.i, align 8, !dbg !751, !tbaa !752
  %arrayidx2.i = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %59, i64 0, i64 %i.090.i, !dbg !744
  store %struct._object* %63, %struct._object** %arrayidx2.i, align 8, !dbg !744, !tbaa !672
  %inc3.i = add nuw nsw i64 %i.090.i, 1, !dbg !754
  tail call void @llvm.dbg.value(metadata i64 %inc3.i, i64 0, metadata !445, metadata !501) #3, !dbg !743
  %arrayidx.i.1758.1 = getelementptr %struct._object*, %struct._object** %arrayidx307, i64 %inc3.i, !dbg !749
  %65 = load %struct._object*, %struct._object** %arrayidx.i.1758.1, align 8, !dbg !749, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %63, i64 0, metadata !444, metadata !501) #3, !dbg !750
  %ob_refcnt.i.1 = getelementptr inbounds %struct._object, %struct._object* %65, i64 0, i32 0, !dbg !751
  %66 = load i64, i64* %ob_refcnt.i.1, align 8, !dbg !751, !tbaa !752
  %inc.i.1759.1 = add i64 %66, 1, !dbg !751
  store i64 %inc.i.1759.1, i64* %ob_refcnt.i.1, align 8, !dbg !751, !tbaa !752
  %arrayidx2.i.1 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %59, i64 0, i64 %inc3.i, !dbg !744
  store %struct._object* %65, %struct._object** %arrayidx2.i.1, align 8, !dbg !744, !tbaa !672
  %inc3.i.1 = add nsw i64 %i.090.i, 2, !dbg !754
  tail call void @llvm.dbg.value(metadata i64 %inc3.i, i64 0, metadata !445, metadata !501) #3, !dbg !743
  %exitcond.i.1 = icmp eq i64 %inc3.i.1, %add213, !dbg !748
  br i1 %exitcond.i.1, label %for.end.i.unr-lcssa, label %for.body.i.1760, !dbg !748

for.end.i.unr-lcssa:                              ; preds = %for.body.i.1760
  br label %for.end.i, !dbg !755

for.end.i:                                        ; preds = %for.body.lr.ph.i.split, %for.end.i.unr-lcssa
  %67 = load i8, i8* %arrayidx54, align 1, !dbg !755, !tbaa !549
  %cmp5.i = icmp eq i8 %67, 104, !dbg !756
  br i1 %cmp5.i, label %if.then.7.i, label %if.end.18.i, !dbg !757

if.then.7.i:                                      ; preds = %for.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1755, i64 0, metadata !447, metadata !501) #3, !dbg !758
  %call8.i = tail call %struct._object* @PyFrozenSet_New(%struct._object* %call.i.1755) #3, !dbg !759
  tail call void @llvm.dbg.value(metadata %struct._object* %call8.i, i64 0, metadata !443, metadata !501) #3, !dbg !738
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1755, i64 0, metadata !450, metadata !501) #3, !dbg !760
  %ob_refcnt9.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1755, i64 0, i32 0, !dbg !762
  %68 = load i64, i64* %ob_refcnt9.i, align 8, !dbg !762, !tbaa !752
  %dec.i = add i64 %68, -1, !dbg !762
  store i64 %dec.i, i64* %ob_refcnt9.i, align 8, !dbg !762, !tbaa !752
  %cmp10.i = icmp eq i64 %dec.i, 0, !dbg !762
  br i1 %cmp10.i, label %if.else.i, label %if.end.13.i, !dbg !764

if.else.i:                                        ; preds = %if.then.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1755, i64 0, i32 1, !dbg !765
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !765, !tbaa !767
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i64 0, i32 4, !dbg !765
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !765, !tbaa !768
  tail call void %70(%struct._object* %call.i.1755) #3, !dbg !765
  br label %if.end.13.i, !dbg !753

if.end.13.i:                                      ; preds = %if.else.i, %if.then.7.i
  %not.cmp14.i = icmp eq %struct._object* %call8.i, null, !dbg !770
  br i1 %not.cmp14.i, label %if.end.367thread-pre-split, label %if.end.18.i, !dbg !753

if.end.18.i:                                      ; preds = %if.end.13.i, %for.end.i
  %newconst.0.i = phi %struct._object* [ %call8.i, %if.end.13.i ], [ %call.i.1755, %for.end.i ], !dbg !753
  %call19.i = tail call i32 @PyList_Append(%struct._object* %consts, %struct._object* %newconst.0.i) #3, !dbg !772
  %tobool.i = icmp eq i32 %call19.i, 0, !dbg !772
  %ob_refcnt37.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i, i64 0, i32 0, !dbg !773
  %71 = load i64, i64* %ob_refcnt37.i, align 8, !dbg !773, !tbaa !752
  %dec38.i = add i64 %71, -1, !dbg !773
  store i64 %dec38.i, i64* %ob_refcnt37.i, align 8, !dbg !773, !tbaa !752
  %cmp39.i = icmp eq i64 %dec38.i, 0, !dbg !773
  br i1 %tobool.i, label %do.body.35.i, label %do.body.21.i, !dbg !775

do.body.21.i:                                     ; preds = %if.end.18.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i, i64 0, metadata !452, metadata !501) #3, !dbg !776
  br i1 %cmp39.i, label %if.else.28.i, label %if.end.367thread-pre-split, !dbg !778

if.else.28.i:                                     ; preds = %do.body.21.i
  %ob_type29.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i, i64 0, i32 1, !dbg !779
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type29.i, align 8, !dbg !779, !tbaa !767
  %tp_dealloc30.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i64 0, i32 4, !dbg !779
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30.i, align 8, !dbg !779, !tbaa !768
  tail call void %73(%struct._object* %newconst.0.i) #3, !dbg !779
  br label %if.end.367thread-pre-split, !dbg !753

do.body.35.i:                                     ; preds = %if.end.18.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i, i64 0, metadata !456, metadata !501) #3, !dbg !782
  br i1 %cmp39.i, label %if.else.42.i, label %if.then.310, !dbg !784

if.else.42.i:                                     ; preds = %do.body.35.i
  %ob_type43.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i, i64 0, i32 1, !dbg !785
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type43.i, align 8, !dbg !785, !tbaa !767
  %tp_dealloc44.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i64 0, i32 4, !dbg !785
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44.i, align 8, !dbg !785, !tbaa !768
  tail call void %75(%struct._object* %newconst.0.i) #3, !dbg !785
  br label %if.then.310, !dbg !753

if.then.310:                                      ; preds = %if.else.42.i, %do.body.35.i
  store i8 100, i8* %arrayidx54, align 1, !dbg !787, !tbaa !549
  %shr.88.i = lshr i64 %58, 8, !dbg !788
  %conv49.i = trunc i64 %shr.88.i to i8, !dbg !788
  %arrayidx50.i = getelementptr i8, i8* %arrayidx54, i64 2, !dbg !788
  store i8 %conv49.i, i8* %arrayidx50.i, align 1, !dbg !788, !tbaa !549
  %conv51.i = trunc i64 %58 to i8, !dbg !788
  %arrayidx52.i = getelementptr i8, i8* %arrayidx54, i64 1, !dbg !788
  store i8 %conv51.i, i8* %arrayidx52.i, align 1, !dbg !788, !tbaa !549
  %sext1730 = shl i64 %cond228, 32, !dbg !789
  %idxprom311 = ashr exact i64 %sext1730, 32, !dbg !789
  %arrayidx312 = getelementptr i8, i8* %call11, i64 %idxprom311, !dbg !789
  %sub314 = sub i64 %i.01933, %idxprom311, !dbg !790
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx312, i8 9, i64 %sub314, i32 1, i1 false), !dbg !791
  tail call void @llvm.dbg.value(metadata i64 %sub305, i64 0, metadata !400, metadata !501), !dbg !510
  %76 = load i8, i8* %arrayidx78, align 1, !dbg !792, !tbaa !549
  %conv323 = zext i8 %76 to i64, !dbg !792
  %shl324 = shl nuw nsw i64 %conv323, 8, !dbg !792
  %77 = load i8, i8* %arrayidx59, align 1, !dbg !792, !tbaa !549
  %conv327 = zext i8 %77 to i64, !dbg !792
  %add328 = or i64 %shl324, %conv327, !dbg !792
  %78 = load %struct._object**, %struct._object*** %15, align 8, !dbg !792, !tbaa !670
  %arrayidx331 = getelementptr %struct._object*, %struct._object** %78, i64 %add328, !dbg !792
  %79 = bitcast %struct._object** %arrayidx331 to i64*, !dbg !792
  %80 = load i64, i64* %79, align 8, !dbg !792, !tbaa !672
  tail call void @llvm.dbg.value(metadata i64 %add306, i64 0, metadata !400, metadata !501), !dbg !510
  %cmp333 = icmp slt i64 %add306, %const_stack_size.01930, !dbg !794
  br i1 %cmp333, label %cleanup.362.thread, label %if.then.335, !dbg !796

if.then.335:                                      ; preds = %if.then.310
  %mul336 = shl i64 %const_stack_size.01930, 1, !dbg !797
  tail call void @llvm.dbg.value(metadata i64 %mul336, i64 0, metadata !401, metadata !501), !dbg !511
  %cmp337 = icmp ugt i64 %mul336, 1152921504606846975, !dbg !797
  br i1 %cmp337, label %cleanup.362, label %cond.end.351, !dbg !797

cond.end.351:                                     ; preds = %if.then.335
  %81 = bitcast %struct._object** %const_stack.01925 to i8*, !dbg !800
  %mul341 = shl i64 %const_stack_size.01930, 4, !dbg !800
  %call342 = tail call i8* @PyMem_Realloc(i8* %81, i64 %mul341) #3, !dbg !800
  %82 = bitcast i8* %call342 to %struct._object**, !dbg !800
  tail call void @llvm.dbg.value(metadata %struct._object** %82, i64 0, metadata !398, metadata !501), !dbg !508
  %83 = bitcast i64* %load_const_stack.01927 to i8*, !dbg !802
  %call350 = tail call i8* @PyMem_Realloc(i8* %83, i64 %mul341) #3, !dbg !802
  %84 = bitcast i8* %call350 to i64*, !dbg !802
  tail call void @llvm.dbg.value(metadata i64* %84, i64 0, metadata !399, metadata !501), !dbg !509
  %tobool353 = icmp ne i8* %call342, null, !dbg !804
  %tobool355 = icmp ne i8* %call350, null, !dbg !806
  %or.cond1160 = and i1 %tobool353, %tobool355, !dbg !804
  br i1 %or.cond1160, label %cleanup.362.thread, label %cleanup.362, !dbg !804

cleanup.362.thread:                               ; preds = %cond.end.351, %if.then.310
  %const_stack.3 = phi %struct._object** [ %82, %cond.end.351 ], [ %const_stack.01925, %if.then.310 ]
  %load_const_stack.3 = phi i64* [ %84, %cond.end.351 ], [ %load_const_stack.01927, %if.then.310 ]
  %const_stack_size.3 = phi i64 [ %mul336, %cond.end.351 ], [ %const_stack_size.01930, %if.then.310 ]
  %arrayidx360 = getelementptr i64, i64* %load_const_stack.3, i64 %add306, !dbg !808
  store i64 %i.01933, i64* %arrayidx360, align 8, !dbg !808, !tbaa !694
  %arrayidx361 = getelementptr %struct._object*, %struct._object** %const_stack.3, i64 %add306, !dbg !808
  %85 = bitcast %struct._object** %arrayidx361 to i64*, !dbg !808
  store i64 %80, i64* %85, align 8, !dbg !808, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !402, metadata !501), !dbg !512
  br label %for.inc

cleanup.362:                                      ; preds = %if.then.335, %cond.end.351
  %cond3521814 = phi i64* [ %84, %cond.end.351 ], [ null, %if.then.335 ]
  %cond34418091813 = phi %struct._object** [ %82, %cond.end.351 ], [ null, %if.then.335 ]
  %call357 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !811
  br label %do.body.1105

if.end.367thread-pre-split:                       ; preds = %land.lhs.true.265, %lor.lhs.false.253, %cond.end.227, %land.lhs.true.277, %land.lhs.true.241, %if.end.13.i, %land.lhs.true.303, %do.body.21.i, %if.else.28.i
  %.pr = load i8, i8* %arrayidx74, align 1, !dbg !815, !tbaa !549
  br label %if.end.367, !dbg !815

if.end.367:                                       ; preds = %if.end.367thread-pre-split, %land.lhs.true.259
  %86 = phi i8 [ %.pr, %if.end.367thread-pre-split ], [ %52, %land.lhs.true.259 ], !dbg !815
  %cmp371 = icmp eq i8 %86, 92, !dbg !817
  br i1 %cmp371, label %lor.lhs.false.373, label %for.inc, !dbg !818

lor.lhs.false.373:                                ; preds = %if.end.367
  %87 = load i32, i32* %arrayidx64, align 4, !dbg !819, !tbaa !594
  %sub376 = add i64 %i.01933, 5, !dbg !819
  %arrayidx377 = getelementptr i32, i32* %6, i64 %sub376, !dbg !819
  %88 = load i32, i32* %arrayidx377, align 4, !dbg !819, !tbaa !594
  %cmp378 = icmp eq i32 %87, %88, !dbg !819
  br i1 %cmp378, label %lor.lhs.false.380, label %for.inc, !dbg !820

lor.lhs.false.380:                                ; preds = %lor.lhs.false.373
  %arrayidx383 = getelementptr i8, i8* %call11, i64 %sub376, !dbg !821
  %89 = load i8, i8* %arrayidx383, align 1, !dbg !821, !tbaa !549
  %conv384 = zext i8 %89 to i64, !dbg !821
  %shl385 = shl nuw nsw i64 %conv384, 8, !dbg !821
  %add387 = add i64 %i.01933, 4, !dbg !821
  %arrayidx388 = getelementptr i8, i8* %call11, i64 %add387, !dbg !821
  %90 = load i8, i8* %arrayidx388, align 1, !dbg !821, !tbaa !549
  %conv389 = zext i8 %90 to i64, !dbg !821
  %add390 = or i64 %shl385, %conv389, !dbg !821
  %cmp392 = icmp ne i64 %add213, %add390, !dbg !822
  %cmp395 = icmp eq i8 %.lcssa2153, 104, !dbg !823
  %or.cond1161 = or i1 %cmp395, %cmp392, !dbg !824
  br i1 %or.cond1161, label %for.inc, label %if.end.398, !dbg !824

if.end.398:                                       ; preds = %lor.lhs.false.380
  switch i64 %add213, label %for.inc [
    i64 1, label %if.then.401
    i64 2, label %if.then.405
    i64 3, label %if.then.415
  ], !dbg !825

if.then.401:                                      ; preds = %if.end.398
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx54, i8 9, i64 6, i32 1, i1 false), !dbg !826
  br label %for.inc, !dbg !829

if.then.405:                                      ; preds = %if.end.398
  store i8 2, i8* %arrayidx54, align 1, !dbg !830, !tbaa !549
  %add.ptr408 = getelementptr i8, i8* %arrayidx54, i64 1, !dbg !833
  tail call void @llvm.memset.p0i8.i64(i8* %add.ptr408, i8 9, i64 5, i32 1, i1 false), !dbg !834
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !400, metadata !501), !dbg !510
  br label %for.inc, !dbg !835

if.then.415:                                      ; preds = %if.end.398
  store i8 3, i8* %arrayidx54, align 1, !dbg !836, !tbaa !549
  store i8 2, i8* %arrayidx59, align 1, !dbg !839, !tbaa !549
  %add.ptr420 = getelementptr i8, i8* %arrayidx54, i64 2, !dbg !840
  %91 = bitcast i8* %add.ptr420 to i32*, !dbg !841
  store i32 151587081, i32* %91, align 1, !dbg !841
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !400, metadata !501), !dbg !510
  br label %for.inc, !dbg !842

sw.bb.427:                                        ; preds = %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current
  %.const_stack_top.1.lcssa2170 = phi i64 [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ]
  %conv55.lcssa2162 = phi i32 [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ]
  %cmp428 = icmp sgt i64 %.const_stack_top.1.lcssa2170, 0, !dbg !843
  br i1 %cmp428, label %cond.true.430, label %cond.end.435, !dbg !843

cond.true.430:                                    ; preds = %sw.bb.427
  %add432 = add i64 %.const_stack_top.1.lcssa2170, -1, !dbg !844
  %arrayidx433 = getelementptr i64, i64* %load_const_stack.01927, i64 %add432, !dbg !844
  %92 = load i64, i64* %arrayidx433, align 8, !dbg !844, !tbaa !694
  br label %cond.end.435, !dbg !844

cond.end.435:                                     ; preds = %sw.bb.427, %cond.true.430
  %cond436 = phi i64 [ %92, %cond.true.430 ], [ -1, %sw.bb.427 ], !dbg !843
  %conv437 = trunc i64 %cond436 to i32, !dbg !845
  tail call void @llvm.dbg.value(metadata i32 %conv437, i64 0, metadata !386, metadata !501), !dbg !717
  %cmp438 = icmp sgt i32 %conv437, -1, !dbg !846
  br i1 %cmp438, label %land.lhs.true.440, label %for.inc, !dbg !847

land.lhs.true.440:                                ; preds = %cond.end.435
  %sext1724 = shl i64 %cond436, 32, !dbg !848
  %idxprom441 = ashr exact i64 %sext1724, 32, !dbg !848
  %arrayidx442 = getelementptr i32, i32* %6, i64 %idxprom441, !dbg !848
  %93 = load i32, i32* %arrayidx442, align 4, !dbg !848, !tbaa !594
  %94 = load i32, i32* %arrayidx64, align 4, !dbg !848, !tbaa !594
  %cmp450 = icmp eq i32 %93, %94, !dbg !848
  br i1 %cmp450, label %land.lhs.true.452, label %for.inc, !dbg !849

land.lhs.true.452:                                ; preds = %land.lhs.true.440
  %add455 = add i64 %.const_stack_top.1.lcssa2170, -1, !dbg !850
  %arrayidx456 = getelementptr %struct._object*, %struct._object** %const_stack.01925, i64 %add455, !dbg !850
  %arrayidx456.val = load %struct._object*, %struct._object** %arrayidx456, align 8, !tbaa !672
  %arrayidx456.idx = getelementptr %struct._object*, %struct._object** %arrayidx456, i64 1
  %arrayidx456.idx.val = load %struct._object*, %struct._object** %arrayidx456.idx, align 8, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %arrayidx456.val, i64 0, metadata !466, metadata !501) #3, !dbg !851
  tail call void @llvm.dbg.value(metadata %struct._object* %arrayidx456.idx.val, i64 0, metadata !467, metadata !501) #3, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %conv55, i64 0, metadata !470, metadata !501) #3, !dbg !853
  switch i32 %conv55.lcssa2162, label %sw.default.i [
    i32 19, label %sw.bb.i.1763
    i32 20, label %sw.bb.3.i
    i32 27, label %sw.bb.5.i
    i32 26, label %sw.bb.7.i
    i32 22, label %sw.bb.9.i
    i32 23, label %sw.bb.11.i
    i32 24, label %sw.bb.13.i
    i32 25, label %sw.bb.15.i
    i32 62, label %sw.bb.17.i
    i32 63, label %sw.bb.19.i
    i32 64, label %sw.bb.21.i
    i32 65, label %sw.bb.23.i
    i32 66, label %sw.bb.25.i
  ], !dbg !854

sw.bb.i.1763:                                     ; preds = %land.lhs.true.452
  %call.i.1762 = tail call %struct._object* @PyNumber_Power(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val, %struct._object* nonnull @_Py_NoneStruct) #3, !dbg !855
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1762, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !858

sw.bb.3.i:                                        ; preds = %land.lhs.true.452
  %call4.i = tail call %struct._object* @PyNumber_Multiply(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !859
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !860

sw.bb.5.i:                                        ; preds = %land.lhs.true.452
  %call6.i = tail call %struct._object* @PyNumber_TrueDivide(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !861
  tail call void @llvm.dbg.value(metadata %struct._object* %call6.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !862

sw.bb.7.i:                                        ; preds = %land.lhs.true.452
  %call8.i.1764 = tail call %struct._object* @PyNumber_FloorDivide(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !863
  tail call void @llvm.dbg.value(metadata %struct._object* %call8.i.1764, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !864

sw.bb.9.i:                                        ; preds = %land.lhs.true.452
  %call10.i = tail call %struct._object* @PyNumber_Remainder(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !865
  tail call void @llvm.dbg.value(metadata %struct._object* %call10.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !866

sw.bb.11.i:                                       ; preds = %land.lhs.true.452
  %call12.i = tail call %struct._object* @PyNumber_Add(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !867
  tail call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !868

sw.bb.13.i:                                       ; preds = %land.lhs.true.452
  %call14.i = tail call %struct._object* @PyNumber_Subtract(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !869
  tail call void @llvm.dbg.value(metadata %struct._object* %call14.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !870

sw.bb.15.i:                                       ; preds = %land.lhs.true.452
  %call16.i = tail call %struct._object* @PyObject_GetItem(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !871
  tail call void @llvm.dbg.value(metadata %struct._object* %call16.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !872

sw.bb.17.i:                                       ; preds = %land.lhs.true.452
  %call18.i = tail call %struct._object* @PyNumber_Lshift(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !873
  tail call void @llvm.dbg.value(metadata %struct._object* %call18.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !874

sw.bb.19.i:                                       ; preds = %land.lhs.true.452
  %call20.i = tail call %struct._object* @PyNumber_Rshift(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !875
  tail call void @llvm.dbg.value(metadata %struct._object* %call20.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !876

sw.bb.21.i:                                       ; preds = %land.lhs.true.452
  %call22.i = tail call %struct._object* @PyNumber_And(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !877
  tail call void @llvm.dbg.value(metadata %struct._object* %call22.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !878

sw.bb.23.i:                                       ; preds = %land.lhs.true.452
  %call24.i = tail call %struct._object* @PyNumber_Xor(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !879
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !880

sw.bb.25.i:                                       ; preds = %land.lhs.true.452
  %call26.i = tail call %struct._object* @PyNumber_Or(%struct._object* %arrayidx456.val, %struct._object* %arrayidx456.idx.val) #3, !dbg !881
  tail call void @llvm.dbg.value(metadata %struct._object* %call26.i, i64 0, metadata !465, metadata !501) #3, !dbg !857
  br label %sw.epilog.i, !dbg !882

sw.default.i:                                     ; preds = %land.lhs.true.452
  %95 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !883, !tbaa !672
  %call27.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %conv55.lcssa2162) #3, !dbg !884
  br label %for.inc, !dbg !885

sw.epilog.i:                                      ; preds = %sw.bb.25.i, %sw.bb.23.i, %sw.bb.21.i, %sw.bb.19.i, %sw.bb.17.i, %sw.bb.15.i, %sw.bb.13.i, %sw.bb.11.i, %sw.bb.9.i, %sw.bb.7.i, %sw.bb.5.i, %sw.bb.3.i, %sw.bb.i.1763
  %newconst.0.i.1765 = phi %struct._object* [ %call26.i, %sw.bb.25.i ], [ %call24.i, %sw.bb.23.i ], [ %call22.i, %sw.bb.21.i ], [ %call20.i, %sw.bb.19.i ], [ %call18.i, %sw.bb.17.i ], [ %call16.i, %sw.bb.15.i ], [ %call14.i, %sw.bb.13.i ], [ %call12.i, %sw.bb.11.i ], [ %call10.i, %sw.bb.9.i ], [ %call8.i.1764, %sw.bb.7.i ], [ %call6.i, %sw.bb.5.i ], [ %call4.i, %sw.bb.3.i ], [ %call.i.1762, %sw.bb.i.1763 ], !dbg !886
  %cmp.i.1766 = icmp eq %struct._object* %newconst.0.i.1765, null, !dbg !887
  br i1 %cmp.i.1766, label %if.then.i.1768, label %if.end.31.i, !dbg !889

if.then.i.1768:                                   ; preds = %sw.epilog.i
  %96 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8, !dbg !890, !tbaa !672
  %call29.i = tail call i32 @PyErr_ExceptionMatches(%struct._object* %96) #3, !dbg !893
  %tobool.i.1767 = icmp eq i32 %call29.i, 0, !dbg !893
  br i1 %tobool.i.1767, label %if.then.30.i, label %for.inc, !dbg !894

if.then.30.i:                                     ; preds = %if.then.i.1768
  tail call void @PyErr_Clear() #3, !dbg !895
  br label %for.inc, !dbg !895

if.end.31.i:                                      ; preds = %sw.epilog.i
  %call32.i = tail call i64 @PyObject_Size(%struct._object* %newconst.0.i.1765) #3, !dbg !896
  tail call void @llvm.dbg.value(metadata i64 %call32.i, i64 0, metadata !469, metadata !501) #3, !dbg !897
  %cmp33.i = icmp eq i64 %call32.i, -1, !dbg !898
  br i1 %cmp33.i, label %if.then.35.i, label %if.else.i.1769, !dbg !899

if.then.35.i:                                     ; preds = %if.end.31.i
  %97 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8, !dbg !900, !tbaa !672
  %call36.i = tail call i32 @PyErr_ExceptionMatches(%struct._object* %97) #3, !dbg !903
  %tobool37.i = icmp eq i32 %call36.i, 0, !dbg !903
  br i1 %tobool37.i, label %if.end.39.i, label %for.inc, !dbg !904

if.end.39.i:                                      ; preds = %if.then.35.i
  tail call void @PyErr_Clear() #3, !dbg !905
  br label %if.end.49.i, !dbg !906

if.else.i.1769:                                   ; preds = %if.end.31.i
  %cmp40.i = icmp sgt i64 %call32.i, 20, !dbg !907
  br i1 %cmp40.i, label %do.body.i, label %if.end.49.i, !dbg !908

do.body.i:                                        ; preds = %if.else.i.1769
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i.1765, i64 0, metadata !471, metadata !501) #3, !dbg !909
  %ob_refcnt.i.1770 = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1765, i64 0, i32 0, !dbg !911
  %98 = load i64, i64* %ob_refcnt.i.1770, align 8, !dbg !911, !tbaa !752
  %dec.i.1771 = add i64 %98, -1, !dbg !911
  store i64 %dec.i.1771, i64* %ob_refcnt.i.1770, align 8, !dbg !911, !tbaa !752
  %cmp43.i = icmp eq i64 %dec.i.1771, 0, !dbg !911
  br i1 %cmp43.i, label %if.else.46.i, label %for.inc, !dbg !913

if.else.46.i:                                     ; preds = %do.body.i
  %ob_type.i.1772 = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1765, i64 0, i32 1, !dbg !914
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.1772, align 8, !dbg !914, !tbaa !767
  %tp_dealloc.i.1773 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i64 0, i32 4, !dbg !914
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.1773, align 8, !dbg !914, !tbaa !768
  tail call void %100(%struct._object* %newconst.0.i.1765) #3, !dbg !914
  br label %for.inc, !dbg !886

if.end.49.i:                                      ; preds = %if.else.i.1769, %if.end.39.i
  %101 = load i64, i64* %16, align 8, !dbg !916, !tbaa !520
  tail call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !468, metadata !501) #3, !dbg !917
  %call50.i = tail call i32 @PyList_Append(%struct._object* %consts, %struct._object* %newconst.0.i.1765) #3, !dbg !918
  %tobool51.i = icmp eq i32 %call50.i, 0, !dbg !918
  %ob_refcnt69.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1765, i64 0, i32 0, !dbg !919
  %102 = load i64, i64* %ob_refcnt69.i, align 8, !dbg !919, !tbaa !752
  %dec70.i = add i64 %102, -1, !dbg !919
  store i64 %dec70.i, i64* %ob_refcnt69.i, align 8, !dbg !919, !tbaa !752
  %cmp71.i = icmp eq i64 %dec70.i, 0, !dbg !919
  br i1 %tobool51.i, label %do.body.67.i, label %do.body.53.i, !dbg !921

do.body.53.i:                                     ; preds = %if.end.49.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i.1765, i64 0, metadata !476, metadata !501) #3, !dbg !922
  br i1 %cmp71.i, label %if.else.60.i, label %for.inc, !dbg !924

if.else.60.i:                                     ; preds = %do.body.53.i
  %ob_type61.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1765, i64 0, i32 1, !dbg !925
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type61.i, align 8, !dbg !925, !tbaa !767
  %tp_dealloc62.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i64 0, i32 4, !dbg !925
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62.i, align 8, !dbg !925, !tbaa !768
  tail call void %104(%struct._object* %newconst.0.i.1765) #3, !dbg !925
  br label %for.inc, !dbg !886

do.body.67.i:                                     ; preds = %if.end.49.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i.1765, i64 0, metadata !480, metadata !501) #3, !dbg !928
  br i1 %cmp71.i, label %if.else.74.i, label %if.then.459, !dbg !930

if.else.74.i:                                     ; preds = %do.body.67.i
  %ob_type75.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1765, i64 0, i32 1, !dbg !931
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type75.i, align 8, !dbg !931, !tbaa !767
  %tp_dealloc76.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i64 0, i32 4, !dbg !931
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76.i, align 8, !dbg !931, !tbaa !768
  tail call void %106(%struct._object* %newconst.0.i.1765) #3, !dbg !931
  br label %if.then.459, !dbg !886

if.then.459:                                      ; preds = %if.else.74.i, %do.body.67.i
  %arrayidx80.i = getelementptr i8, i8* %arrayidx54, i64 -2, !dbg !933
  store i8 100, i8* %arrayidx80.i, align 1, !dbg !934, !tbaa !549
  %shr.142.i = lshr i64 %101, 8, !dbg !935
  %conv81.i = trunc i64 %shr.142.i to i8, !dbg !935
  store i8 %conv81.i, i8* %arrayidx54, align 1, !dbg !935, !tbaa !549
  %conv83.i = trunc i64 %101 to i8, !dbg !935
  %arrayidx84.i = getelementptr i8, i8* %arrayidx54, i64 -1, !dbg !935
  store i8 %conv83.i, i8* %arrayidx84.i, align 1, !dbg !935, !tbaa !549
  %sub460 = add i64 %i.01933, -2, !dbg !936
  tail call void @llvm.dbg.value(metadata i64 %sub460, i64 0, metadata !382, metadata !501), !dbg !937
  %arrayidx462 = getelementptr i8, i8* %call11, i64 %idxprom441, !dbg !938
  %sub464 = sub i64 %sub460, %idxprom441, !dbg !939
  tail call void @llvm.memset.p0i8.i64(i8* %arrayidx462, i8 9, i64 %sub464, i32 1, i1 false), !dbg !940
  %107 = load i8, i8* %arrayidx54, align 1, !dbg !941, !tbaa !549
  %conv473 = zext i8 %107 to i64, !dbg !941
  %shl474 = shl nuw nsw i64 %conv473, 8, !dbg !941
  %add475 = add i64 %i.01933, -1, !dbg !941
  %arrayidx476 = getelementptr i8, i8* %call11, i64 %add475, !dbg !941
  %108 = load i8, i8* %arrayidx476, align 1, !dbg !941, !tbaa !549
  %conv477 = zext i8 %108 to i64, !dbg !941
  %add478 = or i64 %shl474, %conv477, !dbg !941
  %109 = load %struct._object**, %struct._object*** %15, align 8, !dbg !941, !tbaa !670
  %arrayidx481 = getelementptr %struct._object*, %struct._object** %109, i64 %add478, !dbg !941
  %110 = bitcast %struct._object** %arrayidx481 to i64*, !dbg !941
  %111 = load i64, i64* %110, align 8, !dbg !941, !tbaa !672
  tail call void @llvm.dbg.value(metadata i64 %add455, i64 0, metadata !400, metadata !501), !dbg !510
  %cmp483 = icmp slt i64 %add455, %const_stack_size.01930, !dbg !943
  br i1 %cmp483, label %cleanup.512.thread, label %if.then.485, !dbg !945

if.then.485:                                      ; preds = %if.then.459
  %mul486 = shl i64 %const_stack_size.01930, 1, !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %mul486, i64 0, metadata !401, metadata !501), !dbg !511
  %cmp487 = icmp ugt i64 %mul486, 1152921504606846975, !dbg !946
  br i1 %cmp487, label %cleanup.512, label %cond.end.501, !dbg !946

cond.end.501:                                     ; preds = %if.then.485
  %112 = bitcast %struct._object** %const_stack.01925 to i8*, !dbg !949
  %mul491 = shl i64 %const_stack_size.01930, 4, !dbg !949
  %call492 = tail call i8* @PyMem_Realloc(i8* %112, i64 %mul491) #3, !dbg !949
  %113 = bitcast i8* %call492 to %struct._object**, !dbg !949
  tail call void @llvm.dbg.value(metadata %struct._object** %113, i64 0, metadata !398, metadata !501), !dbg !508
  %114 = bitcast i64* %load_const_stack.01927 to i8*, !dbg !951
  %call500 = tail call i8* @PyMem_Realloc(i8* %114, i64 %mul491) #3, !dbg !951
  %115 = bitcast i8* %call500 to i64*, !dbg !951
  tail call void @llvm.dbg.value(metadata i64* %115, i64 0, metadata !399, metadata !501), !dbg !509
  %tobool503 = icmp ne i8* %call492, null, !dbg !953
  %tobool505 = icmp ne i8* %call500, null, !dbg !955
  %or.cond1162 = and i1 %tobool503, %tobool505, !dbg !953
  br i1 %or.cond1162, label %cleanup.512.thread, label %cleanup.512, !dbg !953

cleanup.512.thread:                               ; preds = %cond.end.501, %if.then.459
  %const_stack.5 = phi %struct._object** [ %113, %cond.end.501 ], [ %const_stack.01925, %if.then.459 ]
  %load_const_stack.5 = phi i64* [ %115, %cond.end.501 ], [ %load_const_stack.01927, %if.then.459 ]
  %const_stack_size.5 = phi i64 [ %mul486, %cond.end.501 ], [ %const_stack_size.01930, %if.then.459 ]
  %arrayidx510 = getelementptr i64, i64* %load_const_stack.5, i64 %add455, !dbg !957
  store i64 %sub460, i64* %arrayidx510, align 8, !dbg !957, !tbaa !694
  %arrayidx511 = getelementptr %struct._object*, %struct._object** %const_stack.5, i64 %add455, !dbg !957
  %116 = bitcast %struct._object** %arrayidx511 to i64*, !dbg !957
  store i64 %111, i64* %116, align 8, !dbg !957, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !402, metadata !501), !dbg !512
  br label %for.inc

cleanup.512:                                      ; preds = %if.then.485, %cond.end.501
  %cond5021821 = phi i64* [ %115, %cond.end.501 ], [ null, %if.then.485 ]
  %cond49418161820 = phi %struct._object** [ %113, %cond.end.501 ], [ null, %if.then.485 ]
  %call507 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !960
  br label %do.body.1105

sw.bb.518:                                        ; preds = %reoptimize_current, %reoptimize_current, %reoptimize_current
  %.const_stack_top.1.lcssa2171 = phi i64 [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ]
  %conv55.lcssa2163 = phi i32 [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ]
  %cmp519 = icmp sgt i64 %.const_stack_top.1.lcssa2171, -1, !dbg !964
  br i1 %cmp519, label %cond.true.521, label %cond.end.526, !dbg !964

cond.true.521:                                    ; preds = %sw.bb.518
  %arrayidx524 = getelementptr i64, i64* %load_const_stack.01927, i64 %.const_stack_top.1.lcssa2171, !dbg !965
  %117 = load i64, i64* %arrayidx524, align 8, !dbg !965, !tbaa !694
  br label %cond.end.526, !dbg !965

cond.end.526:                                     ; preds = %sw.bb.518, %cond.true.521
  %cond527 = phi i64 [ %117, %cond.true.521 ], [ -1, %sw.bb.518 ], !dbg !964
  %conv528 = trunc i64 %cond527 to i32, !dbg !966
  tail call void @llvm.dbg.value(metadata i32 %conv528, i64 0, metadata !386, metadata !501), !dbg !717
  %cmp529 = icmp sgt i32 %conv528, -1, !dbg !967
  br i1 %cmp529, label %land.lhs.true.531, label %for.inc, !dbg !968

land.lhs.true.531:                                ; preds = %cond.end.526
  %sext1722 = shl i64 %cond527, 32, !dbg !969
  %idxprom532 = ashr exact i64 %sext1722, 32, !dbg !969
  %arrayidx533 = getelementptr i32, i32* %6, i64 %idxprom532, !dbg !969
  %118 = load i32, i32* %arrayidx533, align 4, !dbg !969, !tbaa !594
  %119 = load i32, i32* %arrayidx64, align 4, !dbg !969, !tbaa !594
  %cmp541 = icmp eq i32 %118, %119, !dbg !969
  br i1 %cmp541, label %land.lhs.true.543, label %for.inc, !dbg !970

land.lhs.true.543:                                ; preds = %land.lhs.true.531
  %sub544 = add i64 %i.01933, -3, !dbg !971
  %arrayidx545 = getelementptr i8, i8* %call11, i64 %sub544, !dbg !972
  %arrayidx546 = getelementptr %struct._object*, %struct._object** %const_stack.01925, i64 %.const_stack_top.1.lcssa2171, !dbg !973
  %120 = load %struct._object*, %struct._object** %arrayidx546, align 8, !dbg !973, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %arrayidx545, i64 0, metadata !486, metadata !501) #3, !dbg !974
  tail call void @llvm.dbg.value(metadata %struct._object* %consts, i64 0, metadata !487, metadata !501) #3, !dbg !976
  tail call void @llvm.dbg.value(metadata %struct._object* %120, i64 0, metadata !488, metadata !501) #3, !dbg !977
  %arrayidx.i.1775 = getelementptr i8, i8* %arrayidx545, i64 3, !dbg !978
  tail call void @llvm.dbg.value(metadata i32 %conv55, i64 0, metadata !491, metadata !501) #3, !dbg !979
  switch i32 %conv55.lcssa2163, label %sw.default.i.1781 [
    i32 11, label %sw.bb.i.1778
    i32 15, label %sw.bb.1.i
    i32 10, label %sw.bb.3.i.1780
  ], !dbg !980

sw.bb.i.1778:                                     ; preds = %land.lhs.true.543
  %call.i.1777 = tail call %struct._object* @PyNumber_Negative(%struct._object* %120) #3, !dbg !981
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1777, i64 0, metadata !489, metadata !501) #3, !dbg !983
  br label %sw.epilog.i.1784, !dbg !984

sw.bb.1.i:                                        ; preds = %land.lhs.true.543
  %call2.i = tail call %struct._object* @PyNumber_Invert(%struct._object* %120) #3, !dbg !985
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !489, metadata !501) #3, !dbg !983
  br label %sw.epilog.i.1784, !dbg !986

sw.bb.3.i.1780:                                   ; preds = %land.lhs.true.543
  %call4.i.1779 = tail call %struct._object* @PyNumber_Positive(%struct._object* %120) #3, !dbg !987
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i.1779, i64 0, metadata !489, metadata !501) #3, !dbg !983
  br label %sw.epilog.i.1784, !dbg !988

sw.default.i.1781:                                ; preds = %land.lhs.true.543
  %121 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !989, !tbaa !672
  %call5.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %conv55.lcssa2163) #3, !dbg !990
  br label %for.inc, !dbg !991

sw.epilog.i.1784:                                 ; preds = %sw.bb.3.i.1780, %sw.bb.1.i, %sw.bb.i.1778
  %newconst.0.i.1782 = phi %struct._object* [ %call4.i.1779, %sw.bb.3.i.1780 ], [ %call2.i, %sw.bb.1.i ], [ %call.i.1777, %sw.bb.i.1778 ], !dbg !992
  %cmp.i.1783 = icmp eq %struct._object* %newconst.0.i.1782, null, !dbg !993
  br i1 %cmp.i.1783, label %if.then.i.1786, label %if.end.9.i, !dbg !995

if.then.i.1786:                                   ; preds = %sw.epilog.i.1784
  %122 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8, !dbg !996, !tbaa !672
  %call7.i = tail call i32 @PyErr_ExceptionMatches(%struct._object* %122) #3, !dbg !999
  %tobool.i.1785 = icmp eq i32 %call7.i, 0, !dbg !999
  br i1 %tobool.i.1785, label %if.then.8.i, label %for.inc, !dbg !1000

if.then.8.i:                                      ; preds = %if.then.i.1786
  tail call void @PyErr_Clear() #3, !dbg !1001
  br label %for.inc, !dbg !1001

if.end.9.i:                                       ; preds = %sw.epilog.i.1784
  %123 = load i64, i64* %16, align 8, !dbg !1002, !tbaa !520
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !490, metadata !501) #3, !dbg !1003
  %call10.i.1787 = tail call i32 @PyList_Append(%struct._object* %consts, %struct._object* %newconst.0.i.1782) #3, !dbg !1004
  %tobool11.i = icmp eq i32 %call10.i.1787, 0, !dbg !1004
  %ob_refcnt20.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1782, i64 0, i32 0, !dbg !1005
  %124 = load i64, i64* %ob_refcnt20.i, align 8, !dbg !1005, !tbaa !752
  %dec21.i = add i64 %124, -1, !dbg !1005
  store i64 %dec21.i, i64* %ob_refcnt20.i, align 8, !dbg !1005, !tbaa !752
  %cmp22.i = icmp eq i64 %dec21.i, 0, !dbg !1005
  br i1 %tobool11.i, label %do.body.18.i, label %do.body.i.1788, !dbg !1007

do.body.i.1788:                                   ; preds = %if.end.9.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i.1782, i64 0, metadata !492, metadata !501) #3, !dbg !1008
  br i1 %cmp22.i, label %if.else.i.1791, label %if.end.16.i, !dbg !1010

if.else.i.1791:                                   ; preds = %do.body.i.1788
  %ob_type.i.1789 = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1782, i64 0, i32 1, !dbg !1011
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.1789, align 8, !dbg !1011, !tbaa !767
  %tp_dealloc.i.1790 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i64 0, i32 4, !dbg !1011
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.1790, align 8, !dbg !1011, !tbaa !768
  tail call void %126(%struct._object* %newconst.0.i.1782) #3, !dbg !1011
  br label %if.end.16.i, !dbg !992

if.end.16.i:                                      ; preds = %if.else.i.1791, %do.body.i.1788
  tail call void @PyErr_Clear() #3, !dbg !1014
  br label %for.inc, !dbg !1015

do.body.18.i:                                     ; preds = %if.end.9.i
  tail call void @llvm.dbg.value(metadata %struct._object* %newconst.0.i.1782, i64 0, metadata !496, metadata !501) #3, !dbg !1016
  br i1 %cmp22.i, label %if.else.25.i, label %if.then.549, !dbg !1018

if.else.25.i:                                     ; preds = %do.body.18.i
  %ob_type26.i = getelementptr inbounds %struct._object, %struct._object* %newconst.0.i.1782, i64 0, i32 1, !dbg !1019
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type26.i, align 8, !dbg !1019, !tbaa !767
  %tp_dealloc27.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i64 0, i32 4, !dbg !1019
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27.i, align 8, !dbg !1019, !tbaa !768
  tail call void %128(%struct._object* %newconst.0.i.1782) #3, !dbg !1019
  br label %if.then.549, !dbg !992

if.then.549:                                      ; preds = %if.else.25.i, %do.body.18.i
  store i8 9, i8* %arrayidx545, align 1, !dbg !1021, !tbaa !549
  %arrayidx32.i = getelementptr i8, i8* %arrayidx545, i64 1, !dbg !1022
  store i8 100, i8* %arrayidx32.i, align 1, !dbg !1023, !tbaa !549
  %shr.60.i = lshr i64 %123, 8, !dbg !1024
  %conv33.i = trunc i64 %shr.60.i to i8, !dbg !1024
  store i8 %conv33.i, i8* %arrayidx.i.1775, align 1, !dbg !1024, !tbaa !549
  %conv35.i = trunc i64 %123 to i8, !dbg !1024
  %arrayidx36.i = getelementptr i8, i8* %arrayidx545, i64 2, !dbg !1024
  store i8 %conv35.i, i8* %arrayidx36.i, align 1, !dbg !1024, !tbaa !549
  %sub550 = add i64 %i.01933, -2, !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %sub550, i64 0, metadata !382, metadata !501), !dbg !937
  %add564 = and i64 %123, 65535, !dbg !1026
  %129 = load %struct._object**, %struct._object*** %15, align 8, !dbg !1026, !tbaa !670
  %arrayidx567 = getelementptr %struct._object*, %struct._object** %129, i64 %add564, !dbg !1026
  %130 = bitcast %struct._object** %arrayidx567 to i64*, !dbg !1026
  %131 = load i64, i64* %130, align 8, !dbg !1026, !tbaa !672
  tail call void @llvm.dbg.value(metadata i64 %.const_stack_top.1, i64 0, metadata !400, metadata !501), !dbg !510
  %cmp569 = icmp slt i64 %.const_stack_top.1.lcssa2171, %const_stack_size.01930, !dbg !1028
  br i1 %cmp569, label %cleanup.598.thread, label %if.then.571, !dbg !1030

if.then.571:                                      ; preds = %if.then.549
  %mul572 = shl i64 %const_stack_size.01930, 1, !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %mul572, i64 0, metadata !401, metadata !501), !dbg !511
  %cmp573 = icmp ugt i64 %mul572, 1152921504606846975, !dbg !1031
  br i1 %cmp573, label %cleanup.598, label %cond.end.587, !dbg !1031

cond.end.587:                                     ; preds = %if.then.571
  %132 = bitcast %struct._object** %const_stack.01925 to i8*, !dbg !1034
  %mul577 = shl i64 %const_stack_size.01930, 4, !dbg !1034
  %call578 = tail call i8* @PyMem_Realloc(i8* %132, i64 %mul577) #3, !dbg !1034
  %133 = bitcast i8* %call578 to %struct._object**, !dbg !1034
  tail call void @llvm.dbg.value(metadata %struct._object** %133, i64 0, metadata !398, metadata !501), !dbg !508
  %134 = bitcast i64* %load_const_stack.01927 to i8*, !dbg !1036
  %call586 = tail call i8* @PyMem_Realloc(i8* %134, i64 %mul577) #3, !dbg !1036
  %135 = bitcast i8* %call586 to i64*, !dbg !1036
  tail call void @llvm.dbg.value(metadata i64* %135, i64 0, metadata !399, metadata !501), !dbg !509
  %tobool589 = icmp ne i8* %call578, null, !dbg !1038
  %tobool591 = icmp ne i8* %call586, null, !dbg !1040
  %or.cond1163 = and i1 %tobool589, %tobool591, !dbg !1038
  br i1 %or.cond1163, label %cleanup.598.thread, label %cleanup.598, !dbg !1038

cleanup.598.thread:                               ; preds = %cond.end.587, %if.then.549
  %const_stack.7 = phi %struct._object** [ %133, %cond.end.587 ], [ %const_stack.01925, %if.then.549 ]
  %load_const_stack.7 = phi i64* [ %135, %cond.end.587 ], [ %load_const_stack.01927, %if.then.549 ]
  %const_stack_size.7 = phi i64 [ %mul572, %cond.end.587 ], [ %const_stack_size.01930, %if.then.549 ]
  %arrayidx596 = getelementptr i64, i64* %load_const_stack.7, i64 %.const_stack_top.1.lcssa2171, !dbg !1042
  store i64 %sub550, i64* %arrayidx596, align 8, !dbg !1042, !tbaa !694
  %arrayidx597 = getelementptr %struct._object*, %struct._object** %const_stack.7, i64 %.const_stack_top.1.lcssa2171, !dbg !1042
  %136 = bitcast %struct._object** %arrayidx597 to i64*, !dbg !1042
  store i64 %131, i64* %136, align 8, !dbg !1042, !tbaa !672
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !402, metadata !501), !dbg !512
  br label %for.inc

cleanup.598:                                      ; preds = %if.then.571, %cond.end.587
  %cond5881828 = phi i64* [ %135, %cond.end.587 ], [ null, %if.then.571 ]
  %cond58018231827 = phi %struct._object** [ %133, %cond.end.587 ], [ null, %if.then.571 ]
  %call593 = tail call %struct._object* @PyErr_NoMemory() #3, !dbg !1045
  br label %do.body.1105

sw.bb.604:                                        ; preds = %reoptimize_current, %reoptimize_current
  %137 = load i8, i8* %arrayidx78, align 1, !dbg !1049, !tbaa !549
  %conv607 = zext i8 %137 to i64, !dbg !1049
  %shl608 = shl nuw nsw i64 %conv607, 8, !dbg !1049
  %138 = load i8, i8* %arrayidx59, align 1, !dbg !1049, !tbaa !549
  %conv611 = zext i8 %138 to i64, !dbg !1049
  %add612 = or i64 %shl608, %conv611, !dbg !1049
  %switch.tableidx = add i8 %17, -111, !dbg !1049
  %139 = icmp ult i8 %switch.tableidx, 9, !dbg !1049
  br i1 %139, label %switch.hole_check, label %cond.false.644, !dbg !1049

cond.false.644:                                   ; preds = %switch.hole_check, %sw.bb.604
  br label %cond.end.646, !dbg !1050

switch.hole_check:                                ; preds = %sw.bb.604
  %switch.maskindex = zext i8 %switch.tableidx to i16, !dbg !1049
  %switch.shifted = lshr i16 287, %switch.maskindex, !dbg !1049
  %140 = and i16 %switch.shifted, 1, !dbg !1049
  %switch.lobit = icmp eq i16 %140, 0, !dbg !1049
  br i1 %switch.lobit, label %cond.false.644, label %cond.end.646, !dbg !1049

cond.end.646:                                     ; preds = %switch.hole_check, %cond.false.644
  %cond647 = phi i64 [ %sub66, %cond.false.644 ], [ 0, %switch.hole_check ], !dbg !1049
  %add648 = add i64 %cond647, %add612, !dbg !1052
  %conv649 = trunc i64 %add648 to i32, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %conv649, i64 0, metadata !388, metadata !501), !dbg !1055
  %sext1717 = shl i64 %add648, 32, !dbg !1056
  %idxprom650 = ashr exact i64 %sext1717, 32, !dbg !1056
  %arrayidx651 = getelementptr i8, i8* %call11, i64 %idxprom650, !dbg !1056
  %141 = load i8, i8* %arrayidx651, align 1, !dbg !1056, !tbaa !549
  switch i8 %141, label %sw.bb.762 [
    i8 115, label %if.then.664
    i8 114, label %if.then.664
    i8 112, label %if.then.664
    i8 111, label %if.then.664
  ], !dbg !1057

if.then.664:                                      ; preds = %cond.end.646, %cond.end.646, %cond.end.646, %cond.end.646
  %cmp662 = icmp eq i8 %141, 112, !dbg !1059
  %cmp656 = icmp eq i8 %141, 115, !dbg !1061
  %142 = or i1 %cmp656, %cmp662, !dbg !1063
  %cmp669 = icmp eq i8 %17, 115, !dbg !1066
  %cmp672 = icmp eq i8 %17, 112, !dbg !1067
  %143 = or i1 %cmp669, %cmp672, !dbg !1066
  %cmp676tmp = xor i1 %143, %142, !dbg !1069
  br i1 %cmp676tmp, label %if.else.740, label %if.then.678, !dbg !1070

if.then.678:                                      ; preds = %if.then.664
  %sext1719 = add i64 %sext1717, 8589934592, !dbg !1071
  %idxprom680 = ashr exact i64 %sext1719, 32, !dbg !1071
  %arrayidx681 = getelementptr i8, i8* %call11, i64 %idxprom680, !dbg !1071
  %144 = load i8, i8* %arrayidx681, align 1, !dbg !1071, !tbaa !549
  %conv682 = zext i8 %144 to i32, !dbg !1071
  %shl683 = shl nuw nsw i32 %conv682, 8, !dbg !1071
  %sext1720 = add i64 %sext1717, 4294967296, !dbg !1071
  %idxprom685 = ashr exact i64 %sext1720, 32, !dbg !1071
  %arrayidx686 = getelementptr i8, i8* %call11, i64 %idxprom685, !dbg !1071
  %145 = load i8, i8* %arrayidx686, align 1, !dbg !1071, !tbaa !549
  %conv687 = zext i8 %145 to i32, !dbg !1071
  %add688 = or i32 %shl683, %conv687, !dbg !1071
  %switch.tableidx1740 = add i8 %141, -111, !dbg !1071
  %146 = icmp ult i8 %switch.tableidx1740, 9, !dbg !1071
  br i1 %146, label %switch.hole_check1741, label %cond.false.725, !dbg !1071

cond.false.725:                                   ; preds = %switch.hole_check1741, %if.then.678
  %add726 = add i32 %conv649, 3, !dbg !1073
  br label %cond.end.727, !dbg !1073

switch.hole_check1741:                            ; preds = %if.then.678
  %switch.maskindex1742 = zext i8 %switch.tableidx1740 to i16, !dbg !1071
  %switch.shifted1743 = lshr i16 287, %switch.maskindex1742, !dbg !1071
  %147 = and i16 %switch.shifted1743, 1, !dbg !1071
  %switch.lobit1744 = icmp eq i16 %147, 0, !dbg !1071
  br i1 %switch.lobit1744, label %cond.false.725, label %cond.end.727, !dbg !1071

cond.end.727:                                     ; preds = %switch.hole_check1741, %cond.false.725
  %cond728 = phi i32 [ %add726, %cond.false.725 ], [ 0, %switch.hole_check1741 ], !dbg !1071
  %add729 = add i32 %cond728, %add688, !dbg !1075
  tail call void @llvm.dbg.value(metadata i32 %add729, i64 0, metadata !389, metadata !501), !dbg !1078
  store i8 %141, i8* %arrayidx54, align 1, !dbg !1079, !tbaa !549
  %shr732.1721 = lshr i32 %add729, 8, !dbg !1080
  %conv733 = trunc i32 %shr732.1721 to i8, !dbg !1080
  store i8 %conv733, i8* %arrayidx78, align 1, !dbg !1080, !tbaa !549
  %conv737 = trunc i32 %add729 to i8, !dbg !1080
  store i8 %conv737, i8* %arrayidx59, align 1, !dbg !1080, !tbaa !549
  br label %reoptimize_current.backedge, !dbg !1081

if.else.740:                                      ; preds = %if.then.664
  switch i8 %17, label %if.else.748 [
    i8 115, label %if.end.750
    i8 112, label %if.end.750
  ], !dbg !1082

if.else.748:                                      ; preds = %if.else.740
  br label %if.end.750

if.end.750:                                       ; preds = %if.else.740, %if.else.740, %if.else.748
  %storemerge = phi i8 [ 114, %if.else.748 ], [ 115, %if.else.740 ], [ 115, %if.else.740 ]
  store i8 %storemerge, i8* %arrayidx54, align 1, !dbg !1085, !tbaa !549
  %add751 = add i32 %conv649, 3, !dbg !1086
  %shr752.1718 = lshr i32 %add751, 8, !dbg !1086
  %conv753 = trunc i32 %shr752.1718 to i8, !dbg !1086
  store i8 %conv753, i8* %arrayidx78, align 1, !dbg !1086, !tbaa !549
  %conv758 = trunc i32 %add751 to i8, !dbg !1086
  store i8 %conv758, i8* %arrayidx59, align 1, !dbg !1086, !tbaa !549
  br label %reoptimize_current.backedge, !dbg !1087

sw.bb.762:                                        ; preds = %cond.end.646, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current, %reoptimize_current
  %.const_stack_top.1.lcssa2172 = phi i64 [ %.const_stack_top.1, %cond.end.646 ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %reoptimize_current ]
  %conv55.lcssa2164 = phi i32 [ %conv55, %cond.end.646 ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ], [ %conv55, %reoptimize_current ]
  %.lcssa2156 = phi i8 [ %17, %cond.end.646 ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ], [ %17, %reoptimize_current ]
  %148 = load i8, i8* %arrayidx78, align 1, !dbg !1088, !tbaa !549
  %conv765 = zext i8 %148 to i64, !dbg !1088
  %shl766 = shl nuw nsw i64 %conv765, 8, !dbg !1088
  %149 = load i8, i8* %arrayidx59, align 1, !dbg !1088, !tbaa !549
  %conv769 = zext i8 %149 to i64, !dbg !1088
  %add770 = or i64 %shl766, %conv769, !dbg !1088
  %switch.tableidx1745 = add i8 %.lcssa2156, -111, !dbg !1088
  %150 = icmp ult i8 %switch.tableidx1745, 9, !dbg !1088
  br i1 %150, label %switch.hole_check1746, label %cond.false.802, !dbg !1088

cond.false.802:                                   ; preds = %switch.hole_check1746, %sw.bb.762
  br label %cond.end.804, !dbg !1089

switch.hole_check1746:                            ; preds = %sw.bb.762
  %switch.maskindex1747 = zext i8 %switch.tableidx1745 to i16, !dbg !1088
  %switch.shifted1748 = lshr i16 287, %switch.maskindex1747, !dbg !1088
  %151 = and i16 %switch.shifted1748, 1, !dbg !1088
  %switch.lobit1749 = icmp eq i16 %151, 0, !dbg !1088
  br i1 %switch.lobit1749, label %cond.false.802, label %cond.end.804, !dbg !1088

cond.end.804:                                     ; preds = %switch.hole_check1746, %cond.false.802
  %cond805 = phi i64 [ %sub66, %cond.false.802 ], [ 0, %switch.hole_check1746 ], !dbg !1088
  %add806 = add i64 %cond805, %add770, !dbg !1090
  %conv807 = trunc i64 %add806 to i32, !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 %conv807, i64 0, metadata !388, metadata !501), !dbg !1055
  %cmp811 = icmp eq i8 %.lcssa2156, 110, !dbg !1091
  switch i8 %.lcssa2156, label %cond.end.804.if.end.823_crit_edge [
    i8 113, label %land.lhs.true.813
    i8 110, label %land.lhs.true.813
  ], !dbg !1094

cond.end.804.if.end.823_crit_edge:                ; preds = %cond.end.804
  %.pre1984 = shl i64 %add806, 32, !dbg !1095
  %.pre1985 = ashr exact i64 %.pre1984, 32, !dbg !1095
  %.pre1986 = getelementptr i8, i8* %call11, i64 %.pre1985, !dbg !1095
  br label %if.end.823, !dbg !1094

land.lhs.true.813:                                ; preds = %cond.end.804, %cond.end.804
  %sext1715 = shl i64 %add806, 32, !dbg !1097
  %idxprom814 = ashr exact i64 %sext1715, 32, !dbg !1097
  %arrayidx815 = getelementptr i8, i8* %call11, i64 %idxprom814, !dbg !1097
  %152 = load i8, i8* %arrayidx815, align 1, !dbg !1097, !tbaa !549
  %cmp817 = icmp eq i8 %152, 83, !dbg !1098
  br i1 %cmp817, label %if.then.819, label %if.end.823, !dbg !1099

if.then.819:                                      ; preds = %land.lhs.true.813
  store i8 83, i8* %arrayidx54, align 1, !dbg !1100, !tbaa !549
  %add.ptr822 = getelementptr i8, i8* %arrayidx54, i64 1, !dbg !1102
  %153 = bitcast i8* %add.ptr822 to i16*, !dbg !1103
  store i16 2313, i16* %153, align 1, !dbg !1103
  br label %for.inc, !dbg !1104

if.end.823:                                       ; preds = %cond.end.804.if.end.823_crit_edge, %land.lhs.true.813
  %arrayidx825.pre-phi = phi i8* [ %.pre1986, %cond.end.804.if.end.823_crit_edge ], [ %arrayidx815, %land.lhs.true.813 ], !dbg !1095
  %sext1709.pre-phi = phi i64 [ %.pre1984, %cond.end.804.if.end.823_crit_edge ], [ %sext1715, %land.lhs.true.813 ], !dbg !1095
  %154 = load i8, i8* %arrayidx825.pre-phi, align 1, !dbg !1105, !tbaa !549
  switch i8 %154, label %for.inc [
    i8 113, label %if.end.836
    i8 110, label %if.end.836
  ], !dbg !1095

if.end.836:                                       ; preds = %if.end.823, %if.end.823
  %sext1710 = add i64 %sext1709.pre-phi, 8589934592, !dbg !1105
  %idxprom838 = ashr exact i64 %sext1710, 32, !dbg !1105
  %arrayidx839 = getelementptr i8, i8* %call11, i64 %idxprom838, !dbg !1105
  %155 = load i8, i8* %arrayidx839, align 1, !dbg !1105, !tbaa !549
  %conv840 = zext i8 %155 to i32, !dbg !1105
  %shl841 = shl nuw nsw i32 %conv840, 8, !dbg !1105
  %sext1711 = add i64 %sext1709.pre-phi, 4294967296, !dbg !1105
  %idxprom843 = ashr exact i64 %sext1711, 32, !dbg !1105
  %arrayidx844 = getelementptr i8, i8* %call11, i64 %idxprom843, !dbg !1105
  %156 = load i8, i8* %arrayidx844, align 1, !dbg !1105, !tbaa !549
  %conv845 = zext i8 %156 to i32, !dbg !1105
  %add846 = or i32 %shl841, %conv845, !dbg !1105
  %switch.tableidx1750 = add i8 %154, -111, !dbg !1105
  %157 = icmp ult i8 %switch.tableidx1750, 9, !dbg !1105
  br i1 %157, label %switch.hole_check1751, label %cond.false.883, !dbg !1105

cond.false.883:                                   ; preds = %switch.hole_check1751, %if.end.836
  %add884 = add i32 %conv807, 3, !dbg !1106
  br label %cond.end.885, !dbg !1106

switch.hole_check1751:                            ; preds = %if.end.836
  %switch.maskindex1752 = zext i8 %switch.tableidx1750 to i16, !dbg !1105
  %switch.shifted1753 = lshr i16 287, %switch.maskindex1752, !dbg !1105
  %158 = and i16 %switch.shifted1753, 1, !dbg !1105
  %switch.lobit1754 = icmp eq i16 %158, 0, !dbg !1105
  br i1 %switch.lobit1754, label %cond.false.883, label %cond.end.885, !dbg !1105

cond.end.885:                                     ; preds = %switch.hole_check1751, %cond.false.883
  %cond886 = phi i32 [ %add884, %cond.false.883 ], [ 0, %switch.hole_check1751 ], !dbg !1105
  %add887 = add i32 %cond886, %add846, !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %add887, i64 0, metadata !389, metadata !501), !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 113, i64 0, metadata !390, metadata !501), !dbg !646
  %.conv55 = select i1 %cmp811, i32 113, i32 %conv55.lcssa2164, !dbg !1108
  %cmp895 = icmp eq i32 %.conv55, 119, !dbg !1109
  %opcode.0.off = add nsw i32 %.conv55, -113, !dbg !1112
  %159 = icmp ult i32 %opcode.0.off, 3, !dbg !1112
  %160 = or i1 %cmp895, %159, !dbg !1112
  %opcode.0.off1712 = add nsw i32 %.conv55, -111, !dbg !1112
  %161 = icmp ult i32 %opcode.0.off1712, 2, !dbg !1112
  %162 = or i1 %161, %160, !dbg !1112
  %conv911.1713 = zext i32 %add887 to i64, !dbg !1113
  %add910.neg = sub i64 -3, %i.01933, !dbg !1114
  %sub912 = add i64 %add910.neg, %conv911.1713, !dbg !1113
  %conv913 = trunc i64 %sub912 to i32, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %conv913, i64 0, metadata !389, metadata !501), !dbg !1078
  %tgttgt.0 = select i1 %162, i32 %add887, i32 %conv913, !dbg !1112
  %cmp915 = icmp slt i32 %tgttgt.0, 0, !dbg !1115
  br i1 %cmp915, label %for.inc, label %if.end.918, !dbg !1117

if.end.918:                                       ; preds = %cond.end.885
  %conv919 = trunc i32 %.conv55 to i8, !dbg !1118
  store i8 %conv919, i8* %arrayidx54, align 1, !dbg !1119, !tbaa !549
  %shr921.1714 = lshr i32 %tgttgt.0, 8, !dbg !1120
  %conv922 = trunc i32 %shr921.1714 to i8, !dbg !1120
  store i8 %conv922, i8* %arrayidx78, align 1, !dbg !1120, !tbaa !549
  %conv926 = trunc i32 %tgttgt.0 to i8, !dbg !1120
  store i8 %conv926, i8* %arrayidx59, align 1, !dbg !1120, !tbaa !549
  br label %for.inc, !dbg !1121

sw.bb.929:                                        ; preds = %reoptimize_current
  %.const_stack_top.1.lcssa2173 = phi i64 [ %.const_stack_top.1, %reoptimize_current ]
  %163 = load i8, i8* %arrayidx74, align 1, !dbg !1122, !tbaa !549
  %cmp933 = icmp eq i8 %163, -124, !dbg !1124
  br i1 %cmp933, label %for.inc, label %do.body.1105.loopexit, !dbg !1125

sw.bb.938:                                        ; preds = %reoptimize_current
  %.const_stack_top.1.lcssa2174 = phi i64 [ %.const_stack_top.1, %reoptimize_current ]
  %add939 = add i64 %i.01933, 4, !dbg !1126
  %cmp940 = icmp slt i64 %add939, %3, !dbg !1128
  br i1 %cmp940, label %if.end.943, label %for.inc, !dbg !1129

if.end.943:                                       ; preds = %sw.bb.938
  %arrayidx945 = getelementptr i8, i8* %call11, i64 %add939, !dbg !1130
  %164 = load i8, i8* %arrayidx945, align 1, !dbg !1130, !tbaa !549
  %cmp947 = icmp eq i8 %164, 83, !dbg !1132
  br i1 %cmp947, label %land.lhs.true.949, label %if.else.959, !dbg !1133

land.lhs.true.949:                                ; preds = %if.end.943
  %165 = load i32, i32* %arrayidx64, align 4, !dbg !1134, !tbaa !594
  %arrayidx953 = getelementptr i32, i32* %6, i64 %add939, !dbg !1134
  %166 = load i32, i32* %arrayidx953, align 4, !dbg !1134, !tbaa !594
  %cmp954 = icmp eq i32 %165, %166, !dbg !1134
  br i1 %cmp954, label %if.then.956, label %if.else.959, !dbg !1135

if.then.956:                                      ; preds = %land.lhs.true.949
  %add.ptr958 = getelementptr i8, i8* %arrayidx54, i64 1, !dbg !1136
  %167 = bitcast i8* %add.ptr958 to i32*, !dbg !1137
  store i32 151587081, i32* %167, align 1, !dbg !1137
  br label %for.inc, !dbg !1137

if.else.959:                                      ; preds = %land.lhs.true.949, %if.end.943
  %168 = load i8, i8* %arrayidx59, align 1, !dbg !1138, !tbaa !549
  switch i8 %168, label %for.inc [
    i8 113, label %land.lhs.true.971
    i8 110, label %land.lhs.true.971
  ], !dbg !1138

land.lhs.true.971:                                ; preds = %if.else.959, %if.else.959
  %169 = load i32, i32* %arrayidx64, align 4, !dbg !1140, !tbaa !594
  %170 = load i32, i32* %arrayidx67, align 4, !dbg !1140, !tbaa !594
  %cmp976 = icmp eq i32 %169, %170, !dbg !1140
  br i1 %cmp976, label %if.then.978, label %for.inc, !dbg !1141

if.then.978:                                      ; preds = %land.lhs.true.971
  %add.ptr980 = getelementptr i8, i8* %arrayidx54, i64 1, !dbg !1142
  tail call void @llvm.memset.p0i8.i64(i8* %add.ptr980, i8 9, i64 3, i32 1, i1 false), !dbg !1143
  br label %for.inc, !dbg !1143

for.inc.loopexit:                                 ; preds = %lor.lhs.false.63, %reoptimize_current, %sw.bb
  %.const_stack_top.1.lcssa = phi i64 [ %.const_stack_top.1, %lor.lhs.false.63 ], [ %.const_stack_top.1, %reoptimize_current ], [ %.const_stack_top.1, %sw.bb ]
  br label %for.inc, !dbg !1144

for.inc:                                          ; preds = %for.inc.loopexit, %if.then.8.i, %if.then.i.1786, %if.end.16.i, %sw.default.i.1781, %if.else.60.i, %do.body.53.i, %if.else.46.i, %do.body.i, %if.then.35.i, %if.then.30.i, %if.then.i.1768, %sw.default.i, %cleanup.598.thread, %cleanup.512.thread, %cleanup.362.thread, %if.else.959, %sw.bb.929, %if.end.823, %if.end.398, %lor.lhs.false.106, %lor.lhs.false.195, %do.end.173, %if.end.367, %sw.bb.938, %if.end.120, %if.end.201, %if.end.918, %sw.bb.205, %if.then.405, %if.then.415, %if.then.401, %land.lhs.true.440, %cond.end.435, %land.lhs.true.531, %cond.end.526, %land.lhs.true.971, %if.then.978, %if.then.956, %cond.end.885, %lor.lhs.false.373, %lor.lhs.false.380, %lor.lhs.false.188, %sw.bb.91, %lor.lhs.false.112, %if.then.819
  %const_stack.9 = phi %struct._object** [ %const_stack.01925, %sw.bb.938 ], [ %const_stack.01925, %if.then.956 ], [ %const_stack.01925, %if.then.978 ], [ %const_stack.01925, %land.lhs.true.971 ], [ %const_stack.01925, %if.then.819 ], [ %const_stack.01925, %cond.end.885 ], [ %const_stack.01925, %if.end.918 ], [ %const_stack.01925, %land.lhs.true.531 ], [ %const_stack.01925, %cond.end.526 ], [ %const_stack.01925, %land.lhs.true.440 ], [ %const_stack.01925, %cond.end.435 ], [ %const_stack.01925, %sw.bb.205 ], [ %const_stack.01925, %if.end.367 ], [ %const_stack.01925, %lor.lhs.false.380 ], [ %const_stack.01925, %if.then.401 ], [ %const_stack.01925, %if.then.405 ], [ %const_stack.01925, %if.then.415 ], [ %const_stack.01925, %lor.lhs.false.373 ], [ %const_stack.1, %do.end.173 ], [ %const_stack.1, %if.end.201 ], [ %const_stack.1, %lor.lhs.false.195 ], [ %const_stack.1, %lor.lhs.false.188 ], [ %const_stack.01925, %sw.bb.91 ], [ %const_stack.01925, %lor.lhs.false.106 ], [ %const_stack.01925, %if.end.120 ], [ %const_stack.01925, %lor.lhs.false.112 ], [ %const_stack.01925, %if.end.398 ], [ %const_stack.01925, %if.end.823 ], [ %const_stack.01925, %sw.bb.929 ], [ %const_stack.01925, %if.else.959 ], [ %const_stack.3, %cleanup.362.thread ], [ %const_stack.5, %cleanup.512.thread ], [ %const_stack.7, %cleanup.598.thread ], [ %const_stack.01925, %sw.default.i ], [ %const_stack.01925, %if.then.i.1768 ], [ %const_stack.01925, %if.then.30.i ], [ %const_stack.01925, %if.then.35.i ], [ %const_stack.01925, %do.body.i ], [ %const_stack.01925, %if.else.46.i ], [ %const_stack.01925, %do.body.53.i ], [ %const_stack.01925, %if.else.60.i ], [ %const_stack.01925, %sw.default.i.1781 ], [ %const_stack.01925, %if.end.16.i ], [ %const_stack.01925, %if.then.i.1786 ], [ %const_stack.01925, %if.then.8.i ], [ %const_stack.01925, %for.inc.loopexit ]
  %load_const_stack.9 = phi i64* [ %load_const_stack.01927, %sw.bb.938 ], [ %load_const_stack.01927, %if.then.956 ], [ %load_const_stack.01927, %if.then.978 ], [ %load_const_stack.01927, %land.lhs.true.971 ], [ %load_const_stack.01927, %if.then.819 ], [ %load_const_stack.01927, %cond.end.885 ], [ %load_const_stack.01927, %if.end.918 ], [ %load_const_stack.01927, %land.lhs.true.531 ], [ %load_const_stack.01927, %cond.end.526 ], [ %load_const_stack.01927, %land.lhs.true.440 ], [ %load_const_stack.01927, %cond.end.435 ], [ %load_const_stack.01927, %sw.bb.205 ], [ %load_const_stack.01927, %if.end.367 ], [ %load_const_stack.01927, %lor.lhs.false.380 ], [ %load_const_stack.01927, %if.then.401 ], [ %load_const_stack.01927, %if.then.405 ], [ %load_const_stack.01927, %if.then.415 ], [ %load_const_stack.01927, %lor.lhs.false.373 ], [ %load_const_stack.1, %do.end.173 ], [ %load_const_stack.1, %if.end.201 ], [ %load_const_stack.1, %lor.lhs.false.195 ], [ %load_const_stack.1, %lor.lhs.false.188 ], [ %load_const_stack.01927, %sw.bb.91 ], [ %load_const_stack.01927, %lor.lhs.false.106 ], [ %load_const_stack.01927, %if.end.120 ], [ %load_const_stack.01927, %lor.lhs.false.112 ], [ %load_const_stack.01927, %if.end.398 ], [ %load_const_stack.01927, %if.end.823 ], [ %load_const_stack.01927, %sw.bb.929 ], [ %load_const_stack.01927, %if.else.959 ], [ %load_const_stack.3, %cleanup.362.thread ], [ %load_const_stack.5, %cleanup.512.thread ], [ %load_const_stack.7, %cleanup.598.thread ], [ %load_const_stack.01927, %sw.default.i ], [ %load_const_stack.01927, %if.then.i.1768 ], [ %load_const_stack.01927, %if.then.30.i ], [ %load_const_stack.01927, %if.then.35.i ], [ %load_const_stack.01927, %do.body.i ], [ %load_const_stack.01927, %if.else.46.i ], [ %load_const_stack.01927, %do.body.53.i ], [ %load_const_stack.01927, %if.else.60.i ], [ %load_const_stack.01927, %sw.default.i.1781 ], [ %load_const_stack.01927, %if.end.16.i ], [ %load_const_stack.01927, %if.then.i.1786 ], [ %load_const_stack.01927, %if.then.8.i ], [ %load_const_stack.01927, %for.inc.loopexit ]
  %const_stack_top.3 = phi i64 [ %.const_stack_top.1.lcssa2174, %sw.bb.938 ], [ %.const_stack_top.1.lcssa2174, %if.then.956 ], [ %.const_stack_top.1.lcssa2174, %if.then.978 ], [ %.const_stack_top.1.lcssa2174, %land.lhs.true.971 ], [ %.const_stack_top.1.lcssa2172, %if.then.819 ], [ %.const_stack_top.1.lcssa2172, %cond.end.885 ], [ %.const_stack_top.1.lcssa2172, %if.end.918 ], [ %.const_stack_top.1.lcssa2171, %land.lhs.true.531 ], [ %.const_stack_top.1.lcssa2171, %cond.end.526 ], [ %.const_stack_top.1.lcssa2170, %land.lhs.true.440 ], [ %.const_stack_top.1.lcssa2170, %cond.end.435 ], [ %.const_stack_top.1.lcssa2169, %sw.bb.205 ], [ %.const_stack_top.1.lcssa2169, %if.end.367 ], [ %.const_stack_top.1.lcssa2169, %lor.lhs.false.380 ], [ %.const_stack_top.1.lcssa2169, %if.then.401 ], [ -1, %if.then.405 ], [ -1, %if.then.415 ], [ %.const_stack_top.1.lcssa2169, %lor.lhs.false.373 ], [ %inc, %do.end.173 ], [ -1, %if.end.201 ], [ %inc, %lor.lhs.false.195 ], [ %inc, %lor.lhs.false.188 ], [ %.const_stack_top.1.lcssa2167, %sw.bb.91 ], [ %.const_stack_top.1.lcssa2167, %lor.lhs.false.106 ], [ %.const_stack_top.1.lcssa2167, %if.end.120 ], [ %.const_stack_top.1.lcssa2167, %lor.lhs.false.112 ], [ %.const_stack_top.1.lcssa2169, %if.end.398 ], [ %.const_stack_top.1.lcssa2172, %if.end.823 ], [ %.const_stack_top.1.lcssa2173, %sw.bb.929 ], [ %.const_stack_top.1.lcssa2174, %if.else.959 ], [ %add306, %cleanup.362.thread ], [ %add455, %cleanup.512.thread ], [ %.const_stack_top.1.lcssa2171, %cleanup.598.thread ], [ %.const_stack_top.1.lcssa2170, %sw.default.i ], [ %.const_stack_top.1.lcssa2170, %if.then.i.1768 ], [ %.const_stack_top.1.lcssa2170, %if.then.30.i ], [ %.const_stack_top.1.lcssa2170, %if.then.35.i ], [ %.const_stack_top.1.lcssa2170, %do.body.i ], [ %.const_stack_top.1.lcssa2170, %if.else.46.i ], [ %.const_stack_top.1.lcssa2170, %do.body.53.i ], [ %.const_stack_top.1.lcssa2170, %if.else.60.i ], [ %.const_stack_top.1.lcssa2171, %sw.default.i.1781 ], [ %.const_stack_top.1.lcssa2171, %if.end.16.i ], [ %.const_stack_top.1.lcssa2171, %if.then.i.1786 ], [ %.const_stack_top.1.lcssa2171, %if.then.8.i ], [ %.const_stack_top.1.lcssa, %for.inc.loopexit ]
  %const_stack_size.9 = phi i64 [ %const_stack_size.01930, %sw.bb.938 ], [ %const_stack_size.01930, %if.then.956 ], [ %const_stack_size.01930, %if.then.978 ], [ %const_stack_size.01930, %land.lhs.true.971 ], [ %const_stack_size.01930, %if.then.819 ], [ %const_stack_size.01930, %cond.end.885 ], [ %const_stack_size.01930, %if.end.918 ], [ %const_stack_size.01930, %land.lhs.true.531 ], [ %const_stack_size.01930, %cond.end.526 ], [ %const_stack_size.01930, %land.lhs.true.440 ], [ %const_stack_size.01930, %cond.end.435 ], [ %const_stack_size.01930, %sw.bb.205 ], [ %const_stack_size.01930, %if.end.367 ], [ %const_stack_size.01930, %lor.lhs.false.380 ], [ %const_stack_size.01930, %if.then.401 ], [ %const_stack_size.01930, %if.then.405 ], [ %const_stack_size.01930, %if.then.415 ], [ %const_stack_size.01930, %lor.lhs.false.373 ], [ %const_stack_size.1, %do.end.173 ], [ %const_stack_size.1, %if.end.201 ], [ %const_stack_size.1, %lor.lhs.false.195 ], [ %const_stack_size.1, %lor.lhs.false.188 ], [ %const_stack_size.01930, %sw.bb.91 ], [ %const_stack_size.01930, %lor.lhs.false.106 ], [ %const_stack_size.01930, %if.end.120 ], [ %const_stack_size.01930, %lor.lhs.false.112 ], [ %const_stack_size.01930, %if.end.398 ], [ %const_stack_size.01930, %if.end.823 ], [ %const_stack_size.01930, %sw.bb.929 ], [ %const_stack_size.01930, %if.else.959 ], [ %const_stack_size.3, %cleanup.362.thread ], [ %const_stack_size.5, %cleanup.512.thread ], [ %const_stack_size.7, %cleanup.598.thread ], [ %const_stack_size.01930, %sw.default.i ], [ %const_stack_size.01930, %if.then.i.1768 ], [ %const_stack_size.01930, %if.then.30.i ], [ %const_stack_size.01930, %if.then.35.i ], [ %const_stack_size.01930, %do.body.i ], [ %const_stack_size.01930, %if.else.46.i ], [ %const_stack_size.01930, %do.body.53.i ], [ %const_stack_size.01930, %if.else.60.i ], [ %const_stack_size.01930, %sw.default.i.1781 ], [ %const_stack_size.01930, %if.end.16.i ], [ %const_stack_size.01930, %if.then.i.1786 ], [ %const_stack_size.01930, %if.then.8.i ], [ %const_stack_size.01930, %for.inc.loopexit ]
  %in_consts.6 = phi i32 [ 0, %sw.bb.938 ], [ 0, %if.then.956 ], [ 0, %if.then.978 ], [ 0, %land.lhs.true.971 ], [ 0, %if.then.819 ], [ 0, %cond.end.885 ], [ 0, %if.end.918 ], [ 0, %land.lhs.true.531 ], [ 0, %cond.end.526 ], [ 0, %land.lhs.true.440 ], [ 0, %cond.end.435 ], [ 0, %sw.bb.205 ], [ 0, %if.end.367 ], [ 0, %lor.lhs.false.380 ], [ 0, %if.then.401 ], [ 0, %if.then.405 ], [ 0, %if.then.415 ], [ 0, %lor.lhs.false.373 ], [ 1, %do.end.173 ], [ 1, %if.end.201 ], [ 1, %lor.lhs.false.195 ], [ 1, %lor.lhs.false.188 ], [ 0, %sw.bb.91 ], [ 0, %lor.lhs.false.106 ], [ 0, %if.end.120 ], [ 0, %lor.lhs.false.112 ], [ 0, %if.end.398 ], [ 0, %if.end.823 ], [ 0, %sw.bb.929 ], [ 0, %if.else.959 ], [ 1, %cleanup.362.thread ], [ 1, %cleanup.512.thread ], [ 1, %cleanup.598.thread ], [ 0, %sw.default.i ], [ 0, %if.then.i.1768 ], [ 0, %if.then.30.i ], [ 0, %if.then.35.i ], [ 0, %do.body.i ], [ 0, %if.else.46.i ], [ 0, %do.body.53.i ], [ 0, %if.else.60.i ], [ 0, %sw.default.i.1781 ], [ 0, %if.end.16.i ], [ 0, %if.then.i.1786 ], [ 0, %if.then.8.i ], [ 0, %for.inc.loopexit ]
  %i.1 = phi i64 [ %i.01933, %sw.bb.938 ], [ %i.01933, %if.then.956 ], [ %i.01933, %if.then.978 ], [ %i.01933, %land.lhs.true.971 ], [ %i.01933, %if.then.819 ], [ %i.01933, %cond.end.885 ], [ %i.01933, %if.end.918 ], [ %i.01933, %land.lhs.true.531 ], [ %i.01933, %cond.end.526 ], [ %i.01933, %land.lhs.true.440 ], [ %i.01933, %cond.end.435 ], [ %i.01933, %sw.bb.205 ], [ %i.01933, %if.end.367 ], [ %i.01933, %lor.lhs.false.380 ], [ %i.01933, %if.then.401 ], [ %i.01933, %if.then.405 ], [ %i.01933, %if.then.415 ], [ %i.01933, %lor.lhs.false.373 ], [ %i.01933, %do.end.173 ], [ %i.01933, %if.end.201 ], [ %i.01933, %lor.lhs.false.195 ], [ %i.01933, %lor.lhs.false.188 ], [ %i.01933, %sw.bb.91 ], [ %i.01933, %lor.lhs.false.106 ], [ %i.01933, %if.end.120 ], [ %i.01933, %lor.lhs.false.112 ], [ %i.01933, %if.end.398 ], [ %i.01933, %if.end.823 ], [ %sub66, %sw.bb.929 ], [ %i.01933, %if.else.959 ], [ %i.01933, %cleanup.362.thread ], [ %sub460, %cleanup.512.thread ], [ %sub550, %cleanup.598.thread ], [ %i.01933, %sw.default.i ], [ %i.01933, %if.then.i.1768 ], [ %i.01933, %if.then.30.i ], [ %i.01933, %if.then.35.i ], [ %i.01933, %do.body.i ], [ %i.01933, %if.else.46.i ], [ %i.01933, %do.body.53.i ], [ %i.01933, %if.else.60.i ], [ %i.01933, %sw.default.i.1781 ], [ %i.01933, %if.end.16.i ], [ %i.01933, %if.then.i.1786 ], [ %i.01933, %if.then.8.i ], [ %i.01933, %for.inc.loopexit ]
  %arrayidx983 = getelementptr i8, i8* %call11, i64 %i.1, !dbg !1144
  %171 = load i8, i8* %arrayidx983, align 1, !dbg !1144, !tbaa !549
  %cmp985 = icmp ugt i8 %171, 89, !dbg !1144
  %conv988 = select i1 %cmp985, i64 3, i64 1, !dbg !1144
  %add989 = add i64 %conv988, %i.1, !dbg !1145
  tail call void @llvm.dbg.value(metadata i64 %add989, i64 0, metadata !382, metadata !501), !dbg !937
  %cmp52 = icmp slt i64 %add989, %3, !dbg !1146
  br i1 %cmp52, label %reoptimize_current.preheader, label %for.cond.990.preheader, !dbg !623

for.cond.1014.preheader.loopexit:                 ; preds = %for.body.993
  br label %for.cond.1014.preheader, !dbg !1147

for.cond.1014.preheader:                          ; preds = %for.cond.1014.preheader.loopexit, %for.cond.preheader, %for.cond.990.preheader
  %const_stack.0.lcssa1988 = phi %struct._object** [ %const_stack.9.lcssa, %for.cond.990.preheader ], [ %13, %for.cond.preheader ], [ %const_stack.9.lcssa, %for.cond.1014.preheader.loopexit ]
  %load_const_stack.0.lcssa1987 = phi i64* [ %load_const_stack.9.lcssa, %for.cond.990.preheader ], [ %14, %for.cond.preheader ], [ %load_const_stack.9.lcssa, %for.cond.1014.preheader.loopexit ]
  %cmp1016.1917 = icmp sgt i64 %sext, 0, !dbg !1147
  br i1 %cmp1016.1917, label %for.body.1018.preheader, label %for.cond.1030.preheader, !dbg !1150

for.body.1018.preheader:                          ; preds = %for.cond.1014.preheader
  %sext2139 = shl i64 %1, 32, !dbg !1151
  %172 = ashr exact i64 %sext2139, 32, !dbg !1151
  %173 = icmp sgt i64 %172, 2, !dbg !1151
  %smax = select i1 %173, i64 %172, i64 2, !dbg !1151
  %174 = add nsw i64 %smax, -1, !dbg !1151
  %175 = lshr i64 %174, 1, !dbg !1151
  %176 = and i64 %175, 1, !dbg !1151
  %lcmp.mod2136 = icmp eq i64 %176, 0, !dbg !1151
  br i1 %lcmp.mod2136, label %for.body.1018.prol, label %for.body.1018.preheader.split, !dbg !1151

for.body.1018.prol:                               ; preds = %for.body.1018.preheader
  %177 = load i8, i8* %arraydecay, align 1, !dbg !1151, !tbaa !549
  %conv1020.prol = zext i8 %177 to i32, !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %conv1020.prol, i64 0, metadata !395, metadata !501), !dbg !1153
  %idxprom1022.prol = zext i8 %177 to i64, !dbg !1154
  %arrayidx1023.prol = getelementptr i32, i32* %5, i64 %idxprom1022.prol, !dbg !1154
  %178 = load i32, i32* %arrayidx1023.prol, align 4, !dbg !1154, !tbaa !594
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !394, metadata !501), !dbg !1155
  %conv1025.prol = trunc i32 %178 to i8, !dbg !1156
  store i8 %conv1025.prol, i8* %arraydecay, align 1, !dbg !1157, !tbaa !549
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !396, metadata !501), !dbg !1158
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !382, metadata !501), !dbg !937
  br label %for.body.1018.preheader.split, !dbg !1150

for.body.1018.preheader.split:                    ; preds = %for.body.1018.prol, %for.body.1018.preheader
  %i.31920.unr = phi i64 [ 0, %for.body.1018.preheader ], [ 2, %for.body.1018.prol ]
  %last_line.01919.unr = phi i32 [ 0, %for.body.1018.preheader ], [ %178, %for.body.1018.prol ]
  %cum_orig_line.01918.unr = phi i32 [ 0, %for.body.1018.preheader ], [ %conv1020.prol, %for.body.1018.prol ]
  %179 = icmp eq i64 %175, 0, !dbg !1151
  br i1 %179, label %for.cond.1030.preheader.loopexit, label %for.body.1018.preheader.split.split, !dbg !1151

for.body.1018.preheader.split.split:              ; preds = %for.body.1018.preheader.split
  br label %for.body.1018, !dbg !1151

for.body.993:                                     ; preds = %for.body.993.preheader, %for.body.993
  %i.21923 = phi i64 [ %add1012, %for.body.993 ], [ 0, %for.body.993.preheader ]
  %nops.01922 = phi i32 [ %inc1003.nops.0, %for.body.993 ], [ 0, %for.body.993.preheader ]
  %conv994.1707 = zext i32 %nops.01922 to i64, !dbg !641
  %sub995 = sub i64 %i.21923, %conv994.1707, !dbg !1159
  %conv996 = trunc i64 %sub995 to i32, !dbg !1160
  %arrayidx997 = getelementptr i32, i32* %5, i64 %i.21923, !dbg !1161
  store i32 %conv996, i32* %arrayidx997, align 4, !dbg !1162, !tbaa !594
  %arrayidx998 = getelementptr i8, i8* %call11, i64 %i.21923, !dbg !1163
  %180 = load i8, i8* %arrayidx998, align 1, !dbg !1163, !tbaa !549
  %cmp1000 = icmp eq i8 %180, 9, !dbg !1165
  %inc1003 = zext i1 %cmp1000 to i32, !dbg !1166
  %inc1003.nops.0 = add i32 %inc1003, %nops.01922, !dbg !1166
  %cmp1008 = icmp ugt i8 %180, 89, !dbg !1167
  %conv1011 = select i1 %cmp1008, i64 3, i64 1, !dbg !1167
  %add1012 = add i64 %conv1011, %i.21923, !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 %add1012, i64 0, metadata !382, metadata !501), !dbg !937
  %cmp991 = icmp slt i64 %add1012, %3, !dbg !1169
  br i1 %cmp991, label %for.body.993, label %for.cond.1014.preheader.loopexit, !dbg !639

for.cond.1030.preheader.loopexit.unr-lcssa:       ; preds = %for.body.1018
  br label %for.cond.1030.preheader.loopexit, !dbg !1170

for.cond.1030.preheader.loopexit:                 ; preds = %for.body.1018.preheader.split, %for.cond.1030.preheader.loopexit.unr-lcssa
  br label %for.cond.1030.preheader, !dbg !1170

for.cond.1030.preheader:                          ; preds = %for.cond.1030.preheader.loopexit, %for.cond.1014.preheader
  br i1 %cmp3.114.i, label %for.body.1033.lr.ph.preheader, label %for.end.1093, !dbg !1170

for.body.1033.lr.ph.preheader:                    ; preds = %for.cond.1030.preheader
  br label %for.body.1033.lr.ph, !dbg !1170

for.body.1018:                                    ; preds = %for.body.1018, %for.body.1018.preheader.split.split
  %i.31920 = phi i64 [ %i.31920.unr, %for.body.1018.preheader.split.split ], [ %add1028.1, %for.body.1018 ]
  %last_line.01919 = phi i32 [ %last_line.01919.unr, %for.body.1018.preheader.split.split ], [ %184, %for.body.1018 ]
  %cum_orig_line.01918 = phi i32 [ %cum_orig_line.01918.unr, %for.body.1018.preheader.split.split ], [ %add1021.1, %for.body.1018 ]
  %arrayidx1019 = getelementptr i8, i8* %arraydecay, i64 %i.31920, !dbg !1151
  %181 = load i8, i8* %arrayidx1019, align 1, !dbg !1151, !tbaa !549
  %conv1020 = zext i8 %181 to i32, !dbg !1151
  %add1021 = add i32 %conv1020, %cum_orig_line.01918, !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %add1021, i64 0, metadata !395, metadata !501), !dbg !1153
  %idxprom1022 = sext i32 %add1021 to i64, !dbg !1154
  %arrayidx1023 = getelementptr i32, i32* %5, i64 %idxprom1022, !dbg !1154
  %182 = load i32, i32* %arrayidx1023, align 4, !dbg !1154, !tbaa !594
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !394, metadata !501), !dbg !1155
  %sub1024 = sub i32 %182, %last_line.01919, !dbg !1173
  %conv1025 = trunc i32 %sub1024 to i8, !dbg !1156
  store i8 %conv1025, i8* %arrayidx1019, align 1, !dbg !1157, !tbaa !549
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !396, metadata !501), !dbg !1158
  %add1028 = add nuw nsw i64 %i.31920, 2, !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %add1028, i64 0, metadata !382, metadata !501), !dbg !937
  %arrayidx1019.1 = getelementptr i8, i8* %arraydecay, i64 %add1028, !dbg !1151
  %183 = load i8, i8* %arrayidx1019.1, align 1, !dbg !1151, !tbaa !549
  %conv1020.1 = zext i8 %183 to i32, !dbg !1151
  %add1021.1 = add i32 %conv1020.1, %add1021, !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %add1021, i64 0, metadata !395, metadata !501), !dbg !1153
  %idxprom1022.1 = sext i32 %add1021.1 to i64, !dbg !1154
  %arrayidx1023.1 = getelementptr i32, i32* %5, i64 %idxprom1022.1, !dbg !1154
  %184 = load i32, i32* %arrayidx1023.1, align 4, !dbg !1154, !tbaa !594
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !394, metadata !501), !dbg !1155
  %sub1024.1 = sub i32 %184, %182, !dbg !1173
  %conv1025.1 = trunc i32 %sub1024.1 to i8, !dbg !1156
  store i8 %conv1025.1, i8* %arrayidx1019.1, align 1, !dbg !1157, !tbaa !549
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !396, metadata !501), !dbg !1158
  %add1028.1 = add nsw i64 %i.31920, 4, !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %add1028, i64 0, metadata !382, metadata !501), !dbg !937
  %cmp1016.1 = icmp slt i64 %add1028.1, %conv1, !dbg !1147
  br i1 %cmp1016.1, label %for.body.1018, label %for.cond.1030.preheader.loopexit.unr-lcssa, !dbg !1150

for.cond.1030.loopexit.loopexit.unr-lcssa:        ; preds = %while.body.while.body_crit_edge
  br label %for.cond.1030.loopexit.loopexit, !dbg !1175

for.cond.1030.loopexit.loopexit:                  ; preds = %while.body.while.body_crit_edge.preheader.split, %for.cond.1030.loopexit.loopexit.unr-lcssa
  br label %for.cond.1030.loopexit, !dbg !1175

for.cond.1030.loopexit:                           ; preds = %for.cond.1030.loopexit.loopexit, %sw.epilog.1083
  %i.419082144 = phi i64 [ %i.419082143, %for.cond.1030.loopexit.loopexit ], [ %i.419082143, %sw.epilog.1083 ]
  %185 = add i64 %i.419082144, 1, !dbg !1175
  %186 = add i64 %185, %198, !dbg !1175
  %cmp1031.1907 = icmp slt i64 %186, %3, !dbg !1178
  br i1 %cmp1031.1907, label %for.body.1033.lr.ph, label %for.end.1093.loopexit2090, !dbg !1170

for.body.1033.lr.ph:                              ; preds = %for.body.1033.lr.ph.preheader, %for.cond.1030.loopexit
  %i.4.ph1915 = phi i64 [ %186, %for.cond.1030.loopexit ], [ 0, %for.body.1033.lr.ph.preheader ]
  %h.0.ph1914 = phi i32 [ %196, %for.cond.1030.loopexit ], [ 0, %for.body.1033.lr.ph.preheader ]
  br label %for.body.1033, !dbg !1170

for.body.1033:                                    ; preds = %for.body.1033.lr.ph, %sw.bb.1036
  %i.41908 = phi i64 [ %i.4.ph1915, %for.body.1033.lr.ph ], [ %inc1037, %sw.bb.1036 ]
  %arrayidx1034 = getelementptr i8, i8* %call11, i64 %i.41908, !dbg !1179
  %187 = load i8, i8* %arrayidx1034, align 1, !dbg !1179, !tbaa !549
  %conv1035 = zext i8 %187 to i32, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %conv1035, i64 0, metadata !390, metadata !501), !dbg !646
  switch i32 %conv1035, label %sw.epilog.1083.loopexit [
    i32 9, label %sw.bb.1036
    i32 113, label %sw.bb.1038
    i32 119, label %sw.bb.1038
    i32 114, label %sw.bb.1038
    i32 115, label %sw.bb.1038
    i32 111, label %sw.bb.1038
    i32 112, label %sw.bb.1038
    i32 93, label %sw.bb.1058
    i32 110, label %sw.bb.1058
    i32 120, label %sw.bb.1058
    i32 121, label %sw.bb.1058
    i32 122, label %sw.bb.1058
    i32 143, label %sw.bb.1058
  ], !dbg !1180

sw.bb.1036:                                       ; preds = %for.body.1033
  %inc1037 = add i64 %i.41908, 1, !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 %inc1037, i64 0, metadata !382, metadata !501), !dbg !937
  %cmp1031 = icmp slt i64 %inc1037, %3, !dbg !1178
  br i1 %cmp1031, label %for.body.1033, label %for.end.1093.loopexit, !dbg !1170

sw.bb.1038:                                       ; preds = %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033
  %.lcssa2145 = phi i8 [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ]
  %i.41908.lcssa2140 = phi i64 [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ]
  %add1039 = add i64 %i.41908.lcssa2140, 2, !dbg !1183
  %arrayidx1040 = getelementptr i8, i8* %call11, i64 %add1039, !dbg !1183
  %188 = load i8, i8* %arrayidx1040, align 1, !dbg !1183, !tbaa !549
  %conv1041 = zext i8 %188 to i64, !dbg !1183
  %shl1042 = shl nuw nsw i64 %conv1041, 8, !dbg !1183
  %add1043 = add i64 %i.41908.lcssa2140, 1, !dbg !1183
  %arrayidx1044 = getelementptr i8, i8* %call11, i64 %add1043, !dbg !1183
  %189 = load i8, i8* %arrayidx1044, align 1, !dbg !1183, !tbaa !549
  %conv1045 = zext i8 %189 to i64, !dbg !1183
  %add1046 = or i64 %shl1042, %conv1045, !dbg !1183
  %arrayidx1048 = getelementptr i32, i32* %5, i64 %add1046, !dbg !1184
  %190 = load i32, i32* %arrayidx1048, align 4, !dbg !1184, !tbaa !594
  %shr1050.1706 = lshr i32 %190, 8, !dbg !1185
  %conv1051 = trunc i32 %shr1050.1706 to i8, !dbg !1185
  store i8 %conv1051, i8* %arrayidx1040, align 1, !dbg !1185, !tbaa !549
  %conv1055 = trunc i32 %190 to i8, !dbg !1185
  store i8 %conv1055, i8* %arrayidx1044, align 1, !dbg !1185, !tbaa !549
  br label %sw.epilog.1083, !dbg !1186

sw.bb.1058:                                       ; preds = %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033, %for.body.1033
  %.lcssa2146 = phi i8 [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ], [ %187, %for.body.1033 ]
  %i.41908.lcssa2141 = phi i64 [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ], [ %i.41908, %for.body.1033 ]
  %add1059 = add i64 %i.41908.lcssa2141, 2, !dbg !1187
  %arrayidx1060 = getelementptr i8, i8* %call11, i64 %add1059, !dbg !1187
  %191 = load i8, i8* %arrayidx1060, align 1, !dbg !1187, !tbaa !549
  %conv1061 = zext i8 %191 to i64, !dbg !1187
  %shl1062 = shl nuw nsw i64 %conv1061, 8, !dbg !1187
  %add1063 = add i64 %i.41908.lcssa2141, 1, !dbg !1187
  %arrayidx1064 = getelementptr i8, i8* %call11, i64 %add1063, !dbg !1187
  %192 = load i8, i8* %arrayidx1064, align 1, !dbg !1187, !tbaa !549
  %conv1065 = zext i8 %192 to i64, !dbg !1187
  %add1066 = or i64 %shl1062, %conv1065, !dbg !1187
  %add1068 = add i64 %i.41908.lcssa2141, 3, !dbg !1188
  %add1069 = add i64 %add1068, %add1066, !dbg !1189
  %arrayidx1070 = getelementptr i32, i32* %5, i64 %add1069, !dbg !1190
  %193 = load i32, i32* %arrayidx1070, align 4, !dbg !1190, !tbaa !594
  %arrayidx1071 = getelementptr i32, i32* %5, i64 %i.41908.lcssa2141, !dbg !1191
  %194 = load i32, i32* %arrayidx1071, align 4, !dbg !1191, !tbaa !594
  %sub1072 = sub i32 %193, %194, !dbg !1192
  %sub1073 = add i32 %sub1072, -3, !dbg !1193
  %shr1075.1704 = lshr i32 %sub1073, 8, !dbg !1194
  %conv1076 = trunc i32 %shr1075.1704 to i8, !dbg !1194
  store i8 %conv1076, i8* %arrayidx1060, align 1, !dbg !1194, !tbaa !549
  %conv1080 = trunc i32 %sub1073 to i8, !dbg !1194
  store i8 %conv1080, i8* %arrayidx1064, align 1, !dbg !1194, !tbaa !549
  br label %sw.epilog.1083, !dbg !1195

sw.epilog.1083.loopexit:                          ; preds = %for.body.1033
  %.lcssa = phi i8 [ %187, %for.body.1033 ]
  %i.41908.lcssa = phi i64 [ %i.41908, %for.body.1033 ]
  br label %sw.epilog.1083, !dbg !1196

sw.epilog.1083:                                   ; preds = %sw.epilog.1083.loopexit, %sw.bb.1058, %sw.bb.1038
  %195 = phi i8 [ %.lcssa, %sw.epilog.1083.loopexit ], [ %.lcssa2146, %sw.bb.1058 ], [ %.lcssa2145, %sw.bb.1038 ]
  %i.419082143 = phi i64 [ %i.41908.lcssa, %sw.epilog.1083.loopexit ], [ %i.41908.lcssa2141, %sw.bb.1058 ], [ %i.41908.lcssa2140, %sw.bb.1038 ]
  %cmp1084 = icmp ugt i8 %195, 89, !dbg !1196
  %cond1086 = select i1 %cmp1084, i32 3, i32 1, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %cond1086, i64 0, metadata !387, metadata !501), !dbg !1197
  %196 = add i32 %cond1086, %h.0.ph1914, !dbg !1175
  %197 = add nsw i32 %cond1086, -1, !dbg !1175
  %198 = zext i32 %197 to i64, !dbg !1175
  %dec.2082 = add nsw i32 %cond1086, -1, !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %inc1090, i64 0, metadata !386, metadata !501), !dbg !717
  %idxprom1091.2084 = sext i32 %h.0.ph1914 to i64, !dbg !1201
  %arrayidx1092.2085 = getelementptr i8, i8* %call11, i64 %idxprom1091.2084, !dbg !1201
  store i8 %195, i8* %arrayidx1092.2085, align 1, !dbg !1202, !tbaa !549
  tail call void @llvm.dbg.value(metadata i32 %dec.2082, i64 0, metadata !387, metadata !501), !dbg !1197
  %tobool1087.2086 = icmp eq i32 %dec.2082, 0, !dbg !1175
  br i1 %tobool1087.2086, label %for.cond.1030.loopexit, label %while.body.while.body_crit_edge.preheader, !dbg !1175

while.body.while.body_crit_edge.preheader:        ; preds = %sw.epilog.1083
  br i1 false, label %while.body.while.body_crit_edge.prol, label %while.body.while.body_crit_edge.preheader.split, !dbg !1203

while.body.while.body_crit_edge.prol:             ; preds = %while.body.while.body_crit_edge.preheader
  br label %while.body.while.body_crit_edge.preheader.split, !dbg !1175

while.body.while.body_crit_edge.preheader.split:  ; preds = %while.body.while.body_crit_edge.prol, %while.body.while.body_crit_edge.preheader
  br i1 false, label %for.cond.1030.loopexit.loopexit, label %while.body.while.body_crit_edge.preheader.split.split, !dbg !1203

while.body.while.body_crit_edge.preheader.split.split: ; preds = %while.body.while.body_crit_edge.preheader.split
  br label %while.body.while.body_crit_edge, !dbg !1203

while.body.while.body_crit_edge:                  ; preds = %while.body.while.body_crit_edge, %while.body.while.body_crit_edge.preheader.split.split
  %inc10882089.in = phi i64 [ %i.419082143, %while.body.while.body_crit_edge.preheader.split.split ], [ %inc10882089.1, %while.body.while.body_crit_edge ]
  %dec2088 = phi i32 [ %dec.2082, %while.body.while.body_crit_edge.preheader.split.split ], [ %dec.1, %while.body.while.body_crit_edge ]
  %h.119112087 = phi i32 [ %h.0.ph1914, %while.body.while.body_crit_edge.preheader.split.split ], [ %inc1090.1, %while.body.while.body_crit_edge ]
  %inc10882089 = add i64 %inc10882089.in, 1, !dbg !1203
  %inc1090 = add i32 %h.119112087, 1, !dbg !1204
  %arrayidx1089.phi.trans.insert = getelementptr i8, i8* %call11, i64 %inc10882089, !dbg !1205
  %.pre1982 = load i8, i8* %arrayidx1089.phi.trans.insert, align 1, !dbg !1205, !tbaa !549
  tail call void @llvm.dbg.value(metadata i32 %inc1090, i64 0, metadata !386, metadata !501), !dbg !717
  %idxprom1091 = sext i32 %inc1090 to i64, !dbg !1201
  %arrayidx1092 = getelementptr i8, i8* %call11, i64 %idxprom1091, !dbg !1201
  store i8 %.pre1982, i8* %arrayidx1092, align 1, !dbg !1202, !tbaa !549
  %inc10882089.1 = add i64 %inc10882089.in, 2, !dbg !1203
  %inc1090.1 = add i32 %h.119112087, 2, !dbg !1204
  %arrayidx1089.phi.trans.insert.1 = getelementptr i8, i8* %call11, i64 %inc10882089.1, !dbg !1205
  %.pre1982.1 = load i8, i8* %arrayidx1089.phi.trans.insert.1, align 1, !dbg !1205, !tbaa !549
  %dec.1 = add nsw i32 %dec2088, -2, !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %inc1090, i64 0, metadata !386, metadata !501), !dbg !717
  %idxprom1091.1 = sext i32 %inc1090.1 to i64, !dbg !1201
  %arrayidx1092.1 = getelementptr i8, i8* %call11, i64 %idxprom1091.1, !dbg !1201
  store i8 %.pre1982.1, i8* %arrayidx1092.1, align 1, !dbg !1202, !tbaa !549
  %tobool1087.1 = icmp eq i32 %dec.1, 0, !dbg !1175
  br i1 %tobool1087.1, label %for.cond.1030.loopexit.loopexit.unr-lcssa, label %while.body.while.body_crit_edge, !dbg !1175

for.end.1093.loopexit:                            ; preds = %sw.bb.1036
  %h.0.ph1914.lcssa = phi i32 [ %h.0.ph1914, %sw.bb.1036 ]
  br label %for.end.1093, !dbg !1206

for.end.1093.loopexit2090:                        ; preds = %for.cond.1030.loopexit
  %.lcssa2149 = phi i32 [ %196, %for.cond.1030.loopexit ]
  br label %for.end.1093, !dbg !1206

for.end.1093:                                     ; preds = %for.end.1093.loopexit2090, %for.end.1093.loopexit, %for.cond.1030.preheader
  %h.0.ph.lcssa = phi i32 [ 0, %for.cond.1030.preheader ], [ %h.0.ph1914.lcssa, %for.end.1093.loopexit ], [ %.lcssa2149, %for.end.1093.loopexit2090 ]
  %conv1094 = sext i32 %h.0.ph.lcssa to i64, !dbg !1206
  %call1095 = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %call11, i64 %conv1094) #3, !dbg !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %call1095, i64 0, metadata !378, metadata !501), !dbg !502
  %tobool1097 = icmp eq %struct._object** %const_stack.0.lcssa1988, null, !dbg !1208
  br i1 %tobool1097, label %if.end.1099, label %if.then.1098, !dbg !1212

if.then.1098:                                     ; preds = %for.end.1093
  %199 = bitcast %struct._object** %const_stack.0.lcssa1988 to i8*, !dbg !1213
  tail call void @PyMem_Free(i8* %199) #3, !dbg !1213
  br label %if.end.1099, !dbg !1213

if.end.1099:                                      ; preds = %for.end.1093, %if.then.1098
  %tobool1100 = icmp eq i64* %load_const_stack.0.lcssa1987, null, !dbg !1215
  br i1 %tobool1100, label %do.end.1104, label %if.then.1101, !dbg !1212

if.then.1101:                                     ; preds = %if.end.1099
  %200 = bitcast i64* %load_const_stack.0.lcssa1987 to i8*, !dbg !1219
  tail call void @PyMem_Free(i8* %200) #3, !dbg !1219
  br label %do.end.1104, !dbg !1219

do.end.1104:                                      ; preds = %if.end.1099, %if.then.1101
  tail call void @PyMem_Free(i8* %call24) #3, !dbg !1221
  tail call void @PyMem_Free(i8* %call11) #3, !dbg !1222
  tail call void @PyMem_Free(i8* %call.i) #3, !dbg !1223
  br label %cleanup.1134, !dbg !1224

do.body.1105.loopexit:                            ; preds = %sw.bb.929
  %const_stack.01925.lcssa = phi %struct._object** [ %const_stack.01925, %sw.bb.929 ]
  %load_const_stack.01927.lcssa = phi i64* [ %load_const_stack.01927, %sw.bb.929 ]
  br label %do.body.1105, !dbg !1225

do.body.1105:                                     ; preds = %do.body.1105.loopexit, %cleanup.598, %cleanup.512, %cleanup.362, %cleanup, %if.then.49
  %const_stack.11 = phi %struct._object** [ %cond58018231827, %cleanup.598 ], [ %cond49418161820, %cleanup.512 ], [ %cond34418091813, %cleanup.362 ], [ %cond15417971801, %cleanup ], [ %13, %if.then.49 ], [ %const_stack.01925.lcssa, %do.body.1105.loopexit ]
  %load_const_stack.11 = phi i64* [ %cond5881828, %cleanup.598 ], [ %cond5021821, %cleanup.512 ], [ %cond3521814, %cleanup.362 ], [ %cond1621802, %cleanup ], [ %14, %if.then.49 ], [ %load_const_stack.01927.lcssa, %do.body.1105.loopexit ]
  %code.addr.0 = phi %struct._object* [ null, %cleanup.598 ], [ null, %cleanup.512 ], [ null, %cleanup.362 ], [ null, %cleanup ], [ null, %if.then.49 ], [ %code, %do.body.1105.loopexit ]
  %tobool1106 = icmp eq %struct._object** %const_stack.11, null, !dbg !1225
  br i1 %tobool1106, label %if.end.1108, label %if.then.1107, !dbg !1229

if.then.1107:                                     ; preds = %do.body.1105
  %201 = bitcast %struct._object** %const_stack.11 to i8*, !dbg !1230
  tail call void @PyMem_Free(i8* %201) #3, !dbg !1230
  br label %if.end.1108, !dbg !1230

if.end.1108:                                      ; preds = %do.body.1105, %if.then.1107
  %tobool1109 = icmp eq i64* %load_const_stack.11, null, !dbg !1232
  br i1 %tobool1109, label %if.end.1117, label %if.then.1110, !dbg !1229

if.then.1110:                                     ; preds = %if.end.1108
  %202 = bitcast i64* %load_const_stack.11 to i8*, !dbg !1236
  tail call void @PyMem_Free(i8* %202) #3, !dbg !1236
  br label %if.end.1117, !dbg !1236

if.end.1117:                                      ; preds = %if.end.1108, %if.then.1110
  tail call void @PyMem_Free(i8* %call.i) #3, !dbg !1238
  br i1 %cmp25, label %if.then.1124, label %if.then.1120, !dbg !560

if.then.1120:                                     ; preds = %if.end.1117.thread1990, %if.end.1117
  %code.addr.01834183618431991 = phi %struct._object* [ null, %if.end.1117.thread1990 ], [ %code.addr.0, %if.end.1117 ]
  tail call void @PyMem_Free(i8* %call24) #3, !dbg !1240
  br label %if.then.1124, !dbg !1240

if.then.1124:                                     ; preds = %if.then.1120, %if.end.1117, %if.end.1117.thread, %if.end.16
  %code.addr.018341836184318451852 = phi %struct._object* [ %code, %if.end.16 ], [ null, %if.end.1117.thread ], [ %code.addr.0, %if.end.1117 ], [ %code.addr.01834183618431991, %if.then.1120 ]
  tail call void @PyMem_Free(i8* %call11) #3, !dbg !1242
  br label %do.body.1126, !dbg !1242

do.body.1126:                                     ; preds = %if.end, %if.then.1124
  %code.addr.018341836184318451848 = phi %struct._object* [ %code.addr.018341836184318451852, %if.then.1124 ], [ %code, %if.end ]
  tail call void @llvm.dbg.value(metadata %struct._object* %code.addr.0, i64 0, metadata !422, metadata !501), !dbg !1244
  %cmp1127 = icmp eq %struct._object* %code.addr.018341836184318451848, null, !dbg !1246
  br i1 %cmp1127, label %cleanup.1134, label %if.then.1129, !dbg !1248

if.then.1129:                                     ; preds = %if.end.5, %do.body.1126
  %code.addr.0183418361843184518481856 = phi %struct._object* [ %code.addr.018341836184318451848, %do.body.1126 ], [ %code, %if.end.5 ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %code.addr.0183418361843184518481856, i64 0, i32 0, !dbg !1249
  %203 = load i64, i64* %ob_refcnt, align 8, !dbg !1249, !tbaa !752
  %inc1130 = add i64 %203, 1, !dbg !1249
  store i64 %inc1130, i64* %ob_refcnt, align 8, !dbg !1249, !tbaa !752
  br label %cleanup.1134, !dbg !1249

cleanup.1134:                                     ; preds = %entry, %if.then.14, %if.then.1129, %do.body.1126, %do.end.1104
  %retval.0 = phi %struct._object* [ %call1095, %do.end.1104 ], [ null, %do.body.1126 ], [ %code.addr.0183418361843184518481856, %if.then.1129 ], [ null, %if.then.14 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1251
}

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @PyMem_Realloc(i8*, i64) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!498, !499}
!llvm.ident = !{!500}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !373)
!1 = !DIFile(filename: "Python/peephole.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !353, !96, !354, !101, !21, !355, !254, !50, !356, !5, !58, !44, !364, !365}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !8, line: 41, baseType: !9)
!8 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 31, size: 320, align: 64, elements: !10)
!10 = !{!11, !351, !352}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !9, file: !8, line: 32, baseType: !12, size: 192, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !15)
!15 = !{!16, !350}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !14, file: !13, line: 112, baseType: !17, size: 128, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !13, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !26, line: 181, baseType: !27)
!26 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !13, line: 108, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !31)
!31 = !{!32, !33, !37, !38, !39, !45, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !13, line: 335, baseType: !12, size: 192, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !30, file: !13, line: 336, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !30, file: !13, line: 337, baseType: !21, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !30, file: !13, line: 337, baseType: !21, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !30, file: !13, line: 341, baseType: !40, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !30, file: !13, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !44, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !97, !98, !99, !100, !104, !105}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
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
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !26, line: 140, baseType: !27)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !26, line: 141, baseType: !27)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !96, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !96, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !96, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !96, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !30, file: !13, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!44, !44, !58}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !30, file: !13, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!50, !44, !58, !44}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !30, file: !13, line: 345, baseType: !96, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !30, file: !13, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!44, !44}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !30, file: !13, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !13, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!44, !44, !44}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !13, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !13, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !13, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !13, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !13, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!44, !44, !44, !44}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !13, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !13, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !13, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !13, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!50, !44}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !13, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !13, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !13, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !13, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !13, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !13, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !13, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !13, line: 258, baseType: !96, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !13, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !13, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !13, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !13, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !13, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !13, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !13, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !13, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !13, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !13, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !13, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !13, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !13, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !13, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !13, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !13, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !30, file: !13, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !13, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!21, !44}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !13, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !13, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !44, !21}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !13, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !13, line: 285, baseType: !96, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !13, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!50, !44, !21, !44}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !13, line: 287, baseType: !96, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !13, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!50, !44, !44}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !13, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !13, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !30, file: !13, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !13, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !13, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !13, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!50, !44, !44, !44}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !30, file: !13, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !44}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !22, line: 186, baseType: !21)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !30, file: !13, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !30, file: !13, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !30, file: !13, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !30, file: !13, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !30, file: !13, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !13, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!50, !44, !242, !50}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !13, line: 179, baseType: !96, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !13, line: 180, baseType: !44, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !13, line: 181, baseType: !21, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !13, line: 182, baseType: !21, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !13, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !13, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !13, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !13, line: 190, baseType: !96, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !13, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !44, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !30, file: !13, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !30, file: !13, line: 368, baseType: !34, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !30, file: !13, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!50, !44, !270, !96}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!50, !44, !96}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !30, file: !13, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !30, file: !13, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!44, !44, !44, !50}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !30, file: !13, line: 382, baseType: !21, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !30, file: !13, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !30, file: !13, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !30, file: !13, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !34, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !13, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !13, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !58, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!44, !44, !96}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!50, !44, !44, !96}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !96, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !30, file: !13, line: 392, baseType: !29, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !30, file: !13, line: 393, baseType: !44, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !30, file: !13, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !30, file: !13, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !30, file: !13, line: 396, baseType: !21, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !30, file: !13, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !30, file: !13, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!44, !29, !21}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !30, file: !13, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!44, !29, !44, !44}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !30, file: !13, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !96}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !30, file: !13, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !30, file: !13, line: 402, baseType: !44, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !30, file: !13, line: 403, baseType: !44, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !30, file: !13, line: 404, baseType: !44, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !30, file: !13, line: 405, baseType: !44, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !30, file: !13, line: 406, baseType: !44, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !30, file: !13, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !30, file: !13, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !30, file: !13, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !14, file: !13, line: 113, baseType: !21, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !9, file: !8, line: 33, baseType: !225, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !9, file: !8, line: 34, baseType: !87, size: 8, align: 8, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !358, line: 40, baseType: !359)
!358 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!359 = !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 23, size: 320, align: 64, elements: !360)
!360 = !{!361, !362, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !359, file: !358, line: 24, baseType: !12, size: 192, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !359, file: !358, line: 26, baseType: !355, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !359, file: !358, line: 39, baseType: !21, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !367, line: 33, baseType: !368)
!367 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 25, size: 256, align: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !367, line: 26, baseType: !12, size: 192, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !368, file: !367, line: 27, baseType: !372, size: 64, align: 64, offset: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!373 = !{!374, !424, !435, !458, !482}
!374 = !DISubprogram(name: "PyCode_Optimize", scope: !1, file: !1, line: 349, type: !375, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, %struct._object*)* @PyCode_Optimize, variables: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!44, !44, !44, !44, !44}
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !410, !414, !418, !422}
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !374, file: !1, line: 349, type: !44)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "consts", arg: 2, scope: !374, file: !1, line: 349, type: !44)
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "names", arg: 3, scope: !374, file: !1, line: 349, type: !44)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno_obj", arg: 4, scope: !374, file: !1, line: 350, type: !44)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !374, file: !1, line: 352, type: !21)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !374, file: !1, line: 352, type: !21)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codelen", scope: !374, file: !1, line: 352, type: !21)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nops", scope: !374, file: !1, line: 353, type: !50)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !374, file: !1, line: 353, type: !50)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !374, file: !1, line: 353, type: !50)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tgt", scope: !374, file: !1, line: 354, type: !50)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tgttgt", scope: !374, file: !1, line: 354, type: !50)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opcode", scope: !374, file: !1, line: 354, type: !50)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codestr", scope: !374, file: !1, line: 355, type: !4)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !374, file: !1, line: 356, type: !4)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addrmap", scope: !374, file: !1, line: 357, type: !354)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_line", scope: !374, file: !1, line: 358, type: !50)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cum_orig_line", scope: !374, file: !1, line: 358, type: !50)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_line", scope: !374, file: !1, line: 358, type: !50)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tabsiz", scope: !374, file: !1, line: 358, type: !50)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "const_stack", scope: !374, file: !1, line: 359, type: !355)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "load_const_stack", scope: !374, file: !1, line: 360, type: !254)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "const_stack_top", scope: !374, file: !1, line: 361, type: !21)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "const_stack_size", scope: !374, file: !1, line: 362, type: !21)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_consts", scope: !374, file: !1, line: 363, type: !50)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocks", scope: !374, file: !1, line: 364, type: !364)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !405, file: !1, line: 455, type: !44)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 455, column: 17)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 423, column: 25)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 414, column: 55)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 414, column: 5)
!409 = distinct !DILexicalBlock(scope: !374, file: !1, line: 414, column: 5)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !411, file: !1, line: 490, type: !44)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 490, column: 21)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 486, column: 87)
!413 = distinct !DILexicalBlock(scope: !406, file: !1, line: 478, column: 21)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !415, file: !1, line: 538, type: !44)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 538, column: 21)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 533, column: 90)
!417 = distinct !DILexicalBlock(scope: !406, file: !1, line: 531, column: 21)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !419, file: !1, line: 555, type: !44)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 555, column: 21)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 551, column: 91)
!421 = distinct !DILexicalBlock(scope: !406, file: !1, line: 549, column: 21)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !423, file: !1, line: 729, type: !44)
!423 = distinct !DILexicalBlock(scope: !374, file: !1, line: 729, column: 5)
!424 = !DISubprogram(name: "markblocks", scope: !1, file: !1, line: 291, type: !425, isLocal: true, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, variables: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!364, !4, !21}
!427 = !{!428, !429, !430, !431, !432, !433, !434}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !424, file: !1, line: 291, type: !4)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !424, file: !1, line: 291, type: !21)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocks", scope: !424, file: !1, line: 293, type: !364)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !424, file: !1, line: 294, type: !50)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !424, file: !1, line: 294, type: !50)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opcode", scope: !424, file: !1, line: 294, type: !50)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blockcnt", scope: !424, file: !1, line: 294, type: !50)
!435 = !DISubprogram(name: "tuple_of_constants", scope: !1, file: !1, line: 94, type: !436, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, variables: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!50, !4, !21, !44, !355}
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !450, !452, !456}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codestr", arg: 1, scope: !435, file: !1, line: 94, type: !4)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !435, file: !1, line: 94, type: !21)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "consts", arg: 3, scope: !435, file: !1, line: 95, type: !44)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 4, scope: !435, file: !1, line: 95, type: !355)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newconst", scope: !435, file: !1, line: 97, type: !44)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "constant", scope: !435, file: !1, line: 97, type: !44)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !435, file: !1, line: 98, type: !21)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len_consts", scope: !435, file: !1, line: 98, type: !21)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !448, file: !1, line: 117, type: !44)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 116, column: 34)
!449 = distinct !DILexicalBlock(scope: !435, file: !1, line: 116, column: 9)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 119, type: !44)
!451 = distinct !DILexicalBlock(scope: !448, file: !1, line: 119, column: 9)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !1, line: 126, type: !44)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 126, column: 9)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 125, column: 42)
!455 = distinct !DILexicalBlock(scope: !435, file: !1, line: 125, column: 9)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !1, line: 129, type: !44)
!457 = distinct !DILexicalBlock(scope: !435, file: !1, line: 129, column: 5)
!458 = !DISubprogram(name: "fold_binops_on_constants", scope: !1, file: !1, line: 149, type: !459, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, variables: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!50, !4, !44, !355}
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !476, !480}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codestr", arg: 1, scope: !458, file: !1, line: 149, type: !4)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "consts", arg: 2, scope: !458, file: !1, line: 149, type: !44)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objs", arg: 3, scope: !458, file: !1, line: 149, type: !355)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newconst", scope: !458, file: !1, line: 151, type: !44)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !458, file: !1, line: 151, type: !44)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !458, file: !1, line: 151, type: !44)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len_consts", scope: !458, file: !1, line: 152, type: !21)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !458, file: !1, line: 152, type: !21)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opcode", scope: !458, file: !1, line: 153, type: !50)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !472, file: !1, line: 220, type: !44)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 220, column: 9)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 219, column: 27)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 219, column: 16)
!475 = distinct !DILexicalBlock(scope: !458, file: !1, line: 215, column: 9)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !1, line: 227, type: !44)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 227, column: 9)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 226, column: 42)
!479 = distinct !DILexicalBlock(scope: !458, file: !1, line: 226, column: 9)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !481, file: !1, line: 230, type: !44)
!481 = distinct !DILexicalBlock(scope: !458, file: !1, line: 230, column: 5)
!482 = !DISubprogram(name: "fold_unaryops_on_constants", scope: !1, file: !1, line: 239, type: !483, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, variables: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!50, !4, !44, !44}
!485 = !{!486, !487, !488, !489, !490, !491, !492, !496}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codestr", arg: 1, scope: !482, file: !1, line: 239, type: !4)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "consts", arg: 2, scope: !482, file: !1, line: 239, type: !44)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !482, file: !1, line: 239, type: !44)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newconst", scope: !482, file: !1, line: 241, type: !44)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len_consts", scope: !482, file: !1, line: 242, type: !21)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opcode", scope: !482, file: !1, line: 243, type: !50)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !1, line: 277, type: !44)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 277, column: 9)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 276, column: 42)
!495 = distinct !DILexicalBlock(scope: !482, file: !1, line: 276, column: 9)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !497, file: !1, line: 281, type: !44)
!497 = distinct !DILexicalBlock(scope: !482, file: !1, line: 281, column: 5)
!498 = !{i32 2, !"Dwarf Version", i32 4}
!499 = !{i32 2, !"Debug Info Version", i32 3}
!500 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!501 = !DIExpression()
!502 = !DILocation(line: 349, column: 27, scope: !374)
!503 = !DILocation(line: 349, column: 43, scope: !374)
!504 = !DILocation(line: 349, column: 61, scope: !374)
!505 = !DILocation(line: 350, column: 27, scope: !374)
!506 = !DILocation(line: 355, column: 20, scope: !374)
!507 = !DILocation(line: 357, column: 10, scope: !374)
!508 = !DILocation(line: 359, column: 16, scope: !374)
!509 = !DILocation(line: 360, column: 17, scope: !374)
!510 = !DILocation(line: 361, column: 16, scope: !374)
!511 = !DILocation(line: 362, column: 16, scope: !374)
!512 = !DILocation(line: 363, column: 9, scope: !374)
!513 = !DILocation(line: 364, column: 19, scope: !374)
!514 = !DILocation(line: 367, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !374, file: !1, line: 367, column: 9)
!516 = !DILocation(line: 367, column: 9, scope: !374)
!517 = !DILocation(line: 372, column: 30, scope: !374)
!518 = !DILocation(line: 356, column: 20, scope: !374)
!519 = !DILocation(line: 373, column: 14, scope: !374)
!520 = !{!521, !523, i64 16}
!521 = !{!"", !522, i64 0, !523, i64 16}
!522 = !{!"_object", !523, i64 0, !526, i64 8}
!523 = !{!"long", !524, i64 0}
!524 = !{!"omnipotent char", !525, i64 0}
!525 = !{!"Simple C/C++ TBAA"}
!526 = !{!"any pointer", !524, i64 0}
!527 = !DILocation(line: 374, column: 29, scope: !528)
!528 = distinct !DILexicalBlock(scope: !374, file: !1, line: 374, column: 9)
!529 = !DILocation(line: 374, column: 9, scope: !528)
!530 = !DILocation(line: 374, column: 37, scope: !528)
!531 = !DILocation(line: 374, column: 9, scope: !374)
!532 = !DILocation(line: 379, column: 15, scope: !374)
!533 = !DILocation(line: 352, column: 22, scope: !374)
!534 = !DILocation(line: 380, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !374, file: !1, line: 380, column: 9)
!536 = !DILocation(line: 380, column: 9, scope: !374)
!537 = !DILocation(line: 384, column: 32, scope: !374)
!538 = !DILocation(line: 385, column: 17, scope: !539)
!539 = distinct !DILexicalBlock(scope: !374, file: !1, line: 385, column: 9)
!540 = !DILocation(line: 385, column: 9, scope: !374)
!541 = !DILocation(line: 386, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !1, line: 385, column: 26)
!543 = !DILocation(line: 387, column: 9, scope: !542)
!544 = !DILocation(line: 390, column: 39, scope: !374)
!545 = !DILocation(line: 389, column: 32, scope: !374)
!546 = !DILocation(line: 397, column: 24, scope: !547)
!547 = distinct !DILexicalBlock(scope: !374, file: !1, line: 397, column: 9)
!548 = !DILocation(line: 397, column: 9, scope: !547)
!549 = !{!524, !524, i64 0}
!550 = !DILocation(line: 397, column: 28, scope: !547)
!551 = !DILocation(line: 397, column: 9, scope: !374)
!552 = !DILocation(line: 401, column: 43, scope: !374)
!553 = !DILocation(line: 401, column: 22, scope: !374)
!554 = !DILocation(line: 401, column: 15, scope: !374)
!555 = !DILocation(line: 402, column: 17, scope: !556)
!556 = distinct !DILexicalBlock(scope: !374, file: !1, line: 402, column: 9)
!557 = !DILocation(line: 402, column: 9, scope: !374)
!558 = !DILocation(line: 403, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !1, line: 402, column: 26)
!560 = !DILocation(line: 725, column: 9, scope: !374)
!561 = !DILocation(line: 291, column: 27, scope: !424, inlinedAt: !562)
!562 = distinct !DILocation(line: 407, column: 14, scope: !374)
!563 = !DILocation(line: 291, column: 44, scope: !424, inlinedAt: !562)
!564 = !DILocation(line: 293, column: 44, scope: !424, inlinedAt: !562)
!565 = !DILocation(line: 293, column: 28, scope: !424, inlinedAt: !562)
!566 = !DILocation(line: 293, column: 19, scope: !424, inlinedAt: !562)
!567 = !DILocation(line: 294, column: 22, scope: !424, inlinedAt: !562)
!568 = !DILocation(line: 296, column: 16, scope: !569, inlinedAt: !562)
!569 = distinct !DILexicalBlock(scope: !424, file: !1, line: 296, column: 9)
!570 = !DILocation(line: 296, column: 9, scope: !424, inlinedAt: !562)
!571 = !DILocation(line: 297, column: 9, scope: !572, inlinedAt: !562)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 296, column: 25)
!573 = !DILocation(line: 300, column: 5, scope: !424, inlinedAt: !562)
!574 = !DILocation(line: 294, column: 9, scope: !424, inlinedAt: !562)
!575 = !DILocation(line: 303, column: 17, scope: !576, inlinedAt: !562)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 303, column: 5)
!577 = distinct !DILexicalBlock(scope: !424, file: !1, line: 303, column: 5)
!578 = !DILocation(line: 303, column: 5, scope: !577, inlinedAt: !562)
!579 = !DILocation(line: 304, column: 18, scope: !580, inlinedAt: !562)
!580 = distinct !DILexicalBlock(scope: !576, file: !1, line: 303, column: 45)
!581 = !DILocation(line: 407, column: 14, scope: !374)
!582 = !DILocation(line: 318, column: 21, scope: !583, inlinedAt: !562)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 305, column: 25)
!584 = !DILocation(line: 294, column: 14, scope: !424, inlinedAt: !562)
!585 = !DILocation(line: 305, column: 9, scope: !580, inlinedAt: !562)
!586 = !DILocation(line: 318, column: 21, scope: !587, inlinedAt: !562)
!587 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 12)
!588 = !DILocation(line: 318, column: 21, scope: !589, inlinedAt: !562)
!589 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 14)
!590 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 13)
!591 = !DILocation(line: 294, column: 11, scope: !424, inlinedAt: !562)
!592 = !DILocation(line: 319, column: 17, scope: !583, inlinedAt: !562)
!593 = !DILocation(line: 319, column: 27, scope: !583, inlinedAt: !562)
!594 = !{!595, !595, i64 0}
!595 = !{!"int", !524, i64 0}
!596 = !DILocation(line: 320, column: 17, scope: !583, inlinedAt: !562)
!597 = !DILocation(line: 303, column: 27, scope: !576, inlinedAt: !562)
!598 = !DILocation(line: 303, column: 25, scope: !576, inlinedAt: !562)
!599 = !DILocation(line: 303, column: 16, scope: !600, inlinedAt: !562)
!600 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 2)
!601 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!602 = !DILocation(line: 325, column: 21, scope: !603, inlinedAt: !562)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 324, column: 29)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 324, column: 5)
!605 = distinct !DILexicalBlock(scope: !424, file: !1, line: 324, column: 5)
!606 = !DILocation(line: 325, column: 18, scope: !603, inlinedAt: !562)
!607 = !DILocation(line: 326, column: 19, scope: !603, inlinedAt: !562)
!608 = !DILocation(line: 324, column: 25, scope: !604, inlinedAt: !562)
!609 = !DILocation(line: 324, column: 16, scope: !610, inlinedAt: !562)
!610 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 2)
!611 = !DILexicalBlockFile(scope: !604, file: !1, discriminator: 1)
!612 = !DILocation(line: 324, column: 17, scope: !604, inlinedAt: !562)
!613 = !DILocation(line: 324, column: 5, scope: !605, inlinedAt: !562)
!614 = !DILocation(line: 412, column: 5, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 2)
!616 = distinct !DILexicalBlock(scope: !374, file: !1, line: 412, column: 5)
!617 = !DILocation(line: 412, column: 5, scope: !618)
!618 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 6)
!619 = !DILocation(line: 412, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !1, line: 412, column: 5)
!621 = !DILocation(line: 412, column: 5, scope: !622)
!622 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 9)
!623 = !DILocation(line: 414, column: 5, scope: !409)
!624 = !DILocation(line: 455, column: 17, scope: !625)
!625 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 1)
!626 = !DILocation(line: 107, column: 18, scope: !435, inlinedAt: !627)
!627 = distinct !DILocation(line: 486, column: 21, scope: !413)
!628 = !DILocation(line: 412, column: 5, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 11)
!630 = !DILexicalBlockFile(scope: !631, file: !1, discriminator: 10)
!631 = distinct !DILexicalBlock(scope: !620, file: !1, line: 412, column: 5)
!632 = !DILocation(line: 416, column: 18, scope: !407)
!633 = !DILocation(line: 427, column: 30, scope: !634)
!634 = distinct !DILexicalBlock(scope: !406, file: !1, line: 427, column: 21)
!635 = !DILocation(line: 427, column: 21, scope: !634)
!636 = !DILocation(line: 428, column: 25, scope: !637)
!637 = !DILexicalBlockFile(scope: !634, file: !1, discriminator: 1)
!638 = !DILocation(line: 430, column: 21, scope: !406)
!639 = !DILocation(line: 662, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !374, file: !1, line: 662, column: 5)
!641 = !DILocation(line: 663, column: 26, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 662, column: 63)
!643 = distinct !DILexicalBlock(scope: !640, file: !1, line: 662, column: 5)
!644 = !DILocation(line: 161, column: 14, scope: !458, inlinedAt: !645)
!645 = distinct !DILocation(line: 533, column: 21, scope: !417)
!646 = !DILocation(line: 354, column: 22, scope: !374)
!647 = !DILocation(line: 418, column: 14, scope: !648)
!648 = distinct !DILexicalBlock(scope: !407, file: !1, line: 418, column: 13)
!649 = !DILocation(line: 418, column: 13, scope: !407)
!650 = !DILocation(line: 423, column: 9, scope: !407)
!651 = !DILocation(line: 427, column: 34, scope: !634)
!652 = !DILocation(line: 428, column: 21, scope: !634)
!653 = !DILocation(line: 427, column: 21, scope: !406)
!654 = !DILocation(line: 431, column: 28, scope: !406)
!655 = !DILocation(line: 432, column: 17, scope: !406)
!656 = !DILocation(line: 433, column: 30, scope: !406)
!657 = !DILocation(line: 434, column: 17, scope: !406)
!658 = !DILocation(line: 442, column: 21, scope: !406)
!659 = !DILocation(line: 352, column: 19, scope: !374)
!660 = !DILocation(line: 443, column: 28, scope: !661)
!661 = distinct !DILexicalBlock(scope: !406, file: !1, line: 443, column: 21)
!662 = !DILocation(line: 444, column: 21, scope: !661)
!663 = !DILocation(line: 444, column: 34, scope: !661)
!664 = !DILocation(line: 444, column: 48, scope: !661)
!665 = !DILocation(line: 445, column: 22, scope: !661)
!666 = !DILocation(line: 443, column: 21, scope: !406)
!667 = !DILocation(line: 447, column: 17, scope: !406)
!668 = !DILocation(line: 448, column: 30, scope: !406)
!669 = !DILocation(line: 449, column: 17, scope: !406)
!670 = !{!671, !526, i64 24}
!671 = !{!"", !521, i64 0, !526, i64 24, !523, i64 32}
!672 = !{!526, !526, i64 0}
!673 = !DILocation(line: 455, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !405, file: !1, line: 455, column: 17)
!675 = !DILocation(line: 455, column: 17, scope: !405)
!676 = !DILocation(line: 455, column: 17, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 2)
!678 = distinct !DILexicalBlock(scope: !674, file: !1, line: 455, column: 17)
!679 = !DILocation(line: 455, column: 17, scope: !680)
!680 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 5)
!681 = !DILocation(line: 455, column: 17, scope: !682)
!682 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 9)
!683 = !DILocation(line: 455, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !1, line: 455, column: 17)
!685 = !DILocation(line: 455, column: 17, scope: !686)
!686 = !DILexicalBlockFile(scope: !684, file: !1, discriminator: 12)
!687 = !DILocation(line: 455, column: 17, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !1, discriminator: 15)
!689 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 13)
!690 = distinct !DILexicalBlock(scope: !684, file: !1, line: 455, column: 17)
!691 = !DILocation(line: 455, column: 17, scope: !692)
!692 = !DILexicalBlockFile(scope: !693, file: !1, discriminator: 17)
!693 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 3)
!694 = !{!523, !523, i64 0}
!695 = !DILocation(line: 456, column: 21, scope: !406)
!696 = !DILocation(line: 457, column: 21, scope: !697)
!697 = distinct !DILexicalBlock(scope: !406, file: !1, line: 457, column: 21)
!698 = !DILocation(line: 457, column: 34, scope: !697)
!699 = !DILocation(line: 457, column: 56, scope: !697)
!700 = !DILocation(line: 458, column: 22, scope: !697)
!701 = !DILocation(line: 458, column: 48, scope: !697)
!702 = !DILocation(line: 459, column: 38, scope: !697)
!703 = !DILocation(line: 459, column: 22, scope: !697)
!704 = !DILocation(line: 457, column: 21, scope: !406)
!705 = !DILocation(line: 461, column: 17, scope: !406)
!706 = !DILocation(line: 463, column: 17, scope: !406)
!707 = !DILocation(line: 473, column: 21, scope: !406)
!708 = !DILocation(line: 474, column: 23, scope: !709)
!709 = distinct !DILexicalBlock(scope: !406, file: !1, line: 474, column: 21)
!710 = !DILocation(line: 474, column: 21, scope: !406)
!711 = !DILocation(line: 476, column: 21, scope: !406)
!712 = !DILocation(line: 476, column: 21, scope: !713)
!713 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!714 = !DILocation(line: 476, column: 21, scope: !715)
!715 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 4)
!716 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 3)
!717 = !DILocation(line: 353, column: 15, scope: !374)
!718 = !DILocation(line: 478, column: 28, scope: !413)
!719 = !DILocation(line: 478, column: 42, scope: !413)
!720 = !DILocation(line: 479, column: 30, scope: !413)
!721 = !DILocation(line: 479, column: 45, scope: !413)
!722 = !DILocation(line: 480, column: 23, scope: !413)
!723 = !DILocation(line: 480, column: 55, scope: !413)
!724 = !DILocation(line: 481, column: 45, scope: !413)
!725 = !DILocation(line: 482, column: 23, scope: !413)
!726 = !DILocation(line: 482, column: 35, scope: !413)
!727 = !DILocation(line: 482, column: 48, scope: !413)
!728 = !DILocation(line: 483, column: 23, scope: !413)
!729 = !DILocation(line: 483, column: 54, scope: !413)
!730 = !DILocation(line: 484, column: 24, scope: !413)
!731 = !DILocation(line: 484, column: 47, scope: !413)
!732 = !DILocation(line: 486, column: 64, scope: !413)
!733 = !DILocation(line: 94, column: 35, scope: !435, inlinedAt: !627)
!734 = !DILocation(line: 94, column: 55, scope: !435, inlinedAt: !627)
!735 = !DILocation(line: 95, column: 30, scope: !435, inlinedAt: !627)
!736 = !DILocation(line: 95, column: 49, scope: !435, inlinedAt: !627)
!737 = !DILocation(line: 104, column: 16, scope: !435, inlinedAt: !627)
!738 = !DILocation(line: 97, column: 15, scope: !435, inlinedAt: !627)
!739 = !DILocation(line: 105, column: 18, scope: !740, inlinedAt: !627)
!740 = distinct !DILexicalBlock(scope: !435, file: !1, line: 105, column: 9)
!741 = !DILocation(line: 105, column: 9, scope: !435, inlinedAt: !627)
!742 = !DILocation(line: 98, column: 19, scope: !435, inlinedAt: !627)
!743 = !DILocation(line: 98, column: 16, scope: !435, inlinedAt: !627)
!744 = !DILocation(line: 111, column: 9, scope: !745, inlinedAt: !627)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 108, column: 27)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 108, column: 5)
!747 = distinct !DILexicalBlock(scope: !435, file: !1, line: 108, column: 5)
!748 = !DILocation(line: 108, column: 5, scope: !747, inlinedAt: !627)
!749 = !DILocation(line: 109, column: 20, scope: !745, inlinedAt: !627)
!750 = !DILocation(line: 97, column: 26, scope: !435, inlinedAt: !627)
!751 = !DILocation(line: 110, column: 9, scope: !745, inlinedAt: !627)
!752 = !{!522, !523, i64 0}
!753 = !DILocation(line: 486, column: 21, scope: !413)
!754 = !DILocation(line: 108, column: 23, scope: !746, inlinedAt: !627)
!755 = !DILocation(line: 116, column: 9, scope: !449, inlinedAt: !627)
!756 = !DILocation(line: 116, column: 20, scope: !449, inlinedAt: !627)
!757 = !DILocation(line: 116, column: 9, scope: !435, inlinedAt: !627)
!758 = !DILocation(line: 117, column: 19, scope: !448, inlinedAt: !627)
!759 = !DILocation(line: 118, column: 20, scope: !448, inlinedAt: !627)
!760 = !DILocation(line: 119, column: 9, scope: !761, inlinedAt: !627)
!761 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 1)
!762 = !DILocation(line: 119, column: 9, scope: !763, inlinedAt: !627)
!763 = distinct !DILexicalBlock(scope: !451, file: !1, line: 119, column: 9)
!764 = !DILocation(line: 119, column: 9, scope: !451, inlinedAt: !627)
!765 = !DILocation(line: 119, column: 9, scope: !766, inlinedAt: !627)
!766 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 3)
!767 = !{!522, !526, i64 8}
!768 = !{!769, !526, i64 48}
!769 = !{!"_typeobject", !521, i64 0, !526, i64 24, !523, i64 32, !523, i64 40, !526, i64 48, !526, i64 56, !526, i64 64, !526, i64 72, !526, i64 80, !526, i64 88, !526, i64 96, !526, i64 104, !526, i64 112, !526, i64 120, !526, i64 128, !526, i64 136, !526, i64 144, !526, i64 152, !526, i64 160, !523, i64 168, !526, i64 176, !526, i64 184, !526, i64 192, !526, i64 200, !523, i64 208, !526, i64 216, !526, i64 224, !526, i64 232, !526, i64 240, !526, i64 248, !526, i64 256, !526, i64 264, !526, i64 272, !526, i64 280, !523, i64 288, !526, i64 296, !526, i64 304, !526, i64 312, !526, i64 320, !526, i64 328, !526, i64 336, !526, i64 344, !526, i64 352, !526, i64 360, !526, i64 368, !526, i64 376, !595, i64 384, !526, i64 392}
!770 = !DILocation(line: 121, column: 13, scope: !771, inlinedAt: !627)
!771 = distinct !DILexicalBlock(scope: !448, file: !1, line: 120, column: 13)
!772 = !DILocation(line: 125, column: 9, scope: !455, inlinedAt: !627)
!773 = !DILocation(line: 129, column: 5, scope: !774, inlinedAt: !627)
!774 = distinct !DILexicalBlock(scope: !457, file: !1, line: 129, column: 5)
!775 = !DILocation(line: 125, column: 9, scope: !435, inlinedAt: !627)
!776 = !DILocation(line: 126, column: 9, scope: !777, inlinedAt: !627)
!777 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!778 = !DILocation(line: 126, column: 9, scope: !453, inlinedAt: !627)
!779 = !DILocation(line: 126, column: 9, scope: !780, inlinedAt: !627)
!780 = !DILexicalBlockFile(scope: !781, file: !1, discriminator: 3)
!781 = distinct !DILexicalBlock(scope: !453, file: !1, line: 126, column: 9)
!782 = !DILocation(line: 129, column: 5, scope: !783, inlinedAt: !627)
!783 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 1)
!784 = !DILocation(line: 129, column: 5, scope: !457, inlinedAt: !627)
!785 = !DILocation(line: 129, column: 5, scope: !786, inlinedAt: !627)
!786 = !DILexicalBlockFile(scope: !774, file: !1, discriminator: 3)
!787 = !DILocation(line: 133, column: 16, scope: !435, inlinedAt: !627)
!788 = !DILocation(line: 134, column: 5, scope: !435, inlinedAt: !627)
!789 = !DILocation(line: 488, column: 29, scope: !412)
!790 = !DILocation(line: 488, column: 48, scope: !412)
!791 = !DILocation(line: 488, column: 21, scope: !412)
!792 = !DILocation(line: 490, column: 21, scope: !793)
!793 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 1)
!794 = !DILocation(line: 490, column: 21, scope: !795)
!795 = distinct !DILexicalBlock(scope: !411, file: !1, line: 490, column: 21)
!796 = !DILocation(line: 490, column: 21, scope: !411)
!797 = !DILocation(line: 490, column: 21, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 2)
!799 = distinct !DILexicalBlock(scope: !795, file: !1, line: 490, column: 21)
!800 = !DILocation(line: 490, column: 21, scope: !801)
!801 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 5)
!802 = !DILocation(line: 490, column: 21, scope: !803)
!803 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 9)
!804 = !DILocation(line: 490, column: 21, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !1, line: 490, column: 21)
!806 = !DILocation(line: 490, column: 21, scope: !807)
!807 = !DILexicalBlockFile(scope: !805, file: !1, discriminator: 12)
!808 = !DILocation(line: 490, column: 21, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 17)
!810 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 3)
!811 = !DILocation(line: 490, column: 21, scope: !812)
!812 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 15)
!813 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 13)
!814 = distinct !DILexicalBlock(scope: !805, file: !1, line: 490, column: 21)
!815 = !DILocation(line: 493, column: 21, scope: !816)
!816 = distinct !DILexicalBlock(scope: !406, file: !1, line: 493, column: 21)
!817 = !DILocation(line: 493, column: 34, scope: !816)
!818 = !DILocation(line: 493, column: 54, scope: !816)
!819 = !DILocation(line: 494, column: 22, scope: !816)
!820 = !DILocation(line: 494, column: 47, scope: !816)
!821 = !DILocation(line: 495, column: 26, scope: !816)
!822 = !DILocation(line: 495, column: 23, scope: !816)
!823 = !DILocation(line: 496, column: 28, scope: !816)
!824 = !DILocation(line: 495, column: 47, scope: !816)
!825 = !DILocation(line: 498, column: 21, scope: !406)
!826 = !DILocation(line: 499, column: 21, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 498, column: 29)
!828 = distinct !DILexicalBlock(scope: !406, file: !1, line: 498, column: 21)
!829 = !DILocation(line: 500, column: 17, scope: !827)
!830 = !DILocation(line: 501, column: 32, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 500, column: 36)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 500, column: 28)
!833 = !DILocation(line: 502, column: 37, scope: !831)
!834 = !DILocation(line: 502, column: 21, scope: !831)
!835 = !DILocation(line: 504, column: 17, scope: !831)
!836 = !DILocation(line: 505, column: 32, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 504, column: 36)
!838 = distinct !DILexicalBlock(scope: !832, file: !1, line: 504, column: 28)
!839 = !DILocation(line: 506, column: 34, scope: !837)
!840 = !DILocation(line: 507, column: 37, scope: !837)
!841 = !DILocation(line: 507, column: 21, scope: !837)
!842 = !DILocation(line: 509, column: 17, scope: !837)
!843 = !DILocation(line: 529, column: 21, scope: !406)
!844 = !DILocation(line: 529, column: 21, scope: !713)
!845 = !DILocation(line: 529, column: 21, scope: !715)
!846 = !DILocation(line: 531, column: 23, scope: !417)
!847 = !DILocation(line: 531, column: 28, scope: !417)
!848 = !DILocation(line: 532, column: 21, scope: !417)
!849 = !DILocation(line: 532, column: 53, scope: !417)
!850 = !DILocation(line: 533, column: 67, scope: !417)
!851 = !DILocation(line: 151, column: 26, scope: !458, inlinedAt: !645)
!852 = !DILocation(line: 151, column: 30, scope: !458, inlinedAt: !645)
!853 = !DILocation(line: 153, column: 9, scope: !458, inlinedAt: !645)
!854 = !DILocation(line: 162, column: 5, scope: !458, inlinedAt: !645)
!855 = !DILocation(line: 164, column: 24, scope: !856, inlinedAt: !645)
!856 = distinct !DILexicalBlock(scope: !458, file: !1, line: 162, column: 21)
!857 = !DILocation(line: 151, column: 15, scope: !458, inlinedAt: !645)
!858 = !DILocation(line: 165, column: 13, scope: !856, inlinedAt: !645)
!859 = !DILocation(line: 167, column: 24, scope: !856, inlinedAt: !645)
!860 = !DILocation(line: 168, column: 13, scope: !856, inlinedAt: !645)
!861 = !DILocation(line: 170, column: 24, scope: !856, inlinedAt: !645)
!862 = !DILocation(line: 171, column: 13, scope: !856, inlinedAt: !645)
!863 = !DILocation(line: 173, column: 24, scope: !856, inlinedAt: !645)
!864 = !DILocation(line: 174, column: 13, scope: !856, inlinedAt: !645)
!865 = !DILocation(line: 176, column: 24, scope: !856, inlinedAt: !645)
!866 = !DILocation(line: 177, column: 13, scope: !856, inlinedAt: !645)
!867 = !DILocation(line: 179, column: 24, scope: !856, inlinedAt: !645)
!868 = !DILocation(line: 180, column: 13, scope: !856, inlinedAt: !645)
!869 = !DILocation(line: 182, column: 24, scope: !856, inlinedAt: !645)
!870 = !DILocation(line: 183, column: 13, scope: !856, inlinedAt: !645)
!871 = !DILocation(line: 185, column: 24, scope: !856, inlinedAt: !645)
!872 = !DILocation(line: 186, column: 13, scope: !856, inlinedAt: !645)
!873 = !DILocation(line: 188, column: 24, scope: !856, inlinedAt: !645)
!874 = !DILocation(line: 189, column: 13, scope: !856, inlinedAt: !645)
!875 = !DILocation(line: 191, column: 24, scope: !856, inlinedAt: !645)
!876 = !DILocation(line: 192, column: 13, scope: !856, inlinedAt: !645)
!877 = !DILocation(line: 194, column: 24, scope: !856, inlinedAt: !645)
!878 = !DILocation(line: 195, column: 13, scope: !856, inlinedAt: !645)
!879 = !DILocation(line: 197, column: 24, scope: !856, inlinedAt: !645)
!880 = !DILocation(line: 198, column: 13, scope: !856, inlinedAt: !645)
!881 = !DILocation(line: 200, column: 24, scope: !856, inlinedAt: !645)
!882 = !DILocation(line: 201, column: 13, scope: !856, inlinedAt: !645)
!883 = !DILocation(line: 204, column: 26, scope: !856, inlinedAt: !645)
!884 = !DILocation(line: 204, column: 13, scope: !856, inlinedAt: !645)
!885 = !DILocation(line: 207, column: 13, scope: !856, inlinedAt: !645)
!886 = !DILocation(line: 533, column: 21, scope: !417)
!887 = !DILocation(line: 209, column: 18, scope: !888, inlinedAt: !645)
!888 = distinct !DILexicalBlock(scope: !458, file: !1, line: 209, column: 9)
!889 = !DILocation(line: 209, column: 9, scope: !458, inlinedAt: !645)
!890 = !DILocation(line: 210, column: 36, scope: !891, inlinedAt: !645)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 210, column: 12)
!892 = distinct !DILexicalBlock(scope: !888, file: !1, line: 209, column: 27)
!893 = !DILocation(line: 210, column: 13, scope: !891, inlinedAt: !645)
!894 = !DILocation(line: 210, column: 12, scope: !892, inlinedAt: !645)
!895 = !DILocation(line: 211, column: 13, scope: !891, inlinedAt: !645)
!896 = !DILocation(line: 214, column: 12, scope: !458, inlinedAt: !645)
!897 = !DILocation(line: 152, column: 28, scope: !458, inlinedAt: !645)
!898 = !DILocation(line: 215, column: 14, scope: !475, inlinedAt: !645)
!899 = !DILocation(line: 215, column: 9, scope: !458, inlinedAt: !645)
!900 = !DILocation(line: 216, column: 36, scope: !901, inlinedAt: !645)
!901 = distinct !DILexicalBlock(scope: !902, file: !1, line: 216, column: 13)
!902 = distinct !DILexicalBlock(scope: !475, file: !1, line: 215, column: 21)
!903 = !DILocation(line: 216, column: 13, scope: !901, inlinedAt: !645)
!904 = !DILocation(line: 216, column: 13, scope: !902, inlinedAt: !645)
!905 = !DILocation(line: 218, column: 9, scope: !902, inlinedAt: !645)
!906 = !DILocation(line: 219, column: 5, scope: !902, inlinedAt: !645)
!907 = !DILocation(line: 219, column: 21, scope: !474, inlinedAt: !645)
!908 = !DILocation(line: 219, column: 16, scope: !475, inlinedAt: !645)
!909 = !DILocation(line: 220, column: 9, scope: !910, inlinedAt: !645)
!910 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 1)
!911 = !DILocation(line: 220, column: 9, scope: !912, inlinedAt: !645)
!912 = distinct !DILexicalBlock(scope: !472, file: !1, line: 220, column: 9)
!913 = !DILocation(line: 220, column: 9, scope: !472, inlinedAt: !645)
!914 = !DILocation(line: 220, column: 9, scope: !915, inlinedAt: !645)
!915 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 3)
!916 = !DILocation(line: 225, column: 18, scope: !458, inlinedAt: !645)
!917 = !DILocation(line: 152, column: 16, scope: !458, inlinedAt: !645)
!918 = !DILocation(line: 226, column: 9, scope: !479, inlinedAt: !645)
!919 = !DILocation(line: 230, column: 5, scope: !920, inlinedAt: !645)
!920 = distinct !DILexicalBlock(scope: !481, file: !1, line: 230, column: 5)
!921 = !DILocation(line: 226, column: 9, scope: !458, inlinedAt: !645)
!922 = !DILocation(line: 227, column: 9, scope: !923, inlinedAt: !645)
!923 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 1)
!924 = !DILocation(line: 227, column: 9, scope: !477, inlinedAt: !645)
!925 = !DILocation(line: 227, column: 9, scope: !926, inlinedAt: !645)
!926 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 3)
!927 = distinct !DILexicalBlock(scope: !477, file: !1, line: 227, column: 9)
!928 = !DILocation(line: 230, column: 5, scope: !929, inlinedAt: !645)
!929 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!930 = !DILocation(line: 230, column: 5, scope: !481, inlinedAt: !645)
!931 = !DILocation(line: 230, column: 5, scope: !932, inlinedAt: !645)
!932 = !DILexicalBlockFile(scope: !920, file: !1, discriminator: 3)
!933 = !DILocation(line: 233, column: 5, scope: !458, inlinedAt: !645)
!934 = !DILocation(line: 233, column: 17, scope: !458, inlinedAt: !645)
!935 = !DILocation(line: 234, column: 5, scope: !458, inlinedAt: !645)
!936 = !DILocation(line: 534, column: 23, scope: !416)
!937 = !DILocation(line: 352, column: 16, scope: !374)
!938 = !DILocation(line: 535, column: 29, scope: !416)
!939 = !DILocation(line: 535, column: 48, scope: !416)
!940 = !DILocation(line: 535, column: 21, scope: !416)
!941 = !DILocation(line: 538, column: 21, scope: !942)
!942 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 1)
!943 = !DILocation(line: 538, column: 21, scope: !944)
!944 = distinct !DILexicalBlock(scope: !415, file: !1, line: 538, column: 21)
!945 = !DILocation(line: 538, column: 21, scope: !415)
!946 = !DILocation(line: 538, column: 21, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 2)
!948 = distinct !DILexicalBlock(scope: !944, file: !1, line: 538, column: 21)
!949 = !DILocation(line: 538, column: 21, scope: !950)
!950 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 5)
!951 = !DILocation(line: 538, column: 21, scope: !952)
!952 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 9)
!953 = !DILocation(line: 538, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !1, line: 538, column: 21)
!955 = !DILocation(line: 538, column: 21, scope: !956)
!956 = !DILexicalBlockFile(scope: !954, file: !1, discriminator: 12)
!957 = !DILocation(line: 538, column: 21, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 17)
!959 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 3)
!960 = !DILocation(line: 538, column: 21, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 15)
!962 = !DILexicalBlockFile(scope: !963, file: !1, discriminator: 13)
!963 = distinct !DILexicalBlock(scope: !954, file: !1, line: 538, column: 21)
!964 = !DILocation(line: 547, column: 21, scope: !406)
!965 = !DILocation(line: 547, column: 21, scope: !713)
!966 = !DILocation(line: 547, column: 21, scope: !715)
!967 = !DILocation(line: 549, column: 23, scope: !421)
!968 = !DILocation(line: 549, column: 28, scope: !421)
!969 = !DILocation(line: 550, column: 21, scope: !421)
!970 = !DILocation(line: 550, column: 53, scope: !421)
!971 = !DILocation(line: 551, column: 58, scope: !421)
!972 = !DILocation(line: 551, column: 49, scope: !421)
!973 = !DILocation(line: 551, column: 71, scope: !421)
!974 = !DILocation(line: 239, column: 43, scope: !482, inlinedAt: !975)
!975 = distinct !DILocation(line: 551, column: 21, scope: !421)
!976 = !DILocation(line: 239, column: 62, scope: !482, inlinedAt: !975)
!977 = !DILocation(line: 239, column: 80, scope: !482, inlinedAt: !975)
!978 = !DILocation(line: 250, column: 14, scope: !482, inlinedAt: !975)
!979 = !DILocation(line: 243, column: 9, scope: !482, inlinedAt: !975)
!980 = !DILocation(line: 251, column: 5, scope: !482, inlinedAt: !975)
!981 = !DILocation(line: 253, column: 24, scope: !982, inlinedAt: !975)
!982 = distinct !DILexicalBlock(scope: !482, file: !1, line: 251, column: 21)
!983 = !DILocation(line: 241, column: 15, scope: !482, inlinedAt: !975)
!984 = !DILocation(line: 254, column: 13, scope: !982, inlinedAt: !975)
!985 = !DILocation(line: 256, column: 24, scope: !982, inlinedAt: !975)
!986 = !DILocation(line: 257, column: 13, scope: !982, inlinedAt: !975)
!987 = !DILocation(line: 259, column: 24, scope: !982, inlinedAt: !975)
!988 = !DILocation(line: 260, column: 13, scope: !982, inlinedAt: !975)
!989 = !DILocation(line: 263, column: 26, scope: !982, inlinedAt: !975)
!990 = !DILocation(line: 263, column: 13, scope: !982, inlinedAt: !975)
!991 = !DILocation(line: 266, column: 13, scope: !982, inlinedAt: !975)
!992 = !DILocation(line: 551, column: 21, scope: !421)
!993 = !DILocation(line: 268, column: 18, scope: !994, inlinedAt: !975)
!994 = distinct !DILexicalBlock(scope: !482, file: !1, line: 268, column: 9)
!995 = !DILocation(line: 268, column: 9, scope: !482, inlinedAt: !975)
!996 = !DILocation(line: 269, column: 36, scope: !997, inlinedAt: !975)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 269, column: 12)
!998 = distinct !DILexicalBlock(scope: !994, file: !1, line: 268, column: 27)
!999 = !DILocation(line: 269, column: 13, scope: !997, inlinedAt: !975)
!1000 = !DILocation(line: 269, column: 12, scope: !998, inlinedAt: !975)
!1001 = !DILocation(line: 270, column: 13, scope: !997, inlinedAt: !975)
!1002 = !DILocation(line: 275, column: 18, scope: !482, inlinedAt: !975)
!1003 = !DILocation(line: 242, column: 16, scope: !482, inlinedAt: !975)
!1004 = !DILocation(line: 276, column: 9, scope: !495, inlinedAt: !975)
!1005 = !DILocation(line: 281, column: 5, scope: !1006, inlinedAt: !975)
!1006 = distinct !DILexicalBlock(scope: !497, file: !1, line: 281, column: 5)
!1007 = !DILocation(line: 276, column: 9, scope: !482, inlinedAt: !975)
!1008 = !DILocation(line: 277, column: 9, scope: !1009, inlinedAt: !975)
!1009 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 1)
!1010 = !DILocation(line: 277, column: 9, scope: !493, inlinedAt: !975)
!1011 = !DILocation(line: 277, column: 9, scope: !1012, inlinedAt: !975)
!1012 = !DILexicalBlockFile(scope: !1013, file: !1, discriminator: 3)
!1013 = distinct !DILexicalBlock(scope: !493, file: !1, line: 277, column: 9)
!1014 = !DILocation(line: 278, column: 9, scope: !494, inlinedAt: !975)
!1015 = !DILocation(line: 279, column: 9, scope: !494, inlinedAt: !975)
!1016 = !DILocation(line: 281, column: 5, scope: !1017, inlinedAt: !975)
!1017 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!1018 = !DILocation(line: 281, column: 5, scope: !497, inlinedAt: !975)
!1019 = !DILocation(line: 281, column: 5, scope: !1020, inlinedAt: !975)
!1020 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 3)
!1021 = !DILocation(line: 284, column: 16, scope: !482, inlinedAt: !975)
!1022 = !DILocation(line: 285, column: 5, scope: !482, inlinedAt: !975)
!1023 = !DILocation(line: 285, column: 16, scope: !482, inlinedAt: !975)
!1024 = !DILocation(line: 286, column: 5, scope: !482, inlinedAt: !975)
!1025 = !DILocation(line: 552, column: 23, scope: !420)
!1026 = !DILocation(line: 555, column: 21, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 1)
!1028 = !DILocation(line: 555, column: 21, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !419, file: !1, line: 555, column: 21)
!1030 = !DILocation(line: 555, column: 21, scope: !419)
!1031 = !DILocation(line: 555, column: 21, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !1, discriminator: 2)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 555, column: 21)
!1034 = !DILocation(line: 555, column: 21, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1033, file: !1, discriminator: 5)
!1036 = !DILocation(line: 555, column: 21, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1033, file: !1, discriminator: 9)
!1038 = !DILocation(line: 555, column: 21, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 555, column: 21)
!1040 = !DILocation(line: 555, column: 21, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 12)
!1042 = !DILocation(line: 555, column: 21, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 17)
!1044 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 3)
!1045 = !DILocation(line: 555, column: 21, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1047, file: !1, discriminator: 15)
!1047 = !DILexicalBlockFile(scope: !1048, file: !1, discriminator: 13)
!1048 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 555, column: 21)
!1049 = !DILocation(line: 575, column: 23, scope: !406)
!1050 = !DILocation(line: 575, column: 23, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 12)
!1052 = !DILocation(line: 575, column: 23, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 14)
!1054 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 13)
!1055 = !DILocation(line: 354, column: 9, scope: !374)
!1056 = !DILocation(line: 576, column: 21, scope: !406)
!1057 = !DILocation(line: 577, column: 21, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !406, file: !1, line: 577, column: 21)
!1059 = !DILocation(line: 577, column: 21, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1058, file: !1, discriminator: 3)
!1061 = !DILocation(line: 577, column: 21, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1058, file: !1, discriminator: 1)
!1063 = !DILocation(line: 580, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 580, column: 25)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 577, column: 42)
!1066 = !DILocation(line: 580, column: 45, scope: !1064)
!1067 = !DILocation(line: 580, column: 45, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1064, file: !1, discriminator: 5)
!1069 = !DILocation(line: 580, column: 42, scope: !1064)
!1070 = !DILocation(line: 580, column: 25, scope: !1065)
!1071 = !DILocation(line: 583, column: 34, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 580, column: 68)
!1073 = !DILocation(line: 583, column: 34, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1072, file: !1, discriminator: 12)
!1075 = !DILocation(line: 583, column: 34, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 14)
!1077 = !DILexicalBlockFile(scope: !1072, file: !1, discriminator: 13)
!1078 = !DILocation(line: 354, column: 14, scope: !374)
!1079 = !DILocation(line: 586, column: 36, scope: !1072)
!1080 = !DILocation(line: 587, column: 25, scope: !1072)
!1081 = !DILocation(line: 588, column: 25, scope: !1072)
!1082 = !DILocation(line: 597, column: 29, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 597, column: 29)
!1084 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 589, column: 28)
!1085 = !DILocation(line: 598, column: 40, scope: !1083)
!1086 = !DILocation(line: 601, column: 25, scope: !1084)
!1087 = !DILocation(line: 602, column: 25, scope: !1084)
!1088 = !DILocation(line: 618, column: 23, scope: !406)
!1089 = !DILocation(line: 618, column: 23, scope: !1051)
!1090 = !DILocation(line: 618, column: 23, scope: !1053)
!1091 = !DILocation(line: 620, column: 21, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1093, file: !1, discriminator: 1)
!1093 = distinct !DILexicalBlock(scope: !406, file: !1, line: 620, column: 21)
!1094 = !DILocation(line: 620, column: 21, scope: !1093)
!1095 = !DILocation(line: 626, column: 22, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !406, file: !1, line: 626, column: 21)
!1097 = !DILocation(line: 621, column: 21, scope: !1093)
!1098 = !DILocation(line: 621, column: 34, scope: !1093)
!1099 = !DILocation(line: 620, column: 21, scope: !406)
!1100 = !DILocation(line: 622, column: 32, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 621, column: 51)
!1102 = !DILocation(line: 623, column: 37, scope: !1101)
!1103 = !DILocation(line: 623, column: 21, scope: !1101)
!1104 = !DILocation(line: 624, column: 21, scope: !1101)
!1105 = !DILocation(line: 628, column: 26, scope: !406)
!1106 = !DILocation(line: 628, column: 26, scope: !1051)
!1107 = !DILocation(line: 628, column: 26, scope: !1053)
!1108 = !DILocation(line: 629, column: 21, scope: !406)
!1109 = !DILocation(line: 631, column: 22, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 1)
!1111 = distinct !DILexicalBlock(scope: !406, file: !1, line: 631, column: 21)
!1112 = !DILocation(line: 631, column: 22, scope: !1111)
!1113 = !DILocation(line: 632, column: 28, scope: !1111)
!1114 = !DILocation(line: 632, column: 33, scope: !1111)
!1115 = !DILocation(line: 633, column: 28, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !406, file: !1, line: 633, column: 21)
!1117 = !DILocation(line: 633, column: 21, scope: !406)
!1118 = !DILocation(line: 635, column: 30, scope: !406)
!1119 = !DILocation(line: 635, column: 28, scope: !406)
!1120 = !DILocation(line: 636, column: 17, scope: !406)
!1121 = !DILocation(line: 637, column: 17, scope: !406)
!1122 = !DILocation(line: 640, column: 21, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !406, file: !1, line: 640, column: 21)
!1124 = !DILocation(line: 640, column: 34, scope: !1123)
!1125 = !DILocation(line: 640, column: 21, scope: !406)
!1126 = !DILocation(line: 649, column: 22, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !406, file: !1, line: 649, column: 21)
!1128 = !DILocation(line: 649, column: 25, scope: !1127)
!1129 = !DILocation(line: 649, column: 21, scope: !406)
!1130 = !DILocation(line: 651, column: 21, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !406, file: !1, line: 651, column: 21)
!1132 = !DILocation(line: 651, column: 34, scope: !1131)
!1133 = !DILocation(line: 651, column: 50, scope: !1131)
!1134 = !DILocation(line: 652, column: 21, scope: !1131)
!1135 = !DILocation(line: 651, column: 21, scope: !406)
!1136 = !DILocation(line: 653, column: 37, scope: !1131)
!1137 = !DILocation(line: 653, column: 21, scope: !1131)
!1138 = !DILocation(line: 654, column: 26, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 654, column: 26)
!1140 = !DILocation(line: 655, column: 26, scope: !1139)
!1141 = !DILocation(line: 654, column: 26, scope: !1131)
!1142 = !DILocation(line: 656, column: 37, scope: !1139)
!1143 = !DILocation(line: 656, column: 21, scope: !1139)
!1144 = !DILocation(line: 414, column: 33, scope: !408)
!1145 = !DILocation(line: 414, column: 30, scope: !408)
!1146 = !DILocation(line: 414, column: 17, scope: !408)
!1147 = !DILocation(line: 669, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 669, column: 5)
!1149 = distinct !DILexicalBlock(scope: !374, file: !1, line: 669, column: 5)
!1150 = !DILocation(line: 669, column: 5, scope: !1149)
!1151 = !DILocation(line: 670, column: 26, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 669, column: 35)
!1153 = !DILocation(line: 358, column: 19, scope: !374)
!1154 = !DILocation(line: 671, column: 20, scope: !1152)
!1155 = !DILocation(line: 358, column: 9, scope: !374)
!1156 = !DILocation(line: 673, column: 21, scope: !1152)
!1157 = !DILocation(line: 673, column: 19, scope: !1152)
!1158 = !DILocation(line: 358, column: 34, scope: !374)
!1159 = !DILocation(line: 663, column: 24, scope: !642)
!1160 = !DILocation(line: 663, column: 22, scope: !642)
!1161 = !DILocation(line: 663, column: 9, scope: !642)
!1162 = !DILocation(line: 663, column: 20, scope: !642)
!1163 = !DILocation(line: 664, column: 13, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !642, file: !1, line: 664, column: 13)
!1165 = !DILocation(line: 664, column: 24, scope: !1164)
!1166 = !DILocation(line: 664, column: 13, scope: !642)
!1167 = !DILocation(line: 662, column: 41, scope: !643)
!1168 = !DILocation(line: 662, column: 38, scope: !643)
!1169 = !DILocation(line: 662, column: 25, scope: !643)
!1170 = !DILocation(line: 678, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !374, file: !1, line: 678, column: 5)
!1172 = !DILocation(line: 670, column: 23, scope: !1152)
!1173 = !DILocation(line: 673, column: 46, scope: !1152)
!1174 = !DILocation(line: 669, column: 30, scope: !1148)
!1175 = !DILocation(line: 706, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 678, column: 35)
!1177 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 678, column: 5)
!1178 = !DILocation(line: 678, column: 22, scope: !1177)
!1179 = !DILocation(line: 679, column: 18, scope: !1176)
!1180 = !DILocation(line: 680, column: 9, scope: !1176)
!1181 = !DILocation(line: 682, column: 18, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 680, column: 25)
!1183 = !DILocation(line: 691, column: 29, scope: !1182)
!1184 = !DILocation(line: 691, column: 21, scope: !1182)
!1185 = !DILocation(line: 692, column: 17, scope: !1182)
!1186 = !DILocation(line: 693, column: 17, scope: !1182)
!1187 = !DILocation(line: 701, column: 29, scope: !1182)
!1188 = !DILocation(line: 701, column: 48, scope: !1182)
!1189 = !DILocation(line: 701, column: 52, scope: !1182)
!1190 = !DILocation(line: 701, column: 21, scope: !1182)
!1191 = !DILocation(line: 701, column: 59, scope: !1182)
!1192 = !DILocation(line: 701, column: 57, scope: !1182)
!1193 = !DILocation(line: 701, column: 70, scope: !1182)
!1194 = !DILocation(line: 702, column: 17, scope: !1182)
!1195 = !DILocation(line: 703, column: 17, scope: !1182)
!1196 = !DILocation(line: 705, column: 15, scope: !1176)
!1197 = !DILocation(line: 353, column: 18, scope: !374)
!1198 = !DILocation(line: 706, column: 19, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1200, file: !1, discriminator: 2)
!1200 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 1)
!1201 = !DILocation(line: 707, column: 13, scope: !1176)
!1202 = !DILocation(line: 707, column: 26, scope: !1176)
!1203 = !DILocation(line: 707, column: 37, scope: !1176)
!1204 = !DILocation(line: 707, column: 22, scope: !1176)
!1205 = !DILocation(line: 707, column: 28, scope: !1176)
!1206 = !DILocation(line: 711, column: 55, scope: !374)
!1207 = !DILocation(line: 711, column: 12, scope: !374)
!1208 = !DILocation(line: 712, column: 5, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !1, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 712, column: 5)
!1211 = distinct !DILexicalBlock(scope: !374, file: !1, line: 712, column: 5)
!1212 = !DILocation(line: 712, column: 5, scope: !1211)
!1213 = !DILocation(line: 712, column: 5, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1210, file: !1, discriminator: 2)
!1215 = !DILocation(line: 712, column: 5, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 4)
!1217 = !DILexicalBlockFile(scope: !1218, file: !1, discriminator: 3)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 712, column: 5)
!1219 = !DILocation(line: 712, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1218, file: !1, discriminator: 5)
!1221 = !DILocation(line: 713, column: 5, scope: !374)
!1222 = !DILocation(line: 714, column: 5, scope: !374)
!1223 = !DILocation(line: 715, column: 5, scope: !374)
!1224 = !DILocation(line: 716, column: 5, scope: !374)
!1225 = !DILocation(line: 722, column: 5, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !1, discriminator: 1)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 722, column: 5)
!1228 = distinct !DILexicalBlock(scope: !374, file: !1, line: 722, column: 5)
!1229 = !DILocation(line: 722, column: 5, scope: !1228)
!1230 = !DILocation(line: 722, column: 5, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1227, file: !1, discriminator: 2)
!1232 = !DILocation(line: 722, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 4)
!1234 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 3)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 722, column: 5)
!1236 = !DILocation(line: 722, column: 5, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 5)
!1238 = !DILocation(line: 724, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !374, file: !1, line: 723, column: 9)
!1240 = !DILocation(line: 726, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !374, file: !1, line: 725, column: 9)
!1242 = !DILocation(line: 728, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !374, file: !1, line: 727, column: 9)
!1244 = !DILocation(line: 729, column: 5, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!1246 = !DILocation(line: 729, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !423, file: !1, line: 729, column: 5)
!1248 = !DILocation(line: 729, column: 5, scope: !423)
!1249 = !DILocation(line: 729, column: 5, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1247, file: !1, discriminator: 2)
!1251 = !DILocation(line: 731, column: 1, scope: !374)
