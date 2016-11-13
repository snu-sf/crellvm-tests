; ModuleID = './gsroprun.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rop_run_op_s = type { void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)*, %union.rop_source_s, %union.rop_source_s, i32, i8, i8, i8, i8*, i8*, void (%struct.rop_run_op_s*)*, i8* }
%union.rop_source_s = type { %struct.anon }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"This should never happen! key=%x\0A\00", align 1
@rop_proc_table = external constant [256 x i64 (i64, i64, i64)*], align 16

; Function Attrs: nounwind uwtable
define void @rop_get_run_op(%struct.rop_run_op_s* %op, i32 %rop, i32 %depth, i32 %flags) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %rop.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %swap = alloca i32, align 4
  %could_swap = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i32 %rop, i32* %rop.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %key to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %swap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %swap, align 4, !tbaa !5
  %2 = bitcast i32* %could_swap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %could_swap, align 4, !tbaa !5
  %3 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %shl = shl i32 %3, 2
  %4 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %xor = xor i32 %shl, %4
  %and = and i32 %xor, 204
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %or = or i32 %5, 1
  store i32 %or, i32* %flags.addr, align 4, !tbaa !5
  %6 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and1 = and i32 %6, -5
  store i32 %and1, i32* %flags.addr, align 4, !tbaa !5
  %7 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and2 = and i32 %7, -257
  store i32 %and2, i32* %rop.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %shl3 = shl i32 %8, 4
  %9 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %xor4 = xor i32 %shl3, %9
  %and5 = and i32 %xor4, 240
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %10 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %or8 = or i32 %10, 2
  store i32 %or8, i32* %flags.addr, align 4, !tbaa !5
  %11 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and9 = and i32 %11, -9
  store i32 %and9, i32* %flags.addr, align 4, !tbaa !5
  %12 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and10 = and i32 %12, -513
  store i32 %and10, i32* %rop.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %13 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and12 = and i32 %13, 3
  %cmp13 = icmp eq i32 %and12, 2
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %could_swap, align 4, !tbaa !5
  br i1 false, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %force_swap

force_swap:                                       ; preds = %if.then.188, %sw.bb.74, %sw.bb.71, %if.then.14
  store i32 0, i32* %could_swap, align 4, !tbaa !5
  store i32 1, i32* %swap, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %force_swap, %if.end.11
  %14 = load i32, i32* %swap, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %if.end.15
  %15 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and17 = and i32 %15, 2
  %tobool18 = icmp ne i32 %and17, 0
  %cond = select i1 %tobool18, i32 1, i32 0
  %16 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and19 = and i32 %16, 1
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 2, i32 0
  %or22 = or i32 %cond, %cond21
  %17 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and23 = and i32 %17, 8
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 4, i32 0
  %or26 = or i32 %or22, %cond25
  %18 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and27 = and i32 %18, 4
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 8, i32 0
  %or30 = or i32 %or26, %cond29
  store i32 %or30, i32* %flags.addr, align 4, !tbaa !5
  %19 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and31 = and i32 %19, 204
  %and32 = and i32 %and31, -241
  %shl33 = shl i32 %and32, 2
  %20 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and34 = and i32 %20, -205
  %and35 = and i32 %and34, 240
  %shr = ashr i32 %and35, 2
  %or36 = or i32 %shl33, %shr
  %21 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and37 = and i32 %21, -61
  %or38 = or i32 %or36, %and37
  %and39 = and i32 %or38, -769
  %22 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and40 = and i32 %22, 256
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 512, i32 0
  %or43 = or i32 %and39, %cond42
  %23 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and44 = and i32 %23, 512
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i32 256, i32 0
  %or47 = or i32 %or43, %cond46
  store i32 %or47, i32* %rop.addr, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.16, %if.end.15
  %24 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and49 = and i32 %24, 15
  %conv50 = trunc i32 %and49 to i8
  %25 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %flags51 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %25, i32 0, i32 6
  store i8 %conv50, i8* %flags51, align 1, !tbaa !7
  %26 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %conv52 = trunc i32 %26 to i8
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth53 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  store i8 %conv52, i8* %depth53, align 1, !tbaa !9
  %28 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and54 = and i32 %28, 1023
  %29 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop55 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %29, i32 0, i32 4
  store i32 %and54, i32* %rop55, align 4, !tbaa !10
  %30 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %release = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %30, i32 0, i32 10
  store void (%struct.rop_run_op_s*)* null, void (%struct.rop_run_op_s*)** %release, align 8, !tbaa !11
  %31 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %shl56 = shl i32 %31, 7
  %add = add nsw i32 %shl56, 64
  %32 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %shr57 = ashr i32 %32, 3
  %shl58 = shl i32 %shr57, 4
  %add59 = add nsw i32 %add, %shl58
  %33 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %add59, %33
  store i32 %add60, i32* %key, align 4, !tbaa !5
  br label %retry

retry:                                            ; preds = %if.then.192, %if.end.48
  %34 = load i32, i32* %key, align 4, !tbaa !5
  switch i32 %34, label %sw.default [
    i32 1985, label %sw.bb
    i32 10947, label %sw.bb.61
    i32 10963, label %sw.bb.65
    i32 10995, label %sw.bb.67
    i32 11585, label %sw.bb.69
    i32 11603, label %sw.bb.71
    i32 13139, label %sw.bb.72
    i32 11635, label %sw.bb.74
    i32 13171, label %sw.bb.75
    i32 32371, label %sw.bb.77
    i32 21827, label %sw.bb.79
    i32 21843, label %sw.bb.79
    i32 21875, label %sw.bb.79
    i32 26178, label %sw.bb.81
    i32 30530, label %sw.bb.83
    i32 30785, label %sw.bb.85
    i32 32065, label %sw.bb.87
    i32 0, label %sw.bb.89
    i32 16, label %sw.bb.98
    i32 20, label %sw.bb.117
    i32 24, label %sw.bb.117
    i32 28, label %sw.bb.117
    i32 48, label %sw.bb.119
    i32 52, label %sw.bb.127
    i32 56, label %sw.bb.127
    i32 60, label %sw.bb.127
    i32 1, label %sw.bb.129
    i32 17, label %sw.bb.138
    i32 21, label %sw.bb.146
    i32 25, label %sw.bb.146
    i32 29, label %sw.bb.146
    i32 49, label %sw.bb.148
    i32 53, label %sw.bb.156
    i32 57, label %sw.bb.156
    i32 61, label %sw.bb.156
    i32 3, label %sw.bb.158
    i32 19, label %sw.bb.167
    i32 23, label %sw.bb.175
    i32 27, label %sw.bb.175
    i32 31, label %sw.bb.175
    i32 51, label %sw.bb.177
    i32 55, label %sw.bb.185
    i32 59, label %sw.bb.185
    i32 63, label %sw.bb.185
  ]

sw.bb:                                            ; preds = %retry
  %35 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %35, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @notT_rop_run1_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.61:                                         ; preds = %retry
  %36 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run62 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %36, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @invert_rop_run1, void (%struct.rop_run_op_s*, i8*, i32)** %run62, align 8, !tbaa !12
  %37 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %37, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !13
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 3
  %b63 = bitcast %union.rop_source_s* %t to %struct.anon*
  %pos64 = getelementptr inbounds %struct.anon, %struct.anon* %b63, i32 0, i32 1
  store i32 0, i32* %pos64, align 4, !tbaa !13
  %39 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %39, i32 0, i32 7
  store i8 0, i8* %dpos, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.65:                                         ; preds = %retry
  %40 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run66 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %40, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @invert_rop_run8, void (%struct.rop_run_op_s*, i8*, i32)** %run66, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.67:                                         ; preds = %retry
  %41 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run68 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %41, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @invert_rop_run24, void (%struct.rop_run_op_s*, i8*, i32)** %run68, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.69:                                         ; preds = %retry
  %42 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run70 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %42, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @xor_rop_run1_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run70, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.71:                                         ; preds = %retry
  br label %force_swap

sw.bb.72:                                         ; preds = %retry
  %43 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run73 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %43, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @xor_rop_run8_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run73, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.74:                                         ; preds = %retry
  br label %force_swap

sw.bb.75:                                         ; preds = %retry
  %44 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run76 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %44, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @xor_rop_run24_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run76, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.77:                                         ; preds = %retry
  %45 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run78 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %45, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @sort_rop_run24_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run78, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.79:                                         ; preds = %retry, %retry, %retry
  %46 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run80 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %46, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @nop_rop_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run80, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.81:                                         ; preds = %retry
  %47 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run82 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %47, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @sets_rop_run1_const_t, void (%struct.rop_run_op_s*, i8*, i32)** %run82, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.83:                                         ; preds = %retry
  %48 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run84 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %48, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @dors_rop_run1_const_t, void (%struct.rop_run_op_s*, i8*, i32)** %run84, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.85:                                         ; preds = %retry
  %49 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run86 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %49, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @sett_rop_run1_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run86, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.87:                                         ; preds = %retry
  %50 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run88 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %50, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @dort_rop_run1_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run88, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.89:                                         ; preds = %retry
  %51 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run90 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %51, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run1, void (%struct.rop_run_op_s*, i8*, i32)** %run90, align 8, !tbaa !12
  %52 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s91 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %52, i32 0, i32 2
  %b92 = bitcast %union.rop_source_s* %s91 to %struct.anon*
  %pos93 = getelementptr inbounds %struct.anon, %struct.anon* %b92, i32 0, i32 1
  store i32 0, i32* %pos93, align 4, !tbaa !13
  %53 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t94 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %53, i32 0, i32 3
  %b95 = bitcast %union.rop_source_s* %t94 to %struct.anon*
  %pos96 = getelementptr inbounds %struct.anon, %struct.anon* %b95, i32 0, i32 1
  store i32 0, i32* %pos96, align 4, !tbaa !13
  %54 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos97 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %54, i32 0, i32 7
  store i8 0, i8* %dpos97, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.98:                                         ; preds = %retry
  %55 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and99 = and i32 %55, 256
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.else.108

if.then.101:                                      ; preds = %sw.bb.98
  %56 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and102 = and i32 %56, 512
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.101
  %57 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run105 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %57, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_trans_ST, void (%struct.rop_run_op_s*, i8*, i32)** %run105, align 8, !tbaa !12
  br label %if.end.107

if.else:                                          ; preds = %if.then.101
  %58 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run106 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %58, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_trans_S, void (%struct.rop_run_op_s*, i8*, i32)** %run106, align 8, !tbaa !12
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.104
  br label %if.end.116

if.else.108:                                      ; preds = %sw.bb.98
  %59 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and109 = and i32 %59, 512
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.else.108
  %60 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run112 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %60, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_trans_T, void (%struct.rop_run_op_s*, i8*, i32)** %run112, align 8, !tbaa !12
  br label %if.end.115

if.else.113:                                      ; preds = %if.else.108
  %61 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run114 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %61, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8, void (%struct.rop_run_op_s*, i8*, i32)** %run114, align 8, !tbaa !12
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %if.then.111
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.107
  br label %sw.epilog

sw.bb.117:                                        ; preds = %retry, %retry, %retry
  %62 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run118 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %62, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_1bit, void (%struct.rop_run_op_s*, i8*, i32)** %run118, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.119:                                        ; preds = %retry
  %63 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and120 = and i32 %63, 768
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %sw.bb.119
  %64 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run123 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %64, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_trans, void (%struct.rop_run_op_s*, i8*, i32)** %run123, align 8, !tbaa !12
  br label %if.end.126

if.else.124:                                      ; preds = %sw.bb.119
  %65 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run125 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %65, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24, void (%struct.rop_run_op_s*, i8*, i32)** %run125, align 8, !tbaa !12
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.124, %if.then.122
  br label %sw.epilog

sw.bb.127:                                        ; preds = %retry, %retry, %retry
  %66 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run128 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %66, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_1bit, void (%struct.rop_run_op_s*, i8*, i32)** %run128, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.129:                                        ; preds = %retry
  %67 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run130 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %67, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run1_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run130, align 8, !tbaa !12
  %68 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s131 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %68, i32 0, i32 2
  %b132 = bitcast %union.rop_source_s* %s131 to %struct.anon*
  %pos133 = getelementptr inbounds %struct.anon, %struct.anon* %b132, i32 0, i32 1
  store i32 0, i32* %pos133, align 4, !tbaa !13
  %69 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t134 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %69, i32 0, i32 3
  %b135 = bitcast %union.rop_source_s* %t134 to %struct.anon*
  %pos136 = getelementptr inbounds %struct.anon, %struct.anon* %b135, i32 0, i32 1
  store i32 0, i32* %pos136, align 4, !tbaa !13
  %70 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos137 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %70, i32 0, i32 7
  store i8 0, i8* %dpos137, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.138:                                        ; preds = %retry
  %71 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and139 = and i32 %71, 768
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %sw.bb.138
  %72 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run142 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %72, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_s_trans, void (%struct.rop_run_op_s*, i8*, i32)** %run142, align 8, !tbaa !12
  br label %if.end.145

if.else.143:                                      ; preds = %sw.bb.138
  %73 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run144 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %73, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run144, align 8, !tbaa !12
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.141
  br label %sw.epilog

sw.bb.146:                                        ; preds = %retry, %retry, %retry
  %74 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run147 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %74, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_s_1bit, void (%struct.rop_run_op_s*, i8*, i32)** %run147, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.148:                                        ; preds = %retry
  %75 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and149 = and i32 %75, 768
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %sw.bb.148
  %76 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run152 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %76, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_s_trans, void (%struct.rop_run_op_s*, i8*, i32)** %run152, align 8, !tbaa !12
  br label %if.end.155

if.else.153:                                      ; preds = %sw.bb.148
  %77 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run154 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %77, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_s, void (%struct.rop_run_op_s*, i8*, i32)** %run154, align 8, !tbaa !12
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.153, %if.then.151
  br label %sw.epilog

sw.bb.156:                                        ; preds = %retry, %retry, %retry
  %78 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run157 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %78, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_s_1bit, void (%struct.rop_run_op_s*, i8*, i32)** %run157, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.158:                                        ; preds = %retry
  %79 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run159 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %79, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run1_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run159, align 8, !tbaa !12
  %80 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s160 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %80, i32 0, i32 2
  %b161 = bitcast %union.rop_source_s* %s160 to %struct.anon*
  %pos162 = getelementptr inbounds %struct.anon, %struct.anon* %b161, i32 0, i32 1
  store i32 0, i32* %pos162, align 4, !tbaa !13
  %81 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t163 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %81, i32 0, i32 3
  %b164 = bitcast %union.rop_source_s* %t163 to %struct.anon*
  %pos165 = getelementptr inbounds %struct.anon, %struct.anon* %b164, i32 0, i32 1
  store i32 0, i32* %pos165, align 4, !tbaa !13
  %82 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos166 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %82, i32 0, i32 7
  store i8 0, i8* %dpos166, align 1, !tbaa !15
  br label %sw.epilog

sw.bb.167:                                        ; preds = %retry
  %83 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and168 = and i32 %83, 768
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %sw.bb.167
  %84 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run171 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %84, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_st_trans, void (%struct.rop_run_op_s*, i8*, i32)** %run171, align 8, !tbaa !12
  br label %if.end.174

if.else.172:                                      ; preds = %sw.bb.167
  %85 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run173 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %85, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run173, align 8, !tbaa !12
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.172, %if.then.170
  br label %sw.epilog

sw.bb.175:                                        ; preds = %retry, %retry, %retry
  %86 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run176 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %86, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run8_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run176, align 8, !tbaa !12
  br label %sw.epilog

sw.bb.177:                                        ; preds = %retry
  %87 = load i32, i32* %rop.addr, align 4, !tbaa !5
  %and178 = and i32 %87, 768
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %sw.bb.177
  %88 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run181 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %88, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_st_trans, void (%struct.rop_run_op_s*, i8*, i32)** %run181, align 8, !tbaa !12
  br label %if.end.184

if.else.182:                                      ; preds = %sw.bb.177
  %89 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run183 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %89, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run183, align 8, !tbaa !12
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.182, %if.then.180
  br label %sw.epilog

sw.bb.185:                                        ; preds = %retry, %retry, %retry
  %90 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run186 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %90, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @generic_rop_run24_const_st, void (%struct.rop_run_op_s*, i8*, i32)** %run186, align 8, !tbaa !12
  br label %sw.epilog

sw.default:                                       ; preds = %retry
  %91 = load i32, i32* %could_swap, align 4, !tbaa !5
  %tobool187 = icmp ne i32 %91, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %sw.default
  br label %force_swap

if.end.189:                                       ; preds = %sw.default
  %92 = load i32, i32* %key, align 4, !tbaa !5
  %and190 = and i32 %92, 64
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %if.end.189
  %93 = load i32, i32* %key, align 4, !tbaa !5
  %and193 = and i32 %93, 63
  store i32 %and193, i32* %key, align 4, !tbaa !5
  br label %retry

if.end.194:                                       ; preds = %if.end.189
  %call = call i8* @gs_program_name() #4
  %call195 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call195) #4
  %94 = load i32, i32* %key, align 4, !tbaa !5
  %call196 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %94) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.194, %sw.bb.185, %if.end.184, %sw.bb.175, %if.end.174, %sw.bb.158, %sw.bb.156, %if.end.155, %sw.bb.146, %if.end.145, %sw.bb.129, %sw.bb.127, %if.end.126, %sw.bb.117, %if.end.116, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb.75, %sw.bb.72, %sw.bb.69, %sw.bb.67, %sw.bb.65, %sw.bb.61, %sw.bb
  %95 = load i32, i32* %swap, align 4, !tbaa !5
  %tobool197 = icmp ne i32 %95, 0
  br i1 %tobool197, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %sw.epilog
  %96 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run199 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %96, i32 0, i32 0
  %97 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %run199, align 8, !tbaa !12
  %98 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %runswap = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %98, i32 0, i32 1
  store void (%struct.rop_run_op_s*, i8*, i32)* %97, void (%struct.rop_run_op_s*, i8*, i32)** %runswap, align 8, !tbaa !16
  %99 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run200 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %99, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* @rop_run_swapped, void (%struct.rop_run_op_s*, i8*, i32)** %run200, align 8, !tbaa !12
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.198, %sw.epilog
  %100 = bitcast i32* %could_swap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %swap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %key to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @notT_rop_run1_const_s(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %t, align 8, !tbaa !1
  %6 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 3
  %b11 = bitcast %union.rop_source_s* %t10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %tpos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %t, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %t, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %t, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %tpos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %tpos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %tpos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %t_skew, align 4, !tbaa !5
  %52 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %t_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %t, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 2
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %tlen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %tlen2, align 4, !tbaa !5
  %59 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %tlen, align 4, !tbaa !5
  %61 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 8
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.72

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 2
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %T, align 4, !tbaa !5
  %81 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %t, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32, i32* %T, align 4, !tbaa !5
  %neg65 = xor i32 %82, -1
  store i32 %neg65, i32* %D, align 4, !tbaa !5
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.64
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %83 = load i32*, i32** %d, align 8, !tbaa !1
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg68 = xor i32 %85, -1
  %and69 = and i32 %84, %neg68
  %86 = load i32, i32* %D, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %and70 = and i32 %86, %87
  %or71 = or i32 %and69, %and70
  %88 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or71, i32* %88, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.42
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %89, -1
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.end.72
  %90 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and76 = and i32 %90, 3
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.111

if.then.78:                                       ; preds = %lor.lhs.false.75, %if.end.72
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %91 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and80 = and i32 %91, 2
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %do.body.79
  br label %cond.end.86

cond.false.83:                                    ; preds = %do.body.79
  %92 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl85 = shl i32 %94, %95
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ %shl85, %cond.false.83 ]
  %96 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp88 = icmp eq i32 %96, 0
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.86
  br label %cond.end.95

cond.false.91:                                    ; preds = %cond.end.86
  %97 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub93 = sub nsw i32 32, %100
  %shr94 = lshr i32 %99, %sub93
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.91, %cond.true.90
  %cond96 = phi i32 [ 0, %cond.true.90 ], [ %shr94, %cond.false.91 ]
  %or97 = or i32 %cond87, %cond96
  %101 = call i32 @llvm.bswap.i32(i32 %or97)
  store i32 %101, i32* %T, align 4, !tbaa !5
  %102 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %incdec.ptr98, i32** %t, align 8, !tbaa !1
  br label %do.cond.99

do.cond.99:                                       ; preds = %cond.end.95
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %103 = load i32, i32* %T, align 4, !tbaa !5
  %neg102 = xor i32 %103, -1
  store i32 %neg102, i32* %D, align 4, !tbaa !5
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.101
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %104 = load i32*, i32** %d, align 8, !tbaa !1
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg105 = xor i32 %106, -1
  %and106 = and i32 %105, %neg105
  %107 = load i32, i32* %D, align 4, !tbaa !5
  %108 = load i32, i32* %lmask, align 4, !tbaa !5
  %and107 = and i32 %107, %108
  %or108 = or i32 %and106, %and107
  %109 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or108, i32* %109, align 4, !tbaa !5
  %110 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %incdec.ptr109, i32** %d, align 8, !tbaa !1
  %111 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub110 = sub nsw i32 %111, 32
  store i32 %sub110, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.104, %lor.lhs.false.75
  %112 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %112, 0
  br i1 %cmp112, label %if.then.114, label %if.end.152

if.then.114:                                      ; preds = %if.end.111
  %113 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %113, 0
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.114
  br label %do.body.118

do.body.118:                                      ; preds = %do.cond.126, %if.then.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.118
  %114 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr120, i32** %t, align 8, !tbaa !1
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %neg121 = xor i32 %115, -1
  %116 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %neg121, i32* %116, align 4, !tbaa !5
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.119
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %117 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %incdec.ptr124, i32** %d, align 8, !tbaa !1
  %118 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub125 = sub nsw i32 %118, 32
  store i32 %sub125, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.123
  %119 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp127 = icmp sgt i32 %119, 0
  br i1 %cmp127, label %do.body.118, label %do.end.129

do.end.129:                                       ; preds = %do.cond.126
  br label %if.end.151

if.else:                                          ; preds = %if.then.114
  br label %do.body.130

do.body.130:                                      ; preds = %do.cond.147, %if.else
  br label %do.body.131

do.body.131:                                      ; preds = %do.body.130
  %120 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %120, i64 0
  %121 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %123 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl133 = shl i32 %122, %123
  %124 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i32, i32* %124, i64 1
  %125 = load i32, i32* %arrayidx134, align 4, !tbaa !5
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %127 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub135 = sub nsw i32 32, %127
  %shr136 = lshr i32 %126, %sub135
  %or137 = or i32 %shl133, %shr136
  %128 = call i32 @llvm.bswap.i32(i32 %or137)
  store i32 %128, i32* %T, align 4, !tbaa !5
  %129 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr138, i32** %t, align 8, !tbaa !1
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.131
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %130 = load i32, i32* %T, align 4, !tbaa !5
  %neg142 = xor i32 %130, -1
  %131 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %neg142, i32* %131, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.141
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  %132 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr145, i32** %d, align 8, !tbaa !1
  %133 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub146 = sub nsw i32 %133, 32
  store i32 %sub146, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.147

do.cond.147:                                      ; preds = %do.end.144
  %134 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %134, 0
  br i1 %cmp148, label %do.body.130, label %do.end.150

do.end.150:                                       ; preds = %do.cond.147
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.129
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.111
  br label %do.body.153

do.body.153:                                      ; preds = %if.end.152
  %135 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx154, align 4, !tbaa !5
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %138 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl155 = shl i32 %137, %138
  %139 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and156 = and i32 %139, 8
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %do.body.153
  br label %cond.end.163

cond.false.159:                                   ; preds = %do.body.153
  %140 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %140, i64 1
  %141 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub161 = sub nsw i32 32, %143
  %shr162 = lshr i32 %142, %sub161
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.158
  %cond164 = phi i32 [ 0, %cond.true.158 ], [ %shr162, %cond.false.159 ]
  %or165 = or i32 %shl155, %cond164
  %144 = call i32 @llvm.bswap.i32(i32 %or165)
  store i32 %144, i32* %T, align 4, !tbaa !5
  %145 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr166, i32** %t, align 8, !tbaa !1
  br label %do.cond.167

do.cond.167:                                      ; preds = %cond.end.163
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.end.168
  %146 = load i32, i32* %T, align 4, !tbaa !5
  %neg170 = xor i32 %146, -1
  store i32 %neg170, i32* %D, align 4, !tbaa !5
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.169
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %147 = load i32*, i32** %d, align 8, !tbaa !1
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %149 = load i32, i32* %rmask, align 4, !tbaa !5
  %and173 = and i32 %148, %149
  %150 = load i32, i32* %D, align 4, !tbaa !5
  %151 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg174 = xor i32 %151, -1
  %and175 = and i32 %150, %neg174
  %or176 = or i32 %and173, %and175
  %152 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or176, i32* %152, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.172, %do.end.67
  %153 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @invert_rop_run1(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 7
  %5 = load i8, i8* %dpos1, align 1, !tbaa !15
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %6 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32*, i32** %d, align 8, !tbaa !1
  %11 = ptrtoint i32* %10 to i64
  %and = and i64 %11, 3
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %offset, align 4, !tbaa !5
  %12 = load i32*, i32** %d, align 8, !tbaa !1
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %14 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  %15 = bitcast i8* %add.ptr to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  %16 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %16, 3
  %17 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %17, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %18 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %len.addr, align 4, !tbaa !5
  %20 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %20, i32 0, i32 5
  %21 = load i8, i8* %depth, align 1, !tbaa !9
  %conv3 = zext i8 %21 to i32
  %mul = mul nsw i32 %19, %conv3
  %22 = load i32, i32* %dpos, align 4, !tbaa !5
  %add4 = add nsw i32 %mul, %22
  store i32 %add4, i32* %len.addr, align 4, !tbaa !5
  %23 = load i32, i32* %dpos, align 4, !tbaa !5
  %and5 = and i32 31, %23
  %shr = lshr i32 -1, %and5
  %24 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %24, i32* %lmask, align 4, !tbaa !5
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and6 = and i32 31, %25
  %shr7 = lshr i32 -1, %and6
  %26 = call i32 @llvm.bswap.i32(i32 %shr7)
  store i32 %26, i32* %rmask, align 4, !tbaa !5
  %27 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %27, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %28 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %28, 32
  store i32 %sub, i32* %len.addr, align 4, !tbaa !5
  %29 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp9 = icmp sle i32 %29, 0
  br i1 %cmp9, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %30 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %30, -1
  %31 = load i32, i32* %lmask, align 4, !tbaa !5
  %and12 = and i32 %31, %neg
  store i32 %and12, i32* %lmask, align 4, !tbaa !5
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  %32 = load i32*, i32** %d, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %neg14 = xor i32 %33, -1
  store i32 %neg14, i32* %D, align 4, !tbaa !5
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.13
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %34 = load i32*, i32** %d, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg17 = xor i32 %36, -1
  %and18 = and i32 %35, %neg17
  %37 = load i32, i32* %D, align 4, !tbaa !5
  %38 = load i32, i32* %lmask, align 4, !tbaa !5
  %and19 = and i32 %37, %38
  %or = or i32 %and18, %and19
  %39 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or, i32* %39, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %40 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp21 = icmp ne i32 %40, -1
  br i1 %cmp21, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %if.end.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %41 = load i32*, i32** %d, align 8, !tbaa !1
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %neg25 = xor i32 %42, -1
  store i32 %neg25, i32* %D, align 4, !tbaa !5
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.24
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %43 = load i32*, i32** %d, align 8, !tbaa !1
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg28 = xor i32 %45, -1
  %and29 = and i32 %44, %neg28
  %46 = load i32, i32* %D, align 4, !tbaa !5
  %47 = load i32, i32* %lmask, align 4, !tbaa !5
  %and30 = and i32 %46, %47
  %or31 = or i32 %and29, %and30
  %48 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or31, i32* %48, align 4, !tbaa !5
  %49 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr, i32** %d, align 8, !tbaa !1
  %50 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub32 = sub nsw i32 %50, 32
  store i32 %sub32, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.27, %if.end.20
  %51 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %51, 0
  br i1 %cmp34, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %if.end.33
  br label %do.body.37

do.body.37:                                       ; preds = %do.cond.44, %if.then.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.body.37
  %52 = load i32*, i32** %d, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %neg39 = xor i32 %53, -1
  %54 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %neg39, i32* %54, align 4, !tbaa !5
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.38
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %55 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr42, i32** %d, align 8, !tbaa !1
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %56, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.end.41
  %57 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp45 = icmp sgt i32 %57, 0
  br i1 %cmp45, label %do.body.37, label %do.end.47

do.end.47:                                        ; preds = %do.cond.44
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %if.end.33
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %58 = load i32*, i32** %d, align 8, !tbaa !1
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %neg50 = xor i32 %59, -1
  store i32 %neg50, i32* %D, align 4, !tbaa !5
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.49
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %60 = load i32*, i32** %d, align 8, !tbaa !1
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = load i32, i32* %rmask, align 4, !tbaa !5
  %and53 = and i32 %61, %62
  %63 = load i32, i32* %D, align 4, !tbaa !5
  %64 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg54 = xor i32 %64, -1
  %and55 = and i32 %63, %neg54
  %or56 = or i32 %and53, %and55
  %65 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or56, i32* %65, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.52, %do.end.16
  %66 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @invert_rop_run8(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i32
  %neg = xor i32 %conv, -1
  %conv2 = trunc i32 %neg to i8
  %2 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv2, i8* %2, align 1, !tbaa !18
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %3 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.3

do.end.3:                                         ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @invert_rop_run24(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond.16, %entry
  %0 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %2 to i64
  %shl = shl i64 %conv, 16
  %3 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !18
  %conv3 = zext i8 %4 to i64
  %shl4 = shl i64 %conv3, 8
  %or = or i64 %shl, %shl4
  %5 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx5, align 1, !tbaa !18
  %conv6 = zext i8 %6 to i64
  %or7 = or i64 %or, %conv6
  %neg = xor i64 %or7, -1
  store i64 %neg, i64* %D, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %7, 16
  %conv8 = trunc i64 %shr to i8
  %8 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !18
  %9 = load i64, i64* %D, align 8, !tbaa !19
  %conv10 = trunc i64 %9 to i32
  %shr11 = lshr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i8
  %10 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %conv12, i8* %arrayidx13, align 1, !tbaa !18
  %11 = load i64, i64* %D, align 8, !tbaa !19
  %conv14 = trunc i64 %11 to i8
  %12 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !18
  %13 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 3
  store i8* %add.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end
  %15 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xor_rop_run1_const_s(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %t, align 8, !tbaa !1
  %6 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 3
  %b11 = bitcast %union.rop_source_s* %t10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %tpos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %t, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %t, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %t, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %tpos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %tpos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %tpos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %t_skew, align 4, !tbaa !5
  %52 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %t_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %t, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 2
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %tlen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %tlen2, align 4, !tbaa !5
  %59 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %tlen, align 4, !tbaa !5
  %61 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 8
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.71

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 2
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %T, align 4, !tbaa !5
  %81 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %t, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32*, i32** %d, align 8, !tbaa !1
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = load i32, i32* %T, align 4, !tbaa !5
  %xor = xor i32 %83, %84
  store i32 %xor, i32* %D, align 4, !tbaa !5
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %85 = load i32*, i32** %d, align 8, !tbaa !1
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg67 = xor i32 %87, -1
  %and68 = and i32 %86, %neg67
  %88 = load i32, i32* %D, align 4, !tbaa !5
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %and69 = and i32 %88, %89
  %or70 = or i32 %and68, %and69
  %90 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or70, i32* %90, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.42
  %91 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %91, -1
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.end.71
  %92 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and75 = and i32 %92, 3
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.110

if.then.77:                                       ; preds = %lor.lhs.false.74, %if.end.71
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %93 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and79 = and i32 %93, 2
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %do.body.78
  br label %cond.end.85

cond.false.82:                                    ; preds = %do.body.78
  %94 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %97 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl84 = shl i32 %96, %97
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.81
  %cond86 = phi i32 [ 0, %cond.true.81 ], [ %shl84, %cond.false.82 ]
  %98 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %98, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.85
  br label %cond.end.94

cond.false.90:                                    ; preds = %cond.end.85
  %99 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %99, i64 1
  %100 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %102 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub92 = sub nsw i32 32, %102
  %shr93 = lshr i32 %101, %sub92
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.90, %cond.true.89
  %cond95 = phi i32 [ 0, %cond.true.89 ], [ %shr93, %cond.false.90 ]
  %or96 = or i32 %cond86, %cond95
  %103 = call i32 @llvm.bswap.i32(i32 %or96)
  store i32 %103, i32* %T, align 4, !tbaa !5
  %104 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr97, i32** %t, align 8, !tbaa !1
  br label %do.cond.98

do.cond.98:                                       ; preds = %cond.end.94
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %105 = load i32*, i32** %d, align 8, !tbaa !1
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = load i32, i32* %T, align 4, !tbaa !5
  %xor101 = xor i32 %106, %107
  store i32 %xor101, i32* %D, align 4, !tbaa !5
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.100
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  %108 = load i32*, i32** %d, align 8, !tbaa !1
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %110 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg104 = xor i32 %110, -1
  %and105 = and i32 %109, %neg104
  %111 = load i32, i32* %D, align 4, !tbaa !5
  %112 = load i32, i32* %lmask, align 4, !tbaa !5
  %and106 = and i32 %111, %112
  %or107 = or i32 %and105, %and106
  %113 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or107, i32* %113, align 4, !tbaa !5
  %114 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr108, i32** %d, align 8, !tbaa !1
  %115 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub109 = sub nsw i32 %115, 32
  store i32 %sub109, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %do.end.103, %lor.lhs.false.74
  %116 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp111 = icmp sgt i32 %116, 0
  br i1 %cmp111, label %if.then.113, label %if.end.151

if.then.113:                                      ; preds = %if.end.110
  %117 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %117, 0
  br i1 %cmp114, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %if.then.113
  br label %do.body.117

do.body.117:                                      ; preds = %do.cond.125, %if.then.116
  br label %do.body.118

do.body.118:                                      ; preds = %do.body.117
  %118 = load i32*, i32** %d, align 8, !tbaa !1
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %incdec.ptr119, i32** %t, align 8, !tbaa !1
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %xor120 = xor i32 %119, %121
  %122 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %xor120, i32* %122, align 4, !tbaa !5
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.118
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  %123 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %incdec.ptr123, i32** %d, align 8, !tbaa !1
  %124 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub124 = sub nsw i32 %124, 32
  store i32 %sub124, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.125

do.cond.125:                                      ; preds = %do.end.122
  %125 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp126 = icmp sgt i32 %125, 0
  br i1 %cmp126, label %do.body.117, label %do.end.128

do.end.128:                                       ; preds = %do.cond.125
  br label %if.end.150

if.else:                                          ; preds = %if.then.113
  br label %do.body.129

do.body.129:                                      ; preds = %do.cond.146, %if.else
  br label %do.body.130

do.body.130:                                      ; preds = %do.body.129
  %126 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx131, align 4, !tbaa !5
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %129 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl132 = shl i32 %128, %129
  %130 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %130, i64 1
  %131 = load i32, i32* %arrayidx133, align 4, !tbaa !5
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  %133 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub134 = sub nsw i32 32, %133
  %shr135 = lshr i32 %132, %sub134
  %or136 = or i32 %shl132, %shr135
  %134 = call i32 @llvm.bswap.i32(i32 %or136)
  store i32 %134, i32* %T, align 4, !tbaa !5
  %135 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr137 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %incdec.ptr137, i32** %t, align 8, !tbaa !1
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.body.130
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  br label %do.body.140

do.body.140:                                      ; preds = %do.end.139
  %136 = load i32*, i32** %d, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = load i32, i32* %T, align 4, !tbaa !5
  %xor141 = xor i32 %137, %138
  %139 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %xor141, i32* %139, align 4, !tbaa !5
  br label %do.cond.142

do.cond.142:                                      ; preds = %do.body.140
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  %140 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr144 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr144, i32** %d, align 8, !tbaa !1
  %141 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub145 = sub nsw i32 %141, 32
  store i32 %sub145, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.146

do.cond.146:                                      ; preds = %do.end.143
  %142 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp147 = icmp sgt i32 %142, 0
  br i1 %cmp147, label %do.body.129, label %do.end.149

do.end.149:                                       ; preds = %do.cond.146
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %do.end.128
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.110
  br label %do.body.152

do.body.152:                                      ; preds = %if.end.151
  %143 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx153, align 4, !tbaa !5
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %146 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl154 = shl i32 %145, %146
  %147 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and155 = and i32 %147, 8
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %cond.true.157, label %cond.false.158

cond.true.157:                                    ; preds = %do.body.152
  br label %cond.end.162

cond.false.158:                                   ; preds = %do.body.152
  %148 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i32, i32* %148, i64 1
  %149 = load i32, i32* %arrayidx159, align 4, !tbaa !5
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  %151 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub160 = sub nsw i32 32, %151
  %shr161 = lshr i32 %150, %sub160
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.158, %cond.true.157
  %cond163 = phi i32 [ 0, %cond.true.157 ], [ %shr161, %cond.false.158 ]
  %or164 = or i32 %shl154, %cond163
  %152 = call i32 @llvm.bswap.i32(i32 %or164)
  store i32 %152, i32* %T, align 4, !tbaa !5
  %153 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr165 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %incdec.ptr165, i32** %t, align 8, !tbaa !1
  br label %do.cond.166

do.cond.166:                                      ; preds = %cond.end.162
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.end.167
  %154 = load i32*, i32** %d, align 8, !tbaa !1
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = load i32, i32* %T, align 4, !tbaa !5
  %xor169 = xor i32 %155, %156
  store i32 %xor169, i32* %D, align 4, !tbaa !5
  br label %do.cond.170

do.cond.170:                                      ; preds = %do.body.168
  br label %do.end.171

do.end.171:                                       ; preds = %do.cond.170
  %157 = load i32*, i32** %d, align 8, !tbaa !1
  %158 = load i32, i32* %157, align 4, !tbaa !5
  %159 = load i32, i32* %rmask, align 4, !tbaa !5
  %and172 = and i32 %158, %159
  %160 = load i32, i32* %D, align 4, !tbaa !5
  %161 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg173 = xor i32 %161, -1
  %and174 = and i32 %160, %neg173
  %or175 = or i32 %and172, %and174
  %162 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or175, i32* %162, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.171, %do.end.66
  %163 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @xor_rop_run8_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %S = alloca i8, align 1
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %0 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %0, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %1 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %1 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond.5, %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %4 = load i8, i8* %S, align 1, !tbaa !18
  %conv3 = zext i8 %4 to i32
  %xor = xor i32 %conv2, %conv3
  %conv4 = trunc i32 %xor to i8
  %5 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv4, i8* %5, align 1, !tbaa !18
  br label %do.cond

do.cond:                                          ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  %7 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xor_rop_run24_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %S = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %2 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %2, i64* %S, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.16, %entry
  %3 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %4 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %5 to i64
  %shl = shl i64 %conv, 16
  %6 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !18
  %conv3 = zext i8 %7 to i64
  %shl4 = shl i64 %conv3, 8
  %or = or i64 %shl, %shl4
  %8 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !18
  %conv6 = zext i8 %9 to i64
  %or7 = or i64 %or, %conv6
  %10 = load i64, i64* %S, align 8, !tbaa !19
  %xor = xor i64 %or7, %10
  store i64 %xor, i64* %D, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %11, 16
  %conv8 = trunc i64 %shr to i8
  %12 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !18
  %13 = load i64, i64* %D, align 8, !tbaa !19
  %conv10 = trunc i64 %13 to i32
  %shr11 = lshr i32 %conv10, 8
  %conv12 = trunc i32 %shr11 to i8
  %14 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %conv12, i8* %arrayidx13, align 1, !tbaa !18
  %15 = load i64, i64* %D, align 8, !tbaa !19
  %conv14 = trunc i64 %15 to i8
  %16 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !18
  %17 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %add.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end
  %19 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %20 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_rop_run24_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %S = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %2 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %2, i64* %S, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.8, %entry
  %3 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %4 = load i64, i64* %S, align 8, !tbaa !19
  store i64 %4, i64* %D, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %5, 16
  %conv = trunc i64 %shr to i8
  %6 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !18
  %7 = load i64, i64* %D, align 8, !tbaa !19
  %conv2 = trunc i64 %7 to i32
  %shr3 = lshr i32 %conv2, 8
  %conv4 = trunc i32 %shr3 to i8
  %8 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !18
  %9 = load i64, i64* %D, align 8, !tbaa !19
  %conv6 = trunc i64 %9 to i8
  %10 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !18
  %11 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %add.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  %13 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %14 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nop_rop_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sets_rop_run1_const_t(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %s = alloca i32*, align 8
  %S = alloca i32, align 4
  %s_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %slen = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %spos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %s, align 8, !tbaa !1
  %6 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 2
  %b11 = bitcast %union.rop_source_s* %s10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %spos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %s, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %s, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %s, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %spos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %spos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %spos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %s_skew, align 4, !tbaa !5
  %52 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %s_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %s, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 1
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %slen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %slen2, align 4, !tbaa !5
  %59 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %slen, align 4, !tbaa !5
  %61 = load i32, i32* %slen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 4
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.71

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 1
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 4
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %S, align 4, !tbaa !5
  %81 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %s, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %82, i32* %D, align 4, !tbaa !5
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %83 = load i32*, i32** %d, align 8, !tbaa !1
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg67 = xor i32 %85, -1
  %and68 = and i32 %84, %neg67
  %86 = load i32, i32* %D, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %and69 = and i32 %86, %87
  %or70 = or i32 %and68, %and69
  %88 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or70, i32* %88, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.42
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %89, -1
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.end.71
  %90 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and75 = and i32 %90, 3
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.109

if.then.77:                                       ; preds = %lor.lhs.false.74, %if.end.71
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %91 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and79 = and i32 %91, 1
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %do.body.78
  br label %cond.end.85

cond.false.82:                                    ; preds = %do.body.78
  %92 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl84 = shl i32 %94, %95
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.81
  %cond86 = phi i32 [ 0, %cond.true.81 ], [ %shl84, %cond.false.82 ]
  %96 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %96, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.85
  br label %cond.end.94

cond.false.90:                                    ; preds = %cond.end.85
  %97 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub92 = sub nsw i32 32, %100
  %shr93 = lshr i32 %99, %sub92
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.90, %cond.true.89
  %cond95 = phi i32 [ 0, %cond.true.89 ], [ %shr93, %cond.false.90 ]
  %or96 = or i32 %cond86, %cond95
  %101 = call i32 @llvm.bswap.i32(i32 %or96)
  store i32 %101, i32* %S, align 4, !tbaa !5
  %102 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %incdec.ptr97, i32** %s, align 8, !tbaa !1
  br label %do.cond.98

do.cond.98:                                       ; preds = %cond.end.94
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %103 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %103, i32* %D, align 4, !tbaa !5
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %104 = load i32*, i32** %d, align 8, !tbaa !1
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg103 = xor i32 %106, -1
  %and104 = and i32 %105, %neg103
  %107 = load i32, i32* %D, align 4, !tbaa !5
  %108 = load i32, i32* %lmask, align 4, !tbaa !5
  %and105 = and i32 %107, %108
  %or106 = or i32 %and104, %and105
  %109 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or106, i32* %109, align 4, !tbaa !5
  %110 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %incdec.ptr107, i32** %d, align 8, !tbaa !1
  %111 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub108 = sub nsw i32 %111, 32
  store i32 %sub108, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.102, %lor.lhs.false.74
  %112 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp110 = icmp sgt i32 %112, 0
  br i1 %cmp110, label %if.then.112, label %if.end.148

if.then.112:                                      ; preds = %if.end.109
  %113 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %113, 0
  br i1 %cmp113, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.then.112
  br label %do.body.116

do.body.116:                                      ; preds = %do.cond.123, %if.then.115
  br label %do.body.117

do.body.117:                                      ; preds = %do.body.116
  %114 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr118, i32** %s, align 8, !tbaa !1
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %116 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %115, i32* %116, align 4, !tbaa !5
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.117
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  %117 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %incdec.ptr121, i32** %d, align 8, !tbaa !1
  %118 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub122 = sub nsw i32 %118, 32
  store i32 %sub122, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.end.120
  %119 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp124 = icmp sgt i32 %119, 0
  br i1 %cmp124, label %do.body.116, label %do.end.126

do.end.126:                                       ; preds = %do.cond.123
  br label %if.end.147

if.else:                                          ; preds = %if.then.112
  br label %do.body.127

do.body.127:                                      ; preds = %do.cond.143, %if.else
  br label %do.body.128

do.body.128:                                      ; preds = %do.body.127
  %120 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %120, i64 0
  %121 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %123 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl130 = shl i32 %122, %123
  %124 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i32, i32* %124, i64 1
  %125 = load i32, i32* %arrayidx131, align 4, !tbaa !5
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %127 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub132 = sub nsw i32 32, %127
  %shr133 = lshr i32 %126, %sub132
  %or134 = or i32 %shl130, %shr133
  %128 = call i32 @llvm.bswap.i32(i32 %or134)
  store i32 %128, i32* %S, align 4, !tbaa !5
  %129 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr135 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr135, i32** %s, align 8, !tbaa !1
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.128
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %130 = load i32, i32* %S, align 4, !tbaa !5
  %131 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %130, i32* %131, align 4, !tbaa !5
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %132 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr141, i32** %d, align 8, !tbaa !1
  %133 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub142 = sub nsw i32 %133, 32
  store i32 %sub142, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.end.140
  %134 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp144 = icmp sgt i32 %134, 0
  br i1 %cmp144, label %do.body.127, label %do.end.146

do.end.146:                                       ; preds = %do.cond.143
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.end.126
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.109
  br label %do.body.149

do.body.149:                                      ; preds = %if.end.148
  %135 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx150, align 4, !tbaa !5
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %138 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl151 = shl i32 %137, %138
  %139 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and152 = and i32 %139, 4
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %do.body.149
  br label %cond.end.159

cond.false.155:                                   ; preds = %do.body.149
  %140 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i32, i32* %140, i64 1
  %141 = load i32, i32* %arrayidx156, align 4, !tbaa !5
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub157 = sub nsw i32 32, %143
  %shr158 = lshr i32 %142, %sub157
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.155, %cond.true.154
  %cond160 = phi i32 [ 0, %cond.true.154 ], [ %shr158, %cond.false.155 ]
  %or161 = or i32 %shl151, %cond160
  %144 = call i32 @llvm.bswap.i32(i32 %or161)
  store i32 %144, i32* %S, align 4, !tbaa !5
  %145 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr162, i32** %s, align 8, !tbaa !1
  br label %do.cond.163

do.cond.163:                                      ; preds = %cond.end.159
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %146 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %146, i32* %D, align 4, !tbaa !5
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.body.165
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  %147 = load i32*, i32** %d, align 8, !tbaa !1
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %149 = load i32, i32* %rmask, align 4, !tbaa !5
  %and168 = and i32 %148, %149
  %150 = load i32, i32* %D, align 4, !tbaa !5
  %151 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg169 = xor i32 %151, -1
  %and170 = and i32 %150, %neg169
  %or171 = or i32 %and168, %and170
  %152 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or171, i32* %152, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.167, %do.end.66
  %153 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dors_rop_run1_const_t(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %s = alloca i32*, align 8
  %S = alloca i32, align 4
  %s_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %slen = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %spos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %s, align 8, !tbaa !1
  %6 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 2
  %b11 = bitcast %union.rop_source_s* %s10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %spos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %s, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %s, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %s, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %spos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %spos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %spos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %s_skew, align 4, !tbaa !5
  %52 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %s_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %s, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 1
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %slen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %slen2, align 4, !tbaa !5
  %59 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %slen, align 4, !tbaa !5
  %61 = load i32, i32* %slen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 4
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.72

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 1
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 4
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %S, align 4, !tbaa !5
  %81 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %s, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32*, i32** %d, align 8, !tbaa !1
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = load i32, i32* %S, align 4, !tbaa !5
  %or65 = or i32 %83, %84
  store i32 %or65, i32* %D, align 4, !tbaa !5
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.64
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %85 = load i32*, i32** %d, align 8, !tbaa !1
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg68 = xor i32 %87, -1
  %and69 = and i32 %86, %neg68
  %88 = load i32, i32* %D, align 4, !tbaa !5
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %and70 = and i32 %88, %89
  %or71 = or i32 %and69, %and70
  %90 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or71, i32* %90, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.42
  %91 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %91, -1
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.end.72
  %92 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and76 = and i32 %92, 3
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.111

if.then.78:                                       ; preds = %lor.lhs.false.75, %if.end.72
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %93 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and80 = and i32 %93, 1
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %do.body.79
  br label %cond.end.86

cond.false.83:                                    ; preds = %do.body.79
  %94 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %97 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl85 = shl i32 %96, %97
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ %shl85, %cond.false.83 ]
  %98 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp88 = icmp eq i32 %98, 0
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.86
  br label %cond.end.95

cond.false.91:                                    ; preds = %cond.end.86
  %99 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %99, i64 1
  %100 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %102 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub93 = sub nsw i32 32, %102
  %shr94 = lshr i32 %101, %sub93
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.91, %cond.true.90
  %cond96 = phi i32 [ 0, %cond.true.90 ], [ %shr94, %cond.false.91 ]
  %or97 = or i32 %cond87, %cond96
  %103 = call i32 @llvm.bswap.i32(i32 %or97)
  store i32 %103, i32* %S, align 4, !tbaa !5
  %104 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr98, i32** %s, align 8, !tbaa !1
  br label %do.cond.99

do.cond.99:                                       ; preds = %cond.end.95
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %105 = load i32*, i32** %d, align 8, !tbaa !1
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = load i32, i32* %S, align 4, !tbaa !5
  %or102 = or i32 %106, %107
  store i32 %or102, i32* %D, align 4, !tbaa !5
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.101
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %108 = load i32*, i32** %d, align 8, !tbaa !1
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %110 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg105 = xor i32 %110, -1
  %and106 = and i32 %109, %neg105
  %111 = load i32, i32* %D, align 4, !tbaa !5
  %112 = load i32, i32* %lmask, align 4, !tbaa !5
  %and107 = and i32 %111, %112
  %or108 = or i32 %and106, %and107
  %113 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or108, i32* %113, align 4, !tbaa !5
  %114 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr109, i32** %d, align 8, !tbaa !1
  %115 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub110 = sub nsw i32 %115, 32
  store i32 %sub110, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.104, %lor.lhs.false.75
  %116 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %116, 0
  br i1 %cmp112, label %if.then.114, label %if.end.152

if.then.114:                                      ; preds = %if.end.111
  %117 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %117, 0
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.114
  br label %do.body.118

do.body.118:                                      ; preds = %do.cond.126, %if.then.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.118
  %118 = load i32*, i32** %d, align 8, !tbaa !1
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %incdec.ptr120, i32** %s, align 8, !tbaa !1
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %or121 = or i32 %119, %121
  %122 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or121, i32* %122, align 4, !tbaa !5
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.119
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %123 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %incdec.ptr124, i32** %d, align 8, !tbaa !1
  %124 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub125 = sub nsw i32 %124, 32
  store i32 %sub125, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.123
  %125 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp127 = icmp sgt i32 %125, 0
  br i1 %cmp127, label %do.body.118, label %do.end.129

do.end.129:                                       ; preds = %do.cond.126
  br label %if.end.151

if.else:                                          ; preds = %if.then.114
  br label %do.body.130

do.body.130:                                      ; preds = %do.cond.147, %if.else
  br label %do.body.131

do.body.131:                                      ; preds = %do.body.130
  %126 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %129 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl133 = shl i32 %128, %129
  %130 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i32, i32* %130, i64 1
  %131 = load i32, i32* %arrayidx134, align 4, !tbaa !5
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  %133 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub135 = sub nsw i32 32, %133
  %shr136 = lshr i32 %132, %sub135
  %or137 = or i32 %shl133, %shr136
  %134 = call i32 @llvm.bswap.i32(i32 %or137)
  store i32 %134, i32* %S, align 4, !tbaa !5
  %135 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %incdec.ptr138, i32** %s, align 8, !tbaa !1
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.131
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %136 = load i32*, i32** %d, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = load i32, i32* %S, align 4, !tbaa !5
  %or142 = or i32 %137, %138
  %139 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or142, i32* %139, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.141
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  %140 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr145, i32** %d, align 8, !tbaa !1
  %141 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub146 = sub nsw i32 %141, 32
  store i32 %sub146, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.147

do.cond.147:                                      ; preds = %do.end.144
  %142 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %142, 0
  br i1 %cmp148, label %do.body.130, label %do.end.150

do.end.150:                                       ; preds = %do.cond.147
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.129
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.111
  br label %do.body.153

do.body.153:                                      ; preds = %if.end.152
  %143 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx154, align 4, !tbaa !5
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %146 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl155 = shl i32 %145, %146
  %147 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and156 = and i32 %147, 4
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %do.body.153
  br label %cond.end.163

cond.false.159:                                   ; preds = %do.body.153
  %148 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %148, i64 1
  %149 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  %151 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub161 = sub nsw i32 32, %151
  %shr162 = lshr i32 %150, %sub161
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.158
  %cond164 = phi i32 [ 0, %cond.true.158 ], [ %shr162, %cond.false.159 ]
  %or165 = or i32 %shl155, %cond164
  %152 = call i32 @llvm.bswap.i32(i32 %or165)
  store i32 %152, i32* %S, align 4, !tbaa !5
  %153 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %incdec.ptr166, i32** %s, align 8, !tbaa !1
  br label %do.cond.167

do.cond.167:                                      ; preds = %cond.end.163
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.end.168
  %154 = load i32*, i32** %d, align 8, !tbaa !1
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = load i32, i32* %S, align 4, !tbaa !5
  %or170 = or i32 %155, %156
  store i32 %or170, i32* %D, align 4, !tbaa !5
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.169
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %157 = load i32*, i32** %d, align 8, !tbaa !1
  %158 = load i32, i32* %157, align 4, !tbaa !5
  %159 = load i32, i32* %rmask, align 4, !tbaa !5
  %and173 = and i32 %158, %159
  %160 = load i32, i32* %D, align 4, !tbaa !5
  %161 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg174 = xor i32 %161, -1
  %and175 = and i32 %160, %neg174
  %or176 = or i32 %and173, %and175
  %162 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or176, i32* %162, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.172, %do.end.67
  %163 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sett_rop_run1_const_s(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %t, align 8, !tbaa !1
  %6 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 3
  %b11 = bitcast %union.rop_source_s* %t10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %tpos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %t, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %t, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %t, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %tpos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %tpos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %tpos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %t_skew, align 4, !tbaa !5
  %52 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %t_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %t, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 2
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %tlen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %tlen2, align 4, !tbaa !5
  %59 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %tlen, align 4, !tbaa !5
  %61 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 8
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.71

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 2
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %T, align 4, !tbaa !5
  %81 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %t, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %82, i32* %D, align 4, !tbaa !5
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %83 = load i32*, i32** %d, align 8, !tbaa !1
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg67 = xor i32 %85, -1
  %and68 = and i32 %84, %neg67
  %86 = load i32, i32* %D, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %and69 = and i32 %86, %87
  %or70 = or i32 %and68, %and69
  %88 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or70, i32* %88, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.42
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %89, -1
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.end.71
  %90 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and75 = and i32 %90, 3
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.109

if.then.77:                                       ; preds = %lor.lhs.false.74, %if.end.71
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %91 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and79 = and i32 %91, 2
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %do.body.78
  br label %cond.end.85

cond.false.82:                                    ; preds = %do.body.78
  %92 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl84 = shl i32 %94, %95
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.81
  %cond86 = phi i32 [ 0, %cond.true.81 ], [ %shl84, %cond.false.82 ]
  %96 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %96, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.85
  br label %cond.end.94

cond.false.90:                                    ; preds = %cond.end.85
  %97 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub92 = sub nsw i32 32, %100
  %shr93 = lshr i32 %99, %sub92
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.90, %cond.true.89
  %cond95 = phi i32 [ 0, %cond.true.89 ], [ %shr93, %cond.false.90 ]
  %or96 = or i32 %cond86, %cond95
  %101 = call i32 @llvm.bswap.i32(i32 %or96)
  store i32 %101, i32* %T, align 4, !tbaa !5
  %102 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %incdec.ptr97, i32** %t, align 8, !tbaa !1
  br label %do.cond.98

do.cond.98:                                       ; preds = %cond.end.94
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %103 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %103, i32* %D, align 4, !tbaa !5
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %104 = load i32*, i32** %d, align 8, !tbaa !1
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg103 = xor i32 %106, -1
  %and104 = and i32 %105, %neg103
  %107 = load i32, i32* %D, align 4, !tbaa !5
  %108 = load i32, i32* %lmask, align 4, !tbaa !5
  %and105 = and i32 %107, %108
  %or106 = or i32 %and104, %and105
  %109 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or106, i32* %109, align 4, !tbaa !5
  %110 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %incdec.ptr107, i32** %d, align 8, !tbaa !1
  %111 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub108 = sub nsw i32 %111, 32
  store i32 %sub108, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.102, %lor.lhs.false.74
  %112 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp110 = icmp sgt i32 %112, 0
  br i1 %cmp110, label %if.then.112, label %if.end.148

if.then.112:                                      ; preds = %if.end.109
  %113 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %113, 0
  br i1 %cmp113, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.then.112
  br label %do.body.116

do.body.116:                                      ; preds = %do.cond.123, %if.then.115
  br label %do.body.117

do.body.117:                                      ; preds = %do.body.116
  %114 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr118, i32** %t, align 8, !tbaa !1
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %116 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %115, i32* %116, align 4, !tbaa !5
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.117
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  %117 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %incdec.ptr121, i32** %d, align 8, !tbaa !1
  %118 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub122 = sub nsw i32 %118, 32
  store i32 %sub122, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.end.120
  %119 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp124 = icmp sgt i32 %119, 0
  br i1 %cmp124, label %do.body.116, label %do.end.126

do.end.126:                                       ; preds = %do.cond.123
  br label %if.end.147

if.else:                                          ; preds = %if.then.112
  br label %do.body.127

do.body.127:                                      ; preds = %do.cond.143, %if.else
  br label %do.body.128

do.body.128:                                      ; preds = %do.body.127
  %120 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i32, i32* %120, i64 0
  %121 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %123 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl130 = shl i32 %122, %123
  %124 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i32, i32* %124, i64 1
  %125 = load i32, i32* %arrayidx131, align 4, !tbaa !5
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %127 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub132 = sub nsw i32 32, %127
  %shr133 = lshr i32 %126, %sub132
  %or134 = or i32 %shl130, %shr133
  %128 = call i32 @llvm.bswap.i32(i32 %or134)
  store i32 %128, i32* %T, align 4, !tbaa !5
  %129 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr135 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr135, i32** %t, align 8, !tbaa !1
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.128
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %130 = load i32, i32* %T, align 4, !tbaa !5
  %131 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %130, i32* %131, align 4, !tbaa !5
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %132 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr141, i32** %d, align 8, !tbaa !1
  %133 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub142 = sub nsw i32 %133, 32
  store i32 %sub142, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.end.140
  %134 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp144 = icmp sgt i32 %134, 0
  br i1 %cmp144, label %do.body.127, label %do.end.146

do.end.146:                                       ; preds = %do.cond.143
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.end.126
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.109
  br label %do.body.149

do.body.149:                                      ; preds = %if.end.148
  %135 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx150, align 4, !tbaa !5
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %138 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl151 = shl i32 %137, %138
  %139 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and152 = and i32 %139, 8
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %do.body.149
  br label %cond.end.159

cond.false.155:                                   ; preds = %do.body.149
  %140 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i32, i32* %140, i64 1
  %141 = load i32, i32* %arrayidx156, align 4, !tbaa !5
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub157 = sub nsw i32 32, %143
  %shr158 = lshr i32 %142, %sub157
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.155, %cond.true.154
  %cond160 = phi i32 [ 0, %cond.true.154 ], [ %shr158, %cond.false.155 ]
  %or161 = or i32 %shl151, %cond160
  %144 = call i32 @llvm.bswap.i32(i32 %or161)
  store i32 %144, i32* %T, align 4, !tbaa !5
  %145 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr162, i32** %t, align 8, !tbaa !1
  br label %do.cond.163

do.cond.163:                                      ; preds = %cond.end.159
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %146 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %146, i32* %D, align 4, !tbaa !5
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.body.165
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  %147 = load i32*, i32** %d, align 8, !tbaa !1
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %149 = load i32, i32* %rmask, align 4, !tbaa !5
  %and168 = and i32 %148, %149
  %150 = load i32, i32* %D, align 4, !tbaa !5
  %151 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg169 = xor i32 %151, -1
  %and170 = and i32 %150, %neg169
  %or171 = or i32 %and168, %and170
  %152 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or171, i32* %152, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.167, %do.end.66
  %153 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dort_rop_run1_const_s(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !17
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %t, align 8, !tbaa !1
  %6 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %9 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 7
  %12 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %13 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %d, align 8, !tbaa !1
  %18 = ptrtoint i32* %17 to i64
  %and = and i64 %18, 3
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %d, align 8, !tbaa !1
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  %22 = bitcast i8* %add.ptr to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  %23 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %23, 3
  %24 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %24, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %len.addr, align 4, !tbaa !5
  %27 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %27, i32 0, i32 5
  %28 = load i8, i8* %depth, align 1, !tbaa !9
  %conv4 = zext i8 %28 to i32
  %mul = mul nsw i32 %26, %conv4
  %29 = load i32, i32* %dpos, align 4, !tbaa !5
  %add5 = add nsw i32 %mul, %29
  store i32 %add5, i32* %len.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dpos, align 4, !tbaa !5
  %and6 = and i32 31, %30
  %shr = lshr i32 -1, %and6
  %31 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %31, i32* %lmask, align 4, !tbaa !5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and7 = and i32 31, %32
  %shr8 = lshr i32 -1, %and7
  %33 = call i32 @llvm.bswap.i32(i32 %shr8)
  store i32 %33, i32* %rmask, align 4, !tbaa !5
  %34 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %34, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %35 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 3
  %b11 = bitcast %union.rop_source_s* %t10 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 1
  %39 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %39, i32* %tpos, align 4, !tbaa !5
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %40 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32*, i32** %t, align 8, !tbaa !1
  %42 = ptrtoint i32* %41 to i64
  %and14 = and i64 %42, 3
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %offset13, align 4, !tbaa !5
  %43 = load i32*, i32** %t, align 8, !tbaa !1
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %offset13, align 4, !tbaa !5
  %idx.ext16 = sext i32 %45 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 %idx.neg17
  %46 = bitcast i8* %add.ptr18 to i32*
  store i32* %46, i32** %t, align 8, !tbaa !1
  %47 = load i32, i32* %offset13, align 4, !tbaa !5
  %shl19 = shl i32 %47, 3
  %48 = load i32, i32* %tpos, align 4, !tbaa !5
  %add20 = add nsw i32 %48, %shl19
  store i32 %add20, i32* %tpos, align 4, !tbaa !5
  %49 = bitcast i32* %offset13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.12
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %50 = load i32, i32* %tpos, align 4, !tbaa !5
  %51 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  store i32 %sub, i32* %t_skew, align 4, !tbaa !5
  %52 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %52, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.22
  %53 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add26 = add nsw i32 %53, 32
  store i32 %add26, i32* %t_skew, align 4, !tbaa !5
  %54 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %incdec.ptr, i32** %t, align 8, !tbaa !1
  %55 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %55, 2
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.22
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %57 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add28 = add nsw i32 %56, %57
  %add29 = add nsw i32 %add28, 32
  %sub30 = sub nsw i32 %add29, 1
  %and31 = and i32 %sub30, -32
  store i32 %and31, i32* %tlen, align 4, !tbaa !5
  %58 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %58, 32
  %add33 = add nsw i32 %add32, 32
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, -32
  store i32 %and35, i32* %tlen2, align 4, !tbaa !5
  %59 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %59, 0
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %60 = load i32, i32* %tlen, align 4, !tbaa !5
  %61 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %60, %61
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.27
  %62 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or41 = or i32 %62, 8
  store i32 %or41, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false
  %63 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub43 = sub nsw i32 %66, 32
  store i32 %sub43, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %67, 0
  br i1 %cmp44, label %if.then.46, label %if.end.72

if.then.46:                                       ; preds = %if.end.42
  %68 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %68, -1
  %69 = load i32, i32* %lmask, align 4, !tbaa !5
  %and47 = and i32 %69, %neg
  store i32 %and47, i32* %lmask, align 4, !tbaa !5
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %70 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and49 = and i32 %70, 2
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.48
  br label %cond.end

cond.false:                                       ; preds = %do.body.48
  %71 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %74 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl50 = shl i32 %73, %74
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl50, %cond.false ]
  %75 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and51 = and i32 %75, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.54:                                    ; preds = %cond.end
  %76 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %79 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub56 = sub nsw i32 32, %79
  %shr57 = lshr i32 %78, %sub56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.true.53
  %cond59 = phi i32 [ 0, %cond.true.53 ], [ %shr57, %cond.false.54 ]
  %or60 = or i32 %cond, %cond59
  %80 = call i32 @llvm.bswap.i32(i32 %or60)
  store i32 %80, i32* %T, align 4, !tbaa !5
  %81 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr61, i32** %t, align 8, !tbaa !1
  br label %do.cond.62

do.cond.62:                                       ; preds = %cond.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %82 = load i32*, i32** %d, align 8, !tbaa !1
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = load i32, i32* %T, align 4, !tbaa !5
  %or65 = or i32 %83, %84
  store i32 %or65, i32* %D, align 4, !tbaa !5
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.64
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %85 = load i32*, i32** %d, align 8, !tbaa !1
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg68 = xor i32 %87, -1
  %and69 = and i32 %86, %neg68
  %88 = load i32, i32* %D, align 4, !tbaa !5
  %89 = load i32, i32* %lmask, align 4, !tbaa !5
  %and70 = and i32 %88, %89
  %or71 = or i32 %and69, %and70
  %90 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or71, i32* %90, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.42
  %91 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %91, -1
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.end.72
  %92 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and76 = and i32 %92, 3
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.111

if.then.78:                                       ; preds = %lor.lhs.false.75, %if.end.72
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %93 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and80 = and i32 %93, 2
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %do.body.79
  br label %cond.end.86

cond.false.83:                                    ; preds = %do.body.79
  %94 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %97 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl85 = shl i32 %96, %97
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ %shl85, %cond.false.83 ]
  %98 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp88 = icmp eq i32 %98, 0
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.86
  br label %cond.end.95

cond.false.91:                                    ; preds = %cond.end.86
  %99 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %99, i64 1
  %100 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %102 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub93 = sub nsw i32 32, %102
  %shr94 = lshr i32 %101, %sub93
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.91, %cond.true.90
  %cond96 = phi i32 [ 0, %cond.true.90 ], [ %shr94, %cond.false.91 ]
  %or97 = or i32 %cond87, %cond96
  %103 = call i32 @llvm.bswap.i32(i32 %or97)
  store i32 %103, i32* %T, align 4, !tbaa !5
  %104 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr98, i32** %t, align 8, !tbaa !1
  br label %do.cond.99

do.cond.99:                                       ; preds = %cond.end.95
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %105 = load i32*, i32** %d, align 8, !tbaa !1
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = load i32, i32* %T, align 4, !tbaa !5
  %or102 = or i32 %106, %107
  store i32 %or102, i32* %D, align 4, !tbaa !5
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.101
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %108 = load i32*, i32** %d, align 8, !tbaa !1
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %110 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg105 = xor i32 %110, -1
  %and106 = and i32 %109, %neg105
  %111 = load i32, i32* %D, align 4, !tbaa !5
  %112 = load i32, i32* %lmask, align 4, !tbaa !5
  %and107 = and i32 %111, %112
  %or108 = or i32 %and106, %and107
  %113 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or108, i32* %113, align 4, !tbaa !5
  %114 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr109, i32** %d, align 8, !tbaa !1
  %115 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub110 = sub nsw i32 %115, 32
  store i32 %sub110, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.104, %lor.lhs.false.75
  %116 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp112 = icmp sgt i32 %116, 0
  br i1 %cmp112, label %if.then.114, label %if.end.152

if.then.114:                                      ; preds = %if.end.111
  %117 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %117, 0
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.114
  br label %do.body.118

do.body.118:                                      ; preds = %do.cond.126, %if.then.117
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.118
  %118 = load i32*, i32** %d, align 8, !tbaa !1
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %incdec.ptr120, i32** %t, align 8, !tbaa !1
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %or121 = or i32 %119, %121
  %122 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or121, i32* %122, align 4, !tbaa !5
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.119
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %123 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %incdec.ptr124, i32** %d, align 8, !tbaa !1
  %124 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub125 = sub nsw i32 %124, 32
  store i32 %sub125, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.123
  %125 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp127 = icmp sgt i32 %125, 0
  br i1 %cmp127, label %do.body.118, label %do.end.129

do.end.129:                                       ; preds = %do.cond.126
  br label %if.end.151

if.else:                                          ; preds = %if.then.114
  br label %do.body.130

do.body.130:                                      ; preds = %do.cond.147, %if.else
  br label %do.body.131

do.body.131:                                      ; preds = %do.body.130
  %126 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %129 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl133 = shl i32 %128, %129
  %130 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i32, i32* %130, i64 1
  %131 = load i32, i32* %arrayidx134, align 4, !tbaa !5
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  %133 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub135 = sub nsw i32 32, %133
  %shr136 = lshr i32 %132, %sub135
  %or137 = or i32 %shl133, %shr136
  %134 = call i32 @llvm.bswap.i32(i32 %or137)
  store i32 %134, i32* %T, align 4, !tbaa !5
  %135 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %incdec.ptr138, i32** %t, align 8, !tbaa !1
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.131
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %136 = load i32*, i32** %d, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = load i32, i32* %T, align 4, !tbaa !5
  %or142 = or i32 %137, %138
  %139 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or142, i32* %139, align 4, !tbaa !5
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.141
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  %140 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr145, i32** %d, align 8, !tbaa !1
  %141 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub146 = sub nsw i32 %141, 32
  store i32 %sub146, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.147

do.cond.147:                                      ; preds = %do.end.144
  %142 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %142, 0
  br i1 %cmp148, label %do.body.130, label %do.end.150

do.end.150:                                       ; preds = %do.cond.147
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.129
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.111
  br label %do.body.153

do.body.153:                                      ; preds = %if.end.152
  %143 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx154, align 4, !tbaa !5
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %146 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl155 = shl i32 %145, %146
  %147 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and156 = and i32 %147, 8
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %do.body.153
  br label %cond.end.163

cond.false.159:                                   ; preds = %do.body.153
  %148 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i32, i32* %148, i64 1
  %149 = load i32, i32* %arrayidx160, align 4, !tbaa !5
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  %151 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub161 = sub nsw i32 32, %151
  %shr162 = lshr i32 %150, %sub161
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.158
  %cond164 = phi i32 [ 0, %cond.true.158 ], [ %shr162, %cond.false.159 ]
  %or165 = or i32 %shl155, %cond164
  %152 = call i32 @llvm.bswap.i32(i32 %or165)
  store i32 %152, i32* %T, align 4, !tbaa !5
  %153 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %incdec.ptr166, i32** %t, align 8, !tbaa !1
  br label %do.cond.167

do.cond.167:                                      ; preds = %cond.end.163
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  br label %do.body.169

do.body.169:                                      ; preds = %do.end.168
  %154 = load i32*, i32** %d, align 8, !tbaa !1
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = load i32, i32* %T, align 4, !tbaa !5
  %or170 = or i32 %155, %156
  store i32 %or170, i32* %D, align 4, !tbaa !5
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.169
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %157 = load i32*, i32** %d, align 8, !tbaa !1
  %158 = load i32, i32* %157, align 4, !tbaa !5
  %159 = load i32, i32* %rmask, align 4, !tbaa !5
  %and173 = and i32 %158, %159
  %160 = load i32, i32* %D, align 4, !tbaa !5
  %161 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg174 = xor i32 %161, -1
  %and175 = and i32 %160, %neg174
  %or176 = or i32 %and173, %and175
  %162 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or176, i32* %162, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.172, %do.end.67
  %163 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run1(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %s = alloca i32*, align 8
  %S = alloca i32, align 4
  %s_skew = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %slen = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %spos = alloca i32, align 4
  %offset16 = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset50 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !17
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %s, align 8, !tbaa !1
  %10 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %13, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %14 = load i8*, i8** %ptr4, align 8, !tbaa !17
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %t, align 8, !tbaa !1
  %16 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %19 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos5 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %21, i32 0, i32 7
  %22 = load i8, i8* %dpos5, align 1, !tbaa !15
  %conv = zext i8 %22 to i32
  store i32 %conv, i32* %dpos, align 4, !tbaa !5
  %23 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %26 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32*, i32** %d, align 8, !tbaa !1
  %28 = ptrtoint i32* %27 to i64
  %and = and i64 %28, 3
  %conv6 = trunc i64 %and to i32
  store i32 %conv6, i32* %offset, align 4, !tbaa !5
  %29 = load i32*, i32** %d, align 8, !tbaa !1
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %31 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.neg
  %32 = bitcast i8* %add.ptr to i32*
  store i32* %32, i32** %d, align 8, !tbaa !1
  %33 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %33, 3
  %34 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %34, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %35 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i32, i32* %len.addr, align 4, !tbaa !5
  %37 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %37, i32 0, i32 5
  %38 = load i8, i8* %depth, align 1, !tbaa !9
  %conv7 = zext i8 %38 to i32
  %mul = mul nsw i32 %36, %conv7
  %39 = load i32, i32* %dpos, align 4, !tbaa !5
  %add8 = add nsw i32 %mul, %39
  store i32 %add8, i32* %len.addr, align 4, !tbaa !5
  %40 = load i32, i32* %dpos, align 4, !tbaa !5
  %and9 = and i32 31, %40
  %shr = lshr i32 -1, %and9
  %41 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %41, i32* %lmask, align 4, !tbaa !5
  %42 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and10 = and i32 31, %42
  %shr11 = lshr i32 -1, %and10
  %43 = call i32 @llvm.bswap.i32(i32 %shr11)
  store i32 %43, i32* %rmask, align 4, !tbaa !5
  %44 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %44, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %45 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s13 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %48, i32 0, i32 2
  %b14 = bitcast %union.rop_source_s* %s13 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b14, i32 0, i32 1
  %49 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %49, i32* %spos, align 4, !tbaa !5
  br label %do.body.15

do.body.15:                                       ; preds = %if.end
  %50 = bitcast i32* %offset16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32*, i32** %s, align 8, !tbaa !1
  %52 = ptrtoint i32* %51 to i64
  %and17 = and i64 %52, 3
  %conv18 = trunc i64 %and17 to i32
  store i32 %conv18, i32* %offset16, align 4, !tbaa !5
  %53 = load i32*, i32** %s, align 8, !tbaa !1
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %offset16, align 4, !tbaa !5
  %idx.ext19 = sext i32 %55 to i64
  %idx.neg20 = sub i64 0, %idx.ext19
  %add.ptr21 = getelementptr inbounds i8, i8* %54, i64 %idx.neg20
  %56 = bitcast i8* %add.ptr21 to i32*
  store i32* %56, i32** %s, align 8, !tbaa !1
  %57 = load i32, i32* %offset16, align 4, !tbaa !5
  %shl22 = shl i32 %57, 3
  %58 = load i32, i32* %spos, align 4, !tbaa !5
  %add23 = add nsw i32 %58, %shl22
  store i32 %add23, i32* %spos, align 4, !tbaa !5
  %59 = bitcast i32* %offset16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.15
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %60 = load i32, i32* %spos, align 4, !tbaa !5
  %61 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %60, %61
  store i32 %sub, i32* %s_skew, align 4, !tbaa !5
  %62 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %62, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.end.25
  %63 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add29 = add nsw i32 %63, 32
  store i32 %add29, i32* %s_skew, align 4, !tbaa !5
  %64 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %64, i32 -1
  store i32* %incdec.ptr, i32** %s, align 8, !tbaa !1
  %65 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or = or i32 %65, 1
  store i32 %or, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %do.end.25
  %66 = load i32, i32* %len.addr, align 4, !tbaa !5
  %67 = load i32, i32* %s_skew, align 4, !tbaa !5
  %add31 = add nsw i32 %66, %67
  %add32 = add nsw i32 %add31, 32
  %sub33 = sub nsw i32 %add32, 1
  %and34 = and i32 %sub33, -32
  store i32 %and34, i32* %slen, align 4, !tbaa !5
  %68 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add35 = add nsw i32 %68, 32
  %add36 = add nsw i32 %add35, 32
  %sub37 = sub nsw i32 %add36, 1
  %and38 = and i32 %sub37, -32
  store i32 %and38, i32* %slen2, align 4, !tbaa !5
  %69 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %69, 0
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %70 = load i32, i32* %slen, align 4, !tbaa !5
  %71 = load i32, i32* %slen2, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %70, %71
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.30
  %72 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or44 = or i32 %72, 4
  store i32 %or44, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false
  %73 = bitcast i32* %spos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t46 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %79, i32 0, i32 3
  %b47 = bitcast %union.rop_source_s* %t46 to %struct.anon*
  %pos48 = getelementptr inbounds %struct.anon, %struct.anon* %b47, i32 0, i32 1
  %80 = load i32, i32* %pos48, align 4, !tbaa !13
  store i32 %80, i32* %tpos, align 4, !tbaa !5
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.45
  %81 = bitcast i32* %offset50 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i32*, i32** %t, align 8, !tbaa !1
  %83 = ptrtoint i32* %82 to i64
  %and51 = and i64 %83, 3
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, i32* %offset50, align 4, !tbaa !5
  %84 = load i32*, i32** %t, align 8, !tbaa !1
  %85 = bitcast i32* %84 to i8*
  %86 = load i32, i32* %offset50, align 4, !tbaa !5
  %idx.ext53 = sext i32 %86 to i64
  %idx.neg54 = sub i64 0, %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %85, i64 %idx.neg54
  %87 = bitcast i8* %add.ptr55 to i32*
  store i32* %87, i32** %t, align 8, !tbaa !1
  %88 = load i32, i32* %offset50, align 4, !tbaa !5
  %shl56 = shl i32 %88, 3
  %89 = load i32, i32* %tpos, align 4, !tbaa !5
  %add57 = add nsw i32 %89, %shl56
  store i32 %add57, i32* %tpos, align 4, !tbaa !5
  %90 = bitcast i32* %offset50 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %91 = load i32, i32* %tpos, align 4, !tbaa !5
  %92 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub60 = sub nsw i32 %91, %92
  store i32 %sub60, i32* %t_skew, align 4, !tbaa !5
  %93 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %93, 0
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %do.end.59
  %94 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add64 = add nsw i32 %94, 32
  store i32 %add64, i32* %t_skew, align 4, !tbaa !5
  %95 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i32, i32* %95, i32 -1
  store i32* %incdec.ptr65, i32** %t, align 8, !tbaa !1
  %96 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or66 = or i32 %96, 2
  store i32 %or66, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %do.end.59
  %97 = load i32, i32* %len.addr, align 4, !tbaa !5
  %98 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add68 = add nsw i32 %97, %98
  %add69 = add nsw i32 %add68, 32
  %sub70 = sub nsw i32 %add69, 1
  %and71 = and i32 %sub70, -32
  store i32 %and71, i32* %tlen, align 4, !tbaa !5
  %99 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add72 = add nsw i32 %99, 32
  %add73 = add nsw i32 %add72, 32
  %sub74 = sub nsw i32 %add73, 1
  %and75 = and i32 %sub74, -32
  store i32 %and75, i32* %tlen2, align 4, !tbaa !5
  %100 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %100, 0
  br i1 %cmp76, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.67
  %101 = load i32, i32* %tlen, align 4, !tbaa !5
  %102 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %101, %102
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false.78, %if.end.67
  %103 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or82 = or i32 %103, 8
  store i32 %or82, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %lor.lhs.false.78
  %104 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub84 = sub nsw i32 %107, 32
  store i32 %sub84, i32* %len.addr, align 4, !tbaa !5
  %108 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp85 = icmp sle i32 %108, 0
  br i1 %cmp85, label %if.then.87, label %if.end.136

if.then.87:                                       ; preds = %if.end.83
  %109 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %109, -1
  %110 = load i32, i32* %lmask, align 4, !tbaa !5
  %and88 = and i32 %110, %neg
  store i32 %and88, i32* %lmask, align 4, !tbaa !5
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.87
  %111 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and90 = and i32 %111, 1
  %tobool = icmp ne i32 %and90, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.89
  br label %cond.end

cond.false:                                       ; preds = %do.body.89
  %112 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %115 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl92 = shl i32 %114, %115
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl92, %cond.false ]
  %116 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and93 = and i32 %116, 4
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end
  br label %cond.end.100

cond.false.96:                                    ; preds = %cond.end
  %117 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %117, i64 1
  %118 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %120 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub98 = sub nsw i32 32, %120
  %shr99 = lshr i32 %119, %sub98
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.96, %cond.true.95
  %cond101 = phi i32 [ 0, %cond.true.95 ], [ %shr99, %cond.false.96 ]
  %or102 = or i32 %cond, %cond101
  %121 = call i32 @llvm.bswap.i32(i32 %or102)
  store i32 %121, i32* %S, align 4, !tbaa !5
  %122 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %incdec.ptr103, i32** %s, align 8, !tbaa !1
  br label %do.cond.104

do.cond.104:                                      ; preds = %cond.end.100
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %123 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and107 = and i32 %123, 2
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %do.body.106
  br label %cond.end.113

cond.false.110:                                   ; preds = %do.body.106
  %124 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx111, align 4, !tbaa !5
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %127 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl112 = shl i32 %126, %127
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.110, %cond.true.109
  %cond114 = phi i32 [ 0, %cond.true.109 ], [ %shl112, %cond.false.110 ]
  %128 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and115 = and i32 %128, 8
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end.113
  br label %cond.end.122

cond.false.118:                                   ; preds = %cond.end.113
  %129 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %129, i64 1
  %130 = load i32, i32* %arrayidx119, align 4, !tbaa !5
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %132 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub120 = sub nsw i32 32, %132
  %shr121 = lshr i32 %131, %sub120
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.118, %cond.true.117
  %cond123 = phi i32 [ 0, %cond.true.117 ], [ %shr121, %cond.false.118 ]
  %or124 = or i32 %cond114, %cond123
  %133 = call i32 @llvm.bswap.i32(i32 %or124)
  store i32 %133, i32* %T, align 4, !tbaa !5
  %134 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %incdec.ptr125, i32** %t, align 8, !tbaa !1
  br label %do.cond.126

do.cond.126:                                      ; preds = %cond.end.122
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %135 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %136 = load i32*, i32** %d, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %conv128 = zext i32 %137 to i64
  %138 = load i32, i32* %S, align 4, !tbaa !5
  %conv129 = zext i32 %138 to i64
  %139 = load i32, i32* %T, align 4, !tbaa !5
  %conv130 = zext i32 %139 to i64
  %call = call i64 %135(i64 %conv128, i64 %conv129, i64 %conv130) #4
  %conv131 = trunc i64 %call to i32
  store i32 %conv131, i32* %D, align 4, !tbaa !5
  %140 = load i32*, i32** %d, align 8, !tbaa !1
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg132 = xor i32 %142, -1
  %and133 = and i32 %141, %neg132
  %143 = load i32, i32* %D, align 4, !tbaa !5
  %144 = load i32, i32* %lmask, align 4, !tbaa !5
  %and134 = and i32 %143, %144
  %or135 = or i32 %and133, %and134
  %145 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or135, i32* %145, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %if.end.83
  %146 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp137 = icmp ne i32 %146, -1
  br i1 %cmp137, label %if.then.142, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.end.136
  %147 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and140 = and i32 %147, 3
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.198

if.then.142:                                      ; preds = %lor.lhs.false.139, %if.end.136
  br label %do.body.143

do.body.143:                                      ; preds = %if.then.142
  %148 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and144 = and i32 %148, 1
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %do.body.143
  br label %cond.end.150

cond.false.147:                                   ; preds = %do.body.143
  %149 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %149, i64 0
  %150 = load i32, i32* %arrayidx148, align 4, !tbaa !5
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %152 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl149 = shl i32 %151, %152
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.147, %cond.true.146
  %cond151 = phi i32 [ 0, %cond.true.146 ], [ %shl149, %cond.false.147 ]
  %153 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp152 = icmp eq i32 %153, 0
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.end.150
  br label %cond.end.159

cond.false.155:                                   ; preds = %cond.end.150
  %154 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i32, i32* %154, i64 1
  %155 = load i32, i32* %arrayidx156, align 4, !tbaa !5
  %156 = call i32 @llvm.bswap.i32(i32 %155)
  %157 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub157 = sub nsw i32 32, %157
  %shr158 = lshr i32 %156, %sub157
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.155, %cond.true.154
  %cond160 = phi i32 [ 0, %cond.true.154 ], [ %shr158, %cond.false.155 ]
  %or161 = or i32 %cond151, %cond160
  %158 = call i32 @llvm.bswap.i32(i32 %or161)
  store i32 %158, i32* %S, align 4, !tbaa !5
  %159 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %incdec.ptr162, i32** %s, align 8, !tbaa !1
  br label %do.cond.163

do.cond.163:                                      ; preds = %cond.end.159
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %160 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and166 = and i32 %160, 2
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %do.body.165
  br label %cond.end.172

cond.false.169:                                   ; preds = %do.body.165
  %161 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i32, i32* %161, i64 0
  %162 = load i32, i32* %arrayidx170, align 4, !tbaa !5
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %164 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl171 = shl i32 %163, %164
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.169, %cond.true.168
  %cond173 = phi i32 [ 0, %cond.true.168 ], [ %shl171, %cond.false.169 ]
  %165 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %165, 0
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %cond.end.172
  br label %cond.end.181

cond.false.177:                                   ; preds = %cond.end.172
  %166 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %166, i64 1
  %167 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  %169 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub179 = sub nsw i32 32, %169
  %shr180 = lshr i32 %168, %sub179
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.177, %cond.true.176
  %cond182 = phi i32 [ 0, %cond.true.176 ], [ %shr180, %cond.false.177 ]
  %or183 = or i32 %cond173, %cond182
  %170 = call i32 @llvm.bswap.i32(i32 %or183)
  store i32 %170, i32* %T, align 4, !tbaa !5
  %171 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %incdec.ptr184, i32** %t, align 8, !tbaa !1
  br label %do.cond.185

do.cond.185:                                      ; preds = %cond.end.181
  br label %do.end.186

do.end.186:                                       ; preds = %do.cond.185
  %172 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %173 = load i32*, i32** %d, align 8, !tbaa !1
  %174 = load i32, i32* %173, align 4, !tbaa !5
  %conv187 = zext i32 %174 to i64
  %175 = load i32, i32* %S, align 4, !tbaa !5
  %conv188 = zext i32 %175 to i64
  %176 = load i32, i32* %T, align 4, !tbaa !5
  %conv189 = zext i32 %176 to i64
  %call190 = call i64 %172(i64 %conv187, i64 %conv188, i64 %conv189) #4
  %conv191 = trunc i64 %call190 to i32
  store i32 %conv191, i32* %D, align 4, !tbaa !5
  %177 = load i32*, i32** %d, align 8, !tbaa !1
  %178 = load i32, i32* %177, align 4, !tbaa !5
  %179 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg192 = xor i32 %179, -1
  %and193 = and i32 %178, %neg192
  %180 = load i32, i32* %D, align 4, !tbaa !5
  %181 = load i32, i32* %lmask, align 4, !tbaa !5
  %and194 = and i32 %180, %181
  %or195 = or i32 %and193, %and194
  %182 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or195, i32* %182, align 4, !tbaa !5
  %183 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr196 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %incdec.ptr196, i32** %d, align 8, !tbaa !1
  %184 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub197 = sub nsw i32 %184, 32
  store i32 %sub197, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.198

if.end.198:                                       ; preds = %do.end.186, %lor.lhs.false.139
  %185 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp199 = icmp sgt i32 %185, 0
  br i1 %cmp199, label %if.then.201, label %if.end.308

if.then.201:                                      ; preds = %if.end.198
  %186 = load i32, i32* %s_skew, align 4, !tbaa !5
  %cmp202 = icmp eq i32 %186, 0
  br i1 %cmp202, label %if.then.204, label %if.else.246

if.then.204:                                      ; preds = %if.then.201
  %187 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp205 = icmp eq i32 %187, 0
  br i1 %cmp205, label %if.then.207, label %if.else

if.then.207:                                      ; preds = %if.then.204
  br label %do.body.208

do.body.208:                                      ; preds = %do.cond.218, %if.then.207
  %188 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %189 = load i32*, i32** %d, align 8, !tbaa !1
  %190 = load i32, i32* %189, align 4, !tbaa !5
  %conv209 = zext i32 %190 to i64
  %191 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr210 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %incdec.ptr210, i32** %s, align 8, !tbaa !1
  %192 = load i32, i32* %191, align 4, !tbaa !5
  %conv211 = zext i32 %192 to i64
  %193 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr212 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr212, i32** %t, align 8, !tbaa !1
  %194 = load i32, i32* %193, align 4, !tbaa !5
  %conv213 = zext i32 %194 to i64
  %call214 = call i64 %188(i64 %conv209, i64 %conv211, i64 %conv213) #4
  %conv215 = trunc i64 %call214 to i32
  %195 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv215, i32* %195, align 4, !tbaa !5
  %196 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr216 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %incdec.ptr216, i32** %d, align 8, !tbaa !1
  %197 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub217 = sub nsw i32 %197, 32
  store i32 %sub217, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.218

do.cond.218:                                      ; preds = %do.body.208
  %198 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp219 = icmp sgt i32 %198, 0
  br i1 %cmp219, label %do.body.208, label %do.end.221

do.end.221:                                       ; preds = %do.cond.218
  br label %if.end.245

if.else:                                          ; preds = %if.then.204
  br label %do.body.222

do.body.222:                                      ; preds = %do.cond.241, %if.else
  br label %do.body.223

do.body.223:                                      ; preds = %do.body.222
  %199 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i32, i32* %199, i64 0
  %200 = load i32, i32* %arrayidx224, align 4, !tbaa !5
  %201 = call i32 @llvm.bswap.i32(i32 %200)
  %202 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl225 = shl i32 %201, %202
  %203 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %203, i64 1
  %204 = load i32, i32* %arrayidx226, align 4, !tbaa !5
  %205 = call i32 @llvm.bswap.i32(i32 %204)
  %206 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub227 = sub nsw i32 32, %206
  %shr228 = lshr i32 %205, %sub227
  %or229 = or i32 %shl225, %shr228
  %207 = call i32 @llvm.bswap.i32(i32 %or229)
  store i32 %207, i32* %T, align 4, !tbaa !5
  %208 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr230 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %incdec.ptr230, i32** %t, align 8, !tbaa !1
  br label %do.cond.231

do.cond.231:                                      ; preds = %do.body.223
  br label %do.end.232

do.end.232:                                       ; preds = %do.cond.231
  %209 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %210 = load i32*, i32** %d, align 8, !tbaa !1
  %211 = load i32, i32* %210, align 4, !tbaa !5
  %conv233 = zext i32 %211 to i64
  %212 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr234 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %incdec.ptr234, i32** %s, align 8, !tbaa !1
  %213 = load i32, i32* %212, align 4, !tbaa !5
  %conv235 = zext i32 %213 to i64
  %214 = load i32, i32* %T, align 4, !tbaa !5
  %conv236 = zext i32 %214 to i64
  %call237 = call i64 %209(i64 %conv233, i64 %conv235, i64 %conv236) #4
  %conv238 = trunc i64 %call237 to i32
  %215 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv238, i32* %215, align 4, !tbaa !5
  %216 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %incdec.ptr239, i32** %d, align 8, !tbaa !1
  %217 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub240 = sub nsw i32 %217, 32
  store i32 %sub240, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.241

do.cond.241:                                      ; preds = %do.end.232
  %218 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp242 = icmp sgt i32 %218, 0
  br i1 %cmp242, label %do.body.222, label %do.end.244

do.end.244:                                       ; preds = %do.cond.241
  br label %if.end.245

if.end.245:                                       ; preds = %do.end.244, %do.end.221
  br label %if.end.307

if.else.246:                                      ; preds = %if.then.201
  %219 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp247 = icmp eq i32 %219, 0
  br i1 %cmp247, label %if.then.249, label %if.else.273

if.then.249:                                      ; preds = %if.else.246
  br label %do.body.250

do.body.250:                                      ; preds = %do.cond.269, %if.then.249
  br label %do.body.251

do.body.251:                                      ; preds = %do.body.250
  %220 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i32, i32* %220, i64 0
  %221 = load i32, i32* %arrayidx252, align 4, !tbaa !5
  %222 = call i32 @llvm.bswap.i32(i32 %221)
  %223 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl253 = shl i32 %222, %223
  %224 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i32, i32* %224, i64 1
  %225 = load i32, i32* %arrayidx254, align 4, !tbaa !5
  %226 = call i32 @llvm.bswap.i32(i32 %225)
  %227 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub255 = sub nsw i32 32, %227
  %shr256 = lshr i32 %226, %sub255
  %or257 = or i32 %shl253, %shr256
  %228 = call i32 @llvm.bswap.i32(i32 %or257)
  store i32 %228, i32* %S, align 4, !tbaa !5
  %229 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr258 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %incdec.ptr258, i32** %s, align 8, !tbaa !1
  br label %do.cond.259

do.cond.259:                                      ; preds = %do.body.251
  br label %do.end.260

do.end.260:                                       ; preds = %do.cond.259
  %230 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %231 = load i32*, i32** %d, align 8, !tbaa !1
  %232 = load i32, i32* %231, align 4, !tbaa !5
  %conv261 = zext i32 %232 to i64
  %233 = load i32, i32* %S, align 4, !tbaa !5
  %conv262 = zext i32 %233 to i64
  %234 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr263 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %incdec.ptr263, i32** %t, align 8, !tbaa !1
  %235 = load i32, i32* %234, align 4, !tbaa !5
  %conv264 = zext i32 %235 to i64
  %call265 = call i64 %230(i64 %conv261, i64 %conv262, i64 %conv264) #4
  %conv266 = trunc i64 %call265 to i32
  %236 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv266, i32* %236, align 4, !tbaa !5
  %237 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr267 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %incdec.ptr267, i32** %d, align 8, !tbaa !1
  %238 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub268 = sub nsw i32 %238, 32
  store i32 %sub268, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.269

do.cond.269:                                      ; preds = %do.end.260
  %239 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp270 = icmp sgt i32 %239, 0
  br i1 %cmp270, label %do.body.250, label %do.end.272

do.end.272:                                       ; preds = %do.cond.269
  br label %if.end.306

if.else.273:                                      ; preds = %if.else.246
  br label %do.body.274

do.body.274:                                      ; preds = %do.cond.302, %if.else.273
  br label %do.body.275

do.body.275:                                      ; preds = %do.body.274
  %240 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i32, i32* %240, i64 0
  %241 = load i32, i32* %arrayidx276, align 4, !tbaa !5
  %242 = call i32 @llvm.bswap.i32(i32 %241)
  %243 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl277 = shl i32 %242, %243
  %244 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i32, i32* %244, i64 1
  %245 = load i32, i32* %arrayidx278, align 4, !tbaa !5
  %246 = call i32 @llvm.bswap.i32(i32 %245)
  %247 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub279 = sub nsw i32 32, %247
  %shr280 = lshr i32 %246, %sub279
  %or281 = or i32 %shl277, %shr280
  %248 = call i32 @llvm.bswap.i32(i32 %or281)
  store i32 %248, i32* %S, align 4, !tbaa !5
  %249 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr282 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %incdec.ptr282, i32** %s, align 8, !tbaa !1
  br label %do.cond.283

do.cond.283:                                      ; preds = %do.body.275
  br label %do.end.284

do.end.284:                                       ; preds = %do.cond.283
  br label %do.body.285

do.body.285:                                      ; preds = %do.end.284
  %250 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i32, i32* %250, i64 0
  %251 = load i32, i32* %arrayidx286, align 4, !tbaa !5
  %252 = call i32 @llvm.bswap.i32(i32 %251)
  %253 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl287 = shl i32 %252, %253
  %254 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i32, i32* %254, i64 1
  %255 = load i32, i32* %arrayidx288, align 4, !tbaa !5
  %256 = call i32 @llvm.bswap.i32(i32 %255)
  %257 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub289 = sub nsw i32 32, %257
  %shr290 = lshr i32 %256, %sub289
  %or291 = or i32 %shl287, %shr290
  %258 = call i32 @llvm.bswap.i32(i32 %or291)
  store i32 %258, i32* %T, align 4, !tbaa !5
  %259 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr292 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %incdec.ptr292, i32** %t, align 8, !tbaa !1
  br label %do.cond.293

do.cond.293:                                      ; preds = %do.body.285
  br label %do.end.294

do.end.294:                                       ; preds = %do.cond.293
  %260 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %261 = load i32*, i32** %d, align 8, !tbaa !1
  %262 = load i32, i32* %261, align 4, !tbaa !5
  %conv295 = zext i32 %262 to i64
  %263 = load i32, i32* %S, align 4, !tbaa !5
  %conv296 = zext i32 %263 to i64
  %264 = load i32, i32* %T, align 4, !tbaa !5
  %conv297 = zext i32 %264 to i64
  %call298 = call i64 %260(i64 %conv295, i64 %conv296, i64 %conv297) #4
  %conv299 = trunc i64 %call298 to i32
  %265 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv299, i32* %265, align 4, !tbaa !5
  %266 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %incdec.ptr300, i32** %d, align 8, !tbaa !1
  %267 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub301 = sub nsw i32 %267, 32
  store i32 %sub301, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.302

do.cond.302:                                      ; preds = %do.end.294
  %268 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp303 = icmp sgt i32 %268, 0
  br i1 %cmp303, label %do.body.274, label %do.end.305

do.end.305:                                       ; preds = %do.cond.302
  br label %if.end.306

if.end.306:                                       ; preds = %do.end.305, %do.end.272
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.245
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.198
  br label %do.body.309

do.body.309:                                      ; preds = %if.end.308
  %269 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx310 = getelementptr inbounds i32, i32* %269, i64 0
  %270 = load i32, i32* %arrayidx310, align 4, !tbaa !5
  %271 = call i32 @llvm.bswap.i32(i32 %270)
  %272 = load i32, i32* %s_skew, align 4, !tbaa !5
  %shl311 = shl i32 %271, %272
  %273 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and312 = and i32 %273, 4
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %cond.true.314, label %cond.false.315

cond.true.314:                                    ; preds = %do.body.309
  br label %cond.end.319

cond.false.315:                                   ; preds = %do.body.309
  %274 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i32, i32* %274, i64 1
  %275 = load i32, i32* %arrayidx316, align 4, !tbaa !5
  %276 = call i32 @llvm.bswap.i32(i32 %275)
  %277 = load i32, i32* %s_skew, align 4, !tbaa !5
  %sub317 = sub nsw i32 32, %277
  %shr318 = lshr i32 %276, %sub317
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.315, %cond.true.314
  %cond320 = phi i32 [ 0, %cond.true.314 ], [ %shr318, %cond.false.315 ]
  %or321 = or i32 %shl311, %cond320
  %278 = call i32 @llvm.bswap.i32(i32 %or321)
  store i32 %278, i32* %S, align 4, !tbaa !5
  %279 = load i32*, i32** %s, align 8, !tbaa !1
  %incdec.ptr322 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %incdec.ptr322, i32** %s, align 8, !tbaa !1
  br label %do.cond.323

do.cond.323:                                      ; preds = %cond.end.319
  br label %do.end.324

do.end.324:                                       ; preds = %do.cond.323
  br label %do.body.325

do.body.325:                                      ; preds = %do.end.324
  %280 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds i32, i32* %280, i64 0
  %281 = load i32, i32* %arrayidx326, align 4, !tbaa !5
  %282 = call i32 @llvm.bswap.i32(i32 %281)
  %283 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl327 = shl i32 %282, %283
  %284 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and328 = and i32 %284, 8
  %tobool329 = icmp ne i32 %and328, 0
  br i1 %tobool329, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %do.body.325
  br label %cond.end.335

cond.false.331:                                   ; preds = %do.body.325
  %285 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i32, i32* %285, i64 1
  %286 = load i32, i32* %arrayidx332, align 4, !tbaa !5
  %287 = call i32 @llvm.bswap.i32(i32 %286)
  %288 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub333 = sub nsw i32 32, %288
  %shr334 = lshr i32 %287, %sub333
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.331, %cond.true.330
  %cond336 = phi i32 [ 0, %cond.true.330 ], [ %shr334, %cond.false.331 ]
  %or337 = or i32 %shl327, %cond336
  %289 = call i32 @llvm.bswap.i32(i32 %or337)
  store i32 %289, i32* %T, align 4, !tbaa !5
  %290 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr338 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %incdec.ptr338, i32** %t, align 8, !tbaa !1
  br label %do.cond.339

do.cond.339:                                      ; preds = %cond.end.335
  br label %do.end.340

do.end.340:                                       ; preds = %do.cond.339
  %291 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %292 = load i32*, i32** %d, align 8, !tbaa !1
  %293 = load i32, i32* %292, align 4, !tbaa !5
  %conv341 = zext i32 %293 to i64
  %294 = load i32, i32* %S, align 4, !tbaa !5
  %conv342 = zext i32 %294 to i64
  %295 = load i32, i32* %T, align 4, !tbaa !5
  %conv343 = zext i32 %295 to i64
  %call344 = call i64 %291(i64 %conv341, i64 %conv342, i64 %conv343) #4
  %conv345 = trunc i64 %call344 to i32
  store i32 %conv345, i32* %D, align 4, !tbaa !5
  %296 = load i32*, i32** %d, align 8, !tbaa !1
  %297 = load i32, i32* %296, align 4, !tbaa !5
  %298 = load i32, i32* %rmask, align 4, !tbaa !5
  %and346 = and i32 %297, %298
  %299 = load i32, i32* %D, align 4, !tbaa !5
  %300 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg347 = xor i32 %300, -1
  %and348 = and i32 %299, %neg347
  %or349 = or i32 %and346, %and348
  %301 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or349, i32* %301, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.340, %do.end.127
  %302 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast i32* %s_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_trans_ST(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 255, i64* %strans, align 8, !tbaa !19
  %8 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %9, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %10 = load i8*, i8** %ptr4, align 8, !tbaa !17
  store i8* %10, i8** %t, align 8, !tbaa !1
  %11 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 255, i64* %ttrans, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.17, %entry
  %12 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %14 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv = zext i8 %15 to i64
  store i64 %conv, i64* %S, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %16 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %t, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !18
  %conv8 = zext i8 %17 to i64
  store i64 %conv8, i64* %T, align 8, !tbaa !19
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %18 = load i64, i64* %S, align 8, !tbaa !19
  %cmp = icmp ne i64 %18, 255
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end.10
  %19 = load i64, i64* %T, align 8, !tbaa !19
  %cmp12 = icmp ne i64 %19, 255
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %21 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !18
  %conv14 = zext i8 %22 to i64
  %23 = load i64, i64* %S, align 8, !tbaa !19
  %24 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %20(i64 %conv14, i64 %23, i64 %24) #4
  %conv15 = trunc i64 %call to i8
  %25 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv15, i8* %25, align 1, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end.10
  %26 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr16, i8** %d.addr, align 8, !tbaa !1
  %27 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %do.cond.17

do.cond.17:                                       ; preds = %if.end
  %29 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %30 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_trans_S(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 255, i64* %strans, align 8, !tbaa !19
  %8 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %9, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %10 = load i8*, i8** %ptr4, align 8, !tbaa !17
  store i8* %10, i8** %t, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.15, %entry
  %11 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %13 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv = zext i8 %14 to i64
  store i64 %conv, i64* %S, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %15 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %t, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %conv8 = zext i8 %16 to i64
  store i64 %conv8, i64* %T, align 8, !tbaa !19
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %17 = load i64, i64* %S, align 8, !tbaa !19
  %cmp = icmp ne i64 %17, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.10
  %18 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %19 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !18
  %conv12 = zext i8 %20 to i64
  %21 = load i64, i64* %S, align 8, !tbaa !19
  %22 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %18(i64 %conv12, i64 %21, i64 %22) #4
  %conv13 = trunc i64 %call to i8
  %23 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv13, i8* %23, align 1, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.10
  %24 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr14, i8** %d.addr, align 8, !tbaa !1
  %25 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end
  %27 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %28 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_trans_T(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %9 = load i8*, i8** %ptr4, align 8, !tbaa !17
  store i8* %9, i8** %t, align 8, !tbaa !1
  %10 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 255, i64* %ttrans, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.15, %entry
  %11 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %13 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv = zext i8 %14 to i64
  store i64 %conv, i64* %S, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %15 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %t, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %conv8 = zext i8 %16 to i64
  store i64 %conv8, i64* %T, align 8, !tbaa !19
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %17 = load i64, i64* %T, align 8, !tbaa !19
  %cmp = icmp ne i64 %17, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.10
  %18 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %19 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !18
  %conv12 = zext i8 %20 to i64
  %21 = load i64, i64* %S, align 8, !tbaa !19
  %22 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %18(i64 %conv12, i64 %21, i64 %22) #4
  %conv13 = trunc i64 %call to i8
  %23 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv13, i8* %23, align 1, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.10
  %24 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr14, i8** %d.addr, align 8, !tbaa !1
  %25 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %do.cond.15

do.cond.15:                                       ; preds = %if.end
  %27 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %28 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %9 = load i8*, i8** %ptr4, align 8, !tbaa !17
  store i8* %9, i8** %t, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.14, %entry
  %10 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %12 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv = zext i8 %13 to i64
  store i64 %conv, i64* %S, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %14 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %t, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv8 = zext i8 %15 to i64
  store i64 %conv8, i64* %T, align 8, !tbaa !19
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %16 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %17 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !18
  %conv11 = zext i8 %18 to i64
  %19 = load i64, i64* %S, align 8, !tbaa !19
  %20 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %16(i64 %conv11, i64 %19, i64 %20) #4
  %conv12 = trunc i64 %call to i8
  %21 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv12, i8* %21, align 1, !tbaa !18
  %22 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr13, i8** %d.addr, align 8, !tbaa !1
  %23 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.end.10
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  %26 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_1bit(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %strans = alloca i64, align 8
  %sroll = alloca i32, align 4
  %scolors = alloca i8*, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %troll = alloca i32, align 4
  %tcolors = alloca i8*, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop2, align 4, !tbaa !10
  %and3 = and i32 %9, 256
  %tobool = icmp ne i32 %and3, 0
  %cond = select i1 %tobool, i32 255, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i32* %sroll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %scolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %12, i32 0, i32 8
  %13 = load i8*, i8** %scolors4, align 8, !tbaa !21
  store i8* %13, i8** %scolors, align 8, !tbaa !1
  %14 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t5 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %15, i32 0, i32 3
  %b6 = bitcast %union.rop_source_s* %t5 to %struct.anon*
  %ptr7 = getelementptr inbounds %struct.anon, %struct.anon* %b6, i32 0, i32 0
  %16 = load i8*, i8** %ptr7, align 8, !tbaa !17
  store i8* %16, i8** %t, align 8, !tbaa !1
  %17 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop8 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %18, i32 0, i32 4
  %19 = load i32, i32* %rop8, align 4, !tbaa !10
  %and9 = and i32 %19, 512
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 255, i32 -1
  %conv12 = sext i32 %cond11 to i64
  store i64 %conv12, i64* %ttrans, align 8, !tbaa !19
  %20 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i8** %tcolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors13 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %22, i32 0, i32 9
  %23 = load i8*, i8** %tcolors13, align 8, !tbaa !22
  store i8* %23, i8** %tcolors, align 8, !tbaa !1
  %24 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s14 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %24, i32 0, i32 2
  %b15 = bitcast %union.rop_source_s* %s14 to %struct.anon*
  %ptr16 = getelementptr inbounds %struct.anon, %struct.anon* %b15, i32 0, i32 0
  %25 = load i8*, i8** %ptr16, align 8, !tbaa !17
  %26 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s17 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %26, i32 0, i32 2
  %b18 = bitcast %union.rop_source_s* %s17 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b18, i32 0, i32 1
  %27 = load i32, i32* %pos, align 4, !tbaa !13
  %shr = ashr i32 %27, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  %28 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s19 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %28, i32 0, i32 2
  %b20 = bitcast %union.rop_source_s* %s19 to %struct.anon*
  %pos21 = getelementptr inbounds %struct.anon, %struct.anon* %b20, i32 0, i32 1
  %29 = load i32, i32* %pos21, align 4, !tbaa !13
  %and22 = and i32 %29, 7
  %sub = sub nsw i32 8, %and22
  store i32 %sub, i32* %sroll, align 4, !tbaa !5
  %30 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t23 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %30, i32 0, i32 3
  %b24 = bitcast %union.rop_source_s* %t23 to %struct.anon*
  %ptr25 = getelementptr inbounds %struct.anon, %struct.anon* %b24, i32 0, i32 0
  %31 = load i8*, i8** %ptr25, align 8, !tbaa !17
  %32 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t26 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %32, i32 0, i32 3
  %b27 = bitcast %union.rop_source_s* %t26 to %struct.anon*
  %pos28 = getelementptr inbounds %struct.anon, %struct.anon* %b27, i32 0, i32 1
  %33 = load i32, i32* %pos28, align 4, !tbaa !13
  %shr29 = ashr i32 %33, 3
  %idx.ext30 = sext i32 %shr29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %31, i64 %idx.ext30
  store i8* %add.ptr31, i8** %t, align 8, !tbaa !1
  %34 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t32 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %34, i32 0, i32 3
  %b33 = bitcast %union.rop_source_s* %t32 to %struct.anon*
  %pos34 = getelementptr inbounds %struct.anon, %struct.anon* %b33, i32 0, i32 1
  %35 = load i32, i32* %pos34, align 4, !tbaa !13
  %and35 = and i32 %35, 7
  %sub36 = sub nsw i32 8, %and35
  store i32 %sub36, i32* %troll, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond.82, %entry
  %36 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load i32, i32* %sroll, align 4, !tbaa !5
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %do.body.38

do.body.38:                                       ; preds = %if.then
  %39 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !18
  %conv39 = zext i8 %40 to i64
  store i64 %conv39, i64* %S, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.38
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.50

if.else:                                          ; preds = %do.body
  %41 = load i32, i32* %sroll, align 4, !tbaa !5
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %sroll, align 4, !tbaa !5
  %42 = load i8*, i8** %s, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !18
  %conv40 = zext i8 %43 to i32
  %44 = load i32, i32* %sroll, align 4, !tbaa !5
  %shr41 = ashr i32 %conv40, %44
  %and42 = and i32 %shr41, 1
  %idxprom43 = sext i32 %and42 to i64
  %45 = load i8*, i8** %scolors, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %45, i64 %idxprom43
  %46 = load i8, i8* %arrayidx44, align 1, !tbaa !18
  %conv45 = zext i8 %46 to i64
  store i64 %conv45, i64* %S, align 8, !tbaa !19
  %47 = load i32, i32* %sroll, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %47, 0
  br i1 %cmp46, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.else
  store i32 8, i32* %sroll, align 4, !tbaa !5
  %48 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr49, i8** %s, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.48, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %do.end
  %49 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %49, 0
  br i1 %cmp51, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.end.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %50 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr55, i8** %t, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !18
  %conv56 = zext i8 %51 to i64
  store i64 %conv56, i64* %T, align 8, !tbaa !19
  br label %do.cond.57

do.cond.57:                                       ; preds = %do.body.54
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  br label %if.end.72

if.else.59:                                       ; preds = %if.end.50
  %52 = load i32, i32* %troll, align 4, !tbaa !5
  %dec60 = add nsw i32 %52, -1
  store i32 %dec60, i32* %troll, align 4, !tbaa !5
  %53 = load i8*, i8** %t, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !18
  %conv61 = zext i8 %54 to i32
  %55 = load i32, i32* %troll, align 4, !tbaa !5
  %shr62 = ashr i32 %conv61, %55
  %and63 = and i32 %shr62, 1
  %idxprom64 = sext i32 %and63 to i64
  %56 = load i8*, i8** %tcolors, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %56, i64 %idxprom64
  %57 = load i8, i8* %arrayidx65, align 1, !tbaa !18
  %conv66 = zext i8 %57 to i64
  store i64 %conv66, i64* %T, align 8, !tbaa !19
  %58 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %58, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.else.59
  store i32 8, i32* %troll, align 4, !tbaa !5
  %59 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr70, i8** %t, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.else.59
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.end.58
  %60 = load i64, i64* %S, align 8, !tbaa !19
  %61 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp73 = icmp ne i64 %60, %61
  br i1 %cmp73, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %if.end.72
  %62 = load i64, i64* %T, align 8, !tbaa !19
  %63 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp75 = icmp ne i64 %62, %63
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %land.lhs.true
  %64 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %65 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !18
  %conv78 = zext i8 %66 to i64
  %67 = load i64, i64* %S, align 8, !tbaa !19
  %68 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %64(i64 %conv78, i64 %67, i64 %68) #4
  %conv79 = trunc i64 %call to i8
  %69 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv79, i8* %69, align 1, !tbaa !18
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %land.lhs.true, %if.end.72
  %70 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr81, i8** %d.addr, align 8, !tbaa !1
  %71 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %do.cond.82

do.cond.82:                                       ; preds = %if.end.80
  %73 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec83 = add nsw i32 %73, -1
  store i32 %dec83, i32* %len.addr, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %dec83, 0
  br i1 %tobool84, label %do.body, label %do.end.85

do.end.85:                                        ; preds = %do.cond.82
  %74 = bitcast i8** %tcolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %scolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %sroll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_trans(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop2, align 4, !tbaa !10
  %and3 = and i32 %9, 256
  %tobool = icmp ne i32 %and3, 0
  %cond = select i1 %tobool, i32 16777215, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 3
  %b5 = bitcast %union.rop_source_s* %t4 to %struct.anon*
  %ptr6 = getelementptr inbounds %struct.anon, %struct.anon* %b5, i32 0, i32 0
  %12 = load i8*, i8** %ptr6, align 8, !tbaa !17
  store i8* %12, i8** %t, align 8, !tbaa !1
  %13 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop7 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %14, i32 0, i32 4
  %15 = load i32, i32* %rop7, align 4, !tbaa !10
  %and8 = and i32 %15, 512
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 16777215, i32 -1
  %conv11 = sext i32 %cond10 to i64
  store i64 %conv11, i64* %ttrans, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.57, %entry
  %16 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %18 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx13, align 1, !tbaa !18
  %conv14 = zext i8 %19 to i64
  %shl = shl i64 %conv14, 16
  %20 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx15, align 1, !tbaa !18
  %conv16 = zext i8 %21 to i64
  %shl17 = shl i64 %conv16, 8
  %or = or i64 %shl, %shl17
  %22 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx18, align 1, !tbaa !18
  %conv19 = zext i8 %23 to i64
  %or20 = or i64 %or, %conv19
  store i64 %or20, i64* %S, align 8, !tbaa !19
  %24 = load i8*, i8** %s, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %25 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx22, align 1, !tbaa !18
  %conv23 = zext i8 %26 to i64
  %shl24 = shl i64 %conv23, 16
  %27 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx25, align 1, !tbaa !18
  %conv26 = zext i8 %28 to i64
  %shl27 = shl i64 %conv26, 8
  %or28 = or i64 %shl24, %shl27
  %29 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx29, align 1, !tbaa !18
  %conv30 = zext i8 %30 to i64
  %or31 = or i64 %or28, %conv30
  store i64 %or31, i64* %T, align 8, !tbaa !19
  %31 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %add.ptr32, i8** %t, align 8, !tbaa !1
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.21
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %32 = load i64, i64* %S, align 8, !tbaa !19
  %33 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp ne i64 %32, %33
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end.34
  %34 = load i64, i64* %T, align 8, !tbaa !19
  %35 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp36 = icmp ne i64 %34, %35
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %36 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %38 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx38, align 1, !tbaa !18
  %conv39 = zext i8 %39 to i64
  %shl40 = shl i64 %conv39, 16
  %40 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx41, align 1, !tbaa !18
  %conv42 = zext i8 %41 to i64
  %shl43 = shl i64 %conv42, 8
  %or44 = or i64 %shl40, %shl43
  %42 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 2
  %43 = load i8, i8* %arrayidx45, align 1, !tbaa !18
  %conv46 = zext i8 %43 to i64
  %or47 = or i64 %or44, %conv46
  %44 = load i64, i64* %S, align 8, !tbaa !19
  %45 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %37(i64 %or47, i64 %44, i64 %45) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %46 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %46, 16
  %conv48 = trunc i64 %shr to i8
  %47 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %conv48, i8* %arrayidx49, align 1, !tbaa !18
  %48 = load i64, i64* %D, align 8, !tbaa !19
  %conv50 = trunc i64 %48 to i32
  %shr51 = lshr i32 %conv50, 8
  %conv52 = trunc i32 %shr51 to i8
  %49 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %conv52, i8* %arrayidx53, align 1, !tbaa !18
  %50 = load i64, i64* %D, align 8, !tbaa !19
  %conv54 = trunc i64 %50 to i8
  %51 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %conv54, i8* %arrayidx55, align 1, !tbaa !18
  %52 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end.34
  %53 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %53, i64 3
  store i8* %add.ptr56, i8** %d.addr, align 8, !tbaa !1
  %54 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %do.cond.57

do.cond.57:                                       ; preds = %if.end
  %56 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %dec, 0
  br i1 %tobool58, label %do.body, label %do.end.59

do.end.59:                                        ; preds = %do.cond.57
  %57 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %ptr4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 0
  %9 = load i8*, i8** %ptr4, align 8, !tbaa !17
  store i8* %9, i8** %t, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.46, %entry
  %10 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %12 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !18
  %conv = zext i8 %13 to i64
  %shl = shl i64 %conv, 16
  %14 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx7, align 1, !tbaa !18
  %conv8 = zext i8 %15 to i64
  %shl9 = shl i64 %conv8, 8
  %or = or i64 %shl, %shl9
  %16 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx10, align 1, !tbaa !18
  %conv11 = zext i8 %17 to i64
  %or12 = or i64 %or, %conv11
  store i64 %or12, i64* %S, align 8, !tbaa !19
  %18 = load i8*, i8** %s, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %19 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %20 to i64
  %shl16 = shl i64 %conv15, 16
  %21 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv18 = zext i8 %22 to i64
  %shl19 = shl i64 %conv18, 8
  %or20 = or i64 %shl16, %shl19
  %23 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx21, align 1, !tbaa !18
  %conv22 = zext i8 %24 to i64
  %or23 = or i64 %or20, %conv22
  store i64 %or23, i64* %T, align 8, !tbaa !19
  %25 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %add.ptr24, i8** %t, align 8, !tbaa !1
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.13
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %26 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %28 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx27, align 1, !tbaa !18
  %conv28 = zext i8 %29 to i64
  %shl29 = shl i64 %conv28, 16
  %30 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx30, align 1, !tbaa !18
  %conv31 = zext i8 %31 to i64
  %shl32 = shl i64 %conv31, 8
  %or33 = or i64 %shl29, %shl32
  %32 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx34, align 1, !tbaa !18
  %conv35 = zext i8 %33 to i64
  %or36 = or i64 %or33, %conv35
  %34 = load i64, i64* %S, align 8, !tbaa !19
  %35 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %27(i64 %or36, i64 %34, i64 %35) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %36 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %36, 16
  %conv37 = trunc i64 %shr to i8
  %37 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !18
  %38 = load i64, i64* %D, align 8, !tbaa !19
  %conv39 = trunc i64 %38 to i32
  %shr40 = lshr i32 %conv39, 8
  %conv41 = trunc i32 %shr40 to i8
  %39 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !18
  %40 = load i64, i64* %D, align 8, !tbaa !19
  %conv43 = trunc i64 %40 to i8
  %41 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !18
  %42 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds i8, i8* %43, i64 3
  store i8* %add.ptr45, i8** %d.addr, align 8, !tbaa !1
  %44 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.26
  %46 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %47 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_1bit(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %s = alloca i8*, align 8
  %strans = alloca i64, align 8
  %sroll = alloca i32, align 4
  %sc = alloca [2 x i64], align 16
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %troll = alloca i32, align 4
  %tc = alloca [2 x i64], align 16
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %6 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %6, i8** %s, align 8, !tbaa !1
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop2, align 4, !tbaa !10
  %and3 = and i32 %9, 256
  %tobool = icmp ne i32 %and3, 0
  %cond = select i1 %tobool, i32 16777215, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i32* %sroll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [2 x i64]* %sc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %13, i32 0, i32 3
  %b5 = bitcast %union.rop_source_s* %t4 to %struct.anon*
  %ptr6 = getelementptr inbounds %struct.anon, %struct.anon* %b5, i32 0, i32 0
  %14 = load i8*, i8** %ptr6, align 8, !tbaa !17
  store i8* %14, i8** %t, align 8, !tbaa !1
  %15 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop7 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %16, i32 0, i32 4
  %17 = load i32, i32* %rop7, align 4, !tbaa !10
  %and8 = and i32 %17, 512
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 16777215, i32 -1
  %conv11 = sext i32 %cond10 to i64
  store i64 %conv11, i64* %ttrans, align 8, !tbaa !19
  %18 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast [2 x i64]* %tc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s12 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %20, i32 0, i32 2
  %b13 = bitcast %union.rop_source_s* %s12 to %struct.anon*
  %ptr14 = getelementptr inbounds %struct.anon, %struct.anon* %b13, i32 0, i32 0
  %21 = load i8*, i8** %ptr14, align 8, !tbaa !17
  %22 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s15 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %22, i32 0, i32 2
  %b16 = bitcast %union.rop_source_s* %s15 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b16, i32 0, i32 1
  %23 = load i32, i32* %pos, align 4, !tbaa !13
  %shr = ashr i32 %23, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8, !tbaa !1
  %24 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s17 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %24, i32 0, i32 2
  %b18 = bitcast %union.rop_source_s* %s17 to %struct.anon*
  %pos19 = getelementptr inbounds %struct.anon, %struct.anon* %b18, i32 0, i32 1
  %25 = load i32, i32* %pos19, align 4, !tbaa !13
  %and20 = and i32 %25, 7
  %sub = sub nsw i32 8, %and20
  store i32 %sub, i32* %sroll, align 4, !tbaa !5
  %26 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %26, i32 0, i32 8
  %27 = load i8*, i8** %scolors, align 8, !tbaa !21
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 0
  %arrayidx22 = getelementptr inbounds i8, i8* %arrayidx21, i64 0
  %28 = load i8, i8* %arrayidx22, align 1, !tbaa !18
  %conv23 = zext i8 %28 to i64
  %shl = shl i64 %conv23, 16
  %29 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors24 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %29, i32 0, i32 8
  %30 = load i8*, i8** %scolors24, align 8, !tbaa !21
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 0
  %arrayidx26 = getelementptr inbounds i8, i8* %arrayidx25, i64 1
  %31 = load i8, i8* %arrayidx26, align 1, !tbaa !18
  %conv27 = zext i8 %31 to i64
  %shl28 = shl i64 %conv27, 8
  %or = or i64 %shl, %shl28
  %32 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors29 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %32, i32 0, i32 8
  %33 = load i8*, i8** %scolors29, align 8, !tbaa !21
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 0
  %arrayidx31 = getelementptr inbounds i8, i8* %arrayidx30, i64 2
  %34 = load i8, i8* %arrayidx31, align 1, !tbaa !18
  %conv32 = zext i8 %34 to i64
  %or33 = or i64 %or, %conv32
  %arrayidx34 = getelementptr inbounds [2 x i64], [2 x i64]* %sc, i32 0, i64 0
  store i64 %or33, i64* %arrayidx34, align 8, !tbaa !19
  %35 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors35 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %35, i32 0, i32 8
  %36 = load i8*, i8** %scolors35, align 8, !tbaa !21
  %arrayidx36 = getelementptr inbounds i8, i8* %36, i64 3
  %arrayidx37 = getelementptr inbounds i8, i8* %arrayidx36, i64 0
  %37 = load i8, i8* %arrayidx37, align 1, !tbaa !18
  %conv38 = zext i8 %37 to i64
  %shl39 = shl i64 %conv38, 16
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors40 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 8
  %39 = load i8*, i8** %scolors40, align 8, !tbaa !21
  %arrayidx41 = getelementptr inbounds i8, i8* %39, i64 3
  %arrayidx42 = getelementptr inbounds i8, i8* %arrayidx41, i64 1
  %40 = load i8, i8* %arrayidx42, align 1, !tbaa !18
  %conv43 = zext i8 %40 to i64
  %shl44 = shl i64 %conv43, 8
  %or45 = or i64 %shl39, %shl44
  %41 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors46 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %41, i32 0, i32 8
  %42 = load i8*, i8** %scolors46, align 8, !tbaa !21
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 3
  %arrayidx48 = getelementptr inbounds i8, i8* %arrayidx47, i64 2
  %43 = load i8, i8* %arrayidx48, align 1, !tbaa !18
  %conv49 = zext i8 %43 to i64
  %or50 = or i64 %or45, %conv49
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* %sc, i32 0, i64 1
  store i64 %or50, i64* %arrayidx51, align 8, !tbaa !19
  %44 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t52 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %44, i32 0, i32 3
  %b53 = bitcast %union.rop_source_s* %t52 to %struct.anon*
  %ptr54 = getelementptr inbounds %struct.anon, %struct.anon* %b53, i32 0, i32 0
  %45 = load i8*, i8** %ptr54, align 8, !tbaa !17
  %46 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t55 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %46, i32 0, i32 3
  %b56 = bitcast %union.rop_source_s* %t55 to %struct.anon*
  %pos57 = getelementptr inbounds %struct.anon, %struct.anon* %b56, i32 0, i32 1
  %47 = load i32, i32* %pos57, align 4, !tbaa !13
  %shr58 = ashr i32 %47, 3
  %idx.ext59 = sext i32 %shr58 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %45, i64 %idx.ext59
  store i8* %add.ptr60, i8** %t, align 8, !tbaa !1
  %48 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t61 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %48, i32 0, i32 3
  %b62 = bitcast %union.rop_source_s* %t61 to %struct.anon*
  %pos63 = getelementptr inbounds %struct.anon, %struct.anon* %b62, i32 0, i32 1
  %49 = load i32, i32* %pos63, align 4, !tbaa !13
  %and64 = and i32 %49, 7
  %sub65 = sub nsw i32 8, %and64
  store i32 %sub65, i32* %troll, align 4, !tbaa !5
  %50 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %50, i32 0, i32 9
  %51 = load i8*, i8** %tcolors, align 8, !tbaa !22
  %arrayidx66 = getelementptr inbounds i8, i8* %51, i64 0
  %arrayidx67 = getelementptr inbounds i8, i8* %arrayidx66, i64 0
  %52 = load i8, i8* %arrayidx67, align 1, !tbaa !18
  %conv68 = zext i8 %52 to i64
  %shl69 = shl i64 %conv68, 16
  %53 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors70 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %53, i32 0, i32 9
  %54 = load i8*, i8** %tcolors70, align 8, !tbaa !22
  %arrayidx71 = getelementptr inbounds i8, i8* %54, i64 0
  %arrayidx72 = getelementptr inbounds i8, i8* %arrayidx71, i64 1
  %55 = load i8, i8* %arrayidx72, align 1, !tbaa !18
  %conv73 = zext i8 %55 to i64
  %shl74 = shl i64 %conv73, 8
  %or75 = or i64 %shl69, %shl74
  %56 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors76 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %56, i32 0, i32 9
  %57 = load i8*, i8** %tcolors76, align 8, !tbaa !22
  %arrayidx77 = getelementptr inbounds i8, i8* %57, i64 0
  %arrayidx78 = getelementptr inbounds i8, i8* %arrayidx77, i64 2
  %58 = load i8, i8* %arrayidx78, align 1, !tbaa !18
  %conv79 = zext i8 %58 to i64
  %or80 = or i64 %or75, %conv79
  %arrayidx81 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 0
  store i64 %or80, i64* %arrayidx81, align 8, !tbaa !19
  %59 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors82 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %59, i32 0, i32 9
  %60 = load i8*, i8** %tcolors82, align 8, !tbaa !22
  %arrayidx83 = getelementptr inbounds i8, i8* %60, i64 3
  %arrayidx84 = getelementptr inbounds i8, i8* %arrayidx83, i64 0
  %61 = load i8, i8* %arrayidx84, align 1, !tbaa !18
  %conv85 = zext i8 %61 to i64
  %shl86 = shl i64 %conv85, 16
  %62 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors87 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %62, i32 0, i32 9
  %63 = load i8*, i8** %tcolors87, align 8, !tbaa !22
  %arrayidx88 = getelementptr inbounds i8, i8* %63, i64 3
  %arrayidx89 = getelementptr inbounds i8, i8* %arrayidx88, i64 1
  %64 = load i8, i8* %arrayidx89, align 1, !tbaa !18
  %conv90 = zext i8 %64 to i64
  %shl91 = shl i64 %conv90, 8
  %or92 = or i64 %shl86, %shl91
  %65 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors93 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %65, i32 0, i32 9
  %66 = load i8*, i8** %tcolors93, align 8, !tbaa !22
  %arrayidx94 = getelementptr inbounds i8, i8* %66, i64 3
  %arrayidx95 = getelementptr inbounds i8, i8* %arrayidx94, i64 2
  %67 = load i8, i8* %arrayidx95, align 1, !tbaa !18
  %conv96 = zext i8 %67 to i64
  %or97 = or i64 %or92, %conv96
  %arrayidx98 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 1
  store i64 %or97, i64* %arrayidx98, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.177, %entry
  %68 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = load i32, i32* %sroll, align 4, !tbaa !5
  %cmp = icmp eq i32 %70, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %do.body.100

do.body.100:                                      ; preds = %if.then
  %71 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx101, align 1, !tbaa !18
  %conv102 = zext i8 %72 to i64
  %shl103 = shl i64 %conv102, 16
  %73 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load i8, i8* %arrayidx104, align 1, !tbaa !18
  %conv105 = zext i8 %74 to i64
  %shl106 = shl i64 %conv105, 8
  %or107 = or i64 %shl103, %shl106
  %75 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx108, align 1, !tbaa !18
  %conv109 = zext i8 %76 to i64
  %or110 = or i64 %or107, %conv109
  store i64 %or110, i64* %S, align 8, !tbaa !19
  %77 = load i8*, i8** %s, align 8, !tbaa !1
  %add.ptr111 = getelementptr inbounds i8, i8* %77, i64 3
  store i8* %add.ptr111, i8** %s, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.100
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.120

if.else:                                          ; preds = %do.body
  %78 = load i32, i32* %sroll, align 4, !tbaa !5
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %sroll, align 4, !tbaa !5
  %79 = load i8*, i8** %s, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !18
  %conv112 = zext i8 %80 to i32
  %81 = load i32, i32* %sroll, align 4, !tbaa !5
  %shr113 = ashr i32 %conv112, %81
  %and114 = and i32 %shr113, 1
  %idxprom115 = sext i32 %and114 to i64
  %arrayidx116 = getelementptr inbounds [2 x i64], [2 x i64]* %sc, i32 0, i64 %idxprom115
  %82 = load i64, i64* %arrayidx116, align 8, !tbaa !19
  store i64 %82, i64* %S, align 8, !tbaa !19
  %83 = load i32, i32* %sroll, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %83, 0
  br i1 %cmp117, label %if.then.119, label %if.end

if.then.119:                                      ; preds = %if.else
  store i32 8, i32* %sroll, align 4, !tbaa !5
  %84 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.119, %if.else
  br label %if.end.120

if.end.120:                                       ; preds = %if.end, %do.end
  %85 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %85, 0
  br i1 %cmp121, label %if.then.123, label %if.else.138

if.then.123:                                      ; preds = %if.end.120
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  %86 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %86, i64 0
  %87 = load i8, i8* %arrayidx125, align 1, !tbaa !18
  %conv126 = zext i8 %87 to i64
  %shl127 = shl i64 %conv126, 16
  %88 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx128, align 1, !tbaa !18
  %conv129 = zext i8 %89 to i64
  %shl130 = shl i64 %conv129, 8
  %or131 = or i64 %shl127, %shl130
  %90 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx132, align 1, !tbaa !18
  %conv133 = zext i8 %91 to i64
  %or134 = or i64 %or131, %conv133
  store i64 %or134, i64* %T, align 8, !tbaa !19
  %92 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr135 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %add.ptr135, i8** %t, align 8, !tbaa !1
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.124
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %if.end.150

if.else.138:                                      ; preds = %if.end.120
  %93 = load i32, i32* %troll, align 4, !tbaa !5
  %dec139 = add nsw i32 %93, -1
  store i32 %dec139, i32* %troll, align 4, !tbaa !5
  %94 = load i8*, i8** %t, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !18
  %conv140 = zext i8 %95 to i32
  %96 = load i32, i32* %troll, align 4, !tbaa !5
  %shr141 = ashr i32 %conv140, %96
  %and142 = and i32 %shr141, 1
  %idxprom143 = sext i32 %and142 to i64
  %arrayidx144 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 %idxprom143
  %97 = load i64, i64* %arrayidx144, align 8, !tbaa !19
  store i64 %97, i64* %T, align 8, !tbaa !19
  %98 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp145 = icmp eq i32 %98, 0
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.else.138
  store i32 8, i32* %troll, align 4, !tbaa !5
  %99 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr148, i8** %t, align 8, !tbaa !1
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.else.138
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %do.end.137
  %100 = load i64, i64* %S, align 8, !tbaa !19
  %101 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp151 = icmp ne i64 %100, %101
  br i1 %cmp151, label %land.lhs.true, label %if.end.175

land.lhs.true:                                    ; preds = %if.end.150
  %102 = load i64, i64* %T, align 8, !tbaa !19
  %103 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp153 = icmp ne i64 %102, %103
  br i1 %cmp153, label %if.then.155, label %if.end.175

if.then.155:                                      ; preds = %land.lhs.true
  %104 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %106 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx156, align 1, !tbaa !18
  %conv157 = zext i8 %107 to i64
  %shl158 = shl i64 %conv157, 16
  %108 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx159, align 1, !tbaa !18
  %conv160 = zext i8 %109 to i64
  %shl161 = shl i64 %conv160, 8
  %or162 = or i64 %shl158, %shl161
  %110 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8, i8* %arrayidx163, align 1, !tbaa !18
  %conv164 = zext i8 %111 to i64
  %or165 = or i64 %or162, %conv164
  %112 = load i64, i64* %S, align 8, !tbaa !19
  %113 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %105(i64 %or165, i64 %112, i64 %113) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %114 = load i64, i64* %D, align 8, !tbaa !19
  %shr166 = lshr i64 %114, 16
  %conv167 = trunc i64 %shr166 to i8
  %115 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 %conv167, i8* %arrayidx168, align 1, !tbaa !18
  %116 = load i64, i64* %D, align 8, !tbaa !19
  %conv169 = trunc i64 %116 to i32
  %shr170 = lshr i32 %conv169, 8
  %conv171 = trunc i32 %shr170 to i8
  %117 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %117, i64 1
  store i8 %conv171, i8* %arrayidx172, align 1, !tbaa !18
  %118 = load i64, i64* %D, align 8, !tbaa !19
  %conv173 = trunc i64 %118 to i8
  %119 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %119, i64 2
  store i8 %conv173, i8* %arrayidx174, align 1, !tbaa !18
  %120 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.155, %land.lhs.true, %if.end.150
  %121 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds i8, i8* %121, i64 3
  store i8* %add.ptr176, i8** %d.addr, align 8, !tbaa !1
  %122 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %do.cond.177

do.cond.177:                                      ; preds = %if.end.175
  %124 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec178 = add nsw i32 %124, -1
  store i32 %dec178, i32* %len.addr, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %dec178, 0
  br i1 %tobool179, label %do.body, label %do.end.180

do.end.180:                                       ; preds = %do.cond.177
  %125 = bitcast [2 x i64]* %tc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #1
  %126 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast [2 x i64]* %sc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %129) #1
  %130 = bitcast i32* %sroll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run1_const_s(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %S = alloca i32, align 4
  %t = alloca i32*, align 8
  %T = alloca i32, align 4
  %t_skew = alloca i32, align 4
  %skewflags = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tlen2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  %offset52 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %8 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %S, align 4, !tbaa !5
  %9 = bitcast i32** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %10, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %11 = load i8*, i8** %ptr, align 8, !tbaa !17
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %t, align 8, !tbaa !1
  %13 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %skewflags, align 4, !tbaa !5
  %16 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %18, i32 0, i32 7
  %19 = load i8, i8* %dpos2, align 1, !tbaa !15
  %conv3 = zext i8 %19 to i32
  store i32 %conv3, i32* %dpos, align 4, !tbaa !5
  %20 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %23 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32*, i32** %d, align 8, !tbaa !1
  %25 = ptrtoint i32* %24 to i64
  %and = and i64 %25, 3
  %conv4 = trunc i64 %and to i32
  store i32 %conv4, i32* %offset, align 4, !tbaa !5
  %26 = load i32*, i32** %d, align 8, !tbaa !1
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.neg
  %29 = bitcast i8* %add.ptr to i32*
  store i32* %29, i32** %d, align 8, !tbaa !1
  %30 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %30, 3
  %31 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %31, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %32 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %len.addr, align 4, !tbaa !5
  %34 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %34, i32 0, i32 5
  %35 = load i8, i8* %depth, align 1, !tbaa !9
  %conv5 = zext i8 %35 to i32
  %mul = mul nsw i32 %33, %conv5
  %36 = load i32, i32* %dpos, align 4, !tbaa !5
  %add6 = add nsw i32 %mul, %36
  store i32 %add6, i32* %len.addr, align 4, !tbaa !5
  %37 = load i32, i32* %dpos, align 4, !tbaa !5
  %and7 = and i32 31, %37
  %shr = lshr i32 -1, %and7
  %38 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %38, i32* %lmask, align 4, !tbaa !5
  %39 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and8 = and i32 31, %39
  %shr9 = lshr i32 -1, %and8
  %40 = call i32 @llvm.bswap.i32(i32 %shr9)
  store i32 %40, i32* %rmask, align 4, !tbaa !5
  %41 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %41, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %42 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth11 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %42, i32 0, i32 5
  %43 = load i8, i8* %depth11, align 1, !tbaa !9
  %conv12 = zext i8 %43 to i32
  %and13 = and i32 %conv12, 1
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %44 = load i32, i32* %S, align 4, !tbaa !5
  %shl15 = shl i32 %44, 1
  %45 = load i32, i32* %S, align 4, !tbaa !5
  %or = or i32 %45, %shl15
  store i32 %or, i32* %S, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %46 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth17 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %46, i32 0, i32 5
  %47 = load i8, i8* %depth17, align 1, !tbaa !9
  %conv18 = zext i8 %47 to i32
  %and19 = and i32 %conv18, 3
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.16
  %48 = load i32, i32* %S, align 4, !tbaa !5
  %shl22 = shl i32 %48, 2
  %49 = load i32, i32* %S, align 4, !tbaa !5
  %or23 = or i32 %49, %shl22
  store i32 %or23, i32* %S, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.16
  %50 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth25 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %50, i32 0, i32 5
  %51 = load i8, i8* %depth25, align 1, !tbaa !9
  %conv26 = zext i8 %51 to i32
  %and27 = and i32 %conv26, 7
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.24
  %52 = load i32, i32* %S, align 4, !tbaa !5
  %shl30 = shl i32 %52, 4
  %53 = load i32, i32* %S, align 4, !tbaa !5
  %or31 = or i32 %53, %shl30
  store i32 %or31, i32* %S, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.24
  %54 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth33 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %54, i32 0, i32 5
  %55 = load i8, i8* %depth33, align 1, !tbaa !9
  %conv34 = zext i8 %55 to i32
  %and35 = and i32 %conv34, 15
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.32
  %56 = load i32, i32* %S, align 4, !tbaa !5
  %shl38 = shl i32 %56, 8
  %57 = load i32, i32* %S, align 4, !tbaa !5
  %or39 = or i32 %57, %shl38
  store i32 %or39, i32* %S, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.32
  %58 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth41 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %58, i32 0, i32 5
  %59 = load i8, i8* %depth41, align 1, !tbaa !9
  %conv42 = zext i8 %59 to i32
  %and43 = and i32 %conv42, 31
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.40
  %60 = load i32, i32* %S, align 4, !tbaa !5
  %shl46 = shl i32 %60, 16
  %61 = load i32, i32* %S, align 4, !tbaa !5
  %or47 = or i32 %61, %shl46
  store i32 %or47, i32* %S, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.40
  %62 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t49 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %65, i32 0, i32 3
  %b50 = bitcast %union.rop_source_s* %t49 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b50, i32 0, i32 1
  %66 = load i32, i32* %pos, align 4, !tbaa !13
  store i32 %66, i32* %tpos, align 4, !tbaa !5
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.48
  %67 = bitcast i32* %offset52 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i32*, i32** %t, align 8, !tbaa !1
  %69 = ptrtoint i32* %68 to i64
  %and53 = and i64 %69, 3
  %conv54 = trunc i64 %and53 to i32
  store i32 %conv54, i32* %offset52, align 4, !tbaa !5
  %70 = load i32*, i32** %t, align 8, !tbaa !1
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* %offset52, align 4, !tbaa !5
  %idx.ext55 = sext i32 %72 to i64
  %idx.neg56 = sub i64 0, %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, i8* %71, i64 %idx.neg56
  %73 = bitcast i8* %add.ptr57 to i32*
  store i32* %73, i32** %t, align 8, !tbaa !1
  %74 = load i32, i32* %offset52, align 4, !tbaa !5
  %shl58 = shl i32 %74, 3
  %75 = load i32, i32* %tpos, align 4, !tbaa !5
  %add59 = add nsw i32 %75, %shl58
  store i32 %add59, i32* %tpos, align 4, !tbaa !5
  %76 = bitcast i32* %offset52 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  br label %do.cond.60

do.cond.60:                                       ; preds = %do.body.51
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  %77 = load i32, i32* %tpos, align 4, !tbaa !5
  %78 = load i32, i32* %dpos, align 4, !tbaa !5
  %sub = sub nsw i32 %77, %78
  store i32 %sub, i32* %t_skew, align 4, !tbaa !5
  %79 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %79, 0
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %do.end.61
  %80 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add65 = add nsw i32 %80, 32
  store i32 %add65, i32* %t_skew, align 4, !tbaa !5
  %81 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %81, i32 -1
  store i32* %incdec.ptr, i32** %t, align 8, !tbaa !1
  %82 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or66 = or i32 %82, 2
  store i32 %or66, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %do.end.61
  %83 = load i32, i32* %len.addr, align 4, !tbaa !5
  %84 = load i32, i32* %t_skew, align 4, !tbaa !5
  %add68 = add nsw i32 %83, %84
  %add69 = add nsw i32 %add68, 32
  %sub70 = sub nsw i32 %add69, 1
  %and71 = and i32 %sub70, -32
  store i32 %and71, i32* %tlen, align 4, !tbaa !5
  %85 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add72 = add nsw i32 %85, 32
  %add73 = add nsw i32 %add72, 32
  %sub74 = sub nsw i32 %add73, 1
  %and75 = and i32 %sub74, -32
  store i32 %and75, i32* %tlen2, align 4, !tbaa !5
  %86 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %86, 0
  br i1 %cmp76, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.67
  %87 = load i32, i32* %tlen, align 4, !tbaa !5
  %88 = load i32, i32* %tlen2, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %87, %88
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %lor.lhs.false, %if.end.67
  %89 = load i32, i32* %skewflags, align 4, !tbaa !5
  %or81 = or i32 %89, 8
  store i32 %or81, i32* %skewflags, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %lor.lhs.false
  %90 = bitcast i32* %tpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %tlen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %tlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub83 = sub nsw i32 %93, 32
  store i32 %sub83, i32* %len.addr, align 4, !tbaa !5
  %94 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp84 = icmp sle i32 %94, 0
  br i1 %cmp84, label %if.then.86, label %if.end.114

if.then.86:                                       ; preds = %if.end.82
  %95 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %95, -1
  %96 = load i32, i32* %lmask, align 4, !tbaa !5
  %and87 = and i32 %96, %neg
  store i32 %and87, i32* %lmask, align 4, !tbaa !5
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.86
  %97 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and89 = and i32 %97, 2
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.88
  br label %cond.end

cond.false:                                       ; preds = %do.body.88
  %98 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %98, i64 0
  %99 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %101 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl92 = shl i32 %100, %101
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl92, %cond.false ]
  %102 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and93 = and i32 %102, 8
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end
  br label %cond.end.100

cond.false.96:                                    ; preds = %cond.end
  %103 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %103, i64 1
  %104 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %106 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub98 = sub nsw i32 32, %106
  %shr99 = lshr i32 %105, %sub98
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.96, %cond.true.95
  %cond101 = phi i32 [ 0, %cond.true.95 ], [ %shr99, %cond.false.96 ]
  %or102 = or i32 %cond, %cond101
  %107 = call i32 @llvm.bswap.i32(i32 %or102)
  store i32 %107, i32* %T, align 4, !tbaa !5
  %108 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %incdec.ptr103, i32** %t, align 8, !tbaa !1
  br label %do.cond.104

do.cond.104:                                      ; preds = %cond.end.100
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  %109 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %110 = load i32*, i32** %d, align 8, !tbaa !1
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %conv106 = zext i32 %111 to i64
  %112 = load i32, i32* %S, align 4, !tbaa !5
  %conv107 = zext i32 %112 to i64
  %113 = load i32, i32* %T, align 4, !tbaa !5
  %conv108 = zext i32 %113 to i64
  %call = call i64 %109(i64 %conv106, i64 %conv107, i64 %conv108) #4
  %conv109 = trunc i64 %call to i32
  store i32 %conv109, i32* %D, align 4, !tbaa !5
  %114 = load i32*, i32** %d, align 8, !tbaa !1
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %116 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg110 = xor i32 %116, -1
  %and111 = and i32 %115, %neg110
  %117 = load i32, i32* %D, align 4, !tbaa !5
  %118 = load i32, i32* %lmask, align 4, !tbaa !5
  %and112 = and i32 %117, %118
  %or113 = or i32 %and111, %and112
  %119 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or113, i32* %119, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %if.end.82
  %120 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp115 = icmp ne i32 %120, -1
  br i1 %cmp115, label %if.then.120, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.114
  %121 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and118 = and i32 %121, 3
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.154

if.then.120:                                      ; preds = %lor.lhs.false.117, %if.end.114
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.120
  %122 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and122 = and i32 %122, 2
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %do.body.121
  br label %cond.end.128

cond.false.125:                                   ; preds = %do.body.121
  %123 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %123, i64 0
  %124 = load i32, i32* %arrayidx126, align 4, !tbaa !5
  %125 = call i32 @llvm.bswap.i32(i32 %124)
  %126 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl127 = shl i32 %125, %126
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.125, %cond.true.124
  %cond129 = phi i32 [ 0, %cond.true.124 ], [ %shl127, %cond.false.125 ]
  %127 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp130 = icmp eq i32 %127, 0
  br i1 %cmp130, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %cond.end.128
  br label %cond.end.137

cond.false.133:                                   ; preds = %cond.end.128
  %128 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i32, i32* %128, i64 1
  %129 = load i32, i32* %arrayidx134, align 4, !tbaa !5
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %131 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub135 = sub nsw i32 32, %131
  %shr136 = lshr i32 %130, %sub135
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.133, %cond.true.132
  %cond138 = phi i32 [ 0, %cond.true.132 ], [ %shr136, %cond.false.133 ]
  %or139 = or i32 %cond129, %cond138
  %132 = call i32 @llvm.bswap.i32(i32 %or139)
  store i32 %132, i32* %T, align 4, !tbaa !5
  %133 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr140 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %incdec.ptr140, i32** %t, align 8, !tbaa !1
  br label %do.cond.141

do.cond.141:                                      ; preds = %cond.end.137
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  %134 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %135 = load i32*, i32** %d, align 8, !tbaa !1
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %conv143 = zext i32 %136 to i64
  %137 = load i32, i32* %S, align 4, !tbaa !5
  %conv144 = zext i32 %137 to i64
  %138 = load i32, i32* %T, align 4, !tbaa !5
  %conv145 = zext i32 %138 to i64
  %call146 = call i64 %134(i64 %conv143, i64 %conv144, i64 %conv145) #4
  %conv147 = trunc i64 %call146 to i32
  store i32 %conv147, i32* %D, align 4, !tbaa !5
  %139 = load i32*, i32** %d, align 8, !tbaa !1
  %140 = load i32, i32* %139, align 4, !tbaa !5
  %141 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg148 = xor i32 %141, -1
  %and149 = and i32 %140, %neg148
  %142 = load i32, i32* %D, align 4, !tbaa !5
  %143 = load i32, i32* %lmask, align 4, !tbaa !5
  %and150 = and i32 %142, %143
  %or151 = or i32 %and149, %and150
  %144 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or151, i32* %144, align 4, !tbaa !5
  %145 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr152, i32** %d, align 8, !tbaa !1
  %146 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub153 = sub nsw i32 %146, 32
  store i32 %sub153, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.142, %lor.lhs.false.117
  %147 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp155 = icmp sgt i32 %147, 0
  br i1 %cmp155, label %if.then.157, label %if.end.197

if.then.157:                                      ; preds = %if.end.154
  %148 = load i32, i32* %t_skew, align 4, !tbaa !5
  %cmp158 = icmp eq i32 %148, 0
  br i1 %cmp158, label %if.then.160, label %if.else

if.then.160:                                      ; preds = %if.then.157
  br label %do.body.161

do.body.161:                                      ; preds = %do.cond.170, %if.then.160
  %149 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %150 = load i32*, i32** %d, align 8, !tbaa !1
  %151 = load i32, i32* %150, align 4, !tbaa !5
  %conv162 = zext i32 %151 to i64
  %152 = load i32, i32* %S, align 4, !tbaa !5
  %conv163 = zext i32 %152 to i64
  %153 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr164 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %incdec.ptr164, i32** %t, align 8, !tbaa !1
  %154 = load i32, i32* %153, align 4, !tbaa !5
  %conv165 = zext i32 %154 to i64
  %call166 = call i64 %149(i64 %conv162, i64 %conv163, i64 %conv165) #4
  %conv167 = trunc i64 %call166 to i32
  %155 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv167, i32* %155, align 4, !tbaa !5
  %156 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr168 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %incdec.ptr168, i32** %d, align 8, !tbaa !1
  %157 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub169 = sub nsw i32 %157, 32
  store i32 %sub169, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.170

do.cond.170:                                      ; preds = %do.body.161
  %158 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp171 = icmp sgt i32 %158, 0
  br i1 %cmp171, label %do.body.161, label %do.end.173

do.end.173:                                       ; preds = %do.cond.170
  br label %if.end.196

if.else:                                          ; preds = %if.then.157
  br label %do.body.174

do.body.174:                                      ; preds = %do.cond.192, %if.else
  br label %do.body.175

do.body.175:                                      ; preds = %do.body.174
  %159 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i32, i32* %159, i64 0
  %160 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %161 = call i32 @llvm.bswap.i32(i32 %160)
  %162 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl177 = shl i32 %161, %162
  %163 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %163, i64 1
  %164 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %165 = call i32 @llvm.bswap.i32(i32 %164)
  %166 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub179 = sub nsw i32 32, %166
  %shr180 = lshr i32 %165, %sub179
  %or181 = or i32 %shl177, %shr180
  %167 = call i32 @llvm.bswap.i32(i32 %or181)
  store i32 %167, i32* %T, align 4, !tbaa !5
  %168 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr182 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %incdec.ptr182, i32** %t, align 8, !tbaa !1
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.175
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  %169 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %170 = load i32*, i32** %d, align 8, !tbaa !1
  %171 = load i32, i32* %170, align 4, !tbaa !5
  %conv185 = zext i32 %171 to i64
  %172 = load i32, i32* %S, align 4, !tbaa !5
  %conv186 = zext i32 %172 to i64
  %173 = load i32, i32* %T, align 4, !tbaa !5
  %conv187 = zext i32 %173 to i64
  %call188 = call i64 %169(i64 %conv185, i64 %conv186, i64 %conv187) #4
  %conv189 = trunc i64 %call188 to i32
  %174 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv189, i32* %174, align 4, !tbaa !5
  %175 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %incdec.ptr190, i32** %d, align 8, !tbaa !1
  %176 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub191 = sub nsw i32 %176, 32
  store i32 %sub191, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.192

do.cond.192:                                      ; preds = %do.end.184
  %177 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp193 = icmp sgt i32 %177, 0
  br i1 %cmp193, label %do.body.174, label %do.end.195

do.end.195:                                       ; preds = %do.cond.192
  br label %if.end.196

if.end.196:                                       ; preds = %do.end.195, %do.end.173
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.154
  br label %do.body.198

do.body.198:                                      ; preds = %if.end.197
  %178 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %178, i64 0
  %179 = load i32, i32* %arrayidx199, align 4, !tbaa !5
  %180 = call i32 @llvm.bswap.i32(i32 %179)
  %181 = load i32, i32* %t_skew, align 4, !tbaa !5
  %shl200 = shl i32 %180, %181
  %182 = load i32, i32* %skewflags, align 4, !tbaa !5
  %and201 = and i32 %182, 8
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %do.body.198
  br label %cond.end.208

cond.false.204:                                   ; preds = %do.body.198
  %183 = load i32*, i32** %t, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %183, i64 1
  %184 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %186 = load i32, i32* %t_skew, align 4, !tbaa !5
  %sub206 = sub nsw i32 32, %186
  %shr207 = lshr i32 %185, %sub206
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.204, %cond.true.203
  %cond209 = phi i32 [ 0, %cond.true.203 ], [ %shr207, %cond.false.204 ]
  %or210 = or i32 %shl200, %cond209
  %187 = call i32 @llvm.bswap.i32(i32 %or210)
  store i32 %187, i32* %T, align 4, !tbaa !5
  %188 = load i32*, i32** %t, align 8, !tbaa !1
  %incdec.ptr211 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %incdec.ptr211, i32** %t, align 8, !tbaa !1
  br label %do.cond.212

do.cond.212:                                      ; preds = %cond.end.208
  br label %do.end.213

do.end.213:                                       ; preds = %do.cond.212
  %189 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %190 = load i32*, i32** %d, align 8, !tbaa !1
  %191 = load i32, i32* %190, align 4, !tbaa !5
  %conv214 = zext i32 %191 to i64
  %192 = load i32, i32* %S, align 4, !tbaa !5
  %conv215 = zext i32 %192 to i64
  %193 = load i32, i32* %T, align 4, !tbaa !5
  %conv216 = zext i32 %193 to i64
  %call217 = call i64 %189(i64 %conv214, i64 %conv215, i64 %conv216) #4
  %conv218 = trunc i64 %call217 to i32
  store i32 %conv218, i32* %D, align 4, !tbaa !5
  %194 = load i32*, i32** %d, align 8, !tbaa !1
  %195 = load i32, i32* %194, align 4, !tbaa !5
  %196 = load i32, i32* %rmask, align 4, !tbaa !5
  %and219 = and i32 %195, %196
  %197 = load i32, i32* %D, align 4, !tbaa !5
  %198 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg220 = xor i32 %198, -1
  %and221 = and i32 %197, %neg220
  %or222 = or i32 %and219, %and221
  %199 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or222, i32* %199, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.213, %do.end.105
  %200 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %skewflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %t_skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_const_s_trans(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i8, align 1
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %5 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %5 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  %6 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 4
  %8 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %8, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 255, i32 -1
  %conv3 = sext i32 %cond to i64
  store i64 %conv3, i64* %strans, align 8, !tbaa !19
  %9 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %10, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t4 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %11 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %11, i8** %t, align 8, !tbaa !1
  %12 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop5 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %13, i32 0, i32 4
  %14 = load i32, i32* %rop5, align 4, !tbaa !10
  %and6 = and i32 %14, 512
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 255, i32 -1
  %conv9 = sext i32 %cond8 to i64
  store i64 %conv9, i64* %ttrans, align 8, !tbaa !19
  %15 = load i8, i8* %S, align 1, !tbaa !18
  %conv10 = zext i8 %15 to i64
  %16 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %conv10, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.22, %if.end
  %17 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %18 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv13 = zext i8 %19 to i64
  store i64 %conv13, i64* %T, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i64, i64* %T, align 8, !tbaa !19
  %21 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp14 = icmp ne i64 %20, %21
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.end
  %22 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %23 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !18
  %conv17 = zext i8 %24 to i64
  %25 = load i8, i8* %S, align 1, !tbaa !18
  %conv18 = zext i8 %25 to i64
  %26 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %22(i64 %conv17, i64 %conv18, i64 %26) #4
  %conv19 = trunc i64 %call to i8
  %27 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv19, i8* %27, align 1, !tbaa !18
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %do.end
  %28 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr21, i8** %d.addr, align 8, !tbaa !1
  %29 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.20
  %30 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %dec, 0
  br i1 %tobool23, label %do.body, label %do.end.24

do.end.24:                                        ; preds = %do.cond.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.24, %if.then
  %31 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  %34 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_const_s(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i8, align 1
  %t = alloca i8*, align 8
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %5 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %5 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  %6 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %8, i8** %t, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.8, %entry
  %9 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %10 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !18
  %conv3 = zext i8 %11 to i64
  store i64 %conv3, i64* %T, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %13 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv4 = zext i8 %14 to i64
  %15 = load i8, i8* %S, align 1, !tbaa !18
  %conv5 = zext i8 %15 to i64
  %16 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %12(i64 %conv4, i64 %conv5, i64 %16) #4
  %conv6 = trunc i64 %call to i8
  %17 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv6, i8* %17, align 1, !tbaa !18
  %18 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %d.addr, align 8, !tbaa !1
  %19 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  %20 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %21 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  %22 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_const_s_1bit(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i8, align 1
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %troll = alloca i32, align 4
  %tcolors = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %T = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %5 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %5 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  %6 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 4
  %8 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %8, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 255, i32 -1
  %conv3 = sext i32 %cond to i64
  store i64 %conv3, i64* %strans, align 8, !tbaa !19
  %9 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %10, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t4 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %11 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %11, i8** %t, align 8, !tbaa !1
  %12 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop5 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %13, i32 0, i32 4
  %14 = load i32, i32* %rop5, align 4, !tbaa !10
  %and6 = and i32 %14, 512
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 255, i32 -1
  %conv9 = sext i32 %cond8 to i64
  store i64 %conv9, i64* %ttrans, align 8, !tbaa !19
  %15 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i8** %tcolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %17, i32 0, i32 9
  %18 = load i8*, i8** %tcolors10, align 8, !tbaa !22
  store i8* %18, i8** %tcolors, align 8, !tbaa !1
  %19 = load i8, i8* %S, align 1, !tbaa !18
  %conv11 = zext i8 %19 to i64
  %20 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %conv11, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t13 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %21, i32 0, i32 3
  %b14 = bitcast %union.rop_source_s* %t13 to %struct.anon*
  %ptr15 = getelementptr inbounds %struct.anon, %struct.anon* %b14, i32 0, i32 0
  %22 = load i8*, i8** %ptr15, align 8, !tbaa !17
  %23 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t16 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %23, i32 0, i32 3
  %b17 = bitcast %union.rop_source_s* %t16 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b17, i32 0, i32 1
  %24 = load i32, i32* %pos, align 4, !tbaa !13
  %shr = ashr i32 %24, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %t, align 8, !tbaa !1
  %25 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t18 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %25, i32 0, i32 3
  %b19 = bitcast %union.rop_source_s* %t18 to %struct.anon*
  %pos20 = getelementptr inbounds %struct.anon, %struct.anon* %b19, i32 0, i32 1
  %26 = load i32, i32* %pos20, align 4, !tbaa !13
  %and21 = and i32 %26, 7
  %sub = sub nsw i32 8, %and21
  store i32 %sub, i32* %troll, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond.47, %if.end
  %27 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %28, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %29 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !18
  %conv26 = zext i8 %30 to i64
  store i64 %conv26, i64* %T, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.38

if.else:                                          ; preds = %do.body
  %31 = load i32, i32* %troll, align 4, !tbaa !5
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %troll, align 4, !tbaa !5
  %32 = load i8*, i8** %t, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !18
  %conv27 = zext i8 %33 to i32
  %34 = load i32, i32* %troll, align 4, !tbaa !5
  %shr28 = ashr i32 %conv27, %34
  %and29 = and i32 %shr28, 1
  %idxprom30 = sext i32 %and29 to i64
  %35 = load i8*, i8** %tcolors, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 %idxprom30
  %36 = load i8, i8* %arrayidx31, align 1, !tbaa !18
  %conv32 = zext i8 %36 to i64
  store i64 %conv32, i64* %T, align 8, !tbaa !19
  %37 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %37, 0
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.else
  store i32 8, i32* %troll, align 4, !tbaa !5
  %38 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr36, i8** %t, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end
  %39 = load i64, i64* %T, align 8, !tbaa !19
  %40 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp39 = icmp ne i64 %39, %40
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %41 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %42 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !18
  %conv42 = zext i8 %43 to i64
  %44 = load i8, i8* %S, align 1, !tbaa !18
  %conv43 = zext i8 %44 to i64
  %45 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %41(i64 %conv42, i64 %conv43, i64 %45) #4
  %conv44 = trunc i64 %call to i8
  %46 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv44, i8* %46, align 1, !tbaa !18
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.38
  %47 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr46, i8** %d.addr, align 8, !tbaa !1
  %48 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %do.cond.47

do.cond.47:                                       ; preds = %if.end.45
  %49 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec48 = add nsw i32 %49, -1
  store i32 %dec48, i32* %len.addr, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %dec48, 0
  br i1 %tobool49, label %do.body, label %do.end.50

do.end.50:                                        ; preds = %do.cond.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.50, %if.then
  %50 = bitcast i8** %tcolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  %55 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_const_s_trans(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i64, align 8
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %6 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %6, i64* %S, align 8, !tbaa !19
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %9, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 16777215, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t3 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t3 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %12 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %12, i8** %t, align 8, !tbaa !1
  %13 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %14, i32 0, i32 4
  %15 = load i32, i32* %rop4, align 4, !tbaa !10
  %and5 = and i32 %15, 512
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 16777215, i32 -1
  %conv8 = sext i32 %cond7 to i64
  store i64 %conv8, i64* %ttrans, align 8, !tbaa !19
  %16 = load i64, i64* %S, align 8, !tbaa !19
  %17 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.42, %if.end
  %18 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  br label %do.body.10

do.body.10:                                       ; preds = %do.body
  %19 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx11, align 1, !tbaa !18
  %conv12 = zext i8 %20 to i64
  %shl = shl i64 %conv12, 16
  %21 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx13, align 1, !tbaa !18
  %conv14 = zext i8 %22 to i64
  %shl15 = shl i64 %conv14, 8
  %or = or i64 %shl, %shl15
  %23 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx16, align 1, !tbaa !18
  %conv17 = zext i8 %24 to i64
  %or18 = or i64 %or, %conv17
  store i64 %or18, i64* %T, align 8, !tbaa !19
  %25 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %add.ptr, i8** %t, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i64, i64* %T, align 8, !tbaa !19
  %27 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp19 = icmp ne i64 %26, %27
  br i1 %cmp19, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %do.end
  %28 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %30 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx22, align 1, !tbaa !18
  %conv23 = zext i8 %31 to i64
  %shl24 = shl i64 %conv23, 16
  %32 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx25, align 1, !tbaa !18
  %conv26 = zext i8 %33 to i64
  %shl27 = shl i64 %conv26, 8
  %or28 = or i64 %shl24, %shl27
  %34 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx29, align 1, !tbaa !18
  %conv30 = zext i8 %35 to i64
  %or31 = or i64 %or28, %conv30
  %36 = load i64, i64* %S, align 8, !tbaa !19
  %37 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %29(i64 %or31, i64 %36, i64 %37) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %38 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %38, 16
  %conv32 = trunc i64 %shr to i8
  %39 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !18
  %40 = load i64, i64* %D, align 8, !tbaa !19
  %conv34 = trunc i64 %40 to i32
  %shr35 = lshr i32 %conv34, 8
  %conv36 = trunc i32 %shr35 to i8
  %41 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %conv36, i8* %arrayidx37, align 1, !tbaa !18
  %42 = load i64, i64* %D, align 8, !tbaa !19
  %conv38 = trunc i64 %42 to i8
  %43 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %43, i64 2
  store i8 %conv38, i8* %arrayidx39, align 1, !tbaa !18
  %44 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.21, %do.end
  %45 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %45, i64 3
  store i8* %add.ptr41, i8** %d.addr, align 8, !tbaa !1
  %46 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %do.cond.42

do.cond.42:                                       ; preds = %if.end.40
  %47 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %dec, 0
  br i1 %tobool43, label %do.body, label %do.end.44

do.end.44:                                        ; preds = %do.cond.42
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.44, %if.then
  %48 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_const_s(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i64, align 8
  %t = alloca i8*, align 8
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %6 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %6, i64* %S, align 8, !tbaa !19
  %7 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %9 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %9, i8** %t, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.29, %entry
  %10 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %11 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx3, align 1, !tbaa !18
  %conv = zext i8 %12 to i64
  %shl = shl i64 %conv, 16
  %13 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx4, align 1, !tbaa !18
  %conv5 = zext i8 %14 to i64
  %shl6 = shl i64 %conv5, 8
  %or = or i64 %shl, %shl6
  %15 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx7, align 1, !tbaa !18
  %conv8 = zext i8 %16 to i64
  %or9 = or i64 %or, %conv8
  store i64 %or9, i64* %T, align 8, !tbaa !19
  %17 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %add.ptr, i8** %t, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %20 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx10, align 1, !tbaa !18
  %conv11 = zext i8 %21 to i64
  %shl12 = shl i64 %conv11, 16
  %22 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx13, align 1, !tbaa !18
  %conv14 = zext i8 %23 to i64
  %shl15 = shl i64 %conv14, 8
  %or16 = or i64 %shl12, %shl15
  %24 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx17, align 1, !tbaa !18
  %conv18 = zext i8 %25 to i64
  %or19 = or i64 %or16, %conv18
  %26 = load i64, i64* %S, align 8, !tbaa !19
  %27 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %19(i64 %or19, i64 %26, i64 %27) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %28 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %28, 16
  %conv20 = trunc i64 %shr to i8
  %29 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %conv20, i8* %arrayidx21, align 1, !tbaa !18
  %30 = load i64, i64* %D, align 8, !tbaa !19
  %conv22 = trunc i64 %30 to i32
  %shr23 = lshr i32 %conv22, 8
  %conv24 = trunc i32 %shr23 to i8
  %31 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !18
  %32 = load i64, i64* %D, align 8, !tbaa !19
  %conv26 = trunc i64 %32 to i8
  %33 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 2
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !18
  %34 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %35, i64 3
  store i8* %add.ptr28, i8** %d.addr, align 8, !tbaa !1
  %36 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end
  %37 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %38 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_const_s_1bit(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i64, align 8
  %strans = alloca i64, align 8
  %t = alloca i8*, align 8
  %ttrans = alloca i64, align 8
  %troll = alloca i32, align 4
  %tc = alloca [2 x i64], align 16
  %cleanup.dest.slot = alloca i32
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %6 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %6, i64* %S, align 8, !tbaa !19
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %9, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 16777215, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t3 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t3 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  %12 = load i8*, i8** %ptr, align 8, !tbaa !17
  store i8* %12, i8** %t, align 8, !tbaa !1
  %13 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %14, i32 0, i32 4
  %15 = load i32, i32* %rop4, align 4, !tbaa !10
  %and5 = and i32 %15, 512
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 16777215, i32 -1
  %conv8 = sext i32 %cond7 to i64
  store i64 %conv8, i64* %ttrans, align 8, !tbaa !19
  %16 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast [2 x i64]* %tc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = load i64, i64* %S, align 8, !tbaa !19
  %19 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %18, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %20, i32 0, i32 3
  %b11 = bitcast %union.rop_source_s* %t10 to %struct.anon*
  %ptr12 = getelementptr inbounds %struct.anon, %struct.anon* %b11, i32 0, i32 0
  %21 = load i8*, i8** %ptr12, align 8, !tbaa !17
  %22 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t13 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %22, i32 0, i32 3
  %b14 = bitcast %union.rop_source_s* %t13 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b14, i32 0, i32 1
  %23 = load i32, i32* %pos, align 4, !tbaa !13
  %shr = ashr i32 %23, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %t, align 8, !tbaa !1
  %24 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t15 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %24, i32 0, i32 3
  %b16 = bitcast %union.rop_source_s* %t15 to %struct.anon*
  %pos17 = getelementptr inbounds %struct.anon, %struct.anon* %b16, i32 0, i32 1
  %25 = load i32, i32* %pos17, align 4, !tbaa !13
  %and18 = and i32 %25, 7
  %sub = sub nsw i32 8, %and18
  store i32 %sub, i32* %troll, align 4, !tbaa !5
  %26 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %26, i32 0, i32 9
  %27 = load i8*, i8** %tcolors, align 8, !tbaa !22
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 0
  %arrayidx20 = getelementptr inbounds i8, i8* %arrayidx19, i64 0
  %28 = load i8, i8* %arrayidx20, align 1, !tbaa !18
  %conv21 = zext i8 %28 to i64
  %shl = shl i64 %conv21, 16
  %29 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors22 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %29, i32 0, i32 9
  %30 = load i8*, i8** %tcolors22, align 8, !tbaa !22
  %arrayidx23 = getelementptr inbounds i8, i8* %30, i64 0
  %arrayidx24 = getelementptr inbounds i8, i8* %arrayidx23, i64 1
  %31 = load i8, i8* %arrayidx24, align 1, !tbaa !18
  %conv25 = zext i8 %31 to i64
  %shl26 = shl i64 %conv25, 8
  %or = or i64 %shl, %shl26
  %32 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors27 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %32, i32 0, i32 9
  %33 = load i8*, i8** %tcolors27, align 8, !tbaa !22
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 0
  %arrayidx29 = getelementptr inbounds i8, i8* %arrayidx28, i64 2
  %34 = load i8, i8* %arrayidx29, align 1, !tbaa !18
  %conv30 = zext i8 %34 to i64
  %or31 = or i64 %or, %conv30
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 0
  store i64 %or31, i64* %arrayidx32, align 8, !tbaa !19
  %35 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors33 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %35, i32 0, i32 9
  %36 = load i8*, i8** %tcolors33, align 8, !tbaa !22
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 3
  %arrayidx35 = getelementptr inbounds i8, i8* %arrayidx34, i64 0
  %37 = load i8, i8* %arrayidx35, align 1, !tbaa !18
  %conv36 = zext i8 %37 to i64
  %shl37 = shl i64 %conv36, 16
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors38 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 9
  %39 = load i8*, i8** %tcolors38, align 8, !tbaa !22
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 3
  %arrayidx40 = getelementptr inbounds i8, i8* %arrayidx39, i64 1
  %40 = load i8, i8* %arrayidx40, align 1, !tbaa !18
  %conv41 = zext i8 %40 to i64
  %shl42 = shl i64 %conv41, 8
  %or43 = or i64 %shl37, %shl42
  %41 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors44 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %41, i32 0, i32 9
  %42 = load i8*, i8** %tcolors44, align 8, !tbaa !22
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 3
  %arrayidx46 = getelementptr inbounds i8, i8* %arrayidx45, i64 2
  %43 = load i8, i8* %arrayidx46, align 1, !tbaa !18
  %conv47 = zext i8 %43 to i64
  %or48 = or i64 %or43, %conv47
  %arrayidx49 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 1
  store i64 %or48, i64* %arrayidx49, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond.99, %if.end
  %44 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %45, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %do.body
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %46 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx54, align 1, !tbaa !18
  %conv55 = zext i8 %47 to i64
  %shl56 = shl i64 %conv55, 16
  %48 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx57, align 1, !tbaa !18
  %conv58 = zext i8 %49 to i64
  %shl59 = shl i64 %conv58, 8
  %or60 = or i64 %shl56, %shl59
  %50 = load i8*, i8** %t, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx61, align 1, !tbaa !18
  %conv62 = zext i8 %51 to i64
  %or63 = or i64 %or60, %conv62
  store i64 %or63, i64* %T, align 8, !tbaa !19
  %52 = load i8*, i8** %t, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %add.ptr64, i8** %t, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.53
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.74

if.else:                                          ; preds = %do.body
  %53 = load i32, i32* %troll, align 4, !tbaa !5
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %troll, align 4, !tbaa !5
  %54 = load i8*, i8** %t, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !18
  %conv65 = zext i8 %55 to i32
  %56 = load i32, i32* %troll, align 4, !tbaa !5
  %shr66 = ashr i32 %conv65, %56
  %and67 = and i32 %shr66, 1
  %idxprom68 = sext i32 %and67 to i64
  %arrayidx69 = getelementptr inbounds [2 x i64], [2 x i64]* %tc, i32 0, i64 %idxprom68
  %57 = load i64, i64* %arrayidx69, align 8, !tbaa !19
  store i64 %57, i64* %T, align 8, !tbaa !19
  %58 = load i32, i32* %troll, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %58, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else
  store i32 8, i32* %troll, align 4, !tbaa !5
  %59 = load i8*, i8** %t, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %do.end
  %60 = load i64, i64* %T, align 8, !tbaa !19
  %61 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp75 = icmp ne i64 %60, %61
  br i1 %cmp75, label %if.then.77, label %if.end.97

if.then.77:                                       ; preds = %if.end.74
  %62 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %64 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx78, align 1, !tbaa !18
  %conv79 = zext i8 %65 to i64
  %shl80 = shl i64 %conv79, 16
  %66 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx81, align 1, !tbaa !18
  %conv82 = zext i8 %67 to i64
  %shl83 = shl i64 %conv82, 8
  %or84 = or i64 %shl80, %shl83
  %68 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx85, align 1, !tbaa !18
  %conv86 = zext i8 %69 to i64
  %or87 = or i64 %or84, %conv86
  %70 = load i64, i64* %S, align 8, !tbaa !19
  %71 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %63(i64 %or87, i64 %70, i64 %71) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %72 = load i64, i64* %D, align 8, !tbaa !19
  %shr88 = lshr i64 %72, 16
  %conv89 = trunc i64 %shr88 to i8
  %73 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %conv89, i8* %arrayidx90, align 1, !tbaa !18
  %74 = load i64, i64* %D, align 8, !tbaa !19
  %conv91 = trunc i64 %74 to i32
  %shr92 = lshr i32 %conv91, 8
  %conv93 = trunc i32 %shr92 to i8
  %75 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %conv93, i8* %arrayidx94, align 1, !tbaa !18
  %76 = load i64, i64* %D, align 8, !tbaa !19
  %conv95 = trunc i64 %76 to i8
  %77 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %77, i64 2
  store i8 %conv95, i8* %arrayidx96, align 1, !tbaa !18
  %78 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.77, %if.end.74
  %79 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr98 = getelementptr inbounds i8, i8* %79, i64 3
  store i8* %add.ptr98, i8** %d.addr, align 8, !tbaa !1
  %80 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %do.cond.99

do.cond.99:                                       ; preds = %if.end.97
  %81 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec100 = add nsw i32 %81, -1
  store i32 %dec100, i32* %len.addr, align 4, !tbaa !5
  %tobool101 = icmp ne i32 %dec100, 0
  br i1 %tobool101, label %do.body, label %do.end.102

do.end.102:                                       ; preds = %do.cond.99
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.102, %if.then
  %82 = bitcast [2 x i64]* %tc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #1
  %83 = bitcast i32* %troll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i8** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run1_const_st(%struct.rop_run_op_s* %op, i8* %d_, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d_.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %lmask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %S = alloca i32, align 4
  %T = alloca i32, align 4
  %D = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d = alloca i32*, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d_, i8** %d_.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %8 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %S, align 4, !tbaa !5
  %9 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %10, i32 0, i32 3
  %c1 = bitcast %union.rop_source_s* %t to i64*
  %11 = load i64, i64* %c1, align 8, !tbaa !19
  %conv2 = trunc i64 %11 to i32
  store i32 %conv2, i32* %T, align 4, !tbaa !5
  %12 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos3 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %14, i32 0, i32 7
  %15 = load i8, i8* %dpos3, align 1, !tbaa !15
  %conv4 = zext i8 %15 to i32
  store i32 %conv4, i32* %dpos, align 4, !tbaa !5
  %16 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %d_.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %d, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32*, i32** %d, align 8, !tbaa !1
  %21 = ptrtoint i32* %20 to i64
  %and = and i64 %21, 3
  %conv5 = trunc i64 %and to i32
  store i32 %conv5, i32* %offset, align 4, !tbaa !5
  %22 = load i32*, i32** %d, align 8, !tbaa !1
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %24 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.neg
  %25 = bitcast i8* %add.ptr to i32*
  store i32* %25, i32** %d, align 8, !tbaa !1
  %26 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %26, 3
  %27 = load i32, i32* %dpos, align 4, !tbaa !5
  %add = add nsw i32 %27, %shl
  store i32 %add, i32* %dpos, align 4, !tbaa !5
  %28 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %len.addr, align 4, !tbaa !5
  %30 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %30, i32 0, i32 5
  %31 = load i8, i8* %depth, align 1, !tbaa !9
  %conv6 = zext i8 %31 to i32
  %mul = mul nsw i32 %29, %conv6
  %32 = load i32, i32* %dpos, align 4, !tbaa !5
  %add7 = add nsw i32 %mul, %32
  store i32 %add7, i32* %len.addr, align 4, !tbaa !5
  %33 = load i32, i32* %dpos, align 4, !tbaa !5
  %and8 = and i32 31, %33
  %shr = lshr i32 -1, %and8
  %34 = call i32 @llvm.bswap.i32(i32 %shr)
  store i32 %34, i32* %lmask, align 4, !tbaa !5
  %35 = load i32, i32* %len.addr, align 4, !tbaa !5
  %and9 = and i32 31, %35
  %shr10 = lshr i32 -1, %and9
  %36 = call i32 @llvm.bswap.i32(i32 %shr10)
  store i32 %36, i32* %rmask, align 4, !tbaa !5
  %37 = load i32, i32* %rmask, align 4, !tbaa !5
  %cmp = icmp eq i32 %37, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %rmask, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %38 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth12 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %38, i32 0, i32 5
  %39 = load i8, i8* %depth12, align 1, !tbaa !9
  %conv13 = zext i8 %39 to i32
  %and14 = and i32 %conv13, 1
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %40 = load i32, i32* %S, align 4, !tbaa !5
  %shl16 = shl i32 %40, 1
  %41 = load i32, i32* %S, align 4, !tbaa !5
  %or = or i32 %41, %shl16
  store i32 %or, i32* %S, align 4, !tbaa !5
  %42 = load i32, i32* %T, align 4, !tbaa !5
  %shl17 = shl i32 %42, 1
  %43 = load i32, i32* %T, align 4, !tbaa !5
  %or18 = or i32 %43, %shl17
  store i32 %or18, i32* %T, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  %44 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth20 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %44, i32 0, i32 5
  %45 = load i8, i8* %depth20, align 1, !tbaa !9
  %conv21 = zext i8 %45 to i32
  %and22 = and i32 %conv21, 3
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.19
  %46 = load i32, i32* %S, align 4, !tbaa !5
  %shl25 = shl i32 %46, 2
  %47 = load i32, i32* %S, align 4, !tbaa !5
  %or26 = or i32 %47, %shl25
  store i32 %or26, i32* %S, align 4, !tbaa !5
  %48 = load i32, i32* %T, align 4, !tbaa !5
  %shl27 = shl i32 %48, 2
  %49 = load i32, i32* %T, align 4, !tbaa !5
  %or28 = or i32 %49, %shl27
  store i32 %or28, i32* %T, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.19
  %50 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth30 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %50, i32 0, i32 5
  %51 = load i8, i8* %depth30, align 1, !tbaa !9
  %conv31 = zext i8 %51 to i32
  %and32 = and i32 %conv31, 7
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.29
  %52 = load i32, i32* %S, align 4, !tbaa !5
  %shl35 = shl i32 %52, 4
  %53 = load i32, i32* %S, align 4, !tbaa !5
  %or36 = or i32 %53, %shl35
  store i32 %or36, i32* %S, align 4, !tbaa !5
  %54 = load i32, i32* %T, align 4, !tbaa !5
  %shl37 = shl i32 %54, 4
  %55 = load i32, i32* %T, align 4, !tbaa !5
  %or38 = or i32 %55, %shl37
  store i32 %or38, i32* %T, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.29
  %56 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth40 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %56, i32 0, i32 5
  %57 = load i8, i8* %depth40, align 1, !tbaa !9
  %conv41 = zext i8 %57 to i32
  %and42 = and i32 %conv41, 15
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.39
  %58 = load i32, i32* %S, align 4, !tbaa !5
  %shl45 = shl i32 %58, 8
  %59 = load i32, i32* %S, align 4, !tbaa !5
  %or46 = or i32 %59, %shl45
  store i32 %or46, i32* %S, align 4, !tbaa !5
  %60 = load i32, i32* %T, align 4, !tbaa !5
  %shl47 = shl i32 %60, 8
  %61 = load i32, i32* %T, align 4, !tbaa !5
  %or48 = or i32 %61, %shl47
  store i32 %or48, i32* %T, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.39
  %62 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth50 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %62, i32 0, i32 5
  %63 = load i8, i8* %depth50, align 1, !tbaa !9
  %conv51 = zext i8 %63 to i32
  %and52 = and i32 %conv51, 31
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.49
  %64 = load i32, i32* %S, align 4, !tbaa !5
  %shl55 = shl i32 %64, 16
  %65 = load i32, i32* %S, align 4, !tbaa !5
  %or56 = or i32 %65, %shl55
  store i32 %or56, i32* %S, align 4, !tbaa !5
  %66 = load i32, i32* %T, align 4, !tbaa !5
  %shl57 = shl i32 %66, 16
  %67 = load i32, i32* %T, align 4, !tbaa !5
  %or58 = or i32 %67, %shl57
  store i32 %or58, i32* %T, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.end.49
  %68 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %68, 32
  store i32 %sub, i32* %len.addr, align 4, !tbaa !5
  %69 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp60 = icmp sle i32 %69, 0
  br i1 %cmp60, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end.59
  %70 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg = xor i32 %70, -1
  %71 = load i32, i32* %lmask, align 4, !tbaa !5
  %and63 = and i32 %71, %neg
  store i32 %and63, i32* %lmask, align 4, !tbaa !5
  %72 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %73 = load i32*, i32** %d, align 8, !tbaa !1
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %conv64 = zext i32 %74 to i64
  %75 = load i32, i32* %S, align 4, !tbaa !5
  %conv65 = zext i32 %75 to i64
  %76 = load i32, i32* %T, align 4, !tbaa !5
  %conv66 = zext i32 %76 to i64
  %call = call i64 %72(i64 %conv64, i64 %conv65, i64 %conv66) #4
  %conv67 = trunc i64 %call to i32
  store i32 %conv67, i32* %D, align 4, !tbaa !5
  %77 = load i32*, i32** %d, align 8, !tbaa !1
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg68 = xor i32 %79, -1
  %and69 = and i32 %78, %neg68
  %80 = load i32, i32* %D, align 4, !tbaa !5
  %81 = load i32, i32* %lmask, align 4, !tbaa !5
  %and70 = and i32 %80, %81
  %or71 = or i32 %and69, %and70
  %82 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or71, i32* %82, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.59
  %83 = load i32, i32* %lmask, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %83, -1
  br i1 %cmp73, label %if.then.75, label %if.end.86

if.then.75:                                       ; preds = %if.end.72
  %84 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %85 = load i32*, i32** %d, align 8, !tbaa !1
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %conv76 = zext i32 %86 to i64
  %87 = load i32, i32* %S, align 4, !tbaa !5
  %conv77 = zext i32 %87 to i64
  %88 = load i32, i32* %T, align 4, !tbaa !5
  %conv78 = zext i32 %88 to i64
  %call79 = call i64 %84(i64 %conv76, i64 %conv77, i64 %conv78) #4
  %conv80 = trunc i64 %call79 to i32
  store i32 %conv80, i32* %D, align 4, !tbaa !5
  %89 = load i32*, i32** %d, align 8, !tbaa !1
  %90 = load i32, i32* %89, align 4, !tbaa !5
  %91 = load i32, i32* %lmask, align 4, !tbaa !5
  %neg81 = xor i32 %91, -1
  %and82 = and i32 %90, %neg81
  %92 = load i32, i32* %D, align 4, !tbaa !5
  %93 = load i32, i32* %lmask, align 4, !tbaa !5
  %and83 = and i32 %92, %93
  %or84 = or i32 %and82, %and83
  %94 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or84, i32* %94, align 4, !tbaa !5
  %95 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr, i32** %d, align 8, !tbaa !1
  %96 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub85 = sub nsw i32 %96, 32
  store i32 %sub85, i32* %len.addr, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.75, %if.end.72
  %97 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %97, 0
  br i1 %cmp87, label %if.then.89, label %if.end.102

if.then.89:                                       ; preds = %if.end.86
  br label %do.body.90

do.body.90:                                       ; preds = %do.cond.98, %if.then.89
  %98 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %99 = load i32*, i32** %d, align 8, !tbaa !1
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %conv91 = zext i32 %100 to i64
  %101 = load i32, i32* %S, align 4, !tbaa !5
  %conv92 = zext i32 %101 to i64
  %102 = load i32, i32* %T, align 4, !tbaa !5
  %conv93 = zext i32 %102 to i64
  %call94 = call i64 %98(i64 %conv91, i64 %conv92, i64 %conv93) #4
  %conv95 = trunc i64 %call94 to i32
  %103 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %conv95, i32* %103, align 4, !tbaa !5
  %104 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr96 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr96, i32** %d, align 8, !tbaa !1
  %105 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub97 = sub nsw i32 %105, 32
  store i32 %sub97, i32* %len.addr, align 4, !tbaa !5
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.90
  %106 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp99 = icmp sgt i32 %106, 0
  br i1 %cmp99, label %do.body.90, label %do.end.101

do.end.101:                                       ; preds = %do.cond.98
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %if.end.86
  %107 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %108 = load i32*, i32** %d, align 8, !tbaa !1
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %conv103 = zext i32 %109 to i64
  %110 = load i32, i32* %S, align 4, !tbaa !5
  %conv104 = zext i32 %110 to i64
  %111 = load i32, i32* %T, align 4, !tbaa !5
  %conv105 = zext i32 %111 to i64
  %call106 = call i64 %107(i64 %conv103, i64 %conv104, i64 %conv105) #4
  %conv107 = trunc i64 %call106 to i32
  store i32 %conv107, i32* %D, align 4, !tbaa !5
  %112 = load i32*, i32** %d, align 8, !tbaa !1
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %114 = load i32, i32* %rmask, align 4, !tbaa !5
  %and108 = and i32 %113, %114
  %115 = load i32, i32* %D, align 4, !tbaa !5
  %116 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg109 = xor i32 %116, -1
  %and110 = and i32 %115, %neg109
  %or111 = or i32 %and108, %and110
  %117 = load i32*, i32** %d, align 8, !tbaa !1
  store i32 %or111, i32* %117, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %if.then.62
  %118 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i32* %dpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %lmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_const_st_trans(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i8, align 1
  %strans = alloca i64, align 8
  %T = alloca i8, align 1
  %ttrans = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %5 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %5 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  %6 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %7, i32 0, i32 4
  %8 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %8, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 255, i32 -1
  %conv3 = sext i32 %cond to i64
  store i64 %conv3, i64* %strans, align 8, !tbaa !19
  call void @llvm.lifetime.start(i64 1, i8* %T) #1
  %9 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %9, i32 0, i32 3
  %c4 = bitcast %union.rop_source_s* %t to i64*
  %10 = load i64, i64* %c4, align 8, !tbaa !19
  %conv5 = trunc i64 %10 to i8
  store i8 %conv5, i8* %T, align 1, !tbaa !18
  %11 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop6 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %12, i32 0, i32 4
  %13 = load i32, i32* %rop6, align 4, !tbaa !10
  %and7 = and i32 %13, 512
  %tobool8 = icmp ne i32 %and7, 0
  %cond9 = select i1 %tobool8, i32 255, i32 -1
  %conv10 = sext i32 %cond9 to i64
  store i64 %conv10, i64* %ttrans, align 8, !tbaa !19
  %14 = load i8, i8* %S, align 1, !tbaa !18
  %conv11 = zext i8 %14 to i64
  %15 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %conv11, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load i8, i8* %T, align 1, !tbaa !18
  %conv13 = zext i8 %16 to i64
  %17 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp14 = icmp eq i64 %conv13, %17
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %18 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %19 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !18
  %conv18 = zext i8 %20 to i64
  %21 = load i8, i8* %S, align 1, !tbaa !18
  %conv19 = zext i8 %21 to i64
  %22 = load i8, i8* %T, align 1, !tbaa !18
  %conv20 = zext i8 %22 to i64
  %call = call i64 %18(i64 %conv18, i64 %conv19, i64 %conv20) #4
  %conv21 = trunc i64 %call to i8
  %23 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv21, i8* %23, align 1, !tbaa !18
  %24 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %dec, 0
  br i1 %tobool22, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.16, %if.then
  %26 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  call void @llvm.lifetime.end(i64 1, i8* %T) #1
  %27 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  %28 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run8_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i8, align 1
  %T = alloca i8, align 1
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %S) #1
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %5 = load i64, i64* %c, align 8, !tbaa !19
  %conv = trunc i64 %5 to i8
  store i8 %conv, i8* %S, align 1, !tbaa !18
  call void @llvm.lifetime.start(i64 1, i8* %T) #1
  %6 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %6, i32 0, i32 3
  %c1 = bitcast %union.rop_source_s* %t to i64*
  %7 = load i64, i64* %c1, align 8, !tbaa !19
  %conv2 = trunc i64 %7 to i8
  store i8 %conv2, i8* %T, align 1, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %9 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !18
  %conv3 = zext i8 %10 to i64
  %11 = load i8, i8* %S, align 1, !tbaa !18
  %conv4 = zext i8 %11 to i64
  %12 = load i8, i8* %T, align 1, !tbaa !18
  %conv5 = zext i8 %12 to i64
  %call = call i64 %8(i64 %conv3, i64 %conv4, i64 %conv5) #4
  %conv6 = trunc i64 %call to i8
  %13 = load i8*, i8** %d.addr, align 8, !tbaa !1
  store i8 %conv6, i8* %13, align 1, !tbaa !18
  %14 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end(i64 1, i8* %T) #1
  call void @llvm.lifetime.end(i64 1, i8* %S) #1
  %16 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_const_st_trans(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i64, align 8
  %strans = alloca i64, align 8
  %T = alloca i64, align 8
  %ttrans = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %6 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %6, i64* %S, align 8, !tbaa !19
  %7 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 4
  %9 = load i32, i32* %rop1, align 4, !tbaa !10
  %and2 = and i32 %9, 256
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 16777215, i32 -1
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %strans, align 8, !tbaa !19
  %10 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 3
  %c3 = bitcast %union.rop_source_s* %t to i64*
  %12 = load i64, i64* %c3, align 8, !tbaa !19
  store i64 %12, i64* %T, align 8, !tbaa !19
  %13 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %14, i32 0, i32 4
  %15 = load i32, i32* %rop4, align 4, !tbaa !10
  %and5 = and i32 %15, 512
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 16777215, i32 -1
  %conv8 = sext i32 %cond7 to i64
  store i64 %conv8, i64* %ttrans, align 8, !tbaa !19
  %16 = load i64, i64* %S, align 8, !tbaa !19
  %17 = load i64, i64* %strans, align 8, !tbaa !19
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i64, i64* %T, align 8, !tbaa !19
  %19 = load i64, i64* %ttrans, align 8, !tbaa !19
  %cmp10 = icmp eq i64 %18, %19
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.13
  %20 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %22 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %23 to i64
  %shl = shl i64 %conv15, 16
  %24 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx16, align 1, !tbaa !18
  %conv17 = zext i8 %25 to i64
  %shl18 = shl i64 %conv17, 8
  %or = or i64 %shl, %shl18
  %26 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx19, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i64
  %or21 = or i64 %or, %conv20
  %28 = load i64, i64* %S, align 8, !tbaa !19
  %29 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %21(i64 %or21, i64 %28, i64 %29) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %30 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %30, 16
  %conv22 = trunc i64 %shr to i8
  %31 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %conv22, i8* %arrayidx23, align 1, !tbaa !18
  %32 = load i64, i64* %D, align 8, !tbaa !19
  %conv24 = trunc i64 %32 to i32
  %shr25 = lshr i32 %conv24, 8
  %conv26 = trunc i32 %shr25 to i8
  %33 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !18
  %34 = load i64, i64* %D, align 8, !tbaa !19
  %conv28 = trunc i64 %34 to i8
  %35 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !18
  %36 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %38 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool30 = icmp ne i32 %dec, 0
  br i1 %tobool30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.12, %if.then
  %39 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @generic_rop_run24_const_st(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  %D = alloca i64, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 4
  %2 = load i32, i32* %rop, align 4, !tbaa !10
  %and = and i32 %2, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %3 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %3, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %4 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %5, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s to i64*
  %6 = load i64, i64* %c, align 8, !tbaa !19
  store i64 %6, i64* %S, align 8, !tbaa !19
  %7 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %8, i32 0, i32 3
  %c1 = bitcast %union.rop_source_s* %t to i64*
  %9 = load i64, i64* %c1, align 8, !tbaa !19
  store i64 %9, i64* %T, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %10 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %12 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx2, align 1, !tbaa !18
  %conv = zext i8 %13 to i64
  %shl = shl i64 %conv, 16
  %14 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx3, align 1, !tbaa !18
  %conv4 = zext i8 %15 to i64
  %shl5 = shl i64 %conv4, 8
  %or = or i64 %shl, %shl5
  %16 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx6, align 1, !tbaa !18
  %conv7 = zext i8 %17 to i64
  %or8 = or i64 %or, %conv7
  %18 = load i64, i64* %S, align 8, !tbaa !19
  %19 = load i64, i64* %T, align 8, !tbaa !19
  %call = call i64 %11(i64 %or8, i64 %18, i64 %19) #4
  store i64 %call, i64* %D, align 8, !tbaa !19
  %20 = load i64, i64* %D, align 8, !tbaa !19
  %shr = lshr i64 %20, 16
  %conv9 = trunc i64 %shr to i8
  %21 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !18
  %22 = load i64, i64* %D, align 8, !tbaa !19
  %conv11 = trunc i64 %22 to i32
  %shr12 = lshr i32 %conv11, 8
  %conv13 = trunc i32 %shr12 to i8
  %23 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv13, i8* %arrayidx14, align 1, !tbaa !18
  %24 = load i64, i64* %D, align 8, !tbaa !19
  %conv15 = trunc i64 %24 to i8
  %25 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !18
  %26 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr, i8** %d.addr, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %len.addr, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %len.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %29 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf_nomem(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @rop_run_swapped(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %local = alloca %struct.rop_run_op_s, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast %struct.rop_run_op_s* %local to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %runswap = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 1
  %2 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %runswap, align 8, !tbaa !16
  %run = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 0
  store void (%struct.rop_run_op_s*, i8*, i32)* %2, void (%struct.rop_run_op_s*, i8*, i32)** %run, align 8, !tbaa !12
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 2
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %4 = bitcast %union.rop_source_s* %s to i8*
  %5 = bitcast %union.rop_source_s* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false), !tbaa.struct !23
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 3
  %6 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %6, i32 0, i32 2
  %7 = bitcast %union.rop_source_s* %t1 to i8*
  %8 = bitcast %union.rop_source_s* %s2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !tbaa.struct !23
  %9 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %9, i32 0, i32 9
  %10 = load i8*, i8** %tcolors, align 8, !tbaa !22
  %scolors = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 8
  store i8* %10, i8** %scolors, align 8, !tbaa !21
  %11 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors3 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %11, i32 0, i32 8
  %12 = load i8*, i8** %scolors3, align 8, !tbaa !21
  %tcolors4 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 9
  store i8* %12, i8** %tcolors4, align 8, !tbaa !22
  %13 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %rop = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %13, i32 0, i32 4
  %14 = load i32, i32* %rop, align 4, !tbaa !10
  %rop5 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 4
  store i32 %14, i32* %rop5, align 4, !tbaa !10
  %15 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %15, i32 0, i32 5
  %16 = load i8, i8* %depth, align 1, !tbaa !9
  %depth6 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 5
  store i8 %16, i8* %depth6, align 1, !tbaa !9
  %17 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %17, i32 0, i32 6
  %18 = load i8, i8* %flags, align 1, !tbaa !7
  %flags7 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 6
  store i8 %18, i8* %flags7, align 1, !tbaa !7
  %19 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %19, i32 0, i32 7
  %20 = load i8, i8* %dpos, align 1, !tbaa !15
  %dpos8 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 7
  store i8 %20, i8* %dpos8, align 1, !tbaa !15
  %21 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %release = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %21, i32 0, i32 10
  %22 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release, align 8, !tbaa !11
  %release9 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 10
  store void (%struct.rop_run_op_s*)* %22, void (%struct.rop_run_op_s*)** %release9, align 8, !tbaa !11
  %23 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %opaque = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %23, i32 0, i32 11
  %24 = load i8*, i8** %opaque, align 8, !tbaa !24
  %opaque10 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %local, i32 0, i32 11
  store i8* %24, i8** %opaque10, align 8, !tbaa !24
  %25 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %runswap11 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %25, i32 0, i32 1
  %26 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %runswap11, align 8, !tbaa !16
  %27 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %28 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void %26(%struct.rop_run_op_s* %local, i8* %27, i32 %28) #4
  %29 = bitcast %struct.rop_run_op_s* %local to i8*
  call void @llvm.lifetime.end(i64 88, i8* %29) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @rop_set_s_constant(%struct.rop_run_op_s* %op, i32 %s) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %s.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i32 %s, i32* %s.addr, align 4, !tbaa !5
  %0 = load i32, i32* %s.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 2
  %c = bitcast %union.rop_source_s* %s1 to i64*
  store i64 %conv, i64* %c, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_s_bitmap(%struct.rop_run_op_s* %op, i8* %s) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  store i8* %0, i8** %ptr, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_s_bitmap_subbyte(%struct.rop_run_op_s* %op, i8* %s, i32 %pos) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %s.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %pos, i32* %pos.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  store i8* %0, i8** %ptr, align 8, !tbaa !17
  %2 = load i32, i32* %pos.addr, align 4, !tbaa !5
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %s2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 2
  %b3 = bitcast %union.rop_source_s* %s2 to %struct.anon*
  %pos4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 1
  store i32 %2, i32* %pos4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_s_colors(%struct.rop_run_op_s* %op, i8* %scolors) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %scolors.addr = alloca i8*, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %scolors, i8** %scolors.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %scolors.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %scolors1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 8
  store i8* %0, i8** %scolors1, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_t_constant(%struct.rop_run_op_s* %op, i32 %t) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %t.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i32 %t, i32* %t.addr, align 4, !tbaa !5
  %0 = load i32, i32* %t.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 3
  %c = bitcast %union.rop_source_s* %t1 to i64*
  store i64 %conv, i64* %c, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_t_bitmap(%struct.rop_run_op_s* %op, i8* %t) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %t.addr = alloca i8*, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %t, i8** %t.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  store i8* %0, i8** %ptr, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_t_bitmap_subbyte(%struct.rop_run_op_s* %op, i8* %t, i32 %pos) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %t.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %t, i8** %t.addr, align 8, !tbaa !1
  store i32 %pos, i32* %pos.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %t.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 3
  %b = bitcast %union.rop_source_s* %t1 to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  store i8* %0, i8** %ptr, align 8, !tbaa !17
  %2 = load i32, i32* %pos.addr, align 4, !tbaa !5
  %3 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %3, i32 0, i32 3
  %b3 = bitcast %union.rop_source_s* %t2 to %struct.anon*
  %pos4 = getelementptr inbounds %struct.anon, %struct.anon* %b3, i32 0, i32 1
  store i32 %2, i32* %pos4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_set_t_colors(%struct.rop_run_op_s* %op, i8* %tcolors) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %tcolors.addr = alloca i8*, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %tcolors, i8** %tcolors.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %tcolors.addr, align 8, !tbaa !1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %tcolors1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 9
  store i8* %0, i8** %tcolors1, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_run(%struct.rop_run_op_s* %op, i8* %d, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %0, i32 0, i32 0
  %1 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %run, align 8, !tbaa !12
  %2 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void %1(%struct.rop_run_op_s* %2, i8* %3, i32 %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_run_subbyte(%struct.rop_run_op_s* %op, i8* %d, i32 %start, i32 %len) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %d.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store i8* %d, i8** %d.addr, align 8, !tbaa !1
  store i32 %start, i32* %start.addr, align 4, !tbaa !5
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %start.addr, align 4, !tbaa !5
  %conv = trunc i32 %0 to i8
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %dpos = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %1, i32 0, i32 7
  store i8 %conv, i8* %dpos, align 1, !tbaa !15
  %2 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %run = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %2, i32 0, i32 0
  %3 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %run, align 8, !tbaa !12
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %d.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void %3(%struct.rop_run_op_s* %4, i8* %5, i32 %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rop_release_run_op(%struct.rop_run_op_s* %op) #0 {
entry:
  %op.addr = alloca %struct.rop_run_op_s*, align 8
  %OP2 = alloca %struct.rop_run_op_s*, align 8
  store %struct.rop_run_op_s* %op, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = bitcast %struct.rop_run_op_s** %OP2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %op.addr, align 8, !tbaa !1
  store %struct.rop_run_op_s* %1, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %2 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %release = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %2, i32 0, i32 10
  %3 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release, align 8, !tbaa !11
  %tobool = icmp ne void (%struct.rop_run_op_s*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %release1 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %4, i32 0, i32 10
  %5 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release1, align 8, !tbaa !11
  %6 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  call void %5(%struct.rop_run_op_s* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %7 = bitcast %struct.rop_run_op_s** %OP2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 53}
!8 = !{!"rop_run_op_s", !2, i64 0, !2, i64 8, !3, i64 16, !3, i64 32, !6, i64 48, !3, i64 52, !3, i64 53, !3, i64 54, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!9 = !{!8, !3, i64 52}
!10 = !{!8, !6, i64 48}
!11 = !{!8, !2, i64 72}
!12 = !{!8, !2, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"", !2, i64 0, !6, i64 8}
!15 = !{!8, !3, i64 54}
!16 = !{!8, !2, i64 8}
!17 = !{!14, !2, i64 0}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !3, i64 0}
!21 = !{!8, !2, i64 56}
!22 = !{!8, !2, i64 64}
!23 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 0, i64 8, !19}
!24 = !{!8, !2, i64 80}
