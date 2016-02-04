; ModuleID = 'formatter_unicode.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.InternalFormatSpec = type { i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.NumberFieldWidths = type { i64, i64, i64, i64, i8, i64, i64, i64, i64, i64, i64 }
%struct.LocaleInfo = type { %struct._object*, %struct._object*, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@PyUnicode_Type = external global %struct._typeobject, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [35 x i8] c"Format specifier missing precision\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid format specifier\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Too many decimal digits in format string\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot specify ',' with '%c'.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot specify ',' with '\5Cx%x'.\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Sign not allowed in string format specifier\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Alternate form (#) not allowed in string format specifier\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"'=' alignment not allowed in string format specifier\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Unknown format code '%c' for object of type '%.200s'\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Unknown format code '\5Cx%x' for object of type '%.200s'\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Precision not allowed in integer format specifier\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Sign not allowed with integer format specifier 'c'\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"%c arg not in range(0x110000)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@no_grouping = internal global [1 x i8] c"\7F", align 1
@_Py_ctype_toupper = external constant [256 x i8], align 16
@PyExc_SystemError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"non-ascii grouped digit\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"precision too big\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.16 = private unnamed_addr constant [56 x i8] c"Zero padding is not allowed in complex format specifier\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"'=' alignment flag is not allowed in complex format specifier\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_PyUnicode_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %format = alloca %struct.InternalFormatSpec, align 8
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !420, metadata !858), !dbg !859
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !421, metadata !858), !dbg !860
  tail call void @llvm.dbg.value(metadata %struct._object* %format_spec, i64 0, metadata !422, metadata !858), !dbg !861
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !423, metadata !858), !dbg !862
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !424, metadata !858), !dbg !863
  %0 = bitcast %struct.InternalFormatSpec* %format to i8*, !dbg !864
  call void @llvm.lifetime.start(i64 48, i8* %0) #1, !dbg !864
  %cmp = icmp eq i64 %start, %end, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !867

if.then:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !868
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !868, !tbaa !871
  %cmp1 = icmp eq %struct._typeobject* %1, @PyUnicode_Type, !dbg !868
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !877

if.then.2:                                        ; preds = %if.then
  %call = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %obj) #1, !dbg !878
  br label %cleanup, !dbg !879

if.else:                                          ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !478, metadata !858) #1, !dbg !880
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !479, metadata !858) #1, !dbg !882
  %call.i = tail call %struct._object* @PyObject_Str(%struct._object* %obj) #1, !dbg !883
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !480, metadata !858) #1, !dbg !884
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !885
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !887

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %call.i) #1, !dbg !888
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !481, metadata !858) #1, !dbg !889
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !482, metadata !858) #1, !dbg !890
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !892
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !892, !tbaa !894
  %dec.i = add i64 %2, -1, !dbg !892
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !892, !tbaa !894
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !892
  br i1 %cmp2.i, label %if.else.i, label %cleanup, !dbg !895

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !896
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !896, !tbaa !871
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !896
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !896, !tbaa !898
  tail call void %4(%struct._object* %call.i) #1, !dbg !896
  br label %cleanup, !dbg !902

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !425, metadata !858), !dbg !903
  %call4 = call fastcc i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* nonnull %format, i8 signext 115, i8 signext 60), !dbg !904
  %tobool = icmp eq i32 %call4, 0, !dbg !904
  br i1 %tobool, label %cleanup, label %if.end.6, !dbg !906

if.end.6:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !907
  %5 = load i32, i32* %type, align 8, !dbg !907, !tbaa !908
  %cond = icmp eq i32 %5, 115, !dbg !910
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !910

sw.bb:                                            ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !425, metadata !858), !dbg !903
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !529, metadata !858) #1, !dbg !911
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !530, metadata !858) #1, !dbg !914
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !531, metadata !858) #1, !dbg !915
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !536, metadata !858) #1, !dbg !916
  %6 = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, i32 0, !dbg !917
  %7 = load i64, i64* %6, align 8, !dbg !917, !tbaa !918
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !535, metadata !858) #1, !dbg !921
  %sign.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !922
  %8 = load i32, i32* %sign.i, align 4, !dbg !922, !tbaa !924
  %cmp.i.18 = icmp eq i32 %8, 0, !dbg !925
  br i1 %cmp.i.18, label %if.end.i.19, label %if.then.i, !dbg !926

if.then.i:                                        ; preds = %sw.bb
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !927, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !930
  br label %cleanup, !dbg !931

if.end.i.19:                                      ; preds = %sw.bb
  %alternate.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !932
  %10 = load i32, i32* %alternate.i, align 8, !dbg !932, !tbaa !934
  %tobool.i = icmp eq i32 %10, 0, !dbg !935
  br i1 %tobool.i, label %if.end.2.i, label %if.then.1.i, !dbg !936

if.then.1.i:                                      ; preds = %if.end.i.19
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !937, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !939
  br label %cleanup, !dbg !940

if.end.2.i:                                       ; preds = %if.end.i.19
  %align.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 1, !dbg !941
  %12 = load i32, i32* %align.i, align 4, !dbg !943, !tbaa !944
  %cmp3.i = icmp eq i32 %12, 61, !dbg !945
  br i1 %cmp3.i, label %if.then.4.i, label %if.end.5.i, !dbg !946

if.then.4.i:                                      ; preds = %if.end.2.i
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !947, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !949
  br label %cleanup, !dbg !950

if.end.5.i:                                       ; preds = %if.end.2.i
  %width.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !951
  %14 = load i64, i64* %width.i, align 8, !dbg !953, !tbaa !954
  %cmp6.i = icmp ne i64 %14, -1, !dbg !955
  %cmp8.i = icmp sgt i64 %14, %7, !dbg !956
  %or.cond.i = and i1 %cmp6.i, %cmp8.i, !dbg !957
  %precision15.phi.trans.insert.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 6, !dbg !958
  %.pre.i = load i64, i64* %precision15.phi.trans.insert.i, align 8, !dbg !958, !tbaa !960
  br i1 %or.cond.i, label %if.end.14.i, label %land.lhs.true.i, !dbg !957

land.lhs.true.i:                                  ; preds = %if.end.5.i
  %cmp9.i = icmp ne i64 %.pre.i, -1, !dbg !961
  %cmp12.i = icmp slt i64 %.pre.i, %7, !dbg !962
  %or.cond145.i = and i1 %cmp9.i, %cmp12.i, !dbg !963
  br i1 %or.cond145.i, label %if.end.14.i, label %if.then.13.i, !dbg !963

if.then.13.i:                                     ; preds = %land.lhs.true.i
  %call.i.20 = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %obj) #1, !dbg !964
  br label %cleanup, !dbg !966

if.end.14.i:                                      ; preds = %land.lhs.true.i, %if.end.5.i
  %cmp16.i = icmp slt i64 %.pre.i, 0, !dbg !967
  %cmp19.i = icmp slt i64 %7, %.pre.i, !dbg !968
  %or.cond146.i = or i1 %cmp16.i, %cmp19.i, !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %.pre.i, i64 0, metadata !535, metadata !858) #1, !dbg !921
  %len.0.i = select i1 %or.cond146.i, i64 %7, i64 %.pre.i, !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %len.0.i, i64 0, metadata !545, metadata !858) #1, !dbg !970
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !858) #1, !dbg !972
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !547, metadata !858) #1, !dbg !973
  %cmp.i.i = icmp slt i64 %14, 0, !dbg !974
  %cmp1.i.i = icmp sgt i64 %len.0.i, %14, !dbg !976
  %or.cond157.i = or i1 %cmp.i.i, %cmp1.i.i, !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !550, metadata !858) #1, !dbg !980
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !534, metadata !858) #1, !dbg !981
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !534, metadata !858) #1, !dbg !981
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !534, metadata !858) #1, !dbg !981
  %15 = select i1 %or.cond157.i, i64 %len.0.i, i64 %14, !dbg !979
  switch i32 %12, label %if.end.14.calc_padding.exit_crit_edge.i [
    i32 62, label %if.then.6.i.i
    i32 94, label %if.then.9.i.i
  ], !dbg !982

if.end.14.calc_padding.exit_crit_edge.i:          ; preds = %if.end.14.i
  %.pre160.i = sub i64 %15, %len.0.i, !dbg !983
  br label %calc_padding.exit.i, !dbg !982

if.then.6.i.i:                                    ; preds = %if.end.14.i
  %sub.i.i = sub i64 %15, %len.0.i, !dbg !984
  tail call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !548, metadata !858) #1, !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  br label %calc_padding.exit.i, !dbg !988

if.then.9.i.i:                                    ; preds = %if.end.14.i
  %sub10.i.i = sub i64 %15, %len.0.i, !dbg !989
  %div.i.i = sdiv i64 %sub10.i.i, 2, !dbg !991
  tail call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !548, metadata !858) #1, !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !532, metadata !858) #1, !dbg !987
  br label %calc_padding.exit.i, !dbg !992

calc_padding.exit.i:                              ; preds = %if.then.9.i.i, %if.then.6.i.i, %if.end.14.calc_padding.exit_crit_edge.i
  %sub19.i.pre-phi.i = phi i64 [ %.pre160.i, %if.end.14.calc_padding.exit_crit_edge.i ], [ %sub.i.i, %if.then.6.i.i ], [ %sub10.i.i, %if.then.9.i.i ], !dbg !983
  %16 = phi i64 [ 0, %if.end.14.calc_padding.exit_crit_edge.i ], [ %sub.i.i, %if.then.6.i.i ], [ %div.i.i, %if.then.9.i.i ], !dbg !993
  %sub20.i.i = sub i64 %sub19.i.pre-phi.i, %16, !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !549, metadata !858) #1, !dbg !995
  tail call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !533, metadata !858) #1, !dbg !996
  tail call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !533, metadata !858) #1, !dbg !996
  tail call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !533, metadata !858) #1, !dbg !996
  tail call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !533, metadata !858) #1, !dbg !996
  %maxchar25.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 3, !dbg !997
  %17 = load i32, i32* %maxchar25.i, align 4, !dbg !997, !tbaa !998
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !537, metadata !858) #1, !dbg !1000
  %18 = or i64 %sub20.i.i, %16, !dbg !1001
  %19 = icmp eq i64 %18, 0, !dbg !1001
  br i1 %19, label %if.end.32.i, label %if.then.29.i, !dbg !1001

if.then.29.i:                                     ; preds = %calc_padding.exit.i
  %fill_char.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !1003
  %20 = load i32, i32* %fill_char.i, align 8, !dbg !1003, !tbaa !1004
  %cmp30.i = icmp ugt i32 %17, %20, !dbg !1003
  %..i = select i1 %cmp30.i, i32 %17, i32 %20, !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %..i, i64 0, metadata !537, metadata !858) #1, !dbg !1000
  br label %if.end.32.i, !dbg !1007

if.end.32.i:                                      ; preds = %if.then.29.i, %calc_padding.exit.i
  %maxchar.0.i = phi i32 [ %..i, %if.then.29.i ], [ %17, %calc_padding.exit.i ], !dbg !1008
  %state.i = getelementptr inbounds %struct._object, %struct._object* %obj, i64 2, !dbg !1009
  %21 = bitcast %struct._object* %state.i to i32*, !dbg !1009
  %bf.load.i = load i32, i32* %21, align 4, !dbg !1009
  %bf.clear.i = and i32 %bf.load.i, 64, !dbg !1009
  %tobool33.i = icmp eq i32 %bf.clear.i, 0, !dbg !1009
  br i1 %tobool33.i, label %cond.false.35.i, label %cond.end.51.i, !dbg !1009

cond.false.35.i:                                  ; preds = %if.end.32.i
  %bf.lshr38.i = lshr i32 %bf.load.i, 2, !dbg !1010
  %bf.clear39.i = and i32 %bf.lshr38.i, 7, !dbg !1010
  %cmp40.i = icmp eq i32 %bf.clear39.i, 1, !dbg !1010
  br i1 %cmp40.i, label %cond.end.51.i, label %cond.false.42.i, !dbg !1010

cond.false.42.i:                                  ; preds = %cond.false.35.i
  %cmp47.i = icmp eq i32 %bf.clear39.i, 2, !dbg !1012
  %cond48.i = select i1 %cmp47.i, i32 65535, i32 1114111, !dbg !1012
  br label %cond.end.51.i, !dbg !1012

cond.end.51.i:                                    ; preds = %cond.false.42.i, %cond.false.35.i, %if.end.32.i
  %cond52.i = phi i32 [ 127, %if.end.32.i ], [ %cond48.i, %cond.false.42.i ], [ 255, %cond.false.35.i ], !dbg !1009
  %cmp53.i = icmp ugt i32 %cond52.i, %maxchar.0.i, !dbg !1014
  br i1 %cmp53.i, label %if.then.54.i, label %if.end.61.i, !dbg !1015

if.then.54.i:                                     ; preds = %cond.end.51.i
  %call55.i = tail call i32 @_PyUnicode_FindMaxChar(%struct._object* %obj, i64 0, i64 %len.0.i) #1, !dbg !1016
  tail call void @llvm.dbg.value(metadata i32 %call55.i, i64 0, metadata !538, metadata !858) #1, !dbg !1017
  %cmp56.i = icmp ugt i32 %maxchar.0.i, %call55.i, !dbg !1018
  %cond60.i = select i1 %cmp56.i, i32 %maxchar.0.i, i32 %call55.i, !dbg !1018
  tail call void @llvm.dbg.value(metadata i32 %cond60.i, i64 0, metadata !537, metadata !858) #1, !dbg !1000
  %.pre158.i = load i32, i32* %maxchar25.i, align 4, !dbg !1019, !tbaa !998
  br label %if.end.61.i, !dbg !1021

if.end.61.i:                                      ; preds = %if.then.54.i, %cond.end.51.i
  %22 = phi i32 [ %.pre158.i, %if.then.54.i ], [ %17, %cond.end.51.i ], !dbg !1019
  %maxchar.1.i = phi i32 [ %cond60.i, %if.then.54.i ], [ %maxchar.0.i, %cond.end.51.i ], !dbg !1008
  %cmp63.i = icmp ugt i32 %maxchar.1.i, %22, !dbg !1019
  br i1 %cmp63.i, label %cond.false.67.i, label %land.lhs.true.64.i, !dbg !1019

land.lhs.true.64.i:                               ; preds = %if.end.61.i
  %size.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 4, !dbg !1022
  %23 = load i64, i64* %size.i, align 8, !dbg !1022, !tbaa !1024
  %pos.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !1022
  %24 = load i64, i64* %pos.i, align 8, !dbg !1022, !tbaa !1025
  %sub.i = sub i64 %23, %24, !dbg !1022
  %cmp65.i = icmp sle i64 %15, %sub.i, !dbg !1022
  %cmp68.i = icmp eq i64 %15, 0, !dbg !1026
  %or.cond95.i = or i1 %cmp68.i, %cmp65.i, !dbg !1022
  br i1 %or.cond95.i, label %if.end.78.i, label %cond.false.70.i, !dbg !1022

cond.false.67.i:                                  ; preds = %if.end.61.i
  %cmp68.old.i = icmp eq i64 %15, 0, !dbg !1026
  br i1 %cmp68.old.i, label %if.end.78.i, label %cond.false.70.i, !dbg !1026

cond.false.70.i:                                  ; preds = %cond.false.67.i, %land.lhs.true.64.i
  %call71.i = tail call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %writer, i64 %15, i32 %maxchar.1.i) #1, !dbg !1029
  %phitmp.i = icmp eq i32 %call71.i, -1, !dbg !1029
  br i1 %phitmp.i, label %cleanup, label %if.end.78.i, !dbg !1031

if.end.78.i:                                      ; preds = %cond.false.70.i, %cond.false.67.i, %land.lhs.true.64.i
  %fill_char79.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !1032
  %25 = load i32, i32* %fill_char79.i, align 8, !dbg !1032, !tbaa !1004
  %tobool.i.i = icmp eq i64 %16, 0, !dbg !1033
  %.pre161.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !1036
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.148.i, !dbg !1037

if.then.i.148.i:                                  ; preds = %if.end.78.i
  %26 = load i64, i64* %.pre161.i, align 8, !dbg !1038, !tbaa !1025
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !560, metadata !858) #1, !dbg !1040
  %buffer.i.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !1041
  %27 = load %struct._object*, %struct._object** %buffer.i.i, align 8, !dbg !1041, !tbaa !1042
  tail call void @_PyUnicode_FastFill(%struct._object* %27, i64 %26, i64 %16, i32 %25) #1, !dbg !1043
  br label %if.end.i.i, !dbg !1044

if.end.i.i:                                       ; preds = %if.then.i.148.i, %if.end.78.i
  %tobool2.i.i = icmp eq i64 %sub19.i.pre-phi.i, %16, !dbg !1045
  br i1 %tobool2.i.i, label %fill_padding.exit.i, label %if.then.3.i.i, !dbg !1047

if.then.3.i.i:                                    ; preds = %if.end.i.i
  %28 = load i64, i64* %.pre161.i, align 8, !dbg !1048, !tbaa !1025
  %add.i.i = add i64 %16, %len.0.i, !dbg !1050
  %add5.i.i = add i64 %add.i.i, %28, !dbg !1051
  tail call void @llvm.dbg.value(metadata i64 %add5.i.i, i64 0, metadata !560, metadata !858) #1, !dbg !1040
  %buffer6.i.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !1052
  %29 = load %struct._object*, %struct._object** %buffer6.i.i, align 8, !dbg !1052, !tbaa !1042
  tail call void @_PyUnicode_FastFill(%struct._object* %29, i64 %add5.i.i, i64 %sub20.i.i, i32 %25) #1, !dbg !1053
  br label %fill_padding.exit.i, !dbg !1054

fill_padding.exit.i:                              ; preds = %if.then.3.i.i, %if.end.i.i
  %30 = load i64, i64* %.pre161.i, align 8, !dbg !1055, !tbaa !1025
  %add9.i.i = add i64 %30, %16, !dbg !1055
  store i64 %add9.i.i, i64* %.pre161.i, align 8, !dbg !1055, !tbaa !1025
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !536, metadata !858) #1, !dbg !916
  %tobool84.i = icmp eq i64 %len.0.i, 0, !dbg !1056
  br i1 %tobool84.i, label %if.end.87.i, label %if.then.85.i, !dbg !1058

if.then.85.i:                                     ; preds = %fill_padding.exit.i
  %buffer.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !1059
  %31 = load %struct._object*, %struct._object** %buffer.i, align 8, !dbg !1059, !tbaa !1042
  tail call void @_PyUnicode_FastCopyCharacters(%struct._object* %31, i64 %add9.i.i, %struct._object* %obj, i64 0, i64 %len.0.i) #1, !dbg !1061
  %.pre159.i = load i64, i64* %.pre161.i, align 8, !dbg !1062, !tbaa !1025
  br label %if.end.87.i, !dbg !1063

if.end.87.i:                                      ; preds = %if.then.85.i, %fill_padding.exit.i
  %32 = phi i64 [ %add9.i.i, %fill_padding.exit.i ], [ %.pre159.i, %if.then.85.i ], !dbg !1062
  %add.i = add i64 %sub20.i.i, %len.0.i, !dbg !1064
  %add89.i = add i64 %add.i, %32, !dbg !1062
  store i64 %add89.i, i64* %.pre161.i, align 8, !dbg !1062, !tbaa !1025
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !536, metadata !858) #1, !dbg !916
  br label %cleanup, !dbg !1065

sw.default:                                       ; preds = %if.end.6
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1066
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !1066, !tbaa !871
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 1, !dbg !1067
  %34 = load i8*, i8** %tp_name, align 8, !dbg !1067, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !565, metadata !858) #1, !dbg !1069
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !566, metadata !858) #1, !dbg !1071
  %presentation_type.off.i = add i32 %5, -33, !dbg !1072
  %35 = icmp ult i32 %presentation_type.off.i, 95, !dbg !1072
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1074, !tbaa !929
  br i1 %35, label %if.then.i.23, label %if.else.i.24, !dbg !1072

if.then.i.23:                                     ; preds = %sw.default
  %sext.i = shl i32 %5, 24, !dbg !1075
  %conv2.i = ashr exact i32 %sext.i, 24, !dbg !1075
  %call.i.22 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %conv2.i, i8* %34) #1, !dbg !1076
  br label %cleanup, !dbg !1076

if.else.i.24:                                     ; preds = %sw.default
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %5, i8* %34) #1, !dbg !1077
  br label %cleanup, !dbg !1078

cleanup:                                          ; preds = %if.else.i.24, %if.then.i.23, %if.end.87.i, %cond.false.70.i, %if.then.13.i, %if.then.4.i, %if.then.1.i, %if.then.i, %if.else.i, %if.end.i, %if.else, %if.end, %if.then.2
  %retval.0 = phi i32 [ %call, %if.then.2 ], [ -1, %if.end ], [ -1, %if.else ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], [ %call.i.20, %if.then.13.i ], [ -1, %if.then.i ], [ -1, %if.then.1.i ], [ -1, %if.then.4.i ], [ -1, %cond.false.70.i ], [ 0, %if.end.87.i ], [ -1, %if.then.i.23 ], [ -1, %if.else.i.24 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #1, !dbg !1079
  ret i32 %retval.0, !dbg !1079
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* nocapture %format, i8 signext %default_type, i8 signext %default_align) #0 {
entry:
  %pos = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %format_spec, i64 0, metadata !489, metadata !858), !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !490, metadata !858), !dbg !1081
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !491, metadata !858), !dbg !1082
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !492, metadata !858), !dbg !1083
  tail call void @llvm.dbg.value(metadata i8 %default_type, i64 0, metadata !493, metadata !858), !dbg !1084
  tail call void @llvm.dbg.value(metadata i8 %default_align, i64 0, metadata !494, metadata !858), !dbg !1085
  %0 = bitcast i64* %pos to i8*, !dbg !1086
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1086
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %start, i64* %pos, align 8, !dbg !1087, !tbaa !1088
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !497, metadata !858), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !498, metadata !858), !dbg !1090
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !1091
  store i32 32, i32* %fill_char, align 4, !dbg !1092, !tbaa !1004
  %conv = sext i8 %default_align to i32, !dbg !1093
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 1, !dbg !1094
  store i32 %conv, i32* %align, align 4, !dbg !1095, !tbaa !944
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !1096
  store i32 0, i32* %alternate, align 4, !dbg !1097, !tbaa !934
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !1098
  store i32 0, i32* %sign, align 4, !dbg !1099, !tbaa !924
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !1100
  store i64 -1, i64* %width, align 8, !dbg !1101, !tbaa !954
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !1102
  store i32 0, i32* %thousands_separators, align 4, !dbg !1103, !tbaa !1104
  %precision = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 6, !dbg !1105
  store i64 -1, i64* %precision, align 8, !dbg !1106, !tbaa !960
  %conv1 = sext i8 %default_type to i32, !dbg !1107
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !1108
  store i32 %conv1, i32* %type, align 4, !dbg !1109, !tbaa !908
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %sub = sub i64 %end, %start, !dbg !1110
  %cmp = icmp sgt i64 %sub, 1, !dbg !1112
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1113

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1114
  %1 = bitcast %struct._object* %state to i32*, !dbg !1114
  %bf.load = load i32, i32* %1, align 4, !dbg !1116
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1114
  %bf.clear = and i32 %bf.lshr, 7, !dbg !1114
  %cmp3 = icmp eq i32 %bf.clear, 1, !dbg !1114
  br i1 %cmp3, label %cond.true, label %cond.false.21, !dbg !1114

cond.true:                                        ; preds = %land.lhs.true
  %add = add i64 %start, 1, !dbg !1118
  %bf.clear8 = and i32 %bf.load, 32, !dbg !1118
  %tobool = icmp eq i32 %bf.clear8, 0, !dbg !1118
  br i1 %tobool, label %cond.false.17, label %cond.true.9, !dbg !1118

cond.true.9:                                      ; preds = %cond.true
  %bf.clear13 = and i32 %bf.load, 64, !dbg !1120
  %tobool14 = icmp ne i32 %bf.clear13, 0, !dbg !1120
  %add.ptr = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1122
  %2 = bitcast %struct._object* %add.ptr to i8*, !dbg !1122
  %add.ptr16 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1124
  %3 = bitcast %struct._typeobject** %add.ptr16 to i8*, !dbg !1124
  %cond = select i1 %tobool14, i8* %2, i8* %3, !dbg !1120
  br label %cond.end.18, !dbg !1120

cond.false.17:                                    ; preds = %cond.true
  %data = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1126
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !1126
  %4 = load i8*, i8** %any, align 8, !dbg !1126, !tbaa !929
  br label %cond.end.18, !dbg !1126

cond.end.18:                                      ; preds = %cond.true.9, %cond.false.17
  %cond19 = phi i8* [ %4, %cond.false.17 ], [ %cond, %cond.true.9 ], !dbg !1128
  %arrayidx = getelementptr i8, i8* %cond19, i64 %add, !dbg !1129
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1129, !tbaa !1132
  %conv20 = zext i8 %5 to i32, !dbg !1129
  br label %cond.end.81, !dbg !1129

cond.false.21:                                    ; preds = %land.lhs.true
  %cmp26 = icmp eq i32 %bf.clear, 2, !dbg !1133
  %add29 = add i64 %start, 1, !dbg !1135
  %bf.clear33 = and i32 %bf.load, 32, !dbg !1135
  %tobool34 = icmp ne i32 %bf.clear33, 0, !dbg !1135
  br i1 %cmp26, label %cond.true.28, label %cond.false.54, !dbg !1133

cond.true.28:                                     ; preds = %cond.false.21
  br i1 %tobool34, label %cond.true.35, label %cond.false.47, !dbg !1135

cond.true.35:                                     ; preds = %cond.true.28
  %bf.clear39 = and i32 %bf.load, 64, !dbg !1137
  %tobool40 = icmp ne i32 %bf.clear39, 0, !dbg !1137
  %add.ptr42 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1139
  %6 = bitcast %struct._object* %add.ptr42 to i8*, !dbg !1139
  %add.ptr44 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1141
  %7 = bitcast %struct._typeobject** %add.ptr44 to i8*, !dbg !1141
  %cond46 = select i1 %tobool40, i8* %6, i8* %7, !dbg !1137
  br label %cond.end.50, !dbg !1137

cond.false.47:                                    ; preds = %cond.true.28
  %data48 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1143
  %any49 = bitcast %struct._typeobject** %data48 to i8**, !dbg !1143
  %8 = load i8*, i8** %any49, align 8, !dbg !1143, !tbaa !929
  br label %cond.end.50, !dbg !1143

cond.end.50:                                      ; preds = %cond.true.35, %cond.false.47
  %cond51 = phi i8* [ %8, %cond.false.47 ], [ %cond46, %cond.true.35 ], !dbg !1128
  %9 = bitcast i8* %cond51 to i16*, !dbg !1145
  %arrayidx52 = getelementptr i16, i16* %9, i64 %add29, !dbg !1145
  %10 = load i16, i16* %arrayidx52, align 2, !dbg !1145, !tbaa !1148
  %conv53 = zext i16 %10 to i32, !dbg !1145
  br label %cond.end.81, !dbg !1145

cond.false.54:                                    ; preds = %cond.false.21
  br i1 %tobool34, label %cond.true.61, label %cond.false.73, !dbg !1150

cond.true.61:                                     ; preds = %cond.false.54
  %bf.clear65 = and i32 %bf.load, 64, !dbg !1152
  %tobool66 = icmp ne i32 %bf.clear65, 0, !dbg !1152
  %add.ptr68 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1154
  %11 = bitcast %struct._object* %add.ptr68 to i8*, !dbg !1154
  %add.ptr70 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1156
  %12 = bitcast %struct._typeobject** %add.ptr70 to i8*, !dbg !1156
  %cond72 = select i1 %tobool66, i8* %11, i8* %12, !dbg !1152
  br label %cond.end.76, !dbg !1152

cond.false.73:                                    ; preds = %cond.false.54
  %data74 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1158
  %any75 = bitcast %struct._typeobject** %data74 to i8**, !dbg !1158
  %13 = load i8*, i8** %any75, align 8, !dbg !1158, !tbaa !929
  br label %cond.end.76, !dbg !1158

cond.end.76:                                      ; preds = %cond.true.61, %cond.false.73
  %cond77 = phi i8* [ %13, %cond.false.73 ], [ %cond72, %cond.true.61 ], !dbg !1128
  %14 = bitcast i8* %cond77 to i32*, !dbg !1160
  %arrayidx78 = getelementptr i32, i32* %14, i64 %add29, !dbg !1160
  %15 = load i32, i32* %arrayidx78, align 4, !dbg !1160, !tbaa !1163
  br label %cond.end.81, !dbg !1160

cond.end.81:                                      ; preds = %cond.end.50, %cond.end.76, %cond.end.18
  %cond82 = phi i32 [ %conv20, %cond.end.18 ], [ %conv53, %cond.end.50 ], [ %15, %cond.end.76 ], !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %cond82, i64 0, metadata !503, metadata !858), !dbg !1164
  switch i32 %cond82, label %land.lhs.true.275 [
    i32 60, label %if.then
    i32 62, label %if.then
    i32 61, label %if.then
    i32 94, label %if.then
  ], !dbg !1168

if.then:                                          ; preds = %cond.end.81, %cond.end.81, %cond.end.81, %cond.end.81
  br i1 %cmp3, label %cond.true.90, label %cond.false.116, !dbg !1116

cond.true.90:                                     ; preds = %if.then
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %add91 = add i64 %start, 1, !dbg !1169
  %bf.clear95 = and i32 %bf.load, 32, !dbg !1169
  %tobool96 = icmp eq i32 %bf.clear95, 0, !dbg !1169
  br i1 %tobool96, label %cond.false.109, label %cond.true.97, !dbg !1169

cond.true.97:                                     ; preds = %cond.true.90
  %bf.clear101 = and i32 %bf.load, 64, !dbg !1171
  %tobool102 = icmp ne i32 %bf.clear101, 0, !dbg !1171
  %add.ptr104 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1173
  %16 = bitcast %struct._object* %add.ptr104 to i8*, !dbg !1173
  %add.ptr106 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1175
  %17 = bitcast %struct._typeobject** %add.ptr106 to i8*, !dbg !1175
  %cond108 = select i1 %tobool102, i8* %16, i8* %17, !dbg !1171
  br label %cond.end.112, !dbg !1171

cond.false.109:                                   ; preds = %cond.true.90
  %data110 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1177
  %any111 = bitcast %struct._typeobject** %data110 to i8**, !dbg !1177
  %18 = load i8*, i8** %any111, align 8, !dbg !1177, !tbaa !929
  br label %cond.end.112, !dbg !1177

cond.end.112:                                     ; preds = %cond.true.97, %cond.false.109
  %cond113 = phi i8* [ %18, %cond.false.109 ], [ %cond108, %cond.true.97 ], !dbg !1116
  %arrayidx114 = getelementptr i8, i8* %cond113, i64 %add91, !dbg !1179
  %19 = load i8, i8* %arrayidx114, align 1, !dbg !1179, !tbaa !1132
  %conv115 = zext i8 %19 to i32, !dbg !1179
  br label %cond.end.176, !dbg !1179

cond.false.116:                                   ; preds = %if.then
  %cmp121 = icmp eq i32 %bf.clear, 2, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %add124 = add i64 %start, 1, !dbg !1184
  %bf.clear128 = and i32 %bf.load, 32, !dbg !1184
  %tobool129 = icmp ne i32 %bf.clear128, 0, !dbg !1184
  br i1 %cmp121, label %cond.true.123, label %cond.false.149, !dbg !1182

cond.true.123:                                    ; preds = %cond.false.116
  br i1 %tobool129, label %cond.true.130, label %cond.false.142, !dbg !1184

cond.true.130:                                    ; preds = %cond.true.123
  %bf.clear134 = and i32 %bf.load, 64, !dbg !1186
  %tobool135 = icmp ne i32 %bf.clear134, 0, !dbg !1186
  %add.ptr137 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1188
  %20 = bitcast %struct._object* %add.ptr137 to i8*, !dbg !1188
  %add.ptr139 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1190
  %21 = bitcast %struct._typeobject** %add.ptr139 to i8*, !dbg !1190
  %cond141 = select i1 %tobool135, i8* %20, i8* %21, !dbg !1186
  br label %cond.end.145, !dbg !1186

cond.false.142:                                   ; preds = %cond.true.123
  %data143 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1192
  %any144 = bitcast %struct._typeobject** %data143 to i8**, !dbg !1192
  %22 = load i8*, i8** %any144, align 8, !dbg !1192, !tbaa !929
  br label %cond.end.145, !dbg !1192

cond.end.145:                                     ; preds = %cond.true.130, %cond.false.142
  %cond146 = phi i8* [ %22, %cond.false.142 ], [ %cond141, %cond.true.130 ], !dbg !1116
  %23 = bitcast i8* %cond146 to i16*, !dbg !1194
  %arrayidx147 = getelementptr i16, i16* %23, i64 %add124, !dbg !1194
  %24 = load i16, i16* %arrayidx147, align 2, !dbg !1194, !tbaa !1148
  %conv148 = zext i16 %24 to i32, !dbg !1194
  br label %cond.end.176, !dbg !1194

cond.false.149:                                   ; preds = %cond.false.116
  br i1 %tobool129, label %cond.true.156, label %cond.false.168, !dbg !1197

cond.true.156:                                    ; preds = %cond.false.149
  %bf.clear160 = and i32 %bf.load, 64, !dbg !1199
  %tobool161 = icmp ne i32 %bf.clear160, 0, !dbg !1199
  %add.ptr163 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1201
  %25 = bitcast %struct._object* %add.ptr163 to i8*, !dbg !1201
  %add.ptr165 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1203
  %26 = bitcast %struct._typeobject** %add.ptr165 to i8*, !dbg !1203
  %cond167 = select i1 %tobool161, i8* %25, i8* %26, !dbg !1199
  br label %cond.end.171, !dbg !1199

cond.false.168:                                   ; preds = %cond.false.149
  %data169 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1205
  %any170 = bitcast %struct._typeobject** %data169 to i8**, !dbg !1205
  %27 = load i8*, i8** %any170, align 8, !dbg !1205, !tbaa !929
  br label %cond.end.171, !dbg !1205

cond.end.171:                                     ; preds = %cond.true.156, %cond.false.168
  %cond172 = phi i8* [ %27, %cond.false.168 ], [ %cond167, %cond.true.156 ], !dbg !1116
  %28 = bitcast i8* %cond172 to i32*, !dbg !1207
  %arrayidx173 = getelementptr i32, i32* %28, i64 %add124, !dbg !1207
  %29 = load i32, i32* %arrayidx173, align 4, !dbg !1207, !tbaa !1163
  br label %cond.end.176, !dbg !1207

cond.end.176:                                     ; preds = %cond.end.145, %cond.end.171, %cond.end.112
  %cond177 = phi i32 [ %conv115, %cond.end.112 ], [ %conv148, %cond.end.145 ], [ %29, %cond.end.171 ], !dbg !1116
  store i32 %cond177, i32* %align, align 4, !dbg !1210, !tbaa !944
  %bf.load180 = load i32, i32* %1, align 4, !dbg !1211
  %bf.lshr181 = lshr i32 %bf.load180, 2, !dbg !1211
  %bf.clear182 = and i32 %bf.lshr181, 7, !dbg !1211
  %cmp183 = icmp eq i32 %bf.clear182, 1, !dbg !1211
  br i1 %cmp183, label %cond.true.185, label %cond.false.210, !dbg !1211

cond.true.185:                                    ; preds = %cond.end.176
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear189 = and i32 %bf.load180, 32, !dbg !1212
  %tobool190 = icmp eq i32 %bf.clear189, 0, !dbg !1212
  br i1 %tobool190, label %cond.false.203, label %cond.true.191, !dbg !1212

cond.true.191:                                    ; preds = %cond.true.185
  %bf.clear195 = and i32 %bf.load180, 64, !dbg !1213
  %tobool196 = icmp ne i32 %bf.clear195, 0, !dbg !1213
  %add.ptr198 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1214
  %30 = bitcast %struct._object* %add.ptr198 to i8*, !dbg !1214
  %add.ptr200 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1215
  %31 = bitcast %struct._typeobject** %add.ptr200 to i8*, !dbg !1215
  %cond202 = select i1 %tobool196, i8* %30, i8* %31, !dbg !1213
  br label %cond.end.206, !dbg !1213

cond.false.203:                                   ; preds = %cond.true.185
  %data204 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1216
  %any205 = bitcast %struct._typeobject** %data204 to i8**, !dbg !1216
  %32 = load i8*, i8** %any205, align 8, !dbg !1216, !tbaa !929
  br label %cond.end.206, !dbg !1216

cond.end.206:                                     ; preds = %cond.true.191, %cond.false.203
  %cond207 = phi i8* [ %32, %cond.false.203 ], [ %cond202, %cond.true.191 ], !dbg !1211
  %arrayidx208 = getelementptr i8, i8* %cond207, i64 %start, !dbg !1217
  %33 = load i8, i8* %arrayidx208, align 1, !dbg !1217, !tbaa !1132
  %conv209 = zext i8 %33 to i32, !dbg !1217
  br label %cond.end.268, !dbg !1217

cond.false.210:                                   ; preds = %cond.end.176
  %cmp215 = icmp eq i32 %bf.clear182, 2, !dbg !1218
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear221 = and i32 %bf.load180, 32, !dbg !1219
  %tobool222 = icmp ne i32 %bf.clear221, 0, !dbg !1219
  br i1 %cmp215, label %cond.true.217, label %cond.false.242, !dbg !1218

cond.true.217:                                    ; preds = %cond.false.210
  br i1 %tobool222, label %cond.true.223, label %cond.false.235, !dbg !1219

cond.true.223:                                    ; preds = %cond.true.217
  %bf.clear227 = and i32 %bf.load180, 64, !dbg !1220
  %tobool228 = icmp ne i32 %bf.clear227, 0, !dbg !1220
  %add.ptr230 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1221
  %34 = bitcast %struct._object* %add.ptr230 to i8*, !dbg !1221
  %add.ptr232 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1222
  %35 = bitcast %struct._typeobject** %add.ptr232 to i8*, !dbg !1222
  %cond234 = select i1 %tobool228, i8* %34, i8* %35, !dbg !1220
  br label %cond.end.238, !dbg !1220

cond.false.235:                                   ; preds = %cond.true.217
  %data236 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1223
  %any237 = bitcast %struct._typeobject** %data236 to i8**, !dbg !1223
  %36 = load i8*, i8** %any237, align 8, !dbg !1223, !tbaa !929
  br label %cond.end.238, !dbg !1223

cond.end.238:                                     ; preds = %cond.true.223, %cond.false.235
  %cond239 = phi i8* [ %36, %cond.false.235 ], [ %cond234, %cond.true.223 ], !dbg !1211
  %37 = bitcast i8* %cond239 to i16*, !dbg !1224
  %arrayidx240 = getelementptr i16, i16* %37, i64 %start, !dbg !1224
  %38 = load i16, i16* %arrayidx240, align 2, !dbg !1224, !tbaa !1148
  %conv241 = zext i16 %38 to i32, !dbg !1224
  br label %cond.end.268, !dbg !1224

cond.false.242:                                   ; preds = %cond.false.210
  br i1 %tobool222, label %cond.true.248, label %cond.false.260, !dbg !1225

cond.true.248:                                    ; preds = %cond.false.242
  %bf.clear252 = and i32 %bf.load180, 64, !dbg !1226
  %tobool253 = icmp ne i32 %bf.clear252, 0, !dbg !1226
  %add.ptr255 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1227
  %39 = bitcast %struct._object* %add.ptr255 to i8*, !dbg !1227
  %add.ptr257 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1228
  %40 = bitcast %struct._typeobject** %add.ptr257 to i8*, !dbg !1228
  %cond259 = select i1 %tobool253, i8* %39, i8* %40, !dbg !1226
  br label %cond.end.263, !dbg !1226

cond.false.260:                                   ; preds = %cond.false.242
  %data261 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1229
  %any262 = bitcast %struct._typeobject** %data261 to i8**, !dbg !1229
  %41 = load i8*, i8** %any262, align 8, !dbg !1229, !tbaa !929
  br label %cond.end.263, !dbg !1229

cond.end.263:                                     ; preds = %cond.true.248, %cond.false.260
  %cond264 = phi i8* [ %41, %cond.false.260 ], [ %cond259, %cond.true.248 ], !dbg !1211
  %42 = bitcast i8* %cond264 to i32*, !dbg !1230
  %arrayidx265 = getelementptr i32, i32* %42, i64 %start, !dbg !1230
  %43 = load i32, i32* %arrayidx265, align 4, !dbg !1230, !tbaa !1163
  br label %cond.end.268, !dbg !1230

cond.end.268:                                     ; preds = %cond.end.238, %cond.end.263, %cond.end.206
  %cond269 = phi i32 [ %conv209, %cond.end.206 ], [ %conv241, %cond.end.238 ], [ %43, %cond.end.263 ], !dbg !1211
  store i32 %cond269, i32* %fill_char, align 4, !dbg !1231, !tbaa !1004
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !498, metadata !858), !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !497, metadata !858), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %add271 = add i64 %start, 2, !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %add271, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %add271, i64* %pos, align 8, !dbg !1232, !tbaa !1088
  br label %if.end.462, !dbg !1233

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %cmp273 = icmp sgt i64 %sub, 0, !dbg !1234
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.462, !dbg !1236

land.lhs.true.275:                                ; preds = %cond.end.81, %if.else
  %state276 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1237
  %44 = bitcast %struct._object* %state276 to i32*, !dbg !1237
  %bf.load277 = load i32, i32* %44, align 4, !dbg !1239
  %bf.lshr278 = lshr i32 %bf.load277, 2, !dbg !1237
  %bf.clear279 = and i32 %bf.lshr278, 7, !dbg !1237
  %cmp280 = icmp eq i32 %bf.clear279, 1, !dbg !1237
  br i1 %cmp280, label %cond.true.282, label %cond.false.307, !dbg !1237

cond.true.282:                                    ; preds = %land.lhs.true.275
  %bf.clear286 = and i32 %bf.load277, 32, !dbg !1241
  %tobool287 = icmp eq i32 %bf.clear286, 0, !dbg !1241
  br i1 %tobool287, label %cond.false.300, label %cond.true.288, !dbg !1241

cond.true.288:                                    ; preds = %cond.true.282
  %bf.clear292 = and i32 %bf.load277, 64, !dbg !1243
  %tobool293 = icmp ne i32 %bf.clear292, 0, !dbg !1243
  %add.ptr295 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1245
  %45 = bitcast %struct._object* %add.ptr295 to i8*, !dbg !1245
  %add.ptr297 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1247
  %46 = bitcast %struct._typeobject** %add.ptr297 to i8*, !dbg !1247
  %cond299 = select i1 %tobool293, i8* %45, i8* %46, !dbg !1243
  br label %cond.end.303, !dbg !1243

cond.false.300:                                   ; preds = %cond.true.282
  %data301 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1249
  %any302 = bitcast %struct._typeobject** %data301 to i8**, !dbg !1249
  %47 = load i8*, i8** %any302, align 8, !dbg !1249, !tbaa !929
  br label %cond.end.303, !dbg !1249

cond.end.303:                                     ; preds = %cond.true.288, %cond.false.300
  %cond304 = phi i8* [ %47, %cond.false.300 ], [ %cond299, %cond.true.288 ], !dbg !1251
  %arrayidx305 = getelementptr i8, i8* %cond304, i64 %start, !dbg !1252
  %48 = load i8, i8* %arrayidx305, align 1, !dbg !1252, !tbaa !1132
  %conv306 = zext i8 %48 to i32, !dbg !1252
  br label %cond.end.365, !dbg !1252

cond.false.307:                                   ; preds = %land.lhs.true.275
  %cmp312 = icmp eq i32 %bf.clear279, 2, !dbg !1255
  %bf.clear318 = and i32 %bf.load277, 32, !dbg !1257
  %tobool319 = icmp ne i32 %bf.clear318, 0, !dbg !1257
  br i1 %cmp312, label %cond.true.314, label %cond.false.339, !dbg !1255

cond.true.314:                                    ; preds = %cond.false.307
  br i1 %tobool319, label %cond.true.320, label %cond.false.332, !dbg !1257

cond.true.320:                                    ; preds = %cond.true.314
  %bf.clear324 = and i32 %bf.load277, 64, !dbg !1259
  %tobool325 = icmp ne i32 %bf.clear324, 0, !dbg !1259
  %add.ptr327 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1261
  %49 = bitcast %struct._object* %add.ptr327 to i8*, !dbg !1261
  %add.ptr329 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1263
  %50 = bitcast %struct._typeobject** %add.ptr329 to i8*, !dbg !1263
  %cond331 = select i1 %tobool325, i8* %49, i8* %50, !dbg !1259
  br label %cond.end.335, !dbg !1259

cond.false.332:                                   ; preds = %cond.true.314
  %data333 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1265
  %any334 = bitcast %struct._typeobject** %data333 to i8**, !dbg !1265
  %51 = load i8*, i8** %any334, align 8, !dbg !1265, !tbaa !929
  br label %cond.end.335, !dbg !1265

cond.end.335:                                     ; preds = %cond.true.320, %cond.false.332
  %cond336 = phi i8* [ %51, %cond.false.332 ], [ %cond331, %cond.true.320 ], !dbg !1251
  %52 = bitcast i8* %cond336 to i16*, !dbg !1267
  %arrayidx337 = getelementptr i16, i16* %52, i64 %start, !dbg !1267
  %53 = load i16, i16* %arrayidx337, align 2, !dbg !1267, !tbaa !1148
  %conv338 = zext i16 %53 to i32, !dbg !1267
  br label %cond.end.365, !dbg !1267

cond.false.339:                                   ; preds = %cond.false.307
  br i1 %tobool319, label %cond.true.345, label %cond.false.357, !dbg !1270

cond.true.345:                                    ; preds = %cond.false.339
  %bf.clear349 = and i32 %bf.load277, 64, !dbg !1272
  %tobool350 = icmp ne i32 %bf.clear349, 0, !dbg !1272
  %add.ptr352 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1274
  %54 = bitcast %struct._object* %add.ptr352 to i8*, !dbg !1274
  %add.ptr354 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1276
  %55 = bitcast %struct._typeobject** %add.ptr354 to i8*, !dbg !1276
  %cond356 = select i1 %tobool350, i8* %54, i8* %55, !dbg !1272
  br label %cond.end.360, !dbg !1272

cond.false.357:                                   ; preds = %cond.false.339
  %data358 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1278
  %any359 = bitcast %struct._typeobject** %data358 to i8**, !dbg !1278
  %56 = load i8*, i8** %any359, align 8, !dbg !1278, !tbaa !929
  br label %cond.end.360, !dbg !1278

cond.end.360:                                     ; preds = %cond.true.345, %cond.false.357
  %cond361 = phi i8* [ %56, %cond.false.357 ], [ %cond356, %cond.true.345 ], !dbg !1251
  %57 = bitcast i8* %cond361 to i32*, !dbg !1280
  %arrayidx362 = getelementptr i32, i32* %57, i64 %start, !dbg !1280
  %58 = load i32, i32* %arrayidx362, align 4, !dbg !1280, !tbaa !1163
  br label %cond.end.365, !dbg !1280

cond.end.365:                                     ; preds = %cond.end.335, %cond.end.360, %cond.end.303
  %cond366 = phi i32 [ %conv306, %cond.end.303 ], [ %conv338, %cond.end.335 ], [ %58, %cond.end.360 ], !dbg !1251
  tail call void @llvm.dbg.value(metadata i32 %cond366, i64 0, metadata !503, metadata !858), !dbg !1283
  switch i32 %cond366, label %if.end.462 [
    i32 60, label %if.then.369
    i32 62, label %if.then.369
    i32 61, label %if.then.369
    i32 94, label %if.then.369
  ], !dbg !1287

if.then.369:                                      ; preds = %cond.end.365, %cond.end.365, %cond.end.365, %cond.end.365
  br i1 %cmp280, label %cond.true.376, label %cond.false.401, !dbg !1239

cond.true.376:                                    ; preds = %if.then.369
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear380 = and i32 %bf.load277, 32, !dbg !1288
  %tobool381 = icmp eq i32 %bf.clear380, 0, !dbg !1288
  br i1 %tobool381, label %cond.false.394, label %cond.true.382, !dbg !1288

cond.true.382:                                    ; preds = %cond.true.376
  %bf.clear386 = and i32 %bf.load277, 64, !dbg !1290
  %tobool387 = icmp ne i32 %bf.clear386, 0, !dbg !1290
  %add.ptr389 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1292
  %59 = bitcast %struct._object* %add.ptr389 to i8*, !dbg !1292
  %add.ptr391 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1294
  %60 = bitcast %struct._typeobject** %add.ptr391 to i8*, !dbg !1294
  %cond393 = select i1 %tobool387, i8* %59, i8* %60, !dbg !1290
  br label %cond.end.397, !dbg !1290

cond.false.394:                                   ; preds = %cond.true.376
  %data395 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1296
  %any396 = bitcast %struct._typeobject** %data395 to i8**, !dbg !1296
  %61 = load i8*, i8** %any396, align 8, !dbg !1296, !tbaa !929
  br label %cond.end.397, !dbg !1296

cond.end.397:                                     ; preds = %cond.true.382, %cond.false.394
  %cond398 = phi i8* [ %61, %cond.false.394 ], [ %cond393, %cond.true.382 ], !dbg !1239
  %arrayidx399 = getelementptr i8, i8* %cond398, i64 %start, !dbg !1298
  %62 = load i8, i8* %arrayidx399, align 1, !dbg !1298, !tbaa !1132
  %conv400 = zext i8 %62 to i32, !dbg !1298
  br label %cond.end.459, !dbg !1298

cond.false.401:                                   ; preds = %if.then.369
  %cmp406 = icmp eq i32 %bf.clear279, 2, !dbg !1301
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear412 = and i32 %bf.load277, 32, !dbg !1303
  %tobool413 = icmp ne i32 %bf.clear412, 0, !dbg !1303
  br i1 %cmp406, label %cond.true.408, label %cond.false.433, !dbg !1301

cond.true.408:                                    ; preds = %cond.false.401
  br i1 %tobool413, label %cond.true.414, label %cond.false.426, !dbg !1303

cond.true.414:                                    ; preds = %cond.true.408
  %bf.clear418 = and i32 %bf.load277, 64, !dbg !1305
  %tobool419 = icmp ne i32 %bf.clear418, 0, !dbg !1305
  %add.ptr421 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1307
  %63 = bitcast %struct._object* %add.ptr421 to i8*, !dbg !1307
  %add.ptr423 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1309
  %64 = bitcast %struct._typeobject** %add.ptr423 to i8*, !dbg !1309
  %cond425 = select i1 %tobool419, i8* %63, i8* %64, !dbg !1305
  br label %cond.end.429, !dbg !1305

cond.false.426:                                   ; preds = %cond.true.408
  %data427 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1311
  %any428 = bitcast %struct._typeobject** %data427 to i8**, !dbg !1311
  %65 = load i8*, i8** %any428, align 8, !dbg !1311, !tbaa !929
  br label %cond.end.429, !dbg !1311

cond.end.429:                                     ; preds = %cond.true.414, %cond.false.426
  %cond430 = phi i8* [ %65, %cond.false.426 ], [ %cond425, %cond.true.414 ], !dbg !1239
  %66 = bitcast i8* %cond430 to i16*, !dbg !1313
  %arrayidx431 = getelementptr i16, i16* %66, i64 %start, !dbg !1313
  %67 = load i16, i16* %arrayidx431, align 2, !dbg !1313, !tbaa !1148
  %conv432 = zext i16 %67 to i32, !dbg !1313
  br label %cond.end.459, !dbg !1313

cond.false.433:                                   ; preds = %cond.false.401
  br i1 %tobool413, label %cond.true.439, label %cond.false.451, !dbg !1316

cond.true.439:                                    ; preds = %cond.false.433
  %bf.clear443 = and i32 %bf.load277, 64, !dbg !1318
  %tobool444 = icmp ne i32 %bf.clear443, 0, !dbg !1318
  %add.ptr446 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1320
  %68 = bitcast %struct._object* %add.ptr446 to i8*, !dbg !1320
  %add.ptr448 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1322
  %69 = bitcast %struct._typeobject** %add.ptr448 to i8*, !dbg !1322
  %cond450 = select i1 %tobool444, i8* %68, i8* %69, !dbg !1318
  br label %cond.end.454, !dbg !1318

cond.false.451:                                   ; preds = %cond.false.433
  %data452 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1324
  %any453 = bitcast %struct._typeobject** %data452 to i8**, !dbg !1324
  %70 = load i8*, i8** %any453, align 8, !dbg !1324, !tbaa !929
  br label %cond.end.454, !dbg !1324

cond.end.454:                                     ; preds = %cond.true.439, %cond.false.451
  %cond455 = phi i8* [ %70, %cond.false.451 ], [ %cond450, %cond.true.439 ], !dbg !1239
  %71 = bitcast i8* %cond455 to i32*, !dbg !1326
  %arrayidx456 = getelementptr i32, i32* %71, i64 %start, !dbg !1326
  %72 = load i32, i32* %arrayidx456, align 4, !dbg !1326, !tbaa !1163
  br label %cond.end.459, !dbg !1326

cond.end.459:                                     ; preds = %cond.end.429, %cond.end.454, %cond.end.397
  %cond460 = phi i32 [ %conv400, %cond.end.397 ], [ %conv432, %cond.end.429 ], [ %72, %cond.end.454 ], !dbg !1239
  store i32 %cond460, i32* %align, align 4, !dbg !1329, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !497, metadata !858), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc = add i64 %start, 1, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc, i64* %pos, align 8, !dbg !1330, !tbaa !1088
  br label %if.end.462, !dbg !1331

if.end.462:                                       ; preds = %cond.end.365, %if.else, %cond.end.459, %cond.end.268
  %73 = phi i64 [ %add271, %cond.end.268 ], [ %inc, %cond.end.459 ], [ %start, %if.else ], [ %start, %cond.end.365 ], !dbg !1332
  %align_specified.0 = phi i32 [ 1, %cond.end.268 ], [ 1, %cond.end.459 ], [ 0, %if.else ], [ 0, %cond.end.365 ]
  %fill_char_specified.0 = phi i32 [ 1, %cond.end.268 ], [ 0, %cond.end.459 ], [ 0, %if.else ], [ 0, %cond.end.365 ]
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %sub463 = sub i64 %end, %73, !dbg !1335
  %cmp464 = icmp sgt i64 %sub463, 0, !dbg !1336
  br i1 %cmp464, label %land.lhs.true.466, label %if.end.654, !dbg !1337

land.lhs.true.466:                                ; preds = %if.end.462
  %state467 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1338
  %74 = bitcast %struct._object* %state467 to i32*, !dbg !1338
  %bf.load468 = load i32, i32* %74, align 4, !dbg !1340
  %bf.lshr469 = lshr i32 %bf.load468, 2, !dbg !1338
  %bf.clear470 = and i32 %bf.lshr469, 7, !dbg !1338
  %cmp471 = icmp eq i32 %bf.clear470, 1, !dbg !1338
  br i1 %cmp471, label %cond.true.473, label %cond.false.498, !dbg !1338

cond.true.473:                                    ; preds = %land.lhs.true.466
  %bf.clear477 = and i32 %bf.load468, 32, !dbg !1341
  %tobool478 = icmp eq i32 %bf.clear477, 0, !dbg !1341
  br i1 %tobool478, label %cond.false.491, label %cond.true.479, !dbg !1341

cond.true.479:                                    ; preds = %cond.true.473
  %bf.clear483 = and i32 %bf.load468, 64, !dbg !1343
  %tobool484 = icmp ne i32 %bf.clear483, 0, !dbg !1343
  %add.ptr486 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1345
  %75 = bitcast %struct._object* %add.ptr486 to i8*, !dbg !1345
  %add.ptr488 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1347
  %76 = bitcast %struct._typeobject** %add.ptr488 to i8*, !dbg !1347
  %cond490 = select i1 %tobool484, i8* %75, i8* %76, !dbg !1343
  br label %cond.end.494, !dbg !1343

cond.false.491:                                   ; preds = %cond.true.473
  %data492 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1349
  %any493 = bitcast %struct._typeobject** %data492 to i8**, !dbg !1349
  %77 = load i8*, i8** %any493, align 8, !dbg !1349, !tbaa !929
  br label %cond.end.494, !dbg !1349

cond.end.494:                                     ; preds = %cond.true.479, %cond.false.491
  %cond495 = phi i8* [ %77, %cond.false.491 ], [ %cond490, %cond.true.479 ], !dbg !1351
  %arrayidx496 = getelementptr i8, i8* %cond495, i64 %73, !dbg !1352
  %78 = load i8, i8* %arrayidx496, align 1, !dbg !1352, !tbaa !1132
  %conv497 = zext i8 %78 to i32, !dbg !1352
  br label %cond.end.556, !dbg !1352

cond.false.498:                                   ; preds = %land.lhs.true.466
  %cmp503 = icmp eq i32 %bf.clear470, 2, !dbg !1355
  %bf.clear509 = and i32 %bf.load468, 32, !dbg !1357
  %tobool510 = icmp ne i32 %bf.clear509, 0, !dbg !1357
  br i1 %cmp503, label %cond.true.505, label %cond.false.530, !dbg !1355

cond.true.505:                                    ; preds = %cond.false.498
  br i1 %tobool510, label %cond.true.511, label %cond.false.523, !dbg !1357

cond.true.511:                                    ; preds = %cond.true.505
  %bf.clear515 = and i32 %bf.load468, 64, !dbg !1359
  %tobool516 = icmp ne i32 %bf.clear515, 0, !dbg !1359
  %add.ptr518 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1361
  %79 = bitcast %struct._object* %add.ptr518 to i8*, !dbg !1361
  %add.ptr520 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1363
  %80 = bitcast %struct._typeobject** %add.ptr520 to i8*, !dbg !1363
  %cond522 = select i1 %tobool516, i8* %79, i8* %80, !dbg !1359
  br label %cond.end.526, !dbg !1359

cond.false.523:                                   ; preds = %cond.true.505
  %data524 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1365
  %any525 = bitcast %struct._typeobject** %data524 to i8**, !dbg !1365
  %81 = load i8*, i8** %any525, align 8, !dbg !1365, !tbaa !929
  br label %cond.end.526, !dbg !1365

cond.end.526:                                     ; preds = %cond.true.511, %cond.false.523
  %cond527 = phi i8* [ %81, %cond.false.523 ], [ %cond522, %cond.true.511 ], !dbg !1351
  %82 = bitcast i8* %cond527 to i16*, !dbg !1367
  %arrayidx528 = getelementptr i16, i16* %82, i64 %73, !dbg !1367
  %83 = load i16, i16* %arrayidx528, align 2, !dbg !1367, !tbaa !1148
  %conv529 = zext i16 %83 to i32, !dbg !1367
  br label %cond.end.556, !dbg !1367

cond.false.530:                                   ; preds = %cond.false.498
  br i1 %tobool510, label %cond.true.536, label %cond.false.548, !dbg !1370

cond.true.536:                                    ; preds = %cond.false.530
  %bf.clear540 = and i32 %bf.load468, 64, !dbg !1372
  %tobool541 = icmp ne i32 %bf.clear540, 0, !dbg !1372
  %add.ptr543 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1374
  %84 = bitcast %struct._object* %add.ptr543 to i8*, !dbg !1374
  %add.ptr545 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1376
  %85 = bitcast %struct._typeobject** %add.ptr545 to i8*, !dbg !1376
  %cond547 = select i1 %tobool541, i8* %84, i8* %85, !dbg !1372
  br label %cond.end.551, !dbg !1372

cond.false.548:                                   ; preds = %cond.false.530
  %data549 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1378
  %any550 = bitcast %struct._typeobject** %data549 to i8**, !dbg !1378
  %86 = load i8*, i8** %any550, align 8, !dbg !1378, !tbaa !929
  br label %cond.end.551, !dbg !1378

cond.end.551:                                     ; preds = %cond.true.536, %cond.false.548
  %cond552 = phi i8* [ %86, %cond.false.548 ], [ %cond547, %cond.true.536 ], !dbg !1351
  %87 = bitcast i8* %cond552 to i32*, !dbg !1380
  %arrayidx553 = getelementptr i32, i32* %87, i64 %73, !dbg !1380
  %88 = load i32, i32* %arrayidx553, align 4, !dbg !1380, !tbaa !1163
  br label %cond.end.556, !dbg !1380

cond.end.556:                                     ; preds = %cond.end.526, %cond.end.551, %cond.end.494
  %cond557 = phi i32 [ %conv497, %cond.end.494 ], [ %conv529, %cond.end.526 ], [ %88, %cond.end.551 ], !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %cond557, i64 0, metadata !506, metadata !858), !dbg !1383
  switch i32 %cond557, label %if.end.654 [
    i32 32, label %if.then.560
    i32 43, label %if.then.560
    i32 45, label %if.then.560
  ], !dbg !1387

if.then.560:                                      ; preds = %cond.end.556, %cond.end.556, %cond.end.556
  br i1 %cmp471, label %cond.true.567, label %cond.false.592, !dbg !1340

cond.true.567:                                    ; preds = %if.then.560
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear571 = and i32 %bf.load468, 32, !dbg !1388
  %tobool572 = icmp eq i32 %bf.clear571, 0, !dbg !1388
  br i1 %tobool572, label %cond.false.585, label %cond.true.573, !dbg !1388

cond.true.573:                                    ; preds = %cond.true.567
  %bf.clear577 = and i32 %bf.load468, 64, !dbg !1390
  %tobool578 = icmp ne i32 %bf.clear577, 0, !dbg !1390
  %add.ptr580 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1392
  %89 = bitcast %struct._object* %add.ptr580 to i8*, !dbg !1392
  %add.ptr582 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1394
  %90 = bitcast %struct._typeobject** %add.ptr582 to i8*, !dbg !1394
  %cond584 = select i1 %tobool578, i8* %89, i8* %90, !dbg !1390
  br label %cond.end.588, !dbg !1390

cond.false.585:                                   ; preds = %cond.true.567
  %data586 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1396
  %any587 = bitcast %struct._typeobject** %data586 to i8**, !dbg !1396
  %91 = load i8*, i8** %any587, align 8, !dbg !1396, !tbaa !929
  br label %cond.end.588, !dbg !1396

cond.end.588:                                     ; preds = %cond.true.573, %cond.false.585
  %cond589 = phi i8* [ %91, %cond.false.585 ], [ %cond584, %cond.true.573 ], !dbg !1340
  %arrayidx590 = getelementptr i8, i8* %cond589, i64 %73, !dbg !1398
  %92 = load i8, i8* %arrayidx590, align 1, !dbg !1398, !tbaa !1132
  %conv591 = zext i8 %92 to i32, !dbg !1398
  br label %cond.end.650, !dbg !1398

cond.false.592:                                   ; preds = %if.then.560
  %cmp597 = icmp eq i32 %bf.clear470, 2, !dbg !1401
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %bf.clear603 = and i32 %bf.load468, 32, !dbg !1403
  %tobool604 = icmp ne i32 %bf.clear603, 0, !dbg !1403
  br i1 %cmp597, label %cond.true.599, label %cond.false.624, !dbg !1401

cond.true.599:                                    ; preds = %cond.false.592
  br i1 %tobool604, label %cond.true.605, label %cond.false.617, !dbg !1403

cond.true.605:                                    ; preds = %cond.true.599
  %bf.clear609 = and i32 %bf.load468, 64, !dbg !1405
  %tobool610 = icmp ne i32 %bf.clear609, 0, !dbg !1405
  %add.ptr612 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1407
  %93 = bitcast %struct._object* %add.ptr612 to i8*, !dbg !1407
  %add.ptr614 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1409
  %94 = bitcast %struct._typeobject** %add.ptr614 to i8*, !dbg !1409
  %cond616 = select i1 %tobool610, i8* %93, i8* %94, !dbg !1405
  br label %cond.end.620, !dbg !1405

cond.false.617:                                   ; preds = %cond.true.599
  %data618 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1411
  %any619 = bitcast %struct._typeobject** %data618 to i8**, !dbg !1411
  %95 = load i8*, i8** %any619, align 8, !dbg !1411, !tbaa !929
  br label %cond.end.620, !dbg !1411

cond.end.620:                                     ; preds = %cond.true.605, %cond.false.617
  %cond621 = phi i8* [ %95, %cond.false.617 ], [ %cond616, %cond.true.605 ], !dbg !1340
  %96 = bitcast i8* %cond621 to i16*, !dbg !1413
  %arrayidx622 = getelementptr i16, i16* %96, i64 %73, !dbg !1413
  %97 = load i16, i16* %arrayidx622, align 2, !dbg !1413, !tbaa !1148
  %conv623 = zext i16 %97 to i32, !dbg !1413
  br label %cond.end.650, !dbg !1413

cond.false.624:                                   ; preds = %cond.false.592
  br i1 %tobool604, label %cond.true.630, label %cond.false.642, !dbg !1416

cond.true.630:                                    ; preds = %cond.false.624
  %bf.clear634 = and i32 %bf.load468, 64, !dbg !1418
  %tobool635 = icmp ne i32 %bf.clear634, 0, !dbg !1418
  %add.ptr637 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1420
  %98 = bitcast %struct._object* %add.ptr637 to i8*, !dbg !1420
  %add.ptr639 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1422
  %99 = bitcast %struct._typeobject** %add.ptr639 to i8*, !dbg !1422
  %cond641 = select i1 %tobool635, i8* %98, i8* %99, !dbg !1418
  br label %cond.end.645, !dbg !1418

cond.false.642:                                   ; preds = %cond.false.624
  %data643 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1424
  %any644 = bitcast %struct._typeobject** %data643 to i8**, !dbg !1424
  %100 = load i8*, i8** %any644, align 8, !dbg !1424, !tbaa !929
  br label %cond.end.645, !dbg !1424

cond.end.645:                                     ; preds = %cond.true.630, %cond.false.642
  %cond646 = phi i8* [ %100, %cond.false.642 ], [ %cond641, %cond.true.630 ], !dbg !1340
  %101 = bitcast i8* %cond646 to i32*, !dbg !1426
  %arrayidx647 = getelementptr i32, i32* %101, i64 %73, !dbg !1426
  %102 = load i32, i32* %arrayidx647, align 4, !dbg !1426, !tbaa !1163
  br label %cond.end.650, !dbg !1426

cond.end.650:                                     ; preds = %cond.end.620, %cond.end.645, %cond.end.588
  %cond651 = phi i32 [ %conv591, %cond.end.588 ], [ %conv623, %cond.end.620 ], [ %102, %cond.end.645 ], !dbg !1340
  store i32 %cond651, i32* %sign, align 4, !dbg !1429, !tbaa !924
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc653 = add i64 %73, 1, !dbg !1332
  tail call void @llvm.dbg.value(metadata i64 %inc653, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc653, i64* %pos, align 8, !dbg !1332, !tbaa !1088
  br label %if.end.654, !dbg !1430

if.end.654:                                       ; preds = %cond.end.556, %cond.end.650, %if.end.462
  %103 = phi i64 [ %73, %cond.end.556 ], [ %inc653, %cond.end.650 ], [ %73, %if.end.462 ], !dbg !1431
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %sub655 = sub i64 %end, %103, !dbg !1434
  %cmp656 = icmp sgt i64 %sub655, 0, !dbg !1435
  br i1 %cmp656, label %land.lhs.true.658, label %if.end.755, !dbg !1436

land.lhs.true.658:                                ; preds = %if.end.654
  %state659 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1437
  %104 = bitcast %struct._object* %state659 to i32*, !dbg !1437
  %bf.load660 = load i32, i32* %104, align 4, !dbg !1437
  %bf.lshr661 = lshr i32 %bf.load660, 2, !dbg !1437
  %bf.clear662 = and i32 %bf.lshr661, 7, !dbg !1437
  %cmp663 = icmp eq i32 %bf.clear662, 1, !dbg !1437
  br i1 %cmp663, label %cond.true.665, label %cond.false.690, !dbg !1437

cond.true.665:                                    ; preds = %land.lhs.true.658
  %bf.clear669 = and i32 %bf.load660, 32, !dbg !1439
  %tobool670 = icmp eq i32 %bf.clear669, 0, !dbg !1439
  br i1 %tobool670, label %cond.false.683, label %cond.true.671, !dbg !1439

cond.true.671:                                    ; preds = %cond.true.665
  %bf.clear675 = and i32 %bf.load660, 64, !dbg !1441
  %tobool676 = icmp ne i32 %bf.clear675, 0, !dbg !1441
  %add.ptr678 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1443
  %105 = bitcast %struct._object* %add.ptr678 to i8*, !dbg !1443
  %add.ptr680 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1445
  %106 = bitcast %struct._typeobject** %add.ptr680 to i8*, !dbg !1445
  %cond682 = select i1 %tobool676, i8* %105, i8* %106, !dbg !1441
  br label %cond.end.686, !dbg !1441

cond.false.683:                                   ; preds = %cond.true.665
  %data684 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1447
  %any685 = bitcast %struct._typeobject** %data684 to i8**, !dbg !1447
  %107 = load i8*, i8** %any685, align 8, !dbg !1447, !tbaa !929
  br label %cond.end.686, !dbg !1447

cond.end.686:                                     ; preds = %cond.true.671, %cond.false.683
  %cond687 = phi i8* [ %107, %cond.false.683 ], [ %cond682, %cond.true.671 ], !dbg !1449
  %arrayidx688 = getelementptr i8, i8* %cond687, i64 %103, !dbg !1450
  %108 = load i8, i8* %arrayidx688, align 1, !dbg !1450, !tbaa !1132
  %conv689 = zext i8 %108 to i32, !dbg !1450
  br label %cond.end.748, !dbg !1450

cond.false.690:                                   ; preds = %land.lhs.true.658
  %cmp695 = icmp eq i32 %bf.clear662, 2, !dbg !1453
  %bf.clear701 = and i32 %bf.load660, 32, !dbg !1455
  %tobool702 = icmp ne i32 %bf.clear701, 0, !dbg !1455
  br i1 %cmp695, label %cond.true.697, label %cond.false.722, !dbg !1453

cond.true.697:                                    ; preds = %cond.false.690
  br i1 %tobool702, label %cond.true.703, label %cond.false.715, !dbg !1455

cond.true.703:                                    ; preds = %cond.true.697
  %bf.clear707 = and i32 %bf.load660, 64, !dbg !1457
  %tobool708 = icmp ne i32 %bf.clear707, 0, !dbg !1457
  %add.ptr710 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1459
  %109 = bitcast %struct._object* %add.ptr710 to i8*, !dbg !1459
  %add.ptr712 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1461
  %110 = bitcast %struct._typeobject** %add.ptr712 to i8*, !dbg !1461
  %cond714 = select i1 %tobool708, i8* %109, i8* %110, !dbg !1457
  br label %cond.end.718, !dbg !1457

cond.false.715:                                   ; preds = %cond.true.697
  %data716 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1463
  %any717 = bitcast %struct._typeobject** %data716 to i8**, !dbg !1463
  %111 = load i8*, i8** %any717, align 8, !dbg !1463, !tbaa !929
  br label %cond.end.718, !dbg !1463

cond.end.718:                                     ; preds = %cond.true.703, %cond.false.715
  %cond719 = phi i8* [ %111, %cond.false.715 ], [ %cond714, %cond.true.703 ], !dbg !1449
  %112 = bitcast i8* %cond719 to i16*, !dbg !1465
  %arrayidx720 = getelementptr i16, i16* %112, i64 %103, !dbg !1465
  %113 = load i16, i16* %arrayidx720, align 2, !dbg !1465, !tbaa !1148
  %conv721 = zext i16 %113 to i32, !dbg !1465
  br label %cond.end.748, !dbg !1465

cond.false.722:                                   ; preds = %cond.false.690
  br i1 %tobool702, label %cond.true.728, label %cond.false.740, !dbg !1468

cond.true.728:                                    ; preds = %cond.false.722
  %bf.clear732 = and i32 %bf.load660, 64, !dbg !1470
  %tobool733 = icmp ne i32 %bf.clear732, 0, !dbg !1470
  %add.ptr735 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1472
  %114 = bitcast %struct._object* %add.ptr735 to i8*, !dbg !1472
  %add.ptr737 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1474
  %115 = bitcast %struct._typeobject** %add.ptr737 to i8*, !dbg !1474
  %cond739 = select i1 %tobool733, i8* %114, i8* %115, !dbg !1470
  br label %cond.end.743, !dbg !1470

cond.false.740:                                   ; preds = %cond.false.722
  %data741 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1476
  %any742 = bitcast %struct._typeobject** %data741 to i8**, !dbg !1476
  %116 = load i8*, i8** %any742, align 8, !dbg !1476, !tbaa !929
  br label %cond.end.743, !dbg !1476

cond.end.743:                                     ; preds = %cond.true.728, %cond.false.740
  %cond744 = phi i8* [ %116, %cond.false.740 ], [ %cond739, %cond.true.728 ], !dbg !1449
  %117 = bitcast i8* %cond744 to i32*, !dbg !1478
  %arrayidx745 = getelementptr i32, i32* %117, i64 %103, !dbg !1478
  %118 = load i32, i32* %arrayidx745, align 4, !dbg !1478, !tbaa !1163
  br label %cond.end.748, !dbg !1478

cond.end.748:                                     ; preds = %cond.end.718, %cond.end.743, %cond.end.686
  %cond749 = phi i32 [ %conv689, %cond.end.686 ], [ %conv721, %cond.end.718 ], [ %118, %cond.end.743 ], !dbg !1449
  %cmp750 = icmp eq i32 %cond749, 35, !dbg !1481
  br i1 %cmp750, label %if.then.752, label %if.end.755, !dbg !1484

if.then.752:                                      ; preds = %cond.end.748
  store i32 1, i32* %alternate, align 4, !dbg !1485, !tbaa !934
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc754 = add i64 %103, 1, !dbg !1431
  tail call void @llvm.dbg.value(metadata i64 %inc754, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc754, i64* %pos, align 8, !dbg !1431, !tbaa !1088
  br label %if.end.755, !dbg !1486

if.end.755:                                       ; preds = %if.then.752, %cond.end.748, %if.end.654
  %119 = phi i64 [ %inc754, %if.then.752 ], [ %103, %cond.end.748 ], [ %103, %if.end.654 ], !dbg !1487
  %tobool756 = icmp eq i32 %fill_char_specified.0, 0, !dbg !1490
  %sub758 = sub i64 %end, %119
  %cmp759 = icmp sgt i64 %sub758, 0, !dbg !1491
  %or.cond = and i1 %tobool756, %cmp759, !dbg !1492
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  br i1 %or.cond, label %land.lhs.true.761, label %if.end.862, !dbg !1492

land.lhs.true.761:                                ; preds = %if.end.755
  %state762 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1493
  %120 = bitcast %struct._object* %state762 to i32*, !dbg !1493
  %bf.load763 = load i32, i32* %120, align 4, !dbg !1493
  %bf.lshr764 = lshr i32 %bf.load763, 2, !dbg !1493
  %bf.clear765 = and i32 %bf.lshr764, 7, !dbg !1493
  %cmp766 = icmp eq i32 %bf.clear765, 1, !dbg !1493
  br i1 %cmp766, label %cond.true.768, label %cond.false.793, !dbg !1493

cond.true.768:                                    ; preds = %land.lhs.true.761
  %bf.clear772 = and i32 %bf.load763, 32, !dbg !1495
  %tobool773 = icmp eq i32 %bf.clear772, 0, !dbg !1495
  br i1 %tobool773, label %cond.false.786, label %cond.true.774, !dbg !1495

cond.true.774:                                    ; preds = %cond.true.768
  %bf.clear778 = and i32 %bf.load763, 64, !dbg !1497
  %tobool779 = icmp ne i32 %bf.clear778, 0, !dbg !1497
  %add.ptr781 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1499
  %121 = bitcast %struct._object* %add.ptr781 to i8*, !dbg !1499
  %add.ptr783 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1501
  %122 = bitcast %struct._typeobject** %add.ptr783 to i8*, !dbg !1501
  %cond785 = select i1 %tobool779, i8* %121, i8* %122, !dbg !1497
  br label %cond.end.789, !dbg !1497

cond.false.786:                                   ; preds = %cond.true.768
  %data787 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1503
  %any788 = bitcast %struct._typeobject** %data787 to i8**, !dbg !1503
  %123 = load i8*, i8** %any788, align 8, !dbg !1503, !tbaa !929
  br label %cond.end.789, !dbg !1503

cond.end.789:                                     ; preds = %cond.true.774, %cond.false.786
  %cond790 = phi i8* [ %123, %cond.false.786 ], [ %cond785, %cond.true.774 ], !dbg !1505
  %arrayidx791 = getelementptr i8, i8* %cond790, i64 %119, !dbg !1506
  %124 = load i8, i8* %arrayidx791, align 1, !dbg !1506, !tbaa !1132
  %conv792 = zext i8 %124 to i32, !dbg !1506
  br label %cond.end.851, !dbg !1506

cond.false.793:                                   ; preds = %land.lhs.true.761
  %cmp798 = icmp eq i32 %bf.clear765, 2, !dbg !1509
  %bf.clear804 = and i32 %bf.load763, 32, !dbg !1511
  %tobool805 = icmp ne i32 %bf.clear804, 0, !dbg !1511
  br i1 %cmp798, label %cond.true.800, label %cond.false.825, !dbg !1509

cond.true.800:                                    ; preds = %cond.false.793
  br i1 %tobool805, label %cond.true.806, label %cond.false.818, !dbg !1511

cond.true.806:                                    ; preds = %cond.true.800
  %bf.clear810 = and i32 %bf.load763, 64, !dbg !1513
  %tobool811 = icmp ne i32 %bf.clear810, 0, !dbg !1513
  %add.ptr813 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1515
  %125 = bitcast %struct._object* %add.ptr813 to i8*, !dbg !1515
  %add.ptr815 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1517
  %126 = bitcast %struct._typeobject** %add.ptr815 to i8*, !dbg !1517
  %cond817 = select i1 %tobool811, i8* %125, i8* %126, !dbg !1513
  br label %cond.end.821, !dbg !1513

cond.false.818:                                   ; preds = %cond.true.800
  %data819 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1519
  %any820 = bitcast %struct._typeobject** %data819 to i8**, !dbg !1519
  %127 = load i8*, i8** %any820, align 8, !dbg !1519, !tbaa !929
  br label %cond.end.821, !dbg !1519

cond.end.821:                                     ; preds = %cond.true.806, %cond.false.818
  %cond822 = phi i8* [ %127, %cond.false.818 ], [ %cond817, %cond.true.806 ], !dbg !1505
  %128 = bitcast i8* %cond822 to i16*, !dbg !1521
  %arrayidx823 = getelementptr i16, i16* %128, i64 %119, !dbg !1521
  %129 = load i16, i16* %arrayidx823, align 2, !dbg !1521, !tbaa !1148
  %conv824 = zext i16 %129 to i32, !dbg !1521
  br label %cond.end.851, !dbg !1521

cond.false.825:                                   ; preds = %cond.false.793
  br i1 %tobool805, label %cond.true.831, label %cond.false.843, !dbg !1524

cond.true.831:                                    ; preds = %cond.false.825
  %bf.clear835 = and i32 %bf.load763, 64, !dbg !1526
  %tobool836 = icmp ne i32 %bf.clear835, 0, !dbg !1526
  %add.ptr838 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1528
  %130 = bitcast %struct._object* %add.ptr838 to i8*, !dbg !1528
  %add.ptr840 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1530
  %131 = bitcast %struct._typeobject** %add.ptr840 to i8*, !dbg !1530
  %cond842 = select i1 %tobool836, i8* %130, i8* %131, !dbg !1526
  br label %cond.end.846, !dbg !1526

cond.false.843:                                   ; preds = %cond.false.825
  %data844 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1532
  %any845 = bitcast %struct._typeobject** %data844 to i8**, !dbg !1532
  %132 = load i8*, i8** %any845, align 8, !dbg !1532, !tbaa !929
  br label %cond.end.846, !dbg !1532

cond.end.846:                                     ; preds = %cond.true.831, %cond.false.843
  %cond847 = phi i8* [ %132, %cond.false.843 ], [ %cond842, %cond.true.831 ], !dbg !1505
  %133 = bitcast i8* %cond847 to i32*, !dbg !1534
  %arrayidx848 = getelementptr i32, i32* %133, i64 %119, !dbg !1534
  %134 = load i32, i32* %arrayidx848, align 4, !dbg !1534, !tbaa !1163
  br label %cond.end.851, !dbg !1534

cond.end.851:                                     ; preds = %cond.end.821, %cond.end.846, %cond.end.789
  %cond852 = phi i32 [ %conv792, %cond.end.789 ], [ %conv824, %cond.end.821 ], [ %134, %cond.end.846 ], !dbg !1505
  %cmp853 = icmp eq i32 %cond852, 48, !dbg !1537
  br i1 %cmp853, label %if.then.855, label %if.end.862, !dbg !1540

if.then.855:                                      ; preds = %cond.end.851
  store i32 48, i32* %fill_char, align 4, !dbg !1541, !tbaa !1004
  %tobool857 = icmp eq i32 %align_specified.0, 0, !dbg !1542
  br i1 %tobool857, label %if.then.858, label %if.end.860, !dbg !1544

if.then.858:                                      ; preds = %if.then.855
  store i32 61, i32* %align, align 4, !dbg !1545, !tbaa !944
  br label %if.end.860, !dbg !1547

if.end.860:                                       ; preds = %if.then.855, %if.then.858
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc861 = add i64 %119, 1, !dbg !1487
  tail call void @llvm.dbg.value(metadata i64 %inc861, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc861, i64* %pos, align 8, !dbg !1487, !tbaa !1088
  br label %if.end.862, !dbg !1548

if.end.862:                                       ; preds = %if.end.755, %if.end.860, %cond.end.851
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %call864 = call fastcc i32 @get_integer(%struct._object* %format_spec, i64* nonnull %pos, i64 %end, i64* %width), !dbg !1549
  switch i32 %call864, label %if.end.874 [
    i32 -1, label %cleanup
    i32 0, label %if.then.872
  ], !dbg !1550

if.then.872:                                      ; preds = %if.end.862
  store i64 -1, i64* %width, align 8, !dbg !1551, !tbaa !954
  br label %if.end.874, !dbg !1553

if.end.874:                                       ; preds = %if.end.862, %if.then.872
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %135 = load i64, i64* %pos, align 8, !dbg !1554, !tbaa !1088
  %tobool876 = icmp eq i64 %135, %end, !dbg !1557
  br i1 %tobool876, label %if.end.1085, label %land.lhs.true.877, !dbg !1558

land.lhs.true.877:                                ; preds = %if.end.874
  %state878 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1559
  %136 = bitcast %struct._object* %state878 to i32*, !dbg !1559
  %bf.load879 = load i32, i32* %136, align 4, !dbg !1559
  %bf.lshr880 = lshr i32 %bf.load879, 2, !dbg !1559
  %bf.clear881 = and i32 %bf.lshr880, 7, !dbg !1559
  %cmp882 = icmp eq i32 %bf.clear881, 1, !dbg !1559
  br i1 %cmp882, label %cond.true.884, label %cond.false.909, !dbg !1559

cond.true.884:                                    ; preds = %land.lhs.true.877
  %bf.clear888 = and i32 %bf.load879, 32, !dbg !1561
  %tobool889 = icmp eq i32 %bf.clear888, 0, !dbg !1561
  br i1 %tobool889, label %cond.false.902, label %cond.true.890, !dbg !1561

cond.true.890:                                    ; preds = %cond.true.884
  %bf.clear894 = and i32 %bf.load879, 64, !dbg !1563
  %tobool895 = icmp ne i32 %bf.clear894, 0, !dbg !1563
  %add.ptr897 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1565
  %137 = bitcast %struct._object* %add.ptr897 to i8*, !dbg !1565
  %add.ptr899 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1567
  %138 = bitcast %struct._typeobject** %add.ptr899 to i8*, !dbg !1567
  %cond901 = select i1 %tobool895, i8* %137, i8* %138, !dbg !1563
  br label %cond.end.905, !dbg !1563

cond.false.902:                                   ; preds = %cond.true.884
  %data903 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1569
  %any904 = bitcast %struct._typeobject** %data903 to i8**, !dbg !1569
  %139 = load i8*, i8** %any904, align 8, !dbg !1569, !tbaa !929
  br label %cond.end.905, !dbg !1569

cond.end.905:                                     ; preds = %cond.true.890, %cond.false.902
  %cond906 = phi i8* [ %139, %cond.false.902 ], [ %cond901, %cond.true.890 ], !dbg !1571
  %arrayidx907 = getelementptr i8, i8* %cond906, i64 %135, !dbg !1572
  %140 = load i8, i8* %arrayidx907, align 1, !dbg !1572, !tbaa !1132
  %conv908 = zext i8 %140 to i32, !dbg !1572
  br label %cond.end.967, !dbg !1572

cond.false.909:                                   ; preds = %land.lhs.true.877
  %cmp914 = icmp eq i32 %bf.clear881, 2, !dbg !1575
  %bf.clear920 = and i32 %bf.load879, 32, !dbg !1577
  %tobool921 = icmp ne i32 %bf.clear920, 0, !dbg !1577
  br i1 %cmp914, label %cond.true.916, label %cond.false.941, !dbg !1575

cond.true.916:                                    ; preds = %cond.false.909
  br i1 %tobool921, label %cond.true.922, label %cond.false.934, !dbg !1577

cond.true.922:                                    ; preds = %cond.true.916
  %bf.clear926 = and i32 %bf.load879, 64, !dbg !1579
  %tobool927 = icmp ne i32 %bf.clear926, 0, !dbg !1579
  %add.ptr929 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1581
  %141 = bitcast %struct._object* %add.ptr929 to i8*, !dbg !1581
  %add.ptr931 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1583
  %142 = bitcast %struct._typeobject** %add.ptr931 to i8*, !dbg !1583
  %cond933 = select i1 %tobool927, i8* %141, i8* %142, !dbg !1579
  br label %cond.end.937, !dbg !1579

cond.false.934:                                   ; preds = %cond.true.916
  %data935 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1585
  %any936 = bitcast %struct._typeobject** %data935 to i8**, !dbg !1585
  %143 = load i8*, i8** %any936, align 8, !dbg !1585, !tbaa !929
  br label %cond.end.937, !dbg !1585

cond.end.937:                                     ; preds = %cond.true.922, %cond.false.934
  %cond938 = phi i8* [ %143, %cond.false.934 ], [ %cond933, %cond.true.922 ], !dbg !1571
  %144 = bitcast i8* %cond938 to i16*, !dbg !1587
  %arrayidx939 = getelementptr i16, i16* %144, i64 %135, !dbg !1587
  %145 = load i16, i16* %arrayidx939, align 2, !dbg !1587, !tbaa !1148
  %conv940 = zext i16 %145 to i32, !dbg !1587
  br label %cond.end.967, !dbg !1587

cond.false.941:                                   ; preds = %cond.false.909
  br i1 %tobool921, label %cond.true.947, label %cond.false.959, !dbg !1590

cond.true.947:                                    ; preds = %cond.false.941
  %bf.clear951 = and i32 %bf.load879, 64, !dbg !1592
  %tobool952 = icmp ne i32 %bf.clear951, 0, !dbg !1592
  %add.ptr954 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1594
  %146 = bitcast %struct._object* %add.ptr954 to i8*, !dbg !1594
  %add.ptr956 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1596
  %147 = bitcast %struct._typeobject** %add.ptr956 to i8*, !dbg !1596
  %cond958 = select i1 %tobool952, i8* %146, i8* %147, !dbg !1592
  br label %cond.end.962, !dbg !1592

cond.false.959:                                   ; preds = %cond.false.941
  %data960 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1598
  %any961 = bitcast %struct._typeobject** %data960 to i8**, !dbg !1598
  %148 = load i8*, i8** %any961, align 8, !dbg !1598, !tbaa !929
  br label %cond.end.962, !dbg !1598

cond.end.962:                                     ; preds = %cond.true.947, %cond.false.959
  %cond963 = phi i8* [ %148, %cond.false.959 ], [ %cond958, %cond.true.947 ], !dbg !1571
  %149 = bitcast i8* %cond963 to i32*, !dbg !1600
  %arrayidx964 = getelementptr i32, i32* %149, i64 %135, !dbg !1600
  %150 = load i32, i32* %arrayidx964, align 4, !dbg !1600, !tbaa !1163
  br label %cond.end.967, !dbg !1600

cond.end.967:                                     ; preds = %cond.end.937, %cond.end.962, %cond.end.905
  %cond968 = phi i32 [ %conv908, %cond.end.905 ], [ %conv940, %cond.end.937 ], [ %150, %cond.end.962 ], !dbg !1571
  %cmp969 = icmp eq i32 %cond968, 44, !dbg !1603
  br i1 %cmp969, label %if.then.971, label %if.end.974, !dbg !1606

if.then.971:                                      ; preds = %cond.end.967
  store i32 1, i32* %thousands_separators, align 4, !dbg !1607, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc973 = add i64 %135, 1, !dbg !1554
  tail call void @llvm.dbg.value(metadata i64 %inc973, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc973, i64* %pos, align 8, !dbg !1554, !tbaa !1088
  br label %if.end.974, !dbg !1608

if.end.974:                                       ; preds = %if.then.971, %cond.end.967
  %151 = phi i64 [ %inc973, %if.then.971 ], [ %135, %cond.end.967 ], !dbg !1609
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %tobool976 = icmp eq i64 %151, %end, !dbg !1612
  br i1 %tobool976, label %if.end.1085, label %land.lhs.true.977, !dbg !1613

land.lhs.true.977:                                ; preds = %if.end.974
  %state978 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1614
  %152 = bitcast %struct._object* %state978 to i32*, !dbg !1614
  %bf.load979 = load i32, i32* %152, align 4, !dbg !1614
  %bf.lshr980 = lshr i32 %bf.load979, 2, !dbg !1614
  %bf.clear981 = and i32 %bf.lshr980, 7, !dbg !1614
  %cmp982 = icmp eq i32 %bf.clear981, 1, !dbg !1614
  br i1 %cmp982, label %cond.true.984, label %cond.false.1009, !dbg !1614

cond.true.984:                                    ; preds = %land.lhs.true.977
  %bf.clear988 = and i32 %bf.load979, 32, !dbg !1616
  %tobool989 = icmp eq i32 %bf.clear988, 0, !dbg !1616
  br i1 %tobool989, label %cond.false.1002, label %cond.true.990, !dbg !1616

cond.true.990:                                    ; preds = %cond.true.984
  %bf.clear994 = and i32 %bf.load979, 64, !dbg !1618
  %tobool995 = icmp ne i32 %bf.clear994, 0, !dbg !1618
  %add.ptr997 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1620
  %153 = bitcast %struct._object* %add.ptr997 to i8*, !dbg !1620
  %add.ptr999 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1622
  %154 = bitcast %struct._typeobject** %add.ptr999 to i8*, !dbg !1622
  %cond1001 = select i1 %tobool995, i8* %153, i8* %154, !dbg !1618
  br label %cond.end.1005, !dbg !1618

cond.false.1002:                                  ; preds = %cond.true.984
  %data1003 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1624
  %any1004 = bitcast %struct._typeobject** %data1003 to i8**, !dbg !1624
  %155 = load i8*, i8** %any1004, align 8, !dbg !1624, !tbaa !929
  br label %cond.end.1005, !dbg !1624

cond.end.1005:                                    ; preds = %cond.true.990, %cond.false.1002
  %cond1006 = phi i8* [ %155, %cond.false.1002 ], [ %cond1001, %cond.true.990 ], !dbg !1626
  %arrayidx1007 = getelementptr i8, i8* %cond1006, i64 %151, !dbg !1627
  %156 = load i8, i8* %arrayidx1007, align 1, !dbg !1627, !tbaa !1132
  %conv1008 = zext i8 %156 to i32, !dbg !1627
  br label %cond.end.1067, !dbg !1627

cond.false.1009:                                  ; preds = %land.lhs.true.977
  %cmp1014 = icmp eq i32 %bf.clear981, 2, !dbg !1630
  %bf.clear1020 = and i32 %bf.load979, 32, !dbg !1632
  %tobool1021 = icmp ne i32 %bf.clear1020, 0, !dbg !1632
  br i1 %cmp1014, label %cond.true.1016, label %cond.false.1041, !dbg !1630

cond.true.1016:                                   ; preds = %cond.false.1009
  br i1 %tobool1021, label %cond.true.1022, label %cond.false.1034, !dbg !1632

cond.true.1022:                                   ; preds = %cond.true.1016
  %bf.clear1026 = and i32 %bf.load979, 64, !dbg !1634
  %tobool1027 = icmp ne i32 %bf.clear1026, 0, !dbg !1634
  %add.ptr1029 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1636
  %157 = bitcast %struct._object* %add.ptr1029 to i8*, !dbg !1636
  %add.ptr1031 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1638
  %158 = bitcast %struct._typeobject** %add.ptr1031 to i8*, !dbg !1638
  %cond1033 = select i1 %tobool1027, i8* %157, i8* %158, !dbg !1634
  br label %cond.end.1037, !dbg !1634

cond.false.1034:                                  ; preds = %cond.true.1016
  %data1035 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1640
  %any1036 = bitcast %struct._typeobject** %data1035 to i8**, !dbg !1640
  %159 = load i8*, i8** %any1036, align 8, !dbg !1640, !tbaa !929
  br label %cond.end.1037, !dbg !1640

cond.end.1037:                                    ; preds = %cond.true.1022, %cond.false.1034
  %cond1038 = phi i8* [ %159, %cond.false.1034 ], [ %cond1033, %cond.true.1022 ], !dbg !1626
  %160 = bitcast i8* %cond1038 to i16*, !dbg !1642
  %arrayidx1039 = getelementptr i16, i16* %160, i64 %151, !dbg !1642
  %161 = load i16, i16* %arrayidx1039, align 2, !dbg !1642, !tbaa !1148
  %conv1040 = zext i16 %161 to i32, !dbg !1642
  br label %cond.end.1067, !dbg !1642

cond.false.1041:                                  ; preds = %cond.false.1009
  br i1 %tobool1021, label %cond.true.1047, label %cond.false.1059, !dbg !1645

cond.true.1047:                                   ; preds = %cond.false.1041
  %bf.clear1051 = and i32 %bf.load979, 64, !dbg !1647
  %tobool1052 = icmp ne i32 %bf.clear1051, 0, !dbg !1647
  %add.ptr1054 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1649
  %162 = bitcast %struct._object* %add.ptr1054 to i8*, !dbg !1649
  %add.ptr1056 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1651
  %163 = bitcast %struct._typeobject** %add.ptr1056 to i8*, !dbg !1651
  %cond1058 = select i1 %tobool1052, i8* %162, i8* %163, !dbg !1647
  br label %cond.end.1062, !dbg !1647

cond.false.1059:                                  ; preds = %cond.false.1041
  %data1060 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1653
  %any1061 = bitcast %struct._typeobject** %data1060 to i8**, !dbg !1653
  %164 = load i8*, i8** %any1061, align 8, !dbg !1653, !tbaa !929
  br label %cond.end.1062, !dbg !1653

cond.end.1062:                                    ; preds = %cond.true.1047, %cond.false.1059
  %cond1063 = phi i8* [ %164, %cond.false.1059 ], [ %cond1058, %cond.true.1047 ], !dbg !1626
  %165 = bitcast i8* %cond1063 to i32*, !dbg !1655
  %arrayidx1064 = getelementptr i32, i32* %165, i64 %151, !dbg !1655
  %166 = load i32, i32* %arrayidx1064, align 4, !dbg !1655, !tbaa !1163
  br label %cond.end.1067, !dbg !1655

cond.end.1067:                                    ; preds = %cond.end.1037, %cond.end.1062, %cond.end.1005
  %cond1068 = phi i32 [ %conv1008, %cond.end.1005 ], [ %conv1040, %cond.end.1037 ], [ %166, %cond.end.1062 ], !dbg !1626
  %cmp1069 = icmp eq i32 %cond1068, 46, !dbg !1658
  br i1 %cmp1069, label %if.then.1071, label %if.end.1085, !dbg !1661

if.then.1071:                                     ; preds = %cond.end.1067
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc1072 = add i64 %151, 1, !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %inc1072, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc1072, i64* %pos, align 8, !dbg !1609, !tbaa !1088
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %call1074 = call fastcc i32 @get_integer(%struct._object* %format_spec, i64* nonnull %pos, i64 %end, i64* %precision), !dbg !1662
  switch i32 %call1074, label %if.then.1071.if.end.1085_crit_edge [
    i32 -1, label %cleanup
    i32 0, label %if.then.1082
  ], !dbg !1663

if.then.1071.if.end.1085_crit_edge:               ; preds = %if.then.1071
  %.pre = load i64, i64* %pos, align 8, !dbg !1664, !tbaa !1088
  br label %if.end.1085, !dbg !1663

if.then.1082:                                     ; preds = %if.then.1071
  %167 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1666, !tbaa !929
  %call1083 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #1, !dbg !1669
  br label %cleanup, !dbg !1670

if.end.1085:                                      ; preds = %if.end.874, %if.then.1071.if.end.1085_crit_edge, %if.end.974, %cond.end.1067
  %168 = phi i64 [ %.pre, %if.then.1071.if.end.1085_crit_edge ], [ %end, %if.end.974 ], [ %151, %cond.end.1067 ], [ %end, %if.end.874 ], !dbg !1671
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %sub1086 = sub i64 %end, %168, !dbg !1674
  %cmp1087 = icmp sgt i64 %sub1086, 1, !dbg !1675
  br i1 %cmp1087, label %if.then.1089, label %if.end.1091, !dbg !1676

if.then.1089:                                     ; preds = %if.end.1085
  %169 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1677, !tbaa !929
  %call1090 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #1, !dbg !1679
  br label %cleanup, !dbg !1680

if.end.1091:                                      ; preds = %if.end.1085
  %cmp1093 = icmp eq i64 %sub1086, 1, !dbg !1681
  br i1 %cmp1093, label %if.then.1095, label %if.end.1189, !dbg !1682

if.then.1095:                                     ; preds = %if.end.1091
  %state1096 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 2, !dbg !1683
  %170 = bitcast %struct._object* %state1096 to i32*, !dbg !1683
  %bf.load1097 = load i32, i32* %170, align 4, !dbg !1683
  %bf.lshr1098 = lshr i32 %bf.load1097, 2, !dbg !1683
  %bf.clear1099 = and i32 %bf.lshr1098, 7, !dbg !1683
  %cmp1100 = icmp eq i32 %bf.clear1099, 1, !dbg !1683
  br i1 %cmp1100, label %cond.true.1102, label %cond.false.1127, !dbg !1683

cond.true.1102:                                   ; preds = %if.then.1095
  %bf.clear1106 = and i32 %bf.load1097, 32, !dbg !1684
  %tobool1107 = icmp eq i32 %bf.clear1106, 0, !dbg !1684
  br i1 %tobool1107, label %cond.false.1120, label %cond.true.1108, !dbg !1684

cond.true.1108:                                   ; preds = %cond.true.1102
  %bf.clear1112 = and i32 %bf.load1097, 64, !dbg !1686
  %tobool1113 = icmp ne i32 %bf.clear1112, 0, !dbg !1686
  %add.ptr1115 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1688
  %171 = bitcast %struct._object* %add.ptr1115 to i8*, !dbg !1688
  %add.ptr1117 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1690
  %172 = bitcast %struct._typeobject** %add.ptr1117 to i8*, !dbg !1690
  %cond1119 = select i1 %tobool1113, i8* %171, i8* %172, !dbg !1686
  br label %cond.end.1123, !dbg !1686

cond.false.1120:                                  ; preds = %cond.true.1102
  %data1121 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1692
  %any1122 = bitcast %struct._typeobject** %data1121 to i8**, !dbg !1692
  %173 = load i8*, i8** %any1122, align 8, !dbg !1692, !tbaa !929
  br label %cond.end.1123, !dbg !1692

cond.end.1123:                                    ; preds = %cond.true.1108, %cond.false.1120
  %cond1124 = phi i8* [ %173, %cond.false.1120 ], [ %cond1119, %cond.true.1108 ], !dbg !1683
  %arrayidx1125 = getelementptr i8, i8* %cond1124, i64 %168, !dbg !1694
  %174 = load i8, i8* %arrayidx1125, align 1, !dbg !1694, !tbaa !1132
  %conv1126 = zext i8 %174 to i32, !dbg !1694
  br label %cond.end.1185, !dbg !1694

cond.false.1127:                                  ; preds = %if.then.1095
  %cmp1132 = icmp eq i32 %bf.clear1099, 2, !dbg !1697
  %bf.clear1138 = and i32 %bf.load1097, 32, !dbg !1699
  %tobool1139 = icmp ne i32 %bf.clear1138, 0, !dbg !1699
  br i1 %cmp1132, label %cond.true.1134, label %cond.false.1159, !dbg !1697

cond.true.1134:                                   ; preds = %cond.false.1127
  br i1 %tobool1139, label %cond.true.1140, label %cond.false.1152, !dbg !1699

cond.true.1140:                                   ; preds = %cond.true.1134
  %bf.clear1144 = and i32 %bf.load1097, 64, !dbg !1701
  %tobool1145 = icmp ne i32 %bf.clear1144, 0, !dbg !1701
  %add.ptr1147 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1703
  %175 = bitcast %struct._object* %add.ptr1147 to i8*, !dbg !1703
  %add.ptr1149 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1705
  %176 = bitcast %struct._typeobject** %add.ptr1149 to i8*, !dbg !1705
  %cond1151 = select i1 %tobool1145, i8* %175, i8* %176, !dbg !1701
  br label %cond.end.1155, !dbg !1701

cond.false.1152:                                  ; preds = %cond.true.1134
  %data1153 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1707
  %any1154 = bitcast %struct._typeobject** %data1153 to i8**, !dbg !1707
  %177 = load i8*, i8** %any1154, align 8, !dbg !1707, !tbaa !929
  br label %cond.end.1155, !dbg !1707

cond.end.1155:                                    ; preds = %cond.true.1140, %cond.false.1152
  %cond1156 = phi i8* [ %177, %cond.false.1152 ], [ %cond1151, %cond.true.1140 ], !dbg !1683
  %178 = bitcast i8* %cond1156 to i16*, !dbg !1709
  %arrayidx1157 = getelementptr i16, i16* %178, i64 %168, !dbg !1709
  %179 = load i16, i16* %arrayidx1157, align 2, !dbg !1709, !tbaa !1148
  %conv1158 = zext i16 %179 to i32, !dbg !1709
  br label %cond.end.1185, !dbg !1709

cond.false.1159:                                  ; preds = %cond.false.1127
  br i1 %tobool1139, label %cond.true.1165, label %cond.false.1177, !dbg !1712

cond.true.1165:                                   ; preds = %cond.false.1159
  %bf.clear1169 = and i32 %bf.load1097, 64, !dbg !1714
  %tobool1170 = icmp ne i32 %bf.clear1169, 0, !dbg !1714
  %add.ptr1172 = getelementptr %struct._object, %struct._object* %format_spec, i64 3, !dbg !1716
  %180 = bitcast %struct._object* %add.ptr1172 to i8*, !dbg !1716
  %add.ptr1174 = getelementptr %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1718
  %181 = bitcast %struct._typeobject** %add.ptr1174 to i8*, !dbg !1718
  %cond1176 = select i1 %tobool1170, i8* %180, i8* %181, !dbg !1714
  br label %cond.end.1180, !dbg !1714

cond.false.1177:                                  ; preds = %cond.false.1159
  %data1178 = getelementptr inbounds %struct._object, %struct._object* %format_spec, i64 4, i32 1, !dbg !1720
  %any1179 = bitcast %struct._typeobject** %data1178 to i8**, !dbg !1720
  %182 = load i8*, i8** %any1179, align 8, !dbg !1720, !tbaa !929
  br label %cond.end.1180, !dbg !1720

cond.end.1180:                                    ; preds = %cond.true.1165, %cond.false.1177
  %cond1181 = phi i8* [ %182, %cond.false.1177 ], [ %cond1176, %cond.true.1165 ], !dbg !1683
  %183 = bitcast i8* %cond1181 to i32*, !dbg !1722
  %arrayidx1182 = getelementptr i32, i32* %183, i64 %168, !dbg !1722
  %184 = load i32, i32* %arrayidx1182, align 4, !dbg !1722, !tbaa !1163
  br label %cond.end.1185, !dbg !1722

cond.end.1185:                                    ; preds = %cond.end.1155, %cond.end.1180, %cond.end.1123
  %cond1186 = phi i32 [ %conv1126, %cond.end.1123 ], [ %conv1158, %cond.end.1155 ], [ %184, %cond.end.1180 ], !dbg !1683
  store i32 %cond1186, i32* %type, align 4, !dbg !1725, !tbaa !908
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !495, metadata !858), !dbg !1087
  %inc1188 = add i64 %168, 1, !dbg !1671
  tail call void @llvm.dbg.value(metadata i64 %inc1188, i64 0, metadata !495, metadata !858), !dbg !1087
  store i64 %inc1188, i64* %pos, align 8, !dbg !1671, !tbaa !1088
  br label %if.end.1189, !dbg !1726

if.end.1189:                                      ; preds = %cond.end.1185, %if.end.1091
  %185 = load i32, i32* %thousands_separators, align 4, !dbg !1727, !tbaa !1104
  %tobool1191 = icmp eq i32 %185, 0, !dbg !1729
  br i1 %tobool1191, label %cleanup, label %if.then.1192, !dbg !1730

if.then.1192:                                     ; preds = %if.end.1189
  %186 = load i32, i32* %type, align 4, !dbg !1731, !tbaa !908
  switch i32 %186, label %sw.default [
    i32 100, label %cleanup
    i32 101, label %cleanup
    i32 102, label %cleanup
    i32 103, label %cleanup
    i32 69, label %cleanup
    i32 71, label %cleanup
    i32 37, label %cleanup
    i32 70, label %cleanup
    i32 0, label %cleanup
  ], !dbg !1733

sw.default:                                       ; preds = %if.then.1192
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !522, metadata !858) #1, !dbg !1734
  %presentation_type.off.i = add i32 %186, -33, !dbg !1737
  %187 = icmp ult i32 %presentation_type.off.i, 95, !dbg !1737
  %188 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1739, !tbaa !929
  br i1 %187, label %if.then.i, label %if.else.i, !dbg !1737

if.then.i:                                        ; preds = %sw.default
  %sext.i = shl i32 %186, 24, !dbg !1740
  %conv2.i = ashr exact i32 %sext.i, 24, !dbg !1740
  %call.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %conv2.i) #1, !dbg !1741
  br label %cleanup, !dbg !1741

if.else.i:                                        ; preds = %sw.default
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %186) #1, !dbg !1742
  br label %cleanup, !dbg !1743

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.then.1192, %if.end.1189, %if.then.1071, %if.end.862, %if.then.1089, %if.then.1082
  %retval.0 = phi i32 [ 0, %if.then.1082 ], [ 0, %if.then.1089 ], [ 0, %if.end.862 ], [ 0, %if.then.1071 ], [ 1, %if.end.1189 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 1, %if.then.1192 ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1744
  ret i32 %retval.0, !dbg !1744
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_PyLong_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %maxchar.i = alloca i32, align 4
  %spec.i = alloca %struct.NumberFieldWidths, align 8
  %locale.i = alloca %struct.LocaleInfo, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !439, metadata !858), !dbg !1745
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !440, metadata !858), !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct._object* %format_spec, i64 0, metadata !441, metadata !858), !dbg !1747
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !442, metadata !858), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !443, metadata !858), !dbg !1749
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !444, metadata !858), !dbg !1750
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !445, metadata !858), !dbg !1751
  %0 = bitcast %struct.InternalFormatSpec* %format to i8*, !dbg !1752
  call void @llvm.lifetime.start(i64 48, i8* %0) #1, !dbg !1752
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !447, metadata !858), !dbg !1753
  %cmp = icmp eq i64 %start, %end, !dbg !1754
  br i1 %cmp, label %if.then, label %if.end, !dbg !1756

if.then:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1757
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1757, !tbaa !871
  %cmp4 = icmp eq %struct._typeobject* %1, @PyLong_Type, !dbg !1757
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1760

if.then.5:                                        ; preds = %if.then
  %call = tail call i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, i32 10, i32 0) #1, !dbg !1761
  br label %cleanup, !dbg !1762

if.else:                                          ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !478, metadata !858) #1, !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !479, metadata !858) #1, !dbg !1765
  %call.i = tail call %struct._object* @PyObject_Str(%struct._object* %obj) #1, !dbg !1766
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !480, metadata !858) #1, !dbg !1767
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1768
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1769

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %call.i) #1, !dbg !1770
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !481, metadata !858) #1, !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !482, metadata !858) #1, !dbg !1772
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1773
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1773, !tbaa !894
  %dec.i = add i64 %2, -1, !dbg !1773
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1773, !tbaa !894
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1773
  br i1 %cmp2.i, label %if.else.i, label %cleanup, !dbg !1774

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1775
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1775, !tbaa !871
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1775
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1775, !tbaa !898
  tail call void %4(%struct._object* %call.i) #1, !dbg !1775
  br label %cleanup, !dbg !1776

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !446, metadata !858), !dbg !1777
  %call7 = call fastcc i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* nonnull %format, i8 signext 100, i8 signext 62), !dbg !1778
  %tobool = icmp eq i32 %call7, 0, !dbg !1778
  br i1 %tobool, label %cleanup, label %if.end.9, !dbg !1780

if.end.9:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !1781
  %5 = load i32, i32* %type, align 8, !dbg !1782, !tbaa !908
  switch i32 %5, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 111, label %sw.bb
    i32 120, label %sw.bb
    i32 88, label %sw.bb
    i32 110, label %sw.bb
    i32 101, label %sw.bb.11
    i32 69, label %sw.bb.11
    i32 102, label %sw.bb.11
    i32 70, label %sw.bb.11
    i32 103, label %sw.bb.11
    i32 71, label %sw.bb.11
    i32 37, label %sw.bb.11
  ], !dbg !1785

sw.bb:                                            ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !446, metadata !858), !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !569, metadata !858) #1, !dbg !1786
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !570, metadata !858) #1, !dbg !1787
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !571, metadata !858) #1, !dbg !1788
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !572, metadata !858) #1, !dbg !1789
  %6 = bitcast i32* %maxchar.i to i8*, !dbg !1790
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !1790
  tail call void @llvm.dbg.value(metadata i32 127, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  store i32 127, i32* %maxchar.i, align 4, !dbg !1791, !tbaa !1163
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !574, metadata !858) #1, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !576, metadata !858) #1, !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !578, metadata !858) #1, !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !579, metadata !858) #1, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !581, metadata !858) #1, !dbg !1796
  %7 = bitcast %struct.NumberFieldWidths* %spec.i to i8*, !dbg !1797
  call void @llvm.lifetime.start(i64 88, i8* %7) #1, !dbg !1797
  %8 = bitcast %struct.LocaleInfo* %locale.i to i8*, !dbg !1798
  call void @llvm.lifetime.start(i64 24, i8* %8) #1, !dbg !1798
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false) #1, !dbg !1799
  %precision.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 6, !dbg !1800
  %9 = load i64, i64* %precision.i, align 8, !dbg !1800, !tbaa !960
  %cmp.i.81 = icmp eq i64 %9, -1, !dbg !1802
  br i1 %cmp.i.81, label %if.end.i.82, label %if.then.i, !dbg !1803

if.then.i:                                        ; preds = %sw.bb
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1804, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1806
  br label %if.end.232.i, !dbg !1807

if.end.i.82:                                      ; preds = %sw.bb
  switch i32 %5, label %sw.bb.34.i [
    i32 99, label %if.then.12.i
    i32 98, label %sw.epilog.i
    i32 111, label %sw.bb.32.i
    i32 120, label %sw.bb.33.i
    i32 88, label %sw.bb.33.i
  ], !dbg !1808

if.then.12.i:                                     ; preds = %if.end.i.82
  %sign.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !1809
  %11 = load i32, i32* %sign.i, align 4, !dbg !1809, !tbaa !924
  %cmp13.i = icmp eq i32 %11, 0, !dbg !1812
  br i1 %cmp13.i, label %if.end.15.i, label %if.then.14.i, !dbg !1813

if.then.14.i:                                     ; preds = %if.then.12.i
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1814, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0)) #1, !dbg !1816
  br label %if.end.232.i, !dbg !1817

if.end.15.i:                                      ; preds = %if.then.12.i
  %call.i.83 = tail call i64 @PyLong_AsLong(%struct._object* %obj) #1, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %call.i.83, i64 0, metadata !597, metadata !858) #1, !dbg !1819
  %cmp16.i = icmp eq i64 %call.i.83, -1, !dbg !1820
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.end.19.i, !dbg !1822

land.lhs.true.i:                                  ; preds = %if.end.15.i
  %call17.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1823
  %tobool.i = icmp eq %struct._object* %call17.i, null, !dbg !1823
  br i1 %tobool.i, label %if.then.22.i, label %if.end.232.i, !dbg !1825

if.end.19.i:                                      ; preds = %if.end.15.i
  %13 = icmp ugt i64 %call.i.83, 1114111, !dbg !1826
  br i1 %13, label %if.then.22.i, label %if.end.175.i.thread, !dbg !1826

if.then.22.i:                                     ; preds = %if.end.19.i, %land.lhs.true.i
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1828, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #1, !dbg !1830
  br label %if.end.232.i, !dbg !1831

if.end.175.i.thread:                              ; preds = %if.end.19.i
  %conv.i = trunc i64 %call.i.83 to i32, !dbg !1832
  %call24.i = tail call %struct._object* @PyUnicode_FromOrdinal(i32 %conv.i) #1, !dbg !1833
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !574, metadata !858) #1, !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !575, metadata !858) #1, !dbg !1834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !577, metadata !858) #1, !dbg !1835
  tail call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  %cmp26.i = icmp ult i32 %conv.i, 127, !dbg !1836
  %cond.i = select i1 %cmp26.i, i32 127, i32 %conv.i, !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %cond.i, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  store i32 %cond.i, i32* %maxchar.i, align 4, !dbg !1837, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !578, metadata !858) #1, !dbg !1794
  br label %cond.false.180.i, !dbg !1840

sw.bb.32.i:                                       ; preds = %if.end.i.82
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !605, metadata !858) #1, !dbg !1842
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !608, metadata !858) #1, !dbg !1843
  br label %sw.epilog.i, !dbg !1844

sw.bb.33.i:                                       ; preds = %if.end.i.82, %if.end.i.82
  tail call void @llvm.dbg.value(metadata i32 16, i64 0, metadata !605, metadata !858) #1, !dbg !1842
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !608, metadata !858) #1, !dbg !1843
  br label %sw.epilog.i, !dbg !1846

sw.bb.34.i:                                       ; preds = %if.end.i.82
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !605, metadata !858) #1, !dbg !1842
  br label %sw.epilog.i, !dbg !1847

sw.epilog.i:                                      ; preds = %sw.bb.34.i, %sw.bb.33.i, %sw.bb.32.i, %if.end.i.82
  %base.0.i = phi i32 [ 10, %sw.bb.34.i ], [ 16, %sw.bb.33.i ], [ 8, %sw.bb.32.i ], [ 2, %if.end.i.82 ], !dbg !1848
  %leading_chars_to_skip.0.i = phi i32 [ 0, %sw.bb.34.i ], [ 2, %sw.bb.33.i ], [ 2, %sw.bb.32.i ], [ 2, %if.end.i.82 ], !dbg !1848
  %sign35.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !1849
  %15 = load i32, i32* %sign35.i, align 4, !dbg !1849, !tbaa !924
  switch i32 %15, label %land.lhs.true.42.i [
    i32 43, label %if.end.60.i
    i32 32, label %if.end.60.i
  ], !dbg !1851

land.lhs.true.42.i:                               ; preds = %sw.epilog.i
  %width.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !1852
  %16 = load i64, i64* %width.i, align 8, !dbg !1852, !tbaa !954
  %cmp43.i = icmp eq i64 %16, -1, !dbg !1853
  br i1 %cmp43.i, label %land.lhs.true.45.i, label %if.end.60.i, !dbg !1854

land.lhs.true.45.i:                               ; preds = %land.lhs.true.42.i
  switch i32 %5, label %land.lhs.true.53.i [
    i32 88, label %if.end.60.i
    i32 110, label %if.end.60.i
  ], !dbg !1855

land.lhs.true.53.i:                               ; preds = %land.lhs.true.45.i
  %thousands_separators.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !1856
  %17 = load i32, i32* %thousands_separators.i, align 8, !dbg !1856, !tbaa !1104
  %tobool54.i = icmp eq i32 %17, 0, !dbg !1857
  br i1 %tobool54.i, label %land.lhs.true.55.i, label %if.end.60.i, !dbg !1858

land.lhs.true.55.i:                               ; preds = %land.lhs.true.53.i
  %ob_type.i.84 = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !1859
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.84, align 8, !dbg !1859, !tbaa !871
  %cmp56.i = icmp eq %struct._typeobject* %18, @PyLong_Type, !dbg !1859
  br i1 %cmp56.i, label %cleanup.thread331.i, label %if.end.60.i, !dbg !1861

cleanup.thread331.i:                              ; preds = %land.lhs.true.55.i
  %alternate.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !1862
  %19 = load i32, i32* %alternate.i, align 8, !dbg !1862, !tbaa !934
  %call59.i = tail call i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, i32 %base.0.i, i32 %19) #1, !dbg !1864
  br label %format_long_internal.exit, !dbg !1848

if.end.60.i:                                      ; preds = %land.lhs.true.55.i, %land.lhs.true.53.i, %land.lhs.true.45.i, %land.lhs.true.45.i, %land.lhs.true.42.i, %sw.epilog.i, %sw.epilog.i
  %alternate61.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !1865
  %20 = load i32, i32* %alternate61.i, align 8, !dbg !1865, !tbaa !934
  %tobool62.i = icmp eq i32 %20, 0, !dbg !1867
  %conv64.327.i = zext i32 %leading_chars_to_skip.0.i to i64, !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %conv64.327.i, i64 0, metadata !579, metadata !858) #1, !dbg !1795
  %.conv64.327.i = select i1 %tobool62.i, i64 0, i64 %conv64.327.i, !dbg !1869
  %call66.i = tail call %struct._object* @_PyLong_Format(%struct._object* %obj, i32 %base.0.i) #1, !dbg !1870
  tail call void @llvm.dbg.value(metadata %struct._object* %call66.i, i64 0, metadata !574, metadata !858) #1, !dbg !1792
  %cmp67.i = icmp eq %struct._object* %call66.i, null, !dbg !1871
  br i1 %cmp67.i, label %if.end.232.i, label %lor.lhs.false.69.i, !dbg !1873

lor.lhs.false.69.i:                               ; preds = %if.end.60.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call66.i, i64 2, !dbg !1874
  %21 = bitcast %struct._object* %state.i to i32*, !dbg !1874
  %bf.load.i = load i32, i32* %21, align 4, !dbg !1874
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !1874
  %tobool70.i = icmp eq i32 %bf.clear.i, 0, !dbg !1874
  br i1 %tobool70.i, label %cond.end.74.i, label %if.end.79.i, !dbg !1874

cond.end.74.i:                                    ; preds = %lor.lhs.false.69.i
  %call73.i = tail call i32 @_PyUnicode_Ready(%struct._object* %call66.i) #1, !dbg !1876
  %cmp76.i = icmp eq i32 %call73.i, -1, !dbg !1878
  br i1 %cmp76.i, label %do.body.224.i, label %cond.end.74.if.end.79_crit_edge.i, !dbg !1881

cond.end.74.if.end.79_crit_edge.i:                ; preds = %cond.end.74.i
  %bf.load81.pre.i = load i32, i32* %21, align 4, !dbg !1882
  br label %if.end.79.i, !dbg !1881

if.end.79.i:                                      ; preds = %cond.end.74.if.end.79_crit_edge.i, %lor.lhs.false.69.i
  %bf.load81.i = phi i32 [ %bf.load81.pre.i, %cond.end.74.if.end.79_crit_edge.i ], [ %bf.load.i, %lor.lhs.false.69.i ], !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !575, metadata !858) #1, !dbg !1834
  %22 = getelementptr inbounds %struct._object, %struct._object* %call66.i, i64 1, i32 0, !dbg !1884
  %23 = load i64, i64* %22, align 8, !dbg !1884, !tbaa !918
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !577, metadata !858) #1, !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !581, metadata !858) #1, !dbg !1796
  %bf.lshr82.i = lshr i32 %bf.load81.i, 2, !dbg !1882
  %bf.clear83.i = and i32 %bf.lshr82.i, 7, !dbg !1882
  %cmp84.i = icmp eq i32 %bf.clear83.i, 1, !dbg !1882
  br i1 %cmp84.i, label %cond.true.86.i, label %cond.false.107.i, !dbg !1882

cond.true.86.i:                                   ; preds = %if.end.79.i
  %bf.clear90.i = and i32 %bf.load81.i, 32, !dbg !1885
  %tobool91.i = icmp eq i32 %bf.clear90.i, 0, !dbg !1885
  br i1 %tobool91.i, label %cond.false.103.i, label %cond.true.92.i, !dbg !1885

cond.true.92.i:                                   ; preds = %cond.true.86.i
  %bf.clear96.i = and i32 %bf.load81.i, 64, !dbg !1887
  %tobool97.i = icmp ne i32 %bf.clear96.i, 0, !dbg !1887
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call66.i, i64 3, !dbg !1889
  %24 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !1889
  %add.ptr100.i = getelementptr %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1891
  %25 = bitcast %struct._typeobject** %add.ptr100.i to i8*, !dbg !1891
  %cond102.i = select i1 %tobool97.i, i8* %24, i8* %25, !dbg !1887
  br label %cond.end.104.i, !dbg !1887

cond.false.103.i:                                 ; preds = %cond.true.86.i
  %data.i = getelementptr inbounds %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1893
  %any.i = bitcast %struct._typeobject** %data.i to i8**, !dbg !1893
  %26 = load i8*, i8** %any.i, align 8, !dbg !1893, !tbaa !929
  br label %cond.end.104.i, !dbg !1893

cond.end.104.i:                                   ; preds = %cond.false.103.i, %cond.true.92.i
  %cond105.i = phi i8* [ %26, %cond.false.103.i ], [ %cond102.i, %cond.true.92.i ], !dbg !1882
  %27 = load i8, i8* %cond105.i, align 1, !dbg !1895, !tbaa !1132
  %conv106.i = zext i8 %27 to i32, !dbg !1895
  br label %if.end.175.i, !dbg !1895

cond.false.107.i:                                 ; preds = %if.end.79.i
  %cmp112.i = icmp eq i32 %bf.clear83.i, 2, !dbg !1898
  %bf.clear118.i = and i32 %bf.load81.i, 32, !dbg !1900
  %tobool119.i = icmp ne i32 %bf.clear118.i, 0, !dbg !1900
  br i1 %cmp112.i, label %cond.true.114.i, label %cond.false.139.i, !dbg !1898

cond.true.114.i:                                  ; preds = %cond.false.107.i
  br i1 %tobool119.i, label %cond.true.120.i, label %cond.false.132.i, !dbg !1900

cond.true.120.i:                                  ; preds = %cond.true.114.i
  %bf.clear124.i = and i32 %bf.load81.i, 64, !dbg !1902
  %tobool125.i = icmp ne i32 %bf.clear124.i, 0, !dbg !1902
  %add.ptr127.i = getelementptr %struct._object, %struct._object* %call66.i, i64 3, !dbg !1904
  %28 = bitcast %struct._object* %add.ptr127.i to i8*, !dbg !1904
  %add.ptr129.i = getelementptr %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1906
  %29 = bitcast %struct._typeobject** %add.ptr129.i to i8*, !dbg !1906
  %cond131.i = select i1 %tobool125.i, i8* %28, i8* %29, !dbg !1902
  br label %cond.end.135.i, !dbg !1902

cond.false.132.i:                                 ; preds = %cond.true.114.i
  %data133.i = getelementptr inbounds %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1908
  %any134.i = bitcast %struct._typeobject** %data133.i to i8**, !dbg !1908
  %30 = load i8*, i8** %any134.i, align 8, !dbg !1908, !tbaa !929
  br label %cond.end.135.i, !dbg !1908

cond.end.135.i:                                   ; preds = %cond.false.132.i, %cond.true.120.i
  %cond136.i = phi i8* [ %30, %cond.false.132.i ], [ %cond131.i, %cond.true.120.i ], !dbg !1882
  %31 = bitcast i8* %cond136.i to i16*, !dbg !1910
  %32 = load i16, i16* %31, align 2, !dbg !1910, !tbaa !1148
  %conv138.i = zext i16 %32 to i32, !dbg !1910
  br label %if.end.175.i, !dbg !1910

cond.false.139.i:                                 ; preds = %cond.false.107.i
  br i1 %tobool119.i, label %cond.true.145.i, label %cond.false.157.i, !dbg !1913

cond.true.145.i:                                  ; preds = %cond.false.139.i
  %bf.clear149.i = and i32 %bf.load81.i, 64, !dbg !1915
  %tobool150.i = icmp ne i32 %bf.clear149.i, 0, !dbg !1915
  %add.ptr152.i = getelementptr %struct._object, %struct._object* %call66.i, i64 3, !dbg !1917
  %33 = bitcast %struct._object* %add.ptr152.i to i8*, !dbg !1917
  %add.ptr154.i = getelementptr %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1919
  %34 = bitcast %struct._typeobject** %add.ptr154.i to i8*, !dbg !1919
  %cond156.i = select i1 %tobool150.i, i8* %33, i8* %34, !dbg !1915
  br label %cond.end.160.i, !dbg !1915

cond.false.157.i:                                 ; preds = %cond.false.139.i
  %data158.i = getelementptr inbounds %struct._object, %struct._object* %call66.i, i64 4, i32 1, !dbg !1921
  %any159.i = bitcast %struct._typeobject** %data158.i to i8**, !dbg !1921
  %35 = load i8*, i8** %any159.i, align 8, !dbg !1921, !tbaa !929
  br label %cond.end.160.i, !dbg !1921

cond.end.160.i:                                   ; preds = %cond.false.157.i, %cond.true.145.i
  %cond161.i = phi i8* [ %35, %cond.false.157.i ], [ %cond156.i, %cond.true.145.i ], !dbg !1882
  %36 = bitcast i8* %cond161.i to i32*, !dbg !1923
  %37 = load i32, i32* %36, align 4, !dbg !1923, !tbaa !1163
  br label %if.end.175.i, !dbg !1923

if.end.175.i:                                     ; preds = %cond.end.104.i, %cond.end.135.i, %cond.end.160.i
  %cond166.i = phi i32 [ %conv106.i, %cond.end.104.i ], [ %conv138.i, %cond.end.135.i ], [ %37, %cond.end.160.i ], !dbg !1882
  %cmp167.i = icmp eq i32 %cond166.i, 45, !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 45, i64 0, metadata !576, metadata !858) #1, !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !581, metadata !858) #1, !dbg !1796
  %..i = select i1 %cmp167.i, i32 45, i32 0, !dbg !1929
  %.328.i = zext i1 %cmp167.i to i64, !dbg !1929
  %inc170.i = zext i1 %cmp167.i to i32, !dbg !1929
  %inc170.leading_chars_to_skip.0.i = or i32 %inc170.i, %leading_chars_to_skip.0.i, !dbg !1929
  %conv172.339.i = zext i32 %inc170.leading_chars_to_skip.0.i to i64, !dbg !1930
  %sub.i = sub i64 %23, %conv172.339.i, !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !577, metadata !858) #1, !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %conv172.339.i, i64 0, metadata !575, metadata !858) #1, !dbg !1834
  %cmp177.i = icmp eq i32 %5, 110, !dbg !1932
  br i1 %cmp177.i, label %cond.end.184.i, label %cond.false.180.i, !dbg !1840

cond.false.180.i:                                 ; preds = %if.end.175.i.thread, %if.end.175.i
  %tmp.1.i106 = phi %struct._object* [ %call24.i, %if.end.175.i.thread ], [ %call66.i, %if.end.175.i ]
  %prefix.2.i104 = phi i64 [ 0, %if.end.175.i.thread ], [ %.328.i, %if.end.175.i ]
  %inumeric_chars.1.i102 = phi i64 [ 0, %if.end.175.i.thread ], [ %conv172.339.i, %if.end.175.i ]
  %n_prefix.2.i100 = phi i64 [ 0, %if.end.175.i.thread ], [ %.conv64.327.i, %if.end.175.i ]
  %n_remainder.0.i98 = phi i64 [ 1, %if.end.175.i.thread ], [ 0, %if.end.175.i ]
  %n_digits.1.i96 = phi i64 [ 1, %if.end.175.i.thread ], [ %sub.i, %if.end.175.i ]
  %sign_char.2.i94 = phi i32 [ 0, %if.end.175.i.thread ], [ %..i, %if.end.175.i ]
  %thousands_separators181.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !1933
  %38 = load i32, i32* %thousands_separators181.i, align 8, !dbg !1933, !tbaa !1104
  %tobool182.i = icmp ne i32 %38, 0, !dbg !1934
  %cond183.i = select i1 %tobool182.i, i32 1, i32 2, !dbg !1934
  br label %cond.end.184.i, !dbg !1840

cond.end.184.i:                                   ; preds = %cond.false.180.i, %if.end.175.i
  %tmp.1.i107 = phi %struct._object* [ %tmp.1.i106, %cond.false.180.i ], [ %call66.i, %if.end.175.i ]
  %prefix.2.i105 = phi i64 [ %prefix.2.i104, %cond.false.180.i ], [ %.328.i, %if.end.175.i ]
  %inumeric_chars.1.i103 = phi i64 [ %inumeric_chars.1.i102, %cond.false.180.i ], [ %conv172.339.i, %if.end.175.i ]
  %n_prefix.2.i101 = phi i64 [ %n_prefix.2.i100, %cond.false.180.i ], [ %.conv64.327.i, %if.end.175.i ]
  %n_remainder.0.i99 = phi i64 [ %n_remainder.0.i98, %cond.false.180.i ], [ 0, %if.end.175.i ]
  %n_digits.1.i97 = phi i64 [ %n_digits.1.i96, %cond.false.180.i ], [ %sub.i, %if.end.175.i ]
  %sign_char.2.i95 = phi i32 [ %sign_char.2.i94, %cond.false.180.i ], [ %..i, %if.end.175.i ]
  %cond185.i = phi i32 [ %cond183.i, %cond.false.180.i ], [ 0, %if.end.175.i ], !dbg !1840
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !598, metadata !858) #1, !dbg !1799
  %call186.i = call fastcc i32 @get_locale_info(i32 %cond185.i, %struct.LocaleInfo* nonnull %locale.i) #1, !dbg !1935
  %cmp187.i = icmp eq i32 %call186.i, -1, !dbg !1938
  br i1 %cmp187.i, label %do.body.i, label %if.end.190.i, !dbg !1939

if.end.190.i:                                     ; preds = %cond.end.184.i
  %add191.i = add i64 %inumeric_chars.1.i103, %n_digits.1.i97, !dbg !1940
  tail call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  tail call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %spec.i, i64 0, metadata !582, metadata !858) #1, !dbg !1941
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !598, metadata !858) #1, !dbg !1799
  %call192.i = call fastcc i64 @calc_number_widths(%struct.NumberFieldWidths* nonnull %spec.i, i64 %n_prefix.2.i101, i32 %sign_char.2.i95, i64 %inumeric_chars.1.i103, i64 %add191.i, i64 %n_remainder.0.i99, i32 0, %struct.LocaleInfo* nonnull %locale.i, %struct.InternalFormatSpec* nonnull %format, i32* nonnull %maxchar.i) #1, !dbg !1942
  tail call void @llvm.dbg.value(metadata i64 %call192.i, i64 0, metadata !580, metadata !858) #1, !dbg !1943
  tail call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  %39 = load i32, i32* %maxchar.i, align 4, !dbg !1944, !tbaa !1163
  %maxchar193.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 3, !dbg !1947
  %40 = load i32, i32* %maxchar193.i, align 4, !dbg !1947, !tbaa !998
  %cmp194.i = icmp ugt i32 %39, %40, !dbg !1947
  br i1 %cmp194.i, label %cond.false.201.i, label %land.lhs.true.196.i, !dbg !1947

land.lhs.true.196.i:                              ; preds = %if.end.190.i
  %size.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 4, !dbg !1948
  %41 = load i64, i64* %size.i, align 8, !dbg !1948, !tbaa !1024
  %pos.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !1948
  %42 = load i64, i64* %pos.i, align 8, !dbg !1948, !tbaa !1025
  %sub197.i = sub i64 %41, %42, !dbg !1948
  %cmp198.i = icmp sle i64 %call192.i, %sub197.i, !dbg !1948
  %cmp202.i = icmp eq i64 %call192.i, 0, !dbg !1950
  %or.cond248.i = or i1 %cmp202.i, %cmp198.i, !dbg !1948
  br i1 %or.cond248.i, label %if.end.214.i, label %cond.false.205.i, !dbg !1948

cond.false.201.i:                                 ; preds = %if.end.190.i
  %cmp202.old.i = icmp eq i64 %call192.i, 0, !dbg !1950
  br i1 %cmp202.old.i, label %if.end.214.i, label %cond.false.205.i, !dbg !1950

cond.false.205.i:                                 ; preds = %cond.false.201.i, %land.lhs.true.196.i
  tail call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !573, metadata !858) #1, !dbg !1791
  %call206.i = tail call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %writer, i64 %call192.i, i32 %39) #1, !dbg !1944
  %phitmp.i = icmp eq i32 %call206.i, -1, !dbg !1944
  br i1 %phitmp.i, label %do.body.i, label %if.end.214.i, !dbg !1953

if.end.214.i:                                     ; preds = %cond.false.205.i, %cond.false.201.i, %land.lhs.true.196.i
  %fill_char.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !1954
  %43 = load i32, i32* %fill_char.i, align 8, !dbg !1954, !tbaa !1004
  %cmp217.i = icmp eq i32 %5, 88, !dbg !1955
  %conv218.i = zext i1 %cmp217.i to i32, !dbg !1955
  tail call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %spec.i, i64 0, metadata !582, metadata !858) #1, !dbg !1941
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !598, metadata !858) #1, !dbg !1799
  %call219.i = call fastcc i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* nonnull %spec.i, %struct._object* %tmp.1.i107, i64 %inumeric_chars.1.i103, %struct._object* %tmp.1.i107, i64 %prefix.2.i105, i32 %43, %struct.LocaleInfo* nonnull %locale.i, i32 %conv218.i) #1, !dbg !1956
  tail call void @llvm.dbg.value(metadata i32 %call219.i, i64 0, metadata !572, metadata !858) #1, !dbg !1789
  br label %do.body.i, !dbg !1957

do.body.i:                                        ; preds = %if.end.214.i, %cond.false.205.i, %cond.end.184.i
  %result.0.i = phi i32 [ -1, %cond.end.184.i ], [ -1, %cond.false.205.i ], [ %call219.i, %if.end.214.i ], !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct._object* %call66.i, i64 0, metadata !609, metadata !858) #1, !dbg !1958
  %cmp221.i = icmp eq %struct._object* %tmp.1.i107, null, !dbg !1960
  br i1 %cmp221.i, label %if.end.232.i, label %do.body.224.i, !dbg !1961

do.body.224.i:                                    ; preds = %do.body.i, %cond.end.74.i
  %result.0338.i = phi i32 [ %result.0.i, %do.body.i ], [ -1, %cond.end.74.i ], !dbg !1848
  %tmp.2337.i = phi %struct._object* [ %tmp.1.i107, %do.body.i ], [ %call66.i, %cond.end.74.i ], !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct._object* %call66.i, i64 0, metadata !611, metadata !858) #1, !dbg !1962
  %ob_refcnt.i.85 = getelementptr inbounds %struct._object, %struct._object* %tmp.2337.i, i64 0, i32 0, !dbg !1964
  %44 = load i64, i64* %ob_refcnt.i.85, align 8, !dbg !1964, !tbaa !894
  %dec.i.86 = add i64 %44, -1, !dbg !1964
  store i64 %dec.i.86, i64* %ob_refcnt.i.85, align 8, !dbg !1964, !tbaa !894
  %cmp226.i = icmp eq i64 %dec.i.86, 0, !dbg !1964
  br i1 %cmp226.i, label %if.else.229.i, label %if.end.232.i, !dbg !1966

if.else.229.i:                                    ; preds = %do.body.224.i
  %ob_type230.i = getelementptr inbounds %struct._object, %struct._object* %tmp.2337.i, i64 0, i32 1, !dbg !1967
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type230.i, align 8, !dbg !1967, !tbaa !871
  %tp_dealloc.i.87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1967
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.87, align 8, !dbg !1967, !tbaa !898
  tail call void %46(%struct._object* %tmp.2337.i) #1, !dbg !1967
  br label %if.end.232.i, !dbg !1848

if.end.232.i:                                     ; preds = %if.else.229.i, %do.body.224.i, %do.body.i, %if.end.60.i, %if.then.22.i, %land.lhs.true.i, %if.then.14.i, %if.then.i
  %result.0333.i = phi i32 [ %result.0338.i, %if.else.229.i ], [ %result.0338.i, %do.body.224.i ], [ %result.0.i, %do.body.i ], [ -1, %if.then.i ], [ -1, %if.then.14.i ], [ -1, %land.lhs.true.i ], [ -1, %if.then.22.i ], [ -1, %if.end.60.i ], !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !598, metadata !858) #1, !dbg !1799
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !749, metadata !858) #1, !dbg !1969
  %decimal_point.i.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale.i, i64 0, i32 0, !dbg !1971
  %47 = load %struct._object*, %struct._object** %decimal_point.i.i, align 8, !dbg !1971, !tbaa !1973
  tail call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !750, metadata !858) #1, !dbg !1971
  %cmp.i.i = icmp eq %struct._object* %47, null, !dbg !1975
  br i1 %cmp.i.i, label %if.end.4.i.i, label %do.body.1.i.i, !dbg !1976

do.body.1.i.i:                                    ; preds = %if.end.232.i
  tail call void @llvm.dbg.value(metadata %struct._object* %47, i64 0, metadata !752, metadata !858) #1, !dbg !1977
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 0, !dbg !1979
  %48 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1979, !tbaa !894
  %dec.i.i = add i64 %48, -1, !dbg !1979
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1979, !tbaa !894
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1979
  br i1 %cmp2.i.i, label %if.else.i.i, label %if.end.4.i.i, !dbg !1981

if.else.i.i:                                      ; preds = %do.body.1.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %47, i64 0, i32 1, !dbg !1982
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1982, !tbaa !871
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !1982
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1982, !tbaa !898
  tail call void %50(%struct._object* %47) #1, !dbg !1982
  br label %if.end.4.i.i, !dbg !1984

if.end.4.i.i:                                     ; preds = %if.else.i.i, %do.body.1.i.i, %if.end.232.i
  %thousands_sep.i.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale.i, i64 0, i32 1, !dbg !1985
  %51 = load %struct._object*, %struct._object** %thousands_sep.i.i, align 8, !dbg !1985, !tbaa !1987
  tail call void @llvm.dbg.value(metadata %struct._object* %51, i64 0, metadata !755, metadata !858) #1, !dbg !1985
  %cmp9.i.i = icmp eq %struct._object* %51, null, !dbg !1988
  br i1 %cmp9.i.i, label %format_long_internal.exit, label %do.body.11.i.i, !dbg !1989

do.body.11.i.i:                                   ; preds = %if.end.4.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %51, i64 0, metadata !757, metadata !858) #1, !dbg !1990
  %ob_refcnt13.i.i = getelementptr inbounds %struct._object, %struct._object* %51, i64 0, i32 0, !dbg !1992
  %52 = load i64, i64* %ob_refcnt13.i.i, align 8, !dbg !1992, !tbaa !894
  %dec14.i.i = add i64 %52, -1, !dbg !1992
  store i64 %dec14.i.i, i64* %ob_refcnt13.i.i, align 8, !dbg !1992, !tbaa !894
  %cmp15.i.i = icmp eq i64 %dec14.i.i, 0, !dbg !1992
  br i1 %cmp15.i.i, label %if.else.17.i.i, label %format_long_internal.exit, !dbg !1994

if.else.17.i.i:                                   ; preds = %do.body.11.i.i
  %ob_type18.i.i = getelementptr inbounds %struct._object, %struct._object* %51, i64 0, i32 1, !dbg !1995
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type18.i.i, align 8, !dbg !1995, !tbaa !871
  %tp_dealloc19.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i64 0, i32 4, !dbg !1995
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19.i.i, align 8, !dbg !1995, !tbaa !898
  tail call void %54(%struct._object* %51) #1, !dbg !1995
  br label %format_long_internal.exit, !dbg !1984

format_long_internal.exit:                        ; preds = %cleanup.thread331.i, %if.end.4.i.i, %do.body.11.i.i, %if.else.17.i.i
  %retval.1.i = phi i32 [ %call59.i, %cleanup.thread331.i ], [ %result.0333.i, %if.end.4.i.i ], [ %result.0333.i, %do.body.11.i.i ], [ %result.0333.i, %if.else.17.i.i ], !dbg !1848
  call void @llvm.lifetime.end(i64 24, i8* %8) #1, !dbg !1997
  call void @llvm.lifetime.end(i64 88, i8* %7) #1, !dbg !1997
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %retval.1.i, i64 0, metadata !447, metadata !858), !dbg !1753
  br label %cleanup, !dbg !1998

sw.bb.11:                                         ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %call12 = tail call %struct._object* @PyNumber_Float(%struct._object* %obj) #1, !dbg !1999
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !444, metadata !858), !dbg !1750
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !2000
  br i1 %cmp13, label %cleanup, label %do.body.22, !dbg !2002

sw.default:                                       ; preds = %if.end.9
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !2003
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !2003, !tbaa !871
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i64 0, i32 1, !dbg !2004
  %56 = load i8*, i8** %tp_name, align 8, !dbg !2004, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !565, metadata !858) #1, !dbg !2005
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !566, metadata !858) #1, !dbg !2007
  %presentation_type.off.i = add i32 %5, -33, !dbg !2008
  %57 = icmp ult i32 %presentation_type.off.i, 95, !dbg !2008
  %58 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2009, !tbaa !929
  br i1 %57, label %if.then.i.89, label %if.else.i.90, !dbg !2008

if.then.i.89:                                     ; preds = %sw.default
  %sext.i = shl i32 %5, 24, !dbg !2010
  %conv2.i = ashr exact i32 %sext.i, 24, !dbg !2010
  %call.i.88 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %conv2.i, i8* %56) #1, !dbg !2011
  br label %cleanup, !dbg !2011

if.else.i.90:                                     ; preds = %sw.default
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %5, i8* %56) #1, !dbg !2012
  br label %cleanup, !dbg !2013

do.body.22:                                       ; preds = %sw.bb.11
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !446, metadata !858), !dbg !1777
  %call16 = call fastcc i32 @format_float_internal(%struct._object* %call12, %struct.InternalFormatSpec* nonnull %format, %struct._PyUnicodeWriter* %writer), !dbg !2014
  tail call void @llvm.dbg.value(metadata i32 %call16, i64 0, metadata !447, metadata !858), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !448, metadata !858), !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !450, metadata !858), !dbg !2017
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2019
  %59 = load i64, i64* %ob_refcnt, align 8, !dbg !2019, !tbaa !894
  %dec = add i64 %59, -1, !dbg !2019
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2019, !tbaa !894
  %cmp24 = icmp eq i64 %dec, 0, !dbg !2019
  br i1 %cmp24, label %if.else.26, label %cleanup, !dbg !2021

if.else.26:                                       ; preds = %do.body.22
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2022
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !2022, !tbaa !871
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !2022
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2022, !tbaa !898
  tail call void %61(%struct._object* %call12) #1, !dbg !2022
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.90, %if.then.i.89, %if.end, %format_long_internal.exit, %sw.bb.11, %if.else.i, %if.end.i, %if.else, %if.else.26, %do.body.22, %if.then.5
  %retval.0 = phi i32 [ %call, %if.then.5 ], [ %call16, %do.body.22 ], [ %call16, %if.else.26 ], [ -1, %if.else ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], [ -1, %if.else.i.90 ], [ -1, %if.then.i.89 ], [ -1, %if.end ], [ %retval.1.i, %format_long_internal.exit ], [ -1, %sw.bb.11 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #1, !dbg !2024
  ret i32 %retval.0, !dbg !2024
}

declare i32 @_PyLong_FormatWriter(%struct._PyUnicodeWriter*, %struct._object*, i32, i32) #2

declare %struct._object* @PyNumber_Float(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @format_float_internal(%struct._object* %value, %struct.InternalFormatSpec* nocapture readonly %format, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %n_remainder = alloca i64, align 8
  %has_decimal = alloca i32, align 4
  %spec = alloca %struct.NumberFieldWidths, align 8
  %maxchar = alloca i32, align 4
  %float_type = alloca i32, align 4
  %locale = alloca %struct.LocaleInfo, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %value, i64 0, metadata !762, metadata !858), !dbg !2025
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !763, metadata !858), !dbg !2026
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !764, metadata !858), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !765, metadata !858), !dbg !2028
  %0 = bitcast i64* %n_remainder to i8*, !dbg !2029
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2029
  %1 = bitcast i32* %has_decimal to i8*, !dbg !2030
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !773, metadata !858), !dbg !2031
  %type1 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !2032
  %2 = load i32, i32* %type1, align 4, !dbg !2032, !tbaa !908
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !774, metadata !858), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !858), !dbg !2034
  %3 = bitcast %struct.NumberFieldWidths* %spec to i8*, !dbg !2035
  call void @llvm.lifetime.start(i64 88, i8* %3) #1, !dbg !2035
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !778, metadata !858), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !779, metadata !858), !dbg !2037
  %4 = bitcast i32* %maxchar to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2038
  tail call void @llvm.dbg.value(metadata i32 127, i64 0, metadata !780, metadata !858), !dbg !2039
  store i32 127, i32* %maxchar, align 4, !dbg !2039, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !781, metadata !858), !dbg !2040
  %5 = bitcast i32* %float_type to i8*, !dbg !2041
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2041
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !783, metadata !858), !dbg !2042
  %6 = bitcast %struct.LocaleInfo* %locale to i8*, !dbg !2043
  call void @llvm.lifetime.start(i64 24, i8* %6) #1, !dbg !2043
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false), !dbg !2044
  %precision2 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 6, !dbg !2045
  %7 = load i64, i64* %precision2, align 8, !dbg !2045, !tbaa !960
  %cmp = icmp sgt i64 %7, 2147483647, !dbg !2047
  br i1 %cmp, label %if.then, label %if.end, !dbg !2048

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2049, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2051
  br label %if.end.201, !dbg !2052

if.end:                                           ; preds = %entry
  %conv = trunc i64 %7 to i32, !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !772, metadata !858), !dbg !2054
  %alternate = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !2055
  %9 = load i32, i32* %alternate, align 4, !dbg !2055, !tbaa !934
  %tobool = icmp eq i32 %9, 0, !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !778, metadata !858), !dbg !2036
  %. = select i1 %tobool, i32 0, i32 4, !dbg !2058
  %cmp6 = icmp eq i32 %2, 0, !dbg !2059
  %or9 = or i32 %., 2, !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 %or9, i64 0, metadata !778, metadata !858), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 114, i64 0, metadata !774, metadata !858), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !773, metadata !858), !dbg !2031
  %default_precision.0 = select i1 %cmp6, i32 0, i32 6, !dbg !2063
  %type.0 = select i1 %cmp6, i32 114, i32 %2, !dbg !2063
  %flags.1 = select i1 %cmp6, i32 %or9, i32 %., !dbg !2063
  %cmp11 = icmp eq i32 %type.0, 110, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 103, i64 0, metadata !774, metadata !858), !dbg !2033
  %.type.0 = select i1 %cmp11, i32 103, i32 %type.0, !dbg !2066
  %call = tail call double @PyFloat_AsDouble(%struct._object* %value) #1, !dbg !2067
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !770, metadata !858), !dbg !2068
  %cmp15 = fcmp oeq double %call, -1.000000e+00, !dbg !2069
  br i1 %cmp15, label %land.lhs.true, label %if.end.20, !dbg !2071

land.lhs.true:                                    ; preds = %if.end
  %call17 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2072
  %tobool18 = icmp eq %struct._object* %call17, null, !dbg !2072
  br i1 %tobool18, label %if.end.20, label %if.end.201, !dbg !2074

if.end.20:                                        ; preds = %land.lhs.true, %if.end
  %cmp21 = icmp eq i32 %.type.0, 37, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 102, i64 0, metadata !774, metadata !858), !dbg !2033
  %mul = fmul double %call, 1.000000e+02, !dbg !2077
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !770, metadata !858), !dbg !2068
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !858), !dbg !2034
  %mul.call = select i1 %cmp21, double %mul, double %call, !dbg !2079
  %..type.0 = select i1 %cmp21, i32 102, i32 %.type.0, !dbg !2079
  %cmp25 = icmp slt i32 %conv, 0, !dbg !2080
  %cmp28 = icmp eq i32 %..type.0, 114, !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 103, i64 0, metadata !774, metadata !858), !dbg !2033
  %...type.0 = select i1 %cmp28, i32 103, i32 %..type.0, !dbg !2084
  %precision.0 = select i1 %cmp25, i32 %default_precision.0, i32 %conv, !dbg !2085
  %type.3 = select i1 %cmp25, i32 %..type.0, i32 %...type.0, !dbg !2085
  %conv33 = trunc i32 %type.3 to i8, !dbg !2086
  tail call void @llvm.dbg.value(metadata i32* %float_type, i64 0, metadata !782, metadata !858), !dbg !2087
  %call34 = call i8* @PyOS_double_to_string(double %mul.call, i8 signext %conv33, i32 %precision.0, i32 %flags.1, i32* nonnull %float_type) #1, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %call34, i64 0, metadata !765, metadata !858), !dbg !2028
  %cmp35 = icmp eq i8* %call34, null, !dbg !2089
  br i1 %cmp35, label %if.end.201, label %if.end.38, !dbg !2091

if.end.38:                                        ; preds = %if.end.20
  %call39 = call i64 @strlen(i8* %call34) #7, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %call39, i64 0, metadata !766, metadata !858), !dbg !2093
  br i1 %cmp21, label %if.then.41, label %if.end.42, !dbg !2094

if.then.41:                                       ; preds = %if.end.38
  %arrayidx = getelementptr i8, i8* %call34, i64 %call39, !dbg !2095
  store i8 37, i8* %arrayidx, align 1, !dbg !2098, !tbaa !1132
  %add = add i64 %call39, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !766, metadata !858), !dbg !2093
  br label %if.end.42, !dbg !2100

if.end.42:                                        ; preds = %if.end.38, %if.then.41
  %n_digits.0 = phi i64 [ %add, %if.then.41 ], [ %call39, %if.end.38 ]
  %sign = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !2101
  %10 = load i32, i32* %sign, align 4, !dbg !2101, !tbaa !924
  switch i32 %10, label %land.lhs.true.49 [
    i32 43, label %if.end.60
    i32 32, label %if.end.60
  ], !dbg !2103

land.lhs.true.49:                                 ; preds = %if.end.42
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !2104
  %11 = load i64, i64* %width, align 8, !dbg !2104, !tbaa !954
  %cmp50 = icmp eq i64 %11, -1, !dbg !2105
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.60, !dbg !2106

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %12 = load i32, i32* %type1, align 4, !dbg !2107, !tbaa !908
  %cmp54 = icmp eq i32 %12, 110, !dbg !2108
  br i1 %cmp54, label %if.end.60, label %land.lhs.true.56, !dbg !2109

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %thousands_separators = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !2110
  %13 = load i32, i32* %thousands_separators, align 4, !dbg !2110, !tbaa !1104
  %tobool57 = icmp eq i32 %13, 0, !dbg !2111
  br i1 %tobool57, label %if.then.58, label %if.end.60, !dbg !2112

if.then.58:                                       ; preds = %land.lhs.true.56
  %call59 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* %writer, i8* %call34, i64 %n_digits.0) #1, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %call59, i64 0, metadata !779, metadata !858), !dbg !2037
  call void @PyMem_Free(i8* %call34) #1, !dbg !2115
  br label %cleanup, !dbg !2116

if.end.60:                                        ; preds = %if.end.42, %if.end.42, %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true.49
  %call61 = call %struct._object* @_PyUnicode_FromASCII(i8* %call34, i64 %n_digits.0) #1, !dbg !2117
  call void @llvm.dbg.value(metadata %struct._object* %call61, i64 0, metadata !783, metadata !858), !dbg !2042
  call void @PyMem_Free(i8* %call34) #1, !dbg !2118
  %cmp62 = icmp eq %struct._object* %call61, null, !dbg !2119
  br i1 %cmp62, label %if.end.201, label %if.end.65, !dbg !2121

if.end.65:                                        ; preds = %if.end.60
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !776, metadata !858), !dbg !2122
  %state = getelementptr inbounds %struct._object, %struct._object* %call61, i64 2, !dbg !2123
  %14 = bitcast %struct._object* %state to i32*, !dbg !2123
  %bf.load = load i32, i32* %14, align 4, !dbg !2123
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2123
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2123
  %cmp66 = icmp eq i32 %bf.clear, 1, !dbg !2123
  br i1 %cmp66, label %cond.true, label %cond.false.86, !dbg !2123

cond.true:                                        ; preds = %if.end.65
  %bf.clear71 = and i32 %bf.load, 32, !dbg !2125
  %tobool72 = icmp eq i32 %bf.clear71, 0, !dbg !2125
  br i1 %tobool72, label %cond.false.81, label %cond.true.73, !dbg !2125

cond.true.73:                                     ; preds = %cond.true
  %bf.clear77 = and i32 %bf.load, 64, !dbg !2127
  %tobool78 = icmp ne i32 %bf.clear77, 0, !dbg !2127
  %add.ptr = getelementptr %struct._object, %struct._object* %call61, i64 3, !dbg !2129
  %15 = bitcast %struct._object* %add.ptr to i8*, !dbg !2129
  %add.ptr80 = getelementptr %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2131
  %16 = bitcast %struct._typeobject** %add.ptr80 to i8*, !dbg !2131
  %cond = select i1 %tobool78, i8* %15, i8* %16, !dbg !2127
  br label %cond.end.82, !dbg !2127

cond.false.81:                                    ; preds = %cond.true
  %data = getelementptr inbounds %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2133
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !2133
  %17 = load i8*, i8** %any, align 8, !dbg !2133, !tbaa !929
  br label %cond.end.82, !dbg !2133

cond.end.82:                                      ; preds = %cond.true.73, %cond.false.81
  %cond83 = phi i8* [ %17, %cond.false.81 ], [ %cond, %cond.true.73 ], !dbg !2123
  %18 = load i8, i8* %cond83, align 1, !dbg !2135, !tbaa !1132
  %conv85 = zext i8 %18 to i32, !dbg !2135
  br label %cond.end.144, !dbg !2135

cond.false.86:                                    ; preds = %if.end.65
  %cmp91 = icmp eq i32 %bf.clear, 2, !dbg !2138
  %bf.clear97 = and i32 %bf.load, 32, !dbg !2140
  %tobool98 = icmp ne i32 %bf.clear97, 0, !dbg !2140
  br i1 %cmp91, label %cond.true.93, label %cond.false.118, !dbg !2138

cond.true.93:                                     ; preds = %cond.false.86
  br i1 %tobool98, label %cond.true.99, label %cond.false.111, !dbg !2140

cond.true.99:                                     ; preds = %cond.true.93
  %bf.clear103 = and i32 %bf.load, 64, !dbg !2142
  %tobool104 = icmp ne i32 %bf.clear103, 0, !dbg !2142
  %add.ptr106 = getelementptr %struct._object, %struct._object* %call61, i64 3, !dbg !2144
  %19 = bitcast %struct._object* %add.ptr106 to i8*, !dbg !2144
  %add.ptr108 = getelementptr %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2146
  %20 = bitcast %struct._typeobject** %add.ptr108 to i8*, !dbg !2146
  %cond110 = select i1 %tobool104, i8* %19, i8* %20, !dbg !2142
  br label %cond.end.114, !dbg !2142

cond.false.111:                                   ; preds = %cond.true.93
  %data112 = getelementptr inbounds %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2148
  %any113 = bitcast %struct._typeobject** %data112 to i8**, !dbg !2148
  %21 = load i8*, i8** %any113, align 8, !dbg !2148, !tbaa !929
  br label %cond.end.114, !dbg !2148

cond.end.114:                                     ; preds = %cond.true.99, %cond.false.111
  %cond115 = phi i8* [ %21, %cond.false.111 ], [ %cond110, %cond.true.99 ], !dbg !2123
  %22 = bitcast i8* %cond115 to i16*, !dbg !2150
  %23 = load i16, i16* %22, align 2, !dbg !2150, !tbaa !1148
  %conv117 = zext i16 %23 to i32, !dbg !2150
  br label %cond.end.144, !dbg !2150

cond.false.118:                                   ; preds = %cond.false.86
  br i1 %tobool98, label %cond.true.124, label %cond.false.136, !dbg !2153

cond.true.124:                                    ; preds = %cond.false.118
  %bf.clear128 = and i32 %bf.load, 64, !dbg !2155
  %tobool129 = icmp ne i32 %bf.clear128, 0, !dbg !2155
  %add.ptr131 = getelementptr %struct._object, %struct._object* %call61, i64 3, !dbg !2157
  %24 = bitcast %struct._object* %add.ptr131 to i8*, !dbg !2157
  %add.ptr133 = getelementptr %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2159
  %25 = bitcast %struct._typeobject** %add.ptr133 to i8*, !dbg !2159
  %cond135 = select i1 %tobool129, i8* %24, i8* %25, !dbg !2155
  br label %cond.end.139, !dbg !2155

cond.false.136:                                   ; preds = %cond.false.118
  %data137 = getelementptr inbounds %struct._object, %struct._object* %call61, i64 4, i32 1, !dbg !2161
  %any138 = bitcast %struct._typeobject** %data137 to i8**, !dbg !2161
  %26 = load i8*, i8** %any138, align 8, !dbg !2161, !tbaa !929
  br label %cond.end.139, !dbg !2161

cond.end.139:                                     ; preds = %cond.true.124, %cond.false.136
  %cond140 = phi i8* [ %26, %cond.false.136 ], [ %cond135, %cond.true.124 ], !dbg !2123
  %27 = bitcast i8* %cond140 to i32*, !dbg !2163
  %28 = load i32, i32* %27, align 4, !dbg !2163, !tbaa !1163
  br label %cond.end.144, !dbg !2163

cond.end.144:                                     ; preds = %cond.end.114, %cond.end.139, %cond.end.82
  %cond145 = phi i32 [ %conv85, %cond.end.82 ], [ %conv117, %cond.end.114 ], [ %28, %cond.end.139 ], !dbg !2123
  %cmp146 = icmp eq i32 %cond145, 45, !dbg !2166
  call void @llvm.dbg.value(metadata i32 45, i64 0, metadata !781, metadata !858), !dbg !2040
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !776, metadata !858), !dbg !2122
  %dec = sext i1 %cmp146 to i64, !dbg !2169
  %dec.n_digits.0 = add i64 %dec, %n_digits.0, !dbg !2169
  %.304 = zext i1 %cmp146 to i64, !dbg !2169
  %.305 = select i1 %cmp146, i32 45, i32 0, !dbg !2169
  %add150 = add i64 %dec.n_digits.0, %.304, !dbg !2170
  call void @llvm.dbg.value(metadata i64* %n_remainder, i64 0, metadata !767, metadata !858), !dbg !2171
  call void @llvm.dbg.value(metadata i32* %has_decimal, i64 0, metadata !769, metadata !858), !dbg !2172
  call fastcc void @parse_number(%struct._object* %call61, i64 %.304, i64 %add150, i64* nonnull %n_remainder, i32* nonnull %has_decimal), !dbg !2173
  %29 = load i32, i32* %type1, align 4, !dbg !2174, !tbaa !908
  %cmp152 = icmp eq i32 %29, 110, !dbg !2176
  br i1 %cmp152, label %cond.end.159, label %cond.false.155, !dbg !2177

cond.false.155:                                   ; preds = %cond.end.144
  %thousands_separators156 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !2178
  %30 = load i32, i32* %thousands_separators156, align 4, !dbg !2178, !tbaa !1104
  %tobool157 = icmp ne i32 %30, 0, !dbg !2179
  %cond158 = select i1 %tobool157, i32 1, i32 2, !dbg !2179
  br label %cond.end.159, !dbg !2177

cond.end.159:                                     ; preds = %cond.end.144, %cond.false.155
  %cond160 = phi i32 [ %cond158, %cond.false.155 ], [ 0, %cond.end.144 ], !dbg !2177
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale, i64 0, metadata !784, metadata !858), !dbg !2044
  %call161 = call fastcc i32 @get_locale_info(i32 %cond160, %struct.LocaleInfo* nonnull %locale), !dbg !2180
  %cmp162 = icmp eq i32 %call161, -1, !dbg !2183
  br i1 %cmp162, label %do.body.194, label %if.end.165, !dbg !2184

if.end.165:                                       ; preds = %cond.end.159
  call void @llvm.dbg.value(metadata i64* %n_remainder, i64 0, metadata !767, metadata !858), !dbg !2171
  %31 = load i64, i64* %n_remainder, align 8, !dbg !2185, !tbaa !1088
  call void @llvm.dbg.value(metadata i32* %has_decimal, i64 0, metadata !769, metadata !858), !dbg !2172
  %32 = load i32, i32* %has_decimal, align 4, !dbg !2186, !tbaa !1163
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %spec, i64 0, metadata !777, metadata !858), !dbg !2187
  call void @llvm.dbg.value(metadata i32* %maxchar, i64 0, metadata !780, metadata !858), !dbg !2039
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale, i64 0, metadata !784, metadata !858), !dbg !2044
  %call167 = call fastcc i64 @calc_number_widths(%struct.NumberFieldWidths* nonnull %spec, i64 0, i32 %.305, i64 %.304, i64 %add150, i64 %31, i32 %32, %struct.LocaleInfo* nonnull %locale, %struct.InternalFormatSpec* %format, i32* nonnull %maxchar), !dbg !2188
  call void @llvm.dbg.value(metadata i64 %call167, i64 0, metadata !768, metadata !858), !dbg !2189
  call void @llvm.dbg.value(metadata i32* %maxchar, i64 0, metadata !780, metadata !858), !dbg !2039
  %33 = load i32, i32* %maxchar, align 4, !dbg !2190, !tbaa !1163
  %maxchar168 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 3, !dbg !2193
  %34 = load i32, i32* %maxchar168, align 4, !dbg !2193, !tbaa !998
  %cmp169 = icmp ugt i32 %33, %34, !dbg !2193
  br i1 %cmp169, label %cond.false.175, label %land.lhs.true.171, !dbg !2193

land.lhs.true.171:                                ; preds = %if.end.165
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 4, !dbg !2194
  %35 = load i64, i64* %size, align 8, !dbg !2194, !tbaa !1024
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !2194
  %36 = load i64, i64* %pos, align 8, !dbg !2194, !tbaa !1025
  %sub = sub i64 %35, %36, !dbg !2194
  %cmp172 = icmp sle i64 %call167, %sub, !dbg !2194
  %cmp176 = icmp eq i64 %call167, 0, !dbg !2196
  %or.cond = or i1 %cmp176, %cmp172, !dbg !2194
  br i1 %or.cond, label %if.end.188, label %cond.false.179, !dbg !2194

cond.false.175:                                   ; preds = %if.end.165
  %cmp176.old = icmp eq i64 %call167, 0, !dbg !2196
  br i1 %cmp176.old, label %if.end.188, label %cond.false.179, !dbg !2196

cond.false.179:                                   ; preds = %land.lhs.true.171, %cond.false.175
  call void @llvm.dbg.value(metadata i32* %maxchar, i64 0, metadata !780, metadata !858), !dbg !2039
  %call180 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %writer, i64 %call167, i32 %33) #1, !dbg !2190
  %phitmp = icmp eq i32 %call180, -1, !dbg !2190
  br i1 %phitmp, label %do.body.194, label %if.end.188, !dbg !2199

if.end.188:                                       ; preds = %cond.false.175, %land.lhs.true.171, %cond.false.179
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !2200
  %37 = load i32, i32* %fill_char, align 4, !dbg !2200, !tbaa !1004
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %spec, i64 0, metadata !777, metadata !858), !dbg !2187
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale, i64 0, metadata !784, metadata !858), !dbg !2044
  %call190 = call fastcc i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* nonnull %spec, %struct._object* %call61, i64 %.304, %struct._object* null, i64 0, i32 %37, %struct.LocaleInfo* nonnull %locale, i32 0), !dbg !2201
  call void @llvm.dbg.value(metadata i32 %call190, i64 0, metadata !779, metadata !858), !dbg !2037
  br label %do.body.194, !dbg !2202

do.body.194:                                      ; preds = %cond.false.179, %cond.end.159, %if.end.188
  %result.0 = phi i32 [ -1, %cond.end.159 ], [ -1, %cond.false.179 ], [ %call190, %if.end.188 ]
  call void @llvm.dbg.value(metadata %struct._object* %call61, i64 0, metadata !785, metadata !858), !dbg !2203
  call void @llvm.dbg.value(metadata %struct._object* %call61, i64 0, metadata !787, metadata !858), !dbg !2205
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call61, i64 0, i32 0, !dbg !2207
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !2207, !tbaa !894
  %dec195 = add i64 %38, -1, !dbg !2207
  store i64 %dec195, i64* %ob_refcnt, align 8, !dbg !2207, !tbaa !894
  %cmp196 = icmp eq i64 %dec195, 0, !dbg !2207
  br i1 %cmp196, label %if.else.199, label %if.end.201, !dbg !2209

if.else.199:                                      ; preds = %do.body.194
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call61, i64 0, i32 1, !dbg !2210
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2210, !tbaa !871
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !2210
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2210, !tbaa !898
  call void %40(%struct._object* %call61) #1, !dbg !2210
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.60, %if.end.20, %land.lhs.true, %if.then, %if.else.199, %do.body.194
  %result.0308 = phi i32 [ %result.0, %if.else.199 ], [ %result.0, %do.body.194 ], [ -1, %if.then ], [ -1, %land.lhs.true ], [ -1, %if.end.20 ], [ -1, %if.end.60 ]
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale, i64 0, metadata !784, metadata !858), !dbg !2044
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale, i64 0, metadata !749, metadata !858) #1, !dbg !2212
  %decimal_point.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 0, !dbg !2214
  %41 = load %struct._object*, %struct._object** %decimal_point.i, align 8, !dbg !2214, !tbaa !1973
  call void @llvm.dbg.value(metadata %struct._object* %41, i64 0, metadata !750, metadata !858) #1, !dbg !2214
  %cmp.i = icmp eq %struct._object* %41, null, !dbg !2215
  br i1 %cmp.i, label %if.end.4.i, label %do.body.1.i, !dbg !2216

do.body.1.i:                                      ; preds = %if.end.201
  call void @llvm.dbg.value(metadata %struct._object* %41, i64 0, metadata !752, metadata !858) #1, !dbg !2217
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %41, i64 0, i32 0, !dbg !2218
  %42 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2218, !tbaa !894
  %dec.i = add i64 %42, -1, !dbg !2218
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2218, !tbaa !894
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2218
  br i1 %cmp2.i, label %if.else.i, label %if.end.4.i, !dbg !2219

if.else.i:                                        ; preds = %do.body.1.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %41, i64 0, i32 1, !dbg !2220
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2220, !tbaa !871
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !2220
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2220, !tbaa !898
  call void %44(%struct._object* %41) #1, !dbg !2220
  br label %if.end.4.i, !dbg !2221

if.end.4.i:                                       ; preds = %if.else.i, %do.body.1.i, %if.end.201
  %thousands_sep.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 1, !dbg !2222
  %45 = load %struct._object*, %struct._object** %thousands_sep.i, align 8, !dbg !2222, !tbaa !1987
  call void @llvm.dbg.value(metadata %struct._object* %45, i64 0, metadata !755, metadata !858) #1, !dbg !2222
  %cmp9.i = icmp eq %struct._object* %45, null, !dbg !2223
  br i1 %cmp9.i, label %cleanup, label %do.body.11.i, !dbg !2224

do.body.11.i:                                     ; preds = %if.end.4.i
  call void @llvm.dbg.value(metadata %struct._object* %45, i64 0, metadata !757, metadata !858) #1, !dbg !2225
  %ob_refcnt13.i = getelementptr inbounds %struct._object, %struct._object* %45, i64 0, i32 0, !dbg !2226
  %46 = load i64, i64* %ob_refcnt13.i, align 8, !dbg !2226, !tbaa !894
  %dec14.i = add i64 %46, -1, !dbg !2226
  store i64 %dec14.i, i64* %ob_refcnt13.i, align 8, !dbg !2226, !tbaa !894
  %cmp15.i = icmp eq i64 %dec14.i, 0, !dbg !2226
  br i1 %cmp15.i, label %if.else.17.i, label %cleanup, !dbg !2227

if.else.17.i:                                     ; preds = %do.body.11.i
  %ob_type18.i = getelementptr inbounds %struct._object, %struct._object* %45, i64 0, i32 1, !dbg !2228
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type18.i, align 8, !dbg !2228, !tbaa !871
  %tp_dealloc19.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !2228
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19.i, align 8, !dbg !2228, !tbaa !898
  call void %48(%struct._object* %45) #1, !dbg !2228
  br label %cleanup, !dbg !2221

cleanup:                                          ; preds = %if.else.17.i, %do.body.11.i, %if.end.4.i, %if.then.58
  %retval.0 = phi i32 [ %call59, %if.then.58 ], [ %result.0308, %if.end.4.i ], [ %result.0308, %do.body.11.i ], [ %result.0308, %if.else.17.i ]
  call void @llvm.lifetime.end(i64 24, i8* %6) #1, !dbg !2229
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !2229
  call void @llvm.lifetime.end(i64 4, i8* %4) #1, !dbg !2229
  call void @llvm.lifetime.end(i64 88, i8* %3) #1, !dbg !2229
  call void @llvm.lifetime.end(i64 4, i8* %1) #1, !dbg !2229
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2229
  ret i32 %retval.0, !dbg !2229
}

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %format = alloca %struct.InternalFormatSpec, align 8
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !460, metadata !858), !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !461, metadata !858), !dbg !2231
  tail call void @llvm.dbg.value(metadata %struct._object* %format_spec, i64 0, metadata !462, metadata !858), !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !463, metadata !858), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !464, metadata !858), !dbg !2234
  %0 = bitcast %struct.InternalFormatSpec* %format to i8*, !dbg !2235
  call void @llvm.lifetime.start(i64 48, i8* %0) #1, !dbg !2235
  %cmp = icmp eq i64 %start, %end, !dbg !2236
  br i1 %cmp, label %if.then, label %if.end, !dbg !2238

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !478, metadata !858) #1, !dbg !2239
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !479, metadata !858) #1, !dbg !2241
  %call.i = tail call %struct._object* @PyObject_Str(%struct._object* %obj) #1, !dbg !2242
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !480, metadata !858) #1, !dbg !2243
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2244
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2245

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %call.i) #1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !481, metadata !858) #1, !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !482, metadata !858) #1, !dbg !2248
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2249
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2249, !tbaa !894
  %dec.i = add i64 %1, -1, !dbg !2249
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2249, !tbaa !894
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2249
  br i1 %cmp2.i, label %if.else.i, label %cleanup, !dbg !2250

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2251
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2251, !tbaa !871
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2251
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2251, !tbaa !898
  tail call void %3(%struct._object* %call.i) #1, !dbg !2251
  br label %cleanup, !dbg !2252

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !465, metadata !858), !dbg !2253
  %call1 = call fastcc i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* nonnull %format, i8 signext 0, i8 signext 62), !dbg !2254
  %tobool = icmp eq i32 %call1, 0, !dbg !2254
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !2256

if.end.3:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !2257
  %4 = load i32, i32* %type, align 8, !dbg !2257, !tbaa !908
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 101, label %sw.bb
    i32 69, label %sw.bb
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 103, label %sw.bb
    i32 71, label %sw.bb
    i32 110, label %sw.bb
    i32 37, label %sw.bb
  ], !dbg !2258

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !465, metadata !858), !dbg !2253
  %call4 = call fastcc i32 @format_float_internal(%struct._object* %obj, %struct.InternalFormatSpec* nonnull %format, %struct._PyUnicodeWriter* %writer), !dbg !2259
  br label %cleanup, !dbg !2261

sw.default:                                       ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !2262
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2262, !tbaa !871
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !2263
  %6 = load i8*, i8** %tp_name, align 8, !dbg !2263, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !565, metadata !858) #1, !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !566, metadata !858) #1, !dbg !2266
  %presentation_type.off.i = add i32 %4, -33, !dbg !2267
  %7 = icmp ult i32 %presentation_type.off.i, 95, !dbg !2267
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2268, !tbaa !929
  br i1 %7, label %if.then.i, label %if.else.i.12, !dbg !2267

if.then.i:                                        ; preds = %sw.default
  %sext.i = shl i32 %4, 24, !dbg !2269
  %conv2.i = ashr exact i32 %sext.i, 24, !dbg !2269
  %call.i.11 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %conv2.i, i8* %6) #1, !dbg !2270
  br label %cleanup, !dbg !2270

if.else.i.12:                                     ; preds = %sw.default
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %4, i8* %6) #1, !dbg !2271
  br label %cleanup, !dbg !2272

cleanup:                                          ; preds = %if.else.i.12, %if.then.i, %if.else.i, %if.end.i, %if.then, %if.end, %sw.bb
  %retval.0 = phi i32 [ %call4, %sw.bb ], [ -1, %if.end ], [ -1, %if.then ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], [ -1, %if.then.i ], [ -1, %if.else.i.12 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #1, !dbg !2273
  ret i32 %retval.0, !dbg !2273
}

; Function Attrs: nounwind uwtable
define i32 @_PyComplex_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %obj, %struct._object* %format_spec, i64 %start, i64 %end) #0 {
entry:
  %tmp_format.i = alloca %struct.InternalFormatSpec, align 8
  %n_re_remainder.i = alloca i64, align 8
  %n_im_remainder.i = alloca i64, align 8
  %re_has_decimal.i = alloca i32, align 4
  %im_has_decimal.i = alloca i32, align 4
  %re_spec.i = alloca %struct.NumberFieldWidths, align 8
  %im_spec.i = alloca %struct.NumberFieldWidths, align 8
  %maxchar.i = alloca i32, align 4
  %re_float_type.i = alloca i32, align 4
  %im_float_type.i = alloca i32, align 4
  %locale.i = alloca %struct.LocaleInfo, align 8
  %format = alloca %struct.InternalFormatSpec, align 8
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !468, metadata !858), !dbg !2274
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !469, metadata !858), !dbg !2275
  tail call void @llvm.dbg.value(metadata %struct._object* %format_spec, i64 0, metadata !470, metadata !858), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %start, i64 0, metadata !471, metadata !858), !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !472, metadata !858), !dbg !2278
  %0 = bitcast %struct.InternalFormatSpec* %format to i8*, !dbg !2279
  call void @llvm.lifetime.start(i64 48, i8* %0) #1, !dbg !2279
  %cmp = icmp eq i64 %start, %end, !dbg !2280
  br i1 %cmp, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !478, metadata !858) #1, !dbg !2283
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !479, metadata !858) #1, !dbg !2285
  %call.i = tail call %struct._object* @PyObject_Str(%struct._object* %obj) #1, !dbg !2286
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !480, metadata !858) #1, !dbg !2287
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2288
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2289

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer, %struct._object* %call.i) #1, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !481, metadata !858) #1, !dbg !2291
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !482, metadata !858) #1, !dbg !2292
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2293
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2293, !tbaa !894
  %dec.i = add i64 %1, -1, !dbg !2293
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2293, !tbaa !894
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2293
  br i1 %cmp2.i, label %if.else.i, label %cleanup, !dbg !2294

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2295
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2295, !tbaa !871
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2295
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2295, !tbaa !898
  tail call void %3(%struct._object* %call.i) #1, !dbg !2295
  br label %cleanup, !dbg !2296

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !473, metadata !858), !dbg !2297
  %call1 = call fastcc i32 @parse_internal_render_format_spec(%struct._object* %format_spec, i64 %start, i64 %end, %struct.InternalFormatSpec* nonnull %format, i8 signext 0, i8 signext 62), !dbg !2298
  %tobool = icmp eq i32 %call1, 0, !dbg !2298
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !2300

if.end.3:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 7, !dbg !2301
  %4 = load i32, i32* %type, align 8, !dbg !2302, !tbaa !908
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 101, label %sw.bb
    i32 69, label %sw.bb
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 103, label %sw.bb
    i32 71, label %sw.bb
    i32 110, label %sw.bb
  ], !dbg !2306

sw.bb:                                            ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3, %if.end.3
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !473, metadata !858), !dbg !2297
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !803, metadata !858) #1, !dbg !2307
  tail call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %format, i64 0, metadata !804, metadata !858) #1, !dbg !2308
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !805, metadata !858) #1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !808, metadata !858) #1, !dbg !2310
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !809, metadata !858) #1, !dbg !2311
  %5 = bitcast %struct.InternalFormatSpec* %tmp_format.i to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 48, i8* %5) #1, !dbg !2312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %0, i64 48, i32 8, i1 false) #1, !dbg !2313, !tbaa.struct !2314
  %6 = bitcast i64* %n_re_remainder.i to i8*, !dbg !2315
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2315
  %7 = bitcast i64* %n_im_remainder.i to i8*, !dbg !2316
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2316
  %8 = bitcast i32* %re_has_decimal.i to i8*, !dbg !2317
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !2317
  %9 = bitcast i32* %im_has_decimal.i to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 4, i8* %9) #1, !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !820, metadata !858) #1, !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !821, metadata !858) #1, !dbg !2320
  %10 = bitcast %struct.NumberFieldWidths* %re_spec.i to i8*, !dbg !2321
  call void @llvm.lifetime.start(i64 88, i8* %10) #1, !dbg !2321
  %11 = bitcast %struct.NumberFieldWidths* %im_spec.i to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 88, i8* %11) #1, !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !826, metadata !858) #1, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !827, metadata !858) #1, !dbg !2324
  %12 = bitcast i32* %maxchar.i to i8*, !dbg !2325
  call void @llvm.lifetime.start(i64 4, i8* %12) #1, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 127, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  store i32 127, i32* %maxchar.i, align 4, !dbg !2326, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !831, metadata !858) #1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !832, metadata !858) #1, !dbg !2328
  %13 = bitcast i32* %re_float_type.i to i8*, !dbg !2329
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !2329
  %14 = bitcast i32* %im_float_type.i to i8*, !dbg !2330
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !835, metadata !858) #1, !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !836, metadata !858) #1, !dbg !2332
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !840, metadata !858) #1, !dbg !2333
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !841, metadata !858) #1, !dbg !2334
  %15 = bitcast %struct.LocaleInfo* %locale.i to i8*, !dbg !2335
  call void @llvm.lifetime.start(i64 24, i8* %15) #1, !dbg !2335
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false) #1, !dbg !2336
  %precision2.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 6, !dbg !2337
  %16 = load i64, i64* %precision2.i, align 8, !dbg !2337, !tbaa !960
  %cmp.i.11 = icmp sgt i64 %16, 2147483647, !dbg !2339
  br i1 %cmp.i.11, label %if.then.i, label %if.end.i.12, !dbg !2340

if.then.i:                                        ; preds = %sw.bb
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2341, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #1, !dbg !2343
  br label %done.i, !dbg !2344

if.end.i.12:                                      ; preds = %sw.bb
  %conv.i = trunc i64 %16 to i32, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !819, metadata !858) #1, !dbg !2346
  %18 = bitcast %struct.InternalFormatSpec* %format to i64*, !dbg !2347
  %19 = load i64, i64* %18, align 8, !dbg !2347
  %20 = trunc i64 %19 to i32, !dbg !2347
  %cmp4.i = icmp eq i32 %20, 48, !dbg !2349
  %21 = lshr i64 %19, 32, !dbg !2350
  %22 = trunc i64 %21 to i32, !dbg !2351
  br i1 %cmp4.i, label %if.then.6.i, label %if.end.7.i, !dbg !2350

if.then.6.i:                                      ; preds = %if.end.i.12
  %23 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2353, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0)) #1, !dbg !2355
  br label %done.i, !dbg !2356

if.end.7.i:                                       ; preds = %if.end.i.12
  %cmp8.i = icmp eq i32 %22, 61, !dbg !2357
  br i1 %cmp8.i, label %if.then.10.i, label %if.end.11.i, !dbg !2358

if.then.10.i:                                     ; preds = %if.end.7.i
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2359, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0)) #1, !dbg !2361
  br label %done.i, !dbg !2362

if.end.11.i:                                      ; preds = %if.end.7.i
  %call.i.13 = tail call double @PyComplex_RealAsDouble(%struct._object* %obj) #1, !dbg !2363
  tail call void @llvm.dbg.value(metadata double %call.i.13, i64 0, metadata !806, metadata !858) #1, !dbg !2364
  %cmp12.i = fcmp oeq double %call.i.13, -1.000000e+00, !dbg !2365
  br i1 %cmp12.i, label %land.lhs.true.i, label %if.end.16.i, !dbg !2367

land.lhs.true.i:                                  ; preds = %if.end.11.i
  %call14.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2368
  %tobool.i = icmp eq %struct._object* %call14.i, null, !dbg !2368
  br i1 %tobool.i, label %if.end.16.i, label %done.i, !dbg !2370

if.end.16.i:                                      ; preds = %land.lhs.true.i, %if.end.11.i
  %call17.i = tail call double @PyComplex_ImagAsDouble(%struct._object* %obj) #1, !dbg !2371
  tail call void @llvm.dbg.value(metadata double %call17.i, i64 0, metadata !807, metadata !858) #1, !dbg !2372
  %cmp18.i = fcmp oeq double %call17.i, -1.000000e+00, !dbg !2373
  br i1 %cmp18.i, label %land.lhs.true.20.i, label %if.end.24.i, !dbg !2375

land.lhs.true.20.i:                               ; preds = %if.end.16.i
  %call21.i = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2376
  %tobool22.i = icmp eq %struct._object* %call21.i, null, !dbg !2376
  br i1 %tobool22.i, label %if.end.24.i, label %done.i, !dbg !2378

if.end.24.i:                                      ; preds = %land.lhs.true.20.i, %if.end.16.i
  %alternate.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 2, !dbg !2379
  %25 = load i32, i32* %alternate.i, align 8, !dbg !2379, !tbaa !934
  %tobool25.i = icmp eq i32 %25, 0, !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !826, metadata !858) #1, !dbg !2323
  %..i = select i1 %tobool25.i, i32 0, i32 4, !dbg !2382
  %cmp28.i = icmp eq i32 %4, 0, !dbg !2383
  br i1 %cmp28.i, label %if.then.30.i, label %if.end.39.i, !dbg !2385

if.then.30.i:                                     ; preds = %if.end.24.i
  tail call void @llvm.dbg.value(metadata i32 114, i64 0, metadata !821, metadata !858) #1, !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !820, metadata !858) #1, !dbg !2319
  %cmp31.i = fcmp oeq double %call.i.13, 0.000000e+00, !dbg !2386
  br i1 %cmp31.i, label %land.lhs.true.33.i, label %if.else.i.14, !dbg !2389

land.lhs.true.33.i:                               ; preds = %if.then.30.i
  %call34.i = tail call double @copysign(double 1.000000e+00, double %call.i.13) #6, !dbg !2390
  %cmp35.i = fcmp oeq double %call34.i, 1.000000e+00, !dbg !2391
  br i1 %cmp35.i, label %if.end.39.i, label %if.else.i.14, !dbg !2392

if.else.i.14:                                     ; preds = %land.lhs.true.33.i, %if.then.30.i
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !835, metadata !858) #1, !dbg !2331
  br label %if.end.39.i, !dbg !2393

if.end.39.i:                                      ; preds = %if.else.i.14, %land.lhs.true.33.i, %if.end.24.i
  %default_precision.0.i = phi i32 [ 0, %if.else.i.14 ], [ 6, %if.end.24.i ], [ 0, %land.lhs.true.33.i ], !dbg !2393
  %type.0.i = phi i32 [ 114, %if.else.i.14 ], [ %4, %if.end.24.i ], [ 114, %land.lhs.true.33.i ], !dbg !2393
  %add_parens.0.i = phi i32 [ 1, %if.else.i.14 ], [ 0, %if.end.24.i ], [ 0, %land.lhs.true.33.i ], !dbg !2393
  %skip_re.0.i = phi i32 [ 0, %if.else.i.14 ], [ 0, %if.end.24.i ], [ 1, %land.lhs.true.33.i ], !dbg !2393
  %cmp40.i = icmp eq i32 %type.0.i, 110, !dbg !2394
  tail call void @llvm.dbg.value(metadata i32 103, i64 0, metadata !821, metadata !858) #1, !dbg !2320
  %.type.0.i = select i1 %cmp40.i, i32 103, i32 %type.0.i, !dbg !2396
  %cmp44.i = icmp slt i32 %conv.i, 0, !dbg !2397
  %cmp48.i = icmp eq i32 %.type.0.i, 114, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 103, i64 0, metadata !821, metadata !858) #1, !dbg !2320
  %..type.0.i = select i1 %cmp48.i, i32 103, i32 %.type.0.i, !dbg !2401
  %type.2.i = select i1 %cmp44.i, i32 %.type.0.i, i32 %..type.0.i, !dbg !2402
  %precision.0.i = select i1 %cmp44.i, i32 %default_precision.0.i, i32 %conv.i, !dbg !2402
  %conv53.i = trunc i32 %type.2.i to i8, !dbg !2403
  tail call void @llvm.dbg.value(metadata i32* %re_float_type.i, i64 0, metadata !833, metadata !858) #1, !dbg !2404
  %call54.i = call i8* @PyOS_double_to_string(double %call.i.13, i8 signext %conv53.i, i32 %precision.0.i, i32 %..i, i32* nonnull %re_float_type.i) #1, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %call54.i, i64 0, metadata !808, metadata !858) #1, !dbg !2310
  %cmp55.i = icmp eq i8* %call54.i, null, !dbg !2406
  br i1 %cmp55.i, label %done.i, label %if.end.58.i, !dbg !2408

if.end.58.i:                                      ; preds = %if.end.39.i
  call void @llvm.dbg.value(metadata i32* %im_float_type.i, i64 0, metadata !834, metadata !858) #1, !dbg !2409
  %call60.i = call i8* @PyOS_double_to_string(double %call17.i, i8 signext %conv53.i, i32 %precision.0.i, i32 %..i, i32* nonnull %im_float_type.i) #1, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %call60.i, i64 0, metadata !809, metadata !858) #1, !dbg !2311
  %cmp61.i = icmp eq i8* %call60.i, null, !dbg !2411
  br i1 %cmp61.i, label %done.i, label %if.end.64.i, !dbg !2413

if.end.64.i:                                      ; preds = %if.end.58.i
  %call65.i = call i64 @strlen(i8* %call54.i) #7, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %call65.i, i64 0, metadata !811, metadata !858) #1, !dbg !2415
  %call66.i = call i64 @strlen(i8* %call60.i) #7, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %call66.i, i64 0, metadata !812, metadata !858) #1, !dbg !2417
  %call67.i = call %struct._object* @_PyUnicode_FromASCII(i8* %call54.i, i64 %call65.i) #1, !dbg !2418
  call void @llvm.dbg.value(metadata %struct._object* %call67.i, i64 0, metadata !840, metadata !858) #1, !dbg !2333
  %cmp68.i = icmp eq %struct._object* %call67.i, null, !dbg !2419
  br i1 %cmp68.i, label %done.i, label %if.end.71.i, !dbg !2421

if.end.71.i:                                      ; preds = %if.end.64.i
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !822, metadata !858) #1, !dbg !2422
  %call72.i = call %struct._object* @_PyUnicode_FromASCII(i8* %call60.i, i64 %call66.i) #1, !dbg !2423
  call void @llvm.dbg.value(metadata %struct._object* %call72.i, i64 0, metadata !841, metadata !858) #1, !dbg !2334
  %cmp73.i = icmp eq %struct._object* %call72.i, null, !dbg !2424
  br i1 %cmp73.i, label %done.i, label %if.end.76.i, !dbg !2426

if.end.76.i:                                      ; preds = %if.end.71.i
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !823, metadata !858) #1, !dbg !2427
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 2, !dbg !2428
  %26 = bitcast %struct._object* %state.i to i32*, !dbg !2428
  %bf.load.i = load i32, i32* %26, align 4, !dbg !2428
  %bf.lshr.i = lshr i32 %bf.load.i, 2, !dbg !2428
  %bf.clear.i = and i32 %bf.lshr.i, 7, !dbg !2428
  %cmp77.i = icmp eq i32 %bf.clear.i, 1, !dbg !2428
  br i1 %cmp77.i, label %cond.true.i, label %cond.false.96.i, !dbg !2428

cond.true.i:                                      ; preds = %if.end.76.i
  %bf.clear82.i = and i32 %bf.load.i, 32, !dbg !2430
  %tobool83.i = icmp eq i32 %bf.clear82.i, 0, !dbg !2430
  br i1 %tobool83.i, label %cond.false.92.i, label %cond.true.84.i, !dbg !2430

cond.true.84.i:                                   ; preds = %cond.true.i
  %bf.clear88.i = and i32 %bf.load.i, 64, !dbg !2432
  %tobool89.i = icmp ne i32 %bf.clear88.i, 0, !dbg !2432
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call67.i, i64 3, !dbg !2434
  %27 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !2434
  %add.ptr91.i = getelementptr %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2436
  %28 = bitcast %struct._typeobject** %add.ptr91.i to i8*, !dbg !2436
  %cond.i = select i1 %tobool89.i, i8* %27, i8* %28, !dbg !2432
  br label %cond.end.93.i, !dbg !2432

cond.false.92.i:                                  ; preds = %cond.true.i
  %data.i = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2438
  %any.i = bitcast %struct._typeobject** %data.i to i8**, !dbg !2438
  %29 = load i8*, i8** %any.i, align 8, !dbg !2438, !tbaa !929
  br label %cond.end.93.i, !dbg !2438

cond.end.93.i:                                    ; preds = %cond.false.92.i, %cond.true.84.i
  %cond94.i = phi i8* [ %29, %cond.false.92.i ], [ %cond.i, %cond.true.84.i ], !dbg !2428
  %30 = load i8, i8* %cond94.i, align 1, !dbg !2440, !tbaa !1132
  %conv95.i = zext i8 %30 to i32, !dbg !2440
  br label %cond.end.154.i, !dbg !2440

cond.false.96.i:                                  ; preds = %if.end.76.i
  %cmp101.i = icmp eq i32 %bf.clear.i, 2, !dbg !2443
  %bf.clear107.i = and i32 %bf.load.i, 32, !dbg !2445
  %tobool108.i = icmp ne i32 %bf.clear107.i, 0, !dbg !2445
  br i1 %cmp101.i, label %cond.true.103.i, label %cond.false.128.i, !dbg !2443

cond.true.103.i:                                  ; preds = %cond.false.96.i
  br i1 %tobool108.i, label %cond.true.109.i, label %cond.false.121.i, !dbg !2445

cond.true.109.i:                                  ; preds = %cond.true.103.i
  %bf.clear113.i = and i32 %bf.load.i, 64, !dbg !2447
  %tobool114.i = icmp ne i32 %bf.clear113.i, 0, !dbg !2447
  %add.ptr116.i = getelementptr %struct._object, %struct._object* %call67.i, i64 3, !dbg !2449
  %31 = bitcast %struct._object* %add.ptr116.i to i8*, !dbg !2449
  %add.ptr118.i = getelementptr %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2451
  %32 = bitcast %struct._typeobject** %add.ptr118.i to i8*, !dbg !2451
  %cond120.i = select i1 %tobool114.i, i8* %31, i8* %32, !dbg !2447
  br label %cond.end.124.i, !dbg !2447

cond.false.121.i:                                 ; preds = %cond.true.103.i
  %data122.i = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2453
  %any123.i = bitcast %struct._typeobject** %data122.i to i8**, !dbg !2453
  %33 = load i8*, i8** %any123.i, align 8, !dbg !2453, !tbaa !929
  br label %cond.end.124.i, !dbg !2453

cond.end.124.i:                                   ; preds = %cond.false.121.i, %cond.true.109.i
  %cond125.i = phi i8* [ %33, %cond.false.121.i ], [ %cond120.i, %cond.true.109.i ], !dbg !2428
  %34 = bitcast i8* %cond125.i to i16*, !dbg !2455
  %35 = load i16, i16* %34, align 2, !dbg !2455, !tbaa !1148
  %conv127.i = zext i16 %35 to i32, !dbg !2455
  br label %cond.end.154.i, !dbg !2455

cond.false.128.i:                                 ; preds = %cond.false.96.i
  br i1 %tobool108.i, label %cond.true.134.i, label %cond.false.146.i, !dbg !2458

cond.true.134.i:                                  ; preds = %cond.false.128.i
  %bf.clear138.i = and i32 %bf.load.i, 64, !dbg !2460
  %tobool139.i = icmp ne i32 %bf.clear138.i, 0, !dbg !2460
  %add.ptr141.i = getelementptr %struct._object, %struct._object* %call67.i, i64 3, !dbg !2462
  %36 = bitcast %struct._object* %add.ptr141.i to i8*, !dbg !2462
  %add.ptr143.i = getelementptr %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2464
  %37 = bitcast %struct._typeobject** %add.ptr143.i to i8*, !dbg !2464
  %cond145.i = select i1 %tobool139.i, i8* %36, i8* %37, !dbg !2460
  br label %cond.end.149.i, !dbg !2460

cond.false.146.i:                                 ; preds = %cond.false.128.i
  %data147.i = getelementptr inbounds %struct._object, %struct._object* %call67.i, i64 4, i32 1, !dbg !2466
  %any148.i = bitcast %struct._typeobject** %data147.i to i8**, !dbg !2466
  %38 = load i8*, i8** %any148.i, align 8, !dbg !2466, !tbaa !929
  br label %cond.end.149.i, !dbg !2466

cond.end.149.i:                                   ; preds = %cond.false.146.i, %cond.true.134.i
  %cond150.i = phi i8* [ %38, %cond.false.146.i ], [ %cond145.i, %cond.true.134.i ], !dbg !2428
  %39 = bitcast i8* %cond150.i to i32*, !dbg !2468
  %40 = load i32, i32* %39, align 4, !dbg !2468, !tbaa !1163
  br label %cond.end.154.i, !dbg !2468

cond.end.154.i:                                   ; preds = %cond.end.149.i, %cond.end.124.i, %cond.end.93.i
  %cond155.i = phi i32 [ %conv95.i, %cond.end.93.i ], [ %conv127.i, %cond.end.124.i ], [ %40, %cond.end.149.i ], !dbg !2428
  %cmp156.i = icmp eq i32 %cond155.i, 45, !dbg !2471
  call void @llvm.dbg.value(metadata i32 45, i64 0, metadata !831, metadata !858) #1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !822, metadata !858) #1, !dbg !2422
  %.592.i = zext i1 %cmp156.i to i64, !dbg !2474
  %.593.i = select i1 %cmp156.i, i32 45, i32 0, !dbg !2474
  %dec.i.15 = sext i1 %cmp156.i to i64, !dbg !2474
  %dec.call65.i = add i64 %dec.i.15, %call65.i, !dbg !2474
  %state160.i = getelementptr inbounds %struct._object, %struct._object* %call72.i, i64 2, !dbg !2475
  %41 = bitcast %struct._object* %state160.i to i32*, !dbg !2475
  %bf.load161.i = load i32, i32* %41, align 4, !dbg !2475
  %bf.lshr162.i = lshr i32 %bf.load161.i, 2, !dbg !2475
  %bf.clear163.i = and i32 %bf.lshr162.i, 7, !dbg !2475
  %cmp164.i = icmp eq i32 %bf.clear163.i, 1, !dbg !2475
  br i1 %cmp164.i, label %cond.true.166.i, label %cond.false.191.i, !dbg !2475

cond.true.166.i:                                  ; preds = %cond.end.154.i
  %bf.clear170.i = and i32 %bf.load161.i, 32, !dbg !2477
  %tobool171.i = icmp eq i32 %bf.clear170.i, 0, !dbg !2477
  br i1 %tobool171.i, label %cond.false.184.i, label %cond.true.172.i, !dbg !2477

cond.true.172.i:                                  ; preds = %cond.true.166.i
  %bf.clear176.i = and i32 %bf.load161.i, 64, !dbg !2479
  %tobool177.i = icmp ne i32 %bf.clear176.i, 0, !dbg !2479
  %add.ptr179.i = getelementptr %struct._object, %struct._object* %call72.i, i64 3, !dbg !2481
  %42 = bitcast %struct._object* %add.ptr179.i to i8*, !dbg !2481
  %add.ptr181.i = getelementptr %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2483
  %43 = bitcast %struct._typeobject** %add.ptr181.i to i8*, !dbg !2483
  %cond183.i = select i1 %tobool177.i, i8* %42, i8* %43, !dbg !2479
  br label %cond.end.187.i, !dbg !2479

cond.false.184.i:                                 ; preds = %cond.true.166.i
  %data185.i = getelementptr inbounds %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2485
  %any186.i = bitcast %struct._typeobject** %data185.i to i8**, !dbg !2485
  %44 = load i8*, i8** %any186.i, align 8, !dbg !2485, !tbaa !929
  br label %cond.end.187.i, !dbg !2485

cond.end.187.i:                                   ; preds = %cond.false.184.i, %cond.true.172.i
  %cond188.i = phi i8* [ %44, %cond.false.184.i ], [ %cond183.i, %cond.true.172.i ], !dbg !2475
  %45 = load i8, i8* %cond188.i, align 1, !dbg !2487, !tbaa !1132
  %conv190.i = zext i8 %45 to i32, !dbg !2487
  br label %cond.end.249.i, !dbg !2487

cond.false.191.i:                                 ; preds = %cond.end.154.i
  %cmp196.i = icmp eq i32 %bf.clear163.i, 2, !dbg !2490
  %bf.clear202.i = and i32 %bf.load161.i, 32, !dbg !2492
  %tobool203.i = icmp ne i32 %bf.clear202.i, 0, !dbg !2492
  br i1 %cmp196.i, label %cond.true.198.i, label %cond.false.223.i, !dbg !2490

cond.true.198.i:                                  ; preds = %cond.false.191.i
  br i1 %tobool203.i, label %cond.true.204.i, label %cond.false.216.i, !dbg !2492

cond.true.204.i:                                  ; preds = %cond.true.198.i
  %bf.clear208.i = and i32 %bf.load161.i, 64, !dbg !2494
  %tobool209.i = icmp ne i32 %bf.clear208.i, 0, !dbg !2494
  %add.ptr211.i = getelementptr %struct._object, %struct._object* %call72.i, i64 3, !dbg !2496
  %46 = bitcast %struct._object* %add.ptr211.i to i8*, !dbg !2496
  %add.ptr213.i = getelementptr %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2498
  %47 = bitcast %struct._typeobject** %add.ptr213.i to i8*, !dbg !2498
  %cond215.i = select i1 %tobool209.i, i8* %46, i8* %47, !dbg !2494
  br label %cond.end.219.i, !dbg !2494

cond.false.216.i:                                 ; preds = %cond.true.198.i
  %data217.i = getelementptr inbounds %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2500
  %any218.i = bitcast %struct._typeobject** %data217.i to i8**, !dbg !2500
  %48 = load i8*, i8** %any218.i, align 8, !dbg !2500, !tbaa !929
  br label %cond.end.219.i, !dbg !2500

cond.end.219.i:                                   ; preds = %cond.false.216.i, %cond.true.204.i
  %cond220.i = phi i8* [ %48, %cond.false.216.i ], [ %cond215.i, %cond.true.204.i ], !dbg !2475
  %49 = bitcast i8* %cond220.i to i16*, !dbg !2502
  %50 = load i16, i16* %49, align 2, !dbg !2502, !tbaa !1148
  %conv222.i = zext i16 %50 to i32, !dbg !2502
  br label %cond.end.249.i, !dbg !2502

cond.false.223.i:                                 ; preds = %cond.false.191.i
  br i1 %tobool203.i, label %cond.true.229.i, label %cond.false.241.i, !dbg !2505

cond.true.229.i:                                  ; preds = %cond.false.223.i
  %bf.clear233.i = and i32 %bf.load161.i, 64, !dbg !2507
  %tobool234.i = icmp ne i32 %bf.clear233.i, 0, !dbg !2507
  %add.ptr236.i = getelementptr %struct._object, %struct._object* %call72.i, i64 3, !dbg !2509
  %51 = bitcast %struct._object* %add.ptr236.i to i8*, !dbg !2509
  %add.ptr238.i = getelementptr %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2511
  %52 = bitcast %struct._typeobject** %add.ptr238.i to i8*, !dbg !2511
  %cond240.i = select i1 %tobool234.i, i8* %51, i8* %52, !dbg !2507
  br label %cond.end.244.i, !dbg !2507

cond.false.241.i:                                 ; preds = %cond.false.223.i
  %data242.i = getelementptr inbounds %struct._object, %struct._object* %call72.i, i64 4, i32 1, !dbg !2513
  %any243.i = bitcast %struct._typeobject** %data242.i to i8**, !dbg !2513
  %53 = load i8*, i8** %any243.i, align 8, !dbg !2513, !tbaa !929
  br label %cond.end.244.i, !dbg !2513

cond.end.244.i:                                   ; preds = %cond.false.241.i, %cond.true.229.i
  %cond245.i = phi i8* [ %53, %cond.false.241.i ], [ %cond240.i, %cond.true.229.i ], !dbg !2475
  %54 = bitcast i8* %cond245.i to i32*, !dbg !2515
  %55 = load i32, i32* %54, align 4, !dbg !2515, !tbaa !1163
  br label %cond.end.249.i, !dbg !2515

cond.end.249.i:                                   ; preds = %cond.end.244.i, %cond.end.219.i, %cond.end.187.i
  %cond250.i = phi i32 [ %conv190.i, %cond.end.187.i ], [ %conv222.i, %cond.end.219.i ], [ %55, %cond.end.244.i ], !dbg !2475
  %cmp251.i = icmp eq i32 %cond250.i, 45, !dbg !2518
  call void @llvm.dbg.value(metadata i32 45, i64 0, metadata !832, metadata !858) #1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !823, metadata !858) #1, !dbg !2427
  %.594.i = zext i1 %cmp251.i to i64, !dbg !2521
  %.595.i = select i1 %cmp251.i, i32 45, i32 0, !dbg !2521
  %dec255.i = sext i1 %cmp251.i to i64, !dbg !2521
  %dec255.call66.i = add i64 %dec255.i, %call66.i, !dbg !2521
  %add.i = add i64 %dec.call65.i, %.592.i, !dbg !2522
  call void @llvm.dbg.value(metadata i64* %n_re_remainder.i, i64 0, metadata !813, metadata !858) #1, !dbg !2523
  call void @llvm.dbg.value(metadata i32* %re_has_decimal.i, i64 0, metadata !817, metadata !858) #1, !dbg !2524
  call fastcc void @parse_number(%struct._object* %call67.i, i64 %.592.i, i64 %add.i, i64* nonnull %n_re_remainder.i, i32* nonnull %re_has_decimal.i) #1, !dbg !2525
  %add257.i = add i64 %dec255.call66.i, %.594.i, !dbg !2526
  call void @llvm.dbg.value(metadata i64* %n_im_remainder.i, i64 0, metadata !814, metadata !858) #1, !dbg !2527
  call void @llvm.dbg.value(metadata i32* %im_has_decimal.i, i64 0, metadata !818, metadata !858) #1, !dbg !2528
  call fastcc void @parse_number(%struct._object* %call72.i, i64 %.594.i, i64 %add257.i, i64* nonnull %n_im_remainder.i, i32* nonnull %im_has_decimal.i) #1, !dbg !2529
  %cmp259.i = icmp eq i32 %4, 110, !dbg !2530
  br i1 %cmp259.i, label %cond.end.265.i, label %cond.false.262.i, !dbg !2531

cond.false.262.i:                                 ; preds = %cond.end.249.i
  %thousands_separators.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 5, !dbg !2532
  %56 = load i32, i32* %thousands_separators.i, align 8, !dbg !2532, !tbaa !1104
  %tobool263.i = icmp ne i32 %56, 0, !dbg !2533
  %cond264.i = select i1 %tobool263.i, i32 1, i32 2, !dbg !2533
  br label %cond.end.265.i, !dbg !2531

cond.end.265.i:                                   ; preds = %cond.false.262.i, %cond.end.249.i
  %cond266.i = phi i32 [ %cond264.i, %cond.false.262.i ], [ 0, %cond.end.249.i ], !dbg !2531
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  %call267.i = call fastcc i32 @get_locale_info(i32 %cond266.i, %struct.LocaleInfo* nonnull %locale.i) #1, !dbg !2534
  %cmp268.i = icmp eq i32 %call267.i, -1, !dbg !2537
  br i1 %cmp268.i, label %done.i, label %if.end.271.i, !dbg !2538

if.end.271.i:                                     ; preds = %cond.end.265.i
  %fill_char272.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format.i, i64 0, i32 0, !dbg !2539
  store i32 0, i32* %fill_char272.i, align 8, !dbg !2540, !tbaa !1004
  %align273.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format.i, i64 0, i32 1, !dbg !2541
  store i32 60, i32* %align273.i, align 4, !dbg !2542, !tbaa !944
  %width.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format.i, i64 0, i32 4, !dbg !2543
  store i64 -1, i64* %width.i, align 8, !dbg !2544, !tbaa !954
  call void @llvm.dbg.value(metadata i64* %n_re_remainder.i, i64 0, metadata !813, metadata !858) #1, !dbg !2523
  %57 = load i64, i64* %n_re_remainder.i, align 8, !dbg !2545, !tbaa !1088
  call void @llvm.dbg.value(metadata i32* %re_has_decimal.i, i64 0, metadata !817, metadata !858) #1, !dbg !2524
  %58 = load i32, i32* %re_has_decimal.i, align 4, !dbg !2546, !tbaa !1163
  call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %tmp_format.i, i64 0, metadata !810, metadata !858) #1, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %re_spec.i, i64 0, metadata !824, metadata !858) #1, !dbg !2548
  call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  %call275.i = call fastcc i64 @calc_number_widths(%struct.NumberFieldWidths* nonnull %re_spec.i, i64 0, i32 %.593.i, i64 %.592.i, i64 %add.i, i64 %57, i32 %58, %struct.LocaleInfo* nonnull %locale.i, %struct.InternalFormatSpec* nonnull %tmp_format.i, i32* nonnull %maxchar.i) #1, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %call275.i, i64 0, metadata !815, metadata !858) #1, !dbg !2550
  %tobool276.i = icmp ne i32 %skip_re.0.i, 0, !dbg !2551
  br i1 %tobool276.i, label %if.end.278.i, label %if.then.277.i, !dbg !2553

if.then.277.i:                                    ; preds = %if.end.271.i
  %sign.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %tmp_format.i, i64 0, i32 3, !dbg !2554
  store i32 43, i32* %sign.i, align 4, !dbg !2555, !tbaa !924
  br label %if.end.278.i, !dbg !2556

if.end.278.i:                                     ; preds = %if.then.277.i, %if.end.271.i
  call void @llvm.dbg.value(metadata i64* %n_im_remainder.i, i64 0, metadata !814, metadata !858) #1, !dbg !2527
  %59 = load i64, i64* %n_im_remainder.i, align 8, !dbg !2557, !tbaa !1088
  call void @llvm.dbg.value(metadata i32* %im_has_decimal.i, i64 0, metadata !818, metadata !858) #1, !dbg !2528
  %60 = load i32, i32* %im_has_decimal.i, align 4, !dbg !2558, !tbaa !1163
  call void @llvm.dbg.value(metadata %struct.InternalFormatSpec* %tmp_format.i, i64 0, metadata !810, metadata !858) #1, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %im_spec.i, i64 0, metadata !825, metadata !858) #1, !dbg !2559
  call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  %call280.i = call fastcc i64 @calc_number_widths(%struct.NumberFieldWidths* nonnull %im_spec.i, i64 0, i32 %.595.i, i64 %.594.i, i64 %add257.i, i64 %59, i32 %60, %struct.LocaleInfo* nonnull %locale.i, %struct.InternalFormatSpec* nonnull %tmp_format.i, i32* nonnull %maxchar.i) #1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %call280.i, i64 0, metadata !816, metadata !858) #1, !dbg !2561
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !815, metadata !858) #1, !dbg !2550
  %.call275.i = select i1 %tobool276.i, i64 0, i64 %call275.i, !dbg !2562
  %mul.i = shl nuw nsw i32 %add_parens.0.i, 1, !dbg !2563
  %conv286.591.i = zext i32 %mul.i to i64, !dbg !2564
  %add284.i = or i64 %conv286.591.i, 1, !dbg !2565
  %add285.i = add i64 %.call275.i, %add284.i, !dbg !2566
  %add287.i = add i64 %add285.i, %call280.i, !dbg !2567
  %width288.i = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !2568
  %61 = load i64, i64* %width288.i, align 8, !dbg !2568, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %add287.i, i64 0, metadata !545, metadata !858) #1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !546, metadata !858) #1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !547, metadata !858) #1, !dbg !2572
  %cmp.i.i = icmp slt i64 %61, 0, !dbg !2573
  %cmp1.i.i = icmp sgt i64 %add287.i, %61, !dbg !2574
  %or.cond.i = or i1 %cmp.i.i, %cmp1.i.i, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !550, metadata !858) #1, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !839, metadata !858) #1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !839, metadata !858) #1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !839, metadata !858) #1, !dbg !2577
  %62 = select i1 %or.cond.i, i64 %add287.i, i64 %61, !dbg !2575
  switch i32 %22, label %if.end.278.calc_padding.exit_crit_edge.i [
    i32 62, label %if.then.6.i.i
    i32 94, label %if.then.9.i.i
  ], !dbg !2578

if.end.278.calc_padding.exit_crit_edge.i:         ; preds = %if.end.278.i
  %.pre613.i = sub i64 %62, %add287.i, !dbg !2579
  br label %calc_padding.exit.i, !dbg !2578

if.then.6.i.i:                                    ; preds = %if.end.278.i
  %sub.i.i = sub i64 %62, %add287.i, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !548, metadata !858) #1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %sub.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  br label %calc_padding.exit.i, !dbg !2583

if.then.9.i.i:                                    ; preds = %if.end.278.i
  %sub10.i.i = sub i64 %62, %add287.i, !dbg !2584
  %div.i.i = sdiv i64 %sub10.i.i, 2, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !548, metadata !858) #1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %div.i.i, i64 0, metadata !837, metadata !858) #1, !dbg !2582
  br label %calc_padding.exit.i, !dbg !2586

calc_padding.exit.i:                              ; preds = %if.then.9.i.i, %if.then.6.i.i, %if.end.278.calc_padding.exit_crit_edge.i
  %sub19.i.pre-phi.i = phi i64 [ %.pre613.i, %if.end.278.calc_padding.exit_crit_edge.i ], [ %sub.i.i, %if.then.6.i.i ], [ %sub10.i.i, %if.then.9.i.i ], !dbg !2579
  %63 = phi i64 [ 0, %if.end.278.calc_padding.exit_crit_edge.i ], [ %sub.i.i, %if.then.6.i.i ], [ %div.i.i, %if.then.9.i.i ], !dbg !2587
  %sub20.i.i = sub i64 %sub19.i.pre-phi.i, %63, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !549, metadata !858) #1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !838, metadata !858) #1, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !838, metadata !858) #1, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !838, metadata !858) #1, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %sub20.i.i, i64 0, metadata !838, metadata !858) #1, !dbg !2590
  %64 = or i64 %sub20.i.i, %63, !dbg !2591
  %65 = icmp eq i64 %64, 0, !dbg !2591
  %.pre.i = load i32, i32* %maxchar.i, align 4, !dbg !2593, !tbaa !1163
  br i1 %65, label %if.end.301.i, label %if.then.292.i, !dbg !2591

if.then.292.i:                                    ; preds = %calc_padding.exit.i
  call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  %cmp294.i = icmp ugt i32 %.pre.i, %20, !dbg !2595
  %.596.i = select i1 %cmp294.i, i32 %.pre.i, i32 %20, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %.596.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  store i32 %.596.i, i32* %maxchar.i, align 4, !dbg !2598, !tbaa !1163
  br label %if.end.301.i, !dbg !2601

if.end.301.i:                                     ; preds = %if.then.292.i, %calc_padding.exit.i
  %66 = phi i32 [ %.596.i, %if.then.292.i ], [ %.pre.i, %calc_padding.exit.i ], !dbg !2602
  call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  %maxchar302.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 3, !dbg !2593
  %67 = load i32, i32* %maxchar302.i, align 4, !dbg !2593, !tbaa !998
  %cmp303.i = icmp ugt i32 %66, %67, !dbg !2593
  br i1 %cmp303.i, label %cond.false.309.i, label %land.lhs.true.305.i, !dbg !2593

land.lhs.true.305.i:                              ; preds = %if.end.301.i
  %size.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 4, !dbg !2604
  %68 = load i64, i64* %size.i, align 8, !dbg !2604, !tbaa !1024
  %pos.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !2604
  %69 = load i64, i64* %pos.i, align 8, !dbg !2604, !tbaa !1025
  %sub.i = sub i64 %68, %69, !dbg !2604
  %cmp306.i = icmp sle i64 %62, %sub.i, !dbg !2604
  %cmp310.i = icmp eq i64 %62, 0, !dbg !2606
  %or.cond434.i = or i1 %cmp310.i, %cmp306.i, !dbg !2604
  br i1 %or.cond434.i, label %if.end.322.i, label %cond.false.313.i, !dbg !2604

cond.false.309.i:                                 ; preds = %if.end.301.i
  %cmp310.old.i = icmp eq i64 %62, 0, !dbg !2606
  br i1 %cmp310.old.i, label %if.end.322.i, label %cond.false.313.i, !dbg !2606

cond.false.313.i:                                 ; preds = %cond.false.309.i, %land.lhs.true.305.i
  call void @llvm.dbg.value(metadata i32* %maxchar.i, i64 0, metadata !828, metadata !858) #1, !dbg !2326
  %call314.i = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %writer, i64 %62, i32 %66) #1, !dbg !2602
  %phitmp.i = icmp eq i32 %call314.i, -1, !dbg !2602
  br i1 %phitmp.i, label %done.i, label %if.end.322.i, !dbg !2609

if.end.322.i:                                     ; preds = %cond.false.313.i, %cond.false.309.i, %land.lhs.true.305.i
  %kind.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 2, !dbg !2610
  %70 = load i32, i32* %kind.i, align 4, !dbg !2610, !tbaa !2611
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !829, metadata !858) #1, !dbg !2612
  %data323.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 1, !dbg !2613
  %71 = load i8*, i8** %data323.i, align 8, !dbg !2613, !tbaa !2614
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !830, metadata !858) #1, !dbg !2615
  %tobool.i.i = icmp eq i64 %63, 0, !dbg !2616
  %.pre614.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !2618
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.601.i, !dbg !2619

if.then.i.601.i:                                  ; preds = %if.end.322.i
  %72 = load i64, i64* %.pre614.i, align 8, !dbg !2620, !tbaa !1025
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !560, metadata !858) #1, !dbg !2621
  %buffer.i.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !2622
  %73 = load %struct._object*, %struct._object** %buffer.i.i, align 8, !dbg !2622, !tbaa !1042
  call void @_PyUnicode_FastFill(%struct._object* %73, i64 %72, i64 %63, i32 %20) #1, !dbg !2623
  br label %if.end.i.i, !dbg !2624

if.end.i.i:                                       ; preds = %if.then.i.601.i, %if.end.322.i
  %tobool2.i.i = icmp eq i64 %sub19.i.pre-phi.i, %63, !dbg !2625
  br i1 %tobool2.i.i, label %fill_padding.exit.i, label %if.then.3.i.i, !dbg !2626

if.then.3.i.i:                                    ; preds = %if.end.i.i
  %74 = load i64, i64* %.pre614.i, align 8, !dbg !2627, !tbaa !1025
  %add.i.i = add i64 %63, %add287.i, !dbg !2628
  %add5.i.i = add i64 %add.i.i, %74, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %add5.i.i, i64 0, metadata !560, metadata !858) #1, !dbg !2621
  %buffer6.i.i = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !2630
  %75 = load %struct._object*, %struct._object** %buffer6.i.i, align 8, !dbg !2630, !tbaa !1042
  call void @_PyUnicode_FastFill(%struct._object* %75, i64 %add5.i.i, i64 %sub20.i.i, i32 %20) #1, !dbg !2631
  br label %fill_padding.exit.i, !dbg !2632

fill_padding.exit.i:                              ; preds = %if.then.3.i.i, %if.end.i.i
  %76 = load i64, i64* %.pre614.i, align 8, !dbg !2633, !tbaa !1025
  %add9.i.i = add i64 %76, %63, !dbg !2633
  store i64 %add9.i.i, i64* %.pre614.i, align 8, !dbg !2633, !tbaa !1025
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !827, metadata !858) #1, !dbg !2324
  %tobool335.i = icmp ne i32 %add_parens.0.i, 0, !dbg !2634
  br i1 %tobool335.i, label %do.body.i, label %if.end.346.i, !dbg !2636

do.body.i:                                        ; preds = %fill_padding.exit.i
  switch i32 %70, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb.339.i
  ], !dbg !2637

sw.bb.i:                                          ; preds = %do.body.i
  %arrayidx338.i = getelementptr i8, i8* %71, i64 %add9.i.i, !dbg !2641
  store i8 40, i8* %arrayidx338.i, align 1, !dbg !2641, !tbaa !1132
  %.pre610.i = load i64, i64* %.pre614.i, align 8, !dbg !2645, !tbaa !1025
  br label %do.end.i, !dbg !2641

sw.bb.339.i:                                      ; preds = %do.body.i
  %77 = bitcast i8* %71 to i16*, !dbg !2646
  %arrayidx341.i = getelementptr i16, i16* %77, i64 %add9.i.i, !dbg !2646
  store i16 40, i16* %arrayidx341.i, align 2, !dbg !2646, !tbaa !1148
  br label %do.end.i, !dbg !2646

sw.default.i:                                     ; preds = %do.body.i
  %78 = bitcast i8* %71 to i32*, !dbg !2649
  %arrayidx343.i = getelementptr i32, i32* %78, i64 %add9.i.i, !dbg !2649
  store i32 40, i32* %arrayidx343.i, align 4, !dbg !2649, !tbaa !1163
  br label %do.end.i, !dbg !2652

do.end.i:                                         ; preds = %sw.default.i, %sw.bb.339.i, %sw.bb.i
  %79 = phi i64 [ %add9.i.i, %sw.default.i ], [ %add9.i.i, %sw.bb.339.i ], [ %.pre610.i, %sw.bb.i ], !dbg !2645
  %inc345.i = add i64 %79, 1, !dbg !2645
  store i64 %inc345.i, i64* %.pre614.i, align 8, !dbg !2645, !tbaa !1025
  br label %if.end.346.i, !dbg !2653

if.end.346.i:                                     ; preds = %do.end.i, %fill_padding.exit.i
  br i1 %tobool276.i, label %if.end.355.i, label %if.then.348.i, !dbg !2654

if.then.348.i:                                    ; preds = %if.end.346.i
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %re_spec.i, i64 0, metadata !824, metadata !858) #1, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  %call350.i = call fastcc i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* nonnull %re_spec.i, %struct._object* %call67.i, i64 %.592.i, %struct._object* null, i64 0, i32 0, %struct.LocaleInfo* nonnull %locale.i, i32 0) #1, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %call350.i, i64 0, metadata !827, metadata !858) #1, !dbg !2324
  %cmp351.i = icmp eq i32 %call350.i, -1, !dbg !2658
  br i1 %cmp351.i, label %done.i, label %if.end.355.i, !dbg !2660

if.end.355.i:                                     ; preds = %if.then.348.i, %if.end.346.i
  call void @llvm.dbg.value(metadata %struct.NumberFieldWidths* %im_spec.i, i64 0, metadata !825, metadata !858) #1, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  %call357.i = call fastcc i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* nonnull %im_spec.i, %struct._object* %call72.i, i64 %.594.i, %struct._object* null, i64 0, i32 0, %struct.LocaleInfo* nonnull %locale.i, i32 0) #1, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %call357.i, i64 0, metadata !827, metadata !858) #1, !dbg !2324
  %cmp358.i = icmp eq i32 %call357.i, -1, !dbg !2662
  br i1 %cmp358.i, label %done.i, label %do.body.362.i, !dbg !2664

do.body.362.i:                                    ; preds = %if.end.355.i
  switch i32 %70, label %sw.default.369.i [
    i32 1, label %sw.bb.363.i
    i32 2, label %sw.bb.366.i
  ], !dbg !2665

sw.bb.363.i:                                      ; preds = %do.body.362.i
  %80 = load i64, i64* %.pre614.i, align 8, !dbg !2668, !tbaa !1025
  %arrayidx365.i = getelementptr i8, i8* %71, i64 %80, !dbg !2668
  store i8 106, i8* %arrayidx365.i, align 1, !dbg !2668, !tbaa !1132
  %.pre611.i = load i64, i64* %.pre614.i, align 8, !dbg !2672, !tbaa !1025
  br label %do.end.374.i, !dbg !2668

sw.bb.366.i:                                      ; preds = %do.body.362.i
  %81 = load i64, i64* %.pre614.i, align 8, !dbg !2673, !tbaa !1025
  %82 = bitcast i8* %71 to i16*, !dbg !2673
  %arrayidx368.i = getelementptr i16, i16* %82, i64 %81, !dbg !2673
  store i16 106, i16* %arrayidx368.i, align 2, !dbg !2673, !tbaa !1148
  br label %do.end.374.i, !dbg !2673

sw.default.369.i:                                 ; preds = %do.body.362.i
  %83 = load i64, i64* %.pre614.i, align 8, !dbg !2676, !tbaa !1025
  %84 = bitcast i8* %71 to i32*, !dbg !2676
  %arrayidx371.i = getelementptr i32, i32* %84, i64 %83, !dbg !2676
  store i32 106, i32* %arrayidx371.i, align 4, !dbg !2676, !tbaa !1163
  br label %do.end.374.i, !dbg !2679

do.end.374.i:                                     ; preds = %sw.default.369.i, %sw.bb.366.i, %sw.bb.363.i
  %85 = phi i64 [ %83, %sw.default.369.i ], [ %81, %sw.bb.366.i ], [ %.pre611.i, %sw.bb.363.i ], !dbg !2672
  %inc376.i = add i64 %85, 1, !dbg !2672
  store i64 %inc376.i, i64* %.pre614.i, align 8, !dbg !2672, !tbaa !1025
  br i1 %tobool335.i, label %do.body.379.i, label %if.end.394.i, !dbg !2680

do.body.379.i:                                    ; preds = %do.end.374.i
  switch i32 %70, label %sw.default.386.i [
    i32 1, label %sw.bb.380.i
    i32 2, label %sw.bb.383.i
  ], !dbg !2681

sw.bb.380.i:                                      ; preds = %do.body.379.i
  %arrayidx382.i = getelementptr i8, i8* %71, i64 %inc376.i, !dbg !2686
  store i8 41, i8* %arrayidx382.i, align 1, !dbg !2686, !tbaa !1132
  %.pre612.i = load i64, i64* %.pre614.i, align 8, !dbg !2690, !tbaa !1025
  br label %do.end.391.i, !dbg !2686

sw.bb.383.i:                                      ; preds = %do.body.379.i
  %86 = bitcast i8* %71 to i16*, !dbg !2691
  %arrayidx385.i = getelementptr i16, i16* %86, i64 %inc376.i, !dbg !2691
  store i16 41, i16* %arrayidx385.i, align 2, !dbg !2691, !tbaa !1148
  br label %do.end.391.i, !dbg !2691

sw.default.386.i:                                 ; preds = %do.body.379.i
  %87 = bitcast i8* %71 to i32*, !dbg !2694
  %arrayidx388.i = getelementptr i32, i32* %87, i64 %inc376.i, !dbg !2694
  store i32 41, i32* %arrayidx388.i, align 4, !dbg !2694, !tbaa !1163
  br label %do.end.391.i, !dbg !2697

do.end.391.i:                                     ; preds = %sw.default.386.i, %sw.bb.383.i, %sw.bb.380.i
  %88 = phi i64 [ %inc376.i, %sw.default.386.i ], [ %inc376.i, %sw.bb.383.i ], [ %.pre612.i, %sw.bb.380.i ], !dbg !2690
  %inc393.i = add i64 %88, 1, !dbg !2690
  store i64 %inc393.i, i64* %.pre614.i, align 8, !dbg !2690, !tbaa !1025
  br label %if.end.394.i, !dbg !2698

if.end.394.i:                                     ; preds = %do.end.391.i, %do.end.374.i
  %89 = phi i64 [ %inc393.i, %do.end.391.i ], [ %inc376.i, %do.end.374.i ], !dbg !2699
  %add396.i = add i64 %89, %sub20.i.i, !dbg !2699
  store i64 %add396.i, i64* %.pre614.i, align 8, !dbg !2699, !tbaa !1025
  br label %done.i, !dbg !2700

done.i:                                           ; preds = %if.end.394.i, %if.end.355.i, %if.then.348.i, %cond.false.313.i, %cond.end.265.i, %if.end.71.i, %if.end.64.i, %if.end.58.i, %if.end.39.i, %land.lhs.true.20.i, %land.lhs.true.i, %if.then.10.i, %if.then.6.i, %if.then.i
  %result.0.i = phi i32 [ -1, %if.then.i ], [ -1, %if.then.6.i ], [ -1, %if.then.10.i ], [ -1, %land.lhs.true.i ], [ -1, %land.lhs.true.20.i ], [ -1, %if.end.39.i ], [ -1, %if.end.58.i ], [ -1, %if.end.64.i ], [ -1, %if.end.71.i ], [ -1, %cond.end.265.i ], [ -1, %cond.false.313.i ], [ -1, %if.end.355.i ], [ %call357.i, %if.end.394.i ], [ -1, %if.then.348.i ], !dbg !2393
  %re_unicode_tmp.0.i = phi %struct._object* [ null, %if.then.i ], [ null, %if.then.6.i ], [ null, %if.then.10.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.20.i ], [ null, %if.end.39.i ], [ null, %if.end.58.i ], [ null, %if.end.64.i ], [ %call67.i, %if.end.71.i ], [ %call67.i, %cond.end.265.i ], [ %call67.i, %cond.false.313.i ], [ %call67.i, %if.end.355.i ], [ %call67.i, %if.end.394.i ], [ %call67.i, %if.then.348.i ], !dbg !2393
  %im_unicode_tmp.0.i = phi %struct._object* [ null, %if.then.i ], [ null, %if.then.6.i ], [ null, %if.then.10.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.20.i ], [ null, %if.end.39.i ], [ null, %if.end.58.i ], [ null, %if.end.64.i ], [ null, %if.end.71.i ], [ %call72.i, %cond.end.265.i ], [ %call72.i, %cond.false.313.i ], [ %call72.i, %if.end.355.i ], [ %call72.i, %if.end.394.i ], [ %call72.i, %if.then.348.i ], !dbg !2393
  %im_buf.0.i = phi i8* [ null, %if.then.i ], [ null, %if.then.6.i ], [ null, %if.then.10.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.20.i ], [ null, %if.end.39.i ], [ null, %if.end.58.i ], [ %call60.i, %if.end.64.i ], [ %call60.i, %if.end.71.i ], [ %call60.i, %cond.end.265.i ], [ %call60.i, %cond.false.313.i ], [ %call60.i, %if.end.355.i ], [ %call60.i, %if.end.394.i ], [ %call60.i, %if.then.348.i ], !dbg !2393
  %re_buf.0.i = phi i8* [ null, %if.then.i ], [ null, %if.then.6.i ], [ null, %if.then.10.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.20.i ], [ null, %if.end.39.i ], [ %call54.i, %if.end.58.i ], [ %call54.i, %if.end.64.i ], [ %call54.i, %if.end.71.i ], [ %call54.i, %cond.end.265.i ], [ %call54.i, %cond.false.313.i ], [ %call54.i, %if.end.355.i ], [ %call54.i, %if.end.394.i ], [ %call54.i, %if.then.348.i ], !dbg !2393
  call void @PyMem_Free(i8* %re_buf.0.i) #1, !dbg !2701
  call void @PyMem_Free(i8* %im_buf.0.i) #1, !dbg !2702
  call void @llvm.dbg.value(metadata %struct._object* %re_unicode_tmp.0.i, i64 0, metadata !843, metadata !858) #1, !dbg !2703
  %cmp398.i = icmp eq %struct._object* %re_unicode_tmp.0.i, null, !dbg !2705
  br i1 %cmp398.i, label %if.end.410.i, label %do.body.401.i, !dbg !2706

do.body.401.i:                                    ; preds = %done.i
  call void @llvm.dbg.value(metadata %struct._object* %re_unicode_tmp.0.i, i64 0, metadata !845, metadata !858) #1, !dbg !2707
  %ob_refcnt.i.16 = getelementptr inbounds %struct._object, %struct._object* %re_unicode_tmp.0.i, i64 0, i32 0, !dbg !2709
  %90 = load i64, i64* %ob_refcnt.i.16, align 8, !dbg !2709, !tbaa !894
  %dec402.i = add i64 %90, -1, !dbg !2709
  store i64 %dec402.i, i64* %ob_refcnt.i.16, align 8, !dbg !2709, !tbaa !894
  %cmp403.i = icmp eq i64 %dec402.i, 0, !dbg !2709
  br i1 %cmp403.i, label %if.else.406.i, label %if.end.410.i, !dbg !2711

if.else.406.i:                                    ; preds = %do.body.401.i
  %ob_type.i.17 = getelementptr inbounds %struct._object, %struct._object* %re_unicode_tmp.0.i, i64 0, i32 1, !dbg !2712
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.17, align 8, !dbg !2712, !tbaa !871
  %tp_dealloc.i.18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i64 0, i32 4, !dbg !2712
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.18, align 8, !dbg !2712, !tbaa !898
  call void %92(%struct._object* %re_unicode_tmp.0.i) #1, !dbg !2712
  br label %if.end.410.i, !dbg !2393

if.end.410.i:                                     ; preds = %if.else.406.i, %do.body.401.i, %done.i
  call void @llvm.dbg.value(metadata %struct._object* %im_unicode_tmp.0.i, i64 0, metadata !848, metadata !858) #1, !dbg !2714
  %cmp415.i = icmp eq %struct._object* %im_unicode_tmp.0.i, null, !dbg !2716
  br i1 %cmp415.i, label %if.end.431.i, label %do.body.418.i, !dbg !2717

do.body.418.i:                                    ; preds = %if.end.410.i
  call void @llvm.dbg.value(metadata %struct._object* %im_unicode_tmp.0.i, i64 0, metadata !850, metadata !858) #1, !dbg !2718
  %ob_refcnt420.i = getelementptr inbounds %struct._object, %struct._object* %im_unicode_tmp.0.i, i64 0, i32 0, !dbg !2720
  %93 = load i64, i64* %ob_refcnt420.i, align 8, !dbg !2720, !tbaa !894
  %dec421.i = add i64 %93, -1, !dbg !2720
  store i64 %dec421.i, i64* %ob_refcnt420.i, align 8, !dbg !2720, !tbaa !894
  %cmp422.i = icmp eq i64 %dec421.i, 0, !dbg !2720
  br i1 %cmp422.i, label %if.else.425.i, label %if.end.431.i, !dbg !2722

if.else.425.i:                                    ; preds = %do.body.418.i
  %ob_type426.i = getelementptr inbounds %struct._object, %struct._object* %im_unicode_tmp.0.i, i64 0, i32 1, !dbg !2723
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type426.i, align 8, !dbg !2723, !tbaa !871
  %tp_dealloc427.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i64 0, i32 4, !dbg !2723
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc427.i, align 8, !dbg !2723, !tbaa !898
  call void %95(%struct._object* %im_unicode_tmp.0.i) #1, !dbg !2723
  br label %if.end.431.i, !dbg !2393

if.end.431.i:                                     ; preds = %if.else.425.i, %do.body.418.i, %if.end.410.i
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !842, metadata !858) #1, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale.i, i64 0, metadata !749, metadata !858) #1, !dbg !2725
  %decimal_point.i.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale.i, i64 0, i32 0, !dbg !2727
  %96 = load %struct._object*, %struct._object** %decimal_point.i.i, align 8, !dbg !2727, !tbaa !1973
  call void @llvm.dbg.value(metadata %struct._object* %96, i64 0, metadata !750, metadata !858) #1, !dbg !2727
  %cmp.i.598.i = icmp eq %struct._object* %96, null, !dbg !2728
  br i1 %cmp.i.598.i, label %if.end.4.i.600.i, label %do.body.1.i.i, !dbg !2729

do.body.1.i.i:                                    ; preds = %if.end.431.i
  call void @llvm.dbg.value(metadata %struct._object* %96, i64 0, metadata !752, metadata !858) #1, !dbg !2730
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %96, i64 0, i32 0, !dbg !2731
  %97 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !2731, !tbaa !894
  %dec.i.i = add i64 %97, -1, !dbg !2731
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !2731, !tbaa !894
  %cmp2.i.i = icmp eq i64 %dec.i.i, 0, !dbg !2731
  br i1 %cmp2.i.i, label %if.else.i.599.i, label %if.end.4.i.600.i, !dbg !2732

if.else.i.599.i:                                  ; preds = %do.body.1.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %96, i64 0, i32 1, !dbg !2733
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !2733, !tbaa !871
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i64 0, i32 4, !dbg !2733
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !2733, !tbaa !898
  call void %99(%struct._object* %96) #1, !dbg !2733
  br label %if.end.4.i.600.i, !dbg !2734

if.end.4.i.600.i:                                 ; preds = %if.else.i.599.i, %do.body.1.i.i, %if.end.431.i
  %thousands_sep.i.i = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale.i, i64 0, i32 1, !dbg !2735
  %100 = load %struct._object*, %struct._object** %thousands_sep.i.i, align 8, !dbg !2735, !tbaa !1987
  call void @llvm.dbg.value(metadata %struct._object* %100, i64 0, metadata !755, metadata !858) #1, !dbg !2735
  %cmp9.i.i = icmp eq %struct._object* %100, null, !dbg !2736
  br i1 %cmp9.i.i, label %format_complex_internal.exit, label %do.body.11.i.i, !dbg !2737

do.body.11.i.i:                                   ; preds = %if.end.4.i.600.i
  call void @llvm.dbg.value(metadata %struct._object* %100, i64 0, metadata !757, metadata !858) #1, !dbg !2738
  %ob_refcnt13.i.i = getelementptr inbounds %struct._object, %struct._object* %100, i64 0, i32 0, !dbg !2739
  %101 = load i64, i64* %ob_refcnt13.i.i, align 8, !dbg !2739, !tbaa !894
  %dec14.i.i = add i64 %101, -1, !dbg !2739
  store i64 %dec14.i.i, i64* %ob_refcnt13.i.i, align 8, !dbg !2739, !tbaa !894
  %cmp15.i.i = icmp eq i64 %dec14.i.i, 0, !dbg !2739
  br i1 %cmp15.i.i, label %if.else.17.i.i, label %format_complex_internal.exit, !dbg !2740

if.else.17.i.i:                                   ; preds = %do.body.11.i.i
  %ob_type18.i.i = getelementptr inbounds %struct._object, %struct._object* %100, i64 0, i32 1, !dbg !2741
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type18.i.i, align 8, !dbg !2741, !tbaa !871
  %tp_dealloc19.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i64 0, i32 4, !dbg !2741
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19.i.i, align 8, !dbg !2741, !tbaa !898
  call void %103(%struct._object* %100) #1, !dbg !2741
  br label %format_complex_internal.exit, !dbg !2734

format_complex_internal.exit:                     ; preds = %if.end.4.i.600.i, %do.body.11.i.i, %if.else.17.i.i
  call void @llvm.lifetime.end(i64 24, i8* %15) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 88, i8* %11) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 88, i8* %10) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !2742
  call void @llvm.lifetime.end(i64 48, i8* %5) #1, !dbg !2742
  br label %cleanup, !dbg !2743

sw.default:                                       ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 1, !dbg !2744
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2744, !tbaa !871
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i64 0, i32 1, !dbg !2745
  %105 = load i8*, i8** %tp_name, align 8, !dbg !2745, !tbaa !1068
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !565, metadata !858) #1, !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !566, metadata !858) #1, !dbg !2748
  %presentation_type.off.i = add i32 %4, -33, !dbg !2749
  %106 = icmp ult i32 %presentation_type.off.i, 95, !dbg !2749
  %107 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2750, !tbaa !929
  br i1 %106, label %if.then.i.20, label %if.else.i.21, !dbg !2749

if.then.i.20:                                     ; preds = %sw.default
  %sext.i = shl i32 %4, 24, !dbg !2751
  %conv2.i = ashr exact i32 %sext.i, 24, !dbg !2751
  %call.i.19 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %107, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %conv2.i, i8* %105) #1, !dbg !2752
  br label %cleanup, !dbg !2752

if.else.i.21:                                     ; preds = %sw.default
  %call3.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %107, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %4, i8* %105) #1, !dbg !2753
  br label %cleanup, !dbg !2754

cleanup:                                          ; preds = %if.else.i.21, %if.then.i.20, %if.else.i, %if.end.i, %if.then, %if.end, %format_complex_internal.exit
  %retval.0 = phi i32 [ %result.0.i, %format_complex_internal.exit ], [ -1, %if.end ], [ -1, %if.then ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], [ -1, %if.then.i.20 ], [ -1, %if.else.i.21 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #1, !dbg !2755
  ret i32 %retval.0, !dbg !2755
}

declare %struct._object* @PyObject_Str(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_integer(%struct._object* nocapture readonly %str, i64* nocapture %pos, i64 %end, i64* nocapture %result) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %str, i64 0, metadata !511, metadata !858), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !512, metadata !858), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !513, metadata !858), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64* %result, i64 0, metadata !514, metadata !858), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !517, metadata !858), !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !515, metadata !858), !dbg !2761
  %0 = load i64, i64* %pos, align 8, !dbg !2762, !tbaa !1088
  %cmp.111 = icmp slt i64 %0, %end, !dbg !2767
  br i1 %cmp.111, label %if.end.lr.ph, label %for.end, !dbg !2768

if.end.lr.ph:                                     ; preds = %entry
  %state = getelementptr inbounds %struct._object, %struct._object* %str, i64 2, !dbg !2769
  %1 = bitcast %struct._object* %state to i32*, !dbg !2769
  %data = getelementptr inbounds %struct._object, %struct._object* %str, i64 4, i32 1, !dbg !2770
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !2770
  %add.ptr = getelementptr %struct._object, %struct._object* %str, i64 3, !dbg !2772
  %2 = bitcast %struct._object* %add.ptr to i8*, !dbg !2772
  %3 = bitcast %struct._typeobject** %data to i8*, !dbg !2774
  br label %if.end, !dbg !2768

if.end:                                           ; preds = %if.end.lr.ph, %if.end.86
  %4 = phi i64 [ %0, %if.end.lr.ph ], [ %inc, %if.end.86 ]
  %numdigits.0113 = phi i32 [ 0, %if.end.lr.ph ], [ %inc87, %if.end.86 ]
  %accumulator.0112 = phi i64 [ 0, %if.end.lr.ph ], [ %add, %if.end.86 ]
  %bf.load = load i32, i32* %1, align 4, !dbg !2769
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2769
  %bf.clear = and i32 %bf.lshr, 7, !dbg !2769
  %cmp1 = icmp eq i32 %bf.clear, 1, !dbg !2769
  br i1 %cmp1, label %cond.true, label %cond.false.17, !dbg !2769

cond.true:                                        ; preds = %if.end
  %bf.clear5 = and i32 %bf.load, 32, !dbg !2776
  %tobool = icmp eq i32 %bf.clear5, 0, !dbg !2776
  br i1 %tobool, label %cond.false.14, label %cond.true.6, !dbg !2776

cond.true.6:                                      ; preds = %cond.true
  %bf.clear10 = and i32 %bf.load, 64, !dbg !2778
  %tobool11 = icmp ne i32 %bf.clear10, 0, !dbg !2778
  %cond = select i1 %tobool11, i8* %2, i8* %3, !dbg !2778
  br label %cond.end.15, !dbg !2778

cond.false.14:                                    ; preds = %cond.true
  %5 = load i8*, i8** %any, align 8, !dbg !2770, !tbaa !929
  br label %cond.end.15, !dbg !2770

cond.end.15:                                      ; preds = %cond.true.6, %cond.false.14
  %cond16 = phi i8* [ %5, %cond.false.14 ], [ %cond, %cond.true.6 ], !dbg !2769
  %arrayidx = getelementptr i8, i8* %cond16, i64 %4, !dbg !2780
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2780, !tbaa !1132
  %conv = zext i8 %6 to i32, !dbg !2780
  br label %cond.end.75, !dbg !2780

cond.false.17:                                    ; preds = %if.end
  %cmp22 = icmp eq i32 %bf.clear, 2, !dbg !2783
  %bf.clear28 = and i32 %bf.load, 32, !dbg !2785
  %tobool29 = icmp ne i32 %bf.clear28, 0, !dbg !2785
  br i1 %cmp22, label %cond.true.24, label %cond.false.49, !dbg !2783

cond.true.24:                                     ; preds = %cond.false.17
  br i1 %tobool29, label %cond.true.30, label %cond.false.42, !dbg !2785

cond.true.30:                                     ; preds = %cond.true.24
  %bf.clear34 = and i32 %bf.load, 64, !dbg !2787
  %tobool35 = icmp ne i32 %bf.clear34, 0, !dbg !2787
  %cond41 = select i1 %tobool35, i8* %2, i8* %3, !dbg !2787
  br label %cond.end.45, !dbg !2787

cond.false.42:                                    ; preds = %cond.true.24
  %7 = load i8*, i8** %any, align 8, !dbg !2789, !tbaa !929
  br label %cond.end.45, !dbg !2789

cond.end.45:                                      ; preds = %cond.true.30, %cond.false.42
  %cond46 = phi i8* [ %7, %cond.false.42 ], [ %cond41, %cond.true.30 ], !dbg !2769
  %8 = bitcast i8* %cond46 to i16*, !dbg !2791
  %arrayidx47 = getelementptr i16, i16* %8, i64 %4, !dbg !2791
  %9 = load i16, i16* %arrayidx47, align 2, !dbg !2791, !tbaa !1148
  %conv48 = zext i16 %9 to i32, !dbg !2791
  br label %cond.end.75, !dbg !2791

cond.false.49:                                    ; preds = %cond.false.17
  br i1 %tobool29, label %cond.true.55, label %cond.false.67, !dbg !2794

cond.true.55:                                     ; preds = %cond.false.49
  %bf.clear59 = and i32 %bf.load, 64, !dbg !2796
  %tobool60 = icmp ne i32 %bf.clear59, 0, !dbg !2796
  %cond66 = select i1 %tobool60, i8* %2, i8* %3, !dbg !2796
  br label %cond.end.70, !dbg !2796

cond.false.67:                                    ; preds = %cond.false.49
  %10 = load i8*, i8** %any, align 8, !dbg !2798, !tbaa !929
  br label %cond.end.70, !dbg !2798

cond.end.70:                                      ; preds = %cond.true.55, %cond.false.67
  %cond71 = phi i8* [ %10, %cond.false.67 ], [ %cond66, %cond.true.55 ], !dbg !2769
  %11 = bitcast i8* %cond71 to i32*, !dbg !2800
  %arrayidx72 = getelementptr i32, i32* %11, i64 %4, !dbg !2800
  %12 = load i32, i32* %arrayidx72, align 4, !dbg !2800, !tbaa !1163
  br label %cond.end.75, !dbg !2800

cond.end.75:                                      ; preds = %cond.end.45, %cond.end.70, %cond.end.15
  %cond76 = phi i32 [ %conv, %cond.end.15 ], [ %conv48, %cond.end.45 ], [ %12, %cond.end.70 ], !dbg !2769
  %call = tail call i32 @_PyUnicode_ToDecimalDigit(i32 %cond76) #1, !dbg !2803
  %conv77 = sext i32 %call to i64, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %conv77, i64 0, metadata !516, metadata !858), !dbg !2806
  %cmp78 = icmp slt i32 %call, 0, !dbg !2807
  br i1 %cmp78, label %for.end.loopexit, label %if.end.81, !dbg !2809

if.end.81:                                        ; preds = %cond.end.75
  %sub = sub i64 9223372036854775807, %conv77, !dbg !2810
  %div = sdiv i64 %sub, 10, !dbg !2812
  %cmp82 = icmp sgt i64 %accumulator.0112, %div, !dbg !2813
  br i1 %cmp82, label %if.then.84, label %if.end.86, !dbg !2814

if.then.84:                                       ; preds = %if.end.81
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2815, !tbaa !929
  %call85 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !2817
  br label %cleanup, !dbg !2818

if.end.86:                                        ; preds = %if.end.81
  %mul = mul i64 %accumulator.0112, 10, !dbg !2819
  %add = add i64 %conv77, %mul, !dbg !2820
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !515, metadata !858), !dbg !2761
  %14 = load i64, i64* %pos, align 8, !dbg !2821, !tbaa !1088
  %inc = add i64 %14, 1, !dbg !2821
  store i64 %inc, i64* %pos, align 8, !dbg !2821, !tbaa !1088
  %inc87 = add i32 %numdigits.0113, 1, !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 %inc87, i64 0, metadata !517, metadata !858), !dbg !2760
  %cmp = icmp slt i64 %inc, %end, !dbg !2767
  br i1 %cmp, label %if.end, label %for.end.loopexit, !dbg !2768

for.end.loopexit:                                 ; preds = %if.end.86, %cond.end.75
  %numdigits.0.lcssa.ph = phi i32 [ %numdigits.0113, %cond.end.75 ], [ %inc87, %if.end.86 ]
  %accumulator.0.lcssa.ph = phi i64 [ %accumulator.0112, %cond.end.75 ], [ %add, %if.end.86 ]
  br label %for.end, !dbg !2823

for.end:                                          ; preds = %for.end.loopexit, %entry
  %numdigits.0.lcssa = phi i32 [ 0, %entry ], [ %numdigits.0.lcssa.ph, %for.end.loopexit ]
  %accumulator.0.lcssa = phi i64 [ 0, %entry ], [ %accumulator.0.lcssa.ph, %for.end.loopexit ]
  store i64 %accumulator.0.lcssa, i64* %result, align 8, !dbg !2823, !tbaa !1088
  br label %cleanup, !dbg !2824

cleanup:                                          ; preds = %for.end, %if.then.84
  %retval.0 = phi i32 [ %numdigits.0.lcssa, %for.end ], [ -1, %if.then.84 ]
  ret i32 %retval.0, !dbg !2825
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i32 @_PyUnicode_ToDecimalDigit(i32) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @_PyUnicode_FindMaxChar(%struct._object*, i64, i64) #2

declare i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter*, i64, i32) #2

declare void @_PyUnicode_FastCopyCharacters(%struct._object*, i64, %struct._object*, i64, i64) #2

declare void @_PyUnicode_FastFill(%struct._object*, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i64 @PyLong_AsLong(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyUnicode_FromOrdinal(i32) #2

declare %struct._object* @_PyLong_Format(%struct._object*, i32) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_locale_info(i32 %type, %struct.LocaleInfo* nocapture %locale_info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !619, metadata !858), !dbg !2826
  tail call void @llvm.dbg.value(metadata %struct.LocaleInfo* %locale_info, i64 0, metadata !620, metadata !858), !dbg !2827
  switch i32 %type, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.65
  ], !dbg !2828

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.lconv* @localeconv() #1, !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.lconv* %call, i64 0, metadata !621, metadata !858), !dbg !2830
  %decimal_point = getelementptr inbounds %struct.lconv, %struct.lconv* %call, i64 0, i32 0, !dbg !2831
  %0 = load i8*, i8** %decimal_point, align 8, !dbg !2831, !tbaa !2832
  %call1 = tail call %struct._object* @PyUnicode_DecodeLocale(i8* %0, i8* null) #1, !dbg !2834
  %decimal_point2 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 0, !dbg !2835
  store %struct._object* %call1, %struct._object** %decimal_point2, align 8, !dbg !2836, !tbaa !1973
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2837
  br i1 %cmp, label %return, label %if.end, !dbg !2839

if.end:                                           ; preds = %sw.bb
  %thousands_sep = getelementptr inbounds %struct.lconv, %struct.lconv* %call, i64 0, i32 1, !dbg !2840
  %1 = load i8*, i8** %thousands_sep, align 8, !dbg !2840, !tbaa !2841
  %call4 = tail call %struct._object* @PyUnicode_DecodeLocale(i8* %1, i8* null) #1, !dbg !2842
  %thousands_sep5 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 1, !dbg !2843
  store %struct._object* %call4, %struct._object** %thousands_sep5, align 8, !dbg !2844, !tbaa !1987
  %cmp7 = icmp eq %struct._object* %call4, null, !dbg !2845
  br i1 %cmp7, label %do.body, label %if.end.13, !dbg !2846

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %decimal_point2, align 8, !dbg !2847, !tbaa !1973
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !652, metadata !858), !dbg !2847
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !2849
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2849, !tbaa !894
  %dec = add i64 %3, -1, !dbg !2849
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2849, !tbaa !894
  %cmp10 = icmp eq i64 %dec, 0, !dbg !2849
  br i1 %cmp10, label %if.else, label %return, !dbg !2851

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !2852
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2852, !tbaa !871
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2852
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2852, !tbaa !898
  tail call void %5(%struct._object* %2) #1, !dbg !2852
  br label %return

if.end.13:                                        ; preds = %if.end
  %grouping = getelementptr inbounds %struct.lconv, %struct.lconv* %call, i64 0, i32 2, !dbg !2854
  %6 = bitcast i8** %grouping to i64*, !dbg !2854
  %7 = load i64, i64* %6, align 8, !dbg !2854, !tbaa !2855
  %grouping14 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 2, !dbg !2856
  %8 = bitcast i8** %grouping14 to i64*, !dbg !2857
  store i64 %7, i64* %8, align 8, !dbg !2857, !tbaa !2858
  br label %return

sw.bb.15:                                         ; preds = %entry
  %call16 = tail call %struct._object* @PyUnicode_FromOrdinal(i32 46) #1, !dbg !2859
  %decimal_point17 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 0, !dbg !2860
  store %struct._object* %call16, %struct._object** %decimal_point17, align 8, !dbg !2861, !tbaa !1973
  %call18 = tail call %struct._object* @PyUnicode_FromOrdinal(i32 44) #1, !dbg !2862
  %thousands_sep19 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 1, !dbg !2863
  store %struct._object* %call18, %struct._object** %thousands_sep19, align 8, !dbg !2864, !tbaa !1987
  %9 = load %struct._object*, %struct._object** %decimal_point17, align 8, !dbg !2865, !tbaa !1973
  %tobool = icmp eq %struct._object* %9, null, !dbg !2866
  %tobool22 = icmp eq %struct._object* %call18, null, !dbg !2867
  %or.cond = or i1 %tobool22, %tobool, !dbg !2868
  br i1 %or.cond, label %do.body.24, label %if.end.63, !dbg !2868

do.body.24:                                       ; preds = %sw.bb.15
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !656, metadata !858), !dbg !2869
  br i1 %tobool, label %if.end.40, label %do.body.28, !dbg !2871

do.body.28:                                       ; preds = %do.body.24
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !660, metadata !858), !dbg !2872
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !2874
  %10 = load i64, i64* %ob_refcnt30, align 8, !dbg !2874, !tbaa !894
  %dec31 = add i64 %10, -1, !dbg !2874
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !2874, !tbaa !894
  %cmp32 = icmp eq i64 %dec31, 0, !dbg !2874
  br i1 %cmp32, label %if.else.34, label %if.end.40, !dbg !2876

if.else.34:                                       ; preds = %do.body.28
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !2877
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !2877, !tbaa !871
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2877
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !2877, !tbaa !898
  tail call void %12(%struct._object* %9) #1, !dbg !2877
  %.pre164 = load %struct._object*, %struct._object** %thousands_sep19, align 8, !dbg !2879, !tbaa !1987
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.34, %do.body.28, %do.body.24
  %13 = phi %struct._object* [ %.pre164, %if.else.34 ], [ %call18, %do.body.28 ], [ %call18, %do.body.24 ], !dbg !2879
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !663, metadata !858), !dbg !2879
  %cmp46 = icmp eq %struct._object* %13, null, !dbg !2881
  br i1 %cmp46, label %return, label %do.body.48, !dbg !2882

do.body.48:                                       ; preds = %if.end.40
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !665, metadata !858), !dbg !2883
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !2885
  %14 = load i64, i64* %ob_refcnt50, align 8, !dbg !2885, !tbaa !894
  %dec51 = add i64 %14, -1, !dbg !2885
  store i64 %dec51, i64* %ob_refcnt50, align 8, !dbg !2885, !tbaa !894
  %cmp52 = icmp eq i64 %dec51, 0, !dbg !2885
  br i1 %cmp52, label %if.else.54, label %return, !dbg !2887

if.else.54:                                       ; preds = %do.body.48
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !2888
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8, !dbg !2888, !tbaa !871
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !2888
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8, !dbg !2888, !tbaa !898
  tail call void %16(%struct._object* %13) #1, !dbg !2888
  br label %return

if.end.63:                                        ; preds = %sw.bb.15
  %grouping64 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 2, !dbg !2890
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %grouping64, align 8, !dbg !2891, !tbaa !2858
  br label %return, !dbg !2892

sw.bb.65:                                         ; preds = %entry
  %call66 = tail call %struct._object* @PyUnicode_FromOrdinal(i32 46) #1, !dbg !2893
  %decimal_point67 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 0, !dbg !2894
  store %struct._object* %call66, %struct._object** %decimal_point67, align 8, !dbg !2895, !tbaa !1973
  %call68 = tail call %struct._object* @PyUnicode_New(i64 0, i32 0) #1, !dbg !2896
  %thousands_sep69 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 1, !dbg !2897
  store %struct._object* %call68, %struct._object** %thousands_sep69, align 8, !dbg !2898, !tbaa !1987
  %17 = load %struct._object*, %struct._object** %decimal_point67, align 8, !dbg !2899, !tbaa !1973
  %tobool71 = icmp eq %struct._object* %17, null, !dbg !2900
  %tobool74 = icmp eq %struct._object* %call68, null, !dbg !2901
  %or.cond163 = or i1 %tobool74, %tobool71, !dbg !2902
  br i1 %or.cond163, label %do.body.76, label %if.end.116, !dbg !2902

do.body.76:                                       ; preds = %sw.bb.65
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !668, metadata !858), !dbg !2903
  br i1 %tobool71, label %if.end.93, label %do.body.81, !dbg !2905

do.body.81:                                       ; preds = %do.body.76
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !672, metadata !858), !dbg !2906
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !2908
  %18 = load i64, i64* %ob_refcnt83, align 8, !dbg !2908, !tbaa !894
  %dec84 = add i64 %18, -1, !dbg !2908
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !2908, !tbaa !894
  %cmp85 = icmp eq i64 %dec84, 0, !dbg !2908
  br i1 %cmp85, label %if.else.87, label %if.end.93, !dbg !2910

if.else.87:                                       ; preds = %do.body.81
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !2911
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8, !dbg !2911, !tbaa !871
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !2911
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8, !dbg !2911, !tbaa !898
  tail call void %20(%struct._object* %17) #1, !dbg !2911
  %.pre = load %struct._object*, %struct._object** %thousands_sep69, align 8, !dbg !2913, !tbaa !1987
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.87, %do.body.81, %do.body.76
  %21 = phi %struct._object* [ %.pre, %if.else.87 ], [ %call68, %do.body.81 ], [ %call68, %do.body.76 ], !dbg !2913
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !675, metadata !858), !dbg !2913
  %cmp99 = icmp eq %struct._object* %21, null, !dbg !2915
  br i1 %cmp99, label %return, label %do.body.101, !dbg !2916

do.body.101:                                      ; preds = %if.end.93
  tail call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !677, metadata !858), !dbg !2917
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !2919
  %22 = load i64, i64* %ob_refcnt103, align 8, !dbg !2919, !tbaa !894
  %dec104 = add i64 %22, -1, !dbg !2919
  store i64 %dec104, i64* %ob_refcnt103, align 8, !dbg !2919, !tbaa !894
  %cmp105 = icmp eq i64 %dec104, 0, !dbg !2919
  br i1 %cmp105, label %if.else.107, label %return, !dbg !2921

if.else.107:                                      ; preds = %do.body.101
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 1, !dbg !2922
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8, !dbg !2922, !tbaa !871
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !2922
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8, !dbg !2922, !tbaa !898
  tail call void %24(%struct._object* %21) #1, !dbg !2922
  br label %return

if.end.116:                                       ; preds = %sw.bb.65
  %grouping117 = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale_info, i64 0, i32 2, !dbg !2924
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @no_grouping, i64 0, i64 0), i8** %grouping117, align 8, !dbg !2925, !tbaa !2858
  br label %return, !dbg !2926

return:                                           ; preds = %if.end.63, %if.end.116, %entry, %if.end.13, %if.end.93, %do.body.101, %if.else.107, %if.end.40, %do.body.48, %if.else.54, %sw.bb, %do.body, %if.else
  %retval.1 = phi i32 [ -1, %if.else ], [ -1, %do.body ], [ -1, %sw.bb ], [ -1, %if.else.54 ], [ -1, %do.body.48 ], [ -1, %if.end.40 ], [ -1, %if.else.107 ], [ -1, %do.body.101 ], [ -1, %if.end.93 ], [ 0, %if.end.13 ], [ 0, %entry ], [ 0, %if.end.116 ], [ 0, %if.end.63 ]
  ret i32 %retval.1, !dbg !2927
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @calc_number_widths(%struct.NumberFieldWidths* nocapture %spec, i64 %n_prefix, i32 %sign_char, i64 %n_start, i64 %n_end, i64 %n_remainder, i32 %has_decimal, %struct.LocaleInfo* nocapture readonly %locale, %struct.InternalFormatSpec* nocapture readonly %format, i32* nocapture %maxchar) #0 {
entry:
  %grouping_maxchar = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !690, metadata !858), !dbg !2928
  %sub = sub i64 %n_end, %n_start, !dbg !2929
  %sub1 = sub i64 %sub, %n_remainder, !dbg !2930
  %tobool = icmp ne i32 %has_decimal, 0, !dbg !2931
  %conv.neg = sext i1 %tobool to i64
  %sub2 = add i64 %sub1, %conv.neg, !dbg !2932
  %n_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 9, !dbg !2933
  store i64 %sub2, i64* %n_digits, align 8, !dbg !2934, !tbaa !2935
  %n_lpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 0, !dbg !2937
  store i64 0, i64* %n_lpadding, align 8, !dbg !2938, !tbaa !2939
  %n_prefix3 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 1, !dbg !2940
  store i64 %n_prefix, i64* %n_prefix3, align 8, !dbg !2941, !tbaa !2942
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2943

cond.true:                                        ; preds = %entry
  %0 = bitcast %struct.LocaleInfo* %locale to %struct.PyASCIIObject**, !dbg !2944
  %1 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %0, align 8, !dbg !2944, !tbaa !1973
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i64 0, i32 1, !dbg !2944
  %2 = load i64, i64* %length, align 8, !dbg !2944, !tbaa !918
  br label %cond.end, !dbg !2943

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i64 [ %2, %cond.true ], [ 0, %entry ], !dbg !2946
  %n_decimal = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 7, !dbg !2947
  store i64 %3, i64* %n_decimal, align 8, !dbg !2948, !tbaa !2949
  %n_remainder6 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 8, !dbg !2950
  store i64 %n_remainder, i64* %n_remainder6, align 8, !dbg !2951, !tbaa !2952
  %n_spadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 2, !dbg !2953
  %n_rpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 3, !dbg !2954
  %sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 4, !dbg !2955
  %n_sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 5, !dbg !2956
  store i64 0, i64* %n_sign, align 8, !dbg !2957, !tbaa !2958
  %sign7 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 3, !dbg !2959
  %4 = bitcast i64* %n_spadding to i8*, !dbg !2959
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 17, i32 8, i1 false), !dbg !2960
  %5 = load i32, i32* %sign7, align 4, !dbg !2959, !tbaa !924
  switch i32 %5, label %sw.default [
    i32 43, label %sw.bb
    i32 32, label %sw.bb.13
  ], !dbg !2961

sw.bb:                                            ; preds = %cond.end
  store i64 1, i64* %n_sign, align 8, !dbg !2962, !tbaa !2958
  %cmp = icmp eq i32 %sign_char, 45, !dbg !2964
  %conv11 = select i1 %cmp, i8 45, i8 43, !dbg !2965
  store i8 %conv11, i8* %sign, align 1, !dbg !2966, !tbaa !2967
  br label %sw.epilog, !dbg !2968

sw.bb.13:                                         ; preds = %cond.end
  store i64 1, i64* %n_sign, align 8, !dbg !2969, !tbaa !2958
  %cmp15 = icmp eq i32 %sign_char, 45, !dbg !2970
  %conv18 = select i1 %cmp15, i8 45, i8 32, !dbg !2971
  store i8 %conv18, i8* %sign, align 1, !dbg !2972, !tbaa !2967
  br label %sw.epilog, !dbg !2973

sw.default:                                       ; preds = %cond.end
  %cmp20 = icmp eq i32 %sign_char, 45, !dbg !2974
  br i1 %cmp20, label %if.then, label %sw.epilog, !dbg !2976

if.then:                                          ; preds = %sw.default
  store i64 1, i64* %n_sign, align 8, !dbg !2977, !tbaa !2958
  store i8 45, i8* %sign, align 1, !dbg !2979, !tbaa !2967
  br label %sw.epilog, !dbg !2980

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb.13, %sw.bb
  %6 = phi i64 [ 0, %sw.default ], [ 1, %if.then ], [ 1, %sw.bb.13 ], [ 1, %sw.bb ], !dbg !2981
  %add = add i64 %6, %n_prefix, !dbg !2982
  %add27 = add i64 %add, %3, !dbg !2983
  %add29 = add i64 %add27, %n_remainder, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %add29, i64 0, metadata !698, metadata !858), !dbg !2985
  %fill_char = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 0, !dbg !2986
  %7 = load i32, i32* %fill_char, align 4, !dbg !2986, !tbaa !1004
  %cmp30 = icmp eq i32 %7, 48, !dbg !2988
  br i1 %cmp30, label %land.lhs.true, label %if.else, !dbg !2989

land.lhs.true:                                    ; preds = %sw.epilog
  %align = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 1, !dbg !2990
  %8 = load i32, i32* %align, align 4, !dbg !2990, !tbaa !944
  %cmp32 = icmp eq i32 %8, 61, !dbg !2991
  br i1 %cmp32, label %if.then.34, label %if.else, !dbg !2992

if.then.34:                                       ; preds = %land.lhs.true
  %width = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !2993
  %9 = load i64, i64* %width, align 8, !dbg !2993, !tbaa !954
  %sub35 = sub i64 %9, %add29, !dbg !2994
  %n_min_width = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 10, !dbg !2995
  store i64 %sub35, i64* %n_min_width, align 8, !dbg !2996, !tbaa !2997
  br label %if.end.37, !dbg !2998

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %n_min_width36 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 10, !dbg !2999
  store i64 0, i64* %n_min_width36, align 8, !dbg !3000, !tbaa !2997
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %10 = phi i64 [ 0, %if.else ], [ %sub35, %if.then.34 ], !dbg !3001
  %cmp39 = icmp eq i64 %sub2, 0, !dbg !3002
  br i1 %cmp39, label %if.end.52, label %if.else.42, !dbg !3003

if.else.42:                                       ; preds = %if.end.37
  %11 = bitcast i32* %grouping_maxchar to i8*, !dbg !3004
  call void @llvm.lifetime.start(i64 4, i8* %11) #1, !dbg !3004
  %grouping = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 2, !dbg !3005
  %12 = load i8*, i8** %grouping, align 8, !dbg !3005, !tbaa !2858
  %thousands_sep = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 1, !dbg !3006
  %13 = load %struct._object*, %struct._object** %thousands_sep, align 8, !dbg !3006, !tbaa !1987
  tail call void @llvm.dbg.value(metadata i32* %grouping_maxchar, i64 0, metadata !700, metadata !858), !dbg !3007
  %call = call i64 @_PyUnicode_InsertThousandsGrouping(%struct._object* null, i64 0, i64 0, i8* null, i64 %sub2, i64 %10, i8* %12, %struct._object* %13, i32* nonnull %grouping_maxchar) #1, !dbg !3008
  %14 = load i32, i32* %maxchar, align 4, !dbg !3009, !tbaa !1163
  call void @llvm.dbg.value(metadata i32* %grouping_maxchar, i64 0, metadata !700, metadata !858), !dbg !3007
  %15 = load i32, i32* %grouping_maxchar, align 4, !dbg !3009, !tbaa !1163
  %cmp46 = icmp ugt i32 %14, %15, !dbg !3009
  %. = select i1 %cmp46, i32 %14, i32 %15, !dbg !3010
  store i32 %., i32* %maxchar, align 4, !dbg !3012, !tbaa !1163
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !3013
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.37, %if.else.42
  %16 = phi i64 [ %call, %if.else.42 ], [ 0, %if.end.37 ], !dbg !3014
  %17 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 6, !dbg !3015
  store i64 %16, i64* %17, align 8, !dbg !3016
  %width53 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 4, !dbg !3017
  %18 = load i64, i64* %width53, align 8, !dbg !3017, !tbaa !954
  %add55.neg = sub i64 %18, %add29, !dbg !3018
  %sub56 = sub i64 %add55.neg, %16, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %sub56, i64 0, metadata !699, metadata !858), !dbg !3020
  %cmp57 = icmp sgt i64 %sub56, 0, !dbg !3021
  br i1 %cmp57, label %if.then.59, label %if.end.75, !dbg !3023

if.then.59:                                       ; preds = %if.end.52
  %align60 = getelementptr inbounds %struct.InternalFormatSpec, %struct.InternalFormatSpec* %format, i64 0, i32 1, !dbg !3024
  %19 = load i32, i32* %align60, align 4, !dbg !3024, !tbaa !944
  switch i32 %19, label %sw.default.72 [
    i32 60, label %sw.bb.61
    i32 94, label %sw.bb.63
    i32 61, label %sw.bb.68
    i32 62, label %sw.bb.70
  ], !dbg !3026

sw.bb.61:                                         ; preds = %if.then.59
  store i64 %sub56, i64* %n_rpadding, align 8, !dbg !3027, !tbaa !3029
  br label %if.end.75, !dbg !3030

sw.bb.63:                                         ; preds = %if.then.59
  %div = sdiv i64 %sub56, 2, !dbg !3031
  store i64 %div, i64* %n_lpadding, align 8, !dbg !3032, !tbaa !2939
  %sub66 = sub i64 %sub56, %div, !dbg !3033
  store i64 %sub66, i64* %n_rpadding, align 8, !dbg !3034, !tbaa !3029
  br label %if.end.75, !dbg !3035

sw.bb.68:                                         ; preds = %if.then.59
  store i64 %sub56, i64* %n_spadding, align 8, !dbg !3036, !tbaa !3037
  br label %if.end.75, !dbg !3038

sw.bb.70:                                         ; preds = %if.then.59
  store i64 %sub56, i64* %n_lpadding, align 8, !dbg !3039, !tbaa !2939
  br label %if.then.83, !dbg !3040

sw.default.72:                                    ; preds = %if.then.59
  store i64 %sub56, i64* %n_lpadding, align 8, !dbg !3041, !tbaa !2939
  br label %if.then.83, !dbg !3042

if.end.75:                                        ; preds = %sw.bb.61, %sw.bb.63, %sw.bb.68, %if.end.52
  %.pr = load i64, i64* %n_lpadding, align 8, !dbg !3043, !tbaa !2939
  %tobool77 = icmp eq i64 %.pr, 0, !dbg !3045
  br i1 %tobool77, label %lor.lhs.false, label %if.then.83, !dbg !3046

lor.lhs.false:                                    ; preds = %if.end.75
  %20 = load i64, i64* %n_spadding, align 8, !dbg !3047, !tbaa !3037
  %tobool79 = icmp eq i64 %20, 0, !dbg !3048
  br i1 %tobool79, label %lor.lhs.false.80, label %if.then.83, !dbg !3049

lor.lhs.false.80:                                 ; preds = %lor.lhs.false
  %21 = load i64, i64* %n_rpadding, align 8, !dbg !3050, !tbaa !3029
  %tobool82 = icmp eq i64 %21, 0, !dbg !3051
  br i1 %tobool82, label %if.end.92, label %if.then.83, !dbg !3052

if.then.83:                                       ; preds = %sw.default.72, %sw.bb.70, %lor.lhs.false.80, %lor.lhs.false, %if.end.75
  %22 = phi i64 [ %sub56, %sw.default.72 ], [ %sub56, %sw.bb.70 ], [ 0, %lor.lhs.false.80 ], [ 0, %lor.lhs.false ], [ %.pr, %if.end.75 ]
  %23 = load i32, i32* %maxchar, align 4, !dbg !3053, !tbaa !1163
  %24 = load i32, i32* %fill_char, align 4, !dbg !3053, !tbaa !1004
  %cmp85 = icmp ugt i32 %23, %24, !dbg !3053
  %.1 = select i1 %cmp85, i32 %23, i32 %24, !dbg !3054
  store i32 %.1, i32* %maxchar, align 4, !dbg !3056, !tbaa !1163
  br label %if.end.92, !dbg !3057

if.end.92:                                        ; preds = %lor.lhs.false.80, %if.then.83
  %25 = phi i64 [ 0, %lor.lhs.false.80 ], [ %22, %if.then.83 ], !dbg !3058
  %26 = load i64, i64* %n_decimal, align 8, !dbg !3059, !tbaa !2949
  %tobool94 = icmp eq i64 %26, 0, !dbg !3060
  br i1 %tobool94, label %if.end.156, label %if.then.95, !dbg !3062

if.then.95:                                       ; preds = %if.end.92
  %27 = load i32, i32* %maxchar, align 4, !dbg !3063, !tbaa !1163
  %28 = bitcast %struct.LocaleInfo* %locale to %struct.PyASCIIObject**, !dbg !3065
  %29 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %28, align 8, !dbg !3066, !tbaa !1973
  %30 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i64 0, i32 3, i32 0, !dbg !3065
  %bf.load = load i32, i32* %30, align 4, !dbg !3066
  %bf.clear = and i32 %bf.load, 64, !dbg !3065
  %tobool97 = icmp eq i32 %bf.clear, 0, !dbg !3065
  br i1 %tobool97, label %cond.false.99, label %cond.end.119, !dbg !3065

cond.false.99:                                    ; preds = %if.then.95
  %bf.lshr103 = lshr i32 %bf.load, 2, !dbg !3068
  %bf.clear104 = and i32 %bf.lshr103, 7, !dbg !3068
  %cmp105 = icmp eq i32 %bf.clear104, 1, !dbg !3068
  br i1 %cmp105, label %cond.end.119, label %cond.false.108, !dbg !3068

cond.false.108:                                   ; preds = %cond.false.99
  %cmp114 = icmp eq i32 %bf.clear104, 2, !dbg !3070
  %cond116 = select i1 %cmp114, i32 65535, i32 1114111, !dbg !3070
  br label %cond.end.119, !dbg !3070

cond.end.119:                                     ; preds = %if.then.95, %cond.false.108, %cond.false.99
  %cond120 = phi i32 [ 127, %if.then.95 ], [ %cond116, %cond.false.108 ], [ 255, %cond.false.99 ], !dbg !3065
  %cmp121 = icmp ugt i32 %27, %cond120, !dbg !3072
  %tobool97.not = xor i1 %tobool97, true, !dbg !3072
  %brmerge = or i1 %cmp121, %tobool97.not, !dbg !3072
  %.mux = select i1 %cmp121, i32 %27, i32 127, !dbg !3072
  br i1 %brmerge, label %cond.end.154, label %cond.false.132, !dbg !3072

cond.false.132:                                   ; preds = %cond.end.119
  %bf.lshr136 = lshr i32 %bf.load, 2, !dbg !3075
  %bf.clear137 = and i32 %bf.lshr136, 7, !dbg !3075
  %cmp138 = icmp eq i32 %bf.clear137, 1, !dbg !3075
  br i1 %cmp138, label %cond.end.154, label %cond.false.141, !dbg !3075

cond.false.141:                                   ; preds = %cond.false.132
  %cmp147 = icmp eq i32 %bf.clear137, 2, !dbg !3077
  %cond149 = select i1 %cmp147, i32 65535, i32 1114111, !dbg !3077
  br label %cond.end.154, !dbg !3077

cond.end.154:                                     ; preds = %cond.end.119, %cond.false.132, %cond.false.141
  %cond155 = phi i32 [ %cond149, %cond.false.141 ], [ 255, %cond.false.132 ], [ %.mux, %cond.end.119 ], !dbg !3065
  store i32 %cond155, i32* %maxchar, align 4, !dbg !3079, !tbaa !1163
  br label %if.end.156, !dbg !3080

if.end.156:                                       ; preds = %if.end.92, %cond.end.154
  %31 = load i64, i64* %n_sign, align 8, !dbg !3081, !tbaa !2958
  %add159 = add i64 %31, %25, !dbg !3082
  %32 = load i64, i64* %n_prefix3, align 8, !dbg !3083, !tbaa !2942
  %add161 = add i64 %add159, %32, !dbg !3084
  %33 = load i64, i64* %n_spadding, align 8, !dbg !3085, !tbaa !3037
  %add163 = add i64 %add161, %33, !dbg !3086
  %add165 = add i64 %add163, %16, !dbg !3087
  %add167 = add i64 %add165, %26, !dbg !3088
  %34 = load i64, i64* %n_remainder6, align 8, !dbg !3089, !tbaa !2952
  %add169 = add i64 %add167, %34, !dbg !3090
  %35 = load i64, i64* %n_rpadding, align 8, !dbg !3091, !tbaa !3029
  %add171 = add i64 %add169, %35, !dbg !3092
  ret i64 %add171, !dbg !3093
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fill_number(%struct._PyUnicodeWriter* %writer, %struct.NumberFieldWidths* nocapture readonly %spec, %struct._object* %digits, i64 %d_start, %struct._object* %prefix, i64 %p_start, i32 %fill_char, %struct.LocaleInfo* nocapture readonly %locale, i32 %toupper) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !713, metadata !858), !dbg !3094
  %kind1 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 2, !dbg !3095
  %0 = load i32, i32* %kind1, align 4, !dbg !3095, !tbaa !2611
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !720, metadata !858), !dbg !3096
  %data2 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 1, !dbg !3097
  %1 = load i8*, i8** %data2, align 8, !dbg !3097, !tbaa !2614
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !722, metadata !858), !dbg !3098
  %n_lpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 0, !dbg !3099
  %2 = load i64, i64* %n_lpadding, align 8, !dbg !3099, !tbaa !2939
  %tobool = icmp eq i64 %2, 0, !dbg !3101
  br i1 %tobool, label %if.end, label %if.then, !dbg !3102

if.then:                                          ; preds = %entry
  %buffer = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3103
  %3 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !3103, !tbaa !1042
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3105
  %4 = load i64, i64* %pos, align 8, !dbg !3105, !tbaa !1025
  tail call void @_PyUnicode_FastFill(%struct._object* %3, i64 %4, i64 %2, i32 %fill_char) #1, !dbg !3106
  %5 = load i64, i64* %n_lpadding, align 8, !dbg !3107, !tbaa !2939
  %6 = load i64, i64* %pos, align 8, !dbg !3108, !tbaa !1025
  %add = add i64 %6, %5, !dbg !3108
  store i64 %add, i64* %pos, align 8, !dbg !3108, !tbaa !1025
  br label %if.end, !dbg !3109

if.end:                                           ; preds = %entry, %if.then
  %n_sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 5, !dbg !3110
  %7 = load i64, i64* %n_sign, align 8, !dbg !3110, !tbaa !2958
  %cmp = icmp eq i64 %7, 1, !dbg !3112
  br i1 %cmp, label %do.body, label %if.end.17, !dbg !3113

do.body:                                          ; preds = %if.end
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ], !dbg !3114

sw.bb:                                            ; preds = %do.body
  %sign = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 4, !dbg !3118
  %8 = load i8, i8* %sign, align 1, !dbg !3118, !tbaa !2967
  %pos7 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3118
  %9 = load i64, i64* %pos7, align 8, !dbg !3118, !tbaa !1025
  %arrayidx = getelementptr i8, i8* %1, i64 %9, !dbg !3118
  store i8 %8, i8* %arrayidx, align 1, !dbg !3118, !tbaa !1132
  %.pre = load i64, i64* %pos7, align 8, !dbg !3122, !tbaa !1025
  br label %do.end, !dbg !3118

sw.bb.8:                                          ; preds = %do.body
  %sign9 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 4, !dbg !3123
  %10 = load i8, i8* %sign9, align 1, !dbg !3123, !tbaa !2967
  %conv = sext i8 %10 to i16, !dbg !3123
  %pos10 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3123
  %11 = load i64, i64* %pos10, align 8, !dbg !3123, !tbaa !1025
  %12 = bitcast i8* %1 to i16*, !dbg !3123
  %arrayidx11 = getelementptr i16, i16* %12, i64 %11, !dbg !3123
  store i16 %conv, i16* %arrayidx11, align 2, !dbg !3123, !tbaa !1148
  br label %do.end, !dbg !3123

sw.default:                                       ; preds = %do.body
  %sign12 = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 4, !dbg !3126
  %13 = load i8, i8* %sign12, align 1, !dbg !3126, !tbaa !2967
  %conv13 = sext i8 %13 to i32, !dbg !3126
  %pos14 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3126
  %14 = load i64, i64* %pos14, align 8, !dbg !3126, !tbaa !1025
  %15 = bitcast i8* %1 to i32*, !dbg !3126
  %arrayidx15 = getelementptr i32, i32* %15, i64 %14, !dbg !3126
  store i32 %conv13, i32* %arrayidx15, align 4, !dbg !3126, !tbaa !1163
  br label %do.end, !dbg !3129

do.end:                                           ; preds = %sw.default, %sw.bb.8, %sw.bb
  %pos16.pre-phi = phi i64* [ %pos14, %sw.default ], [ %pos10, %sw.bb.8 ], [ %pos7, %sw.bb ], !dbg !3130
  %16 = phi i64 [ %14, %sw.default ], [ %11, %sw.bb.8 ], [ %.pre, %sw.bb ], !dbg !3122
  %inc = add i64 %16, 1, !dbg !3122
  store i64 %inc, i64* %pos16.pre-phi, align 8, !dbg !3122, !tbaa !1025
  br label %if.end.17, !dbg !3131

if.end.17:                                        ; preds = %do.end, %if.end
  %n_prefix = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 1, !dbg !3132
  %17 = load i64, i64* %n_prefix, align 8, !dbg !3132, !tbaa !2942
  %tobool18 = icmp eq i64 %17, 0, !dbg !3133
  br i1 %tobool18, label %if.end.73, label %if.then.19, !dbg !3134

if.then.19:                                       ; preds = %if.end.17
  %buffer20 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3135
  %18 = load %struct._object*, %struct._object** %buffer20, align 8, !dbg !3135, !tbaa !1042
  %pos21 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3136
  %19 = load i64, i64* %pos21, align 8, !dbg !3136, !tbaa !1025
  tail call void @_PyUnicode_FastCopyCharacters(%struct._object* %18, i64 %19, %struct._object* %prefix, i64 %p_start, i64 %17) #1, !dbg !3137
  %tobool23 = icmp ne i32 %toupper, 0, !dbg !3138
  %.pre80 = load i64, i64* %n_prefix, align 8, !dbg !3139, !tbaa !2942
  %cmp26.47 = icmp sgt i64 %.pre80, 0, !dbg !3140
  %or.cond = and i1 %tobool23, %cmp26.47, !dbg !3141
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.69, !dbg !3141

for.body.lr.ph:                                   ; preds = %if.then.19
  %20 = bitcast i8* %1 to i16*, !dbg !3142
  %21 = bitcast i8* %1 to i32*, !dbg !3144
  switch i32 %0, label %do.end.67.preheader [
    i32 1, label %do.end.67.us.preheader
    i32 2, label %do.end.67.us76.preheader
  ], !dbg !3146

do.end.67.us76.preheader:                         ; preds = %for.body.lr.ph
  %xtraiter105 = and i64 %.pre80, 1, !dbg !3142
  %lcmp.mod106 = icmp eq i64 %xtraiter105, 0, !dbg !3142
  br i1 %lcmp.mod106, label %do.end.67.us76.preheader.split, label %do.end.67.us76.prol, !dbg !3142

do.end.67.us76.prol:                              ; preds = %do.end.67.us76.preheader
  %22 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %arrayidx39.us.62.prol = getelementptr i16, i16* %20, i64 %22, !dbg !3142
  %23 = load i16, i16* %arrayidx39.us.62.prol, align 2, !dbg !3142, !tbaa !1148
  %conv47.5.us.63.prol = zext i16 %23 to i64, !dbg !3147
  %idxprom.6.us.64.prol = and i64 %conv47.5.us.63.prol, 255, !dbg !3147
  %arrayidx48.7.us.65.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.6.us.64.prol, !dbg !3147
  %24 = load i8, i8* %arrayidx48.7.us.65.prol, align 1, !dbg !3147, !tbaa !1132
  %conv57.us.66.prol = zext i8 %24 to i16, !dbg !3148
  store i16 %conv57.us.66.prol, i16* %arrayidx39.us.62.prol, align 2, !dbg !3148, !tbaa !1148
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !726, metadata !858), !dbg !3153
  br label %do.end.67.us76.preheader.split, !dbg !3154

do.end.67.us76.preheader.split:                   ; preds = %do.end.67.us76.preheader, %do.end.67.us76.prol
  %t.048.us.50.unr = phi i64 [ 0, %do.end.67.us76.preheader ], [ 1, %do.end.67.us76.prol ]
  %25 = icmp eq i64 %.pre80, 1, !dbg !3142
  br i1 %25, label %if.end.69.loopexit104, label %do.end.67.us76.preheader.split.split, !dbg !3142

do.end.67.us76.preheader.split.split:             ; preds = %do.end.67.us76.preheader.split
  br label %do.end.67.us76, !dbg !3142

do.end.67.us.preheader:                           ; preds = %for.body.lr.ph
  br label %do.end.67.us, !dbg !3155

do.end.67.preheader:                              ; preds = %for.body.lr.ph
  %xtraiter = and i64 %.pre80, 1, !dbg !3142
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !3142
  br i1 %lcmp.mod, label %do.end.67.preheader.split, label %do.end.67.prol, !dbg !3142

do.end.67.prol:                                   ; preds = %do.end.67.preheader
  %26 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %arrayidx44.prol = getelementptr i32, i32* %21, i64 %26, !dbg !3144
  %27 = load i32, i32* %arrayidx44.prol, align 4, !dbg !3144, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv47.prol = zext i32 %27 to i64, !dbg !3147
  %idxprom.prol = and i64 %conv47.prol, 255, !dbg !3147
  %arrayidx48.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.prol, !dbg !3147
  %28 = load i8, i8* %arrayidx48.prol, align 1, !dbg !3147, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i32 %conv49.prol, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv49.prol = zext i8 %28 to i32, !dbg !3147
  store i32 %conv49.prol, i32* %arrayidx44.prol, align 4, !dbg !3158, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !726, metadata !858), !dbg !3153
  br label %do.end.67.preheader.split, !dbg !3154

do.end.67.preheader.split:                        ; preds = %do.end.67.preheader, %do.end.67.prol
  %t.048.unr = phi i64 [ 0, %do.end.67.preheader ], [ 1, %do.end.67.prol ]
  %29 = icmp eq i64 %.pre80, 1, !dbg !3142
  br i1 %29, label %if.end.69.loopexit, label %do.end.67.preheader.split.split, !dbg !3142

do.end.67.preheader.split.split:                  ; preds = %do.end.67.preheader.split
  br label %do.end.67, !dbg !3142

do.end.67.us:                                     ; preds = %do.end.67.us.preheader, %do.end.67.us
  %t.048.us = phi i64 [ %inc68.us, %do.end.67.us ], [ 0, %do.end.67.us.preheader ]
  %30 = load i64, i64* %pos21, align 8, !dbg !3155, !tbaa !1025
  %add31.us = add i64 %30, %t.048.us, !dbg !3155
  %arrayidx32.us = getelementptr i8, i8* %1, i64 %add31.us, !dbg !3155
  %31 = load i8, i8* %arrayidx32.us, align 1, !dbg !3155, !tbaa !1132
  %conv47.1.us = zext i8 %31 to i64, !dbg !3147
  %arrayidx48.3.us = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %conv47.1.us, !dbg !3147
  %32 = load i8, i8* %arrayidx48.3.us, align 1, !dbg !3147, !tbaa !1132
  store i8 %32, i8* %arrayidx32.us, align 1, !dbg !3161, !tbaa !1132
  %.pre79 = load i64, i64* %n_prefix, align 8, !dbg !3164, !tbaa !2942
  %inc68.us = add i64 %t.048.us, 1, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %inc68.us, i64 0, metadata !726, metadata !858), !dbg !3153
  %cmp26.us = icmp slt i64 %inc68.us, %.pre79, !dbg !3140
  br i1 %cmp26.us, label %do.end.67.us, label %if.end.69.loopexit103, !dbg !3154

do.end.67.us76:                                   ; preds = %do.end.67.us76, %do.end.67.us76.preheader.split.split
  %t.048.us.50 = phi i64 [ %t.048.us.50.unr, %do.end.67.us76.preheader.split.split ], [ %inc68.us.77.1, %do.end.67.us76 ]
  %33 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %add38.us.52 = add i64 %33, %t.048.us.50, !dbg !3142
  %arrayidx39.us.62 = getelementptr i16, i16* %20, i64 %add38.us.52, !dbg !3142
  %34 = load i16, i16* %arrayidx39.us.62, align 2, !dbg !3142, !tbaa !1148
  %conv47.5.us.63 = zext i16 %34 to i64, !dbg !3147
  %idxprom.6.us.64 = and i64 %conv47.5.us.63, 255, !dbg !3147
  %arrayidx48.7.us.65 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.6.us.64, !dbg !3147
  %35 = load i8, i8* %arrayidx48.7.us.65, align 1, !dbg !3147, !tbaa !1132
  %conv57.us.66 = zext i8 %35 to i16, !dbg !3148
  store i16 %conv57.us.66, i16* %arrayidx39.us.62, align 2, !dbg !3148, !tbaa !1148
  %inc68.us.77 = add i64 %t.048.us.50, 1, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %inc68.us.77, i64 0, metadata !726, metadata !858), !dbg !3153
  %36 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %add38.us.52.1 = add i64 %36, %inc68.us.77, !dbg !3142
  %arrayidx39.us.62.1 = getelementptr i16, i16* %20, i64 %add38.us.52.1, !dbg !3142
  %37 = load i16, i16* %arrayidx39.us.62.1, align 2, !dbg !3142, !tbaa !1148
  %conv47.5.us.63.1 = zext i16 %37 to i64, !dbg !3147
  %idxprom.6.us.64.1 = and i64 %conv47.5.us.63.1, 255, !dbg !3147
  %arrayidx48.7.us.65.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.6.us.64.1, !dbg !3147
  %38 = load i8, i8* %arrayidx48.7.us.65.1, align 1, !dbg !3147, !tbaa !1132
  %conv57.us.66.1 = zext i8 %38 to i16, !dbg !3148
  store i16 %conv57.us.66.1, i16* %arrayidx39.us.62.1, align 2, !dbg !3148, !tbaa !1148
  %inc68.us.77.1 = add i64 %t.048.us.50, 2, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %inc68.us.77, i64 0, metadata !726, metadata !858), !dbg !3153
  %cmp26.us.78.1 = icmp slt i64 %inc68.us.77.1, %.pre80, !dbg !3140
  br i1 %cmp26.us.78.1, label %do.end.67.us76, label %if.end.69.loopexit104.unr-lcssa, !dbg !3154

do.end.67:                                        ; preds = %do.end.67, %do.end.67.preheader.split.split
  %t.048 = phi i64 [ %t.048.unr, %do.end.67.preheader.split.split ], [ %inc68.1, %do.end.67 ]
  %39 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %add38 = add i64 %39, %t.048, !dbg !3142
  %arrayidx44 = getelementptr i32, i32* %21, i64 %add38, !dbg !3144
  %40 = load i32, i32* %arrayidx44, align 4, !dbg !3144, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv47 = zext i32 %40 to i64, !dbg !3147
  %idxprom = and i64 %conv47, 255, !dbg !3147
  %arrayidx48 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom, !dbg !3147
  %41 = load i8, i8* %arrayidx48, align 1, !dbg !3147, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i32 %conv49, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv49 = zext i8 %41 to i32, !dbg !3147
  store i32 %conv49, i32* %arrayidx44, align 4, !dbg !3158, !tbaa !1163
  %inc68 = add i64 %t.048, 1, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %inc68, i64 0, metadata !726, metadata !858), !dbg !3153
  %42 = load i64, i64* %pos21, align 8, !dbg !3142, !tbaa !1025
  %add38.1 = add i64 %42, %inc68, !dbg !3142
  %arrayidx44.1 = getelementptr i32, i32* %21, i64 %add38.1, !dbg !3144
  %43 = load i32, i32* %arrayidx44.1, align 4, !dbg !3144, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv47.1 = zext i32 %43 to i64, !dbg !3147
  %idxprom.1 = and i64 %conv47.1, 255, !dbg !3147
  %arrayidx48.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.1, !dbg !3147
  %44 = load i8, i8* %arrayidx48.1, align 1, !dbg !3147, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i32 %conv49, i64 0, metadata !731, metadata !858), !dbg !3157
  %conv49.1 = zext i8 %44 to i32, !dbg !3147
  store i32 %conv49.1, i32* %arrayidx44.1, align 4, !dbg !3158, !tbaa !1163
  %inc68.1 = add i64 %t.048, 2, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %inc68, i64 0, metadata !726, metadata !858), !dbg !3153
  %cmp26.1 = icmp slt i64 %inc68.1, %.pre80, !dbg !3140
  br i1 %cmp26.1, label %do.end.67, label %if.end.69.loopexit.unr-lcssa, !dbg !3154

if.end.69.loopexit.unr-lcssa:                     ; preds = %do.end.67
  br label %if.end.69.loopexit, !dbg !3166

if.end.69.loopexit:                               ; preds = %do.end.67.preheader.split, %if.end.69.loopexit.unr-lcssa
  br label %if.end.69, !dbg !3166

if.end.69.loopexit103:                            ; preds = %do.end.67.us
  %.pre79.lcssa = phi i64 [ %.pre79, %do.end.67.us ]
  br label %if.end.69, !dbg !3166

if.end.69.loopexit104.unr-lcssa:                  ; preds = %do.end.67.us76
  br label %if.end.69.loopexit104, !dbg !3166

if.end.69.loopexit104:                            ; preds = %do.end.67.us76.preheader.split, %if.end.69.loopexit104.unr-lcssa
  br label %if.end.69, !dbg !3166

if.end.69:                                        ; preds = %if.end.69.loopexit104, %if.end.69.loopexit103, %if.end.69.loopexit, %if.then.19
  %45 = phi i64 [ %.pre80, %if.then.19 ], [ %.pre80, %if.end.69.loopexit ], [ %.pre79.lcssa, %if.end.69.loopexit103 ], [ %.pre80, %if.end.69.loopexit104 ], !dbg !3139
  %46 = load i64, i64* %pos21, align 8, !dbg !3166, !tbaa !1025
  %add72 = add i64 %46, %45, !dbg !3166
  store i64 %add72, i64* %pos21, align 8, !dbg !3166, !tbaa !1025
  br label %if.end.73, !dbg !3167

if.end.73:                                        ; preds = %if.end.17, %if.end.69
  %n_spadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 2, !dbg !3168
  %47 = load i64, i64* %n_spadding, align 8, !dbg !3168, !tbaa !3037
  %tobool74 = icmp eq i64 %47, 0, !dbg !3170
  br i1 %tobool74, label %if.end.82, label %if.then.75, !dbg !3171

if.then.75:                                       ; preds = %if.end.73
  %buffer76 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3172
  %48 = load %struct._object*, %struct._object** %buffer76, align 8, !dbg !3172, !tbaa !1042
  %pos77 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3174
  %49 = load i64, i64* %pos77, align 8, !dbg !3174, !tbaa !1025
  tail call void @_PyUnicode_FastFill(%struct._object* %48, i64 %49, i64 %47, i32 %fill_char) #1, !dbg !3175
  %50 = load i64, i64* %n_spadding, align 8, !dbg !3176, !tbaa !3037
  %51 = load i64, i64* %pos77, align 8, !dbg !3177, !tbaa !1025
  %add81 = add i64 %51, %50, !dbg !3177
  store i64 %add81, i64* %pos77, align 8, !dbg !3177, !tbaa !1025
  br label %if.end.82, !dbg !3178

if.end.82:                                        ; preds = %if.end.73, %if.then.75
  %n_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 9, !dbg !3179
  %52 = load i64, i64* %n_digits, align 8, !dbg !3179, !tbaa !2935
  %cmp83 = icmp eq i64 %52, 0, !dbg !3180
  br i1 %cmp83, label %if.end.147, label %if.then.85, !dbg !3181

if.then.85:                                       ; preds = %if.end.82
  %state = getelementptr inbounds %struct._object, %struct._object* %digits, i64 2, !dbg !3182
  %53 = bitcast %struct._object* %state to i32*, !dbg !3182
  %bf.load = load i32, i32* %53, align 4, !dbg !3182
  %bf.clear = and i32 %bf.load, 128, !dbg !3182
  %tobool86 = icmp eq i32 %bf.clear, 0, !dbg !3182
  br i1 %tobool86, label %cond.end.89, label %if.end.93, !dbg !3182

cond.end.89:                                      ; preds = %if.then.85
  %call = tail call i32 @_PyUnicode_Ready(%struct._object* %digits) #1, !dbg !3184
  %tobool91 = icmp eq i32 %call, 0, !dbg !3186
  br i1 %tobool91, label %cond.end.89.if.end.93_crit_edge, label %cleanup.248, !dbg !3189

cond.end.89.if.end.93_crit_edge:                  ; preds = %cond.end.89
  %bf.load95.pre = load i32, i32* %53, align 4, !dbg !3190
  br label %if.end.93, !dbg !3189

if.end.93:                                        ; preds = %cond.end.89.if.end.93_crit_edge, %if.then.85
  %bf.load115 = phi i32 [ %bf.load95.pre, %cond.end.89.if.end.93_crit_edge ], [ %bf.load, %if.then.85 ], !dbg !3191
  %bf.clear97 = and i32 %bf.load115, 32, !dbg !3190
  %tobool98 = icmp eq i32 %bf.clear97, 0, !dbg !3190
  br i1 %tobool98, label %cond.false.110, label %cond.true.99, !dbg !3190

cond.true.99:                                     ; preds = %if.end.93
  %bf.clear103 = and i32 %bf.load115, 64, !dbg !3193
  %tobool104 = icmp ne i32 %bf.clear103, 0, !dbg !3193
  %add.ptr = getelementptr %struct._object, %struct._object* %digits, i64 3, !dbg !3195
  %54 = bitcast %struct._object* %add.ptr to i8*, !dbg !3195
  %add.ptr107 = getelementptr %struct._object, %struct._object* %digits, i64 4, i32 1, !dbg !3197
  %55 = bitcast %struct._typeobject** %add.ptr107 to i8*, !dbg !3197
  %cond109 = select i1 %tobool104, i8* %54, i8* %55, !dbg !3193
  br label %cond.end.112, !dbg !3193

cond.false.110:                                   ; preds = %if.end.93
  %data111 = getelementptr inbounds %struct._object, %struct._object* %digits, i64 4, i32 1, !dbg !3199
  %any = bitcast %struct._typeobject** %data111 to i8**, !dbg !3199
  %56 = load i8*, i8** %any, align 8, !dbg !3199, !tbaa !929
  br label %cond.end.112, !dbg !3199

cond.end.112:                                     ; preds = %cond.true.99, %cond.false.110
  %cond113 = phi i8* [ %56, %cond.false.110 ], [ %cond109, %cond.true.99 ], !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %cond113, i64 0, metadata !735, metadata !858), !dbg !3201
  %bf.lshr116 = lshr i32 %bf.load115, 2, !dbg !3191
  %bf.clear117 = and i32 %bf.lshr116, 7, !dbg !3191
  %cmp118 = icmp ult i32 %bf.clear117, %0, !dbg !3202
  br i1 %cmp118, label %if.then.120, label %if.end.126, !dbg !3203

if.then.120:                                      ; preds = %cond.end.112
  %call121 = tail call i8* @_PyUnicode_AsKind(%struct._object* %digits, i32 %0) #1, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %call121, i64 0, metadata !735, metadata !858), !dbg !3201
  %cmp122 = icmp eq i8* %call121, null, !dbg !3206
  br i1 %cmp122, label %cleanup.248, label %if.end.126, !dbg !3208

if.end.126:                                       ; preds = %if.then.120, %cond.end.112
  %pdigits.0 = phi i8* [ %call121, %if.then.120 ], [ %cond113, %cond.end.112 ]
  %buffer127 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3209
  %57 = load %struct._object*, %struct._object** %buffer127, align 8, !dbg !3209, !tbaa !1042
  %pos128 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3210
  %58 = load i64, i64* %pos128, align 8, !dbg !3210, !tbaa !1025
  %n_grouped_digits = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 6, !dbg !3211
  %59 = load i64, i64* %n_grouped_digits, align 8, !dbg !3211, !tbaa !3212
  %conv129 = zext i32 %0 to i64, !dbg !3213
  %mul = mul i64 %conv129, %d_start, !dbg !3214
  %add.ptr130 = getelementptr i8, i8* %pdigits.0, i64 %mul, !dbg !3215
  %60 = load i64, i64* %n_digits, align 8, !dbg !3216, !tbaa !2935
  %n_min_width = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 10, !dbg !3217
  %61 = load i64, i64* %n_min_width, align 8, !dbg !3217, !tbaa !2997
  %grouping = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 2, !dbg !3218
  %62 = load i8*, i8** %grouping, align 8, !dbg !3218, !tbaa !2858
  %thousands_sep = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 1, !dbg !3219
  %63 = load %struct._object*, %struct._object** %thousands_sep, align 8, !dbg !3219, !tbaa !1987
  %call132 = tail call i64 @_PyUnicode_InsertThousandsGrouping(%struct._object* %57, i64 %58, i64 %59, i8* %add.ptr130, i64 %60, i64 %61, i8* %62, %struct._object* %63, i32* null) #1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %call132, i64 0, metadata !725, metadata !858), !dbg !3221
  %cmp133 = icmp eq i64 %call132, -1, !dbg !3222
  br i1 %cmp133, label %cleanup.248, label %if.end.136, !dbg !3224

if.end.136:                                       ; preds = %if.end.126
  %bf.load138 = load i32, i32* %53, align 4, !dbg !3225
  %bf.lshr139 = lshr i32 %bf.load138, 2, !dbg !3225
  %bf.clear140 = and i32 %bf.lshr139, 7, !dbg !3225
  %cmp141 = icmp ult i32 %bf.clear140, %0, !dbg !3227
  br i1 %cmp141, label %if.then.143, label %cleanup, !dbg !3228

if.then.143:                                      ; preds = %if.end.136
  tail call void @PyMem_Free(i8* %pdigits.0) #1, !dbg !3229
  br label %cleanup, !dbg !3229

cleanup:                                          ; preds = %if.end.136, %if.then.143
  %64 = load i64, i64* %n_digits, align 8, !dbg !3230, !tbaa !2935
  %add146 = add i64 %64, %d_start, !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 %add146, i64 0, metadata !719, metadata !858), !dbg !3232
  br label %if.end.147

if.end.147:                                       ; preds = %cleanup, %if.end.82
  %d_pos.1 = phi i64 [ %add146, %cleanup ], [ %d_start, %if.end.82 ]
  %tobool148 = icmp ne i32 %toupper, 0, !dbg !3233
  %n_grouped_digits217.phi.trans.insert = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 6, !dbg !3234
  %.pre85 = load i64, i64* %n_grouped_digits217.phi.trans.insert, align 8, !dbg !3234, !tbaa !3212
  %cmp153.11 = icmp sgt i64 %.pre85, 0, !dbg !3235
  %or.cond92 = and i1 %tobool148, %cmp153.11, !dbg !3236
  br i1 %or.cond92, label %for.body.155.lr.ph, label %if.end.216, !dbg !3236

for.body.155.lr.ph:                               ; preds = %if.end.147
  %pos160 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3237
  %65 = bitcast i8* %1 to i32*, !dbg !3239
  %66 = bitcast i8* %1 to i16*, !dbg !3244
  switch i32 %0, label %cond.end.178.preheader [
    i32 1, label %cond.end.178.us.preheader
    i32 2, label %cond.end.178.us26.preheader
  ], !dbg !3247

cond.end.178.us26.preheader:                      ; preds = %for.body.155.lr.ph
  br label %cond.end.178.us26, !dbg !3248

cond.end.178.us.preheader:                        ; preds = %for.body.155.lr.ph
  br label %cond.end.178.us, !dbg !3237

cond.end.178.preheader:                           ; preds = %for.body.155.lr.ph
  br label %cond.end.178, !dbg !3248

cond.end.178.us:                                  ; preds = %cond.end.178.us.preheader, %for.inc.210.us
  %t150.012.us = phi i64 [ %inc211.us, %for.inc.210.us ], [ 0, %cond.end.178.us.preheader ]
  %67 = load i64, i64* %pos160, align 8, !dbg !3237, !tbaa !1025
  %add161.us = add i64 %67, %t150.012.us, !dbg !3237
  %arrayidx162.us = getelementptr i8, i8* %1, i64 %add161.us, !dbg !3237
  %68 = load i8, i8* %arrayidx162.us, align 1, !dbg !3237, !tbaa !1132
  %conv163.us = zext i8 %68 to i64, !dbg !3237
  %arrayidx183.us = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %conv163.us, !dbg !3250
  %69 = load i8, i8* %arrayidx183.us, align 1, !dbg !3250, !tbaa !1132
  %cmp185.us = icmp slt i8 %69, 0, !dbg !3251
  br i1 %cmp185.us, label %cleanup.213.loopexit99, label %for.inc.210.us, !dbg !3253

for.inc.210.us:                                   ; preds = %cond.end.178.us
  %70 = load i64, i64* %pos160, align 8, !dbg !3254, !tbaa !1025
  %add193.us = add i64 %70, %t150.012.us, !dbg !3254
  %arrayidx194.us = getelementptr i8, i8* %1, i64 %add193.us, !dbg !3254
  store i8 %69, i8* %arrayidx194.us, align 1, !dbg !3254, !tbaa !1132
  %.pre84 = load i64, i64* %n_grouped_digits217.phi.trans.insert, align 8, !dbg !3257, !tbaa !3212
  %inc211.us = add i64 %t150.012.us, 1, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %inc211.us, i64 0, metadata !738, metadata !858), !dbg !3259
  %cmp153.us = icmp slt i64 %inc211.us, %.pre84, !dbg !3235
  br i1 %cmp153.us, label %cond.end.178.us, label %if.end.216.loopexit100, !dbg !3260

cond.end.178.us26:                                ; preds = %cond.end.178.us26.preheader, %for.inc.210.us44
  %t150.012.us.14 = phi i64 [ %inc211.us.45, %for.inc.210.us44 ], [ 0, %cond.end.178.us26.preheader ]
  %71 = load i64, i64* %pos160, align 8, !dbg !3248, !tbaa !1025
  %add169.us.16 = add i64 %71, %t150.012.us.14, !dbg !3248
  %arrayidx170.us.20 = getelementptr i16, i16* %66, i64 %add169.us.16, !dbg !3248
  %72 = load i16, i16* %arrayidx170.us.20, align 2, !dbg !3248, !tbaa !1148
  %conv171.us.21 = zext i16 %72 to i64, !dbg !3248
  %idxprom182.us.29 = and i64 %conv171.us.21, 255, !dbg !3250
  %arrayidx183.us.30 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom182.us.29, !dbg !3250
  %73 = load i8, i8* %arrayidx183.us.30, align 1, !dbg !3250, !tbaa !1132
  %cmp185.us.32 = icmp slt i8 %73, 0, !dbg !3251
  br i1 %cmp185.us.32, label %cleanup.213.loopexit101, label %for.inc.210.us44, !dbg !3253

for.inc.210.us44:                                 ; preds = %cond.end.178.us26
  %conv196.us.35 = zext i8 %73 to i16, !dbg !3244
  %74 = load i64, i64* %pos160, align 8, !dbg !3244, !tbaa !1025
  %add198.us.36 = add i64 %74, %t150.012.us.14, !dbg !3244
  %arrayidx199.us.37 = getelementptr i16, i16* %66, i64 %add198.us.36, !dbg !3244
  store i16 %conv196.us.35, i16* %arrayidx199.us.37, align 2, !dbg !3244, !tbaa !1148
  %inc211.us.45 = add i64 %t150.012.us.14, 1, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %inc211.us.45, i64 0, metadata !738, metadata !858), !dbg !3259
  %cmp153.us.46 = icmp slt i64 %inc211.us.45, %.pre85, !dbg !3235
  br i1 %cmp153.us.46, label %cond.end.178.us26, label %if.end.216.loopexit102, !dbg !3260

cond.end.178:                                     ; preds = %cond.end.178.preheader, %for.inc.210
  %75 = phi i64 [ %82, %for.inc.210 ], [ %.pre85, %cond.end.178.preheader ]
  %t150.012 = phi i64 [ %inc211, %for.inc.210 ], [ 0, %cond.end.178.preheader ]
  %76 = load i64, i64* %pos160, align 8, !dbg !3248, !tbaa !1025
  %add169 = add i64 %76, %t150.012, !dbg !3248
  %arrayidx175 = getelementptr i32, i32* %65, i64 %add169, !dbg !3261
  %77 = load i32, i32* %arrayidx175, align 4, !dbg !3261, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !741, metadata !858), !dbg !3263
  %conv181 = zext i32 %77 to i64, !dbg !3250
  %idxprom182 = and i64 %conv181, 255, !dbg !3250
  %arrayidx183 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom182, !dbg !3250
  %78 = load i8, i8* %arrayidx183, align 1, !dbg !3250, !tbaa !1132
  %conv184 = zext i8 %78 to i32, !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %conv184, i64 0, metadata !741, metadata !858), !dbg !3263
  %cmp185 = icmp slt i8 %78, 0, !dbg !3251
  br i1 %cmp185, label %cleanup.213.loopexit, label %do.body.189, !dbg !3253

do.body.189:                                      ; preds = %cond.end.178
  switch i32 %0, label %sw.default.200 [
    i32 1, label %sw.bb.190
    i32 2, label %sw.bb.195
  ], !dbg !3264

sw.bb.190:                                        ; preds = %do.body.189
  %79 = load i64, i64* %pos160, align 8, !dbg !3254, !tbaa !1025
  %add193 = add i64 %79, %t150.012, !dbg !3254
  %arrayidx194 = getelementptr i8, i8* %1, i64 %add193, !dbg !3254
  store i8 %78, i8* %arrayidx194, align 1, !dbg !3254, !tbaa !1132
  %.pre82 = load i64, i64* %n_grouped_digits217.phi.trans.insert, align 8, !dbg !3257, !tbaa !3212
  br label %for.inc.210, !dbg !3254

sw.bb.195:                                        ; preds = %do.body.189
  %conv196 = zext i8 %78 to i16, !dbg !3244
  %80 = load i64, i64* %pos160, align 8, !dbg !3244, !tbaa !1025
  %add198 = add i64 %80, %t150.012, !dbg !3244
  %arrayidx199 = getelementptr i16, i16* %66, i64 %add198, !dbg !3244
  store i16 %conv196, i16* %arrayidx199, align 2, !dbg !3244, !tbaa !1148
  br label %for.inc.210, !dbg !3244

sw.default.200:                                   ; preds = %do.body.189
  %81 = load i64, i64* %pos160, align 8, !dbg !3239, !tbaa !1025
  %add202 = add i64 %81, %t150.012, !dbg !3239
  %arrayidx203 = getelementptr i32, i32* %65, i64 %add202, !dbg !3239
  store i32 %conv184, i32* %arrayidx203, align 4, !dbg !3239, !tbaa !1163
  br label %for.inc.210, !dbg !3266

for.inc.210:                                      ; preds = %sw.default.200, %sw.bb.195, %sw.bb.190
  %82 = phi i64 [ %75, %sw.default.200 ], [ %75, %sw.bb.195 ], [ %.pre82, %sw.bb.190 ], !dbg !3257
  %inc211 = add i64 %t150.012, 1, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %inc211, i64 0, metadata !738, metadata !858), !dbg !3259
  %cmp153 = icmp slt i64 %inc211, %82, !dbg !3235
  br i1 %cmp153, label %cond.end.178, label %if.end.216.loopexit, !dbg !3260

cleanup.213.loopexit:                             ; preds = %cond.end.178
  br label %cleanup.213, !dbg !3267

cleanup.213.loopexit99:                           ; preds = %cond.end.178.us
  br label %cleanup.213, !dbg !3267

cleanup.213.loopexit101:                          ; preds = %cond.end.178.us26
  br label %cleanup.213, !dbg !3267

cleanup.213:                                      ; preds = %cleanup.213.loopexit101, %cleanup.213.loopexit99, %cleanup.213.loopexit
  %83 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3267, !tbaa !929
  tail call void @PyErr_SetString(%struct._object* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #1, !dbg !3269
  br label %cleanup.248

if.end.216.loopexit:                              ; preds = %for.inc.210
  %.lcssa = phi i64 [ %82, %for.inc.210 ]
  br label %if.end.216, !dbg !3270

if.end.216.loopexit100:                           ; preds = %for.inc.210.us
  %.pre84.lcssa = phi i64 [ %.pre84, %for.inc.210.us ]
  br label %if.end.216, !dbg !3270

if.end.216.loopexit102:                           ; preds = %for.inc.210.us44
  br label %if.end.216, !dbg !3270

if.end.216:                                       ; preds = %if.end.216.loopexit102, %if.end.216.loopexit100, %if.end.216.loopexit, %if.end.147
  %84 = phi i64 [ %.pre85, %if.end.147 ], [ %.lcssa, %if.end.216.loopexit ], [ %.pre84.lcssa, %if.end.216.loopexit100 ], [ %.pre85, %if.end.216.loopexit102 ], !dbg !3234
  %pos218 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 5, !dbg !3270
  %85 = load i64, i64* %pos218, align 8, !dbg !3271, !tbaa !1025
  %add219 = add i64 %85, %84, !dbg !3271
  store i64 %add219, i64* %pos218, align 8, !dbg !3271, !tbaa !1025
  %n_decimal = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 7, !dbg !3272
  %86 = load i64, i64* %n_decimal, align 8, !dbg !3272, !tbaa !2949
  %tobool220 = icmp eq i64 %86, 0, !dbg !3274
  br i1 %tobool220, label %if.end.229, label %if.then.221, !dbg !3275

if.then.221:                                      ; preds = %if.end.216
  %buffer222 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3276
  %87 = load %struct._object*, %struct._object** %buffer222, align 8, !dbg !3276, !tbaa !1042
  %decimal_point = getelementptr inbounds %struct.LocaleInfo, %struct.LocaleInfo* %locale, i64 0, i32 0, !dbg !3278
  %88 = load %struct._object*, %struct._object** %decimal_point, align 8, !dbg !3278, !tbaa !1973
  tail call void @_PyUnicode_FastCopyCharacters(%struct._object* %87, i64 %add219, %struct._object* %88, i64 0, i64 %86) #1, !dbg !3279
  %89 = load i64, i64* %n_decimal, align 8, !dbg !3280, !tbaa !2949
  %90 = load i64, i64* %pos218, align 8, !dbg !3281, !tbaa !1025
  %add227 = add i64 %90, %89, !dbg !3281
  store i64 %add227, i64* %pos218, align 8, !dbg !3281, !tbaa !1025
  %add228 = add i64 %d_pos.1, 1, !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 %add228, i64 0, metadata !719, metadata !858), !dbg !3232
  br label %if.end.229, !dbg !3283

if.end.229:                                       ; preds = %if.end.216, %if.then.221
  %91 = phi i64 [ %add227, %if.then.221 ], [ %add219, %if.end.216 ], !dbg !3284
  %d_pos.2 = phi i64 [ %add228, %if.then.221 ], [ %d_pos.1, %if.end.216 ]
  %n_remainder = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 8, !dbg !3287
  %92 = load i64, i64* %n_remainder, align 8, !dbg !3287, !tbaa !2952
  %tobool230 = icmp eq i64 %92, 0, !dbg !3288
  br i1 %tobool230, label %if.end.238, label %if.then.231, !dbg !3289

if.then.231:                                      ; preds = %if.end.229
  %buffer232 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3290
  %93 = load %struct._object*, %struct._object** %buffer232, align 8, !dbg !3290, !tbaa !1042
  tail call void @_PyUnicode_FastCopyCharacters(%struct._object* %93, i64 %91, %struct._object* %digits, i64 %d_pos.2, i64 %92) #1, !dbg !3291
  %94 = load i64, i64* %n_remainder, align 8, !dbg !3292, !tbaa !2952
  %95 = load i64, i64* %pos218, align 8, !dbg !3293, !tbaa !1025
  %add237 = add i64 %95, %94, !dbg !3293
  store i64 %add237, i64* %pos218, align 8, !dbg !3293, !tbaa !1025
  br label %if.end.238, !dbg !3294

if.end.238:                                       ; preds = %if.end.229, %if.then.231
  %96 = phi i64 [ %91, %if.end.229 ], [ %add237, %if.then.231 ], !dbg !3295
  %n_rpadding = getelementptr inbounds %struct.NumberFieldWidths, %struct.NumberFieldWidths* %spec, i64 0, i32 3, !dbg !3298
  %97 = load i64, i64* %n_rpadding, align 8, !dbg !3298, !tbaa !3029
  %tobool239 = icmp eq i64 %97, 0, !dbg !3299
  br i1 %tobool239, label %cleanup.248, label %if.then.240, !dbg !3300

if.then.240:                                      ; preds = %if.end.238
  %buffer241 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 0, !dbg !3301
  %98 = load %struct._object*, %struct._object** %buffer241, align 8, !dbg !3301, !tbaa !1042
  tail call void @_PyUnicode_FastFill(%struct._object* %98, i64 %96, i64 %97, i32 %fill_char) #1, !dbg !3302
  %99 = load i64, i64* %n_rpadding, align 8, !dbg !3303, !tbaa !3029
  %100 = load i64, i64* %pos218, align 8, !dbg !3304, !tbaa !1025
  %add246 = add i64 %100, %99, !dbg !3304
  store i64 %add246, i64* %pos218, align 8, !dbg !3304, !tbaa !1025
  br label %cleanup.248, !dbg !3305

cleanup.248:                                      ; preds = %if.end.126, %if.then.120, %cond.end.89, %cleanup.213, %if.then.240, %if.end.238
  %retval.5 = phi i32 [ -1, %cleanup.213 ], [ 0, %if.end.238 ], [ 0, %if.then.240 ], [ -1, %cond.end.89 ], [ -1, %if.then.120 ], [ -1, %if.end.126 ]
  ret i32 %retval.5, !dbg !3306
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #3

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #2

declare %struct._object* @PyUnicode_New(i64, i32) #2

declare i64 @_PyUnicode_InsertThousandsGrouping(%struct._object*, i64, i64, i8*, i64, i64, i8*, %struct._object*, i32*) #2

declare i8* @_PyUnicode_AsKind(%struct._object*, i32) #2

declare void @PyMem_Free(i8*) #2

declare double @PyFloat_AsDouble(%struct._object*) #2

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

declare i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter*, i8*, i64) #2

declare %struct._object* @_PyUnicode_FromASCII(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_number(%struct._object* nocapture readonly %s, i64 %pos, i64 %end, i64* nocapture %n_remainder, i32* nocapture %has_decimal) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !795, metadata !858), !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %pos, i64 0, metadata !796, metadata !858), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %end, i64 0, metadata !797, metadata !858), !dbg !3309
  tail call void @llvm.dbg.value(metadata i64* %n_remainder, i64 0, metadata !798, metadata !858), !dbg !3310
  tail call void @llvm.dbg.value(metadata i32* %has_decimal, i64 0, metadata !799, metadata !858), !dbg !3311
  %cmp.210 = icmp slt i64 %pos, %end, !dbg !3312
  br i1 %cmp.210, label %land.rhs.lr.ph, label %land.end.177, !dbg !3313

land.rhs.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct._object, %struct._object* %s, i64 2, !dbg !3314
  %0 = bitcast %struct._object* %state to i32*, !dbg !3314
  %bf.load = load i32, i32* %0, align 4, !dbg !3316
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !3314
  %bf.clear = and i32 %bf.lshr, 7, !dbg !3314
  %cmp1 = icmp eq i32 %bf.clear, 1, !dbg !3314
  %bf.clear5 = and i32 %bf.load, 32, !dbg !3318
  %tobool = icmp eq i32 %bf.clear5, 0, !dbg !3318
  %data = getelementptr inbounds %struct._object, %struct._object* %s, i64 4, i32 1, !dbg !3320
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !3320
  %bf.clear10 = and i32 %bf.load, 64, !dbg !3322
  %tobool11 = icmp ne i32 %bf.clear10, 0, !dbg !3322
  %add.ptr = getelementptr %struct._object, %struct._object* %s, i64 3, !dbg !3324
  %1 = bitcast %struct._object* %add.ptr to i8*, !dbg !3324
  %2 = bitcast %struct._typeobject** %data to i8*, !dbg !3326
  %cond = select i1 %tobool11, i8* %1, i8* %2, !dbg !3322
  %cmp22 = icmp eq i32 %bf.clear, 2, !dbg !3328
  %tobool29 = icmp ne i32 %bf.clear5, 0, !dbg !3330
  br i1 %cmp1, label %cond.true.us.preheader, label %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge, !dbg !3314

cond.true.us.preheader:                           ; preds = %land.rhs.lr.ph
  br label %cond.true.us, !dbg !3318

land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge:    ; preds = %land.rhs.lr.ph
  br i1 %cmp22, label %cond.true.24.us221.preheader, label %cond.false.49.preheader, !dbg !3328

cond.false.49.preheader:                          ; preds = %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge
  br label %cond.false.49, !dbg !3332

cond.true.24.us221.preheader:                     ; preds = %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge
  br label %cond.true.24.us221, !dbg !3330

cond.true.us:                                     ; preds = %cond.true.us.preheader, %while.body.us
  %pos.addr.0211.us = phi i64 [ %inc.us, %while.body.us ], [ %pos, %cond.true.us.preheader ]
  br i1 %tobool, label %cond.false.14.us, label %cond.end.75.us, !dbg !3318

cond.false.14.us:                                 ; preds = %cond.true.us
  %3 = load i8*, i8** %any, align 8, !dbg !3320, !tbaa !929
  br label %cond.end.75.us, !dbg !3320

cond.end.75.us:                                   ; preds = %cond.false.14.us, %cond.true.us
  %cond16.us = phi i8* [ %3, %cond.false.14.us ], [ %cond, %cond.true.us ], !dbg !3334
  %arrayidx.us = getelementptr i8, i8* %cond16.us, i64 %pos.addr.0211.us, !dbg !3335
  %4 = load i8, i8* %arrayidx.us, align 1, !dbg !3335, !tbaa !1132
  %conv.us = zext i8 %4 to i64, !dbg !3335
  %arrayidx78.us = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %conv.us, !dbg !3338
  %5 = load i32, i32* %arrayidx78.us, align 4, !dbg !3338, !tbaa !1163
  %and79.us = and i32 %5, 4, !dbg !3338
  %tobool80.us = icmp eq i32 %and79.us, 0, !dbg !3313
  br i1 %tobool80.us, label %land.rhs.83.loopexit, label %while.body.us, !dbg !3341

while.body.us:                                    ; preds = %cond.end.75.us
  %inc.us = add nsw i64 %pos.addr.0211.us, 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %inc.us, i64 0, metadata !796, metadata !858), !dbg !3308
  %cmp.us = icmp slt i64 %inc.us, %end, !dbg !3312
  br i1 %cmp.us, label %cond.true.us, label %land.end.177.loopexit, !dbg !3313

cond.true.24.us221:                               ; preds = %cond.true.24.us221.preheader, %while.body.us242
  %pos.addr.0211.us.213 = phi i64 [ %inc.us.243, %while.body.us242 ], [ %pos, %cond.true.24.us221.preheader ]
  br i1 %tobool29, label %cond.end.75.us235, label %cond.false.42.us222, !dbg !3330

cond.false.42.us222:                              ; preds = %cond.true.24.us221
  %6 = load i8*, i8** %any, align 8, !dbg !3344, !tbaa !929
  br label %cond.end.75.us235, !dbg !3344

cond.end.75.us235:                                ; preds = %cond.false.42.us222, %cond.true.24.us221
  %cond46.us.225 = phi i8* [ %6, %cond.false.42.us222 ], [ %cond, %cond.true.24.us221 ], !dbg !3334
  %7 = bitcast i8* %cond46.us.225 to i16*, !dbg !3346
  %arrayidx47.us.226 = getelementptr i16, i16* %7, i64 %pos.addr.0211.us.213, !dbg !3346
  %8 = load i16, i16* %arrayidx47.us.226, align 2, !dbg !3346, !tbaa !1148
  %conv48.us.227 = zext i16 %8 to i64, !dbg !3346
  %idxprom.us.238 = and i64 %conv48.us.227, 255, !dbg !3338
  %arrayidx78.us.239 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.us.238, !dbg !3338
  %9 = load i32, i32* %arrayidx78.us.239, align 4, !dbg !3338, !tbaa !1163
  %and79.us.240 = and i32 %9, 4, !dbg !3338
  %tobool80.us.241 = icmp eq i32 %and79.us.240, 0, !dbg !3313
  br i1 %tobool80.us.241, label %land.rhs.83.loopexit262, label %while.body.us242, !dbg !3341

while.body.us242:                                 ; preds = %cond.end.75.us235
  %inc.us.243 = add nsw i64 %pos.addr.0211.us.213, 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %inc.us.243, i64 0, metadata !796, metadata !858), !dbg !3308
  %cmp.us.244 = icmp slt i64 %inc.us.243, %end, !dbg !3312
  br i1 %cmp.us.244, label %cond.true.24.us221, label %land.end.177.loopexit263, !dbg !3313

cond.false.49:                                    ; preds = %cond.false.49.preheader, %while.body
  %pos.addr.0211 = phi i64 [ %inc, %while.body ], [ %pos, %cond.false.49.preheader ]
  br i1 %tobool29, label %cond.end.75, label %cond.false.67, !dbg !3332

cond.false.67:                                    ; preds = %cond.false.49
  %10 = load i8*, i8** %any, align 8, !dbg !3349, !tbaa !929
  br label %cond.end.75, !dbg !3349

cond.end.75:                                      ; preds = %cond.false.67, %cond.false.49
  %cond71 = phi i8* [ %10, %cond.false.67 ], [ %cond, %cond.false.49 ], !dbg !3334
  %11 = bitcast i8* %cond71 to i32*, !dbg !3351
  %arrayidx72 = getelementptr i32, i32* %11, i64 %pos.addr.0211, !dbg !3351
  %12 = load i32, i32* %arrayidx72, align 4, !dbg !3351, !tbaa !1163
  %conv77 = zext i32 %12 to i64, !dbg !3338
  %idxprom = and i64 %conv77, 255, !dbg !3338
  %arrayidx78 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !3338
  %13 = load i32, i32* %arrayidx78, align 4, !dbg !3338, !tbaa !1163
  %and79 = and i32 %13, 4, !dbg !3338
  %tobool80 = icmp eq i32 %and79, 0, !dbg !3313
  br i1 %tobool80, label %land.rhs.83.loopexit264, label %while.body, !dbg !3341

while.body:                                       ; preds = %cond.end.75
  %inc = add nsw i64 %pos.addr.0211, 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !796, metadata !858), !dbg !3308
  %cmp = icmp slt i64 %inc, %end, !dbg !3312
  br i1 %cmp, label %cond.false.49, label %land.end.177.loopexit265, !dbg !3313

land.rhs.83.loopexit:                             ; preds = %cond.end.75.us
  %pos.addr.0211.us.lcssa = phi i64 [ %pos.addr.0211.us, %cond.end.75.us ]
  br label %land.rhs.83, !dbg !3354

land.rhs.83.loopexit262:                          ; preds = %cond.end.75.us235
  %pos.addr.0211.us.213.lcssa = phi i64 [ %pos.addr.0211.us.213, %cond.end.75.us235 ]
  br label %land.rhs.83, !dbg !3354

land.rhs.83.loopexit264:                          ; preds = %cond.end.75
  %pos.addr.0211.lcssa = phi i64 [ %pos.addr.0211, %cond.end.75 ]
  br label %land.rhs.83, !dbg !3354

land.rhs.83:                                      ; preds = %land.rhs.83.loopexit264, %land.rhs.83.loopexit262, %land.rhs.83.loopexit
  %pos.addr.0.lcssa208 = phi i64 [ %pos.addr.0211.us.lcssa, %land.rhs.83.loopexit ], [ %pos.addr.0211.us.213.lcssa, %land.rhs.83.loopexit262 ], [ %pos.addr.0211.lcssa, %land.rhs.83.loopexit264 ]
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !800, metadata !858), !dbg !3354
  br i1 %cmp1, label %cond.true.90, label %cond.false.115, !dbg !3316

cond.true.90:                                     ; preds = %land.rhs.83
  br i1 %tobool, label %cond.false.108, label %cond.end.111, !dbg !3355

cond.false.108:                                   ; preds = %cond.true.90
  %14 = load i8*, i8** %any, align 8, !dbg !3356, !tbaa !929
  br label %cond.end.111, !dbg !3356

cond.end.111:                                     ; preds = %cond.true.90, %cond.false.108
  %cond112 = phi i8* [ %14, %cond.false.108 ], [ %cond, %cond.true.90 ], !dbg !3357
  %arrayidx113 = getelementptr i8, i8* %cond112, i64 %pos.addr.0.lcssa208, !dbg !3358
  %15 = load i8, i8* %arrayidx113, align 1, !dbg !3358, !tbaa !1132
  %conv114 = zext i8 %15 to i32, !dbg !3358
  br label %cond.end.173, !dbg !3358

cond.false.115:                                   ; preds = %land.rhs.83
  br i1 %cmp22, label %cond.true.122, label %cond.false.147, !dbg !3361

cond.true.122:                                    ; preds = %cond.false.115
  br i1 %tobool29, label %cond.end.143, label %cond.false.140, !dbg !3362

cond.false.140:                                   ; preds = %cond.true.122
  %16 = load i8*, i8** %any, align 8, !dbg !3363, !tbaa !929
  br label %cond.end.143, !dbg !3363

cond.end.143:                                     ; preds = %cond.true.122, %cond.false.140
  %cond144 = phi i8* [ %16, %cond.false.140 ], [ %cond, %cond.true.122 ], !dbg !3357
  %17 = bitcast i8* %cond144 to i16*, !dbg !3365
  %arrayidx145 = getelementptr i16, i16* %17, i64 %pos.addr.0.lcssa208, !dbg !3365
  %18 = load i16, i16* %arrayidx145, align 2, !dbg !3365, !tbaa !1148
  %conv146 = zext i16 %18 to i32, !dbg !3365
  br label %cond.end.173, !dbg !3365

cond.false.147:                                   ; preds = %cond.false.115
  br i1 %tobool29, label %cond.end.168, label %cond.false.165, !dbg !3368

cond.false.165:                                   ; preds = %cond.false.147
  %19 = load i8*, i8** %any, align 8, !dbg !3369, !tbaa !929
  br label %cond.end.168, !dbg !3369

cond.end.168:                                     ; preds = %cond.false.147, %cond.false.165
  %cond169 = phi i8* [ %19, %cond.false.165 ], [ %cond, %cond.false.147 ], !dbg !3357
  %20 = bitcast i8* %cond169 to i32*, !dbg !3371
  %arrayidx170 = getelementptr i32, i32* %20, i64 %pos.addr.0.lcssa208, !dbg !3371
  %21 = load i32, i32* %arrayidx170, align 4, !dbg !3371, !tbaa !1163
  br label %cond.end.173, !dbg !3371

cond.end.173:                                     ; preds = %cond.end.143, %cond.end.168, %cond.end.111
  %cond174 = phi i32 [ %conv114, %cond.end.111 ], [ %conv146, %cond.end.143 ], [ %21, %cond.end.168 ], !dbg !3357
  %cmp175 = icmp eq i32 %cond174, 46, !dbg !3374
  br label %land.end.177

land.end.177.loopexit:                            ; preds = %while.body.us
  %inc.us.lcssa = phi i64 [ %inc.us, %while.body.us ]
  br label %land.end.177, !dbg !3377

land.end.177.loopexit263:                         ; preds = %while.body.us242
  %inc.us.243.lcssa = phi i64 [ %inc.us.243, %while.body.us242 ]
  br label %land.end.177, !dbg !3377

land.end.177.loopexit265:                         ; preds = %while.body
  %inc.lcssa = phi i64 [ %inc, %while.body ]
  br label %land.end.177, !dbg !3377

land.end.177:                                     ; preds = %land.end.177.loopexit265, %land.end.177.loopexit263, %land.end.177.loopexit, %entry, %cond.end.173
  %pos.addr.0209 = phi i64 [ %pos.addr.0.lcssa208, %cond.end.173 ], [ %pos, %entry ], [ %inc.us.lcssa, %land.end.177.loopexit ], [ %inc.us.243.lcssa, %land.end.177.loopexit263 ], [ %inc.lcssa, %land.end.177.loopexit265 ]
  %22 = phi i1 [ %cmp175, %cond.end.173 ], [ false, %entry ], [ false, %land.end.177.loopexit ], [ false, %land.end.177.loopexit263 ], [ false, %land.end.177.loopexit265 ]
  %land.ext = zext i1 %22 to i32, !dbg !3377
  store i32 %land.ext, i32* %has_decimal, align 4, !dbg !3378, !tbaa !1163
  %inc179.neg = sext i1 %22 to i64
  %inc179.pos.addr.0.neg = sub i64 %end, %pos.addr.0209, !dbg !3379
  %sub = add i64 %inc179.pos.addr.0.neg, %inc179.neg, !dbg !3380
  store i64 %sub, i64* %n_remainder, align 8, !dbg !3381, !tbaa !1088
  ret void, !dbg !3382
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare double @PyComplex_RealAsDouble(%struct._object*) #2

declare double @PyComplex_ImagAsDouble(%struct._object*) #2

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!855, !856}
!llvm.ident = !{!857}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !401, globals: !853)
!1 = !DIFile(filename: "Python/formatter_unicode.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !96, !350, !351, !369, !373, !381, !397, !399, !17, !101, !37, !348, !371, !391, !394, !393, !396, !372, !50}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !14, file: !13, line: 108, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !27)
!27 = !{!28, !34, !38, !39, !40, !45, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
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
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !97, !98, !99, !100, !104, !105}
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
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !26, file: !13, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!11, !11, !58}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !26, file: !13, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!50, !11, !58, !11}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !26, file: !13, line: 345, baseType: !96, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !26, file: !13, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!11, !11}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !26, file: !13, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !13, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!11, !11, !11}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !13, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !13, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !13, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !13, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !13, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!11, !11, !11, !11}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !13, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !13, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !13, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !13, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!50, !11}
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
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !26, file: !13, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !13, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!17, !11}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !13, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !13, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!11, !11, !17}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !13, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !13, line: 285, baseType: !96, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !13, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!50, !11, !17, !11}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !13, line: 287, baseType: !96, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !13, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!50, !11, !11}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !13, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !13, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !26, file: !13, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
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
!219 = !{!50, !11, !11, !11}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !26, file: !13, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !11}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !26, file: !13, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !26, file: !13, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !26, file: !13, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !26, file: !13, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !26, file: !13, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !13, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!50, !11, !242, !50}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !13, line: 179, baseType: !96, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !13, line: 180, baseType: !11, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !13, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !13, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !13, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !13, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !13, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !13, line: 190, baseType: !96, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !13, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !11, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !26, file: !13, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !26, file: !13, line: 368, baseType: !35, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !26, file: !13, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!50, !11, !270, !96}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!50, !11, !96}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !26, file: !13, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !26, file: !13, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!11, !11, !11, !50}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !26, file: !13, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !26, file: !13, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !26, file: !13, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !26, file: !13, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !35, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !35, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !26, file: !13, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !26, file: !13, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !58, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!11, !11, !96}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!50, !11, !11, !96}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !96, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !26, file: !13, line: 392, baseType: !25, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !26, file: !13, line: 393, baseType: !11, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !26, file: !13, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !26, file: !13, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !26, file: !13, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !26, file: !13, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !26, file: !13, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!11, !25, !17}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !26, file: !13, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!11, !25, !11, !11}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !26, file: !13, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !96}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !26, file: !13, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !26, file: !13, line: 402, baseType: !11, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !26, file: !13, line: 403, baseType: !11, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !26, file: !13, line: 404, baseType: !11, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !26, file: !13, line: 405, baseType: !11, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !26, file: !13, line: 406, baseType: !11, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !26, file: !13, line: 407, baseType: !41, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !26, file: !13, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !26, file: !13, line: 412, baseType: !41, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358, !366}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !4, line: 291, baseType: !12, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !353, file: !4, line: 292, baseType: !17, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !353, file: !4, line: 293, baseType: !225, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !4, line: 349, baseType: !359, size: 32, align: 32, offset: 256)
!359 = !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !4, line: 294, size: 32, align: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !359, file: !4, line: 303, baseType: !348, size: 2, align: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !359, file: !4, line: 331, baseType: !348, size: 3, align: 32, offset: 2)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !359, file: !4, line: 336, baseType: !348, size: 1, align: 32, offset: 5)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !359, file: !4, line: 340, baseType: !348, size: 1, align: 32, offset: 6)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !359, file: !4, line: 345, baseType: !348, size: 1, align: 32, offset: 7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !353, file: !4, line: 350, baseType: !367, size: 64, align: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 90, baseType: !50)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !372)
!372 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !376)
!376 = !{!377, !378, !379, !380}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !375, file: !4, line: 357, baseType: !352, size: 384, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !375, file: !4, line: 358, baseType: !17, size: 64, align: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !375, file: !4, line: 360, baseType: !58, size: 64, align: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !375, file: !4, line: 361, baseType: !17, size: 64, align: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !383, file: !4, line: 369, baseType: !374, size: 576, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !383, file: !4, line: 375, baseType: !387, size: 64, align: 64, offset: 576)
!387 = !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !4, line: 370, size: 64, align: 64, elements: !388)
!388 = !{!389, !390, !392, !395}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !387, file: !4, line: 371, baseType: !96, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !387, file: !4, line: 372, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !387, file: !4, line: 373, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !83)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !387, file: !4, line: 374, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!401 = !{!402, !437, !458, !466, !474, !484, !499, !504, !507, !518, !523, !541, !551, !561, !567, !614, !680, !703, !745, !760, !790, !801}
!402 = !DISubprogram(name: "_PyUnicode_FormatAdvancedWriter", scope: !1, file: !1, line: 1374, type: !403, isLocal: false, isDefinition: true, scopeLine: 1378, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64)* @_PyUnicode_FormatAdvancedWriter, variables: !419)
!403 = !DISubroutineType(types: !404)
!404 = !{!50, !405, !11, !11, !17, !17}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !4, line: 917, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 897, size: 448, align: 64, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !407, file: !4, line: 898, baseType: !11, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !407, file: !4, line: 899, baseType: !96, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !407, file: !4, line: 900, baseType: !3, size: 32, align: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !407, file: !4, line: 901, baseType: !350, size: 32, align: 32, offset: 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !407, file: !4, line: 902, baseType: !17, size: 64, align: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !407, file: !4, line: 903, baseType: !17, size: 64, align: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !407, file: !4, line: 906, baseType: !17, size: 64, align: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !407, file: !4, line: 909, baseType: !350, size: 32, align: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !407, file: !4, line: 912, baseType: !372, size: 8, align: 8, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !407, file: !4, line: 916, baseType: !372, size: 8, align: 8, offset: 424)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !402, file: !1, line: 1374, type: !405)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !402, file: !1, line: 1375, type: !11)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_spec", arg: 3, scope: !402, file: !1, line: 1376, type: !11)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !402, file: !1, line: 1377, type: !17)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 5, scope: !402, file: !1, line: 1377, type: !17)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !402, file: !1, line: 1379, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "InternalFormatSpec", file: !1, line: 118, baseType: !427)
!427 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 109, size: 384, align: 64, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "fill_char", scope: !427, file: !1, line: 110, baseType: !350, size: 32, align: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !427, file: !1, line: 111, baseType: !350, size: 32, align: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "alternate", scope: !427, file: !1, line: 112, baseType: !50, size: 32, align: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !427, file: !1, line: 113, baseType: !350, size: 32, align: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !427, file: !1, line: 114, baseType: !17, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_separators", scope: !427, file: !1, line: 115, baseType: !50, size: 32, align: 32, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !427, file: !1, line: 116, baseType: !17, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !1, line: 117, baseType: !350, size: 32, align: 32, offset: 320)
!437 = !DISubprogram(name: "_PyLong_FormatAdvancedWriter", scope: !1, file: !1, line: 1410, type: !403, isLocal: false, isDefinition: true, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64)* @_PyLong_FormatAdvancedWriter, variables: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !453, !455}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !437, file: !1, line: 1410, type: !405)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !437, file: !1, line: 1411, type: !11)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_spec", arg: 3, scope: !437, file: !1, line: 1412, type: !11)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !437, file: !1, line: 1413, type: !17)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 5, scope: !437, file: !1, line: 1413, type: !17)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !437, file: !1, line: 1415, type: !11)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !437, file: !1, line: 1415, type: !11)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !437, file: !1, line: 1416, type: !426)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !437, file: !1, line: 1417, type: !50)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !449, file: !1, line: 1467, type: !11)
!449 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1467, column: 5)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !1, line: 1467, type: !11)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 1467, column: 5)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 1467, column: 5)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !454, file: !1, line: 1468, type: !11)
!454 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1468, column: 5)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !1, line: 1468, type: !11)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 1468, column: 5)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 1468, column: 5)
!458 = !DISubprogram(name: "_PyFloat_FormatAdvancedWriter", scope: !1, file: !1, line: 1473, type: !403, isLocal: false, isDefinition: true, scopeLine: 1477, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64)* @_PyFloat_FormatAdvancedWriter, variables: !459)
!459 = !{!460, !461, !462, !463, !464, !465}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !458, file: !1, line: 1473, type: !405)
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !458, file: !1, line: 1474, type: !11)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_spec", arg: 3, scope: !458, file: !1, line: 1475, type: !11)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !458, file: !1, line: 1476, type: !17)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 5, scope: !458, file: !1, line: 1476, type: !17)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !458, file: !1, line: 1478, type: !426)
!466 = !DISubprogram(name: "_PyComplex_FormatAdvancedWriter", scope: !1, file: !1, line: 1512, type: !403, isLocal: false, isDefinition: true, scopeLine: 1516, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64)* @_PyComplex_FormatAdvancedWriter, variables: !467)
!467 = !{!468, !469, !470, !471, !472, !473}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !466, file: !1, line: 1512, type: !405)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !466, file: !1, line: 1513, type: !11)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_spec", arg: 3, scope: !466, file: !1, line: 1514, type: !11)
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !466, file: !1, line: 1515, type: !17)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 5, scope: !466, file: !1, line: 1515, type: !17)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !466, file: !1, line: 1517, type: !426)
!474 = !DISubprogram(name: "format_obj", scope: !1, file: !1, line: 1360, type: !475, isLocal: true, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: true, variables: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!50, !11, !405}
!477 = !{!478, !479, !480, !481, !482}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !474, file: !1, line: 1360, type: !11)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 2, scope: !474, file: !1, line: 1360, type: !405)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !474, file: !1, line: 1362, type: !11)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !474, file: !1, line: 1363, type: !50)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !1, line: 1369, type: !11)
!483 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1369, column: 5)
!484 = !DISubprogram(name: "parse_internal_render_format_spec", scope: !1, file: !1, line: 146, type: !485, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i64, %struct.InternalFormatSpec*, i8, i8)* @parse_internal_render_format_spec, variables: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{!50, !11, !17, !17, !487, !37, !37}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format_spec", arg: 1, scope: !484, file: !1, line: 146, type: !11)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !484, file: !1, line: 147, type: !17)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 3, scope: !484, file: !1, line: 147, type: !17)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 4, scope: !484, file: !1, line: 148, type: !487)
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "default_type", arg: 5, scope: !484, file: !1, line: 149, type: !37)
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "default_align", arg: 6, scope: !484, file: !1, line: 150, type: !37)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !484, file: !1, line: 152, type: !17)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !484, file: !1, line: 157, type: !17)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align_specified", scope: !484, file: !1, line: 158, type: !50)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fill_char_specified", scope: !484, file: !1, line: 159, type: !50)
!499 = !DISubprogram(name: "is_alignment_token", scope: !1, file: !1, line: 86, type: !500, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!50, !350}
!502 = !{!503}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !499, file: !1, line: 86, type: !350)
!504 = !DISubprogram(name: "is_sign_element", scope: !1, file: !1, line: 98, type: !500, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, variables: !505)
!505 = !{!506}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !504, file: !1, line: 98, type: !350)
!507 = !DISubprogram(name: "get_integer", scope: !1, file: !1, line: 51, type: !508, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64*, i64, i64*)* @get_integer, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!50, !11, !254, !17, !254}
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !507, file: !1, line: 51, type: !11)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 2, scope: !507, file: !1, line: 51, type: !254)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 3, scope: !507, file: !1, line: 51, type: !17)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 4, scope: !507, file: !1, line: 52, type: !254)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "accumulator", scope: !507, file: !1, line: 54, type: !17)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digitval", scope: !507, file: !1, line: 54, type: !17)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numdigits", scope: !507, file: !1, line: 55, type: !50)
!518 = !DISubprogram(name: "invalid_comma_type", scope: !1, file: !1, line: 31, type: !519, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !350}
!521 = !{!522}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "presentation_type", arg: 1, scope: !518, file: !1, line: 31, type: !350)
!523 = !DISubprogram(name: "format_string_internal", scope: !1, file: !1, line: 726, type: !524, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, variables: !528)
!524 = !DISubroutineType(types: !525)
!525 = !{!50, !11, !526, !405}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !523, file: !1, line: 726, type: !11)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !523, file: !1, line: 726, type: !526)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 3, scope: !523, file: !1, line: 727, type: !405)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lpad", scope: !523, file: !1, line: 729, type: !17)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpad", scope: !523, file: !1, line: 730, type: !17)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !523, file: !1, line: 731, type: !17)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !523, file: !1, line: 732, type: !17)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !523, file: !1, line: 733, type: !50)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxchar", scope: !523, file: !1, line: 734, type: !350)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "valmaxchar", scope: !539, file: !1, line: 780, type: !350)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 779, column: 52)
!540 = distinct !DILexicalBlock(scope: !523, file: !1, line: 779, column: 9)
!541 = !DISubprogram(name: "calc_padding", scope: !1, file: !1, line: 286, type: !542, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !17, !17, !350, !254, !254, !254}
!544 = !{!545, !546, !547, !548, !549, !550}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nchars", arg: 1, scope: !541, file: !1, line: 286, type: !17)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 2, scope: !541, file: !1, line: 286, type: !17)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "align", arg: 3, scope: !541, file: !1, line: 286, type: !350)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_lpadding", arg: 4, scope: !541, file: !1, line: 287, type: !254)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_rpadding", arg: 5, scope: !541, file: !1, line: 287, type: !254)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_total", arg: 6, scope: !541, file: !1, line: 288, type: !254)
!551 = !DISubprogram(name: "fill_padding", scope: !1, file: !1, line: 321, type: !552, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, variables: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!50, !405, !17, !350, !17, !17}
!554 = !{!555, !556, !557, !558, !559, !560}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !551, file: !1, line: 321, type: !405)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nchars", arg: 2, scope: !551, file: !1, line: 322, type: !17)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fill_char", arg: 3, scope: !551, file: !1, line: 323, type: !350)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_lpadding", arg: 4, scope: !551, file: !1, line: 323, type: !17)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_rpadding", arg: 5, scope: !551, file: !1, line: 324, type: !17)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !551, file: !1, line: 326, type: !17)
!561 = !DISubprogram(name: "unknown_presentation_type", scope: !1, file: !1, line: 12, type: !562, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, variables: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !350, !35}
!564 = !{!565, !566}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "presentation_type", arg: 1, scope: !561, file: !1, line: 12, type: !350)
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type_name", arg: 2, scope: !561, file: !1, line: 13, type: !35)
!567 = !DISubprogram(name: "format_long_internal", scope: !1, file: !1, line: 811, type: !524, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, variables: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !597, !598, !605, !608, !609, !611}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !567, file: !1, line: 811, type: !11)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !567, file: !1, line: 811, type: !526)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 3, scope: !567, file: !1, line: 812, type: !405)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !567, file: !1, line: 814, type: !50)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxchar", scope: !567, file: !1, line: 815, type: !350)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !567, file: !1, line: 816, type: !11)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inumeric_chars", scope: !567, file: !1, line: 817, type: !17)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign_char", scope: !567, file: !1, line: 818, type: !350)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_digits", scope: !567, file: !1, line: 819, type: !17)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_remainder", scope: !567, file: !1, line: 821, type: !17)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_prefix", scope: !567, file: !1, line: 823, type: !17)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_total", scope: !567, file: !1, line: 824, type: !17)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prefix", scope: !567, file: !1, line: 825, type: !17)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "spec", scope: !567, file: !1, line: 826, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "NumberFieldWidths", file: !1, line: 387, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 367, size: 704, align: 64, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "n_lpadding", scope: !584, file: !1, line: 368, baseType: !17, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "n_prefix", scope: !584, file: !1, line: 369, baseType: !17, size: 64, align: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "n_spadding", scope: !584, file: !1, line: 370, baseType: !17, size: 64, align: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "n_rpadding", scope: !584, file: !1, line: 371, baseType: !17, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !584, file: !1, line: 372, baseType: !37, size: 8, align: 8, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign", scope: !584, file: !1, line: 373, baseType: !17, size: 64, align: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "n_grouped_digits", scope: !584, file: !1, line: 374, baseType: !17, size: 64, align: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "n_decimal", scope: !584, file: !1, line: 376, baseType: !17, size: 64, align: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "n_remainder", scope: !584, file: !1, line: 377, baseType: !17, size: 64, align: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "n_digits", scope: !584, file: !1, line: 383, baseType: !17, size: 64, align: 64, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "n_min_width", scope: !584, file: !1, line: 385, baseType: !17, size: 64, align: 64, offset: 640)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !567, file: !1, line: 827, type: !23)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "locale", scope: !567, file: !1, line: 831, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "LocaleInfo", file: !1, line: 361, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 357, size: 192, align: 64, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !600, file: !1, line: 358, baseType: !11, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !600, file: !1, line: 359, baseType: !11, size: 64, align: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !600, file: !1, line: 360, baseType: !35, size: 64, align: 64, offset: 128)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !606, file: !1, line: 873, type: !50)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 872, column: 10)
!607 = distinct !DILexicalBlock(scope: !567, file: !1, line: 841, column: 9)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leading_chars_to_skip", scope: !606, file: !1, line: 874, type: !50)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !610, file: !1, line: 963, type: !11)
!610 = distinct !DILexicalBlock(scope: !567, file: !1, line: 963, column: 5)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !1, line: 963, type: !11)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 963, column: 5)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 963, column: 5)
!614 = !DISubprogram(name: "get_locale_info", scope: !1, file: !1, line: 666, type: !615, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.LocaleInfo*)* @get_locale_info, variables: !618)
!615 = !DISubroutineType(types: !616)
!616 = !{!50, !50, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!618 = !{!619, !620, !621, !652, !656, !660, !663, !665, !668, !672, !675, !677}
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !614, file: !1, line: 666, type: !50)
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locale_info", arg: 2, scope: !614, file: !1, line: 666, type: !617)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "locale_data", scope: !622, file: !1, line: 670, type: !624)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 669, column: 29)
!623 = distinct !DILexicalBlock(scope: !614, file: !1, line: 668, column: 19)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, align: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !626, line: 54, size: 768, align: 64, elements: !627)
!626 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !625, file: !626, line: 58, baseType: !58, size: 64, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !625, file: !626, line: 59, baseType: !58, size: 64, align: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !625, file: !626, line: 65, baseType: !58, size: 64, align: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !625, file: !626, line: 71, baseType: !58, size: 64, align: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !625, file: !626, line: 72, baseType: !58, size: 64, align: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !625, file: !626, line: 73, baseType: !58, size: 64, align: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !625, file: !626, line: 74, baseType: !58, size: 64, align: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !625, file: !626, line: 75, baseType: !58, size: 64, align: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !625, file: !626, line: 76, baseType: !58, size: 64, align: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !625, file: !626, line: 77, baseType: !58, size: 64, align: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !625, file: !626, line: 78, baseType: !37, size: 8, align: 8, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !625, file: !626, line: 79, baseType: !37, size: 8, align: 8, offset: 648)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !625, file: !626, line: 81, baseType: !37, size: 8, align: 8, offset: 656)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !625, file: !626, line: 83, baseType: !37, size: 8, align: 8, offset: 664)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !625, file: !626, line: 85, baseType: !37, size: 8, align: 8, offset: 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !625, file: !626, line: 87, baseType: !37, size: 8, align: 8, offset: 680)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !625, file: !626, line: 94, baseType: !37, size: 8, align: 8, offset: 688)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !625, file: !626, line: 95, baseType: !37, size: 8, align: 8, offset: 696)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !625, file: !626, line: 98, baseType: !37, size: 8, align: 8, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !625, file: !626, line: 100, baseType: !37, size: 8, align: 8, offset: 712)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !625, file: !626, line: 102, baseType: !37, size: 8, align: 8, offset: 720)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !625, file: !626, line: 104, baseType: !37, size: 8, align: 8, offset: 728)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !625, file: !626, line: 111, baseType: !37, size: 8, align: 8, offset: 736)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !625, file: !626, line: 112, baseType: !37, size: 8, align: 8, offset: 744)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !653, file: !1, line: 680, type: !11)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 680, column: 13)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 679, column: 49)
!655 = distinct !DILexicalBlock(scope: !622, file: !1, line: 679, column: 13)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !657, file: !1, line: 690, type: !11)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 690, column: 13)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 689, column: 73)
!659 = distinct !DILexicalBlock(scope: !623, file: !1, line: 689, column: 13)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !1, line: 690, type: !11)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 690, column: 13)
!662 = distinct !DILexicalBlock(scope: !657, file: !1, line: 690, column: 13)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !664, file: !1, line: 691, type: !11)
!664 = distinct !DILexicalBlock(scope: !658, file: !1, line: 691, column: 13)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !666, file: !1, line: 691, type: !11)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 691, column: 13)
!667 = distinct !DILexicalBlock(scope: !664, file: !1, line: 691, column: 13)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !669, file: !1, line: 702, type: !11)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 702, column: 13)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 701, column: 73)
!671 = distinct !DILexicalBlock(scope: !623, file: !1, line: 701, column: 13)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !1, line: 702, type: !11)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 702, column: 13)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 702, column: 13)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !676, file: !1, line: 703, type: !11)
!676 = distinct !DILexicalBlock(scope: !670, file: !1, line: 703, column: 13)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !1, line: 703, type: !11)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 703, column: 13)
!679 = distinct !DILexicalBlock(scope: !676, file: !1, line: 703, column: 13)
!680 = !DISubprogram(name: "calc_number_widths", scope: !1, file: !1, line: 425, type: !681, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.NumberFieldWidths*, i64, i32, i64, i64, i64, i32, %struct.LocaleInfo*, %struct.InternalFormatSpec*, i32*)* @calc_number_widths, variables: !686)
!681 = !DISubroutineType(types: !682)
!682 = !{!17, !683, !17, !350, !11, !17, !17, !17, !50, !684, !526, !396}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spec", arg: 1, scope: !680, file: !1, line: 425, type: !683)
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_prefix", arg: 2, scope: !680, file: !1, line: 425, type: !17)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sign_char", arg: 3, scope: !680, file: !1, line: 426, type: !350)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "number", arg: 4, scope: !680, file: !1, line: 426, type: !11)
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_start", arg: 5, scope: !680, file: !1, line: 426, type: !17)
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_end", arg: 6, scope: !680, file: !1, line: 427, type: !17)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_remainder", arg: 7, scope: !680, file: !1, line: 427, type: !17)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "has_decimal", arg: 8, scope: !680, file: !1, line: 428, type: !50)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locale", arg: 9, scope: !680, file: !1, line: 428, type: !684)
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 10, scope: !680, file: !1, line: 429, type: !526)
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxchar", arg: 11, scope: !680, file: !1, line: 429, type: !396)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_non_digit_non_padding", scope: !680, file: !1, line: 431, type: !17)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_padding", scope: !680, file: !1, line: 432, type: !17)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grouping_maxchar", scope: !701, file: !1, line: 499, type: !350)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 498, column: 10)
!702 = distinct !DILexicalBlock(scope: !680, file: !1, line: 493, column: 9)
!703 = !DISubprogram(name: "fill_number", scope: !1, file: !1, line: 553, type: !704, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyUnicodeWriter*, %struct.NumberFieldWidths*, %struct._object*, i64, %struct._object*, i64, i32, %struct.LocaleInfo*, i32)* @fill_number, variables: !708)
!704 = !DISubroutineType(types: !705)
!705 = !{!50, !405, !706, !11, !17, !17, !11, !17, !350, !617, !50}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !722, !725, !726, !731, !735, !738, !741}
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 1, scope: !703, file: !1, line: 553, type: !405)
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spec", arg: 2, scope: !703, file: !1, line: 553, type: !706)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "digits", arg: 3, scope: !703, file: !1, line: 554, type: !11)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d_start", arg: 4, scope: !703, file: !1, line: 554, type: !17)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d_end", arg: 5, scope: !703, file: !1, line: 554, type: !17)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prefix", arg: 6, scope: !703, file: !1, line: 555, type: !11)
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_start", arg: 7, scope: !703, file: !1, line: 555, type: !17)
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fill_char", arg: 8, scope: !703, file: !1, line: 556, type: !350)
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locale", arg: 9, scope: !703, file: !1, line: 557, type: !617)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toupper", arg: 10, scope: !703, file: !1, line: 557, type: !50)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d_pos", scope: !703, file: !1, line: 560, type: !17)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !703, file: !1, line: 561, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !703, file: !1, line: 562, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !703, file: !1, line: 563, type: !17)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !727, file: !1, line: 579, type: !17)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 578, column: 22)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 578, column: 13)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 574, column: 25)
!730 = distinct !DILexicalBlock(scope: !703, file: !1, line: 574, column: 9)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !732, file: !1, line: 581, type: !350)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 580, column: 50)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 580, column: 13)
!734 = distinct !DILexicalBlock(scope: !727, file: !1, line: 580, column: 13)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pdigits", scope: !736, file: !1, line: 598, type: !58)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 596, column: 30)
!737 = distinct !DILexicalBlock(scope: !703, file: !1, line: 596, column: 9)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !739, file: !1, line: 621, type: !17)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 620, column: 18)
!740 = distinct !DILexicalBlock(scope: !703, file: !1, line: 620, column: 9)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !742, file: !1, line: 623, type: !350)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 622, column: 54)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 622, column: 9)
!744 = distinct !DILexicalBlock(scope: !739, file: !1, line: 622, column: 9)
!745 = !DISubprogram(name: "free_locale_info", scope: !1, file: !1, line: 715, type: !746, isLocal: true, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, variables: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !617}
!748 = !{!749, !750, !752, !755, !757}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locale_info", arg: 1, scope: !745, file: !1, line: 715, type: !617)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !751, file: !1, line: 717, type: !11)
!751 = distinct !DILexicalBlock(scope: !745, file: !1, line: 717, column: 5)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !753, file: !1, line: 717, type: !11)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 717, column: 5)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 717, column: 5)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !756, file: !1, line: 718, type: !11)
!756 = distinct !DILexicalBlock(scope: !745, file: !1, line: 718, column: 5)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !758, file: !1, line: 718, type: !11)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 718, column: 5)
!759 = distinct !DILexicalBlock(scope: !756, file: !1, line: 718, column: 5)
!760 = !DISubprogram(name: "format_float_internal", scope: !1, file: !1, line: 974, type: !524, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.InternalFormatSpec*, %struct._PyUnicodeWriter*)* @format_float_internal, variables: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !787}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !760, file: !1, line: 974, type: !11)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !760, file: !1, line: 975, type: !526)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 3, scope: !760, file: !1, line: 976, type: !405)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !760, file: !1, line: 978, type: !58)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_digits", scope: !760, file: !1, line: 979, type: !17)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_remainder", scope: !760, file: !1, line: 980, type: !17)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_total", scope: !760, file: !1, line: 981, type: !17)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_decimal", scope: !760, file: !1, line: 982, type: !50)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !760, file: !1, line: 983, type: !771)
!771 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precision", scope: !760, file: !1, line: 984, type: !50)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "default_precision", scope: !760, file: !1, line: 984, type: !50)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !760, file: !1, line: 985, type: !350)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "add_pct", scope: !760, file: !1, line: 986, type: !50)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !760, file: !1, line: 987, type: !17)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "spec", scope: !760, file: !1, line: 988, type: !583)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !760, file: !1, line: 989, type: !50)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !760, file: !1, line: 990, type: !50)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxchar", scope: !760, file: !1, line: 991, type: !350)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign_char", scope: !760, file: !1, line: 992, type: !350)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "float_type", scope: !760, file: !1, line: 993, type: !50)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode_tmp", scope: !760, file: !1, line: 994, type: !11)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "locale", scope: !760, file: !1, line: 998, type: !599)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !786, file: !1, line: 1110, type: !11)
!786 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1110, column: 5)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !788, file: !1, line: 1110, type: !11)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 1110, column: 5)
!789 = distinct !DILexicalBlock(scope: !786, file: !1, line: 1110, column: 5)
!790 = !DISubprogram(name: "parse_number", scope: !1, file: !1, line: 401, type: !791, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i64, i64, i64*, i32*)* @parse_number, variables: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !11, !17, !17, !254, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !790, file: !1, line: 401, type: !11)
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 2, scope: !790, file: !1, line: 401, type: !17)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 3, scope: !790, file: !1, line: 401, type: !17)
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_remainder", arg: 4, scope: !790, file: !1, line: 402, type: !254)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "has_decimal", arg: 5, scope: !790, file: !1, line: 402, type: !793)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "remainder", scope: !790, file: !1, line: 404, type: !17)
!801 = !DISubprogram(name: "format_complex_internal", scope: !1, file: !1, line: 1120, type: !524, isLocal: true, isDefinition: true, scopeLine: 1123, flags: DIFlagPrototyped, isOptimized: true, variables: !802)
!802 = !{!803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !845, !848, !850}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 1, scope: !801, file: !1, line: 1120, type: !11)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !801, file: !1, line: 1121, type: !526)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 3, scope: !801, file: !1, line: 1122, type: !405)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re", scope: !801, file: !1, line: 1124, type: !771)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im", scope: !801, file: !1, line: 1125, type: !771)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_buf", scope: !801, file: !1, line: 1126, type: !58)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_buf", scope: !801, file: !1, line: 1127, type: !58)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_format", scope: !801, file: !1, line: 1129, type: !426)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_re_digits", scope: !801, file: !1, line: 1130, type: !17)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_im_digits", scope: !801, file: !1, line: 1131, type: !17)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_re_remainder", scope: !801, file: !1, line: 1132, type: !17)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_im_remainder", scope: !801, file: !1, line: 1133, type: !17)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_re_total", scope: !801, file: !1, line: 1134, type: !17)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_im_total", scope: !801, file: !1, line: 1135, type: !17)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_has_decimal", scope: !801, file: !1, line: 1136, type: !50)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_has_decimal", scope: !801, file: !1, line: 1137, type: !50)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "precision", scope: !801, file: !1, line: 1138, type: !50)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "default_precision", scope: !801, file: !1, line: 1138, type: !50)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !801, file: !1, line: 1139, type: !350)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i_re", scope: !801, file: !1, line: 1140, type: !17)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i_im", scope: !801, file: !1, line: 1141, type: !17)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_spec", scope: !801, file: !1, line: 1142, type: !583)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_spec", scope: !801, file: !1, line: 1143, type: !583)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !801, file: !1, line: 1144, type: !50)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !801, file: !1, line: 1145, type: !50)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxchar", scope: !801, file: !1, line: 1146, type: !350)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rkind", scope: !801, file: !1, line: 1147, type: !3)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rdata", scope: !801, file: !1, line: 1148, type: !96)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_sign_char", scope: !801, file: !1, line: 1149, type: !350)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_sign_char", scope: !801, file: !1, line: 1150, type: !350)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_float_type", scope: !801, file: !1, line: 1151, type: !50)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_float_type", scope: !801, file: !1, line: 1152, type: !50)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "add_parens", scope: !801, file: !1, line: 1153, type: !50)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skip_re", scope: !801, file: !1, line: 1154, type: !50)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lpad", scope: !801, file: !1, line: 1155, type: !17)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpad", scope: !801, file: !1, line: 1156, type: !17)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !801, file: !1, line: 1157, type: !17)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_unicode_tmp", scope: !801, file: !1, line: 1158, type: !11)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "im_unicode_tmp", scope: !801, file: !1, line: 1159, type: !11)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "locale", scope: !801, file: !1, line: 1163, type: !599)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !844, file: !1, line: 1350, type: !11)
!844 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1350, column: 5)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !846, file: !1, line: 1350, type: !11)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 1350, column: 5)
!847 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1350, column: 5)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !849, file: !1, line: 1351, type: !11)
!849 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1351, column: 5)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !851, file: !1, line: 1351, type: !11)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1351, column: 5)
!852 = distinct !DILexicalBlock(scope: !849, file: !1, line: 1351, column: 5)
!853 = !{!854}
!854 = !DIGlobalVariable(name: "no_grouping", scope: !0, file: !1, line: 659, type: !87, isLocal: true, isDefinition: true, variable: [1 x i8]* @no_grouping)
!855 = !{i32 2, !"Dwarf Version", i32 4}
!856 = !{i32 2, !"Debug Info Version", i32 3}
!857 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!858 = !DIExpression()
!859 = !DILocation(line: 1374, column: 51, scope: !402)
!860 = !DILocation(line: 1375, column: 43, scope: !402)
!861 = !DILocation(line: 1376, column: 43, scope: !402)
!862 = !DILocation(line: 1377, column: 44, scope: !402)
!863 = !DILocation(line: 1377, column: 62, scope: !402)
!864 = !DILocation(line: 1379, column: 5, scope: !402)
!865 = !DILocation(line: 1385, column: 15, scope: !866)
!866 = distinct !DILexicalBlock(scope: !402, file: !1, line: 1385, column: 9)
!867 = !DILocation(line: 1385, column: 9, scope: !402)
!868 = !DILocation(line: 1386, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 1386, column: 13)
!870 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1385, column: 23)
!871 = !{!872, !876, i64 8}
!872 = !{!"_object", !873, i64 0, !876, i64 8}
!873 = !{!"long", !874, i64 0}
!874 = !{!"omnipotent char", !875, i64 0}
!875 = !{!"Simple C/C++ TBAA"}
!876 = !{!"any pointer", !874, i64 0}
!877 = !DILocation(line: 1386, column: 13, scope: !870)
!878 = !DILocation(line: 1387, column: 20, scope: !869)
!879 = !DILocation(line: 1387, column: 13, scope: !869)
!880 = !DILocation(line: 1360, column: 22, scope: !474, inlinedAt: !881)
!881 = distinct !DILocation(line: 1389, column: 20, scope: !869)
!882 = !DILocation(line: 1360, column: 45, scope: !474, inlinedAt: !881)
!883 = !DILocation(line: 1365, column: 11, scope: !474, inlinedAt: !881)
!884 = !DILocation(line: 1362, column: 15, scope: !474, inlinedAt: !881)
!885 = !DILocation(line: 1366, column: 13, scope: !886, inlinedAt: !881)
!886 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1366, column: 9)
!887 = !DILocation(line: 1366, column: 9, scope: !474, inlinedAt: !881)
!888 = !DILocation(line: 1368, column: 11, scope: !474, inlinedAt: !881)
!889 = !DILocation(line: 1363, column: 9, scope: !474, inlinedAt: !881)
!890 = !DILocation(line: 1369, column: 5, scope: !891, inlinedAt: !881)
!891 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!892 = !DILocation(line: 1369, column: 5, scope: !893, inlinedAt: !881)
!893 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1369, column: 5)
!894 = !{!872, !873, i64 0}
!895 = !DILocation(line: 1369, column: 5, scope: !483, inlinedAt: !881)
!896 = !DILocation(line: 1369, column: 5, scope: !897, inlinedAt: !881)
!897 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 3)
!898 = !{!899, !876, i64 48}
!899 = !{!"_typeobject", !900, i64 0, !876, i64 24, !873, i64 32, !873, i64 40, !876, i64 48, !876, i64 56, !876, i64 64, !876, i64 72, !876, i64 80, !876, i64 88, !876, i64 96, !876, i64 104, !876, i64 112, !876, i64 120, !876, i64 128, !876, i64 136, !876, i64 144, !876, i64 152, !876, i64 160, !873, i64 168, !876, i64 176, !876, i64 184, !876, i64 192, !876, i64 200, !873, i64 208, !876, i64 216, !876, i64 224, !876, i64 232, !876, i64 240, !876, i64 248, !876, i64 256, !876, i64 264, !876, i64 272, !876, i64 280, !873, i64 288, !876, i64 296, !876, i64 304, !876, i64 312, !876, i64 320, !876, i64 328, !876, i64 336, !876, i64 344, !876, i64 352, !876, i64 360, !876, i64 368, !876, i64 376, !901, i64 384, !876, i64 392}
!900 = !{!"", !872, i64 0, !873, i64 16}
!901 = !{!"int", !874, i64 0}
!902 = !DILocation(line: 1389, column: 20, scope: !869)
!903 = !DILocation(line: 1379, column: 24, scope: !402)
!904 = !DILocation(line: 1393, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !402, file: !1, line: 1393, column: 9)
!906 = !DILocation(line: 1393, column: 9, scope: !402)
!907 = !DILocation(line: 1398, column: 20, scope: !402)
!908 = !{!909, !901, i64 40}
!909 = !{!"", !901, i64 0, !901, i64 4, !901, i64 8, !901, i64 12, !873, i64 16, !901, i64 24, !873, i64 32, !901, i64 40}
!910 = !DILocation(line: 1398, column: 5, scope: !402)
!911 = !DILocation(line: 726, column: 34, scope: !523, inlinedAt: !912)
!912 = distinct !DILocation(line: 1401, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !402, file: !1, line: 1398, column: 26)
!914 = !DILocation(line: 726, column: 67, scope: !523, inlinedAt: !912)
!915 = !DILocation(line: 727, column: 42, scope: !523, inlinedAt: !912)
!916 = !DILocation(line: 733, column: 9, scope: !523, inlinedAt: !912)
!917 = !DILocation(line: 737, column: 11, scope: !523, inlinedAt: !912)
!918 = !{!919, !873, i64 16}
!919 = !{!"", !872, i64 0, !873, i64 16, !873, i64 24, !920, i64 32, !876, i64 40}
!920 = !{!"", !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 0, !901, i64 1}
!921 = !DILocation(line: 732, column: 16, scope: !523, inlinedAt: !912)
!922 = !DILocation(line: 740, column: 17, scope: !923, inlinedAt: !912)
!923 = distinct !DILexicalBlock(scope: !523, file: !1, line: 740, column: 9)
!924 = !{!909, !901, i64 12}
!925 = !DILocation(line: 740, column: 22, scope: !923, inlinedAt: !912)
!926 = !DILocation(line: 740, column: 9, scope: !523, inlinedAt: !912)
!927 = !DILocation(line: 741, column: 25, scope: !928, inlinedAt: !912)
!928 = distinct !DILexicalBlock(scope: !923, file: !1, line: 740, column: 31)
!929 = !{!876, !876, i64 0}
!930 = !DILocation(line: 741, column: 9, scope: !928, inlinedAt: !912)
!931 = !DILocation(line: 743, column: 9, scope: !928, inlinedAt: !912)
!932 = !DILocation(line: 747, column: 17, scope: !933, inlinedAt: !912)
!933 = distinct !DILexicalBlock(scope: !523, file: !1, line: 747, column: 9)
!934 = !{!909, !901, i64 8}
!935 = !DILocation(line: 747, column: 9, scope: !933, inlinedAt: !912)
!936 = !DILocation(line: 747, column: 9, scope: !523, inlinedAt: !912)
!937 = !DILocation(line: 748, column: 25, scope: !938, inlinedAt: !912)
!938 = distinct !DILexicalBlock(scope: !933, file: !1, line: 747, column: 28)
!939 = !DILocation(line: 748, column: 9, scope: !938, inlinedAt: !912)
!940 = !DILocation(line: 751, column: 9, scope: !938, inlinedAt: !912)
!941 = !DILocation(line: 755, column: 17, scope: !942, inlinedAt: !912)
!942 = distinct !DILexicalBlock(scope: !523, file: !1, line: 755, column: 9)
!943 = !DILocation(line: 774, column: 46, scope: !523, inlinedAt: !912)
!944 = !{!909, !901, i64 4}
!945 = !DILocation(line: 755, column: 23, scope: !942, inlinedAt: !912)
!946 = !DILocation(line: 755, column: 9, scope: !523, inlinedAt: !912)
!947 = !DILocation(line: 756, column: 25, scope: !948, inlinedAt: !912)
!948 = distinct !DILexicalBlock(scope: !942, file: !1, line: 755, column: 31)
!949 = !DILocation(line: 756, column: 9, scope: !948, inlinedAt: !912)
!950 = !DILocation(line: 759, column: 9, scope: !948, inlinedAt: !912)
!951 = !DILocation(line: 762, column: 18, scope: !952, inlinedAt: !912)
!952 = distinct !DILexicalBlock(scope: !523, file: !1, line: 762, column: 9)
!953 = !DILocation(line: 774, column: 31, scope: !523, inlinedAt: !912)
!954 = !{!909, !873, i64 16}
!955 = !DILocation(line: 762, column: 24, scope: !952, inlinedAt: !912)
!956 = !DILocation(line: 762, column: 47, scope: !952, inlinedAt: !912)
!957 = !DILocation(line: 762, column: 30, scope: !952, inlinedAt: !912)
!958 = !DILocation(line: 770, column: 17, scope: !959, inlinedAt: !912)
!959 = distinct !DILexicalBlock(scope: !523, file: !1, line: 770, column: 9)
!960 = !{!909, !873, i64 32}
!961 = !DILocation(line: 763, column: 31, scope: !952, inlinedAt: !912)
!962 = !DILocation(line: 763, column: 58, scope: !952, inlinedAt: !912)
!963 = !DILocation(line: 763, column: 37, scope: !952, inlinedAt: !912)
!964 = !DILocation(line: 765, column: 16, scope: !965, inlinedAt: !912)
!965 = distinct !DILexicalBlock(scope: !952, file: !1, line: 763, column: 67)
!966 = !DILocation(line: 765, column: 9, scope: !965, inlinedAt: !912)
!967 = !DILocation(line: 770, column: 27, scope: !959, inlinedAt: !912)
!968 = !DILocation(line: 770, column: 39, scope: !959, inlinedAt: !912)
!969 = !DILocation(line: 770, column: 32, scope: !959, inlinedAt: !912)
!970 = !DILocation(line: 286, column: 25, scope: !541, inlinedAt: !971)
!971 = distinct !DILocation(line: 774, column: 5, scope: !523, inlinedAt: !912)
!972 = !DILocation(line: 286, column: 44, scope: !541, inlinedAt: !971)
!973 = !DILocation(line: 286, column: 59, scope: !541, inlinedAt: !971)
!974 = !DILocation(line: 290, column: 15, scope: !975, inlinedAt: !971)
!975 = distinct !DILexicalBlock(scope: !541, file: !1, line: 290, column: 9)
!976 = !DILocation(line: 291, column: 20, scope: !977, inlinedAt: !971)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 291, column: 13)
!978 = distinct !DILexicalBlock(scope: !975, file: !1, line: 290, column: 21)
!979 = !DILocation(line: 290, column: 9, scope: !541, inlinedAt: !971)
!980 = !DILocation(line: 288, column: 26, scope: !541, inlinedAt: !971)
!981 = !DILocation(line: 731, column: 16, scope: !523, inlinedAt: !912)
!982 = !DILocation(line: 303, column: 9, scope: !541, inlinedAt: !971)
!983 = !DILocation(line: 315, column: 28, scope: !541, inlinedAt: !971)
!984 = !DILocation(line: 304, column: 32, scope: !985, inlinedAt: !971)
!985 = distinct !DILexicalBlock(scope: !541, file: !1, line: 303, column: 9)
!986 = !DILocation(line: 287, column: 26, scope: !541, inlinedAt: !971)
!987 = !DILocation(line: 729, column: 16, scope: !523, inlinedAt: !912)
!988 = !DILocation(line: 304, column: 9, scope: !985, inlinedAt: !971)
!989 = !DILocation(line: 306, column: 33, scope: !990, inlinedAt: !971)
!990 = distinct !DILexicalBlock(scope: !985, file: !1, line: 305, column: 14)
!991 = !DILocation(line: 306, column: 43, scope: !990, inlinedAt: !971)
!992 = !DILocation(line: 306, column: 9, scope: !990, inlinedAt: !971)
!993 = !DILocation(line: 315, column: 39, scope: !541, inlinedAt: !971)
!994 = !DILocation(line: 315, column: 37, scope: !541, inlinedAt: !971)
!995 = !DILocation(line: 287, column: 50, scope: !541, inlinedAt: !971)
!996 = !DILocation(line: 730, column: 16, scope: !523, inlinedAt: !912)
!997 = !DILocation(line: 776, column: 23, scope: !523, inlinedAt: !912)
!998 = !{!999, !901, i64 20}
!999 = !{!"", !876, i64 0, !876, i64 8, !874, i64 16, !901, i64 20, !873, i64 24, !873, i64 32, !873, i64 40, !901, i64 48, !874, i64 52, !874, i64 53}
!1000 = !DILocation(line: 734, column: 13, scope: !523, inlinedAt: !912)
!1001 = !DILocation(line: 777, column: 19, scope: !1002, inlinedAt: !912)
!1002 = distinct !DILexicalBlock(scope: !523, file: !1, line: 777, column: 9)
!1003 = !DILocation(line: 778, column: 19, scope: !1002, inlinedAt: !912)
!1004 = !{!909, !901, i64 0}
!1005 = !DILocation(line: 778, column: 19, scope: !1006, inlinedAt: !912)
!1006 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!1007 = !DILocation(line: 778, column: 9, scope: !1002, inlinedAt: !912)
!1008 = !DILocation(line: 1401, column: 16, scope: !913)
!1009 = !DILocation(line: 779, column: 9, scope: !540, inlinedAt: !912)
!1010 = !DILocation(line: 779, column: 9, scope: !1011, inlinedAt: !912)
!1011 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 2)
!1012 = !DILocation(line: 779, column: 9, scope: !1013, inlinedAt: !912)
!1013 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 5)
!1014 = !DILocation(line: 779, column: 41, scope: !540, inlinedAt: !912)
!1015 = !DILocation(line: 779, column: 9, scope: !523, inlinedAt: !912)
!1016 = !DILocation(line: 780, column: 30, scope: !539, inlinedAt: !912)
!1017 = !DILocation(line: 780, column: 17, scope: !539, inlinedAt: !912)
!1018 = !DILocation(line: 781, column: 19, scope: !539, inlinedAt: !912)
!1019 = !DILocation(line: 785, column: 9, scope: !1020, inlinedAt: !912)
!1020 = distinct !DILexicalBlock(scope: !523, file: !1, line: 785, column: 9)
!1021 = !DILocation(line: 782, column: 5, scope: !539, inlinedAt: !912)
!1022 = !DILocation(line: 785, column: 9, scope: !1023, inlinedAt: !912)
!1023 = !DILexicalBlockFile(scope: !1020, file: !1, discriminator: 1)
!1024 = !{!999, !873, i64 24}
!1025 = !{!999, !873, i64 32}
!1026 = !DILocation(line: 785, column: 9, scope: !1027, inlinedAt: !912)
!1027 = !DILexicalBlockFile(scope: !1028, file: !1, discriminator: 4)
!1028 = !DILexicalBlockFile(scope: !1020, file: !1, discriminator: 2)
!1029 = !DILocation(line: 785, column: 9, scope: !1030, inlinedAt: !912)
!1030 = !DILexicalBlockFile(scope: !1020, file: !1, discriminator: 7)
!1031 = !DILocation(line: 785, column: 9, scope: !523, inlinedAt: !912)
!1032 = !DILocation(line: 789, column: 48, scope: !523, inlinedAt: !912)
!1033 = !DILocation(line: 329, column: 9, scope: !1034, inlinedAt: !1035)
!1034 = distinct !DILexicalBlock(scope: !551, file: !1, line: 329, column: 9)
!1035 = distinct !DILocation(line: 789, column: 14, scope: !523, inlinedAt: !912)
!1036 = !DILocation(line: 341, column: 13, scope: !551, inlinedAt: !1035)
!1037 = !DILocation(line: 329, column: 9, scope: !551, inlinedAt: !1035)
!1038 = !DILocation(line: 330, column: 23, scope: !1039, inlinedAt: !1035)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 329, column: 21)
!1040 = !DILocation(line: 326, column: 16, scope: !551, inlinedAt: !1035)
!1041 = !DILocation(line: 331, column: 37, scope: !1039, inlinedAt: !1035)
!1042 = !{!999, !876, i64 0}
!1043 = !DILocation(line: 331, column: 9, scope: !1039, inlinedAt: !1035)
!1044 = !DILocation(line: 332, column: 5, scope: !1039, inlinedAt: !1035)
!1045 = !DILocation(line: 335, column: 9, scope: !1046, inlinedAt: !1035)
!1046 = distinct !DILexicalBlock(scope: !551, file: !1, line: 335, column: 9)
!1047 = !DILocation(line: 335, column: 9, scope: !551, inlinedAt: !1035)
!1048 = !DILocation(line: 336, column: 23, scope: !1049, inlinedAt: !1035)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 335, column: 21)
!1050 = !DILocation(line: 336, column: 27, scope: !1049, inlinedAt: !1035)
!1051 = !DILocation(line: 336, column: 36, scope: !1049, inlinedAt: !1035)
!1052 = !DILocation(line: 337, column: 37, scope: !1049, inlinedAt: !1035)
!1053 = !DILocation(line: 337, column: 9, scope: !1049, inlinedAt: !1035)
!1054 = !DILocation(line: 338, column: 5, scope: !1049, inlinedAt: !1035)
!1055 = !DILocation(line: 341, column: 17, scope: !551, inlinedAt: !1035)
!1056 = !DILocation(line: 794, column: 9, scope: !1057, inlinedAt: !912)
!1057 = distinct !DILexicalBlock(scope: !523, file: !1, line: 794, column: 9)
!1058 = !DILocation(line: 794, column: 9, scope: !523, inlinedAt: !912)
!1059 = !DILocation(line: 795, column: 47, scope: !1060, inlinedAt: !912)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 794, column: 14)
!1061 = !DILocation(line: 795, column: 9, scope: !1060, inlinedAt: !912)
!1062 = !DILocation(line: 798, column: 17, scope: !523, inlinedAt: !912)
!1063 = !DILocation(line: 797, column: 5, scope: !1060, inlinedAt: !912)
!1064 = !DILocation(line: 798, column: 25, scope: !523, inlinedAt: !912)
!1065 = !DILocation(line: 799, column: 5, scope: !523, inlinedAt: !912)
!1066 = !DILocation(line: 1404, column: 53, scope: !913)
!1067 = !DILocation(line: 1404, column: 62, scope: !913)
!1068 = !{!899, !876, i64 24}
!1069 = !DILocation(line: 12, column: 35, scope: !561, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 1404, column: 9, scope: !913)
!1071 = !DILocation(line: 13, column: 39, scope: !561, inlinedAt: !1070)
!1072 = !DILocation(line: 16, column: 32, scope: !1073, inlinedAt: !1070)
!1073 = distinct !DILexicalBlock(scope: !561, file: !1, line: 16, column: 9)
!1074 = !DILocation(line: 17, column: 22, scope: !1073, inlinedAt: !1070)
!1075 = !DILocation(line: 20, column: 22, scope: !1073, inlinedAt: !1070)
!1076 = !DILocation(line: 17, column: 9, scope: !1073, inlinedAt: !1070)
!1077 = !DILocation(line: 23, column: 9, scope: !1073, inlinedAt: !1070)
!1078 = !DILocation(line: 1404, column: 9, scope: !913)
!1079 = !DILocation(line: 1407, column: 1, scope: !402)
!1080 = !DILocation(line: 146, column: 45, scope: !484)
!1081 = !DILocation(line: 147, column: 46, scope: !484)
!1082 = !DILocation(line: 147, column: 64, scope: !484)
!1083 = !DILocation(line: 148, column: 55, scope: !484)
!1084 = !DILocation(line: 149, column: 40, scope: !484)
!1085 = !DILocation(line: 150, column: 40, scope: !484)
!1086 = !DILocation(line: 152, column: 5, scope: !484)
!1087 = !DILocation(line: 152, column: 16, scope: !484)
!1088 = !{!873, !873, i64 0}
!1089 = !DILocation(line: 158, column: 9, scope: !484)
!1090 = !DILocation(line: 159, column: 9, scope: !484)
!1091 = !DILocation(line: 161, column: 13, scope: !484)
!1092 = !DILocation(line: 161, column: 23, scope: !484)
!1093 = !DILocation(line: 162, column: 21, scope: !484)
!1094 = !DILocation(line: 162, column: 13, scope: !484)
!1095 = !DILocation(line: 162, column: 19, scope: !484)
!1096 = !DILocation(line: 163, column: 13, scope: !484)
!1097 = !DILocation(line: 163, column: 23, scope: !484)
!1098 = !DILocation(line: 164, column: 13, scope: !484)
!1099 = !DILocation(line: 164, column: 18, scope: !484)
!1100 = !DILocation(line: 165, column: 13, scope: !484)
!1101 = !DILocation(line: 165, column: 19, scope: !484)
!1102 = !DILocation(line: 166, column: 13, scope: !484)
!1103 = !DILocation(line: 166, column: 34, scope: !484)
!1104 = !{!909, !901, i64 24}
!1105 = !DILocation(line: 167, column: 13, scope: !484)
!1106 = !DILocation(line: 167, column: 23, scope: !484)
!1107 = !DILocation(line: 168, column: 20, scope: !484)
!1108 = !DILocation(line: 168, column: 13, scope: !484)
!1109 = !DILocation(line: 168, column: 18, scope: !484)
!1110 = !DILocation(line: 172, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !484, file: !1, line: 172, column: 9)
!1112 = !DILocation(line: 172, column: 17, scope: !1111)
!1113 = !DILocation(line: 172, column: 22, scope: !1111)
!1114 = !DILocation(line: 172, column: 44, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 1)
!1116 = !DILocation(line: 173, column: 25, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 172, column: 63)
!1118 = !DILocation(line: 172, column: 44, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 2)
!1120 = !DILocation(line: 172, column: 44, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 4)
!1122 = !DILocation(line: 172, column: 44, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 6)
!1124 = !DILocation(line: 172, column: 44, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 7)
!1126 = !DILocation(line: 172, column: 44, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 5)
!1128 = !DILocation(line: 172, column: 44, scope: !1111)
!1129 = !DILocation(line: 172, column: 44, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 11)
!1131 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 10)
!1132 = !{!874, !874, i64 0}
!1133 = !DILocation(line: 172, column: 44, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 3)
!1135 = !DILocation(line: 172, column: 44, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 13)
!1137 = !DILocation(line: 172, column: 44, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 15)
!1139 = !DILocation(line: 172, column: 44, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 17)
!1141 = !DILocation(line: 172, column: 44, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 18)
!1143 = !DILocation(line: 172, column: 44, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 16)
!1145 = !DILocation(line: 172, column: 44, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !1, discriminator: 22)
!1147 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 21)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"short", !874, i64 0}
!1150 = !DILocation(line: 172, column: 44, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 14)
!1152 = !DILocation(line: 172, column: 44, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 24)
!1154 = !DILocation(line: 172, column: 44, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 26)
!1156 = !DILocation(line: 172, column: 44, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 27)
!1158 = !DILocation(line: 172, column: 44, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 25)
!1160 = !DILocation(line: 172, column: 44, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 31)
!1162 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 30)
!1163 = !{!901, !901, i64 0}
!1164 = !DILocation(line: 86, column: 28, scope: !499, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 172, column: 25, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !1, discriminator: 33)
!1167 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 12)
!1168 = !DILocation(line: 88, column: 5, scope: !499, inlinedAt: !1165)
!1169 = !DILocation(line: 173, column: 25, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 1)
!1171 = !DILocation(line: 173, column: 25, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 3)
!1173 = !DILocation(line: 173, column: 25, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 5)
!1175 = !DILocation(line: 173, column: 25, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 6)
!1177 = !DILocation(line: 173, column: 25, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 4)
!1179 = !DILocation(line: 173, column: 25, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !1, discriminator: 10)
!1181 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 9)
!1182 = !DILocation(line: 173, column: 25, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 2)
!1184 = !DILocation(line: 173, column: 25, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 12)
!1186 = !DILocation(line: 173, column: 25, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 14)
!1188 = !DILocation(line: 173, column: 25, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 16)
!1190 = !DILocation(line: 173, column: 25, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 17)
!1192 = !DILocation(line: 173, column: 25, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 15)
!1194 = !DILocation(line: 173, column: 25, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 21)
!1196 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 20)
!1197 = !DILocation(line: 173, column: 25, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 13)
!1199 = !DILocation(line: 173, column: 25, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 23)
!1201 = !DILocation(line: 173, column: 25, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 25)
!1203 = !DILocation(line: 173, column: 25, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 26)
!1205 = !DILocation(line: 173, column: 25, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 24)
!1207 = !DILocation(line: 173, column: 25, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1209, file: !1, discriminator: 30)
!1209 = !DILexicalBlockFile(scope: !1117, file: !1, discriminator: 29)
!1210 = !DILocation(line: 173, column: 23, scope: !1117)
!1211 = !DILocation(line: 174, column: 29, scope: !1117)
!1212 = !DILocation(line: 174, column: 29, scope: !1170)
!1213 = !DILocation(line: 174, column: 29, scope: !1172)
!1214 = !DILocation(line: 174, column: 29, scope: !1174)
!1215 = !DILocation(line: 174, column: 29, scope: !1176)
!1216 = !DILocation(line: 174, column: 29, scope: !1178)
!1217 = !DILocation(line: 174, column: 29, scope: !1180)
!1218 = !DILocation(line: 174, column: 29, scope: !1183)
!1219 = !DILocation(line: 174, column: 29, scope: !1185)
!1220 = !DILocation(line: 174, column: 29, scope: !1187)
!1221 = !DILocation(line: 174, column: 29, scope: !1189)
!1222 = !DILocation(line: 174, column: 29, scope: !1191)
!1223 = !DILocation(line: 174, column: 29, scope: !1193)
!1224 = !DILocation(line: 174, column: 29, scope: !1195)
!1225 = !DILocation(line: 174, column: 29, scope: !1198)
!1226 = !DILocation(line: 174, column: 29, scope: !1200)
!1227 = !DILocation(line: 174, column: 29, scope: !1202)
!1228 = !DILocation(line: 174, column: 29, scope: !1204)
!1229 = !DILocation(line: 174, column: 29, scope: !1206)
!1230 = !DILocation(line: 174, column: 29, scope: !1208)
!1231 = !DILocation(line: 174, column: 27, scope: !1117)
!1232 = !DILocation(line: 177, column: 13, scope: !1117)
!1233 = !DILocation(line: 178, column: 5, scope: !1117)
!1234 = !DILocation(line: 179, column: 22, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 179, column: 14)
!1236 = !DILocation(line: 179, column: 27, scope: !1235)
!1237 = !DILocation(line: 179, column: 49, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 1)
!1239 = !DILocation(line: 180, column: 25, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 179, column: 66)
!1241 = !DILocation(line: 179, column: 49, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 2)
!1243 = !DILocation(line: 179, column: 49, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 4)
!1245 = !DILocation(line: 179, column: 49, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 6)
!1247 = !DILocation(line: 179, column: 49, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 7)
!1249 = !DILocation(line: 179, column: 49, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 5)
!1251 = !DILocation(line: 179, column: 49, scope: !1235)
!1252 = !DILocation(line: 179, column: 49, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1254, file: !1, discriminator: 11)
!1254 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 10)
!1255 = !DILocation(line: 179, column: 49, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 3)
!1257 = !DILocation(line: 179, column: 49, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 13)
!1259 = !DILocation(line: 179, column: 49, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 15)
!1261 = !DILocation(line: 179, column: 49, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 17)
!1263 = !DILocation(line: 179, column: 49, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 18)
!1265 = !DILocation(line: 179, column: 49, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 16)
!1267 = !DILocation(line: 179, column: 49, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !1, discriminator: 22)
!1269 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 21)
!1270 = !DILocation(line: 179, column: 49, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 14)
!1272 = !DILocation(line: 179, column: 49, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 24)
!1274 = !DILocation(line: 179, column: 49, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 26)
!1276 = !DILocation(line: 179, column: 49, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 27)
!1278 = !DILocation(line: 179, column: 49, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 25)
!1280 = !DILocation(line: 179, column: 49, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !1, discriminator: 31)
!1282 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 30)
!1283 = !DILocation(line: 86, column: 28, scope: !499, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 179, column: 30, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !1, discriminator: 33)
!1286 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 12)
!1287 = !DILocation(line: 88, column: 5, scope: !499, inlinedAt: !1284)
!1288 = !DILocation(line: 180, column: 25, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 1)
!1290 = !DILocation(line: 180, column: 25, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 3)
!1292 = !DILocation(line: 180, column: 25, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 5)
!1294 = !DILocation(line: 180, column: 25, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 6)
!1296 = !DILocation(line: 180, column: 25, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 4)
!1298 = !DILocation(line: 180, column: 25, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !1, discriminator: 10)
!1300 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 9)
!1301 = !DILocation(line: 180, column: 25, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 2)
!1303 = !DILocation(line: 180, column: 25, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 12)
!1305 = !DILocation(line: 180, column: 25, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 14)
!1307 = !DILocation(line: 180, column: 25, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 16)
!1309 = !DILocation(line: 180, column: 25, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 17)
!1311 = !DILocation(line: 180, column: 25, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 15)
!1313 = !DILocation(line: 180, column: 25, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !1, discriminator: 21)
!1315 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 20)
!1316 = !DILocation(line: 180, column: 25, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 13)
!1318 = !DILocation(line: 180, column: 25, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 23)
!1320 = !DILocation(line: 180, column: 25, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 25)
!1322 = !DILocation(line: 180, column: 25, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 26)
!1324 = !DILocation(line: 180, column: 25, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 24)
!1326 = !DILocation(line: 180, column: 25, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 30)
!1328 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 29)
!1329 = !DILocation(line: 180, column: 23, scope: !1240)
!1330 = !DILocation(line: 182, column: 9, scope: !1240)
!1331 = !DILocation(line: 183, column: 5, scope: !1240)
!1332 = !DILocation(line: 188, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 186, column: 58)
!1334 = distinct !DILexicalBlock(scope: !484, file: !1, line: 186, column: 9)
!1335 = !DILocation(line: 186, column: 12, scope: !1334)
!1336 = !DILocation(line: 186, column: 17, scope: !1334)
!1337 = !DILocation(line: 186, column: 22, scope: !1334)
!1338 = !DILocation(line: 186, column: 41, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 1)
!1340 = !DILocation(line: 187, column: 24, scope: !1333)
!1341 = !DILocation(line: 186, column: 41, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 2)
!1343 = !DILocation(line: 186, column: 41, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 4)
!1345 = !DILocation(line: 186, column: 41, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 6)
!1347 = !DILocation(line: 186, column: 41, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 7)
!1349 = !DILocation(line: 186, column: 41, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 5)
!1351 = !DILocation(line: 186, column: 41, scope: !1334)
!1352 = !DILocation(line: 186, column: 41, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 11)
!1354 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 10)
!1355 = !DILocation(line: 186, column: 41, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 3)
!1357 = !DILocation(line: 186, column: 41, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 13)
!1359 = !DILocation(line: 186, column: 41, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 15)
!1361 = !DILocation(line: 186, column: 41, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 17)
!1363 = !DILocation(line: 186, column: 41, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 18)
!1365 = !DILocation(line: 186, column: 41, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 16)
!1367 = !DILocation(line: 186, column: 41, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1369, file: !1, discriminator: 22)
!1369 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 21)
!1370 = !DILocation(line: 186, column: 41, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 14)
!1372 = !DILocation(line: 186, column: 41, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 24)
!1374 = !DILocation(line: 186, column: 41, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 26)
!1376 = !DILocation(line: 186, column: 41, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 27)
!1378 = !DILocation(line: 186, column: 41, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 25)
!1380 = !DILocation(line: 186, column: 41, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1382, file: !1, discriminator: 31)
!1382 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 30)
!1383 = !DILocation(line: 98, column: 25, scope: !504, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 186, column: 25, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !1, discriminator: 33)
!1386 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 12)
!1387 = !DILocation(line: 100, column: 5, scope: !504, inlinedAt: !1384)
!1388 = !DILocation(line: 187, column: 24, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 1)
!1390 = !DILocation(line: 187, column: 24, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 3)
!1392 = !DILocation(line: 187, column: 24, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 5)
!1394 = !DILocation(line: 187, column: 24, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 6)
!1396 = !DILocation(line: 187, column: 24, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 4)
!1398 = !DILocation(line: 187, column: 24, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 10)
!1400 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 9)
!1401 = !DILocation(line: 187, column: 24, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 2)
!1403 = !DILocation(line: 187, column: 24, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 12)
!1405 = !DILocation(line: 187, column: 24, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 14)
!1407 = !DILocation(line: 187, column: 24, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 16)
!1409 = !DILocation(line: 187, column: 24, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 17)
!1411 = !DILocation(line: 187, column: 24, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 15)
!1413 = !DILocation(line: 187, column: 24, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !1, discriminator: 21)
!1415 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 20)
!1416 = !DILocation(line: 187, column: 24, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 13)
!1418 = !DILocation(line: 187, column: 24, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 23)
!1420 = !DILocation(line: 187, column: 24, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 25)
!1422 = !DILocation(line: 187, column: 24, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 26)
!1424 = !DILocation(line: 187, column: 24, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 24)
!1426 = !DILocation(line: 187, column: 24, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 30)
!1428 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 29)
!1429 = !DILocation(line: 187, column: 22, scope: !1333)
!1430 = !DILocation(line: 189, column: 5, scope: !1333)
!1431 = !DILocation(line: 195, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 193, column: 48)
!1433 = distinct !DILexicalBlock(scope: !484, file: !1, line: 193, column: 9)
!1434 = !DILocation(line: 193, column: 12, scope: !1433)
!1435 = !DILocation(line: 193, column: 17, scope: !1433)
!1436 = !DILocation(line: 193, column: 22, scope: !1433)
!1437 = !DILocation(line: 193, column: 25, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 1)
!1439 = !DILocation(line: 193, column: 25, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 2)
!1441 = !DILocation(line: 193, column: 25, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 4)
!1443 = !DILocation(line: 193, column: 25, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 6)
!1445 = !DILocation(line: 193, column: 25, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 7)
!1447 = !DILocation(line: 193, column: 25, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 5)
!1449 = !DILocation(line: 193, column: 25, scope: !1433)
!1450 = !DILocation(line: 193, column: 25, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1452, file: !1, discriminator: 11)
!1452 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 10)
!1453 = !DILocation(line: 193, column: 25, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 3)
!1455 = !DILocation(line: 193, column: 25, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 13)
!1457 = !DILocation(line: 193, column: 25, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 15)
!1459 = !DILocation(line: 193, column: 25, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 17)
!1461 = !DILocation(line: 193, column: 25, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 18)
!1463 = !DILocation(line: 193, column: 25, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 16)
!1465 = !DILocation(line: 193, column: 25, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !1, discriminator: 22)
!1467 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 21)
!1468 = !DILocation(line: 193, column: 25, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 14)
!1470 = !DILocation(line: 193, column: 25, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 24)
!1472 = !DILocation(line: 193, column: 25, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 26)
!1474 = !DILocation(line: 193, column: 25, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 27)
!1476 = !DILocation(line: 193, column: 25, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 25)
!1478 = !DILocation(line: 193, column: 25, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !1, discriminator: 31)
!1480 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 30)
!1481 = !DILocation(line: 193, column: 40, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !1, discriminator: 33)
!1483 = !DILexicalBlockFile(scope: !1433, file: !1, discriminator: 12)
!1484 = !DILocation(line: 193, column: 9, scope: !484)
!1485 = !DILocation(line: 194, column: 27, scope: !1432)
!1486 = !DILocation(line: 196, column: 5, scope: !1432)
!1487 = !DILocation(line: 204, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 199, column: 72)
!1489 = distinct !DILexicalBlock(scope: !484, file: !1, line: 199, column: 9)
!1490 = !DILocation(line: 199, column: 10, scope: !1489)
!1491 = !DILocation(line: 199, column: 41, scope: !1489)
!1492 = !DILocation(line: 199, column: 30, scope: !1489)
!1493 = !DILocation(line: 199, column: 49, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 2)
!1495 = !DILocation(line: 199, column: 49, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 3)
!1497 = !DILocation(line: 199, column: 49, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 5)
!1499 = !DILocation(line: 199, column: 49, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 7)
!1501 = !DILocation(line: 199, column: 49, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 8)
!1503 = !DILocation(line: 199, column: 49, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 6)
!1505 = !DILocation(line: 199, column: 49, scope: !1489)
!1506 = !DILocation(line: 199, column: 49, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !1, discriminator: 12)
!1508 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 11)
!1509 = !DILocation(line: 199, column: 49, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 4)
!1511 = !DILocation(line: 199, column: 49, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 14)
!1513 = !DILocation(line: 199, column: 49, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 16)
!1515 = !DILocation(line: 199, column: 49, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 18)
!1517 = !DILocation(line: 199, column: 49, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 19)
!1519 = !DILocation(line: 199, column: 49, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 17)
!1521 = !DILocation(line: 199, column: 49, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !1, discriminator: 23)
!1523 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 22)
!1524 = !DILocation(line: 199, column: 49, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 15)
!1526 = !DILocation(line: 199, column: 49, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 25)
!1528 = !DILocation(line: 199, column: 49, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 27)
!1530 = !DILocation(line: 199, column: 49, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 28)
!1532 = !DILocation(line: 199, column: 49, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 26)
!1534 = !DILocation(line: 199, column: 49, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 32)
!1536 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 31)
!1537 = !DILocation(line: 199, column: 64, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1539, file: !1, discriminator: 34)
!1539 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 13)
!1540 = !DILocation(line: 199, column: 9, scope: !484)
!1541 = !DILocation(line: 200, column: 27, scope: !1488)
!1542 = !DILocation(line: 201, column: 14, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 201, column: 13)
!1544 = !DILocation(line: 201, column: 13, scope: !1488)
!1545 = !DILocation(line: 202, column: 27, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 201, column: 31)
!1547 = !DILocation(line: 203, column: 9, scope: !1546)
!1548 = !DILocation(line: 205, column: 5, scope: !1488)
!1549 = !DILocation(line: 207, column: 16, scope: !484)
!1550 = !DILocation(line: 208, column: 9, scope: !484)
!1551 = !DILocation(line: 217, column: 23, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !484, file: !1, line: 216, column: 9)
!1553 = !DILocation(line: 217, column: 9, scope: !1552)
!1554 = !DILocation(line: 222, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 220, column: 43)
!1556 = distinct !DILexicalBlock(scope: !484, file: !1, line: 220, column: 9)
!1557 = !DILocation(line: 220, column: 12, scope: !1556)
!1558 = !DILocation(line: 220, column: 17, scope: !1556)
!1559 = !DILocation(line: 220, column: 20, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 1)
!1561 = !DILocation(line: 220, column: 20, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 2)
!1563 = !DILocation(line: 220, column: 20, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 4)
!1565 = !DILocation(line: 220, column: 20, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 6)
!1567 = !DILocation(line: 220, column: 20, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 7)
!1569 = !DILocation(line: 220, column: 20, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 5)
!1571 = !DILocation(line: 220, column: 20, scope: !1556)
!1572 = !DILocation(line: 220, column: 20, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 11)
!1574 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 10)
!1575 = !DILocation(line: 220, column: 20, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 3)
!1577 = !DILocation(line: 220, column: 20, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 13)
!1579 = !DILocation(line: 220, column: 20, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 15)
!1581 = !DILocation(line: 220, column: 20, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 17)
!1583 = !DILocation(line: 220, column: 20, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 18)
!1585 = !DILocation(line: 220, column: 20, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 16)
!1587 = !DILocation(line: 220, column: 20, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !1, discriminator: 22)
!1589 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 21)
!1590 = !DILocation(line: 220, column: 20, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 14)
!1592 = !DILocation(line: 220, column: 20, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 24)
!1594 = !DILocation(line: 220, column: 20, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 26)
!1596 = !DILocation(line: 220, column: 20, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 27)
!1598 = !DILocation(line: 220, column: 20, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 25)
!1600 = !DILocation(line: 220, column: 20, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1602, file: !1, discriminator: 31)
!1602 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 30)
!1603 = !DILocation(line: 220, column: 35, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1605, file: !1, discriminator: 33)
!1605 = !DILexicalBlockFile(scope: !1556, file: !1, discriminator: 12)
!1606 = !DILocation(line: 220, column: 9, scope: !484)
!1607 = !DILocation(line: 221, column: 38, scope: !1555)
!1608 = !DILocation(line: 223, column: 5, scope: !1555)
!1609 = !DILocation(line: 227, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !1, line: 226, column: 43)
!1611 = distinct !DILexicalBlock(scope: !484, file: !1, line: 226, column: 9)
!1612 = !DILocation(line: 226, column: 12, scope: !1611)
!1613 = !DILocation(line: 226, column: 17, scope: !1611)
!1614 = !DILocation(line: 226, column: 20, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 1)
!1616 = !DILocation(line: 226, column: 20, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 2)
!1618 = !DILocation(line: 226, column: 20, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 4)
!1620 = !DILocation(line: 226, column: 20, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 6)
!1622 = !DILocation(line: 226, column: 20, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 7)
!1624 = !DILocation(line: 226, column: 20, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 5)
!1626 = !DILocation(line: 226, column: 20, scope: !1611)
!1627 = !DILocation(line: 226, column: 20, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1629, file: !1, discriminator: 11)
!1629 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 10)
!1630 = !DILocation(line: 226, column: 20, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 3)
!1632 = !DILocation(line: 226, column: 20, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 13)
!1634 = !DILocation(line: 226, column: 20, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 15)
!1636 = !DILocation(line: 226, column: 20, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 17)
!1638 = !DILocation(line: 226, column: 20, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 18)
!1640 = !DILocation(line: 226, column: 20, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 16)
!1642 = !DILocation(line: 226, column: 20, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !1, discriminator: 22)
!1644 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 21)
!1645 = !DILocation(line: 226, column: 20, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 14)
!1647 = !DILocation(line: 226, column: 20, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 24)
!1649 = !DILocation(line: 226, column: 20, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 26)
!1651 = !DILocation(line: 226, column: 20, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 27)
!1653 = !DILocation(line: 226, column: 20, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 25)
!1655 = !DILocation(line: 226, column: 20, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1657, file: !1, discriminator: 31)
!1657 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 30)
!1658 = !DILocation(line: 226, column: 35, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !1, discriminator: 33)
!1660 = !DILexicalBlockFile(scope: !1611, file: !1, discriminator: 12)
!1661 = !DILocation(line: 226, column: 9, scope: !484)
!1662 = !DILocation(line: 229, column: 20, scope: !1610)
!1663 = !DILocation(line: 230, column: 13, scope: !1610)
!1664 = !DILocation(line: 245, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !484, file: !1, line: 245, column: 9)
!1666 = !DILocation(line: 236, column: 26, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 235, column: 28)
!1668 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 235, column: 13)
!1669 = !DILocation(line: 236, column: 13, scope: !1667)
!1670 = !DILocation(line: 238, column: 13, scope: !1667)
!1671 = !DILocation(line: 253, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 251, column: 23)
!1673 = distinct !DILexicalBlock(scope: !484, file: !1, line: 251, column: 9)
!1674 = !DILocation(line: 245, column: 12, scope: !1665)
!1675 = !DILocation(line: 245, column: 17, scope: !1665)
!1676 = !DILocation(line: 245, column: 9, scope: !484)
!1677 = !DILocation(line: 247, column: 22, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 245, column: 22)
!1679 = !DILocation(line: 247, column: 9, scope: !1678)
!1680 = !DILocation(line: 248, column: 9, scope: !1678)
!1681 = !DILocation(line: 251, column: 17, scope: !1673)
!1682 = !DILocation(line: 251, column: 9, scope: !484)
!1683 = !DILocation(line: 252, column: 24, scope: !1672)
!1684 = !DILocation(line: 252, column: 24, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 1)
!1686 = !DILocation(line: 252, column: 24, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 3)
!1688 = !DILocation(line: 252, column: 24, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 5)
!1690 = !DILocation(line: 252, column: 24, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 6)
!1692 = !DILocation(line: 252, column: 24, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 4)
!1694 = !DILocation(line: 252, column: 24, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !1, discriminator: 10)
!1696 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 9)
!1697 = !DILocation(line: 252, column: 24, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 2)
!1699 = !DILocation(line: 252, column: 24, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 12)
!1701 = !DILocation(line: 252, column: 24, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 14)
!1703 = !DILocation(line: 252, column: 24, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 16)
!1705 = !DILocation(line: 252, column: 24, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 17)
!1707 = !DILocation(line: 252, column: 24, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 15)
!1709 = !DILocation(line: 252, column: 24, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !1, discriminator: 21)
!1711 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 20)
!1712 = !DILocation(line: 252, column: 24, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 13)
!1714 = !DILocation(line: 252, column: 24, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 23)
!1716 = !DILocation(line: 252, column: 24, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 25)
!1718 = !DILocation(line: 252, column: 24, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 26)
!1720 = !DILocation(line: 252, column: 24, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 24)
!1722 = !DILocation(line: 252, column: 24, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !1, discriminator: 30)
!1724 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 29)
!1725 = !DILocation(line: 252, column: 22, scope: !1672)
!1726 = !DILocation(line: 254, column: 5, scope: !1672)
!1727 = !DILocation(line: 260, column: 17, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !484, file: !1, line: 260, column: 9)
!1729 = !DILocation(line: 260, column: 9, scope: !1728)
!1730 = !DILocation(line: 260, column: 9, scope: !484)
!1731 = !DILocation(line: 261, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 260, column: 39)
!1733 = !DILocation(line: 261, column: 9, scope: !1732)
!1734 = !DILocation(line: 31, column: 28, scope: !518, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 274, column: 13, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 261, column: 31)
!1737 = !DILocation(line: 33, column: 32, scope: !1738, inlinedAt: !1735)
!1738 = distinct !DILexicalBlock(scope: !518, file: !1, line: 33, column: 9)
!1739 = !DILocation(line: 34, column: 22, scope: !1738, inlinedAt: !1735)
!1740 = !DILocation(line: 36, column: 22, scope: !1738, inlinedAt: !1735)
!1741 = !DILocation(line: 34, column: 9, scope: !1738, inlinedAt: !1735)
!1742 = !DILocation(line: 38, column: 9, scope: !1738, inlinedAt: !1735)
!1743 = !DILocation(line: 274, column: 13, scope: !1736)
!1744 = !DILocation(line: 282, column: 1, scope: !484)
!1745 = !DILocation(line: 1410, column: 48, scope: !437)
!1746 = !DILocation(line: 1411, column: 40, scope: !437)
!1747 = !DILocation(line: 1412, column: 40, scope: !437)
!1748 = !DILocation(line: 1413, column: 41, scope: !437)
!1749 = !DILocation(line: 1413, column: 59, scope: !437)
!1750 = !DILocation(line: 1415, column: 15, scope: !437)
!1751 = !DILocation(line: 1415, column: 28, scope: !437)
!1752 = !DILocation(line: 1416, column: 5, scope: !437)
!1753 = !DILocation(line: 1417, column: 9, scope: !437)
!1754 = !DILocation(line: 1421, column: 15, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1421, column: 9)
!1756 = !DILocation(line: 1421, column: 9, scope: !437)
!1757 = !DILocation(line: 1422, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 1422, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 1421, column: 23)
!1760 = !DILocation(line: 1422, column: 13, scope: !1759)
!1761 = !DILocation(line: 1423, column: 20, scope: !1758)
!1762 = !DILocation(line: 1423, column: 13, scope: !1758)
!1763 = !DILocation(line: 1360, column: 22, scope: !474, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 1425, column: 20, scope: !1758)
!1765 = !DILocation(line: 1360, column: 45, scope: !474, inlinedAt: !1764)
!1766 = !DILocation(line: 1365, column: 11, scope: !474, inlinedAt: !1764)
!1767 = !DILocation(line: 1362, column: 15, scope: !474, inlinedAt: !1764)
!1768 = !DILocation(line: 1366, column: 13, scope: !886, inlinedAt: !1764)
!1769 = !DILocation(line: 1366, column: 9, scope: !474, inlinedAt: !1764)
!1770 = !DILocation(line: 1368, column: 11, scope: !474, inlinedAt: !1764)
!1771 = !DILocation(line: 1363, column: 9, scope: !474, inlinedAt: !1764)
!1772 = !DILocation(line: 1369, column: 5, scope: !891, inlinedAt: !1764)
!1773 = !DILocation(line: 1369, column: 5, scope: !893, inlinedAt: !1764)
!1774 = !DILocation(line: 1369, column: 5, scope: !483, inlinedAt: !1764)
!1775 = !DILocation(line: 1369, column: 5, scope: !897, inlinedAt: !1764)
!1776 = !DILocation(line: 1425, column: 20, scope: !1758)
!1777 = !DILocation(line: 1416, column: 24, scope: !437)
!1778 = !DILocation(line: 1429, column: 10, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1429, column: 9)
!1780 = !DILocation(line: 1429, column: 9, scope: !437)
!1781 = !DILocation(line: 1434, column: 20, scope: !437)
!1782 = !DILocation(line: 960, column: 43, scope: !567, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 1443, column: 18, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1434, column: 26)
!1785 = !DILocation(line: 1434, column: 5, scope: !437)
!1786 = !DILocation(line: 811, column: 32, scope: !567, inlinedAt: !1783)
!1787 = !DILocation(line: 811, column: 65, scope: !567, inlinedAt: !1783)
!1788 = !DILocation(line: 812, column: 40, scope: !567, inlinedAt: !1783)
!1789 = !DILocation(line: 814, column: 9, scope: !567, inlinedAt: !1783)
!1790 = !DILocation(line: 815, column: 5, scope: !567, inlinedAt: !1783)
!1791 = !DILocation(line: 815, column: 13, scope: !567, inlinedAt: !1783)
!1792 = !DILocation(line: 816, column: 15, scope: !567, inlinedAt: !1783)
!1793 = !DILocation(line: 818, column: 13, scope: !567, inlinedAt: !1783)
!1794 = !DILocation(line: 821, column: 16, scope: !567, inlinedAt: !1783)
!1795 = !DILocation(line: 823, column: 16, scope: !567, inlinedAt: !1783)
!1796 = !DILocation(line: 825, column: 16, scope: !567, inlinedAt: !1783)
!1797 = !DILocation(line: 826, column: 5, scope: !567, inlinedAt: !1783)
!1798 = !DILocation(line: 831, column: 5, scope: !567, inlinedAt: !1783)
!1799 = !DILocation(line: 831, column: 16, scope: !567, inlinedAt: !1783)
!1800 = !DILocation(line: 834, column: 17, scope: !1801, inlinedAt: !1783)
!1801 = distinct !DILexicalBlock(scope: !567, file: !1, line: 834, column: 9)
!1802 = !DILocation(line: 834, column: 27, scope: !1801, inlinedAt: !1783)
!1803 = !DILocation(line: 834, column: 9, scope: !567, inlinedAt: !1783)
!1804 = !DILocation(line: 835, column: 25, scope: !1805, inlinedAt: !1783)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 834, column: 34)
!1806 = !DILocation(line: 835, column: 9, scope: !1805, inlinedAt: !1783)
!1807 = !DILocation(line: 837, column: 9, scope: !1805, inlinedAt: !1783)
!1808 = !DILocation(line: 841, column: 9, scope: !567, inlinedAt: !1783)
!1809 = !DILocation(line: 843, column: 21, scope: !1810, inlinedAt: !1783)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 843, column: 13)
!1811 = distinct !DILexicalBlock(scope: !607, file: !1, line: 841, column: 30)
!1812 = !DILocation(line: 843, column: 26, scope: !1810, inlinedAt: !1783)
!1813 = !DILocation(line: 843, column: 13, scope: !1811, inlinedAt: !1783)
!1814 = !DILocation(line: 844, column: 29, scope: !1815, inlinedAt: !1783)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 843, column: 35)
!1816 = !DILocation(line: 844, column: 13, scope: !1815, inlinedAt: !1783)
!1817 = !DILocation(line: 847, column: 13, scope: !1815, inlinedAt: !1783)
!1818 = !DILocation(line: 852, column: 13, scope: !1811, inlinedAt: !1783)
!1819 = !DILocation(line: 827, column: 10, scope: !567, inlinedAt: !1783)
!1820 = !DILocation(line: 853, column: 15, scope: !1821, inlinedAt: !1783)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 853, column: 13)
!1822 = !DILocation(line: 853, column: 21, scope: !1821, inlinedAt: !1783)
!1823 = !DILocation(line: 853, column: 24, scope: !1824, inlinedAt: !1783)
!1824 = !DILexicalBlockFile(scope: !1821, file: !1, discriminator: 1)
!1825 = !DILocation(line: 853, column: 13, scope: !1811, inlinedAt: !1783)
!1826 = !DILocation(line: 855, column: 19, scope: !1827, inlinedAt: !1783)
!1827 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 855, column: 13)
!1828 = !DILocation(line: 856, column: 29, scope: !1829, inlinedAt: !1783)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 855, column: 36)
!1830 = !DILocation(line: 856, column: 13, scope: !1829, inlinedAt: !1783)
!1831 = !DILocation(line: 858, column: 13, scope: !1829, inlinedAt: !1783)
!1832 = !DILocation(line: 860, column: 37, scope: !1811, inlinedAt: !1783)
!1833 = !DILocation(line: 860, column: 15, scope: !1811, inlinedAt: !1783)
!1834 = !DILocation(line: 817, column: 16, scope: !567, inlinedAt: !1783)
!1835 = !DILocation(line: 819, column: 16, scope: !567, inlinedAt: !1783)
!1836 = !DILocation(line: 863, column: 19, scope: !1811, inlinedAt: !1783)
!1837 = !DILocation(line: 863, column: 17, scope: !1838, inlinedAt: !1783)
!1838 = !DILexicalBlockFile(scope: !1839, file: !1, discriminator: 4)
!1839 = !DILexicalBlockFile(scope: !1811, file: !1, discriminator: 3)
!1840 = !DILocation(line: 940, column: 25, scope: !1841, inlinedAt: !1783)
!1841 = distinct !DILexicalBlock(scope: !567, file: !1, line: 940, column: 9)
!1842 = !DILocation(line: 873, column: 13, scope: !606, inlinedAt: !1783)
!1843 = !DILocation(line: 874, column: 13, scope: !606, inlinedAt: !1783)
!1844 = !DILocation(line: 888, column: 13, scope: !1845, inlinedAt: !1783)
!1845 = distinct !DILexicalBlock(scope: !606, file: !1, line: 880, column: 31)
!1846 = !DILocation(line: 893, column: 13, scope: !1845, inlinedAt: !1783)
!1847 = !DILocation(line: 898, column: 13, scope: !1845, inlinedAt: !1783)
!1848 = !DILocation(line: 1443, column: 18, scope: !1784)
!1849 = !DILocation(line: 901, column: 21, scope: !1850, inlinedAt: !1783)
!1850 = distinct !DILexicalBlock(scope: !606, file: !1, line: 901, column: 13)
!1851 = !DILocation(line: 901, column: 33, scope: !1850, inlinedAt: !1783)
!1852 = !DILocation(line: 902, column: 24, scope: !1850, inlinedAt: !1783)
!1853 = !DILocation(line: 902, column: 30, scope: !1850, inlinedAt: !1783)
!1854 = !DILocation(line: 903, column: 13, scope: !1850, inlinedAt: !1783)
!1855 = !DILocation(line: 903, column: 36, scope: !1850, inlinedAt: !1783)
!1856 = !DILocation(line: 904, column: 25, scope: !1850, inlinedAt: !1783)
!1857 = !DILocation(line: 904, column: 17, scope: !1850, inlinedAt: !1783)
!1858 = !DILocation(line: 905, column: 13, scope: !1850, inlinedAt: !1783)
!1859 = !DILocation(line: 905, column: 16, scope: !1860, inlinedAt: !1783)
!1860 = !DILexicalBlockFile(scope: !1850, file: !1, discriminator: 1)
!1861 = !DILocation(line: 901, column: 13, scope: !606, inlinedAt: !1783)
!1862 = !DILocation(line: 908, column: 70, scope: !1863, inlinedAt: !1783)
!1863 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 906, column: 9)
!1864 = !DILocation(line: 908, column: 20, scope: !1863, inlinedAt: !1783)
!1865 = !DILocation(line: 913, column: 21, scope: !1866, inlinedAt: !1783)
!1866 = distinct !DILexicalBlock(scope: !606, file: !1, line: 913, column: 13)
!1867 = !DILocation(line: 913, column: 13, scope: !1866, inlinedAt: !1783)
!1868 = !DILocation(line: 914, column: 24, scope: !1866, inlinedAt: !1783)
!1869 = !DILocation(line: 913, column: 13, scope: !606, inlinedAt: !1783)
!1870 = !DILocation(line: 917, column: 15, scope: !606, inlinedAt: !1783)
!1871 = !DILocation(line: 918, column: 17, scope: !1872, inlinedAt: !1783)
!1872 = distinct !DILexicalBlock(scope: !606, file: !1, line: 918, column: 13)
!1873 = !DILocation(line: 918, column: 25, scope: !1872, inlinedAt: !1783)
!1874 = !DILocation(line: 918, column: 28, scope: !1875, inlinedAt: !1783)
!1875 = !DILexicalBlockFile(scope: !1872, file: !1, discriminator: 1)
!1876 = !DILocation(line: 918, column: 28, scope: !1877, inlinedAt: !1783)
!1877 = !DILexicalBlockFile(scope: !1872, file: !1, discriminator: 3)
!1878 = !DILocation(line: 918, column: 49, scope: !1879, inlinedAt: !1783)
!1879 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 5)
!1880 = !DILexicalBlockFile(scope: !1872, file: !1, discriminator: 4)
!1881 = !DILocation(line: 918, column: 13, scope: !606, inlinedAt: !1783)
!1882 = !DILocation(line: 928, column: 13, scope: !1883, inlinedAt: !1783)
!1883 = distinct !DILexicalBlock(scope: !606, file: !1, line: 928, column: 13)
!1884 = !DILocation(line: 922, column: 20, scope: !606, inlinedAt: !1783)
!1885 = !DILocation(line: 928, column: 13, scope: !1886, inlinedAt: !1783)
!1886 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 1)
!1887 = !DILocation(line: 928, column: 13, scope: !1888, inlinedAt: !1783)
!1888 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 3)
!1889 = !DILocation(line: 928, column: 13, scope: !1890, inlinedAt: !1783)
!1890 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 5)
!1891 = !DILocation(line: 928, column: 13, scope: !1892, inlinedAt: !1783)
!1892 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 6)
!1893 = !DILocation(line: 928, column: 13, scope: !1894, inlinedAt: !1783)
!1894 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 4)
!1895 = !DILocation(line: 928, column: 13, scope: !1896, inlinedAt: !1783)
!1896 = !DILexicalBlockFile(scope: !1897, file: !1, discriminator: 10)
!1897 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 9)
!1898 = !DILocation(line: 928, column: 13, scope: !1899, inlinedAt: !1783)
!1899 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 2)
!1900 = !DILocation(line: 928, column: 13, scope: !1901, inlinedAt: !1783)
!1901 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 12)
!1902 = !DILocation(line: 928, column: 13, scope: !1903, inlinedAt: !1783)
!1903 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 14)
!1904 = !DILocation(line: 928, column: 13, scope: !1905, inlinedAt: !1783)
!1905 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 16)
!1906 = !DILocation(line: 928, column: 13, scope: !1907, inlinedAt: !1783)
!1907 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 17)
!1908 = !DILocation(line: 928, column: 13, scope: !1909, inlinedAt: !1783)
!1909 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 15)
!1910 = !DILocation(line: 928, column: 13, scope: !1911, inlinedAt: !1783)
!1911 = !DILexicalBlockFile(scope: !1912, file: !1, discriminator: 21)
!1912 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 20)
!1913 = !DILocation(line: 928, column: 13, scope: !1914, inlinedAt: !1783)
!1914 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 13)
!1915 = !DILocation(line: 928, column: 13, scope: !1916, inlinedAt: !1783)
!1916 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 23)
!1917 = !DILocation(line: 928, column: 13, scope: !1918, inlinedAt: !1783)
!1918 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 25)
!1919 = !DILocation(line: 928, column: 13, scope: !1920, inlinedAt: !1783)
!1920 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 26)
!1921 = !DILocation(line: 928, column: 13, scope: !1922, inlinedAt: !1783)
!1922 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 24)
!1923 = !DILocation(line: 928, column: 13, scope: !1924, inlinedAt: !1783)
!1924 = !DILexicalBlockFile(scope: !1925, file: !1, discriminator: 30)
!1925 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 29)
!1926 = !DILocation(line: 928, column: 54, scope: !1927, inlinedAt: !1783)
!1927 = !DILexicalBlockFile(scope: !1928, file: !1, discriminator: 32)
!1928 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 11)
!1929 = !DILocation(line: 928, column: 13, scope: !606, inlinedAt: !1783)
!1930 = !DILocation(line: 935, column: 21, scope: !606, inlinedAt: !1783)
!1931 = !DILocation(line: 935, column: 18, scope: !606, inlinedAt: !1783)
!1932 = !DILocation(line: 940, column: 38, scope: !1841, inlinedAt: !1783)
!1933 = !DILocation(line: 941, column: 34, scope: !1841, inlinedAt: !1783)
!1934 = !DILocation(line: 941, column: 26, scope: !1841, inlinedAt: !1783)
!1935 = !DILocation(line: 940, column: 9, scope: !1936, inlinedAt: !1783)
!1936 = !DILexicalBlockFile(scope: !1937, file: !1, discriminator: 3)
!1937 = !DILexicalBlockFile(scope: !1841, file: !1, discriminator: 2)
!1938 = !DILocation(line: 944, column: 34, scope: !1841, inlinedAt: !1783)
!1939 = !DILocation(line: 940, column: 9, scope: !567, inlinedAt: !1783)
!1940 = !DILocation(line: 949, column: 49, scope: !567, inlinedAt: !1783)
!1941 = !DILocation(line: 826, column: 23, scope: !567, inlinedAt: !1783)
!1942 = !DILocation(line: 948, column: 15, scope: !567, inlinedAt: !1783)
!1943 = !DILocation(line: 824, column: 16, scope: !567, inlinedAt: !1783)
!1944 = !DILocation(line: 953, column: 9, scope: !1945, inlinedAt: !1783)
!1945 = !DILexicalBlockFile(scope: !1946, file: !1, discriminator: 7)
!1946 = distinct !DILexicalBlock(scope: !567, file: !1, line: 953, column: 9)
!1947 = !DILocation(line: 953, column: 9, scope: !1946, inlinedAt: !1783)
!1948 = !DILocation(line: 953, column: 9, scope: !1949, inlinedAt: !1783)
!1949 = !DILexicalBlockFile(scope: !1946, file: !1, discriminator: 1)
!1950 = !DILocation(line: 953, column: 9, scope: !1951, inlinedAt: !1783)
!1951 = !DILexicalBlockFile(scope: !1952, file: !1, discriminator: 4)
!1952 = !DILexicalBlockFile(scope: !1946, file: !1, discriminator: 2)
!1953 = !DILocation(line: 953, column: 9, scope: !567, inlinedAt: !1783)
!1954 = !DILocation(line: 959, column: 47, scope: !567, inlinedAt: !1783)
!1955 = !DILocation(line: 960, column: 48, scope: !567, inlinedAt: !1783)
!1956 = !DILocation(line: 957, column: 14, scope: !567, inlinedAt: !1783)
!1957 = !DILocation(line: 957, column: 5, scope: !567, inlinedAt: !1783)
!1958 = !DILocation(line: 963, column: 5, scope: !1959, inlinedAt: !1783)
!1959 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 1)
!1960 = !DILocation(line: 963, column: 5, scope: !613, inlinedAt: !1783)
!1961 = !DILocation(line: 963, column: 5, scope: !610, inlinedAt: !1783)
!1962 = !DILocation(line: 963, column: 5, scope: !1963, inlinedAt: !1783)
!1963 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 4)
!1964 = !DILocation(line: 963, column: 5, scope: !1965, inlinedAt: !1783)
!1965 = distinct !DILexicalBlock(scope: !612, file: !1, line: 963, column: 5)
!1966 = !DILocation(line: 963, column: 5, scope: !612, inlinedAt: !1783)
!1967 = !DILocation(line: 963, column: 5, scope: !1968, inlinedAt: !1783)
!1968 = !DILexicalBlockFile(scope: !1965, file: !1, discriminator: 6)
!1969 = !DILocation(line: 715, column: 30, scope: !745, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 964, column: 5, scope: !567, inlinedAt: !1783)
!1971 = !DILocation(line: 717, column: 5, scope: !1972, inlinedAt: !1970)
!1972 = !DILexicalBlockFile(scope: !751, file: !1, discriminator: 1)
!1973 = !{!1974, !876, i64 0}
!1974 = !{!"", !876, i64 0, !876, i64 8, !876, i64 16}
!1975 = !DILocation(line: 717, column: 5, scope: !754, inlinedAt: !1970)
!1976 = !DILocation(line: 717, column: 5, scope: !751, inlinedAt: !1970)
!1977 = !DILocation(line: 717, column: 5, scope: !1978, inlinedAt: !1970)
!1978 = !DILexicalBlockFile(scope: !753, file: !1, discriminator: 4)
!1979 = !DILocation(line: 717, column: 5, scope: !1980, inlinedAt: !1970)
!1980 = distinct !DILexicalBlock(scope: !753, file: !1, line: 717, column: 5)
!1981 = !DILocation(line: 717, column: 5, scope: !753, inlinedAt: !1970)
!1982 = !DILocation(line: 717, column: 5, scope: !1983, inlinedAt: !1970)
!1983 = !DILexicalBlockFile(scope: !1980, file: !1, discriminator: 6)
!1984 = !DILocation(line: 964, column: 5, scope: !567, inlinedAt: !1783)
!1985 = !DILocation(line: 718, column: 5, scope: !1986, inlinedAt: !1970)
!1986 = !DILexicalBlockFile(scope: !756, file: !1, discriminator: 1)
!1987 = !{!1974, !876, i64 8}
!1988 = !DILocation(line: 718, column: 5, scope: !759, inlinedAt: !1970)
!1989 = !DILocation(line: 718, column: 5, scope: !756, inlinedAt: !1970)
!1990 = !DILocation(line: 718, column: 5, scope: !1991, inlinedAt: !1970)
!1991 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 4)
!1992 = !DILocation(line: 718, column: 5, scope: !1993, inlinedAt: !1970)
!1993 = distinct !DILexicalBlock(scope: !758, file: !1, line: 718, column: 5)
!1994 = !DILocation(line: 718, column: 5, scope: !758, inlinedAt: !1970)
!1995 = !DILocation(line: 718, column: 5, scope: !1996, inlinedAt: !1970)
!1996 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 6)
!1997 = !DILocation(line: 966, column: 1, scope: !567, inlinedAt: !1783)
!1998 = !DILocation(line: 1444, column: 9, scope: !1784)
!1999 = !DILocation(line: 1454, column: 15, scope: !1784)
!2000 = !DILocation(line: 1455, column: 17, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1784, file: !1, line: 1455, column: 13)
!2002 = !DILocation(line: 1455, column: 13, scope: !1784)
!2003 = !DILocation(line: 1462, column: 53, scope: !1784)
!2004 = !DILocation(line: 1462, column: 62, scope: !1784)
!2005 = !DILocation(line: 12, column: 35, scope: !561, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 1462, column: 9, scope: !1784)
!2007 = !DILocation(line: 13, column: 39, scope: !561, inlinedAt: !2006)
!2008 = !DILocation(line: 16, column: 32, scope: !1073, inlinedAt: !2006)
!2009 = !DILocation(line: 17, column: 22, scope: !1073, inlinedAt: !2006)
!2010 = !DILocation(line: 20, column: 22, scope: !1073, inlinedAt: !2006)
!2011 = !DILocation(line: 17, column: 9, scope: !1073, inlinedAt: !2006)
!2012 = !DILocation(line: 23, column: 9, scope: !1073, inlinedAt: !2006)
!2013 = !DILocation(line: 1462, column: 9, scope: !1784)
!2014 = !DILocation(line: 1457, column: 18, scope: !1784)
!2015 = !DILocation(line: 1467, column: 5, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!2017 = !DILocation(line: 1467, column: 5, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !451, file: !1, discriminator: 4)
!2019 = !DILocation(line: 1467, column: 5, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !451, file: !1, line: 1467, column: 5)
!2021 = !DILocation(line: 1467, column: 5, scope: !451)
!2022 = !DILocation(line: 1467, column: 5, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2020, file: !1, discriminator: 6)
!2024 = !DILocation(line: 1470, column: 1, scope: !437)
!2025 = !DILocation(line: 974, column: 33, scope: !760)
!2026 = !DILocation(line: 975, column: 49, scope: !760)
!2027 = !DILocation(line: 976, column: 41, scope: !760)
!2028 = !DILocation(line: 978, column: 11, scope: !760)
!2029 = !DILocation(line: 980, column: 5, scope: !760)
!2030 = !DILocation(line: 982, column: 5, scope: !760)
!2031 = !DILocation(line: 984, column: 20, scope: !760)
!2032 = !DILocation(line: 985, column: 28, scope: !760)
!2033 = !DILocation(line: 985, column: 13, scope: !760)
!2034 = !DILocation(line: 986, column: 9, scope: !760)
!2035 = !DILocation(line: 988, column: 5, scope: !760)
!2036 = !DILocation(line: 989, column: 9, scope: !760)
!2037 = !DILocation(line: 990, column: 9, scope: !760)
!2038 = !DILocation(line: 991, column: 5, scope: !760)
!2039 = !DILocation(line: 991, column: 13, scope: !760)
!2040 = !DILocation(line: 992, column: 13, scope: !760)
!2041 = !DILocation(line: 993, column: 5, scope: !760)
!2042 = !DILocation(line: 994, column: 15, scope: !760)
!2043 = !DILocation(line: 998, column: 5, scope: !760)
!2044 = !DILocation(line: 998, column: 16, scope: !760)
!2045 = !DILocation(line: 1000, column: 17, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1000, column: 9)
!2047 = !DILocation(line: 1000, column: 27, scope: !2046)
!2048 = !DILocation(line: 1000, column: 9, scope: !760)
!2049 = !DILocation(line: 1001, column: 25, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 1000, column: 38)
!2051 = !DILocation(line: 1001, column: 9, scope: !2050)
!2052 = !DILocation(line: 1002, column: 9, scope: !2050)
!2053 = !DILocation(line: 1004, column: 17, scope: !760)
!2054 = !DILocation(line: 984, column: 9, scope: !760)
!2055 = !DILocation(line: 1006, column: 17, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1006, column: 9)
!2057 = !DILocation(line: 1006, column: 9, scope: !2056)
!2058 = !DILocation(line: 1006, column: 9, scope: !760)
!2059 = !DILocation(line: 1009, column: 14, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1009, column: 9)
!2061 = !DILocation(line: 1013, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 1009, column: 23)
!2063 = !DILocation(line: 1009, column: 9, scope: !760)
!2064 = !DILocation(line: 1018, column: 14, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1018, column: 9)
!2066 = !DILocation(line: 1018, column: 9, scope: !760)
!2067 = !DILocation(line: 1023, column: 11, scope: !760)
!2068 = !DILocation(line: 983, column: 12, scope: !760)
!2069 = !DILocation(line: 1024, column: 13, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1024, column: 9)
!2071 = !DILocation(line: 1024, column: 21, scope: !2070)
!2072 = !DILocation(line: 1024, column: 24, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2070, file: !1, discriminator: 1)
!2074 = !DILocation(line: 1024, column: 9, scope: !760)
!2075 = !DILocation(line: 1027, column: 14, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1027, column: 9)
!2077 = !DILocation(line: 1029, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 1027, column: 22)
!2079 = !DILocation(line: 1027, column: 9, scope: !760)
!2080 = !DILocation(line: 1033, column: 19, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1033, column: 9)
!2082 = !DILocation(line: 1035, column: 19, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 1035, column: 14)
!2084 = !DILocation(line: 1035, column: 14, scope: !2081)
!2085 = !DILocation(line: 1033, column: 9, scope: !760)
!2086 = !DILocation(line: 1041, column: 38, scope: !760)
!2087 = !DILocation(line: 993, column: 9, scope: !760)
!2088 = !DILocation(line: 1041, column: 11, scope: !760)
!2089 = !DILocation(line: 1043, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1043, column: 9)
!2091 = !DILocation(line: 1043, column: 9, scope: !760)
!2092 = !DILocation(line: 1045, column: 16, scope: !760)
!2093 = !DILocation(line: 979, column: 16, scope: !760)
!2094 = !DILocation(line: 1047, column: 9, scope: !760)
!2095 = !DILocation(line: 1051, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1, line: 1047, column: 18)
!2097 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1047, column: 9)
!2098 = !DILocation(line: 1051, column: 23, scope: !2096)
!2099 = !DILocation(line: 1052, column: 18, scope: !2096)
!2100 = !DILocation(line: 1053, column: 5, scope: !2096)
!2101 = !DILocation(line: 1055, column: 17, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1055, column: 9)
!2103 = !DILocation(line: 1055, column: 29, scope: !2102)
!2104 = !DILocation(line: 1056, column: 20, scope: !2102)
!2105 = !DILocation(line: 1056, column: 26, scope: !2102)
!2106 = !DILocation(line: 1057, column: 9, scope: !2102)
!2107 = !DILocation(line: 1057, column: 20, scope: !2102)
!2108 = !DILocation(line: 1057, column: 25, scope: !2102)
!2109 = !DILocation(line: 1058, column: 9, scope: !2102)
!2110 = !DILocation(line: 1058, column: 21, scope: !2102)
!2111 = !DILocation(line: 1058, column: 13, scope: !2102)
!2112 = !DILocation(line: 1055, column: 9, scope: !760)
!2113 = !DILocation(line: 1061, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 1059, column: 5)
!2115 = !DILocation(line: 1062, column: 9, scope: !2114)
!2116 = !DILocation(line: 1063, column: 9, scope: !2114)
!2117 = !DILocation(line: 1068, column: 19, scope: !760)
!2118 = !DILocation(line: 1069, column: 5, scope: !760)
!2119 = !DILocation(line: 1070, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1070, column: 9)
!2121 = !DILocation(line: 1070, column: 9, scope: !760)
!2122 = !DILocation(line: 987, column: 16, scope: !760)
!2123 = !DILocation(line: 1076, column: 9, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1076, column: 9)
!2125 = !DILocation(line: 1076, column: 9, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 1)
!2127 = !DILocation(line: 1076, column: 9, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 3)
!2129 = !DILocation(line: 1076, column: 9, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 5)
!2131 = !DILocation(line: 1076, column: 9, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 6)
!2133 = !DILocation(line: 1076, column: 9, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 4)
!2135 = !DILocation(line: 1076, column: 9, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !1, discriminator: 10)
!2137 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 9)
!2138 = !DILocation(line: 1076, column: 9, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 2)
!2140 = !DILocation(line: 1076, column: 9, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 12)
!2142 = !DILocation(line: 1076, column: 9, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 14)
!2144 = !DILocation(line: 1076, column: 9, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 16)
!2146 = !DILocation(line: 1076, column: 9, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 17)
!2148 = !DILocation(line: 1076, column: 9, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 15)
!2150 = !DILocation(line: 1076, column: 9, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2152, file: !1, discriminator: 21)
!2152 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 20)
!2153 = !DILocation(line: 1076, column: 9, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 13)
!2155 = !DILocation(line: 1076, column: 9, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 23)
!2157 = !DILocation(line: 1076, column: 9, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 25)
!2159 = !DILocation(line: 1076, column: 9, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 26)
!2161 = !DILocation(line: 1076, column: 9, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 24)
!2163 = !DILocation(line: 1076, column: 9, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2165, file: !1, discriminator: 30)
!2165 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 29)
!2166 = !DILocation(line: 1076, column: 49, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !1, discriminator: 32)
!2168 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 11)
!2169 = !DILocation(line: 1076, column: 9, scope: !760)
!2170 = !DILocation(line: 1084, column: 44, scope: !760)
!2171 = !DILocation(line: 980, column: 16, scope: !760)
!2172 = !DILocation(line: 982, column: 9, scope: !760)
!2173 = !DILocation(line: 1084, column: 5, scope: !760)
!2174 = !DILocation(line: 1087, column: 33, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1087, column: 9)
!2176 = !DILocation(line: 1087, column: 38, scope: !2175)
!2177 = !DILocation(line: 1087, column: 25, scope: !2175)
!2178 = !DILocation(line: 1088, column: 34, scope: !2175)
!2179 = !DILocation(line: 1088, column: 26, scope: !2175)
!2180 = !DILocation(line: 1087, column: 9, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2182, file: !1, discriminator: 3)
!2182 = !DILexicalBlockFile(scope: !2175, file: !1, discriminator: 2)
!2183 = !DILocation(line: 1091, column: 34, scope: !2175)
!2184 = !DILocation(line: 1087, column: 9, scope: !760)
!2185 = !DILocation(line: 1096, column: 52, scope: !760)
!2186 = !DILocation(line: 1096, column: 65, scope: !760)
!2187 = !DILocation(line: 988, column: 23, scope: !760)
!2188 = !DILocation(line: 1095, column: 15, scope: !760)
!2189 = !DILocation(line: 981, column: 16, scope: !760)
!2190 = !DILocation(line: 1100, column: 9, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 7)
!2192 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1100, column: 9)
!2193 = !DILocation(line: 1100, column: 9, scope: !2192)
!2194 = !DILocation(line: 1100, column: 9, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 1)
!2196 = !DILocation(line: 1100, column: 9, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !1, discriminator: 4)
!2198 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 2)
!2199 = !DILocation(line: 1100, column: 9, scope: !760)
!2200 = !DILocation(line: 1106, column: 43, scope: !760)
!2201 = !DILocation(line: 1104, column: 14, scope: !760)
!2202 = !DILocation(line: 1104, column: 5, scope: !760)
!2203 = !DILocation(line: 1110, column: 5, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 1)
!2205 = !DILocation(line: 1110, column: 5, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 4)
!2207 = !DILocation(line: 1110, column: 5, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !788, file: !1, line: 1110, column: 5)
!2209 = !DILocation(line: 1110, column: 5, scope: !788)
!2210 = !DILocation(line: 1110, column: 5, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2208, file: !1, discriminator: 6)
!2212 = !DILocation(line: 715, column: 30, scope: !745, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 1111, column: 5, scope: !760)
!2214 = !DILocation(line: 717, column: 5, scope: !1972, inlinedAt: !2213)
!2215 = !DILocation(line: 717, column: 5, scope: !754, inlinedAt: !2213)
!2216 = !DILocation(line: 717, column: 5, scope: !751, inlinedAt: !2213)
!2217 = !DILocation(line: 717, column: 5, scope: !1978, inlinedAt: !2213)
!2218 = !DILocation(line: 717, column: 5, scope: !1980, inlinedAt: !2213)
!2219 = !DILocation(line: 717, column: 5, scope: !753, inlinedAt: !2213)
!2220 = !DILocation(line: 717, column: 5, scope: !1983, inlinedAt: !2213)
!2221 = !DILocation(line: 1111, column: 5, scope: !760)
!2222 = !DILocation(line: 718, column: 5, scope: !1986, inlinedAt: !2213)
!2223 = !DILocation(line: 718, column: 5, scope: !759, inlinedAt: !2213)
!2224 = !DILocation(line: 718, column: 5, scope: !756, inlinedAt: !2213)
!2225 = !DILocation(line: 718, column: 5, scope: !1991, inlinedAt: !2213)
!2226 = !DILocation(line: 718, column: 5, scope: !1993, inlinedAt: !2213)
!2227 = !DILocation(line: 718, column: 5, scope: !758, inlinedAt: !2213)
!2228 = !DILocation(line: 718, column: 5, scope: !1996, inlinedAt: !2213)
!2229 = !DILocation(line: 1113, column: 1, scope: !760)
!2230 = !DILocation(line: 1473, column: 49, scope: !458)
!2231 = !DILocation(line: 1474, column: 41, scope: !458)
!2232 = !DILocation(line: 1475, column: 41, scope: !458)
!2233 = !DILocation(line: 1476, column: 42, scope: !458)
!2234 = !DILocation(line: 1476, column: 60, scope: !458)
!2235 = !DILocation(line: 1478, column: 5, scope: !458)
!2236 = !DILocation(line: 1482, column: 15, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1482, column: 9)
!2238 = !DILocation(line: 1482, column: 9, scope: !458)
!2239 = !DILocation(line: 1360, column: 22, scope: !474, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 1483, column: 16, scope: !2237)
!2241 = !DILocation(line: 1360, column: 45, scope: !474, inlinedAt: !2240)
!2242 = !DILocation(line: 1365, column: 11, scope: !474, inlinedAt: !2240)
!2243 = !DILocation(line: 1362, column: 15, scope: !474, inlinedAt: !2240)
!2244 = !DILocation(line: 1366, column: 13, scope: !886, inlinedAt: !2240)
!2245 = !DILocation(line: 1366, column: 9, scope: !474, inlinedAt: !2240)
!2246 = !DILocation(line: 1368, column: 11, scope: !474, inlinedAt: !2240)
!2247 = !DILocation(line: 1363, column: 9, scope: !474, inlinedAt: !2240)
!2248 = !DILocation(line: 1369, column: 5, scope: !891, inlinedAt: !2240)
!2249 = !DILocation(line: 1369, column: 5, scope: !893, inlinedAt: !2240)
!2250 = !DILocation(line: 1369, column: 5, scope: !483, inlinedAt: !2240)
!2251 = !DILocation(line: 1369, column: 5, scope: !897, inlinedAt: !2240)
!2252 = !DILocation(line: 1483, column: 16, scope: !2237)
!2253 = !DILocation(line: 1478, column: 24, scope: !458)
!2254 = !DILocation(line: 1486, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1486, column: 9)
!2256 = !DILocation(line: 1486, column: 9, scope: !458)
!2257 = !DILocation(line: 1491, column: 20, scope: !458)
!2258 = !DILocation(line: 1491, column: 5, scope: !458)
!2259 = !DILocation(line: 1502, column: 16, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1491, column: 26)
!2261 = !DILocation(line: 1502, column: 9, scope: !2260)
!2262 = !DILocation(line: 1506, column: 53, scope: !2260)
!2263 = !DILocation(line: 1506, column: 62, scope: !2260)
!2264 = !DILocation(line: 12, column: 35, scope: !561, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1506, column: 9, scope: !2260)
!2266 = !DILocation(line: 13, column: 39, scope: !561, inlinedAt: !2265)
!2267 = !DILocation(line: 16, column: 32, scope: !1073, inlinedAt: !2265)
!2268 = !DILocation(line: 17, column: 22, scope: !1073, inlinedAt: !2265)
!2269 = !DILocation(line: 20, column: 22, scope: !1073, inlinedAt: !2265)
!2270 = !DILocation(line: 17, column: 9, scope: !1073, inlinedAt: !2265)
!2271 = !DILocation(line: 23, column: 9, scope: !1073, inlinedAt: !2265)
!2272 = !DILocation(line: 1506, column: 9, scope: !2260)
!2273 = !DILocation(line: 1509, column: 1, scope: !458)
!2274 = !DILocation(line: 1512, column: 51, scope: !466)
!2275 = !DILocation(line: 1513, column: 43, scope: !466)
!2276 = !DILocation(line: 1514, column: 43, scope: !466)
!2277 = !DILocation(line: 1515, column: 44, scope: !466)
!2278 = !DILocation(line: 1515, column: 62, scope: !466)
!2279 = !DILocation(line: 1517, column: 5, scope: !466)
!2280 = !DILocation(line: 1521, column: 15, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1521, column: 9)
!2282 = !DILocation(line: 1521, column: 9, scope: !466)
!2283 = !DILocation(line: 1360, column: 22, scope: !474, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1522, column: 16, scope: !2281)
!2285 = !DILocation(line: 1360, column: 45, scope: !474, inlinedAt: !2284)
!2286 = !DILocation(line: 1365, column: 11, scope: !474, inlinedAt: !2284)
!2287 = !DILocation(line: 1362, column: 15, scope: !474, inlinedAt: !2284)
!2288 = !DILocation(line: 1366, column: 13, scope: !886, inlinedAt: !2284)
!2289 = !DILocation(line: 1366, column: 9, scope: !474, inlinedAt: !2284)
!2290 = !DILocation(line: 1368, column: 11, scope: !474, inlinedAt: !2284)
!2291 = !DILocation(line: 1363, column: 9, scope: !474, inlinedAt: !2284)
!2292 = !DILocation(line: 1369, column: 5, scope: !891, inlinedAt: !2284)
!2293 = !DILocation(line: 1369, column: 5, scope: !893, inlinedAt: !2284)
!2294 = !DILocation(line: 1369, column: 5, scope: !483, inlinedAt: !2284)
!2295 = !DILocation(line: 1369, column: 5, scope: !897, inlinedAt: !2284)
!2296 = !DILocation(line: 1522, column: 16, scope: !2281)
!2297 = !DILocation(line: 1517, column: 24, scope: !466)
!2298 = !DILocation(line: 1525, column: 10, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1525, column: 9)
!2300 = !DILocation(line: 1525, column: 9, scope: !466)
!2301 = !DILocation(line: 1530, column: 20, scope: !466)
!2302 = !DILocation(line: 1265, column: 33, scope: !2303, inlinedAt: !2304)
!2303 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1265, column: 9)
!2304 = distinct !DILocation(line: 1540, column: 16, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !466, file: !1, line: 1530, column: 26)
!2306 = !DILocation(line: 1530, column: 5, scope: !466)
!2307 = !DILocation(line: 1120, column: 35, scope: !801, inlinedAt: !2304)
!2308 = !DILocation(line: 1121, column: 51, scope: !801, inlinedAt: !2304)
!2309 = !DILocation(line: 1122, column: 43, scope: !801, inlinedAt: !2304)
!2310 = !DILocation(line: 1126, column: 11, scope: !801, inlinedAt: !2304)
!2311 = !DILocation(line: 1127, column: 11, scope: !801, inlinedAt: !2304)
!2312 = !DILocation(line: 1129, column: 5, scope: !801, inlinedAt: !2304)
!2313 = !DILocation(line: 1129, column: 37, scope: !801, inlinedAt: !2304)
!2314 = !{i64 0, i64 4, !1163, i64 4, i64 4, !1163, i64 8, i64 4, !1163, i64 12, i64 4, !1163, i64 16, i64 8, !1088, i64 24, i64 4, !1163, i64 32, i64 8, !1088, i64 40, i64 4, !1163}
!2315 = !DILocation(line: 1132, column: 5, scope: !801, inlinedAt: !2304)
!2316 = !DILocation(line: 1133, column: 5, scope: !801, inlinedAt: !2304)
!2317 = !DILocation(line: 1136, column: 5, scope: !801, inlinedAt: !2304)
!2318 = !DILocation(line: 1137, column: 5, scope: !801, inlinedAt: !2304)
!2319 = !DILocation(line: 1138, column: 20, scope: !801, inlinedAt: !2304)
!2320 = !DILocation(line: 1139, column: 13, scope: !801, inlinedAt: !2304)
!2321 = !DILocation(line: 1142, column: 5, scope: !801, inlinedAt: !2304)
!2322 = !DILocation(line: 1143, column: 5, scope: !801, inlinedAt: !2304)
!2323 = !DILocation(line: 1144, column: 9, scope: !801, inlinedAt: !2304)
!2324 = !DILocation(line: 1145, column: 9, scope: !801, inlinedAt: !2304)
!2325 = !DILocation(line: 1146, column: 5, scope: !801, inlinedAt: !2304)
!2326 = !DILocation(line: 1146, column: 13, scope: !801, inlinedAt: !2304)
!2327 = !DILocation(line: 1149, column: 13, scope: !801, inlinedAt: !2304)
!2328 = !DILocation(line: 1150, column: 13, scope: !801, inlinedAt: !2304)
!2329 = !DILocation(line: 1151, column: 5, scope: !801, inlinedAt: !2304)
!2330 = !DILocation(line: 1152, column: 5, scope: !801, inlinedAt: !2304)
!2331 = !DILocation(line: 1153, column: 9, scope: !801, inlinedAt: !2304)
!2332 = !DILocation(line: 1154, column: 9, scope: !801, inlinedAt: !2304)
!2333 = !DILocation(line: 1158, column: 15, scope: !801, inlinedAt: !2304)
!2334 = !DILocation(line: 1159, column: 15, scope: !801, inlinedAt: !2304)
!2335 = !DILocation(line: 1163, column: 5, scope: !801, inlinedAt: !2304)
!2336 = !DILocation(line: 1163, column: 16, scope: !801, inlinedAt: !2304)
!2337 = !DILocation(line: 1165, column: 17, scope: !2338, inlinedAt: !2304)
!2338 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1165, column: 9)
!2339 = !DILocation(line: 1165, column: 27, scope: !2338, inlinedAt: !2304)
!2340 = !DILocation(line: 1165, column: 9, scope: !801, inlinedAt: !2304)
!2341 = !DILocation(line: 1166, column: 25, scope: !2342, inlinedAt: !2304)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 1165, column: 38)
!2343 = !DILocation(line: 1166, column: 9, scope: !2342, inlinedAt: !2304)
!2344 = !DILocation(line: 1167, column: 9, scope: !2342, inlinedAt: !2304)
!2345 = !DILocation(line: 1169, column: 17, scope: !801, inlinedAt: !2304)
!2346 = !DILocation(line: 1138, column: 9, scope: !801, inlinedAt: !2304)
!2347 = !DILocation(line: 1172, column: 17, scope: !2348, inlinedAt: !2304)
!2348 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1172, column: 9)
!2349 = !DILocation(line: 1172, column: 27, scope: !2348, inlinedAt: !2304)
!2350 = !DILocation(line: 1172, column: 9, scope: !801, inlinedAt: !2304)
!2351 = !DILocation(line: 1180, column: 17, scope: !2352, inlinedAt: !2304)
!2352 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1180, column: 9)
!2353 = !DILocation(line: 1173, column: 25, scope: !2354, inlinedAt: !2304)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !1, line: 1172, column: 35)
!2355 = !DILocation(line: 1173, column: 9, scope: !2354, inlinedAt: !2304)
!2356 = !DILocation(line: 1176, column: 9, scope: !2354, inlinedAt: !2304)
!2357 = !DILocation(line: 1180, column: 23, scope: !2352, inlinedAt: !2304)
!2358 = !DILocation(line: 1180, column: 9, scope: !801, inlinedAt: !2304)
!2359 = !DILocation(line: 1181, column: 25, scope: !2360, inlinedAt: !2304)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !1, line: 1180, column: 31)
!2361 = !DILocation(line: 1181, column: 9, scope: !2360, inlinedAt: !2304)
!2362 = !DILocation(line: 1184, column: 9, scope: !2360, inlinedAt: !2304)
!2363 = !DILocation(line: 1187, column: 10, scope: !801, inlinedAt: !2304)
!2364 = !DILocation(line: 1124, column: 12, scope: !801, inlinedAt: !2304)
!2365 = !DILocation(line: 1188, column: 12, scope: !2366, inlinedAt: !2304)
!2366 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1188, column: 9)
!2367 = !DILocation(line: 1188, column: 20, scope: !2366, inlinedAt: !2304)
!2368 = !DILocation(line: 1188, column: 23, scope: !2369, inlinedAt: !2304)
!2369 = !DILexicalBlockFile(scope: !2366, file: !1, discriminator: 1)
!2370 = !DILocation(line: 1188, column: 9, scope: !801, inlinedAt: !2304)
!2371 = !DILocation(line: 1190, column: 10, scope: !801, inlinedAt: !2304)
!2372 = !DILocation(line: 1125, column: 12, scope: !801, inlinedAt: !2304)
!2373 = !DILocation(line: 1191, column: 12, scope: !2374, inlinedAt: !2304)
!2374 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1191, column: 9)
!2375 = !DILocation(line: 1191, column: 20, scope: !2374, inlinedAt: !2304)
!2376 = !DILocation(line: 1191, column: 23, scope: !2377, inlinedAt: !2304)
!2377 = !DILexicalBlockFile(scope: !2374, file: !1, discriminator: 1)
!2378 = !DILocation(line: 1191, column: 9, scope: !801, inlinedAt: !2304)
!2379 = !DILocation(line: 1194, column: 17, scope: !2380, inlinedAt: !2304)
!2380 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1194, column: 9)
!2381 = !DILocation(line: 1194, column: 9, scope: !2380, inlinedAt: !2304)
!2382 = !DILocation(line: 1194, column: 9, scope: !801, inlinedAt: !2304)
!2383 = !DILocation(line: 1197, column: 14, scope: !2384, inlinedAt: !2304)
!2384 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1197, column: 9)
!2385 = !DILocation(line: 1197, column: 9, scope: !801, inlinedAt: !2304)
!2386 = !DILocation(line: 1201, column: 16, scope: !2387, inlinedAt: !2304)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !1, line: 1201, column: 13)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !1, line: 1197, column: 23)
!2389 = !DILocation(line: 1201, column: 23, scope: !2387, inlinedAt: !2304)
!2390 = !DILocation(line: 1201, column: 26, scope: !2387, inlinedAt: !2304)
!2391 = !DILocation(line: 1201, column: 44, scope: !2387, inlinedAt: !2304)
!2392 = !DILocation(line: 1201, column: 13, scope: !2388, inlinedAt: !2304)
!2393 = !DILocation(line: 1540, column: 16, scope: !2305)
!2394 = !DILocation(line: 1207, column: 14, scope: !2395, inlinedAt: !2304)
!2395 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1207, column: 9)
!2396 = !DILocation(line: 1207, column: 9, scope: !801, inlinedAt: !2304)
!2397 = !DILocation(line: 1212, column: 19, scope: !2398, inlinedAt: !2304)
!2398 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1212, column: 9)
!2399 = !DILocation(line: 1214, column: 19, scope: !2400, inlinedAt: !2304)
!2400 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 1214, column: 14)
!2401 = !DILocation(line: 1214, column: 14, scope: !2398, inlinedAt: !2304)
!2402 = !DILocation(line: 1212, column: 9, scope: !801, inlinedAt: !2304)
!2403 = !DILocation(line: 1220, column: 40, scope: !801, inlinedAt: !2304)
!2404 = !DILocation(line: 1151, column: 9, scope: !801, inlinedAt: !2304)
!2405 = !DILocation(line: 1220, column: 14, scope: !801, inlinedAt: !2304)
!2406 = !DILocation(line: 1222, column: 16, scope: !2407, inlinedAt: !2304)
!2407 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1222, column: 9)
!2408 = !DILocation(line: 1222, column: 9, scope: !801, inlinedAt: !2304)
!2409 = !DILocation(line: 1152, column: 9, scope: !801, inlinedAt: !2304)
!2410 = !DILocation(line: 1224, column: 14, scope: !801, inlinedAt: !2304)
!2411 = !DILocation(line: 1226, column: 16, scope: !2412, inlinedAt: !2304)
!2412 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1226, column: 9)
!2413 = !DILocation(line: 1226, column: 9, scope: !801, inlinedAt: !2304)
!2414 = !DILocation(line: 1229, column: 19, scope: !801, inlinedAt: !2304)
!2415 = !DILocation(line: 1130, column: 16, scope: !801, inlinedAt: !2304)
!2416 = !DILocation(line: 1230, column: 19, scope: !801, inlinedAt: !2304)
!2417 = !DILocation(line: 1131, column: 16, scope: !801, inlinedAt: !2304)
!2418 = !DILocation(line: 1234, column: 22, scope: !801, inlinedAt: !2304)
!2419 = !DILocation(line: 1235, column: 24, scope: !2420, inlinedAt: !2304)
!2420 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1235, column: 9)
!2421 = !DILocation(line: 1235, column: 9, scope: !801, inlinedAt: !2304)
!2422 = !DILocation(line: 1140, column: 16, scope: !801, inlinedAt: !2304)
!2423 = !DILocation(line: 1239, column: 22, scope: !801, inlinedAt: !2304)
!2424 = !DILocation(line: 1240, column: 24, scope: !2425, inlinedAt: !2304)
!2425 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1240, column: 9)
!2426 = !DILocation(line: 1240, column: 9, scope: !801, inlinedAt: !2304)
!2427 = !DILocation(line: 1141, column: 16, scope: !801, inlinedAt: !2304)
!2428 = !DILocation(line: 1246, column: 9, scope: !2429, inlinedAt: !2304)
!2429 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1246, column: 9)
!2430 = !DILocation(line: 1246, column: 9, scope: !2431, inlinedAt: !2304)
!2431 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 1)
!2432 = !DILocation(line: 1246, column: 9, scope: !2433, inlinedAt: !2304)
!2433 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 3)
!2434 = !DILocation(line: 1246, column: 9, scope: !2435, inlinedAt: !2304)
!2435 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 5)
!2436 = !DILocation(line: 1246, column: 9, scope: !2437, inlinedAt: !2304)
!2437 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 6)
!2438 = !DILocation(line: 1246, column: 9, scope: !2439, inlinedAt: !2304)
!2439 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 4)
!2440 = !DILocation(line: 1246, column: 9, scope: !2441, inlinedAt: !2304)
!2441 = !DILexicalBlockFile(scope: !2442, file: !1, discriminator: 10)
!2442 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 9)
!2443 = !DILocation(line: 1246, column: 9, scope: !2444, inlinedAt: !2304)
!2444 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 2)
!2445 = !DILocation(line: 1246, column: 9, scope: !2446, inlinedAt: !2304)
!2446 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 12)
!2447 = !DILocation(line: 1246, column: 9, scope: !2448, inlinedAt: !2304)
!2448 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 14)
!2449 = !DILocation(line: 1246, column: 9, scope: !2450, inlinedAt: !2304)
!2450 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 16)
!2451 = !DILocation(line: 1246, column: 9, scope: !2452, inlinedAt: !2304)
!2452 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 17)
!2453 = !DILocation(line: 1246, column: 9, scope: !2454, inlinedAt: !2304)
!2454 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 15)
!2455 = !DILocation(line: 1246, column: 9, scope: !2456, inlinedAt: !2304)
!2456 = !DILexicalBlockFile(scope: !2457, file: !1, discriminator: 21)
!2457 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 20)
!2458 = !DILocation(line: 1246, column: 9, scope: !2459, inlinedAt: !2304)
!2459 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 13)
!2460 = !DILocation(line: 1246, column: 9, scope: !2461, inlinedAt: !2304)
!2461 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 23)
!2462 = !DILocation(line: 1246, column: 9, scope: !2463, inlinedAt: !2304)
!2463 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 25)
!2464 = !DILocation(line: 1246, column: 9, scope: !2465, inlinedAt: !2304)
!2465 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 26)
!2466 = !DILocation(line: 1246, column: 9, scope: !2467, inlinedAt: !2304)
!2467 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 24)
!2468 = !DILocation(line: 1246, column: 9, scope: !2469, inlinedAt: !2304)
!2469 = !DILexicalBlockFile(scope: !2470, file: !1, discriminator: 30)
!2470 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 29)
!2471 = !DILocation(line: 1246, column: 51, scope: !2472, inlinedAt: !2304)
!2472 = !DILexicalBlockFile(scope: !2473, file: !1, discriminator: 32)
!2473 = !DILexicalBlockFile(scope: !2429, file: !1, discriminator: 11)
!2474 = !DILocation(line: 1246, column: 9, scope: !801, inlinedAt: !2304)
!2475 = !DILocation(line: 1251, column: 9, scope: !2476, inlinedAt: !2304)
!2476 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1251, column: 9)
!2477 = !DILocation(line: 1251, column: 9, scope: !2478, inlinedAt: !2304)
!2478 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 1)
!2479 = !DILocation(line: 1251, column: 9, scope: !2480, inlinedAt: !2304)
!2480 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 3)
!2481 = !DILocation(line: 1251, column: 9, scope: !2482, inlinedAt: !2304)
!2482 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 5)
!2483 = !DILocation(line: 1251, column: 9, scope: !2484, inlinedAt: !2304)
!2484 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 6)
!2485 = !DILocation(line: 1251, column: 9, scope: !2486, inlinedAt: !2304)
!2486 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 4)
!2487 = !DILocation(line: 1251, column: 9, scope: !2488, inlinedAt: !2304)
!2488 = !DILexicalBlockFile(scope: !2489, file: !1, discriminator: 10)
!2489 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 9)
!2490 = !DILocation(line: 1251, column: 9, scope: !2491, inlinedAt: !2304)
!2491 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 2)
!2492 = !DILocation(line: 1251, column: 9, scope: !2493, inlinedAt: !2304)
!2493 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 12)
!2494 = !DILocation(line: 1251, column: 9, scope: !2495, inlinedAt: !2304)
!2495 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 14)
!2496 = !DILocation(line: 1251, column: 9, scope: !2497, inlinedAt: !2304)
!2497 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 16)
!2498 = !DILocation(line: 1251, column: 9, scope: !2499, inlinedAt: !2304)
!2499 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 17)
!2500 = !DILocation(line: 1251, column: 9, scope: !2501, inlinedAt: !2304)
!2501 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 15)
!2502 = !DILocation(line: 1251, column: 9, scope: !2503, inlinedAt: !2304)
!2503 = !DILexicalBlockFile(scope: !2504, file: !1, discriminator: 21)
!2504 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 20)
!2505 = !DILocation(line: 1251, column: 9, scope: !2506, inlinedAt: !2304)
!2506 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 13)
!2507 = !DILocation(line: 1251, column: 9, scope: !2508, inlinedAt: !2304)
!2508 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 23)
!2509 = !DILocation(line: 1251, column: 9, scope: !2510, inlinedAt: !2304)
!2510 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 25)
!2511 = !DILocation(line: 1251, column: 9, scope: !2512, inlinedAt: !2304)
!2512 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 26)
!2513 = !DILocation(line: 1251, column: 9, scope: !2514, inlinedAt: !2304)
!2514 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 24)
!2515 = !DILocation(line: 1251, column: 9, scope: !2516, inlinedAt: !2304)
!2516 = !DILexicalBlockFile(scope: !2517, file: !1, discriminator: 30)
!2517 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 29)
!2518 = !DILocation(line: 1251, column: 51, scope: !2519, inlinedAt: !2304)
!2519 = !DILexicalBlockFile(scope: !2520, file: !1, discriminator: 32)
!2520 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 11)
!2521 = !DILocation(line: 1251, column: 9, scope: !801, inlinedAt: !2304)
!2522 = !DILocation(line: 1259, column: 45, scope: !801, inlinedAt: !2304)
!2523 = !DILocation(line: 1132, column: 16, scope: !801, inlinedAt: !2304)
!2524 = !DILocation(line: 1136, column: 9, scope: !801, inlinedAt: !2304)
!2525 = !DILocation(line: 1259, column: 5, scope: !801, inlinedAt: !2304)
!2526 = !DILocation(line: 1261, column: 45, scope: !801, inlinedAt: !2304)
!2527 = !DILocation(line: 1133, column: 16, scope: !801, inlinedAt: !2304)
!2528 = !DILocation(line: 1137, column: 9, scope: !801, inlinedAt: !2304)
!2529 = !DILocation(line: 1261, column: 5, scope: !801, inlinedAt: !2304)
!2530 = !DILocation(line: 1265, column: 38, scope: !2303, inlinedAt: !2304)
!2531 = !DILocation(line: 1265, column: 25, scope: !2303, inlinedAt: !2304)
!2532 = !DILocation(line: 1266, column: 34, scope: !2303, inlinedAt: !2304)
!2533 = !DILocation(line: 1266, column: 26, scope: !2303, inlinedAt: !2304)
!2534 = !DILocation(line: 1265, column: 9, scope: !2535, inlinedAt: !2304)
!2535 = !DILexicalBlockFile(scope: !2536, file: !1, discriminator: 3)
!2536 = !DILexicalBlockFile(scope: !2303, file: !1, discriminator: 2)
!2537 = !DILocation(line: 1269, column: 34, scope: !2303, inlinedAt: !2304)
!2538 = !DILocation(line: 1265, column: 9, scope: !801, inlinedAt: !2304)
!2539 = !DILocation(line: 1274, column: 16, scope: !801, inlinedAt: !2304)
!2540 = !DILocation(line: 1274, column: 26, scope: !801, inlinedAt: !2304)
!2541 = !DILocation(line: 1275, column: 16, scope: !801, inlinedAt: !2304)
!2542 = !DILocation(line: 1275, column: 22, scope: !801, inlinedAt: !2304)
!2543 = !DILocation(line: 1276, column: 16, scope: !801, inlinedAt: !2304)
!2544 = !DILocation(line: 1276, column: 22, scope: !801, inlinedAt: !2304)
!2545 = !DILocation(line: 1280, column: 63, scope: !801, inlinedAt: !2304)
!2546 = !DILocation(line: 1281, column: 37, scope: !801, inlinedAt: !2304)
!2547 = !DILocation(line: 1129, column: 24, scope: !801, inlinedAt: !2304)
!2548 = !DILocation(line: 1142, column: 23, scope: !801, inlinedAt: !2304)
!2549 = !DILocation(line: 1279, column: 18, scope: !801, inlinedAt: !2304)
!2550 = !DILocation(line: 1134, column: 16, scope: !801, inlinedAt: !2304)
!2551 = !DILocation(line: 1287, column: 10, scope: !2552, inlinedAt: !2304)
!2552 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1287, column: 9)
!2553 = !DILocation(line: 1287, column: 9, scope: !801, inlinedAt: !2304)
!2554 = !DILocation(line: 1288, column: 20, scope: !2552, inlinedAt: !2304)
!2555 = !DILocation(line: 1288, column: 25, scope: !2552, inlinedAt: !2304)
!2556 = !DILocation(line: 1288, column: 9, scope: !2552, inlinedAt: !2304)
!2557 = !DILocation(line: 1290, column: 63, scope: !801, inlinedAt: !2304)
!2558 = !DILocation(line: 1291, column: 37, scope: !801, inlinedAt: !2304)
!2559 = !DILocation(line: 1143, column: 23, scope: !801, inlinedAt: !2304)
!2560 = !DILocation(line: 1289, column: 18, scope: !801, inlinedAt: !2304)
!2561 = !DILocation(line: 1135, column: 16, scope: !801, inlinedAt: !2304)
!2562 = !DILocation(line: 1294, column: 9, scope: !801, inlinedAt: !2304)
!2563 = !DILocation(line: 1298, column: 59, scope: !801, inlinedAt: !2304)
!2564 = !DILocation(line: 1298, column: 48, scope: !801, inlinedAt: !2304)
!2565 = !DILocation(line: 1298, column: 29, scope: !801, inlinedAt: !2304)
!2566 = !DILocation(line: 1298, column: 42, scope: !801, inlinedAt: !2304)
!2567 = !DILocation(line: 1298, column: 46, scope: !801, inlinedAt: !2304)
!2568 = !DILocation(line: 1299, column: 26, scope: !801, inlinedAt: !2304)
!2569 = !DILocation(line: 286, column: 25, scope: !541, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1298, column: 5, scope: !801, inlinedAt: !2304)
!2571 = !DILocation(line: 286, column: 44, scope: !541, inlinedAt: !2570)
!2572 = !DILocation(line: 286, column: 59, scope: !541, inlinedAt: !2570)
!2573 = !DILocation(line: 290, column: 15, scope: !975, inlinedAt: !2570)
!2574 = !DILocation(line: 291, column: 20, scope: !977, inlinedAt: !2570)
!2575 = !DILocation(line: 290, column: 9, scope: !541, inlinedAt: !2570)
!2576 = !DILocation(line: 288, column: 26, scope: !541, inlinedAt: !2570)
!2577 = !DILocation(line: 1157, column: 16, scope: !801, inlinedAt: !2304)
!2578 = !DILocation(line: 303, column: 9, scope: !541, inlinedAt: !2570)
!2579 = !DILocation(line: 315, column: 28, scope: !541, inlinedAt: !2570)
!2580 = !DILocation(line: 304, column: 32, scope: !985, inlinedAt: !2570)
!2581 = !DILocation(line: 287, column: 26, scope: !541, inlinedAt: !2570)
!2582 = !DILocation(line: 1155, column: 16, scope: !801, inlinedAt: !2304)
!2583 = !DILocation(line: 304, column: 9, scope: !985, inlinedAt: !2570)
!2584 = !DILocation(line: 306, column: 33, scope: !990, inlinedAt: !2570)
!2585 = !DILocation(line: 306, column: 43, scope: !990, inlinedAt: !2570)
!2586 = !DILocation(line: 306, column: 9, scope: !990, inlinedAt: !2570)
!2587 = !DILocation(line: 315, column: 39, scope: !541, inlinedAt: !2570)
!2588 = !DILocation(line: 315, column: 37, scope: !541, inlinedAt: !2570)
!2589 = !DILocation(line: 287, column: 50, scope: !541, inlinedAt: !2570)
!2590 = !DILocation(line: 1156, column: 16, scope: !801, inlinedAt: !2304)
!2591 = !DILocation(line: 1301, column: 14, scope: !2592, inlinedAt: !2304)
!2592 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1301, column: 9)
!2593 = !DILocation(line: 1304, column: 9, scope: !2594, inlinedAt: !2304)
!2594 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1304, column: 9)
!2595 = !DILocation(line: 1302, column: 19, scope: !2592, inlinedAt: !2304)
!2596 = !DILocation(line: 1302, column: 19, scope: !2597, inlinedAt: !2304)
!2597 = !DILexicalBlockFile(scope: !2592, file: !1, discriminator: 1)
!2598 = !DILocation(line: 1302, column: 17, scope: !2599, inlinedAt: !2304)
!2599 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 4)
!2600 = !DILexicalBlockFile(scope: !2592, file: !1, discriminator: 3)
!2601 = !DILocation(line: 1302, column: 9, scope: !2592, inlinedAt: !2304)
!2602 = !DILocation(line: 1304, column: 9, scope: !2603, inlinedAt: !2304)
!2603 = !DILexicalBlockFile(scope: !2594, file: !1, discriminator: 7)
!2604 = !DILocation(line: 1304, column: 9, scope: !2605, inlinedAt: !2304)
!2605 = !DILexicalBlockFile(scope: !2594, file: !1, discriminator: 1)
!2606 = !DILocation(line: 1304, column: 9, scope: !2607, inlinedAt: !2304)
!2607 = !DILexicalBlockFile(scope: !2608, file: !1, discriminator: 4)
!2608 = !DILexicalBlockFile(scope: !2594, file: !1, discriminator: 2)
!2609 = !DILocation(line: 1304, column: 9, scope: !801, inlinedAt: !2304)
!2610 = !DILocation(line: 1306, column: 21, scope: !801, inlinedAt: !2304)
!2611 = !{!999, !874, i64 16}
!2612 = !DILocation(line: 1147, column: 25, scope: !801, inlinedAt: !2304)
!2613 = !DILocation(line: 1307, column: 21, scope: !801, inlinedAt: !2304)
!2614 = !{!999, !876, i64 8}
!2615 = !DILocation(line: 1148, column: 11, scope: !801, inlinedAt: !2304)
!2616 = !DILocation(line: 329, column: 9, scope: !1034, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1310, column: 14, scope: !801, inlinedAt: !2304)
!2618 = !DILocation(line: 341, column: 13, scope: !551, inlinedAt: !2617)
!2619 = !DILocation(line: 329, column: 9, scope: !551, inlinedAt: !2617)
!2620 = !DILocation(line: 330, column: 23, scope: !1039, inlinedAt: !2617)
!2621 = !DILocation(line: 326, column: 16, scope: !551, inlinedAt: !2617)
!2622 = !DILocation(line: 331, column: 37, scope: !1039, inlinedAt: !2617)
!2623 = !DILocation(line: 331, column: 9, scope: !1039, inlinedAt: !2617)
!2624 = !DILocation(line: 332, column: 5, scope: !1039, inlinedAt: !2617)
!2625 = !DILocation(line: 335, column: 9, scope: !1046, inlinedAt: !2617)
!2626 = !DILocation(line: 335, column: 9, scope: !551, inlinedAt: !2617)
!2627 = !DILocation(line: 336, column: 23, scope: !1049, inlinedAt: !2617)
!2628 = !DILocation(line: 336, column: 27, scope: !1049, inlinedAt: !2617)
!2629 = !DILocation(line: 336, column: 36, scope: !1049, inlinedAt: !2617)
!2630 = !DILocation(line: 337, column: 37, scope: !1049, inlinedAt: !2617)
!2631 = !DILocation(line: 337, column: 9, scope: !1049, inlinedAt: !2617)
!2632 = !DILocation(line: 338, column: 5, scope: !1049, inlinedAt: !2617)
!2633 = !DILocation(line: 341, column: 17, scope: !551, inlinedAt: !2617)
!2634 = !DILocation(line: 1316, column: 9, scope: !2635, inlinedAt: !2304)
!2635 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1316, column: 9)
!2636 = !DILocation(line: 1316, column: 9, scope: !801, inlinedAt: !2304)
!2637 = !DILocation(line: 1317, column: 9, scope: !2638, inlinedAt: !2304)
!2638 = !DILexicalBlockFile(scope: !2639, file: !1, discriminator: 1)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 1317, column: 9)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 1316, column: 21)
!2641 = !DILocation(line: 1317, column: 9, scope: !2642, inlinedAt: !2304)
!2642 = !DILexicalBlockFile(scope: !2643, file: !1, discriminator: 3)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 1317, column: 9)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 1317, column: 9)
!2645 = !DILocation(line: 1318, column: 20, scope: !2640, inlinedAt: !2304)
!2646 = !DILocation(line: 1317, column: 9, scope: !2647, inlinedAt: !2304)
!2647 = !DILexicalBlockFile(scope: !2648, file: !1, discriminator: 4)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 1317, column: 9)
!2649 = !DILocation(line: 1317, column: 9, scope: !2650, inlinedAt: !2304)
!2650 = !DILexicalBlockFile(scope: !2651, file: !1, discriminator: 2)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 1317, column: 9)
!2652 = !DILocation(line: 1317, column: 9, scope: !2644, inlinedAt: !2304)
!2653 = !DILocation(line: 1319, column: 5, scope: !2640, inlinedAt: !2304)
!2654 = !DILocation(line: 1321, column: 9, scope: !801, inlinedAt: !2304)
!2655 = !DILocation(line: 1322, column: 18, scope: !2656, inlinedAt: !2304)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 1321, column: 19)
!2657 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1321, column: 9)
!2658 = !DILocation(line: 1327, column: 20, scope: !2659, inlinedAt: !2304)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !1, line: 1327, column: 13)
!2660 = !DILocation(line: 1327, column: 13, scope: !2656, inlinedAt: !2304)
!2661 = !DILocation(line: 1330, column: 14, scope: !801, inlinedAt: !2304)
!2662 = !DILocation(line: 1335, column: 16, scope: !2663, inlinedAt: !2304)
!2663 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1335, column: 9)
!2664 = !DILocation(line: 1335, column: 9, scope: !801, inlinedAt: !2304)
!2665 = !DILocation(line: 1337, column: 5, scope: !2666, inlinedAt: !2304)
!2666 = !DILexicalBlockFile(scope: !2667, file: !1, discriminator: 1)
!2667 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1337, column: 5)
!2668 = !DILocation(line: 1337, column: 5, scope: !2669, inlinedAt: !2304)
!2669 = !DILexicalBlockFile(scope: !2670, file: !1, discriminator: 3)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1337, column: 5)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 1337, column: 5)
!2672 = !DILocation(line: 1338, column: 16, scope: !801, inlinedAt: !2304)
!2673 = !DILocation(line: 1337, column: 5, scope: !2674, inlinedAt: !2304)
!2674 = !DILexicalBlockFile(scope: !2675, file: !1, discriminator: 4)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1337, column: 5)
!2676 = !DILocation(line: 1337, column: 5, scope: !2677, inlinedAt: !2304)
!2677 = !DILexicalBlockFile(scope: !2678, file: !1, discriminator: 2)
!2678 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 1337, column: 5)
!2679 = !DILocation(line: 1337, column: 5, scope: !2671, inlinedAt: !2304)
!2680 = !DILocation(line: 1340, column: 9, scope: !801, inlinedAt: !2304)
!2681 = !DILocation(line: 1341, column: 9, scope: !2682, inlinedAt: !2304)
!2682 = !DILexicalBlockFile(scope: !2683, file: !1, discriminator: 1)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 1341, column: 9)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 1340, column: 21)
!2685 = distinct !DILexicalBlock(scope: !801, file: !1, line: 1340, column: 9)
!2686 = !DILocation(line: 1341, column: 9, scope: !2687, inlinedAt: !2304)
!2687 = !DILexicalBlockFile(scope: !2688, file: !1, discriminator: 3)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 1341, column: 9)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 1341, column: 9)
!2690 = !DILocation(line: 1342, column: 20, scope: !2684, inlinedAt: !2304)
!2691 = !DILocation(line: 1341, column: 9, scope: !2692, inlinedAt: !2304)
!2692 = !DILexicalBlockFile(scope: !2693, file: !1, discriminator: 4)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 1341, column: 9)
!2694 = !DILocation(line: 1341, column: 9, scope: !2695, inlinedAt: !2304)
!2695 = !DILexicalBlockFile(scope: !2696, file: !1, discriminator: 2)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 1341, column: 9)
!2697 = !DILocation(line: 1341, column: 9, scope: !2689, inlinedAt: !2304)
!2698 = !DILocation(line: 1343, column: 5, scope: !2684, inlinedAt: !2304)
!2699 = !DILocation(line: 1345, column: 17, scope: !801, inlinedAt: !2304)
!2700 = !DILocation(line: 1345, column: 5, scope: !801, inlinedAt: !2304)
!2701 = !DILocation(line: 1348, column: 5, scope: !801, inlinedAt: !2304)
!2702 = !DILocation(line: 1349, column: 5, scope: !801, inlinedAt: !2304)
!2703 = !DILocation(line: 1350, column: 5, scope: !2704, inlinedAt: !2304)
!2704 = !DILexicalBlockFile(scope: !844, file: !1, discriminator: 1)
!2705 = !DILocation(line: 1350, column: 5, scope: !847, inlinedAt: !2304)
!2706 = !DILocation(line: 1350, column: 5, scope: !844, inlinedAt: !2304)
!2707 = !DILocation(line: 1350, column: 5, scope: !2708, inlinedAt: !2304)
!2708 = !DILexicalBlockFile(scope: !846, file: !1, discriminator: 4)
!2709 = !DILocation(line: 1350, column: 5, scope: !2710, inlinedAt: !2304)
!2710 = distinct !DILexicalBlock(scope: !846, file: !1, line: 1350, column: 5)
!2711 = !DILocation(line: 1350, column: 5, scope: !846, inlinedAt: !2304)
!2712 = !DILocation(line: 1350, column: 5, scope: !2713, inlinedAt: !2304)
!2713 = !DILexicalBlockFile(scope: !2710, file: !1, discriminator: 6)
!2714 = !DILocation(line: 1351, column: 5, scope: !2715, inlinedAt: !2304)
!2715 = !DILexicalBlockFile(scope: !849, file: !1, discriminator: 1)
!2716 = !DILocation(line: 1351, column: 5, scope: !852, inlinedAt: !2304)
!2717 = !DILocation(line: 1351, column: 5, scope: !849, inlinedAt: !2304)
!2718 = !DILocation(line: 1351, column: 5, scope: !2719, inlinedAt: !2304)
!2719 = !DILexicalBlockFile(scope: !851, file: !1, discriminator: 4)
!2720 = !DILocation(line: 1351, column: 5, scope: !2721, inlinedAt: !2304)
!2721 = distinct !DILexicalBlock(scope: !851, file: !1, line: 1351, column: 5)
!2722 = !DILocation(line: 1351, column: 5, scope: !851, inlinedAt: !2304)
!2723 = !DILocation(line: 1351, column: 5, scope: !2724, inlinedAt: !2304)
!2724 = !DILexicalBlockFile(scope: !2721, file: !1, discriminator: 6)
!2725 = !DILocation(line: 715, column: 30, scope: !745, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1352, column: 5, scope: !801, inlinedAt: !2304)
!2727 = !DILocation(line: 717, column: 5, scope: !1972, inlinedAt: !2726)
!2728 = !DILocation(line: 717, column: 5, scope: !754, inlinedAt: !2726)
!2729 = !DILocation(line: 717, column: 5, scope: !751, inlinedAt: !2726)
!2730 = !DILocation(line: 717, column: 5, scope: !1978, inlinedAt: !2726)
!2731 = !DILocation(line: 717, column: 5, scope: !1980, inlinedAt: !2726)
!2732 = !DILocation(line: 717, column: 5, scope: !753, inlinedAt: !2726)
!2733 = !DILocation(line: 717, column: 5, scope: !1983, inlinedAt: !2726)
!2734 = !DILocation(line: 1352, column: 5, scope: !801, inlinedAt: !2304)
!2735 = !DILocation(line: 718, column: 5, scope: !1986, inlinedAt: !2726)
!2736 = !DILocation(line: 718, column: 5, scope: !759, inlinedAt: !2726)
!2737 = !DILocation(line: 718, column: 5, scope: !756, inlinedAt: !2726)
!2738 = !DILocation(line: 718, column: 5, scope: !1991, inlinedAt: !2726)
!2739 = !DILocation(line: 718, column: 5, scope: !1993, inlinedAt: !2726)
!2740 = !DILocation(line: 718, column: 5, scope: !758, inlinedAt: !2726)
!2741 = !DILocation(line: 718, column: 5, scope: !1996, inlinedAt: !2726)
!2742 = !DILocation(line: 1354, column: 1, scope: !801, inlinedAt: !2304)
!2743 = !DILocation(line: 1540, column: 9, scope: !2305)
!2744 = !DILocation(line: 1544, column: 53, scope: !2305)
!2745 = !DILocation(line: 1544, column: 62, scope: !2305)
!2746 = !DILocation(line: 12, column: 35, scope: !561, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1544, column: 9, scope: !2305)
!2748 = !DILocation(line: 13, column: 39, scope: !561, inlinedAt: !2747)
!2749 = !DILocation(line: 16, column: 32, scope: !1073, inlinedAt: !2747)
!2750 = !DILocation(line: 17, column: 22, scope: !1073, inlinedAt: !2747)
!2751 = !DILocation(line: 20, column: 22, scope: !1073, inlinedAt: !2747)
!2752 = !DILocation(line: 17, column: 9, scope: !1073, inlinedAt: !2747)
!2753 = !DILocation(line: 23, column: 9, scope: !1073, inlinedAt: !2747)
!2754 = !DILocation(line: 1544, column: 9, scope: !2305)
!2755 = !DILocation(line: 1547, column: 1, scope: !466)
!2756 = !DILocation(line: 51, column: 23, scope: !507)
!2757 = !DILocation(line: 51, column: 40, scope: !507)
!2758 = !DILocation(line: 51, column: 56, scope: !507)
!2759 = !DILocation(line: 52, column: 31, scope: !507)
!2760 = !DILocation(line: 55, column: 9, scope: !507)
!2761 = !DILocation(line: 54, column: 16, scope: !507)
!2762 = !DILocation(line: 58, column: 13, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 58, column: 13)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 57, column: 35)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !1, line: 57, column: 5)
!2766 = distinct !DILexicalBlock(scope: !507, file: !1, line: 57, column: 5)
!2767 = !DILocation(line: 58, column: 18, scope: !2763)
!2768 = !DILocation(line: 58, column: 13, scope: !2764)
!2769 = !DILocation(line: 60, column: 20, scope: !2764)
!2770 = !DILocation(line: 60, column: 20, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 4)
!2772 = !DILocation(line: 60, column: 20, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 5)
!2774 = !DILocation(line: 60, column: 20, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 6)
!2776 = !DILocation(line: 60, column: 20, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 1)
!2778 = !DILocation(line: 60, column: 20, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 3)
!2780 = !DILocation(line: 60, column: 20, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2782, file: !1, discriminator: 10)
!2782 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 9)
!2783 = !DILocation(line: 60, column: 20, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 2)
!2785 = !DILocation(line: 60, column: 20, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 12)
!2787 = !DILocation(line: 60, column: 20, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 14)
!2789 = !DILocation(line: 60, column: 20, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 15)
!2791 = !DILocation(line: 60, column: 20, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !1, discriminator: 21)
!2793 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 20)
!2794 = !DILocation(line: 60, column: 20, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 13)
!2796 = !DILocation(line: 60, column: 20, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 23)
!2798 = !DILocation(line: 60, column: 20, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 24)
!2800 = !DILocation(line: 60, column: 20, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2802, file: !1, discriminator: 30)
!2802 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 29)
!2803 = !DILocation(line: 60, column: 20, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2805, file: !1, discriminator: 32)
!2805 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 11)
!2806 = !DILocation(line: 54, column: 29, scope: !507)
!2807 = !DILocation(line: 61, column: 22, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 61, column: 13)
!2809 = !DILocation(line: 61, column: 13, scope: !2764)
!2810 = !DILocation(line: 69, column: 43, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 69, column: 13)
!2812 = !DILocation(line: 69, column: 55, scope: !2811)
!2813 = !DILocation(line: 69, column: 25, scope: !2811)
!2814 = !DILocation(line: 69, column: 13, scope: !2764)
!2815 = !DILocation(line: 70, column: 26, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 69, column: 61)
!2817 = !DILocation(line: 70, column: 13, scope: !2816)
!2818 = !DILocation(line: 72, column: 13, scope: !2816)
!2819 = !DILocation(line: 74, column: 35, scope: !2764)
!2820 = !DILocation(line: 74, column: 40, scope: !2764)
!2821 = !DILocation(line: 57, column: 18, scope: !2765)
!2822 = !DILocation(line: 57, column: 31, scope: !2765)
!2823 = !DILocation(line: 76, column: 13, scope: !507)
!2824 = !DILocation(line: 77, column: 5, scope: !507)
!2825 = !DILocation(line: 78, column: 1, scope: !507)
!2826 = !DILocation(line: 666, column: 21, scope: !614)
!2827 = !DILocation(line: 666, column: 39, scope: !614)
!2828 = !DILocation(line: 668, column: 5, scope: !614)
!2829 = !DILocation(line: 670, column: 37, scope: !622)
!2830 = !DILocation(line: 670, column: 23, scope: !622)
!2831 = !DILocation(line: 672, column: 55, scope: !622)
!2832 = !{!2833, !876, i64 0}
!2833 = !{!"lconv", !876, i64 0, !876, i64 8, !876, i64 16, !876, i64 24, !876, i64 32, !876, i64 40, !876, i64 48, !876, i64 56, !876, i64 64, !876, i64 72, !874, i64 80, !874, i64 81, !874, i64 82, !874, i64 83, !874, i64 84, !874, i64 85, !874, i64 86, !874, i64 87, !874, i64 88, !874, i64 89, !874, i64 90, !874, i64 91, !874, i64 92, !874, i64 93}
!2834 = !DILocation(line: 671, column: 38, scope: !622)
!2835 = !DILocation(line: 671, column: 22, scope: !622)
!2836 = !DILocation(line: 671, column: 36, scope: !622)
!2837 = !DILocation(line: 674, column: 40, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !622, file: !1, line: 674, column: 13)
!2839 = !DILocation(line: 674, column: 13, scope: !622)
!2840 = !DILocation(line: 677, column: 55, scope: !622)
!2841 = !{!2833, !876, i64 8}
!2842 = !DILocation(line: 676, column: 38, scope: !622)
!2843 = !DILocation(line: 676, column: 22, scope: !622)
!2844 = !DILocation(line: 676, column: 36, scope: !622)
!2845 = !DILocation(line: 679, column: 40, scope: !655)
!2846 = !DILocation(line: 679, column: 13, scope: !622)
!2847 = !DILocation(line: 680, column: 13, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!2849 = !DILocation(line: 680, column: 13, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !653, file: !1, line: 680, column: 13)
!2851 = !DILocation(line: 680, column: 13, scope: !653)
!2852 = !DILocation(line: 680, column: 13, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2850, file: !1, discriminator: 3)
!2854 = !DILocation(line: 683, column: 46, scope: !622)
!2855 = !{!2833, !876, i64 16}
!2856 = !DILocation(line: 683, column: 22, scope: !622)
!2857 = !DILocation(line: 683, column: 31, scope: !622)
!2858 = !{!1974, !876, i64 16}
!2859 = !DILocation(line: 687, column: 38, scope: !623)
!2860 = !DILocation(line: 687, column: 22, scope: !623)
!2861 = !DILocation(line: 687, column: 36, scope: !623)
!2862 = !DILocation(line: 688, column: 38, scope: !623)
!2863 = !DILocation(line: 688, column: 22, scope: !623)
!2864 = !DILocation(line: 688, column: 36, scope: !623)
!2865 = !DILocation(line: 689, column: 27, scope: !659)
!2866 = !DILocation(line: 689, column: 14, scope: !659)
!2867 = !DILocation(line: 689, column: 45, scope: !659)
!2868 = !DILocation(line: 689, column: 41, scope: !659)
!2869 = !DILocation(line: 690, column: 13, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 1)
!2871 = !DILocation(line: 690, column: 13, scope: !657)
!2872 = !DILocation(line: 690, column: 13, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 4)
!2874 = !DILocation(line: 690, column: 13, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !661, file: !1, line: 690, column: 13)
!2876 = !DILocation(line: 690, column: 13, scope: !661)
!2877 = !DILocation(line: 690, column: 13, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2875, file: !1, discriminator: 6)
!2879 = !DILocation(line: 691, column: 13, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 1)
!2881 = !DILocation(line: 691, column: 13, scope: !667)
!2882 = !DILocation(line: 691, column: 13, scope: !664)
!2883 = !DILocation(line: 691, column: 13, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 4)
!2885 = !DILocation(line: 691, column: 13, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !666, file: !1, line: 691, column: 13)
!2887 = !DILocation(line: 691, column: 13, scope: !666)
!2888 = !DILocation(line: 691, column: 13, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2886, file: !1, discriminator: 6)
!2890 = !DILocation(line: 694, column: 22, scope: !623)
!2891 = !DILocation(line: 694, column: 31, scope: !623)
!2892 = !DILocation(line: 697, column: 9, scope: !623)
!2893 = !DILocation(line: 699, column: 38, scope: !623)
!2894 = !DILocation(line: 699, column: 22, scope: !623)
!2895 = !DILocation(line: 699, column: 36, scope: !623)
!2896 = !DILocation(line: 700, column: 38, scope: !623)
!2897 = !DILocation(line: 700, column: 22, scope: !623)
!2898 = !DILocation(line: 700, column: 36, scope: !623)
!2899 = !DILocation(line: 701, column: 27, scope: !671)
!2900 = !DILocation(line: 701, column: 14, scope: !671)
!2901 = !DILocation(line: 701, column: 45, scope: !671)
!2902 = !DILocation(line: 701, column: 41, scope: !671)
!2903 = !DILocation(line: 702, column: 13, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !669, file: !1, discriminator: 1)
!2905 = !DILocation(line: 702, column: 13, scope: !669)
!2906 = !DILocation(line: 702, column: 13, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 4)
!2908 = !DILocation(line: 702, column: 13, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !673, file: !1, line: 702, column: 13)
!2910 = !DILocation(line: 702, column: 13, scope: !673)
!2911 = !DILocation(line: 702, column: 13, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2909, file: !1, discriminator: 6)
!2913 = !DILocation(line: 703, column: 13, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!2915 = !DILocation(line: 703, column: 13, scope: !679)
!2916 = !DILocation(line: 703, column: 13, scope: !676)
!2917 = !DILocation(line: 703, column: 13, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 4)
!2919 = !DILocation(line: 703, column: 13, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !678, file: !1, line: 703, column: 13)
!2921 = !DILocation(line: 703, column: 13, scope: !678)
!2922 = !DILocation(line: 703, column: 13, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2920, file: !1, discriminator: 6)
!2924 = !DILocation(line: 706, column: 22, scope: !623)
!2925 = !DILocation(line: 706, column: 31, scope: !623)
!2926 = !DILocation(line: 707, column: 9, scope: !623)
!2927 = !DILocation(line: 712, column: 1, scope: !614)
!2928 = !DILocation(line: 426, column: 49, scope: !680)
!2929 = !DILocation(line: 434, column: 28, scope: !680)
!2930 = !DILocation(line: 434, column: 38, scope: !680)
!2931 = !DILocation(line: 434, column: 55, scope: !680)
!2932 = !DILocation(line: 503, column: 19, scope: !701)
!2933 = !DILocation(line: 434, column: 11, scope: !680)
!2934 = !DILocation(line: 434, column: 20, scope: !680)
!2935 = !{!2936, !873, i64 72}
!2936 = !{!"", !873, i64 0, !873, i64 8, !873, i64 16, !873, i64 24, !874, i64 32, !873, i64 40, !873, i64 48, !873, i64 56, !873, i64 64, !873, i64 72, !873, i64 80}
!2937 = !DILocation(line: 435, column: 11, scope: !680)
!2938 = !DILocation(line: 435, column: 22, scope: !680)
!2939 = !{!2936, !873, i64 0}
!2940 = !DILocation(line: 436, column: 11, scope: !680)
!2941 = !DILocation(line: 436, column: 20, scope: !680)
!2942 = !{!2936, !873, i64 8}
!2943 = !DILocation(line: 437, column: 23, scope: !680)
!2944 = !DILocation(line: 437, column: 37, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 1)
!2946 = !DILocation(line: 483, column: 69, scope: !680)
!2947 = !DILocation(line: 437, column: 11, scope: !680)
!2948 = !DILocation(line: 437, column: 21, scope: !680)
!2949 = !{!2936, !873, i64 56}
!2950 = !DILocation(line: 438, column: 11, scope: !680)
!2951 = !DILocation(line: 438, column: 23, scope: !680)
!2952 = !{!2936, !873, i64 64}
!2953 = !DILocation(line: 439, column: 11, scope: !680)
!2954 = !DILocation(line: 440, column: 11, scope: !680)
!2955 = !DILocation(line: 441, column: 11, scope: !680)
!2956 = !DILocation(line: 442, column: 11, scope: !680)
!2957 = !DILocation(line: 442, column: 18, scope: !680)
!2958 = !{!2936, !873, i64 40}
!2959 = !DILocation(line: 464, column: 21, scope: !680)
!2960 = !DILocation(line: 440, column: 22, scope: !680)
!2961 = !DILocation(line: 464, column: 5, scope: !680)
!2962 = !DILocation(line: 467, column: 22, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !680, file: !1, line: 464, column: 27)
!2964 = !DILocation(line: 468, column: 33, scope: !2963)
!2965 = !DILocation(line: 468, column: 22, scope: !2963)
!2966 = !DILocation(line: 468, column: 20, scope: !2963)
!2967 = !{!2936, !874, i64 32}
!2968 = !DILocation(line: 469, column: 9, scope: !2963)
!2969 = !DILocation(line: 471, column: 22, scope: !2963)
!2970 = !DILocation(line: 472, column: 33, scope: !2963)
!2971 = !DILocation(line: 472, column: 22, scope: !2963)
!2972 = !DILocation(line: 472, column: 20, scope: !2963)
!2973 = !DILocation(line: 473, column: 9, scope: !2963)
!2974 = !DILocation(line: 476, column: 23, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2963, file: !1, line: 476, column: 13)
!2976 = !DILocation(line: 476, column: 13, scope: !2963)
!2977 = !DILocation(line: 477, column: 26, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 476, column: 31)
!2979 = !DILocation(line: 478, column: 24, scope: !2978)
!2980 = !DILocation(line: 479, column: 9, scope: !2978)
!2981 = !DILocation(line: 483, column: 37, scope: !680)
!2982 = !DILocation(line: 483, column: 44, scope: !680)
!2983 = !DILocation(line: 483, column: 61, scope: !680)
!2984 = !DILocation(line: 483, column: 79, scope: !680)
!2985 = !DILocation(line: 431, column: 16, scope: !680)
!2986 = !DILocation(line: 488, column: 17, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !680, file: !1, line: 488, column: 9)
!2988 = !DILocation(line: 488, column: 27, scope: !2987)
!2989 = !DILocation(line: 488, column: 34, scope: !2987)
!2990 = !DILocation(line: 488, column: 45, scope: !2987)
!2991 = !DILocation(line: 488, column: 51, scope: !2987)
!2992 = !DILocation(line: 488, column: 9, scope: !680)
!2993 = !DILocation(line: 489, column: 37, scope: !2987)
!2994 = !DILocation(line: 489, column: 43, scope: !2987)
!2995 = !DILocation(line: 489, column: 15, scope: !2987)
!2996 = !DILocation(line: 489, column: 27, scope: !2987)
!2997 = !{!2936, !873, i64 80}
!2998 = !DILocation(line: 489, column: 9, scope: !2987)
!2999 = !DILocation(line: 491, column: 15, scope: !2987)
!3000 = !DILocation(line: 491, column: 27, scope: !2987)
!3001 = !DILocation(line: 503, column: 35, scope: !701)
!3002 = !DILocation(line: 493, column: 24, scope: !702)
!3003 = !DILocation(line: 493, column: 9, scope: !680)
!3004 = !DILocation(line: 499, column: 9, scope: !701)
!3005 = !DILocation(line: 504, column: 21, scope: !701)
!3006 = !DILocation(line: 504, column: 39, scope: !701)
!3007 = !DILocation(line: 499, column: 17, scope: !701)
!3008 = !DILocation(line: 500, column: 34, scope: !701)
!3009 = !DILocation(line: 505, column: 20, scope: !701)
!3010 = !DILocation(line: 505, column: 20, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !701, file: !1, discriminator: 1)
!3012 = !DILocation(line: 505, column: 18, scope: !701)
!3013 = !DILocation(line: 506, column: 5, scope: !702)
!3014 = !DILocation(line: 545, column: 34, scope: !680)
!3015 = !DILocation(line: 500, column: 15, scope: !701)
!3016 = !DILocation(line: 500, column: 32, scope: !701)
!3017 = !DILocation(line: 512, column: 25, scope: !680)
!3018 = !DILocation(line: 513, column: 50, scope: !680)
!3019 = !DILocation(line: 512, column: 31, scope: !680)
!3020 = !DILocation(line: 432, column: 16, scope: !680)
!3021 = !DILocation(line: 514, column: 19, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !680, file: !1, line: 514, column: 9)
!3023 = !DILocation(line: 514, column: 9, scope: !680)
!3024 = !DILocation(line: 516, column: 25, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !1, line: 514, column: 24)
!3026 = !DILocation(line: 516, column: 9, scope: !3025)
!3027 = !DILocation(line: 518, column: 30, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3025, file: !1, line: 516, column: 32)
!3029 = !{!2936, !873, i64 24}
!3030 = !DILocation(line: 519, column: 13, scope: !3028)
!3031 = !DILocation(line: 521, column: 42, scope: !3028)
!3032 = !DILocation(line: 521, column: 30, scope: !3028)
!3033 = !DILocation(line: 522, column: 42, scope: !3028)
!3034 = !DILocation(line: 522, column: 30, scope: !3028)
!3035 = !DILocation(line: 523, column: 13, scope: !3028)
!3036 = !DILocation(line: 525, column: 30, scope: !3028)
!3037 = !{!2936, !873, i64 16}
!3038 = !DILocation(line: 526, column: 13, scope: !3028)
!3039 = !DILocation(line: 528, column: 30, scope: !3028)
!3040 = !DILocation(line: 529, column: 13, scope: !3028)
!3041 = !DILocation(line: 532, column: 30, scope: !3028)
!3042 = !DILocation(line: 534, column: 13, scope: !3028)
!3043 = !DILocation(line: 538, column: 15, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !680, file: !1, line: 538, column: 9)
!3045 = !DILocation(line: 538, column: 9, scope: !3044)
!3046 = !DILocation(line: 538, column: 26, scope: !3044)
!3047 = !DILocation(line: 538, column: 35, scope: !3044)
!3048 = !DILocation(line: 538, column: 29, scope: !3044)
!3049 = !DILocation(line: 538, column: 46, scope: !3044)
!3050 = !DILocation(line: 538, column: 55, scope: !3044)
!3051 = !DILocation(line: 538, column: 49, scope: !3044)
!3052 = !DILocation(line: 538, column: 9, scope: !680)
!3053 = !DILocation(line: 539, column: 20, scope: !3044)
!3054 = !DILocation(line: 539, column: 20, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3044, file: !1, discriminator: 1)
!3056 = !DILocation(line: 539, column: 18, scope: !3044)
!3057 = !DILocation(line: 539, column: 9, scope: !3044)
!3058 = !DILocation(line: 544, column: 18, scope: !680)
!3059 = !DILocation(line: 545, column: 59, scope: !680)
!3060 = !DILocation(line: 541, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !680, file: !1, line: 541, column: 9)
!3062 = !DILocation(line: 541, column: 9, scope: !680)
!3063 = !DILocation(line: 542, column: 20, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 9)
!3065 = !DILocation(line: 542, column: 20, scope: !3061)
!3066 = !DILocation(line: 542, column: 20, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 10)
!3068 = !DILocation(line: 542, column: 20, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 2)
!3070 = !DILocation(line: 542, column: 20, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 5)
!3072 = !DILocation(line: 542, column: 20, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3074, file: !1, discriminator: 8)
!3074 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 3)
!3075 = !DILocation(line: 542, column: 20, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 13)
!3077 = !DILocation(line: 542, column: 20, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3061, file: !1, discriminator: 16)
!3079 = !DILocation(line: 542, column: 18, scope: !3061)
!3080 = !DILocation(line: 542, column: 9, scope: !3061)
!3081 = !DILocation(line: 544, column: 37, scope: !680)
!3082 = !DILocation(line: 544, column: 29, scope: !680)
!3083 = !DILocation(line: 544, column: 52, scope: !680)
!3084 = !DILocation(line: 544, column: 44, scope: !680)
!3085 = !DILocation(line: 545, column: 15, scope: !680)
!3086 = !DILocation(line: 544, column: 61, scope: !680)
!3087 = !DILocation(line: 545, column: 26, scope: !680)
!3088 = !DILocation(line: 545, column: 51, scope: !680)
!3089 = !DILocation(line: 546, column: 15, scope: !680)
!3090 = !DILocation(line: 545, column: 69, scope: !680)
!3091 = !DILocation(line: 546, column: 35, scope: !680)
!3092 = !DILocation(line: 546, column: 27, scope: !680)
!3093 = !DILocation(line: 544, column: 5, scope: !680)
!3094 = !DILocation(line: 554, column: 62, scope: !703)
!3095 = !DILocation(line: 561, column: 39, scope: !703)
!3096 = !DILocation(line: 561, column: 24, scope: !703)
!3097 = !DILocation(line: 562, column: 32, scope: !703)
!3098 = !DILocation(line: 562, column: 17, scope: !703)
!3099 = !DILocation(line: 565, column: 15, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !703, file: !1, line: 565, column: 9)
!3101 = !DILocation(line: 565, column: 9, scope: !3100)
!3102 = !DILocation(line: 565, column: 9, scope: !703)
!3103 = !DILocation(line: 566, column: 37, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !1, line: 565, column: 27)
!3105 = !DILocation(line: 567, column: 37, scope: !3104)
!3106 = !DILocation(line: 566, column: 9, scope: !3104)
!3107 = !DILocation(line: 568, column: 30, scope: !3104)
!3108 = !DILocation(line: 568, column: 21, scope: !3104)
!3109 = !DILocation(line: 569, column: 5, scope: !3104)
!3110 = !DILocation(line: 570, column: 15, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !703, file: !1, line: 570, column: 9)
!3112 = !DILocation(line: 570, column: 22, scope: !3111)
!3113 = !DILocation(line: 570, column: 9, scope: !703)
!3114 = !DILocation(line: 571, column: 9, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3116, file: !1, discriminator: 1)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !1, line: 571, column: 9)
!3117 = distinct !DILexicalBlock(scope: !3111, file: !1, line: 570, column: 28)
!3118 = !DILocation(line: 571, column: 9, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3120, file: !1, discriminator: 3)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !1, line: 571, column: 9)
!3121 = distinct !DILexicalBlock(scope: !3116, file: !1, line: 571, column: 9)
!3122 = !DILocation(line: 572, column: 20, scope: !3117)
!3123 = !DILocation(line: 571, column: 9, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3125, file: !1, discriminator: 4)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !1, line: 571, column: 9)
!3126 = !DILocation(line: 571, column: 9, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3128, file: !1, discriminator: 2)
!3128 = distinct !DILexicalBlock(scope: !3121, file: !1, line: 571, column: 9)
!3129 = !DILocation(line: 571, column: 9, scope: !3121)
!3130 = !DILocation(line: 572, column: 17, scope: !3117)
!3131 = !DILocation(line: 573, column: 5, scope: !3117)
!3132 = !DILocation(line: 574, column: 15, scope: !730)
!3133 = !DILocation(line: 574, column: 9, scope: !730)
!3134 = !DILocation(line: 574, column: 9, scope: !703)
!3135 = !DILocation(line: 575, column: 47, scope: !729)
!3136 = !DILocation(line: 575, column: 63, scope: !729)
!3137 = !DILocation(line: 575, column: 9, scope: !729)
!3138 = !DILocation(line: 578, column: 13, scope: !728)
!3139 = !DILocation(line: 587, column: 30, scope: !729)
!3140 = !DILocation(line: 580, column: 27, scope: !733)
!3141 = !DILocation(line: 578, column: 13, scope: !729)
!3142 = !DILocation(line: 581, column: 29, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !732, file: !1, discriminator: 4)
!3144 = !DILocation(line: 581, column: 29, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !732, file: !1, discriminator: 5)
!3146 = !DILocation(line: 581, column: 29, scope: !732)
!3147 = !DILocation(line: 582, column: 21, scope: !732)
!3148 = !DILocation(line: 584, column: 17, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !1, discriminator: 4)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !1, line: 584, column: 17)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !1, line: 584, column: 17)
!3152 = distinct !DILexicalBlock(scope: !732, file: !1, line: 584, column: 17)
!3153 = !DILocation(line: 579, column: 24, scope: !727)
!3154 = !DILocation(line: 580, column: 13, scope: !734)
!3155 = !DILocation(line: 581, column: 29, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !732, file: !1, discriminator: 1)
!3157 = !DILocation(line: 581, column: 25, scope: !732)
!3158 = !DILocation(line: 584, column: 17, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3160, file: !1, discriminator: 2)
!3160 = distinct !DILexicalBlock(scope: !3151, file: !1, line: 584, column: 17)
!3161 = !DILocation(line: 584, column: 17, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3163, file: !1, discriminator: 3)
!3163 = distinct !DILexicalBlock(scope: !3151, file: !1, line: 584, column: 17)
!3164 = !DILocation(line: 580, column: 35, scope: !733)
!3165 = !DILocation(line: 580, column: 46, scope: !733)
!3166 = !DILocation(line: 587, column: 21, scope: !729)
!3167 = !DILocation(line: 588, column: 5, scope: !729)
!3168 = !DILocation(line: 589, column: 15, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !703, file: !1, line: 589, column: 9)
!3170 = !DILocation(line: 589, column: 9, scope: !3169)
!3171 = !DILocation(line: 589, column: 9, scope: !703)
!3172 = !DILocation(line: 590, column: 37, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 589, column: 27)
!3174 = !DILocation(line: 591, column: 37, scope: !3173)
!3175 = !DILocation(line: 590, column: 9, scope: !3173)
!3176 = !DILocation(line: 592, column: 30, scope: !3173)
!3177 = !DILocation(line: 592, column: 21, scope: !3173)
!3178 = !DILocation(line: 593, column: 5, scope: !3173)
!3179 = !DILocation(line: 596, column: 15, scope: !737)
!3180 = !DILocation(line: 596, column: 24, scope: !737)
!3181 = !DILocation(line: 596, column: 9, scope: !703)
!3182 = !DILocation(line: 599, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !736, file: !1, line: 599, column: 13)
!3184 = !DILocation(line: 599, column: 13, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3183, file: !1, discriminator: 2)
!3186 = !DILocation(line: 599, column: 13, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3188, file: !1, discriminator: 4)
!3188 = !DILexicalBlockFile(scope: !3183, file: !1, discriminator: 3)
!3189 = !DILocation(line: 599, column: 13, scope: !736)
!3190 = !DILocation(line: 601, column: 19, scope: !736)
!3191 = !DILocation(line: 602, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !736, file: !1, line: 602, column: 13)
!3193 = !DILocation(line: 601, column: 19, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 1)
!3195 = !DILocation(line: 601, column: 19, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 3)
!3197 = !DILocation(line: 601, column: 19, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 4)
!3199 = !DILocation(line: 601, column: 19, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !736, file: !1, discriminator: 2)
!3201 = !DILocation(line: 598, column: 15, scope: !736)
!3202 = !DILocation(line: 602, column: 36, scope: !3192)
!3203 = !DILocation(line: 602, column: 13, scope: !736)
!3204 = !DILocation(line: 603, column: 23, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3192, file: !1, line: 602, column: 44)
!3206 = !DILocation(line: 604, column: 25, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3205, file: !1, line: 604, column: 17)
!3208 = !DILocation(line: 604, column: 17, scope: !3205)
!3209 = !DILocation(line: 608, column: 25, scope: !736)
!3210 = !DILocation(line: 608, column: 41, scope: !736)
!3211 = !DILocation(line: 609, column: 23, scope: !736)
!3212 = !{!2936, !873, i64 48}
!3213 = !DILocation(line: 610, column: 27, scope: !736)
!3214 = !DILocation(line: 610, column: 32, scope: !736)
!3215 = !DILocation(line: 610, column: 25, scope: !736)
!3216 = !DILocation(line: 611, column: 23, scope: !736)
!3217 = !DILocation(line: 611, column: 39, scope: !736)
!3218 = !DILocation(line: 612, column: 25, scope: !736)
!3219 = !DILocation(line: 612, column: 43, scope: !736)
!3220 = !DILocation(line: 607, column: 13, scope: !736)
!3221 = !DILocation(line: 563, column: 16, scope: !703)
!3222 = !DILocation(line: 613, column: 15, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !736, file: !1, line: 613, column: 13)
!3224 = !DILocation(line: 613, column: 13, scope: !736)
!3225 = !DILocation(line: 616, column: 13, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !736, file: !1, line: 616, column: 13)
!3227 = !DILocation(line: 616, column: 36, scope: !3226)
!3228 = !DILocation(line: 616, column: 13, scope: !736)
!3229 = !DILocation(line: 617, column: 13, scope: !3226)
!3230 = !DILocation(line: 618, column: 24, scope: !736)
!3231 = !DILocation(line: 618, column: 15, scope: !736)
!3232 = !DILocation(line: 560, column: 16, scope: !703)
!3233 = !DILocation(line: 620, column: 9, scope: !740)
!3234 = !DILocation(line: 632, column: 26, scope: !703)
!3235 = !DILocation(line: 622, column: 23, scope: !743)
!3236 = !DILocation(line: 620, column: 9, scope: !703)
!3237 = !DILocation(line: 623, column: 25, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 1)
!3239 = !DILocation(line: 629, column: 13, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3241, file: !1, discriminator: 2)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 629, column: 13)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !1, line: 629, column: 13)
!3243 = distinct !DILexicalBlock(scope: !742, file: !1, line: 629, column: 13)
!3244 = !DILocation(line: 629, column: 13, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3246, file: !1, discriminator: 4)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 629, column: 13)
!3247 = !DILocation(line: 623, column: 25, scope: !742)
!3248 = !DILocation(line: 623, column: 25, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 4)
!3250 = !DILocation(line: 624, column: 17, scope: !742)
!3251 = !DILocation(line: 625, column: 19, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !742, file: !1, line: 625, column: 17)
!3253 = !DILocation(line: 625, column: 17, scope: !742)
!3254 = !DILocation(line: 629, column: 13, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3256, file: !1, discriminator: 3)
!3256 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 629, column: 13)
!3257 = !DILocation(line: 622, column: 31, scope: !743)
!3258 = !DILocation(line: 622, column: 50, scope: !743)
!3259 = !DILocation(line: 621, column: 20, scope: !739)
!3260 = !DILocation(line: 622, column: 9, scope: !744)
!3261 = !DILocation(line: 623, column: 25, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !742, file: !1, discriminator: 5)
!3263 = !DILocation(line: 623, column: 21, scope: !742)
!3264 = !DILocation(line: 629, column: 13, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3243, file: !1, discriminator: 1)
!3266 = !DILocation(line: 629, column: 13, scope: !3242)
!3267 = !DILocation(line: 626, column: 33, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3252, file: !1, line: 625, column: 26)
!3269 = !DILocation(line: 626, column: 17, scope: !3268)
!3270 = !DILocation(line: 632, column: 13, scope: !703)
!3271 = !DILocation(line: 632, column: 17, scope: !703)
!3272 = !DILocation(line: 634, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !703, file: !1, line: 634, column: 9)
!3274 = !DILocation(line: 634, column: 9, scope: !3273)
!3275 = !DILocation(line: 634, column: 9, scope: !703)
!3276 = !DILocation(line: 636, column: 21, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 634, column: 26)
!3278 = !DILocation(line: 637, column: 21, scope: !3277)
!3279 = !DILocation(line: 635, column: 9, scope: !3277)
!3280 = !DILocation(line: 638, column: 30, scope: !3277)
!3281 = !DILocation(line: 638, column: 21, scope: !3277)
!3282 = !DILocation(line: 639, column: 15, scope: !3277)
!3283 = !DILocation(line: 640, column: 5, scope: !3277)
!3284 = !DILocation(line: 644, column: 37, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !1, line: 642, column: 28)
!3286 = distinct !DILexicalBlock(scope: !703, file: !1, line: 642, column: 9)
!3287 = !DILocation(line: 642, column: 15, scope: !3286)
!3288 = !DILocation(line: 642, column: 9, scope: !3286)
!3289 = !DILocation(line: 642, column: 9, scope: !703)
!3290 = !DILocation(line: 644, column: 21, scope: !3285)
!3291 = !DILocation(line: 643, column: 9, scope: !3285)
!3292 = !DILocation(line: 646, column: 30, scope: !3285)
!3293 = !DILocation(line: 646, column: 21, scope: !3285)
!3294 = !DILocation(line: 648, column: 5, scope: !3285)
!3295 = !DILocation(line: 652, column: 37, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !1, line: 650, column: 27)
!3297 = distinct !DILexicalBlock(scope: !703, file: !1, line: 650, column: 9)
!3298 = !DILocation(line: 650, column: 15, scope: !3297)
!3299 = !DILocation(line: 650, column: 9, scope: !3297)
!3300 = !DILocation(line: 650, column: 9, scope: !703)
!3301 = !DILocation(line: 651, column: 37, scope: !3296)
!3302 = !DILocation(line: 651, column: 9, scope: !3296)
!3303 = !DILocation(line: 654, column: 30, scope: !3296)
!3304 = !DILocation(line: 654, column: 21, scope: !3296)
!3305 = !DILocation(line: 655, column: 5, scope: !3296)
!3306 = !DILocation(line: 657, column: 1, scope: !703)
!3307 = !DILocation(line: 401, column: 24, scope: !790)
!3308 = !DILocation(line: 401, column: 38, scope: !790)
!3309 = !DILocation(line: 401, column: 54, scope: !790)
!3310 = !DILocation(line: 402, column: 26, scope: !790)
!3311 = !DILocation(line: 402, column: 44, scope: !790)
!3312 = !DILocation(line: 406, column: 15, scope: !790)
!3313 = !DILocation(line: 406, column: 20, scope: !790)
!3314 = !DILocation(line: 406, column: 23, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 2)
!3316 = !DILocation(line: 411, column: 31, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 1)
!3318 = !DILocation(line: 406, column: 23, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 4)
!3320 = !DILocation(line: 406, column: 23, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 7)
!3322 = !DILocation(line: 406, column: 23, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 6)
!3324 = !DILocation(line: 406, column: 23, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 8)
!3326 = !DILocation(line: 406, column: 23, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 9)
!3328 = !DILocation(line: 406, column: 23, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 5)
!3330 = !DILocation(line: 406, column: 23, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 15)
!3332 = !DILocation(line: 406, column: 23, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 16)
!3334 = !DILocation(line: 406, column: 23, scope: !790)
!3335 = !DILocation(line: 406, column: 23, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !3337, file: !1, discriminator: 13)
!3337 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 12)
!3338 = !DILocation(line: 406, column: 23, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !1, discriminator: 35)
!3340 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 14)
!3341 = !DILocation(line: 406, column: 5, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 3)
!3343 = !DILocation(line: 407, column: 9, scope: !790)
!3344 = !DILocation(line: 406, column: 23, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 18)
!3346 = !DILocation(line: 406, column: 23, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3348, file: !1, discriminator: 24)
!3348 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 23)
!3349 = !DILocation(line: 406, column: 23, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 27)
!3351 = !DILocation(line: 406, column: 23, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3353, file: !1, discriminator: 33)
!3353 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 32)
!3354 = !DILocation(line: 404, column: 16, scope: !790)
!3355 = !DILocation(line: 411, column: 31, scope: !3342)
!3356 = !DILocation(line: 411, column: 31, scope: !3323)
!3357 = !DILocation(line: 411, column: 31, scope: !790)
!3358 = !DILocation(line: 411, column: 31, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !1, discriminator: 12)
!3360 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 11)
!3361 = !DILocation(line: 411, column: 31, scope: !3319)
!3362 = !DILocation(line: 411, column: 31, scope: !3340)
!3363 = !DILocation(line: 411, column: 31, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 17)
!3365 = !DILocation(line: 411, column: 31, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3367, file: !1, discriminator: 23)
!3367 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 22)
!3368 = !DILocation(line: 411, column: 31, scope: !3331)
!3369 = !DILocation(line: 411, column: 31, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 26)
!3371 = !DILocation(line: 411, column: 31, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3373, file: !1, discriminator: 32)
!3373 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 31)
!3374 = !DILocation(line: 411, column: 65, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3376, file: !1, discriminator: 34)
!3376 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 13)
!3377 = !DILocation(line: 411, column: 28, scope: !3315)
!3378 = !DILocation(line: 411, column: 18, scope: !790)
!3379 = !DILocation(line: 414, column: 9, scope: !790)
!3380 = !DILocation(line: 417, column: 24, scope: !790)
!3381 = !DILocation(line: 417, column: 18, scope: !790)
!3382 = !DILocation(line: 418, column: 1, scope: !790)
