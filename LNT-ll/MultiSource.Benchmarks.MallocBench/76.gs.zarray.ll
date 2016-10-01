; ModuleID = './MultiSource.Benchmarks.MallocBench/76.gs.zarray.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@ostop = external global %struct.ref_s*, align 8
@osp = external global %struct.ref_s*, align 8
@osbot = external global %struct.ref_s*, align 8
@zarray_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zaload }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zarray }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zastore }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"1aload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1astore\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zarray(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %size = alloca i16, align 2
  %abody = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @make_array(%struct.ref_s* %0, i32 0, i32 770, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 2
  %4 = load i16, i16* %size1, align 2
  store i16 %4, i16* %size, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %6, %struct.ref_s** %abody, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i16, i16* %size, align 2
  %dec = add i16 %7, -1
  store i16 %dec, i16* %size, align 2
  %tobool = icmp ne i16 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.ref_s*, %struct.ref_s** %abody, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %abody, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  store i16 32, i16* %type_attrs, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @make_array(%struct.ref_s* %op, i32 %type, i32 %attrs, i8* %client_name) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %type.addr = alloca i32, align 4
  %attrs.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %abody = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %attrs, i32* %attrs.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
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
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval5 = bitcast %union.v* %value4 to i64*
  %5 = load i64, i64* %intval5, align 8
  %cmp6 = icmp ugt i64 %5, 268435454
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval11 = bitcast %union.v* %value10 to i64*
  %7 = load i64, i64* %intval11, align 8
  %conv12 = trunc i64 %7 to i32
  store i32 %conv12, i32* %size, align 4
  %8 = load i32, i32* %size, align 4
  %9 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* @alloc(i32 %8, i32 16, i8* %9)
  %10 = bitcast i8* %call to %struct.ref_s*
  store %struct.ref_s* %10, %struct.ref_s** %abody, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %abody, align 8
  %cmp13 = icmp eq %struct.ref_s* %11, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 -25, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %12 = load %struct.ref_s*, %struct.ref_s** %abody, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %refs = bitcast %union.v* %value17 to %struct.ref_s**
  store %struct.ref_s* %12, %struct.ref_s** %refs, align 8
  %14 = load i32, i32* %type.addr, align 4
  %shl = shl i32 %14, 2
  %15 = load i32, i32* %attrs.addr, align 4
  %add = add nsw i32 %shl, %15
  %conv18 = trunc i32 %add to i16
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 %conv18, i16* %type_attrs19, align 2
  %17 = load i32, i32* %size, align 4
  %conv20 = trunc i32 %17 to i16
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 2
  store i16 %conv20, i16* %size21, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.8, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @zaload(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %aref = alloca %struct.ref_s, align 8
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
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 512
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = bitcast %struct.ref_s* %aref to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv4 = zext i16 %7 to i64
  %8 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp sgt i64 %conv4, %sub.ptr.div
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %11 = bitcast %struct.ref_s* %10 to i8*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %12 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %13 = bitcast %struct.ref_s* %12 to i8*
  %size8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 2
  %14 = load i16, i16* %size8, align 2
  %conv9 = zext i16 %14 to i64
  %mul = mul i64 %conv9, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %13, i64 %mul, i32 1, i1 false)
  %size10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 2
  %15 = load i16, i16* %size10, align 2
  %conv11 = zext i16 %15 to i32
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %idx.ext = sext i32 %conv11 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp12 = icmp ugt %struct.ref_s* %add.ptr, %17
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.7
  %size15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 2
  %18 = load i16, i16* %size15, align 2
  %conv16 = zext i16 %18 to i32
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.ext17 = sext i32 %conv16 to i64
  %idx.neg = sub i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 %idx.neg
  store %struct.ref_s* %add.ptr18, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.7
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %21 = bitcast %struct.ref_s* %20 to i8*
  %22 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.14, %if.then.6, %if.then, %sw.default
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @zastore(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %size = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 0
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
  %and4 = and i32 %neg, 256
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %5 = load i16, i16* %size7, align 2
  %conv8 = zext i16 %5 to i64
  store i64 %conv8, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp9 = icmp ugt i64 %6, %sub.ptr.div
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 -17, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %10 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %12 = load i64, i64* %size, align 8
  %idx.neg = sub i64 0, %12
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 %idx.neg
  %13 = load i64, i64* %size, align 8
  %call = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* %10, %struct.ref_s* %add.ptr, i64 %13)
  %14 = load i64, i64* %size, align 8
  %sub = sub i64 0, %14
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 %sub
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %17 = bitcast %struct.ref_s* %arrayidx to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load i64, i64* %size, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.neg13 = sub i64 0, %19
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 %idx.neg13
  store %struct.ref_s* %add.ptr14, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.5, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @refcpy(...) #2

; Function Attrs: nounwind uwtable
define void @zarray_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zarray_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

declare i8* @alloc(i32, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
