; ModuleID = './MultiSource.Benchmarks.MallocBench/61.gs.ztype.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@osp_nargs = external global [6 x %struct.ref_s*], align 16
@osp = external global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@dstack = external global [0 x %struct.ref_s], align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"operator %lx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@ztype_op_init.my_defs = internal global [15 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvi }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvlit }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvn }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvr }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvrs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvx }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.ref_s*)* @zexecuteonly }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.ref_s*)* @znoaccess }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.ref_s*)* @zrcheck }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zreadonly }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @ztypenumber }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zwcheck }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zxcheck }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"1cvi\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"1cvlit\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1cvn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1cvr\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"3cvrs\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"2cvs\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1cvx\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"1executeonly\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1noaccess\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"1rcheck\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"1readonly\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"1.typenumber\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"1wcheck\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"1xcheck\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ztypenumber(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp sge i32 %shr, 16
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 255
  %shr6 = ashr i32 %and5, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr6, %cond.false ]
  %conv7 = sext i32 %cond to i64
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv7, i64* %intval, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 20, i16* %type_attrs8, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @zcvlit(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %4)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %call, %cond.true ], [ %5, %cond.false ]
  store %struct.ref_s* %cond, %struct.ref_s** %aop, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %7 to i32
  %and5 = and i32 %conv4, -2
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %type_attrs3, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct.ref_s* @dict_access_ref(%struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcvx(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %aop = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %4)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %call, %cond.true ], [ %5, %cond.false ]
  store %struct.ref_s* %cond, %struct.ref_s** %aop, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %7 to i32
  %or = or i32 %conv4, 1
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %type_attrs3, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @zxcheck(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %4)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %call, %cond.true ], [ %5, %cond.false ]
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cond, i32 0, i32 1
  %6 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, 1
  %tobool = icmp ne i32 %and5, 0
  %cond6 = select i1 %tobool, i32 1, i32 0
  %conv7 = trunc i32 %cond6 to i16
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv7, i16* %index, align 2
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  store i16 4, i16* %type_attrs8, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @zexecuteonly(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 2
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @access_check(%struct.ref_s* %4, i32 2, i32 1)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @access_check(%struct.ref_s* %op, i32 %access, i32 %modify) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %access.addr = alloca i32, align 4
  %modify.addr = alloca i32, align 4
  %aop = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 %access, i32* %access.addr, align 4
  store i32 %modify, i32* %modify.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %aop, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 10, label %sw.bb.1
    i32 13, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %3)
  store %struct.ref_s* %call, %struct.ref_s** %aop, align 8
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1
  %4 = load i32, i32* %modify.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %5 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %6 to i32
  %neg = xor i32 %conv3, -1
  %7 = load i32, i32* %access.addr, align 4
  %and4 = and i32 %neg, %7
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %9 to i32
  %and9 = and i32 %conv8, -771
  %conv10 = trunc i32 %and9 to i16
  store i16 %conv10, i16* %type_attrs7, align 2
  %10 = load i32, i32* %access.addr, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs11, align 2
  %conv12 = zext i16 %12 to i32
  %or = or i32 %conv12, %10
  %conv13 = trunc i32 %or to i16
  store i16 %conv13, i16* %type_attrs11, align 2
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %13 = load %struct.ref_s*, %struct.ref_s** %aop, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %14 to i32
  %15 = load i32, i32* %access.addr, align 4
  %and16 = and i32 %conv15, %15
  %16 = load i32, i32* %access.addr, align 4
  %cmp = icmp eq i32 %and16, %16
  %conv17 = zext i1 %cmp to i32
  store i32 %conv17, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then.6, %sw.default
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @znoaccess(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @access_check(%struct.ref_s* %0, i32 0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @zreadonly(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @access_check(%struct.ref_s* %0, i32 514, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @zrcheck(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @access_check(%struct.ref_s* %0, i32 512, i32 0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zwcheck(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @access_check(%struct.ref_s* %0, i32 256, i32 0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zcvi(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %fval = alloca float, align 4
  %st = alloca %struct.stream_s, align 8
  %nref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.1
    i32 13, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  store float %3, float* %fval, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %neg = xor i32 %conv4, -1
  %and5 = and i32 %neg, 512
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value6 to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv7 = zext i16 %9 to i32
  call void @sread_string(%struct.stream_s* %st, i8* %7, i32 %conv7)
  %call = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* %st, %struct.ref_s* %nref)
  store i32 %call, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 0
  %12 = load i8*, i8** %cptr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 1
  %13 = load i8*, i8** %endptr, align 8
  %cmp = icmp ult i8* %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %cptr12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 0
  %14 = load i8*, i8** %cptr12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %cptr12, align 8
  %15 = load i8, i8* %incdec.ptr, align 1
  %conv13 = zext i8 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %16 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %call14 = call i32 %16(%struct.stream_s* %st)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %call14, %cond.false ]
  %cmp15 = icmp ne i32 %cond, -1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end
  store i32 -18, i32* %retval
  br label %return

if.end.18:                                        ; preds = %cond.end
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %17 = load i16, i16* %type_attrs19, align 2
  %conv20 = zext i16 %17 to i32
  %and21 = and i32 %conv20, 255
  %shr22 = ashr i32 %and21, 2
  %cmp23 = icmp eq i32 %shr22, 5
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %19 = bitcast %struct.ref_s* %18 to i8*
  %20 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %realval28 = bitcast %union.v* %value27 to float*
  %21 = load float, float* %realval28, align 4
  store float %21, float* %fval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.26, %sw.bb.1
  %22 = load float, float* %fval, align 4
  %conv29 = fpext float %22 to double
  %cmp30 = fcmp ole double %conv29, 0xC1E0000000200000
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %23 = load float, float* %fval, align 4
  %conv32 = fpext float %23 to double
  %cmp33 = fcmp oge double %conv32, 0x41E0000000000000
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %sw.epilog
  store i32 -15, i32* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false
  %24 = load float, float* %fval, align 4
  %conv37 = fptosi float %24 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %intval = bitcast %union.v* %value38 to i64*
  store i64 %conv37, i64* %intval, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  store i16 20, i16* %type_attrs39, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.35, %if.then.25, %if.then.17, %if.then.9, %if.then, %sw.default, %sw.bb
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @sread_string(%struct.stream_s*, i8*, i32) #1

declare i32 @scan_number(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zcvn(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %exec = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %5 to i32
  %and9 = and i32 %conv8, 1
  store i32 %and9, i32* %exec, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv10 = zext i16 %9 to i32
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @name_ref(i8* %7, i32 %conv10, %struct.ref_s* %10, i32 1)
  store i32 %call, i32* %code, align 4
  %11 = load i32, i32* %code, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %13 = load i32, i32* %exec, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %15 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %15 to i32
  %or = or i32 %conv15, %13
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %type_attrs14, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @name_ref(i8*, i32, %struct.ref_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zcvr(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %st = alloca %struct.stream_s, align 8
  %nref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.4
    i32 13, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %conv1 = sitofp i64 %3 to float
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value2 to float*
  store float %conv1, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 44, i16* %type_attrs3, align 2
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.bb
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %7 to i32
  %neg = xor i32 %conv7, -1
  %and8 = and i32 %neg, 512
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.5
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %bytes = bitcast %union.v* %value9 to i8**
  %9 = load i8*, i8** %bytes, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 2
  %11 = load i16, i16* %size, align 2
  %conv10 = zext i16 %11 to i32
  call void @sread_string(%struct.stream_s* %st, i8* %9, i32 %conv10)
  %call = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* %st, %struct.ref_s* %nref)
  store i32 %call, i32* %code, align 4
  %12 = load i32, i32* %code, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 0
  %14 = load i8*, i8** %cptr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 1
  %15 = load i8*, i8** %endptr, align 8
  %cmp = icmp ult i8* %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %cptr15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 0
  %16 = load i8*, i8** %cptr15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cptr15, align 8
  %17 = load i8, i8* %incdec.ptr, align 1
  %conv16 = zext i8 %17 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %st, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %18 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %call17 = call i32 %18(%struct.stream_s* %st)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %call17, %cond.false ]
  %cmp18 = icmp ne i32 %cond, -1
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  store i32 -18, i32* %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %19 = load i16, i16* %type_attrs22, align 2
  %conv23 = zext i16 %19 to i32
  %and24 = and i32 %conv23, 255
  %shr25 = ashr i32 %and24, 2
  %cmp26 = icmp eq i32 %shr25, 11
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %21 = bitcast %struct.ref_s* %20 to i8*
  %22 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.21
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %intval31 = bitcast %union.v* %value30 to i64*
  %23 = load i64, i64* %intval31, align 8
  %conv32 = sitofp i64 %23 to float
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %realval34 = bitcast %union.v* %value33 to float*
  store float %conv32, float* %realval34, align 4
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  store i16 44, i16* %type_attrs35, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.20, %if.then.12, %if.then, %sw.default, %sw.bb.4
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @zcvrs(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %radix = alloca i32, align 4
  %ival = alloca i64, align 8
  %val = alloca i64, align 8
  %digits = alloca [31 x i8], align 16
  %endp = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %dit = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds [31 x i8], [31 x i8]* %digits, i32 0, i64 31
  store i8* %arrayidx, i8** %endp, align 8
  %0 = load i8*, i8** %endp, align 8
  store i8* %0, i8** %dp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx3, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8
  %cmp4 = icmp slt i64 %4, 2
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 0
  %intval8 = bitcast %union.v* %value7 to i64*
  %6 = load i64, i64* %intval8, align 8
  %cmp9 = icmp sgt i64 %6, 36
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 0
  %intval15 = bitcast %union.v* %value14 to i64*
  %8 = load i64, i64* %intval15, align 8
  %conv16 = trunc i64 %8 to i32
  store i32 %conv16, i32* %radix, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs17, align 2
  %conv18 = zext i16 %10 to i32
  %and19 = and i32 %conv18, 252
  %cmp20 = icmp eq i32 %and19, 52
  br i1 %cmp20, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.12
  store i32 -20, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.12
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs24, align 2
  %conv25 = zext i16 %12 to i32
  %neg = xor i32 %conv25, -1
  %and26 = and i32 %neg, 256
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  store i32 -7, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  %type_attrs29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %14 = load i16, i16* %type_attrs29, align 2
  %conv30 = zext i16 %14 to i32
  %and31 = and i32 %conv30, 255
  %shr = ashr i32 %and31, 2
  switch i32 %shr, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end.28
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %intval34 = bitcast %union.v* %value33 to i64*
  %16 = load i64, i64* %intval34, align 8
  store i64 %16, i64* %ival, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.28
  br label %sw.default

sw.default:                                       ; preds = %if.end.28, %sw.bb.35
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %17 = load i64, i64* %ival, align 8
  %cmp36 = icmp slt i64 %17, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %18 = load i64, i64* %ival, align 8
  %sub = sub nsw i64 0, %18
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %19 = load i64, i64* %ival, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %19, %cond.false ]
  store i64 %cond, i64* %val, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %20 = load i64, i64* %val, align 8
  %21 = load i32, i32* %radix, align 4
  %conv38 = sext i32 %21 to i64
  %rem = urem i64 %20, %conv38
  %conv39 = trunc i64 %rem to i32
  store i32 %conv39, i32* %dit, align 4
  %22 = load i32, i32* %dit, align 4
  %23 = load i32, i32* %dit, align 4
  %cmp40 = icmp slt i32 %23, 10
  %cond42 = select i1 %cmp40, i32 48, i32 55
  %add = add nsw i32 %22, %cond42
  %conv43 = trunc i32 %add to i8
  %24 = load i8*, i8** %dp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr, i8** %dp, align 8
  store i8 %conv43, i8* %incdec.ptr, align 1
  %25 = load i32, i32* %radix, align 4
  %conv44 = sext i32 %25 to i64
  %26 = load i64, i64* %val, align 8
  %div = udiv i64 %26, %conv44
  store i64 %div, i64* %val, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i64, i64* %val, align 8
  %tobool45 = icmp ne i64 %27, 0
  br i1 %tobool45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i64, i64* %ival, align 8
  %cmp46 = icmp slt i64 %28, 0
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %do.end
  %29 = load i8*, i8** %dp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr49, i8** %dp, align 8
  store i8 45, i8* %incdec.ptr49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %do.end
  %30 = load i8*, i8** %endp, align 8
  %31 = load i8*, i8** %dp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  %33 = load i16, i16* %size, align 2
  %conv51 = zext i16 %33 to i64
  %cmp52 = icmp sgt i64 %sub.ptr.sub, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  store i32 -15, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.50
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %bytes = bitcast %union.v* %value56 to i8**
  %35 = load i8*, i8** %bytes, align 8
  %36 = load i8*, i8** %dp, align 8
  %37 = load i8*, i8** %endp, align 8
  %38 = load i8*, i8** %dp, align 8
  %sub.ptr.lhs.cast57 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast58 = ptrtoint i8* %38 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %conv60 = trunc i64 %sub.ptr.sub59 to i32
  %conv61 = zext i32 %conv60 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %conv61, i32 1, i1 false)
  %39 = load i8*, i8** %endp, align 8
  %40 = load i8*, i8** %dp, align 8
  %sub.ptr.lhs.cast62 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %40 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %conv65 = trunc i64 %sub.ptr.sub64 to i16
  %41 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 2
  store i16 %conv65, i16* %size66, align 2
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %43 = load i16, i16* %type_attrs67, align 2
  %conv68 = zext i16 %43 to i32
  %or = or i32 %conv68, 32768
  %conv69 = trunc i32 %or to i16
  store i16 %conv69, i16* %type_attrs67, align 2
  %44 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -2
  %45 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %46 = bitcast %struct.ref_s* %arrayidx70 to i8*
  %47 = bitcast %struct.ref_s* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  %48 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  store %struct.ref_s* %add.ptr71, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.54, %sw.default, %if.then.27, %if.then.22, %if.then.11, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @zcvs(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %buf = alloca [25 x i8], align 16
  %stref = alloca %struct.ref_s, align 8
  %pos = alloca i32, align 4
  %entry28 = alloca [2 x %struct.ref_s], align 16
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 256
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  store i8* %arraydecay, i8** %bytes, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %6 to i32
  %and9 = and i32 %conv8, 255
  %shr = ashr i32 %and9, 2
  %cmp10 = icmp sge i32 %shr, 16
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs12, align 2
  %conv13 = zext i16 %8 to i32
  %and14 = and i32 %conv13, 255
  %shr15 = ashr i32 %and14, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr15, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.22
    i32 7, label %sw.bb.25
    i32 9, label %sw.bb.26
    i32 11, label %sw.bb.52
    i32 13, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %cond.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %index = bitcast %union.v* %value16 to i16*
  %10 = load i16, i16* %index, align 2
  %conv17 = zext i16 %10 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes21 = bitcast %union.v* %value20 to i8**
  store i8* %cond19, i8** %bytes21, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %cond.end
  %arraydecay23 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval = bitcast %union.v* %value24 to i64*
  %12 = load i64, i64* %intval, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %12) #2
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  call void @name_string_ref(%struct.ref_s* %13, %struct.ref_s* %stref)
  br label %nl

sw.bb.26:                                         ; preds = %cond.end
  %call27 = call i32 @dict_first(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 0))
  store i32 %call27, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %sw.bb.26
  %14 = load i32, i32* %pos, align 4
  %arraydecay29 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %entry28, i32 0, i32 0
  %call30 = call i32 @dict_next(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 0), i32 %14, %struct.ref_s* %arraydecay29)
  store i32 %call30, i32* %pos, align 4
  %cmp31 = icmp sge i32 %call30, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %opproc = bitcast %union.v* %value33 to i32 (%struct.ref_s*)**
  %16 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  %17 = ptrtoint i32 (%struct.ref_s*)* %16 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %entry28, i32 0, i64 1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %opproc35 = bitcast %union.v* %value34 to i32 (%struct.ref_s*)**
  %18 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc35, align 8
  %19 = ptrtoint i32 (%struct.ref_s*)* %18 to i64
  %cmp36 = icmp eq i64 %17, %19
  br i1 %cmp36, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %while.body
  %arrayidx38 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %entry28, i32 0, i64 0
  %type_attrs39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx38, i32 0, i32 1
  %20 = load i16, i16* %type_attrs39, align 2
  %conv40 = zext i16 %20 to i32
  %and41 = and i32 %conv40, 255
  %shr42 = ashr i32 %and41, 2
  %cmp43 = icmp eq i32 %shr42, 7
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true
  %arrayidx46 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %entry28, i32 0, i64 0
  call void @name_string_ref(%struct.ref_s* %arrayidx46, %struct.ref_s* %stref)
  br label %nl

if.end.47:                                        ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay48 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %opproc50 = bitcast %union.v* %value49 to i32 (%struct.ref_s*)**
  %22 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc50, align 8
  %23 = ptrtoint i32 (%struct.ref_s*)* %22 to i64
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %23) #2
  br label %sw.epilog

sw.bb.52:                                         ; preds = %cond.end
  %arraydecay53 = getelementptr inbounds [25 x i8], [25 x i8]* %buf, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %realval = bitcast %union.v* %value54 to float*
  %25 = load float, float* %realval, align 4
  %conv55 = fpext float %25 to double
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), double %conv55) #2
  br label %sw.epilog

sw.bb.57:                                         ; preds = %cond.end
  %26 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %27 = load i16, i16* %type_attrs58, align 2
  %conv59 = zext i16 %27 to i32
  %neg60 = xor i32 %conv59, -1
  %and61 = and i32 %neg60, 512
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %sw.bb.57
  store i32 -7, i32* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.57
  %28 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %29 = bitcast %struct.ref_s* %stref to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  br label %nl

sw.default:                                       ; preds = %cond.end
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp65 = icmp ult %struct.ref_s* %31, %32
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.default
  store i32 -17, i32* %retval
  br label %return

if.end.68:                                        ; preds = %sw.default
  %value69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes70 = bitcast %union.v* %value69 to i8**
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8** %bytes70, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.68, %sw.bb.52, %while.end, %sw.bb.22, %sw.bb
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes72 = bitcast %union.v* %value71 to i8**
  %33 = load i8*, i8** %bytes72, align 8
  %call73 = call i64 @strlen(i8* %33) #5
  %conv74 = trunc i64 %call73 to i16
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 2
  store i16 %conv74, i16* %size, align 2
  br label %nl

nl:                                               ; preds = %sw.epilog, %if.end.64, %if.then.45, %sw.bb.25
  %size75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 2
  %34 = load i16, i16* %size75, align 2
  %conv76 = zext i16 %34 to i32
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 2
  %36 = load i16, i16* %size77, align 2
  %conv78 = zext i16 %36 to i32
  %cmp79 = icmp sgt i32 %conv76, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %nl
  store i32 -15, i32* %retval
  br label %return

if.end.82:                                        ; preds = %nl
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %bytes84 = bitcast %union.v* %value83 to i8**
  %38 = load i8*, i8** %bytes84, align 8
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes86 = bitcast %union.v* %value85 to i8**
  %39 = load i8*, i8** %bytes86, align 8
  %size87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 2
  %40 = load i16, i16* %size87, align 2
  %conv88 = zext i16 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %conv88, i32 1, i1 false)
  %41 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %43 = bitcast %struct.ref_s* %arrayidx89 to i8*
  %44 = bitcast %struct.ref_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %size90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 2
  %45 = load i16, i16* %size90, align 2
  %46 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %size92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx91, i32 0, i32 2
  store i16 %45, i16* %size92, align 2
  %47 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %type_attrs94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr93, i32 0, i32 1
  %48 = load i16, i16* %type_attrs94, align 2
  %conv95 = zext i16 %48 to i32
  %or = or i32 %conv95, 32768
  %conv96 = trunc i32 %or to i16
  store i16 %conv96, i16* %type_attrs94, align 2
  %49 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  store %struct.ref_s* %add.ptr97, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.81, %if.then.67, %if.then.63, %if.then.5, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @name_string_ref(%struct.ref_s*, %struct.ref_s*) #1

declare i32 @dict_first(%struct.ref_s*) #1

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @ztype_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([15 x %struct.op_def], [15 x %struct.op_def]* @ztype_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
