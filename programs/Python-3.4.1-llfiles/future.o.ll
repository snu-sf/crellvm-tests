; ModuleID = 'future.o.bc'
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
define %struct.PyFutureFeatures* @PyFuture_FromASTObject(%struct._mod* nocapture readonly %mod, %struct._object* %filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._mod* %mod, i64 0, metadata !796, metadata !907), !dbg !908
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !797, metadata !907), !dbg !909
  %call = tail call i8* @PyObject_Malloc(i64 8) #4, !dbg !910
  %0 = bitcast i8* %call to %struct.PyFutureFeatures*, !dbg !911
  tail call void @llvm.dbg.value(metadata %struct.PyFutureFeatures* %0, i64 0, metadata !798, metadata !907), !dbg !912
  %cmp = icmp eq i8* %call, null, !dbg !913
  br i1 %cmp, label %if.then, label %if.end, !dbg !915

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_NoMemory() #4, !dbg !916
  br label %cleanup, !dbg !918

if.end:                                           ; preds = %entry
  %ff_features = bitcast i8* %call to i32*, !dbg !919
  store i32 0, i32* %ff_features, align 4, !dbg !920, !tbaa !921
  %ff_lineno = getelementptr inbounds i8, i8* %call, i64 4, !dbg !926
  %1 = bitcast i8* %ff_lineno to i32*, !dbg !926
  store i32 -1, i32* %1, align 4, !dbg !927, !tbaa !928
  tail call void @llvm.dbg.value(metadata %struct.PyFutureFeatures* %0, i64 0, metadata !813, metadata !907) #4, !dbg !929
  tail call void @llvm.dbg.value(metadata %struct._mod* %mod, i64 0, metadata !814, metadata !907) #4, !dbg !932
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !815, metadata !907) #4, !dbg !933
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !817, metadata !907) #4, !dbg !934
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !818, metadata !907) #4, !dbg !935
  %kind.i = getelementptr inbounds %struct._mod, %struct._mod* %mod, i64 0, i32 0, !dbg !936
  %2 = load i32, i32* %kind.i, align 4, !dbg !936, !tbaa !938
  %.off.i = add i32 %2, -1, !dbg !940
  %switch.i = icmp ult i32 %.off.i, 2, !dbg !940
  br i1 %switch.i, label %if.end.i, label %cleanup, !dbg !940

if.end.i:                                         ; preds = %if.end
  %body.i = getelementptr inbounds %struct._mod, %struct._mod* %mod, i64 0, i32 1, i32 0, i32 0, !dbg !941
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %body.i, align 8, !dbg !941, !tbaa !943
  %cmp3.i = icmp eq %struct.asdl_seq* %3, null, !dbg !941
  br i1 %cmp3.i, label %cleanup, label %cond.false.i, !dbg !941

cond.false.i:                                     ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %3, i64 0, i32 0, !dbg !946
  %4 = load i64, i64* %size.i, align 8, !dbg !946, !tbaa !948
  %phitmp.i = icmp eq i64 %4, 0, !dbg !946
  br i1 %phitmp.i, label %cleanup, label %if.end.9.i, !dbg !951

if.end.9.i:                                       ; preds = %cond.false.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !816, metadata !907) #4, !dbg !952
  %arrayidx.i = getelementptr %struct.asdl_seq, %struct.asdl_seq* %3, i64 0, i32 1, i64 0, !dbg !953
  %5 = bitcast i8** %arrayidx.i to %struct._stmt**, !dbg !953
  %6 = load %struct._stmt*, %struct._stmt** %5, align 8, !dbg !953, !tbaa !954
  tail call void @llvm.dbg.value(metadata %struct._stmt* %6, i64 0, metadata !819, metadata !907) #4, !dbg !955
  %kind13.i = getelementptr inbounds %struct._stmt, %struct._stmt* %6, i64 0, i32 0, !dbg !956
  %7 = load i32, i32* %kind13.i, align 4, !dbg !956, !tbaa !958
  %cmp14.i = icmp eq i32 %7, 18, !dbg !960
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.cond.i.preheader, !dbg !961

land.lhs.true.i:                                  ; preds = %if.end.9.i
  %v15.i = getelementptr inbounds %struct._stmt, %struct._stmt* %6, i64 0, i32 1, !dbg !962
  %value.i = bitcast %union.anon.33* %v15.i to %struct._expr**, !dbg !963
  %8 = load %struct._expr*, %struct._expr** %value.i, align 8, !dbg !963, !tbaa !943
  %kind16.i = getelementptr inbounds %struct._expr, %struct._expr* %8, i64 0, i32 0, !dbg !964
  %9 = load i32, i32* %kind16.i, align 4, !dbg !964, !tbaa !965
  %cmp17.i = icmp eq i32 %9, 17, !dbg !967
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !816, metadata !907) #4, !dbg !952
  %..i = zext i1 %cmp17.i to i32, !dbg !968
  br label %for.cond.i.preheader, !dbg !968

for.cond.i.preheader:                             ; preds = %land.lhs.true.i, %if.end.9.i
  %i.0.i.ph = phi i32 [ 0, %if.end.9.i ], [ %..i, %land.lhs.true.i ]
  br label %for.cond.i, !dbg !969

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.inc.i
  %10 = phi %struct.asdl_seq* [ %.pre.i, %for.inc.i ], [ %3, %for.cond.i.preheader ], !dbg !972
  %prev_line.0.i = phi i32 [ %14, %for.inc.i ], [ 0, %for.cond.i.preheader ], !dbg !973
  %done.0.i = phi i32 [ %done.4.ph.i, %for.inc.i ], [ 0, %for.cond.i.preheader ], !dbg !973
  %i.0.i = phi i32 [ %inc71.i, %for.inc.i ], [ %i.0.i.ph, %for.cond.i.preheader ], !dbg !973
  %conv.i = sext i32 %i.0.i to i64, !dbg !969
  %cmp23.i = icmp eq %struct.asdl_seq* %10, null, !dbg !974
  br i1 %cmp23.i, label %cond.end.31.i, label %cond.false.26.i, !dbg !974

cond.false.26.i:                                  ; preds = %for.cond.i
  %size30.i = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %10, i64 0, i32 0, !dbg !975
  %11 = load i64, i64* %size30.i, align 8, !dbg !975, !tbaa !948
  br label %cond.end.31.i, !dbg !975

cond.end.31.i:                                    ; preds = %cond.false.26.i, %for.cond.i
  %cond32.i = phi i64 [ %11, %cond.false.26.i ], [ 0, %for.cond.i ], !dbg !974
  %cmp33.i = icmp slt i64 %conv.i, %cond32.i, !dbg !977
  br i1 %cmp33.i, label %for.body.i, label %cleanup.loopexit, !dbg !980

for.body.i:                                       ; preds = %cond.end.31.i
  %arrayidx40.i = getelementptr %struct.asdl_seq, %struct.asdl_seq* %10, i64 0, i32 1, i64 %conv.i, !dbg !972
  %12 = bitcast i8** %arrayidx40.i to %struct._stmt**, !dbg !972
  %13 = load %struct._stmt*, %struct._stmt** %12, align 8, !dbg !972, !tbaa !954
  tail call void @llvm.dbg.value(metadata %struct._stmt* %13, i64 0, metadata !820, metadata !907) #4, !dbg !981
  %tobool.i = icmp ne i32 %done.0.i, 0, !dbg !982
  %lineno.i = getelementptr inbounds %struct._stmt, %struct._stmt* %13, i64 0, i32 2, !dbg !984
  %14 = load i32, i32* %lineno.i, align 4, !dbg !984, !tbaa !985
  %cmp42.i = icmp sgt i32 %14, %prev_line.0.i, !dbg !986
  %or.cond.i = and i1 %tobool.i, %cmp42.i, !dbg !987
  br i1 %or.cond.i, label %cleanup.loopexit, label %if.end.45.i, !dbg !987

if.end.45.i:                                      ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !818, metadata !907) #4, !dbg !935
  %kind47.i = getelementptr inbounds %struct._stmt, %struct._stmt* %13, i64 0, i32 0, !dbg !988
  %15 = load i32, i32* %kind47.i, align 4, !dbg !988, !tbaa !958
  %cmp48.i = icmp eq i32 %15, 15, !dbg !989
  br i1 %cmp48.i, label %if.then.50.i, label %for.inc.i, !dbg !990

if.then.50.i:                                     ; preds = %if.end.45.i
  %module.i = getelementptr inbounds %struct._stmt, %struct._stmt* %13, i64 0, i32 1, i32 0, i32 0, !dbg !991
  %16 = load %struct._object*, %struct._object** %module.i, align 8, !dbg !991, !tbaa !992
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !824, metadata !907) #4, !dbg !994
  %tobool52.i = icmp eq %struct._object* %16, null, !dbg !995
  br i1 %tobool52.i, label %for.inc.i, label %land.lhs.true.53.i, !dbg !997

land.lhs.true.53.i:                               ; preds = %if.then.50.i
  %call.i = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #4, !dbg !998
  %tobool54.i = icmp eq i32 %call.i, 0, !dbg !998
  br i1 %tobool54.i, label %if.then.55.i, label %for.inc.i, !dbg !999

if.then.55.i:                                     ; preds = %land.lhs.true.53.i
  br i1 %tobool.i, label %if.then.57.i, label %if.end.59.i, !dbg !1000

if.then.57.i:                                     ; preds = %if.then.55.i
  %lineno.i.lcssa = phi i32* [ %lineno.i, %if.then.55.i ]
  %.lcssa = phi %struct._stmt* [ %13, %if.then.55.i ]
  %17 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !1002, !tbaa !954
  tail call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !1005
  %18 = load i32, i32* %lineno.i.lcssa, align 4, !dbg !1006, !tbaa !985
  %col_offset.i = getelementptr inbounds %struct._stmt, %struct._stmt* %.lcssa, i64 0, i32 3, !dbg !1007
  %19 = load i32, i32* %col_offset.i, align 4, !dbg !1007, !tbaa !1008
  tail call void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %18, i32 %19) #4, !dbg !1009
  br label %if.then.3, !dbg !1010

if.end.59.i:                                      ; preds = %if.then.55.i
  tail call void @llvm.dbg.value(metadata %struct.PyFutureFeatures* %0, i64 0, metadata !831, metadata !907) #4, !dbg !1011
  tail call void @llvm.dbg.value(metadata %struct._stmt* %13, i64 0, metadata !832, metadata !907) #4, !dbg !1014
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !833, metadata !907) #4, !dbg !1015
  %20 = getelementptr inbounds %struct._stmt, %struct._stmt* %13, i64 0, i32 1, i32 0, i32 1, !dbg !1016
  %21 = load %struct.asdl_seq*, %struct.asdl_seq** %20, align 8, !dbg !1016, !tbaa !1017
  tail call void @llvm.dbg.value(metadata %struct.asdl_seq* %21, i64 0, metadata !835, metadata !907) #4, !dbg !1018
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !834, metadata !907) #4, !dbg !1019
  %cmp.i.i = icmp eq %struct.asdl_seq* %21, null, !dbg !1020
  %size.i.i = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %21, i64 0, i32 0, !dbg !1021
  br i1 %cmp.i.i, label %if.end.63.i, label %cond.end.i.preheader.i, !dbg !1020

cond.end.i.preheader.i:                           ; preds = %if.end.59.i
  %22 = load i64, i64* %size.i.i, align 8, !dbg !1021, !tbaa !948
  %cmp3.i.129.i = icmp sgt i64 %22, 0, !dbg !1023
  br i1 %cmp3.i.129.i, label %for.body.i.i.preheader, label %if.end.63.i, !dbg !1026

for.body.i.i.preheader:                           ; preds = %cond.end.i.preheader.i
  br label %for.body.i.i, !dbg !1027

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.inc.i.i
  %conv.i131.i = phi i64 [ %conv.i.i, %for.inc.i.i ], [ 0, %for.body.i.i.preheader ], !dbg !973
  %i.0.i130.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %for.body.i.i.preheader ], !dbg !973
  %arrayidx.i.i = getelementptr %struct.asdl_seq, %struct.asdl_seq* %21, i64 0, i32 1, i64 %conv.i131.i, !dbg !1027
  %23 = bitcast i8** %arrayidx.i.i to %struct._alias**, !dbg !1027
  %24 = load %struct._alias*, %struct._alias** %23, align 8, !dbg !1027, !tbaa !954
  tail call void @llvm.dbg.value(metadata %struct._alias* %24, i64 0, metadata !836, metadata !907) #4, !dbg !1028
  %name5.i.i = getelementptr inbounds %struct._alias, %struct._alias* %24, i64 0, i32 0, !dbg !1029
  %25 = load %struct._object*, %struct._object** %name5.i.i, align 8, !dbg !1029, !tbaa !1030
  %call.i.i = tail call i8* @PyUnicode_AsUTF8(%struct._object* %25) #4, !dbg !1032
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !840, metadata !907) #4, !dbg !1033
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !1034
  br i1 %tobool.i.i, label %if.then.3.loopexit, label %cond.false.48.i.i, !dbg !1036

cond.false.48.i.i:                                ; preds = %for.body.i.i
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !844, metadata !907) #4, !dbg !1037
  %call49.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !1038
  %cmp52.i.i = icmp eq i32 %call49.i.i, 0, !dbg !1041
  br i1 %cmp52.i.i, label %for.inc.i.i, label %cond.false.106.i.i, !dbg !1042

cond.false.106.i.i:                               ; preds = %cond.false.48.i.i
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !851, metadata !907) #4, !dbg !1043
  %call107.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !1044
  %cmp110.i.i = icmp eq i32 %call107.i.i, 0, !dbg !1047
  br i1 %cmp110.i.i, label %for.inc.i.i, label %cond.false.165.i.i, !dbg !1048

cond.false.165.i.i:                               ; preds = %cond.false.106.i.i
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !858, metadata !907) #4, !dbg !1049
  %call166.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !1050
  %cmp169.i.i = icmp eq i32 %call166.i.i, 0, !dbg !1053
  br i1 %cmp169.i.i, label %for.inc.i.i, label %cond.false.224.i.i, !dbg !1054

cond.false.224.i.i:                               ; preds = %cond.false.165.i.i
  tail call void @llvm.dbg.value(metadata i64 15, i64 0, metadata !865, metadata !907) #4, !dbg !1055
  %call225.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !1056
  %cmp228.i.i = icmp eq i32 %call225.i.i, 0, !dbg !1059
  br i1 %cmp228.i.i, label %for.inc.i.i, label %cond.false.283.i.i, !dbg !1060

cond.false.283.i.i:                               ; preds = %cond.false.224.i.i
  tail call void @llvm.dbg.value(metadata i64 14, i64 0, metadata !872, metadata !907) #4, !dbg !1061
  %call284.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !1062
  %cmp287.i.i = icmp eq i32 %call284.i.i, 0, !dbg !1065
  br i1 %cmp287.i.i, label %for.inc.i.i, label %cond.false.342.i.i, !dbg !1066

cond.false.342.i.i:                               ; preds = %cond.false.283.i.i
  tail call void @llvm.dbg.value(metadata i64 14, i64 0, metadata !879, metadata !907) #4, !dbg !1067
  %call343.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !1068
  %cmp346.i.i = icmp eq i32 %call343.i.i, 0, !dbg !1071
  br i1 %cmp346.i.i, label %for.inc.i.i, label %cond.false.401.i.i, !dbg !1072

cond.false.401.i.i:                               ; preds = %cond.false.342.i.i
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !886, metadata !907) #4, !dbg !1073
  %call402.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !1074
  %cmp405.i.i = icmp eq i32 %call402.i.i, 0, !dbg !1077
  br i1 %cmp405.i.i, label %for.inc.i.i, label %cond.false.460.i.i, !dbg !1078

cond.false.460.i.i:                               ; preds = %cond.false.401.i.i
  tail call void @llvm.dbg.value(metadata i64 14, i64 0, metadata !893, metadata !907) #4, !dbg !1079
  %call461.i.i = tail call i32 @strcmp(i8* %call.i.i, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !1080
  %cmp464.i.i = icmp eq i32 %call461.i.i, 0, !dbg !1083
  br i1 %cmp464.i.i, label %if.then.466.i.i, label %cond.false.519.i.i, !dbg !1084

if.then.466.i.i:                                  ; preds = %cond.false.460.i.i
  %26 = load i32, i32* %ff_features, align 4, !dbg !1085, !tbaa !921
  %or.i.i = or i32 %26, 262144, !dbg !1085
  store i32 %or.i.i, i32* %ff_features, align 4, !dbg !1085, !tbaa !921
  br label %for.inc.i.i, !dbg !1087

cond.false.519.i.i:                               ; preds = %cond.false.460.i.i
  %lineno.i.lcssa49 = phi i32* [ %lineno.i, %cond.false.460.i.i ]
  %.lcssa47 = phi %struct._stmt* [ %13, %cond.false.460.i.i ]
  %call.i.i.lcssa44 = phi i8* [ %call.i.i, %cond.false.460.i.i ]
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !900, metadata !907) #4, !dbg !1088
  %call520.i.i = tail call i32 @strcmp(i8* %call.i.i.lcssa44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !1089
  %cmp523.i.i = icmp eq i32 %call520.i.i, 0, !dbg !1092
  %27 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !1093, !tbaa !954
  br i1 %cmp523.i.i, label %if.then.525.i.i, label %if.else.526.i.i, !dbg !1095

if.then.525.i.i:                                  ; preds = %cond.false.519.i.i
  tail call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !1096
  %28 = load i32, i32* %lineno.i.lcssa49, align 4, !dbg !1097, !tbaa !985
  %col_offset.i.i = getelementptr inbounds %struct._stmt, %struct._stmt* %.lcssa47, i64 0, i32 3, !dbg !1098
  %29 = load i32, i32* %col_offset.i.i, align 4, !dbg !1098, !tbaa !1008
  tail call void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %28, i32 %29) #4, !dbg !1099
  br label %if.then.3, !dbg !1100

if.else.526.i.i:                                  ; preds = %cond.false.519.i.i
  %call527.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* %call.i.i.lcssa44) #4, !dbg !1101
  %30 = load i32, i32* %lineno.i.lcssa49, align 4, !dbg !1103, !tbaa !985
  %col_offset529.i.i = getelementptr inbounds %struct._stmt, %struct._stmt* %.lcssa47, i64 0, i32 3, !dbg !1104
  %31 = load i32, i32* %col_offset529.i.i, align 4, !dbg !1104, !tbaa !1008
  tail call void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %30, i32 %31) #4, !dbg !1105
  br label %if.then.3, !dbg !1106

for.inc.i.i:                                      ; preds = %if.then.466.i.i, %cond.false.401.i.i, %cond.false.342.i.i, %cond.false.283.i.i, %cond.false.224.i.i, %cond.false.165.i.i, %cond.false.106.i.i, %cond.false.48.i.i
  %inc.i.i = add i32 %i.0.i130.i, 1, !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %inc.i.i, i64 0, metadata !834, metadata !907) #4, !dbg !1019
  %conv.i.i = sext i32 %inc.i.i to i64, !dbg !1108
  %32 = load i64, i64* %size.i.i, align 8, !dbg !1021, !tbaa !948
  %cmp3.i.i = icmp slt i64 %conv.i.i, %32, !dbg !1023
  br i1 %cmp3.i.i, label %for.body.i.i, label %if.end.63.i.loopexit, !dbg !1026

if.end.63.i.loopexit:                             ; preds = %for.inc.i.i
  br label %if.end.63.i, !dbg !1111

if.end.63.i:                                      ; preds = %if.end.63.i.loopexit, %cond.end.i.preheader.i, %if.end.59.i
  %33 = load i32, i32* %lineno.i, align 4, !dbg !1111, !tbaa !985
  store i32 %33, i32* %1, align 4, !dbg !1112, !tbaa !928
  br label %for.inc.i, !dbg !1113

for.inc.i:                                        ; preds = %if.end.63.i, %land.lhs.true.53.i, %if.then.50.i, %if.end.45.i
  %done.4.ph.i = phi i32 [ 1, %if.end.45.i ], [ 1, %if.then.50.i ], [ 1, %land.lhs.true.53.i ], [ 0, %if.end.63.i ], !dbg !973
  %inc71.i = add i32 %i.0.i, 1, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %inc71.i, i64 0, metadata !816, metadata !907) #4, !dbg !952
  %.pre.i = load %struct.asdl_seq*, %struct.asdl_seq** %body.i, align 8, !dbg !974, !tbaa !943
  br label %for.cond.i, !dbg !1115

if.then.3.loopexit:                               ; preds = %for.body.i.i
  br label %if.then.3, !dbg !1116

if.then.3:                                        ; preds = %if.then.3.loopexit, %if.then.57.i, %if.else.526.i.i, %if.then.525.i.i
  tail call void @PyObject_Free(i8* %call) #4, !dbg !1116
  br label %cleanup, !dbg !1118

cleanup.loopexit:                                 ; preds = %for.body.i, %cond.end.31.i
  br label %cleanup, !dbg !1119

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.i, %cond.false.i, %if.end, %if.then.3, %if.then
  %retval.0 = phi %struct.PyFutureFeatures* [ null, %if.then ], [ null, %if.then.3 ], [ %0, %if.end ], [ %0, %cond.false.i ], [ %0, %if.end.i ], [ %0, %cleanup.loopexit ]
  ret %struct.PyFutureFeatures* %retval.0, !dbg !1119
}

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.PyFutureFeatures* @PyFuture_FromAST(%struct._mod* nocapture readonly %mod, i8* %filename_str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._mod* %mod, i64 0, metadata !803, metadata !907), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8* %filename_str, i64 0, metadata !804, metadata !907), !dbg !1121
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename_str) #4, !dbg !1122
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !806, metadata !907), !dbg !1123
  %cmp = icmp eq %struct._object* %call, null, !dbg !1124
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1126

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.PyFutureFeatures* @PyFuture_FromASTObject(%struct._mod* %mod, %struct._object* %call), !dbg !1127
  tail call void @llvm.dbg.value(metadata %struct.PyFutureFeatures* %call1, i64 0, metadata !805, metadata !907), !dbg !1128
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !807, metadata !907), !dbg !1129
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1131
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1131, !tbaa !1133
  %dec = add i64 %0, -1, !dbg !1131
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1131, !tbaa !1133
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1131
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1135

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1136
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1136, !tbaa !1138
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1136
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1136, !tbaa !1139
  tail call void %2(%struct._object* %call) #4, !dbg !1136
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct.PyFutureFeatures* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct.PyFutureFeatures* %retval.0, !dbg !1142
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyErr_SyntaxLocationObject(%struct._object*, i32, i32) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!904, !905}
!llvm.ident = !{!906}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !98, subprograms: !767)
!1 = !DIFile(filename: "Python/future.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !10, !38, !42, !56, !62, !70, !75}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_mod_kind", file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/Python-ast.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "Module_kind", value: 1)
!7 = !DIEnumerator(name: "Interactive_kind", value: 2)
!8 = !DIEnumerator(name: "Expression_kind", value: 3)
!9 = !DIEnumerator(name: "Suite_kind", value: 4)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_expr_kind", file: !4, line: 180, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!12 = !DIEnumerator(name: "BoolOp_kind", value: 1)
!13 = !DIEnumerator(name: "BinOp_kind", value: 2)
!14 = !DIEnumerator(name: "UnaryOp_kind", value: 3)
!15 = !DIEnumerator(name: "Lambda_kind", value: 4)
!16 = !DIEnumerator(name: "IfExp_kind", value: 5)
!17 = !DIEnumerator(name: "Dict_kind", value: 6)
!18 = !DIEnumerator(name: "Set_kind", value: 7)
!19 = !DIEnumerator(name: "ListComp_kind", value: 8)
!20 = !DIEnumerator(name: "SetComp_kind", value: 9)
!21 = !DIEnumerator(name: "DictComp_kind", value: 10)
!22 = !DIEnumerator(name: "GeneratorExp_kind", value: 11)
!23 = !DIEnumerator(name: "Yield_kind", value: 12)
!24 = !DIEnumerator(name: "YieldFrom_kind", value: 13)
!25 = !DIEnumerator(name: "Compare_kind", value: 14)
!26 = !DIEnumerator(name: "Call_kind", value: 15)
!27 = !DIEnumerator(name: "Num_kind", value: 16)
!28 = !DIEnumerator(name: "Str_kind", value: 17)
!29 = !DIEnumerator(name: "Bytes_kind", value: 18)
!30 = !DIEnumerator(name: "NameConstant_kind", value: 19)
!31 = !DIEnumerator(name: "Ellipsis_kind", value: 20)
!32 = !DIEnumerator(name: "Attribute_kind", value: 21)
!33 = !DIEnumerator(name: "Subscript_kind", value: 22)
!34 = !DIEnumerator(name: "Starred_kind", value: 23)
!35 = !DIEnumerator(name: "Name_kind", value: 24)
!36 = !DIEnumerator(name: "List_kind", value: 25)
!37 = !DIEnumerator(name: "Tuple_kind", value: 26)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_boolop", file: !4, line: 16, size: 32, align: 32, elements: !39)
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "And", value: 1)
!41 = !DIEnumerator(name: "Or", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_operator", file: !4, line: 18, size: 32, align: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!44 = !DIEnumerator(name: "Add", value: 1)
!45 = !DIEnumerator(name: "Sub", value: 2)
!46 = !DIEnumerator(name: "Mult", value: 3)
!47 = !DIEnumerator(name: "Div", value: 4)
!48 = !DIEnumerator(name: "Mod", value: 5)
!49 = !DIEnumerator(name: "Pow", value: 6)
!50 = !DIEnumerator(name: "LShift", value: 7)
!51 = !DIEnumerator(name: "RShift", value: 8)
!52 = !DIEnumerator(name: "BitOr", value: 9)
!53 = !DIEnumerator(name: "BitXor", value: 10)
!54 = !DIEnumerator(name: "BitAnd", value: 11)
!55 = !DIEnumerator(name: "FloorDiv", value: 12)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_unaryop", file: !4, line: 22, size: 32, align: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "Invert", value: 1)
!59 = !DIEnumerator(name: "Not", value: 2)
!60 = !DIEnumerator(name: "UAdd", value: 3)
!61 = !DIEnumerator(name: "USub", value: 4)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_expr_context", file: !4, line: 11, size: 32, align: 32, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIEnumerator(name: "Load", value: 1)
!65 = !DIEnumerator(name: "Store", value: 2)
!66 = !DIEnumerator(name: "Del", value: 3)
!67 = !DIEnumerator(name: "AugLoad", value: 4)
!68 = !DIEnumerator(name: "AugStore", value: 5)
!69 = !DIEnumerator(name: "Param", value: 6)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_slice_kind", file: !4, line: 323, size: 32, align: 32, elements: !71)
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "Slice_kind", value: 1)
!73 = !DIEnumerator(name: "ExtSlice_kind", value: 2)
!74 = !DIEnumerator(name: "Index_kind", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_stmt_kind", file: !4, line: 66, size: 32, align: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!77 = !DIEnumerator(name: "FunctionDef_kind", value: 1)
!78 = !DIEnumerator(name: "ClassDef_kind", value: 2)
!79 = !DIEnumerator(name: "Return_kind", value: 3)
!80 = !DIEnumerator(name: "Delete_kind", value: 4)
!81 = !DIEnumerator(name: "Assign_kind", value: 5)
!82 = !DIEnumerator(name: "AugAssign_kind", value: 6)
!83 = !DIEnumerator(name: "For_kind", value: 7)
!84 = !DIEnumerator(name: "While_kind", value: 8)
!85 = !DIEnumerator(name: "If_kind", value: 9)
!86 = !DIEnumerator(name: "With_kind", value: 10)
!87 = !DIEnumerator(name: "Raise_kind", value: 11)
!88 = !DIEnumerator(name: "Try_kind", value: 12)
!89 = !DIEnumerator(name: "Assert_kind", value: 13)
!90 = !DIEnumerator(name: "Import_kind", value: 14)
!91 = !DIEnumerator(name: "ImportFrom_kind", value: 15)
!92 = !DIEnumerator(name: "Global_kind", value: 16)
!93 = !DIEnumerator(name: "Nonlocal_kind", value: 17)
!94 = !DIEnumerator(name: "Expr_kind", value: 18)
!95 = !DIEnumerator(name: "Pass_kind", value: 19)
!96 = !DIEnumerator(name: "Break_kind", value: 20)
!97 = !DIEnumerator(name: "Continue_kind", value: 21)
!98 = !{!99, !107, !108, !445, !756, !196, !762, !764, !132}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFutureFeatures", file: !101, line: 20, baseType: !102)
!101 = !DIFile(filename: "Include/compile.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!102 = !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 17, size: 64, align: 32, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ff_features", scope: !102, file: !101, line: 18, baseType: !105, size: 32, align: 32)
!105 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ff_lineno", scope: !102, file: !101, line: 19, baseType: !105, size: 32, align: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !110, line: 109, baseType: !111)
!110 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !110, line: 105, size: 128, align: 64, elements: !112)
!112 = !{!113, !121}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !111, file: !110, line: 107, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !115, line: 177, baseType: !116)
!115 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 102, baseType: !118)
!117 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !119, line: 181, baseType: !120)
!119 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!120 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !111, file: !110, line: 108, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !110, line: 334, size: 3200, align: 64, elements: !124)
!124 = !{!125, !131, !135, !136, !137, !142, !204, !209, !214, !215, !220, !272, !303, !315, !321, !322, !323, !325, !327, !358, !359, !360, !369, !370, !375, !376, !378, !380, !390, !393, !411, !412, !413, !415, !417, !418, !420, !425, !430, !435, !436, !437, !438, !439, !440, !441, !442, !444}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !123, file: !110, line: 335, baseType: !126, size: 192, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !110, line: 114, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 111, size: 192, align: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !127, file: !110, line: 112, baseType: !109, size: 128, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !127, file: !110, line: 113, baseType: !114, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !123, file: !110, line: 336, baseType: !132, size: 64, align: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !123, file: !110, line: 337, baseType: !114, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !123, file: !110, line: 337, baseType: !114, size: 64, align: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !123, file: !110, line: 341, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !110, line: 308, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !108}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !123, file: !110, line: 342, baseType: !143, size: 64, align: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !110, line: 314, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!105, !108, !147, !105}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 48, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !150, line: 246, size: 1728, align: 64, elements: !151)
!150 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!151 = !{!152, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !173, !174, !175, !176, !178, !180, !182, !186, !189, !191, !192, !193, !194, !195, !199, !200}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !149, file: !150, line: 247, baseType: !105, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !149, file: !150, line: 252, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !149, file: !150, line: 253, baseType: !154, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !149, file: !150, line: 254, baseType: !154, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !149, file: !150, line: 255, baseType: !154, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !149, file: !150, line: 256, baseType: !154, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !149, file: !150, line: 257, baseType: !154, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !149, file: !150, line: 258, baseType: !154, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !149, file: !150, line: 259, baseType: !154, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !149, file: !150, line: 261, baseType: !154, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !149, file: !150, line: 262, baseType: !154, size: 64, align: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !149, file: !150, line: 263, baseType: !154, size: 64, align: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !149, file: !150, line: 265, baseType: !166, size: 64, align: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !150, line: 161, size: 192, align: 64, elements: !168)
!168 = !{!169, !170, !172}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !167, file: !150, line: 162, baseType: !166, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !167, file: !150, line: 163, baseType: !171, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !167, file: !150, line: 167, baseType: !105, size: 32, align: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !149, file: !150, line: 267, baseType: !171, size: 64, align: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !149, file: !150, line: 269, baseType: !105, size: 32, align: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !149, file: !150, line: 273, baseType: !105, size: 32, align: 32, offset: 928)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !149, file: !150, line: 275, baseType: !177, size: 64, align: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !119, line: 140, baseType: !120)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !149, file: !150, line: 279, baseType: !179, size: 16, align: 16, offset: 1024)
!179 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !149, file: !150, line: 280, baseType: !181, size: 8, align: 8, offset: 1040)
!181 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !149, file: !150, line: 281, baseType: !183, size: 8, align: 8, offset: 1048)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !149, file: !150, line: 285, baseType: !187, size: 64, align: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !150, line: 155, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !149, file: !150, line: 294, baseType: !190, size: 64, align: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !119, line: 141, baseType: !120)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !149, file: !150, line: 303, baseType: !107, size: 64, align: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !149, file: !150, line: 304, baseType: !107, size: 64, align: 64, offset: 1280)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !149, file: !150, line: 305, baseType: !107, size: 64, align: 64, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !149, file: !150, line: 306, baseType: !107, size: 64, align: 64, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !149, file: !150, line: 307, baseType: !196, size: 64, align: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 62, baseType: !198)
!197 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!198 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !149, file: !150, line: 309, baseType: !105, size: 32, align: 32, offset: 1536)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !149, file: !150, line: 311, baseType: !201, size: 160, align: 8, offset: 1568)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 160, align: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 20)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !123, file: !110, line: 343, baseType: !205, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !110, line: 316, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!108, !108, !154}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !123, file: !110, line: 344, baseType: !210, size: 64, align: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !110, line: 318, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!105, !108, !154, !108}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !123, file: !110, line: 345, baseType: !107, size: 64, align: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !123, file: !110, line: 346, baseType: !216, size: 64, align: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !110, line: 320, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!108, !108}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !123, file: !110, line: 350, baseType: !221, size: 64, align: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !110, line: 278, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 236, size: 2176, align: 64, elements: !224)
!224 = !{!225, !230, !231, !232, !233, !234, !239, !241, !242, !243, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !223, file: !110, line: 241, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !110, line: 166, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!108, !108, !108}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !223, file: !110, line: 242, baseType: !226, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !223, file: !110, line: 243, baseType: !226, size: 64, align: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !223, file: !110, line: 244, baseType: !226, size: 64, align: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !223, file: !110, line: 245, baseType: !226, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !223, file: !110, line: 246, baseType: !235, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !110, line: 167, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!108, !108, !108, !108}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !223, file: !110, line: 247, baseType: !240, size: 64, align: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !110, line: 165, baseType: !217)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !223, file: !110, line: 248, baseType: !240, size: 64, align: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !223, file: !110, line: 249, baseType: !240, size: 64, align: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !223, file: !110, line: 250, baseType: !244, size: 64, align: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !110, line: 168, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!105, !108}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !223, file: !110, line: 251, baseType: !240, size: 64, align: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !223, file: !110, line: 252, baseType: !226, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !223, file: !110, line: 253, baseType: !226, size: 64, align: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !223, file: !110, line: 254, baseType: !226, size: 64, align: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !223, file: !110, line: 255, baseType: !226, size: 64, align: 64, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !223, file: !110, line: 256, baseType: !226, size: 64, align: 64, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !223, file: !110, line: 257, baseType: !240, size: 64, align: 64, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !223, file: !110, line: 258, baseType: !107, size: 64, align: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !223, file: !110, line: 259, baseType: !240, size: 64, align: 64, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !223, file: !110, line: 261, baseType: !226, size: 64, align: 64, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !223, file: !110, line: 262, baseType: !226, size: 64, align: 64, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !223, file: !110, line: 263, baseType: !226, size: 64, align: 64, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !223, file: !110, line: 264, baseType: !226, size: 64, align: 64, offset: 1408)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !223, file: !110, line: 265, baseType: !235, size: 64, align: 64, offset: 1472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !223, file: !110, line: 266, baseType: !226, size: 64, align: 64, offset: 1536)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !223, file: !110, line: 267, baseType: !226, size: 64, align: 64, offset: 1600)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !223, file: !110, line: 268, baseType: !226, size: 64, align: 64, offset: 1664)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !223, file: !110, line: 269, baseType: !226, size: 64, align: 64, offset: 1728)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !223, file: !110, line: 270, baseType: !226, size: 64, align: 64, offset: 1792)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !223, file: !110, line: 272, baseType: !226, size: 64, align: 64, offset: 1856)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !223, file: !110, line: 273, baseType: !226, size: 64, align: 64, offset: 1920)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !223, file: !110, line: 274, baseType: !226, size: 64, align: 64, offset: 1984)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !223, file: !110, line: 275, baseType: !226, size: 64, align: 64, offset: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !223, file: !110, line: 277, baseType: !240, size: 64, align: 64, offset: 2112)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !123, file: !110, line: 351, baseType: !273, size: 64, align: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !110, line: 292, baseType: !275)
!275 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 280, size: 640, align: 64, elements: !276)
!276 = !{!277, !282, !283, !288, !289, !290, !295, !296, !301, !302}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !275, file: !110, line: 281, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !110, line: 169, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!114, !108}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !275, file: !110, line: 282, baseType: !226, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !275, file: !110, line: 283, baseType: !284, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !110, line: 170, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!108, !108, !114}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !275, file: !110, line: 284, baseType: !284, size: 64, align: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !275, file: !110, line: 285, baseType: !107, size: 64, align: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !275, file: !110, line: 286, baseType: !291, size: 64, align: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !110, line: 172, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!105, !108, !114, !108}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !275, file: !110, line: 287, baseType: !107, size: 64, align: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !275, file: !110, line: 288, baseType: !297, size: 64, align: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !110, line: 231, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!105, !108, !108}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !275, file: !110, line: 290, baseType: !226, size: 64, align: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !275, file: !110, line: 291, baseType: !284, size: 64, align: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !123, file: !110, line: 352, baseType: !304, size: 64, align: 64, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !110, line: 298, baseType: !306)
!306 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 294, size: 192, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !306, file: !110, line: 295, baseType: !278, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !306, file: !110, line: 296, baseType: !226, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !306, file: !110, line: 297, baseType: !311, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !110, line: 174, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!105, !108, !108, !108}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !123, file: !110, line: 356, baseType: !316, size: 64, align: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !110, line: 321, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !108}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !115, line: 186, baseType: !114)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !123, file: !110, line: 357, baseType: !235, size: 64, align: 64, offset: 1024)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !123, file: !110, line: 358, baseType: !216, size: 64, align: 64, offset: 1088)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !123, file: !110, line: 359, baseType: !324, size: 64, align: 64, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !110, line: 317, baseType: !227)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !123, file: !110, line: 360, baseType: !326, size: 64, align: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !110, line: 319, baseType: !312)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !123, file: !110, line: 363, baseType: !328, size: 64, align: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !110, line: 304, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 301, size: 128, align: 64, elements: !331)
!331 = !{!332, !353}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !330, file: !110, line: 302, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !110, line: 193, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!105, !108, !337, !105}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !110, line: 191, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !110, line: 178, size: 640, align: 64, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !350, !351, !352}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !339, file: !110, line: 179, baseType: !107, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !339, file: !110, line: 180, baseType: !108, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !339, file: !110, line: 181, baseType: !114, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !339, file: !110, line: 182, baseType: !114, size: 64, align: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !339, file: !110, line: 184, baseType: !105, size: 32, align: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !339, file: !110, line: 185, baseType: !105, size: 32, align: 32, offset: 288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !339, file: !110, line: 186, baseType: !154, size: 64, align: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !339, file: !110, line: 187, baseType: !349, size: 64, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !339, file: !110, line: 188, baseType: !349, size: 64, align: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !339, file: !110, line: 189, baseType: !349, size: 64, align: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !339, file: !110, line: 190, baseType: !107, size: 64, align: 64, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !330, file: !110, line: 303, baseType: !354, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !110, line: 194, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !108, !337}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !123, file: !110, line: 366, baseType: !198, size: 64, align: 64, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !123, file: !110, line: 368, baseType: !132, size: 64, align: 64, offset: 1408)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !123, file: !110, line: 372, baseType: !361, size: 64, align: 64, offset: 1472)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !110, line: 233, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!105, !108, !365, !107}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !110, line: 232, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!105, !108, !107}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !123, file: !110, line: 375, baseType: !244, size: 64, align: 64, offset: 1536)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !123, file: !110, line: 379, baseType: !371, size: 64, align: 64, offset: 1600)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !110, line: 322, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!108, !108, !108, !105}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !123, file: !110, line: 382, baseType: !114, size: 64, align: 64, offset: 1664)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !123, file: !110, line: 385, baseType: !377, size: 64, align: 64, offset: 1728)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !110, line: 323, baseType: !217)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !123, file: !110, line: 386, baseType: !379, size: 64, align: 64, offset: 1792)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !110, line: 324, baseType: !217)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !123, file: !110, line: 389, baseType: !381, size: 64, align: 64, offset: 1856)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !383, line: 40, size: 256, align: 64, elements: !384)
!383 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!384 = !{!385, !386, !388, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !382, file: !383, line: 41, baseType: !132, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !382, file: !383, line: 42, baseType: !387, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !383, line: 18, baseType: !227)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !382, file: !383, line: 43, baseType: !105, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !382, file: !383, line: 45, baseType: !132, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !123, file: !110, line: 390, baseType: !391, size: 64, align: 64, offset: 1920)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !110, line: 390, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !123, file: !110, line: 391, baseType: !394, size: 64, align: 64, offset: 1984)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !396, line: 11, size: 320, align: 64, elements: !397)
!396 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!397 = !{!398, !399, !404, !409, !410}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !396, line: 12, baseType: !154, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !395, file: !396, line: 13, baseType: !400, size: 64, align: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !396, line: 8, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!108, !108, !107}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !395, file: !396, line: 14, baseType: !405, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !396, line: 9, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!105, !108, !108, !107}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !395, file: !396, line: 15, baseType: !154, size: 64, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !395, file: !396, line: 16, baseType: !107, size: 64, align: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !123, file: !110, line: 392, baseType: !122, size: 64, align: 64, offset: 2048)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !123, file: !110, line: 393, baseType: !108, size: 64, align: 64, offset: 2112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !123, file: !110, line: 394, baseType: !414, size: 64, align: 64, offset: 2176)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !110, line: 325, baseType: !236)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !123, file: !110, line: 395, baseType: !416, size: 64, align: 64, offset: 2240)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !110, line: 326, baseType: !312)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !123, file: !110, line: 396, baseType: !114, size: 64, align: 64, offset: 2304)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !123, file: !110, line: 397, baseType: !419, size: 64, align: 64, offset: 2368)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !110, line: 327, baseType: !312)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !123, file: !110, line: 398, baseType: !421, size: 64, align: 64, offset: 2432)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !110, line: 329, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!108, !122, !114}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !123, file: !110, line: 399, baseType: !426, size: 64, align: 64, offset: 2496)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !110, line: 328, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!108, !122, !108, !108}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !123, file: !110, line: 400, baseType: !431, size: 64, align: 64, offset: 2560)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !110, line: 307, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !107}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !123, file: !110, line: 401, baseType: !244, size: 64, align: 64, offset: 2624)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !123, file: !110, line: 402, baseType: !108, size: 64, align: 64, offset: 2688)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !123, file: !110, line: 403, baseType: !108, size: 64, align: 64, offset: 2752)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !123, file: !110, line: 404, baseType: !108, size: 64, align: 64, offset: 2816)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !123, file: !110, line: 405, baseType: !108, size: 64, align: 64, offset: 2880)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !123, file: !110, line: 406, baseType: !108, size: 64, align: 64, offset: 2944)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !123, file: !110, line: 407, baseType: !138, size: 64, align: 64, offset: 3008)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !123, file: !110, line: 410, baseType: !443, size: 32, align: 32, offset: 3072)
!443 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !123, file: !110, line: 412, baseType: !138, size: 64, align: 64, offset: 3136)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "stmt_ty", file: !4, line: 7, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "_stmt", file: !4, line: 72, size: 576, align: 64, elements: !448)
!448 = !{!449, !450, !754, !755}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !447, file: !4, line: 73, baseType: !75, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !447, file: !4, line: 175, baseType: !451, size: 448, align: 64, offset: 64)
!451 = !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !4, line: 74, size: 448, align: 64, elements: !452)
!452 = !{!453, !662, !672, !676, !680, !685, !691, !698, !704, !710, !715, !720, !727, !732, !736, !742, !746, !750}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "FunctionDef", scope: !451, file: !4, line: 81, baseType: !454, size: 320, align: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 75, size: 320, align: 64, elements: !455)
!455 = !{!456, !459, !659, !660, !661}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !4, line: 76, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "identifier", file: !458, line: 4, baseType: !108)
!458 = !DIFile(filename: "Include/asdl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!459 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !454, file: !4, line: 77, baseType: !460, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "arguments_ty", file: !4, line: 31, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arguments", file: !4, line: 365, size: 384, align: 64, elements: !463)
!463 = !{!464, !472, !655, !656, !657, !658}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !462, file: !4, line: 366, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_seq", file: !458, line: 21, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 18, size: 128, align: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !467, file: !458, line: 19, baseType: !114, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !467, file: !458, line: 20, baseType: !471, size: 64, align: 64, offset: 64)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, align: 64, elements: !184)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vararg", scope: !462, file: !4, line: 367, baseType: !473, size: 64, align: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg_ty", file: !4, line: 33, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arg", file: !4, line: 374, size: 192, align: 64, elements: !476)
!476 = !{!477, !478, !653, !654}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !475, file: !4, line: 375, baseType: !457, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "annotation", scope: !475, file: !4, line: 376, baseType: !479, size: 64, align: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "expr_ty", file: !4, line: 9, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_expr", file: !4, line: 188, size: 448, align: 64, elements: !482)
!482 = !{!483, !484, !651, !652}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !481, file: !4, line: 189, baseType: !10, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !481, file: !4, line: 318, baseType: !485, size: 320, align: 64, offset: 64)
!485 = !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !4, line: 190, size: 320, align: 64, elements: !486)
!486 = !{!487, !493, !500, !506, !511, !517, !522, !526, !531, !536, !542, !547, !551, !555, !568, !576, !581, !586, !591, !596, !603, !631, !636, !641, !646}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "BoolOp", scope: !485, file: !4, line: 194, baseType: !488, size: 128, align: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 191, size: 128, align: 64, elements: !489)
!489 = !{!490, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !488, file: !4, line: 192, baseType: !491, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolop_ty", file: !4, line: 16, baseType: !38)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !488, file: !4, line: 193, baseType: !465, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "BinOp", scope: !485, file: !4, line: 200, baseType: !494, size: 192, align: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 196, size: 192, align: 64, elements: !495)
!495 = !{!496, !497, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !494, file: !4, line: 197, baseType: !479, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !494, file: !4, line: 198, baseType: !498, size: 32, align: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "operator_ty", file: !4, line: 20, baseType: !42)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !494, file: !4, line: 199, baseType: !479, size: 64, align: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "UnaryOp", scope: !485, file: !4, line: 205, baseType: !501, size: 128, align: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 202, size: 128, align: 64, elements: !502)
!502 = !{!503, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !501, file: !4, line: 203, baseType: !504, size: 32, align: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryop_ty", file: !4, line: 22, baseType: !56)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "operand", scope: !501, file: !4, line: 204, baseType: !479, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "Lambda", scope: !485, file: !4, line: 210, baseType: !507, size: 128, align: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 207, size: 128, align: 64, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !507, file: !4, line: 208, baseType: !460, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !507, file: !4, line: 209, baseType: !479, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "IfExp", scope: !485, file: !4, line: 216, baseType: !512, size: 192, align: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 212, size: 192, align: 64, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !512, file: !4, line: 213, baseType: !479, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !512, file: !4, line: 214, baseType: !479, size: 64, align: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "orelse", scope: !512, file: !4, line: 215, baseType: !479, size: 64, align: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "Dict", scope: !485, file: !4, line: 221, baseType: !518, size: 128, align: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 218, size: 128, align: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !518, file: !4, line: 219, baseType: !465, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !518, file: !4, line: 220, baseType: !465, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "Set", scope: !485, file: !4, line: 225, baseType: !523, size: 64, align: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 223, size: 64, align: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !523, file: !4, line: 224, baseType: !465, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ListComp", scope: !485, file: !4, line: 230, baseType: !527, size: 128, align: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 227, size: 128, align: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !527, file: !4, line: 228, baseType: !479, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "generators", scope: !527, file: !4, line: 229, baseType: !465, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "SetComp", scope: !485, file: !4, line: 235, baseType: !532, size: 128, align: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 232, size: 128, align: 64, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !532, file: !4, line: 233, baseType: !479, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "generators", scope: !532, file: !4, line: 234, baseType: !465, size: 64, align: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "DictComp", scope: !485, file: !4, line: 241, baseType: !537, size: 192, align: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 237, size: 192, align: 64, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !537, file: !4, line: 238, baseType: !479, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !4, line: 239, baseType: !479, size: 64, align: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "generators", scope: !537, file: !4, line: 240, baseType: !465, size: 64, align: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "GeneratorExp", scope: !485, file: !4, line: 246, baseType: !543, size: 128, align: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 243, size: 128, align: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !543, file: !4, line: 244, baseType: !479, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "generators", scope: !543, file: !4, line: 245, baseType: !465, size: 64, align: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "Yield", scope: !485, file: !4, line: 250, baseType: !548, size: 64, align: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 248, size: 64, align: 64, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !548, file: !4, line: 249, baseType: !479, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "YieldFrom", scope: !485, file: !4, line: 254, baseType: !552, size: 64, align: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 252, size: 64, align: 64, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !552, file: !4, line: 253, baseType: !479, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "Compare", scope: !485, file: !4, line: 260, baseType: !556, size: 192, align: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 256, size: 192, align: 64, elements: !557)
!557 = !{!558, !559, !567}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !556, file: !4, line: 257, baseType: !479, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !556, file: !4, line: 258, baseType: !560, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_int_seq", file: !458, line: 26, baseType: !562)
!562 = !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 23, size: 128, align: 64, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !458, line: 24, baseType: !114, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !562, file: !458, line: 25, baseType: !566, size: 32, align: 32, offset: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32, align: 32, elements: !184)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "comparators", scope: !556, file: !4, line: 259, baseType: !465, size: 64, align: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "Call", scope: !485, file: !4, line: 268, baseType: !569, size: 320, align: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 262, size: 320, align: 64, elements: !570)
!570 = !{!571, !572, !573, !574, !575}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !4, line: 263, baseType: !479, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !569, file: !4, line: 264, baseType: !465, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "keywords", scope: !569, file: !4, line: 265, baseType: !465, size: 64, align: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "starargs", scope: !569, file: !4, line: 266, baseType: !479, size: 64, align: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "kwargs", scope: !569, file: !4, line: 267, baseType: !479, size: 64, align: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Num", scope: !485, file: !4, line: 272, baseType: !577, size: 64, align: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 270, size: 64, align: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !577, file: !4, line: 271, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "object", file: !458, line: 7, baseType: !108)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "Str", scope: !485, file: !4, line: 276, baseType: !582, size: 64, align: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 274, size: 64, align: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !582, file: !4, line: 275, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", file: !458, line: 5, baseType: !108)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "Bytes", scope: !485, file: !4, line: 280, baseType: !587, size: 64, align: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 278, size: 64, align: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !587, file: !4, line: 279, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "bytes", file: !458, line: 6, baseType: !108)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "NameConstant", scope: !485, file: !4, line: 284, baseType: !592, size: 64, align: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 282, size: 64, align: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !592, file: !4, line: 283, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "singleton", file: !458, line: 8, baseType: !108)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "Attribute", scope: !485, file: !4, line: 290, baseType: !597, size: 192, align: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 286, size: 192, align: 64, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !4, line: 287, baseType: !479, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !597, file: !4, line: 288, baseType: !457, size: 64, align: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !597, file: !4, line: 289, baseType: !602, size: 32, align: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "expr_context_ty", file: !4, line: 12, baseType: !62)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "Subscript", scope: !485, file: !4, line: 296, baseType: !604, size: 192, align: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 292, size: 192, align: 64, elements: !605)
!605 = !{!606, !607, !630}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !4, line: 293, baseType: !479, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !604, file: !4, line: 294, baseType: !608, size: 64, align: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "slice_ty", file: !4, line: 14, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "_slice", file: !4, line: 324, size: 256, align: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !610, file: !4, line: 325, baseType: !70, size: 32, align: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !610, file: !4, line: 341, baseType: !614, size: 192, align: 64, offset: 64)
!614 = !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !4, line: 326, size: 192, align: 64, elements: !615)
!615 = !{!616, !622, !626}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "Slice", scope: !614, file: !4, line: 331, baseType: !617, size: 192, align: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, scope: !614, file: !4, line: 327, size: 192, align: 64, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !617, file: !4, line: 328, baseType: !479, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !617, file: !4, line: 329, baseType: !479, size: 64, align: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !617, file: !4, line: 330, baseType: !479, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ExtSlice", scope: !614, file: !4, line: 335, baseType: !623, size: 64, align: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, scope: !614, file: !4, line: 333, size: 64, align: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dims", scope: !623, file: !4, line: 334, baseType: !465, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "Index", scope: !614, file: !4, line: 339, baseType: !627, size: 64, align: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, scope: !614, file: !4, line: 337, size: 64, align: 64, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !4, line: 338, baseType: !479, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !604, file: !4, line: 295, baseType: !602, size: 32, align: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "Starred", scope: !485, file: !4, line: 301, baseType: !632, size: 128, align: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 298, size: 128, align: 64, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !4, line: 299, baseType: !479, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !632, file: !4, line: 300, baseType: !602, size: 32, align: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !485, file: !4, line: 306, baseType: !637, size: 128, align: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 303, size: 128, align: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !637, file: !4, line: 304, baseType: !457, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !637, file: !4, line: 305, baseType: !602, size: 32, align: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !485, file: !4, line: 311, baseType: !642, size: 128, align: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 308, size: 128, align: 64, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !642, file: !4, line: 309, baseType: !465, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !642, file: !4, line: 310, baseType: !602, size: 32, align: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "Tuple", scope: !485, file: !4, line: 316, baseType: !647, size: 128, align: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !4, line: 313, size: 128, align: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !647, file: !4, line: 314, baseType: !465, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !647, file: !4, line: 315, baseType: !602, size: 32, align: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !481, file: !4, line: 319, baseType: !105, size: 32, align: 32, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "col_offset", scope: !481, file: !4, line: 320, baseType: !105, size: 32, align: 32, offset: 416)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !475, file: !4, line: 377, baseType: !105, size: 32, align: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "col_offset", scope: !475, file: !4, line: 378, baseType: !105, size: 32, align: 32, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kwonlyargs", scope: !462, file: !4, line: 368, baseType: !465, size: 64, align: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "kw_defaults", scope: !462, file: !4, line: 369, baseType: !465, size: 64, align: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "kwarg", scope: !462, file: !4, line: 370, baseType: !473, size: 64, align: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !462, file: !4, line: 371, baseType: !465, size: 64, align: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !454, file: !4, line: 78, baseType: !465, size: 64, align: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "decorator_list", scope: !454, file: !4, line: 79, baseType: !465, size: 64, align: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "returns", scope: !454, file: !4, line: 80, baseType: !479, size: 64, align: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ClassDef", scope: !451, file: !4, line: 91, baseType: !663, size: 448, align: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 83, size: 448, align: 64, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !663, file: !4, line: 84, baseType: !457, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !663, file: !4, line: 85, baseType: !465, size: 64, align: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "keywords", scope: !663, file: !4, line: 86, baseType: !465, size: 64, align: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "starargs", scope: !663, file: !4, line: 87, baseType: !479, size: 64, align: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "kwargs", scope: !663, file: !4, line: 88, baseType: !479, size: 64, align: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !663, file: !4, line: 89, baseType: !465, size: 64, align: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "decorator_list", scope: !663, file: !4, line: 90, baseType: !465, size: 64, align: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "Return", scope: !451, file: !4, line: 95, baseType: !673, size: 64, align: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 93, size: 64, align: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !4, line: 94, baseType: !479, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "Delete", scope: !451, file: !4, line: 99, baseType: !677, size: 64, align: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 97, size: 64, align: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "targets", scope: !677, file: !4, line: 98, baseType: !465, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "Assign", scope: !451, file: !4, line: 104, baseType: !681, size: 128, align: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 101, size: 128, align: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "targets", scope: !681, file: !4, line: 102, baseType: !465, size: 64, align: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !4, line: 103, baseType: !479, size: 64, align: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "AugAssign", scope: !451, file: !4, line: 110, baseType: !686, size: 192, align: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 106, size: 192, align: 64, elements: !687)
!687 = !{!688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !686, file: !4, line: 107, baseType: !479, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !686, file: !4, line: 108, baseType: !498, size: 32, align: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !4, line: 109, baseType: !479, size: 64, align: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "For", scope: !451, file: !4, line: 117, baseType: !692, size: 256, align: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 112, size: 256, align: 64, elements: !693)
!693 = !{!694, !695, !696, !697}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !692, file: !4, line: 113, baseType: !479, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !692, file: !4, line: 114, baseType: !479, size: 64, align: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !692, file: !4, line: 115, baseType: !465, size: 64, align: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "orelse", scope: !692, file: !4, line: 116, baseType: !465, size: 64, align: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "While", scope: !451, file: !4, line: 123, baseType: !699, size: 192, align: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 119, size: 192, align: 64, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !699, file: !4, line: 120, baseType: !479, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !699, file: !4, line: 121, baseType: !465, size: 64, align: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "orelse", scope: !699, file: !4, line: 122, baseType: !465, size: 64, align: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "If", scope: !451, file: !4, line: 129, baseType: !705, size: 192, align: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 125, size: 192, align: 64, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !705, file: !4, line: 126, baseType: !479, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !705, file: !4, line: 127, baseType: !465, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "orelse", scope: !705, file: !4, line: 128, baseType: !465, size: 64, align: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "With", scope: !451, file: !4, line: 134, baseType: !711, size: 128, align: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 131, size: 128, align: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !711, file: !4, line: 132, baseType: !465, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !711, file: !4, line: 133, baseType: !465, size: 64, align: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "Raise", scope: !451, file: !4, line: 139, baseType: !716, size: 128, align: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 136, size: 128, align: 64, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "exc", scope: !716, file: !4, line: 137, baseType: !479, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cause", scope: !716, file: !4, line: 138, baseType: !479, size: 64, align: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "Try", scope: !451, file: !4, line: 146, baseType: !721, size: 256, align: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 141, size: 256, align: 64, elements: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !721, file: !4, line: 142, baseType: !465, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !721, file: !4, line: 143, baseType: !465, size: 64, align: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "orelse", scope: !721, file: !4, line: 144, baseType: !465, size: 64, align: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "finalbody", scope: !721, file: !4, line: 145, baseType: !465, size: 64, align: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "Assert", scope: !451, file: !4, line: 151, baseType: !728, size: 128, align: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 148, size: 128, align: 64, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !728, file: !4, line: 149, baseType: !479, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !728, file: !4, line: 150, baseType: !479, size: 64, align: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "Import", scope: !451, file: !4, line: 155, baseType: !733, size: 64, align: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 153, size: 64, align: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !733, file: !4, line: 154, baseType: !465, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ImportFrom", scope: !451, file: !4, line: 161, baseType: !737, size: 192, align: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 157, size: 192, align: 64, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !737, file: !4, line: 158, baseType: !457, size: 64, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !737, file: !4, line: 159, baseType: !465, size: 64, align: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !737, file: !4, line: 160, baseType: !105, size: 32, align: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "Global", scope: !451, file: !4, line: 165, baseType: !743, size: 64, align: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 163, size: 64, align: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !743, file: !4, line: 164, baseType: !465, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "Nonlocal", scope: !451, file: !4, line: 169, baseType: !747, size: 64, align: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 167, size: 64, align: 64, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !747, file: !4, line: 168, baseType: !465, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "Expr", scope: !451, file: !4, line: 173, baseType: !751, size: 64, align: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !4, line: 171, size: 64, align: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !4, line: 172, baseType: !479, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !447, file: !4, line: 176, baseType: !105, size: 32, align: 32, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "col_offset", scope: !447, file: !4, line: 177, baseType: !105, size: 32, align: 32, offset: 544)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_ty", file: !4, line: 37, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "_alias", file: !4, line: 386, size: 128, align: 64, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !758, file: !4, line: 387, baseType: !457, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "asname", scope: !758, file: !4, line: 388, baseType: !457, size: 64, align: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!767 = !{!768, !799, !809, !827}
!768 = !DISubprogram(name: "PyFuture_FromASTObject", scope: !1, file: !1, line: 124, type: !769, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyFutureFeatures* (%struct._mod*, %struct._object*)* @PyFuture_FromASTObject, variables: !795)
!769 = !DISubroutineType(types: !770)
!770 = !{!99, !771, !108}
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "mod_ty", file: !4, line: 5, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mod", file: !4, line: 44, size: 128, align: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !773, file: !4, line: 45, baseType: !3, size: 32, align: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !773, file: !4, line: 63, baseType: !777, size: 64, align: 64, offset: 64)
!777 = !DICompositeType(tag: DW_TAG_union_type, scope: !773, file: !4, line: 46, size: 64, align: 64, elements: !778)
!778 = !{!779, !783, !787, !791}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "Module", scope: !777, file: !4, line: 49, baseType: !780, size: 64, align: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !4, line: 47, size: 64, align: 64, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !780, file: !4, line: 48, baseType: !465, size: 64, align: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "Interactive", scope: !777, file: !4, line: 53, baseType: !784, size: 64, align: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !4, line: 51, size: 64, align: 64, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !784, file: !4, line: 52, baseType: !465, size: 64, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "Expression", scope: !777, file: !4, line: 57, baseType: !788, size: 64, align: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !4, line: 55, size: 64, align: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !788, file: !4, line: 56, baseType: !479, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "Suite", scope: !777, file: !4, line: 61, baseType: !792, size: 64, align: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !4, line: 59, size: 64, align: 64, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !792, file: !4, line: 60, baseType: !465, size: 64, align: 64)
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !768, file: !1, line: 124, type: !771)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !768, file: !1, line: 124, type: !108)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ff", scope: !768, file: !1, line: 126, type: !99)
!799 = !DISubprogram(name: "PyFuture_FromAST", scope: !1, file: !1, line: 145, type: !800, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyFutureFeatures* (%struct._mod*, i8*)* @PyFuture_FromAST, variables: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!99, !771, !132}
!802 = !{!803, !804, !805, !806, !807}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !799, file: !1, line: 145, type: !771)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename_str", arg: 2, scope: !799, file: !1, line: 145, type: !132)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ff", scope: !799, file: !1, line: 147, type: !99)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !799, file: !1, line: 148, type: !108)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !1, line: 154, type: !108)
!808 = distinct !DILexicalBlock(scope: !799, file: !1, line: 154, column: 5)
!809 = !DISubprogram(name: "future_parse", scope: !1, file: !1, line: 59, type: !810, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!105, !99, !771, !108}
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !824}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ff", arg: 1, scope: !809, file: !1, line: 59, type: !99)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 2, scope: !809, file: !1, line: 59, type: !771)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !809, file: !1, line: 59, type: !108)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !809, file: !1, line: 61, type: !105)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "done", scope: !809, file: !1, line: 61, type: !105)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev_line", scope: !809, file: !1, line: 61, type: !105)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first", scope: !809, file: !1, line: 62, type: !445)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !821, file: !1, line: 85, type: !445)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 84, column: 55)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 84, column: 5)
!823 = distinct !DILexicalBlock(scope: !809, file: !1, line: 84, column: 5)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modname", scope: !825, file: !1, line: 98, type: !457)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 97, column: 41)
!826 = distinct !DILexicalBlock(scope: !821, file: !1, line: 97, column: 13)
!827 = !DISubprogram(name: "future_check_features", scope: !1, file: !1, line: 14, type: !828, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, variables: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!105, !99, !445, !108}
!830 = !{!831, !832, !833, !834, !835, !836, !840, !841, !844, !845, !847, !848, !851, !852, !854, !855, !858, !859, !861, !862, !865, !866, !868, !869, !872, !873, !875, !876, !879, !880, !882, !883, !886, !887, !889, !890, !893, !894, !896, !897, !900, !901, !903}
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ff", arg: 1, scope: !827, file: !1, line: 14, type: !99)
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !827, file: !1, line: 14, type: !445)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !827, file: !1, line: 14, type: !108)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !827, file: !1, line: 16, type: !105)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "names", scope: !827, file: !1, line: 17, type: !465)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !837, file: !1, line: 23, type: !756)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 22, column: 47)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 22, column: 5)
!839 = distinct !DILexicalBlock(scope: !827, file: !1, line: 22, column: 5)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "feature", scope: !837, file: !1, line: 24, type: !132)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !842, file: !1, line: 27, type: !196)
!842 = distinct !DILexicalBlock(scope: !843, file: !1, line: 27, column: 13)
!843 = distinct !DILexicalBlock(scope: !837, file: !1, line: 27, column: 13)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !842, file: !1, line: 27, type: !196)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !846, file: !1, line: 27, type: !764)
!846 = distinct !DILexicalBlock(scope: !842, file: !1, line: 27, column: 13)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !846, file: !1, line: 27, type: !105)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !849, file: !1, line: 29, type: !196)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 29, column: 20)
!850 = distinct !DILexicalBlock(scope: !843, file: !1, line: 29, column: 20)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !849, file: !1, line: 29, type: !196)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !853, file: !1, line: 29, type: !764)
!853 = distinct !DILexicalBlock(scope: !849, file: !1, line: 29, column: 20)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !853, file: !1, line: 29, type: !105)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !856, file: !1, line: 31, type: !196)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 31, column: 20)
!857 = distinct !DILexicalBlock(scope: !850, file: !1, line: 31, column: 20)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !856, file: !1, line: 31, type: !196)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !860, file: !1, line: 31, type: !764)
!860 = distinct !DILexicalBlock(scope: !856, file: !1, line: 31, column: 20)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !860, file: !1, line: 31, type: !105)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !863, file: !1, line: 33, type: !196)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 33, column: 20)
!864 = distinct !DILexicalBlock(scope: !857, file: !1, line: 33, column: 20)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !863, file: !1, line: 33, type: !196)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !867, file: !1, line: 33, type: !764)
!867 = distinct !DILexicalBlock(scope: !863, file: !1, line: 33, column: 20)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !867, file: !1, line: 33, type: !105)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !870, file: !1, line: 35, type: !196)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 35, column: 20)
!871 = distinct !DILexicalBlock(scope: !864, file: !1, line: 35, column: 20)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !870, file: !1, line: 35, type: !196)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !874, file: !1, line: 35, type: !764)
!874 = distinct !DILexicalBlock(scope: !870, file: !1, line: 35, column: 20)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !874, file: !1, line: 35, type: !105)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !877, file: !1, line: 37, type: !196)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 37, column: 20)
!878 = distinct !DILexicalBlock(scope: !871, file: !1, line: 37, column: 20)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !877, file: !1, line: 37, type: !196)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !881, file: !1, line: 37, type: !764)
!881 = distinct !DILexicalBlock(scope: !877, file: !1, line: 37, column: 20)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !881, file: !1, line: 37, type: !105)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !884, file: !1, line: 39, type: !196)
!884 = distinct !DILexicalBlock(scope: !885, file: !1, line: 39, column: 20)
!885 = distinct !DILexicalBlock(scope: !878, file: !1, line: 39, column: 20)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !884, file: !1, line: 39, type: !196)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !888, file: !1, line: 39, type: !764)
!888 = distinct !DILexicalBlock(scope: !884, file: !1, line: 39, column: 20)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !888, file: !1, line: 39, type: !105)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !891, file: !1, line: 41, type: !196)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 41, column: 20)
!892 = distinct !DILexicalBlock(scope: !885, file: !1, line: 41, column: 20)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !891, file: !1, line: 41, type: !196)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !895, file: !1, line: 41, type: !764)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 41, column: 20)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !895, file: !1, line: 41, type: !105)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !898, file: !1, line: 43, type: !196)
!898 = distinct !DILexicalBlock(scope: !899, file: !1, line: 43, column: 20)
!899 = distinct !DILexicalBlock(scope: !892, file: !1, line: 43, column: 20)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !898, file: !1, line: 43, type: !196)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !902, file: !1, line: 43, type: !764)
!902 = distinct !DILexicalBlock(scope: !898, file: !1, line: 43, column: 20)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !902, file: !1, line: 43, type: !105)
!904 = !{i32 2, !"Dwarf Version", i32 4}
!905 = !{i32 2, !"Debug Info Version", i32 3}
!906 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!907 = !DIExpression()
!908 = !DILocation(line: 124, column: 31, scope: !768)
!909 = !DILocation(line: 124, column: 46, scope: !768)
!910 = !DILocation(line: 128, column: 30, scope: !768)
!911 = !DILocation(line: 128, column: 10, scope: !768)
!912 = !DILocation(line: 126, column: 23, scope: !768)
!913 = !DILocation(line: 129, column: 12, scope: !914)
!914 = distinct !DILexicalBlock(scope: !768, file: !1, line: 129, column: 9)
!915 = !DILocation(line: 129, column: 9, scope: !768)
!916 = !DILocation(line: 130, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !1, line: 129, column: 21)
!918 = !DILocation(line: 131, column: 9, scope: !917)
!919 = !DILocation(line: 133, column: 9, scope: !768)
!920 = !DILocation(line: 133, column: 21, scope: !768)
!921 = !{!922, !923, i64 0}
!922 = !{!"", !923, i64 0, !923, i64 4}
!923 = !{!"int", !924, i64 0}
!924 = !{!"omnipotent char", !925, i64 0}
!925 = !{!"Simple C/C++ TBAA"}
!926 = !DILocation(line: 134, column: 9, scope: !768)
!927 = !DILocation(line: 134, column: 19, scope: !768)
!928 = !{!922, !923, i64 4}
!929 = !DILocation(line: 59, column: 32, scope: !809, inlinedAt: !930)
!930 = distinct !DILocation(line: 136, column: 10, scope: !931)
!931 = distinct !DILexicalBlock(scope: !768, file: !1, line: 136, column: 9)
!932 = !DILocation(line: 59, column: 43, scope: !809, inlinedAt: !930)
!933 = !DILocation(line: 59, column: 58, scope: !809, inlinedAt: !930)
!934 = !DILocation(line: 61, column: 12, scope: !809, inlinedAt: !930)
!935 = !DILocation(line: 61, column: 22, scope: !809, inlinedAt: !930)
!936 = !DILocation(line: 64, column: 16, scope: !937, inlinedAt: !930)
!937 = distinct !DILexicalBlock(scope: !809, file: !1, line: 64, column: 9)
!938 = !{!939, !924, i64 0}
!939 = !{!"_mod", !924, i64 0, !924, i64 8}
!940 = !DILocation(line: 64, column: 36, scope: !937, inlinedAt: !930)
!941 = !DILocation(line: 67, column: 9, scope: !942, inlinedAt: !930)
!942 = distinct !DILexicalBlock(scope: !809, file: !1, line: 67, column: 9)
!943 = !{!944, !945, i64 0}
!944 = !{!"", !945, i64 0}
!945 = !{!"any pointer", !924, i64 0}
!946 = !DILocation(line: 67, column: 9, scope: !947, inlinedAt: !930)
!947 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 2)
!948 = !{!949, !950, i64 0}
!949 = !{!"", !950, i64 0, !924, i64 8}
!950 = !{!"long", !924, i64 0}
!951 = !DILocation(line: 67, column: 9, scope: !809, inlinedAt: !930)
!952 = !DILocation(line: 61, column: 9, scope: !809, inlinedAt: !930)
!953 = !DILocation(line: 79, column: 22, scope: !809, inlinedAt: !930)
!954 = !{!945, !945, i64 0}
!955 = !DILocation(line: 62, column: 13, scope: !809, inlinedAt: !930)
!956 = !DILocation(line: 80, column: 16, scope: !957, inlinedAt: !930)
!957 = distinct !DILexicalBlock(scope: !809, file: !1, line: 80, column: 9)
!958 = !{!959, !924, i64 0}
!959 = !{!"_stmt", !924, i64 0, !924, i64 8, !923, i64 64, !923, i64 68}
!960 = !DILocation(line: 80, column: 21, scope: !957, inlinedAt: !930)
!961 = !DILocation(line: 80, column: 34, scope: !957, inlinedAt: !930)
!962 = !DILocation(line: 80, column: 44, scope: !957, inlinedAt: !930)
!963 = !DILocation(line: 80, column: 51, scope: !957, inlinedAt: !930)
!964 = !DILocation(line: 80, column: 58, scope: !957, inlinedAt: !930)
!965 = !{!966, !924, i64 0}
!966 = !{!"_expr", !924, i64 0, !924, i64 8, !923, i64 48, !923, i64 52}
!967 = !DILocation(line: 80, column: 63, scope: !957, inlinedAt: !930)
!968 = !DILocation(line: 80, column: 9, scope: !809, inlinedAt: !930)
!969 = !DILocation(line: 84, column: 12, scope: !970, inlinedAt: !930)
!970 = !DILexicalBlockFile(scope: !971, file: !1, discriminator: 6)
!971 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 1)
!972 = !DILocation(line: 85, column: 30, scope: !821, inlinedAt: !930)
!973 = !DILocation(line: 136, column: 10, scope: !931)
!974 = !DILocation(line: 84, column: 16, scope: !822, inlinedAt: !930)
!975 = !DILocation(line: 84, column: 16, scope: !976, inlinedAt: !930)
!976 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 3)
!977 = !DILocation(line: 84, column: 14, scope: !978, inlinedAt: !930)
!978 = !DILexicalBlockFile(scope: !979, file: !1, discriminator: 5)
!979 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 4)
!980 = !DILocation(line: 84, column: 5, scope: !823, inlinedAt: !930)
!981 = !DILocation(line: 85, column: 17, scope: !821, inlinedAt: !930)
!982 = !DILocation(line: 87, column: 13, scope: !983, inlinedAt: !930)
!983 = distinct !DILexicalBlock(scope: !821, file: !1, line: 87, column: 13)
!984 = !DILocation(line: 87, column: 24, scope: !983, inlinedAt: !930)
!985 = !{!959, !923, i64 64}
!986 = !DILocation(line: 87, column: 31, scope: !983, inlinedAt: !930)
!987 = !DILocation(line: 87, column: 18, scope: !983, inlinedAt: !930)
!988 = !DILocation(line: 97, column: 16, scope: !826, inlinedAt: !930)
!989 = !DILocation(line: 97, column: 21, scope: !826, inlinedAt: !930)
!990 = !DILocation(line: 97, column: 13, scope: !821, inlinedAt: !930)
!991 = !DILocation(line: 98, column: 50, scope: !825, inlinedAt: !930)
!992 = !{!993, !945, i64 0}
!993 = !{!"", !945, i64 0, !945, i64 8, !923, i64 16}
!994 = !DILocation(line: 98, column: 24, scope: !825, inlinedAt: !930)
!995 = !DILocation(line: 99, column: 17, scope: !996, inlinedAt: !930)
!996 = distinct !DILexicalBlock(scope: !825, file: !1, line: 99, column: 17)
!997 = !DILocation(line: 99, column: 25, scope: !996, inlinedAt: !930)
!998 = !DILocation(line: 100, column: 18, scope: !996, inlinedAt: !930)
!999 = !DILocation(line: 99, column: 17, scope: !825, inlinedAt: !930)
!1000 = !DILocation(line: 101, column: 21, scope: !1001, inlinedAt: !930)
!1001 = distinct !DILexicalBlock(scope: !996, file: !1, line: 100, column: 75)
!1002 = !DILocation(line: 102, column: 37, scope: !1003, inlinedAt: !930)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 101, column: 27)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 101, column: 21)
!1005 = !DILocation(line: 102, column: 21, scope: !1003, inlinedAt: !930)
!1006 = !DILocation(line: 104, column: 61, scope: !1003, inlinedAt: !930)
!1007 = !DILocation(line: 104, column: 72, scope: !1003, inlinedAt: !930)
!1008 = !{!959, !923, i64 68}
!1009 = !DILocation(line: 104, column: 21, scope: !1003, inlinedAt: !930)
!1010 = !DILocation(line: 105, column: 21, scope: !1003, inlinedAt: !930)
!1011 = !DILocation(line: 14, column: 41, scope: !827, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 107, column: 22, scope: !1013, inlinedAt: !930)
!1013 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 107, column: 21)
!1014 = !DILocation(line: 14, column: 53, scope: !827, inlinedAt: !1012)
!1015 = !DILocation(line: 14, column: 66, scope: !827, inlinedAt: !1012)
!1016 = !DILocation(line: 21, column: 29, scope: !827, inlinedAt: !1012)
!1017 = !{!993, !945, i64 8}
!1018 = !DILocation(line: 17, column: 15, scope: !827, inlinedAt: !1012)
!1019 = !DILocation(line: 16, column: 9, scope: !827, inlinedAt: !1012)
!1020 = !DILocation(line: 22, column: 21, scope: !838, inlinedAt: !1012)
!1021 = !DILocation(line: 22, column: 21, scope: !1022, inlinedAt: !1012)
!1022 = !DILexicalBlockFile(scope: !838, file: !1, discriminator: 3)
!1023 = !DILocation(line: 22, column: 19, scope: !1024, inlinedAt: !1012)
!1024 = !DILexicalBlockFile(scope: !1025, file: !1, discriminator: 5)
!1025 = !DILexicalBlockFile(scope: !838, file: !1, discriminator: 4)
!1026 = !DILocation(line: 22, column: 5, scope: !839, inlinedAt: !1012)
!1027 = !DILocation(line: 23, column: 35, scope: !837, inlinedAt: !1012)
!1028 = !DILocation(line: 23, column: 18, scope: !837, inlinedAt: !1012)
!1029 = !DILocation(line: 24, column: 57, scope: !837, inlinedAt: !1012)
!1030 = !{!1031, !945, i64 0}
!1031 = !{!"_alias", !945, i64 0, !945, i64 8}
!1032 = !DILocation(line: 24, column: 31, scope: !837, inlinedAt: !1012)
!1033 = !DILocation(line: 24, column: 21, scope: !837, inlinedAt: !1012)
!1034 = !DILocation(line: 25, column: 14, scope: !1035, inlinedAt: !1012)
!1035 = distinct !DILexicalBlock(scope: !837, file: !1, line: 25, column: 13)
!1036 = !DILocation(line: 25, column: 13, scope: !837, inlinedAt: !1012)
!1037 = !DILocation(line: 27, column: 13, scope: !842, inlinedAt: !1012)
!1038 = !DILocation(line: 27, column: 13, scope: !1039, inlinedAt: !1012)
!1039 = !DILexicalBlockFile(scope: !1040, file: !1, discriminator: 4)
!1040 = !DILexicalBlockFile(scope: !842, file: !1, discriminator: 2)
!1041 = !DILocation(line: 27, column: 51, scope: !843, inlinedAt: !1012)
!1042 = !DILocation(line: 27, column: 13, scope: !837, inlinedAt: !1012)
!1043 = !DILocation(line: 29, column: 20, scope: !849, inlinedAt: !1012)
!1044 = !DILocation(line: 29, column: 20, scope: !1045, inlinedAt: !1012)
!1045 = !DILexicalBlockFile(scope: !1046, file: !1, discriminator: 4)
!1046 = !DILexicalBlockFile(scope: !849, file: !1, discriminator: 2)
!1047 = !DILocation(line: 29, column: 55, scope: !850, inlinedAt: !1012)
!1048 = !DILocation(line: 29, column: 20, scope: !843, inlinedAt: !1012)
!1049 = !DILocation(line: 31, column: 20, scope: !856, inlinedAt: !1012)
!1050 = !DILocation(line: 31, column: 20, scope: !1051, inlinedAt: !1012)
!1051 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 4)
!1052 = !DILexicalBlockFile(scope: !856, file: !1, discriminator: 2)
!1053 = !DILocation(line: 31, column: 53, scope: !857, inlinedAt: !1012)
!1054 = !DILocation(line: 31, column: 20, scope: !850, inlinedAt: !1012)
!1055 = !DILocation(line: 33, column: 20, scope: !863, inlinedAt: !1012)
!1056 = !DILocation(line: 33, column: 20, scope: !1057, inlinedAt: !1012)
!1057 = !DILexicalBlockFile(scope: !1058, file: !1, discriminator: 4)
!1058 = !DILexicalBlockFile(scope: !863, file: !1, discriminator: 2)
!1059 = !DILocation(line: 33, column: 60, scope: !864, inlinedAt: !1012)
!1060 = !DILocation(line: 33, column: 20, scope: !857, inlinedAt: !1012)
!1061 = !DILocation(line: 35, column: 20, scope: !870, inlinedAt: !1012)
!1062 = !DILocation(line: 35, column: 20, scope: !1063, inlinedAt: !1012)
!1063 = !DILexicalBlockFile(scope: !1064, file: !1, discriminator: 4)
!1064 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 2)
!1065 = !DILocation(line: 35, column: 59, scope: !871, inlinedAt: !1012)
!1066 = !DILocation(line: 35, column: 20, scope: !864, inlinedAt: !1012)
!1067 = !DILocation(line: 37, column: 20, scope: !877, inlinedAt: !1012)
!1068 = !DILocation(line: 37, column: 20, scope: !1069, inlinedAt: !1012)
!1069 = !DILexicalBlockFile(scope: !1070, file: !1, discriminator: 4)
!1070 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 2)
!1071 = !DILocation(line: 37, column: 59, scope: !878, inlinedAt: !1012)
!1072 = !DILocation(line: 37, column: 20, scope: !871, inlinedAt: !1012)
!1073 = !DILocation(line: 39, column: 20, scope: !884, inlinedAt: !1012)
!1074 = !DILocation(line: 39, column: 20, scope: !1075, inlinedAt: !1012)
!1075 = !DILexicalBlockFile(scope: !1076, file: !1, discriminator: 4)
!1076 = !DILexicalBlockFile(scope: !884, file: !1, discriminator: 2)
!1077 = !DILocation(line: 39, column: 61, scope: !885, inlinedAt: !1012)
!1078 = !DILocation(line: 39, column: 20, scope: !878, inlinedAt: !1012)
!1079 = !DILocation(line: 41, column: 20, scope: !891, inlinedAt: !1012)
!1080 = !DILocation(line: 41, column: 20, scope: !1081, inlinedAt: !1012)
!1081 = !DILexicalBlockFile(scope: !1082, file: !1, discriminator: 4)
!1082 = !DILexicalBlockFile(scope: !891, file: !1, discriminator: 2)
!1083 = !DILocation(line: 41, column: 58, scope: !892, inlinedAt: !1012)
!1084 = !DILocation(line: 41, column: 20, scope: !885, inlinedAt: !1012)
!1085 = !DILocation(line: 42, column: 29, scope: !1086, inlinedAt: !1012)
!1086 = distinct !DILexicalBlock(scope: !892, file: !1, line: 41, column: 64)
!1087 = !DILocation(line: 54, column: 5, scope: !838, inlinedAt: !1012)
!1088 = !DILocation(line: 43, column: 20, scope: !898, inlinedAt: !1012)
!1089 = !DILocation(line: 43, column: 20, scope: !1090, inlinedAt: !1012)
!1090 = !DILexicalBlockFile(scope: !1091, file: !1, discriminator: 4)
!1091 = !DILexicalBlockFile(scope: !898, file: !1, discriminator: 2)
!1092 = !DILocation(line: 43, column: 46, scope: !899, inlinedAt: !1012)
!1093 = !DILocation(line: 44, column: 29, scope: !1094, inlinedAt: !1012)
!1094 = distinct !DILexicalBlock(scope: !899, file: !1, line: 43, column: 52)
!1095 = !DILocation(line: 43, column: 20, scope: !892, inlinedAt: !1012)
!1096 = !DILocation(line: 44, column: 13, scope: !1094, inlinedAt: !1012)
!1097 = !DILocation(line: 46, column: 53, scope: !1094, inlinedAt: !1012)
!1098 = !DILocation(line: 46, column: 64, scope: !1094, inlinedAt: !1012)
!1099 = !DILocation(line: 46, column: 13, scope: !1094, inlinedAt: !1012)
!1100 = !DILocation(line: 47, column: 13, scope: !1094, inlinedAt: !1012)
!1101 = !DILocation(line: 49, column: 13, scope: !1102, inlinedAt: !1012)
!1102 = distinct !DILexicalBlock(scope: !899, file: !1, line: 48, column: 16)
!1103 = !DILocation(line: 51, column: 53, scope: !1102, inlinedAt: !1012)
!1104 = !DILocation(line: 51, column: 64, scope: !1102, inlinedAt: !1012)
!1105 = !DILocation(line: 51, column: 13, scope: !1102, inlinedAt: !1012)
!1106 = !DILocation(line: 52, column: 13, scope: !1102, inlinedAt: !1012)
!1107 = !DILocation(line: 22, column: 43, scope: !838, inlinedAt: !1012)
!1108 = !DILocation(line: 22, column: 17, scope: !1109, inlinedAt: !1012)
!1109 = !DILexicalBlockFile(scope: !1110, file: !1, discriminator: 6)
!1110 = !DILexicalBlockFile(scope: !838, file: !1, discriminator: 1)
!1111 = !DILocation(line: 109, column: 36, scope: !1001, inlinedAt: !930)
!1112 = !DILocation(line: 109, column: 31, scope: !1001, inlinedAt: !930)
!1113 = !DILocation(line: 110, column: 13, scope: !1001, inlinedAt: !930)
!1114 = !DILocation(line: 84, column: 51, scope: !822, inlinedAt: !930)
!1115 = !DILocation(line: 84, column: 5, scope: !822, inlinedAt: !930)
!1116 = !DILocation(line: 137, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !931, file: !1, line: 136, column: 43)
!1118 = !DILocation(line: 138, column: 9, scope: !1117)
!1119 = !DILocation(line: 141, column: 1, scope: !768)
!1120 = !DILocation(line: 145, column: 25, scope: !799)
!1121 = !DILocation(line: 145, column: 42, scope: !799)
!1122 = !DILocation(line: 150, column: 16, scope: !799)
!1123 = !DILocation(line: 148, column: 15, scope: !799)
!1124 = !DILocation(line: 151, column: 18, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !799, file: !1, line: 151, column: 9)
!1126 = !DILocation(line: 151, column: 9, scope: !799)
!1127 = !DILocation(line: 153, column: 10, scope: !799)
!1128 = !DILocation(line: 147, column: 23, scope: !799)
!1129 = !DILocation(line: 154, column: 5, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 1)
!1131 = !DILocation(line: 154, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !808, file: !1, line: 154, column: 5)
!1133 = !{!1134, !950, i64 0}
!1134 = !{!"_object", !950, i64 0, !945, i64 8}
!1135 = !DILocation(line: 154, column: 5, scope: !808)
!1136 = !DILocation(line: 154, column: 5, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1132, file: !1, discriminator: 3)
!1138 = !{!1134, !945, i64 8}
!1139 = !{!1140, !945, i64 48}
!1140 = !{!"_typeobject", !1141, i64 0, !945, i64 24, !950, i64 32, !950, i64 40, !945, i64 48, !945, i64 56, !945, i64 64, !945, i64 72, !945, i64 80, !945, i64 88, !945, i64 96, !945, i64 104, !945, i64 112, !945, i64 120, !945, i64 128, !945, i64 136, !945, i64 144, !945, i64 152, !945, i64 160, !950, i64 168, !945, i64 176, !945, i64 184, !945, i64 192, !945, i64 200, !950, i64 208, !945, i64 216, !945, i64 224, !945, i64 232, !945, i64 240, !945, i64 248, !945, i64 256, !945, i64 264, !945, i64 272, !945, i64 280, !950, i64 288, !945, i64 296, !945, i64 304, !945, i64 312, !945, i64 320, !945, i64 328, !945, i64 336, !945, i64 344, !945, i64 352, !945, i64 360, !945, i64 368, !945, i64 376, !923, i64 384, !945, i64 392}
!1141 = !{!"", !1134, i64 0, !950, i64 16}
!1142 = !DILocation(line: 156, column: 1, scope: !799)
