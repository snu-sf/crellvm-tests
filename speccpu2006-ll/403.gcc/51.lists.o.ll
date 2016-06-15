; ModuleID = 'lists.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }

@unused_insn_list = internal global %struct.rtx_def* null, align 8
@unused_expr_list = internal global %struct.rtx_def* null, align 8

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %val, %struct.rtx_def* %next) #0 {
entry:
  %val.addr = alloca %struct.rtx_def*, align 8
  %next.addr = alloca %struct.rtx_def*, align 8
  %r = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %val, %struct.rtx_def** %val.addr, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @unused_insn_list, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** @unused_insn_list, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %r, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** @unused_insn_list, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %4, %struct.rtx_def** %rtx3, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %6, %struct.rtx_def** %rtx6, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, -16711681
  store i32 %bf.clear, i32* %9, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 0, %struct.rtx_def* %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  ret %struct.rtx_def* %12
}

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @alloc_EXPR_LIST(i32 %kind, %struct.rtx_def* %val, %struct.rtx_def* %next) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %val.addr = alloca %struct.rtx_def*, align 8
  %next.addr = alloca %struct.rtx_def*, align 8
  %r = alloca %struct.rtx_def*, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.rtx_def* %val, %struct.rtx_def** %val.addr, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @unused_expr_list, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** @unused_expr_list, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %r, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** @unused_expr_list, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %4, %struct.rtx_def** %rtx3, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %6, %struct.rtx_def** %rtx6, align 8
  %8 = load i32, i32* %kind.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.value = and i32 %8, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %kind.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %11, %struct.rtx_def* %12, %struct.rtx_def* %13)
  store %struct.rtx_def* %call, %struct.rtx_def** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  ret %struct.rtx_def* %14
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @init_EXPR_INSN_LIST_cache() #0 {
entry:
  call void @ggc_add_root(i8* bitcast (%struct.rtx_def** @unused_expr_list to i8*), i32 1, i32 1, void (i8*)* @zap_lists)
  ret void
}

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @zap_lists(i8* %dummy) #0 {
entry:
  %dummy.addr = alloca i8*, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @unused_expr_list, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @unused_insn_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_EXPR_LIST_list(%struct.rtx_def** %listp) #0 {
entry:
  %listp.addr = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  call void @free_list(%struct.rtx_def** %2, %struct.rtx_def** @unused_expr_list)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_list(%struct.rtx_def** %listp, %struct.rtx_def** %unused_listp) #0 {
entry:
  %listp.addr = alloca %struct.rtx_def**, align 8
  %unused_listp.addr = alloca %struct.rtx_def**, align 8
  %link = alloca %struct.rtx_def*, align 8
  %prev_link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  store %struct.rtx_def** %unused_listp, %struct.rtx_def*** %unused_listp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev_link, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %prev_link, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %link, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %prev_link, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %link, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %unused_listp.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %prev_link, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx6, align 8
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %unused_listp.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %13, align 8
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_INSN_LIST_list(%struct.rtx_def** %listp) #0 {
entry:
  %listp.addr = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  call void @free_list(%struct.rtx_def** %2, %struct.rtx_def** @unused_insn_list)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_EXPR_LIST_node(%struct.rtx_def* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %ptr, %struct.rtx_def** %ptr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @unused_expr_list, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %ptr.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %0, %struct.rtx_def** %rtx, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ptr.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** @unused_expr_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_INSN_LIST_node(%struct.rtx_def* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %ptr, %struct.rtx_def** %ptr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @unused_insn_list, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %ptr.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %0, %struct.rtx_def** %rtx, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ptr.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** @unused_insn_list, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
