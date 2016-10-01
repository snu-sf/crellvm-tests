; ModuleID = './MultiSource.Benchmarks.MallocBench/72.gs.zpacked.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@array_packing = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"packedarray\00", align 1
@osbot = external global %struct.ref_s*, align 8
@zpacked_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentpacking }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zpackedarray }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetpacking }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"0currentpacking\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1packedarray\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"1setpacking\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcurrentpacking(%struct.ref_s* %op) #0 {
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
  %3 = load i32, i32* @array_packing, align 4
  %conv = trunc i32 %3 to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @zpackedarray(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @make_array(%struct.ref_s* %0, i32 10, i32 514, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
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
  %conv = zext i16 %4 to i64
  store i64 %conv, i64* %size, align 8
  %5 = load i64, i64* %size, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp2 = icmp ugt i64 %5, %sub.ptr.div
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -17, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %11 = load i64, i64* %size, align 8
  %idx.neg = sub i64 0, %11
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 %idx.neg
  %12 = load i64, i64* %size, align 8
  %call6 = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* %9, %struct.ref_s* %add.ptr, i64 %12)
  %13 = load i64, i64* %size, align 8
  %sub = sub i64 0, %13
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %sub
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %16 = bitcast %struct.ref_s* %arrayidx to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = load i64, i64* %size, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.neg7 = sub i64 0, %18
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 %idx.neg7
  store %struct.ref_s* %add.ptr8, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @make_array(%struct.ref_s*, i32, i32, i8*) #1

declare i32 @refcpy(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zsetpacking(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %3 = load i16, i16* %index, align 2
  %conv2 = zext i16 %3 to i32
  store i32 %conv2, i32* @array_packing, align 4
  %4 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @zpacked_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zpacked_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
