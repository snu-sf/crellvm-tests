; ModuleID = './MultiSource.Benchmarks.MallocBench/50.gs.zgeneric.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osbot = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@osp = external global %struct.ref_s*, align 8
@esp = external global %struct.ref_s*, align 8
@estop = external global %struct.ref_s*, align 8
@zgeneric_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopy }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zforall }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zget }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetinterval }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zlength }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zput }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zputinterval }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcopy(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 5, label %sw.bb
    i32 0, label %sw.bb.23
    i32 10, label %sw.bb.23
    i32 13, label %sw.bb.23
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
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
  %cmp = icmp ugt i64 %3, %sub.ptr.div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval3 = bitcast %union.v* %value2 to i64*
  %7 = load i64, i64* %intval3, align 8
  %conv4 = trunc i64 %7 to i32
  store i32 %conv4, i32* %count, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %9 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.ext
  %10 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp6 = icmp ugt %struct.ref_s* %add.ptr5, %10
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -16, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %12 = bitcast %struct.ref_s* %11 to i8*
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %14 = load i32, i32* %count, align 4
  %idx.ext10 = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext10
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.neg
  %15 = bitcast %struct.ref_s* %add.ptr11 to i8*
  %16 = load i32, i32* %count, align 4
  %conv12 = sext i32 %16 to i64
  %mul = mul i64 %conv12, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %mul, i32 1, i1 false)
  %17 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %17, 1
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %idx.ext13 = sext i32 %sub to i64
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idx.ext13
  store %struct.ref_s* %add.ptr14, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr14, %struct.ref_s** @osp, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp15 = icmp ugt %struct.ref_s* %add.ptr14, %19
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.9
  %20 = load i32, i32* %count, align 4
  %sub18 = sub nsw i32 %20, 1
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.ext19 = sext i32 %sub18 to i64
  %idx.neg20 = sub i64 0, %idx.ext19
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idx.neg20
  store %struct.ref_s* %add.ptr21, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry, %entry, %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %call = call i32 @copy_interval(%struct.ref_s* %22, i32 0, %struct.ref_s* %add.ptr24)
  store i32 %call, i32* %code, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call26 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcopy_dict to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %24)
  store i32 %call26, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.23
  %25 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.epilog
  %26 = load i32, i32* %code, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.28:                                        ; preds = %sw.epilog
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 2
  %28 = load i16, i16* %size, align 2
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 2
  store i16 %28, i16* %size29, align 2
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %32 = bitcast %struct.ref_s* %arrayidx30 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %type_attrs32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 1
  %35 = load i16, i16* %type_attrs32, align 2
  %conv33 = zext i16 %35 to i32
  %or = or i32 %conv33, 32768
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, i16* %type_attrs32, align 2
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  store %struct.ref_s* %add.ptr35, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %sw.default, %sw.bb.25, %if.end.22, %if.then.17, %if.then.8, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @copy_interval(%struct.ref_s* %prto, i32 %index, %struct.ref_s* %prfrom) #0 {
entry:
  %retval = alloca i32, align 4
  %prto.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca i32, align 4
  %prfrom.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %prto, %struct.ref_s** %prto.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.ref_s* %prfrom, %struct.ref_s** %prfrom.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %2 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  %cmp = icmp ne i32 %shr, %shr4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %5 to i32
  %neg = xor i32 %conv7, -1
  %and8 = and i32 %neg, 512
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs11, align 2
  %conv12 = zext i16 %7 to i32
  %neg13 = xor i32 %conv12, -1
  %and14 = and i32 %neg13, 256
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  store i32 -7, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %8 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv18 = zext i16 %9 to i32
  %10 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %size19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 2
  %11 = load i16, i16* %size19, align 2
  %conv20 = zext i16 %11 to i32
  %12 = load i32, i32* %index.addr, align 4
  %sub = sub i32 %conv20, %12
  %cmp21 = icmp ugt i32 %conv18, %sub
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  store i32 -15, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %13 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %type_attrs25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs25, align 2
  %conv26 = zext i16 %14 to i32
  %and27 = and i32 %conv26, 255
  %shr28 = ashr i32 %and27, 2
  switch i32 %shr28, label %sw.epilog [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end.24, %if.end.24
  %15 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %17 = load i32, i32* %index.addr, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext
  %18 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %refs30 = bitcast %union.v* %value29 to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %refs30, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %size31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 2
  %21 = load i16, i16* %size31, align 2
  %conv32 = zext i16 %21 to i32
  %call = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* %add.ptr, %struct.ref_s* %19, i32 %conv32)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.24
  %22 = load %struct.ref_s*, %struct.ref_s** %prto.addr, align 8
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %bytes = bitcast %union.v* %value34 to i8**
  %23 = load i8*, i8** %bytes, align 8
  %24 = load i32, i32* %index.addr, align 4
  %idx.ext35 = zext i32 %24 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %23, i64 %idx.ext35
  %25 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %bytes38 = bitcast %union.v* %value37 to i8**
  %26 = load i8*, i8** %bytes38, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %prfrom.addr, align 8
  %size39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 2
  %28 = load i16, i16* %size39, align 2
  %conv40 = zext i16 %28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr36, i8* %26, i64 %conv40, i32 1, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.33, %if.end.24, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.23, %if.then.16, %if.then.9, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @zcopy_dict(...) #2

; Function Attrs: nounwind uwtable
define i32 @zlength(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %str = alloca %struct.ref_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 2, label %sw.bb.6
    i32 7, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 512
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %5 = load i16, i16* %size, align 2
  %conv4 = zext i16 %5 to i64
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv4, i64* %intval, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 20, i16* %type_attrs5, align 2
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %8)
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %9 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %9 to i32
  %neg9 = xor i32 %conv8, -1
  %and10 = and i32 %neg9, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.6
  store i32 -7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %sw.bb.6
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call14 = call i32 @dict_length(%struct.ref_s* %10)
  %conv15 = zext i32 %call14 to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval17 = bitcast %union.v* %value16 to i64*
  store i64 %conv15, i64* %intval17, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 20, i16* %type_attrs18, align 2
  store i32 0, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call20 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_string_ref to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* %13, %struct.ref_s* %str)
  %size21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str, i32 0, i32 2
  %14 = load i16, i16* %size21, align 2
  %conv22 = zext i16 %14 to i64
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %intval24 = bitcast %union.v* %value23 to i64*
  store i64 %conv22, i64* %intval24, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 20, i16* %type_attrs25, align 2
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.19, %if.end.13, %if.then.12, %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct.ref_s* @dict_access_ref(%struct.ref_s*) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @name_string_ref(...) #2

; Function Attrs: nounwind uwtable
define i32 @zget(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %element = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.8
    i32 10, label %sw.bb.8
    i32 13, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %3)
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %4 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %4 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 512
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call4 = call i32 @dict_lookup(%struct.ref_s* %5, %struct.ref_s* %6, %struct.ref_s* %7, %struct.ref_s** %pvalue)
  %cmp = icmp sle i32 %call4, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -21, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry, %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs9, align 2
  %conv10 = zext i16 %9 to i32
  %and11 = and i32 %conv10, 252
  %cmp12 = icmp eq i32 %and11, 20
  br i1 %cmp12, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.8
  store i32 -20, i32* %retval
  br label %return

if.end.15:                                        ; preds = %sw.bb.8
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %11 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %11 to i32
  %neg18 = xor i32 %conv17, -1
  %and19 = and i32 %neg18, 512
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 -7, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %13 = load i64, i64* %intval, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  %15 = load i16, i16* %size, align 2
  %conv23 = zext i16 %15 to i64
  %cmp24 = icmp uge i64 %13, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  store i32 -15, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %refs = bitcast %union.v* %value28 to %struct.ref_s**
  %17 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %intval30 = bitcast %union.v* %value29 to i64*
  %19 = load i64, i64* %intval30, align 8
  %conv31 = trunc i64 %19 to i32
  %idx.ext = zext i32 %conv31 to i64
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 %idx.ext
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %pvalue, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %21 = load i16, i16* %type_attrs34, align 2
  %conv35 = zext i16 %21 to i32
  %and36 = and i32 %conv35, 252
  %cmp37 = icmp eq i32 %and36, 20
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %sw.bb.33
  store i32 -20, i32* %retval
  br label %return

if.end.40:                                        ; preds = %sw.bb.33
  %22 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %23 = load i16, i16* %type_attrs41, align 2
  %conv42 = zext i16 %23 to i32
  %neg43 = xor i32 %conv42, -1
  %and44 = and i32 %neg43, 512
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.40
  store i32 -7, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.40
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %intval49 = bitcast %union.v* %value48 to i64*
  %25 = load i64, i64* %intval49, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 2
  %27 = load i16, i16* %size50, align 2
  %conv51 = zext i16 %27 to i64
  %cmp52 = icmp uge i64 %25, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.47
  store i32 -15, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.47
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %intval57 = bitcast %union.v* %value56 to i64*
  %29 = load i64, i64* %intval57, align 8
  %conv58 = trunc i64 %29 to i32
  %idxprom = zext i32 %conv58 to i64
  %30 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %bytes = bitcast %union.v* %value59 to i8**
  %31 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx, align 1
  %conv60 = zext i8 %32 to i32
  store i32 %conv60, i32* %element, align 4
  %33 = load i32, i32* %element, align 4
  %conv61 = sext i32 %33 to i64
  %34 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %intval63 = bitcast %union.v* %value62 to i64*
  store i64 %conv61, i64* %intval63, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  store i16 20, i16* %type_attrs64, align 2
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  store %struct.ref_s* %add.ptr65, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.27, %if.end.7
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %38 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %39 = bitcast %struct.ref_s* %arrayidx66 to i8*
  %40 = bitcast %struct.ref_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  store %struct.ref_s* %add.ptr67, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end.55, %if.then.54, %if.then.46, %if.then.39, %if.then.26, %if.then.21, %if.then.14, %if.then.6, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define i32 @zput(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.9
    i32 10, label %sw.bb.37
    i32 13, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %4)
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %5 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %5 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 256
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call5 = call i32 @dict_put(%struct.ref_s* %6, %struct.ref_s* %7, %struct.ref_s* %8)
  store i32 %call5, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %12 to i32
  %and12 = and i32 %conv11, 252
  %cmp = icmp eq i32 %and12, 20
  br i1 %cmp, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.9
  store i32 -20, i32* %retval
  br label %return

if.end.15:                                        ; preds = %sw.bb.9
  %13 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %14 to i32
  %neg18 = xor i32 %conv17, -1
  %and19 = and i32 %neg18, 256
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 -7, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8
  %cmp23 = icmp slt i64 %16, 0
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %17 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %intval26 = bitcast %union.v* %value25 to i64*
  %18 = load i64, i64* %intval26, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 2
  %20 = load i16, i16* %size, align 2
  %conv27 = zext i16 %20 to i64
  %cmp28 = icmp sge i64 %18, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.22
  store i32 -15, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  %21 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %refs = bitcast %union.v* %value32 to %struct.ref_s**
  %22 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %intval34 = bitcast %union.v* %value33 to i64*
  %24 = load i64, i64* %intval34, align 8
  %conv35 = trunc i64 %24 to i32
  %idx.ext = zext i32 %conv35 to i64
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 %idx.ext
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %26 = bitcast %struct.ref_s* %add.ptr36 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  store i32 -7, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %entry
  %28 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %29 = load i16, i16* %type_attrs39, align 2
  %conv40 = zext i16 %29 to i32
  %and41 = and i32 %conv40, 252
  %cmp42 = icmp eq i32 %and41, 20
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %sw.bb.38
  store i32 -20, i32* %retval
  br label %return

if.end.45:                                        ; preds = %sw.bb.38
  %30 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %31 = load i16, i16* %type_attrs46, align 2
  %conv47 = zext i16 %31 to i32
  %neg48 = xor i32 %conv47, -1
  %and49 = and i32 %neg48, 256
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.45
  store i32 -7, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.45
  %32 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %intval54 = bitcast %union.v* %value53 to i64*
  %33 = load i64, i64* %intval54, align 8
  %cmp55 = icmp slt i64 %33, 0
  br i1 %cmp55, label %if.then.64, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.52
  %34 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %intval59 = bitcast %union.v* %value58 to i64*
  %35 = load i64, i64* %intval59, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 2
  %37 = load i16, i16* %size60, align 2
  %conv61 = zext i16 %37 to i64
  %cmp62 = icmp sge i64 %35, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.57, %if.end.52
  store i32 -15, i32* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.57
  %38 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %39 = load i16, i16* %type_attrs66, align 2
  %conv67 = zext i16 %39 to i32
  %and68 = and i32 %conv67, 252
  %cmp69 = icmp eq i32 %and68, 20
  br i1 %cmp69, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.65
  store i32 -20, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.65
  %40 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %intval74 = bitcast %union.v* %value73 to i64*
  %41 = load i64, i64* %intval74, align 8
  %cmp75 = icmp ugt i64 %41, 255
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.72
  store i32 -15, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.72
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %intval80 = bitcast %union.v* %value79 to i64*
  %43 = load i64, i64* %intval80, align 8
  %conv81 = trunc i64 %43 to i8
  %44 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %intval83 = bitcast %union.v* %value82 to i64*
  %45 = load i64, i64* %intval83, align 8
  %conv84 = trunc i64 %45 to i32
  %idxprom = zext i32 %conv84 to i64
  %46 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %bytes = bitcast %union.v* %value85 to i8**
  %47 = load i8*, i8** %bytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 %idxprom
  store i8 %conv81, i8* %arrayidx, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.78, %if.end.31, %if.end.8
  %48 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -3
  store %struct.ref_s* %add.ptr86, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.77, %if.then.71, %if.then.64, %if.then.51, %if.then.44, %sw.bb.37, %if.then.30, %if.then.21, %if.then.14, %if.then.7, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zgetinterval(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 252
  %cmp6 = icmp eq i32 %and5, 20
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %7 to i32
  %and12 = and i32 %conv11, 255
  %shr = ashr i32 %and12, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end.9
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end.9, %if.end.9, %if.end.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs13, align 2
  %conv14 = zext i16 %9 to i32
  %neg = xor i32 %conv14, -1
  %and15 = and i32 %neg, 512
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.epilog
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size, align 2
  %conv18 = zext i16 %13 to i64
  %cmp19 = icmp ugt i64 %11, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  store i32 -15, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %intval24 = bitcast %union.v* %value23 to i64*
  %15 = load i64, i64* %intval24, align 8
  %conv25 = trunc i64 %15 to i32
  store i32 %conv25, i32* %index, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval27 = bitcast %union.v* %value26 to i64*
  %17 = load i64, i64* %intval27, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 2
  %19 = load i16, i16* %size28, align 2
  %conv29 = zext i16 %19 to i32
  %20 = load i32, i32* %index, align 4
  %sub = sub i32 %conv29, %20
  %conv30 = zext i32 %sub to i64
  %cmp31 = icmp ugt i64 %17, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.22
  store i32 -15, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.22
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %intval36 = bitcast %union.v* %value35 to i64*
  %22 = load i64, i64* %intval36, align 8
  %conv37 = trunc i64 %22 to i32
  store i32 %conv37, i32* %count, align 4
  %23 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %24 = load i16, i16* %type_attrs38, align 2
  %conv39 = zext i16 %24 to i32
  %and40 = and i32 %conv39, 255
  %shr41 = ashr i32 %and40, 2
  switch i32 %shr41, label %sw.epilog.49 [
    i32 0, label %sw.bb.42
    i32 10, label %sw.bb.42
    i32 13, label %sw.bb.45
  ]

sw.bb.42:                                         ; preds = %if.end.34, %if.end.34
  %25 = load i32, i32* %index, align 4
  %26 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %refs = bitcast %union.v* %value43 to %struct.ref_s**
  %27 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %idx.ext = zext i32 %25 to i64
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 %idx.ext
  store %struct.ref_s* %add.ptr44, %struct.ref_s** %refs, align 8
  br label %sw.epilog.49

sw.bb.45:                                         ; preds = %if.end.34
  %28 = load i32, i32* %index, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %bytes = bitcast %union.v* %value46 to i8**
  %30 = load i8*, i8** %bytes, align 8
  %idx.ext47 = zext i32 %28 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %30, i64 %idx.ext47
  store i8* %add.ptr48, i8** %bytes, align 8
  br label %sw.epilog.49

sw.epilog.49:                                     ; preds = %if.end.34, %sw.bb.45, %sw.bb.42
  %31 = load i32, i32* %count, align 4
  %conv50 = trunc i32 %31 to i16
  %32 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  store i16 %conv50, i16* %size51, align 2
  %33 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %34 = load i16, i16* %type_attrs52, align 2
  %conv53 = zext i16 %34 to i32
  %or = or i32 %conv53, 32768
  %conv54 = trunc i32 %or to i16
  store i16 %conv54, i16* %type_attrs52, align 2
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -2
  store %struct.ref_s* %add.ptr55, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.49, %if.then.33, %if.then.21, %if.then.16, %sw.default, %if.then.8, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @zputinterval(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %opindex = alloca %struct.ref_s*, align 8
  %opto = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %opindex, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %opto, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %opto, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 255
  %shr = ashr i32 %and5, 2
  switch i32 %shr, label %sw.default [
    i32 10, label %sw.bb
    i32 0, label %sw.bb.6
    i32 13, label %sw.bb.6
  ]

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6
  %6 = load %struct.ref_s*, %struct.ref_s** %opto, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %7 to i32
  %neg = xor i32 %conv8, -1
  %and9 = and i32 %neg, 256
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.epilog
  %8 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %opto, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 2
  %11 = load i16, i16* %size, align 2
  %conv12 = zext i16 %11 to i64
  %cmp13 = icmp ugt i64 %9, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 -15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %12 = load %struct.ref_s*, %struct.ref_s** %opto, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %opindex, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %intval18 = bitcast %union.v* %value17 to i64*
  %14 = load i64, i64* %intval18, align 8
  %conv19 = trunc i64 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @copy_interval(%struct.ref_s* %12, i32 %conv19, %struct.ref_s* %15)
  store i32 %call, i32* %code, align 4
  %16 = load i32, i32* %code, align 4
  %cmp20 = icmp sge i32 %16, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.16
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -3
  store %struct.ref_s* %add.ptr23, %struct.ref_s** @osp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.15, %if.then.10, %sw.bb, %sw.default, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @zforall(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %cproc = alloca i32 (%struct.ref_s*)*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb.4
    i32 2, label %sw.bb.12
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %4 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 512
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 (%struct.ref_s*)* @array_continue, i32 (%struct.ref_s*)** %cproc, align 8
  store i32 0, i32* %index, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %6 to i32
  %neg7 = xor i32 %conv6, -1
  %and8 = and i32 %neg7, 512
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.4
  store i32 -7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.4
  store i32 (%struct.ref_s*)* @string_continue, i32 (%struct.ref_s*)** %cproc, align 8
  store i32 0, i32* %index, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %7)
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %8 = load i16, i16* %type_attrs13, align 2
  %conv14 = zext i16 %8 to i32
  %neg15 = xor i32 %conv14, -1
  %and16 = and i32 %neg15, 512
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.12
  store i32 -7, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.12
  store i32 (%struct.ref_s*)* @dict_continue, i32 (%struct.ref_s*)** %cproc, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %call20 = call i32 @dict_first(%struct.ref_s* %9)
  store i32 %call20, i32* %index, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.19, %if.end.11, %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 6
  %11 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr21, %11
  br i1 %cmp, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.epilog
  store i32 -5, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.epilog
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %index25 = bitcast %union.v* %value to i16*
  store i16 2, i16* %index25, align 2
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 33, i16* %type_attrs26, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %incdec.ptr27, %struct.ref_s** @esp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %17 = bitcast %struct.ref_s* %incdec.ptr27 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr28, %struct.ref_s** @esp, align 8
  %20 = load i32, i32* %index, align 4
  %conv29 = zext i32 %20 to i64
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %intval = bitcast %union.v* %value30 to i64*
  store i64 %conv29, i64* %intval, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  store i16 20, i16* %type_attrs31, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 1
  store %struct.ref_s* %incdec.ptr32, %struct.ref_s** @esp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %25 = bitcast %struct.ref_s* %incdec.ptr32 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  store %struct.ref_s* %add.ptr33, %struct.ref_s** @osp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -2
  store %struct.ref_s* %add.ptr34, %struct.ref_s** %op.addr, align 8
  %29 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %cproc, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call35 = call i32 %29(%struct.ref_s* %30)
  store i32 %call35, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.then.10, %if.then, %sw.default
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @array_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 2
  %2 = load i16, i16* %size, align 2
  %dec = add i16 %2, -1
  store i16 %dec, i16* %size, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr1, %4
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %9 = bitcast %struct.ref_s* %6 to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %refs5 = bitcast %union.v* %value4 to %struct.ref_s**
  %12 = load %struct.ref_s*, %struct.ref_s** %refs5, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %refs5, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 1
  store %struct.ref_s* %incdec.ptr6, %struct.ref_s** @esp, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %opproc = bitcast %union.v* %value7 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @array_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 2
  store i16 0, i16* %size8, align 2
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 1
  store %struct.ref_s* %incdec.ptr9, %struct.ref_s** @esp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 2
  %19 = bitcast %struct.ref_s* %incdec.ptr9 to i8*
  %20 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -4
  store %struct.ref_s* %add.ptr10, %struct.ref_s** @esp, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @string_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 2
  %2 = load i16, i16* %size, align 2
  %dec = add i16 %2, -1
  store i16 %dec, i16* %size, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr1, %4
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i64
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval = bitcast %union.v* %value4 to i64*
  store i64 %conv, i64* %intval, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %bytes6 = bitcast %union.v* %value5 to i8**
  %12 = load i8*, i8** %bytes6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %bytes6, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 1
  store %struct.ref_s* %incdec.ptr7, %struct.ref_s** @esp, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %opproc = bitcast %union.v* %value8 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @string_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 37, i16* %type_attrs9, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 2
  store i16 0, i16* %size10, align 2
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 1
  store %struct.ref_s* %incdec.ptr11, %struct.ref_s** @esp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 2
  %19 = bitcast %struct.ref_s* %incdec.ptr11 to i8*
  %20 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -4
  store %struct.ref_s* %add.ptr12, %struct.ref_s** @esp, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @dict_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %obj = alloca %struct.ref_s*, align 8
  %index = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %obj, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %2 = load i64, i64* %intval, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %index, align 4
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr1, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %7 = load i32, i32* %index, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call = call i32 @dict_next(%struct.ref_s* %6, i32 %7, %struct.ref_s* %add.ptr4)
  store i32 %call, i32* %index, align 4
  %cmp5 = icmp sge i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %9 = load i32, i32* %index, align 4
  %conv8 = sext i32 %9 to i64
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 0
  %intval11 = bitcast %union.v* %value10 to i64*
  store i64 %conv8, i64* %intval11, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %opproc = bitcast %union.v* %value12 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @dict_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %incdec.ptr13, %struct.ref_s** @esp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %obj, align 8
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 2
  %17 = bitcast %struct.ref_s* %incdec.ptr13 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %add.ptr15, %struct.ref_s** @osp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @esp, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define void @zgeneric_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zgeneric_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

declare i32 @refcpy(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
