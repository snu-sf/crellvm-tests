; ModuleID = './MultiSource.Benchmarks.MallocBench/81.gs.zdict.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dict_max_size = external global i32, align 4
@osp = external global %struct.ref_s*, align 8
@dsp = external global %struct.ref_s*, align 8
@dstop = external global %struct.ref_s*, align 8
@dstack = external global [0 x %struct.ref_s], align 8
@osp_nargs = external global [6 x %struct.ref_s*], align 16
@ostop = external global %struct.ref_s*, align 8
@zdict_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zbegin }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcountdictstack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdict }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zdef }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdict }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zdictstack }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zend }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zknown }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zload }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zmaxlength }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmaxlength }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zstore }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zwhere }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"1begin\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0countdictstack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"0currentdict\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2def\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1dict\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0dictstack\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0end\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"2known\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"1load\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"1maxlength\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"2setmaxlength\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"2store\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"1where\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zdict(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval5 = bitcast %union.v* %value4 to i64*
  %5 = load i64, i64* %intval5, align 8
  %6 = load i32, i32* @dict_max_size, align 4
  %conv6 = zext i32 %6 to i64
  %cmp7 = icmp sgt i64 %5, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %intval12 = bitcast %union.v* %value11 to i64*
  %8 = load i64, i64* %intval12, align 8
  %conv13 = trunc i64 %8 to i32
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @dict_create(i32 %conv13, %struct.ref_s* %9)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @dict_create(i32, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zmaxlength(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %2)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
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
  %call7 = call i32 @dict_maxlength(%struct.ref_s* %4)
  %conv8 = zext i32 %call7 to i64
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv8, i64* %intval, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 20, i16* %type_attrs9, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct.ref_s* @dict_access_ref(%struct.ref_s*) #1

declare i32 @dict_maxlength(%struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetmaxlength(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %new_size = alloca i32, align 4
  %code = alloca i32, align 4
  %op1 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %3)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
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
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %6 to i32
  %and9 = and i32 %conv8, 252
  %cmp10 = icmp eq i32 %and9, 20
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  store i32 -20, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8
  %cmp14 = icmp slt i64 %8, 0
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval17 = bitcast %union.v* %value16 to i64*
  %10 = load i64, i64* %intval17, align 8
  %11 = load i32, i32* @dict_max_size, align 4
  %conv18 = zext i32 %11 to i64
  %cmp19 = icmp sgt i64 %10, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.13
  store i32 -15, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %intval24 = bitcast %union.v* %value23 to i64*
  %13 = load i64, i64* %intval24, align 8
  %conv25 = trunc i64 %13 to i32
  store i32 %conv25, i32* %new_size, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %call27 = call i32 @dict_length(%struct.ref_s* %add.ptr26)
  %15 = load i32, i32* %new_size, align 4
  %cmp28 = icmp ugt i32 %call27, %15
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.22
  store i32 -2, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %17 = load i32, i32* %new_size, align 4
  %call33 = call i32 @dict_resize(%struct.ref_s* %add.ptr32, i32 %17)
  store i32 %call33, i32* %code, align 4
  %18 = load i32, i32* %code, align 4
  %cmp34 = icmp sge i32 %18, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.31
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %add.ptr37, %struct.ref_s** @osp, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.31
  %20 = load i32, i32* %code, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.30, %if.then.21, %if.then.12, %if.then.5, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @dict_length(%struct.ref_s*) #1

declare i32 @dict_resize(%struct.ref_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zbegin(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %2)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
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
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @dstop, align 8
  %cmp7 = icmp eq %struct.ref_s* %4, %5
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -3, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @dsp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zend(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %cmp = icmp eq %struct.ref_s* %0, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @dsp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @zdef(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %4)
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %5 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %5 to i32
  %neg = xor i32 %conv6, -1
  %and7 = and i32 %neg, 256
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 -7, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %6 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call11 = call i32 @dict_put(%struct.ref_s* %6, %struct.ref_s* %add.ptr10, %struct.ref_s* %8)
  store i32 %call11, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  store %struct.ref_s* %add.ptr14, %struct.ref_s** @osp, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.8, %if.then.3, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zload(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
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
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %4, %struct.ref_s* %5, %struct.ref_s** %pvalue)
  %cmp5 = icmp sle i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -21, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %8 = bitcast %struct.ref_s* %6 to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #1

; Function Attrs: nounwind uwtable
define i32 @zstore(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %4, %struct.ref_s* %add.ptr5, %struct.ref_s** %pvalue)
  %cmp6 = icmp sle i32 %call, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.4
  %6 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call10 = call i32 @dict_put(%struct.ref_s* %6, %struct.ref_s* %add.ptr9, %struct.ref_s* %8)
  store i32 %call10, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %11 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %13 = bitcast %struct.ref_s* %11 to i8*
  %14 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.12
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  store %struct.ref_s* %add.ptr14, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.3, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @zknown(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %3)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %6 to i32
  %and9 = and i32 %conv8, 255
  %shr = ashr i32 %and9, 2
  %cmp10 = icmp eq i32 %shr, 8
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call12 = call i32 @dict_lookup(%struct.ref_s* %7, %struct.ref_s* %8, %struct.ref_s* %9, %struct.ref_s** %pvalue)
  %cmp13 = icmp sgt i32 %call12, 0
  %cond = select i1 %cmp13, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ]
  %conv16 = trunc i32 %cond15 to i16
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv16, i16* %index, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 4, i16* %type_attrs17, align 2
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr18, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zwhere(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pdref = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  store %struct.ref_s* %0, %struct.ref_s** %pdref, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 0, i16* %index, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 4, i16* %type_attrs4, align 2
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.5, %if.end.22
  %7 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %7)
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %8 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %8 to i32
  %neg = xor i32 %conv7, -1
  %and8 = and i32 %neg, 512
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  store i32 -7, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %9 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call11 = call i32 @dict_lookup(%struct.ref_s* %9, %struct.ref_s* %10, %struct.ref_s* %11, %struct.ref_s** %pvalue)
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  br label %while.end

if.end.15:                                        ; preds = %if.end.10
  %12 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pdref, align 8
  %cmp16 = icmp ult %struct.ref_s* %incdec.ptr, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0)
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %index20 = bitcast %union.v* %value19 to i16*
  store i16 0, i16* %index20, align 2
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 4, i16* %type_attrs21, align 2
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  br label %while.body

while.end:                                        ; preds = %if.then.14
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %pdref, align 8
  %17 = bitcast %struct.ref_s* %15 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp23 = icmp ugt %struct.ref_s* %add.ptr, %20
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %while.end
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %add.ptr26, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.27:                                        ; preds = %while.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %index29 = bitcast %union.v* %value28 to i16*
  store i16 1, i16* %index29, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 4, i16* %type_attrs30, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.18, %if.then.9, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @zcopy_dict(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %3)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call7 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %5)
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call7, i32 0, i32 1
  %6 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %6 to i32
  %neg10 = xor i32 %conv9, -1
  %and11 = and i32 %neg10, 256
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  store i32 -7, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call15 = call i32 @dict_length(%struct.ref_s* %7)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call18 = call i32 @dict_maxlength(%struct.ref_s* %8)
  %9 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call19 = call i32 @dict_maxlength(%struct.ref_s* %9)
  %cmp20 = icmp ult i32 %call18, %call19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.14
  store i32 -15, i32* %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call24 = call i32 @dict_copy(%struct.ref_s* %10, %struct.ref_s* %11)
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %14 = bitcast %struct.ref_s* %arrayidx to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr25, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.13, %if.then.5, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @dict_copy(%struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentdict(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %5 = bitcast %struct.ref_s* %3 to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zcountdictstack(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %add, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @zdictstack(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %depth = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %depth, align 4
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 252
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %4 to i32
  %neg = xor i32 %conv4, -1
  %and5 = and i32 %neg, 256
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i32, i32* %depth, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv8 = zext i16 %7 to i32
  %cmp9 = icmp sgt i32 %5, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i32 -15, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %8 = load i32, i32* %depth, align 4
  %conv13 = trunc i32 %8 to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 2
  store i16 %conv13, i16* %size14, align 2
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %11 = load i16, i16* %type_attrs15, align 2
  %conv16 = zext i16 %11 to i32
  %or = or i32 %conv16, 32768
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %type_attrs15, align 2
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %14 = load i32, i32* %depth, align 4
  %call = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* %13, %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), i32 %14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @refcpy(...) #1

; Function Attrs: nounwind uwtable
define void @zdict_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zdict_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
