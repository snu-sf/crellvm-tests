; ModuleID = './MultiSource.Benchmarks.MallocBench/79.gs.zcolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_color_s = type opaque

@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@igs = external global %struct.gs_state_s*, align 8
@zcolor_op_init.my_defs = internal global [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentgscolor }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetgscolor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0currentgscolor\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1setgscolor\00", align 1
@gs_color_sizeof = external global i32, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"make_color\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcurrentgscolor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
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
  %call = call i32 @make_color(%struct.ref_s* %3)
  store i32 %call, i32* %code, align 4
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %pcolor = bitcast %union.v* %value to %struct.gs_color_s**
  %6 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %call3 = call i32 @gs_currentgscolor(%struct.gs_state_s* %4, %struct.gs_color_s* %6)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %lor.lhs.false
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @make_color(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %cp = alloca %struct.gs_color_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load i32, i32* @gs_color_sizeof, align 4
  %call = call i8* @alloc(i32 1, i32 %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct.gs_color_s*
  store %struct.gs_color_s* %1, %struct.gs_color_s** %cp, align 8
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %cp, align 8
  %cmp = icmp eq %struct.gs_color_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %cp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %pcolor = bitcast %union.v* %value to %struct.gs_color_s**
  store %struct.gs_color_s* %3, %struct.gs_color_s** %pcolor, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 56, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_currentgscolor(%struct.gs_state_s*, %struct.gs_color_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetgscolor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 56
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %pcolor = bitcast %union.v* %value to %struct.gs_color_s**
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %call = call i32 @gs_setgscolor(%struct.gs_state_s* %2, %struct.gs_color_s* %4)
  store i32 %call, i32* %code, align 4
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_setgscolor(%struct.gs_state_s*, %struct.gs_color_s*) #1

; Function Attrs: nounwind uwtable
define void @zcolor_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([3 x %struct.op_def], [3 x %struct.op_def]* @zcolor_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

declare i8* @alloc(i32, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
