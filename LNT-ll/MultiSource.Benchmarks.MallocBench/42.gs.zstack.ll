; ModuleID = './MultiSource.Benchmarks.MallocBench/42.gs.zstack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp_nargs = external global [6 x %struct.ref_s*], align 16
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@osbot = external global %struct.ref_s*, align 8
@zstack_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zclear_stack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcleartomark }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcount }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcounttomark }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdup }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zexch }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zindex }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zpop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zroll }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zpop(%struct.ref_s* %op) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @zexch(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %next = alloca %struct.ref_s, align 8
  %pnext = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %next, %struct.ref_s** %pnext, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 1), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pnext, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %4 = bitcast %struct.ref_s* %arrayidx to i8*
  %5 = bitcast %struct.ref_s* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 0
  %8 = bitcast %struct.ref_s* %arrayidx2 to i8*
  %9 = bitcast %struct.ref_s* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %pnext, align 8
  %12 = bitcast %struct.ref_s* %10 to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @zdup(%struct.ref_s* %op) #0 {
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %7 = bitcast %struct.ref_s* %arrayidx to i8*
  %8 = bitcast %struct.ref_s* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @zindex(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %opn = alloca %struct.ref_s*, align 8
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp2 = icmp uge i64 %3, %sub.ptr.div
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %intval7 = bitcast %union.v* %value6 to i64*
  %8 = load i64, i64* %intval7, align 8
  %conv8 = trunc i64 %8 to i32
  %neg = xor i32 %conv8, -1
  %idx.ext = sext i32 %neg to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opn, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %opn, align 8
  %11 = bitcast %struct.ref_s* %9 to i8*
  %12 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zroll(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %mod = alloca i32, align 4
  %istart = alloca i32, align 4
  %n = alloca i32, align 4
  %base = alloca %struct.ref_s*, align 8
  %save = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %inext = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
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
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 252
  %cmp5 = icmp eq i32 %and4, 20
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %6 = load i64, i64* %intval, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp9 = icmp ugt i64 %6, %sub.ptr.div
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %9 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval14 = bitcast %union.v* %value13 to i64*
  %10 = load i64, i64* %intval14, align 8
  %conv15 = trunc i64 %10 to i32
  store i32 %conv15, i32* %count, align 4
  %11 = load i32, i32* %count, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.12
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  store %struct.ref_s* %add.ptr19, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.12
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %intval22 = bitcast %union.v* %value21 to i64*
  %14 = load i64, i64* %intval22, align 8
  %15 = load i32, i32* %count, align 4
  %conv23 = sext i32 %15 to i64
  %rem = srem i64 %14, %conv23
  %conv24 = trunc i64 %rem to i32
  store i32 %conv24, i32* %mod, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  store %struct.ref_s* %add.ptr25, %struct.ref_s** @osp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %op.addr, align 8
  %18 = load i32, i32* %mod, align 4
  %cmp27 = icmp slt i32 %18, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.20
  %19 = load i32, i32* %count, align 4
  %20 = load i32, i32* %mod, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %mod, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end.20
  %21 = load i32, i32* %mod, align 4
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.29
  %22 = load i32, i32* %count, align 4
  %23 = load i32, i32* %mod, align 4
  %sub = sub nsw i32 %22, %23
  store i32 %sub, i32* %mod, align 4
  store i32 0, i32* %istart, align 4
  %24 = load i32, i32* %count, align 4
  store i32 %24, i32* %n, align 4
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %26 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %26 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 %idx.neg
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr35, i64 1
  store %struct.ref_s* %add.ptr36, %struct.ref_s** %base, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.34
  %27 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %while.body, label %while.end.49

while.body:                                       ; preds = %while.cond
  %28 = load i32, i32* %istart, align 4
  store i32 %28, i32* %i, align 4
  %29 = load i32, i32* %istart, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.ref_s*, %struct.ref_s** %base, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 %idxprom
  %31 = bitcast %struct.ref_s* %save to i8*
  %32 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.42, %while.body
  %33 = load i32, i32* %n, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %n, align 4
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %mod, align 4
  %add38 = add nsw i32 %34, %35
  %36 = load i32, i32* %count, align 4
  %rem39 = srem i32 %add38, %36
  store i32 %rem39, i32* %inext, align 4
  %37 = load i32, i32* %istart, align 4
  %cmp40 = icmp ne i32 %rem39, %37
  br i1 %cmp40, label %while.body.42, label %while.end

while.body.42:                                    ; preds = %while.cond.37
  %38 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.ref_s*, %struct.ref_s** %base, align 8
  %arrayidx44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %idxprom43
  %40 = load i32, i32* %inext, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load %struct.ref_s*, %struct.ref_s** %base, align 8
  %arrayidx46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %idxprom45
  %42 = bitcast %struct.ref_s* %arrayidx44 to i8*
  %43 = bitcast %struct.ref_s* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = load i32, i32* %inext, align 4
  store i32 %44, i32* %i, align 4
  br label %while.cond.37

while.end:                                        ; preds = %while.cond.37
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.ref_s*, %struct.ref_s** %base, align 8
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 %idxprom47
  %47 = bitcast %struct.ref_s* %arrayidx48 to i8*
  %48 = bitcast %struct.ref_s* %save to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = load i32, i32* %istart, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %istart, align 4
  br label %while.cond

while.end.49:                                     ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.49, %if.then.32, %if.then.18, %if.then.11, %if.then.7, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @zclear_stack(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @zcount(%struct.ref_s* %op) #0 {
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
  %4 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %sub.ptr.div, i64* %intval, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zcleartomark(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %cmp = icmp uge %struct.ref_s* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -24, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @zcounttomark(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %mp = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %mp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %cmp = icmp uge %struct.ref_s* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 6
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp3 = icmp ugt %struct.ref_s* %add.ptr, %6
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %sub = sub nsw i64 %sub.ptr.div, 1
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %sub, i64* %intval, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 20, i16* %type_attrs7, align 2
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %while.body
  %12 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %mp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -24, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end, %if.then.5
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @zstack_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zstack_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
